; ModuleID = '/llk/IR/drivers/net/ethernet/ti/cpsw_priv.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/cpsw_priv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cpsw_common = type { ptr, %struct.cpsw_platform_data, %struct.napi_struct, %struct.napi_struct, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [8 x %struct.cpsw_vector], [8 x %struct.cpsw_vector], ptr, i8, i8, i8, [2 x i32], i32, ptr, ptr, i32, i32, i32, i32, [8 x ptr], i8, ptr, i8, [6 x i8] }
%struct.cpsw_platform_data = type { ptr, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.cpsw_vector = type { ptr, i32 }
%struct.cpsw_wr_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.155, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.155 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.cpsw_ale = type { %struct.cpsw_ale_params, %struct.timer_list, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.cpsw_ale_params = type { ptr, ptr, i32, i32, i32, i8, i32, ptr, i32 }
%struct.cpsw_priv = type { ptr, ptr, i32, [6 x i8], i8, i8, i8, [4 x i32], i32, i32, i32, ptr, [8 x i8], [8 x %struct.xdp_rxq_info], %struct.xdp_attachment_info, i32, ptr, i32, i32, [40 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.cpsw_slave = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cpdma_params = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.cpsw_slave_data = type { ptr, ptr, [61 x i8], i32, [6 x i8], i16, ptr, i8 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ifreq = type { %union.anon.131, %union.anon.132 }
%union.anon.131 = type { [16 x i8] }
%union.anon.132 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cpsw_ss_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tc_cbs_qopt_offload = type { i8, i32, i32, i32, i32, i32 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.page = type { i32, %union.anon.1, %union.anon.128, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.128 = type { %struct.atomic_t }
%struct.page_pool_params = type { i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr }
%struct.netdev_bpf = type { i32, %union.anon.137 }
%union.anon.137 = type { %struct.anon.138 }
%struct.anon.138 = type { i32, ptr, ptr }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.94 }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { %struct.anon.96, [0 x %struct.sock_filter] }
%struct.anon.96 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [36 x i8] c"drivers/net/ethernet/ti/cpsw_priv.c\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to soft-reset %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"transmit timeout, restarting dma\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"unknown version 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"cpsw\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"error initializing ale engine\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"error initializing dma\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"cpts\00", align 1
@cpsw_slave_index = dso_local local_unnamed_addr global ptr null, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"The channel rate cannot be less than %dMbps\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"The channel rate cannot be more than 2Gbps\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"allocate rx page err\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"cannot submit page to channel %d rx, error %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"ch %d rx, submitted %d descriptors\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Last tc%d can't be rate limited\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Link speed is not known\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"Speed was changed, CBS shaper speeds are changed!\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Prev FIFO%d is shaped\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Upper FIFO%d is not shaped\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"set FIFO%d bw = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"Bandwidth doesn't fit in tc configuration\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"cannot create rx page pool\0A\00", align 1
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.23 = private unnamed_addr constant [38 x i8] c"Driver BUG: missing reserved tailroom\00", align 1
@__func__.xdp_update_frame_from_buff = private unnamed_addr constant [27 x i8] c"xdp_update_frame_from_buff\00", align 1
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_intr_enable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %3, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 255) #9, !srcloc !9
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %5, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 255) #9, !srcloc !9
  %7 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @cpdma_ctlr_int_ctrl(ptr noundef %8, i1 noundef zeroext true) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_int_ctrl(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_intr_disable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %3, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #9, !srcloc !9
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %5, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #9, !srcloc !9
  %7 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @cpdma_ctlr_int_ctrl(ptr noundef %8, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_tx_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = ptrtoint ptr %0 to i32
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = and i32 %4, -2
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr i8, ptr %9, i32 24
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 28
  %13 = load i32, ptr %12, align 4
  tail call void @xdp_return_frame(ptr noundef %9) #9
  br label %24

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.anon.41, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %16, i32 1996
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.cpsw_common, ptr %21, i32 0, i32 23
  %23 = load ptr, ptr %22, align 8
  tail call void @cpts_tx_timestamp(ptr noundef %23, ptr noundef %0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef %0, i32 noundef 1) #9
  br label %24

24:                                               ; preds = %14, %7
  %25 = phi ptr [ %11, %7 ], [ %16, %14 ]
  %26 = phi i32 [ %13, %7 ], [ %19, %14 ]
  %27 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 87
  %28 = load ptr, ptr %27, align 64
  %29 = getelementptr %struct.netdev_queue, ptr %28, i32 %26, i32 12
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33, !prof !10

33:                                               ; preds = %24
  %34 = getelementptr %struct.netdev_queue, ptr %28, i32 %26
  tail call void @netif_tx_wake_queue(ptr noundef %34) #9
  br label %35

35:                                               ; preds = %33, %24
  %36 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4
  %39 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %1
  store i32 %41, ptr %39, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_tx_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_tx_interrupt(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %3 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %4, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #9, !srcloc !9
  %6 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  tail call void @cpdma_ctlr_eoi(ptr noundef %7, i32 noundef 2) #9
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 18
  %9 = load i8, ptr %8, align 8, !range !12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr %struct.cpsw_common, ptr %1, i32 0, i32 21, i32 1
  %13 = load i32, ptr %12, align 4
  tail call void @disable_irq_nosync(i32 noundef %13) #9
  %14 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 20
  store i8 1, ptr %14, align 2
  br label %15

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 3
  %17 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %16) #9
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @__napi_schedule(ptr noundef %16) #9
  br label %19

19:                                               ; preds = %18, %15
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpdma_ctlr_eoi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_rx_interrupt(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  %3 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %4, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #9, !srcloc !9
  %6 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  tail call void @cpdma_ctlr_eoi(ptr noundef %7, i32 noundef 1) #9
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 18
  %9 = load i8, ptr %8, align 8, !range !12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 21
  %13 = load i32, ptr %12, align 4
  tail call void @disable_irq_nosync(i32 noundef %13) #9
  %14 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 19
  store i8 1, ptr %14, align 1
  br label %15

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 2
  %17 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %16) #9
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @__napi_schedule(ptr noundef %16) #9
  br label %19

19:                                               ; preds = %18, %15
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_misc_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %3 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %4, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #9, !srcloc !9
  %6 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  tail call void @cpdma_ctlr_eoi(ptr noundef %7, i32 noundef 3) #9
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 23
  %9 = load ptr, ptr %8, align 8
  tail call void @cpts_misc_interrupt(ptr noundef %9) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %10, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 16) #9, !srcloc !9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_misc_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_tx_mq_poll(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 256
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @cpdma_ctrl_txchs_state(ptr noundef %4) #9
  %6 = getelementptr i8, ptr %0, i32 260
  %7 = and i32 %5, 255
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %25, %2
  %10 = phi i32 [ %27, %25 ], [ %5, %2 ]
  %11 = phi i32 [ %28, %25 ], [ 0, %2 ]
  %12 = phi i32 [ %26, %25 ], [ 0, %2 ]
  %13 = and i32 %10, 128
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr [8 x %struct.cpsw_vector], ptr %6, i32 0, i32 %11
  %17 = getelementptr inbounds %struct.cpsw_vector, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %1, %12
  %20 = tail call i32 @llvm.smin.i32(i32 %18, i32 %19)
  %21 = load ptr, ptr %16, align 4
  %22 = tail call i32 @cpdma_chan_process(ptr noundef %21, i32 noundef %20) #9
  %23 = add i32 %22, %12
  %24 = icmp slt i32 %23, %1
  br i1 %24, label %25, label %31

25:                                               ; preds = %15, %9
  %26 = phi i32 [ %23, %15 ], [ %12, %9 ]
  %27 = shl i32 %10, 1
  %28 = add i32 %11, 1
  %29 = and i32 %10, 127
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %9

31:                                               ; preds = %25, %15, %2
  %32 = phi i32 [ 0, %2 ], [ %23, %15 ], [ %26, %25 ]
  %33 = icmp slt i32 %32, %1
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef 0) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %36 = getelementptr i8, ptr %0, i32 220
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %37, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 255) #9, !srcloc !9
  br label %39

39:                                               ; preds = %34, %31
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctrl_txchs_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_process(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_tx_poll(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 260
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @cpdma_chan_process(ptr noundef %4, i32 noundef %1) #9
  %6 = icmp slt i32 %5, %1
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef 0) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %9 = getelementptr i8, ptr %0, i32 220
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %10, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 255) #9, !srcloc !9
  %12 = getelementptr i8, ptr %0, i32 394
  %13 = load i8, ptr %12, align 2, !range !12
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  store i8 0, ptr %12, align 2
  %16 = getelementptr i8, ptr %0, i32 400
  %17 = load i32, ptr %16, align 4
  tail call void @enable_irq(i32 noundef %17) #9
  br label %18

18:                                               ; preds = %15, %7, %2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_rx_mq_poll(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 472
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @cpdma_ctrl_rxchs_state(ptr noundef %4) #9
  %6 = getelementptr i8, ptr %0, i32 540
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %24, %2
  %9 = phi i32 [ %26, %24 ], [ %5, %2 ]
  %10 = phi i32 [ %27, %24 ], [ 0, %2 ]
  %11 = phi i32 [ %25, %24 ], [ 0, %2 ]
  %12 = and i32 %9, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %8
  %15 = getelementptr [8 x %struct.cpsw_vector], ptr %6, i32 0, i32 %10
  %16 = getelementptr inbounds %struct.cpsw_vector, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 %1, %11
  %19 = tail call i32 @llvm.smin.i32(i32 %17, i32 %18)
  %20 = load ptr, ptr %15, align 4
  %21 = tail call i32 @cpdma_chan_process(ptr noundef %20, i32 noundef %19) #9
  %22 = add i32 %21, %11
  %23 = icmp slt i32 %22, %1
  br i1 %23, label %24, label %29

24:                                               ; preds = %14, %8
  %25 = phi i32 [ %22, %14 ], [ %11, %8 ]
  %26 = lshr i32 %9, 1
  %27 = add nuw nsw i32 %10, 1
  %28 = icmp ult i32 %9, 2
  br i1 %28, label %29, label %8

29:                                               ; preds = %24, %14, %2
  %30 = phi i32 [ 0, %2 ], [ %22, %14 ], [ %25, %24 ]
  %31 = icmp slt i32 %30, %1
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %30) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %34 = getelementptr i8, ptr %0, i32 436
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %35, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 255) #9, !srcloc !9
  br label %37

37:                                               ; preds = %32, %29
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctrl_rxchs_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_rx_poll(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 540
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @cpdma_chan_process(ptr noundef %4, i32 noundef %1) #9
  %6 = icmp slt i32 %5, %1
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = tail call zeroext i1 @napi_complete_done(ptr noundef %0, i32 noundef %5) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %9 = getelementptr i8, ptr %0, i32 436
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %10, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 255) #9, !srcloc !9
  %12 = getelementptr i8, ptr %0, i32 609
  %13 = load i8, ptr %12, align 1, !range !12
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  store i8 0, ptr %12, align 1
  %16 = getelementptr i8, ptr %0, i32 612
  %17 = load i32, ptr %16, align 4
  tail call void @enable_irq(i32 noundef %17) #9
  br label %18

18:                                               ; preds = %15, %7, %2
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_rx_vlan_encap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.anon.41, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %3, i32 1996
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @skb_pull(ptr noundef %0, i32 noundef 4) #9
  %10 = lshr i32 %6, 8
  %11 = and i32 %10, 3
  %12 = add nsw i32 %11, -1
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %45, label %14

14:                                               ; preds = %1
  %15 = lshr i32 %6, 16
  %16 = trunc i32 %15 to i16
  %17 = and i16 %16, 4095
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.cpsw_common, ptr %8, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = zext i16 %17 to i32
  %23 = getelementptr inbounds %struct.cpsw_ale, ptr %21, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = lshr i32 %22, 5
  %26 = getelementptr i32, ptr %24, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %22, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %19
  %33 = and i16 %16, -4097
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 8
  store i16 129, ptr %34, align 4
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 9
  store i16 %33, ptr %35, align 2
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %37 = load i16, ptr %36, align 2
  %38 = or i16 %37, 1
  store i16 %38, ptr %36, align 2
  br label %39

39:                                               ; preds = %32, %19
  %40 = icmp eq i32 %11, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr i8, ptr %42, i32 4
  tail call void @llvm.memmove.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %43, ptr noundef align 1 dereferenceable(12) %42, i32 12, i1 false)
  %44 = tail call ptr @skb_pull(ptr noundef %0, i32 noundef 4) #9
  br label %45

45:                                               ; preds = %41, %39, %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_set_slave_mac(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 3
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = getelementptr %struct.cpsw_priv, ptr %1, i32 0, i32 3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or i32 %9, %5
  %11 = getelementptr %struct.cpsw_priv, ptr %1, i32 0, i32 3, i32 2
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or i32 %10, %14
  %16 = getelementptr %struct.cpsw_priv, ptr %1, i32 0, i32 3, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = or i32 %15, %19
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #9, !srcloc !9
  %23 = getelementptr %struct.cpsw_priv, ptr %1, i32 0, i32 3, i32 4
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = getelementptr %struct.cpsw_priv, ptr %1, i32 0, i32 3, i32 5
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = or i32 %29, %25
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr i8, ptr %31, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @soft_reset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load volatile i32, ptr @jiffies, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 1) #9, !srcloc !9
  %4 = sub i32 -100, %3
  br label %5

5:                                                ; preds = %9, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !21
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !22
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = add i32 %4, %10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %5, label %13

13:                                               ; preds = %9, %5
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !22
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !10

17:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 286, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %0) #9
  br label %18

18:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_ndo_tx_timeout(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 1996
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 1416
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @net_ratelimit() #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %0, i32 1412
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.2) #10
  br label %15

15:                                               ; preds = %12, %9, %2
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %20, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #9, !srcloc !9
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %22, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #9, !srcloc !9
  %24 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 14
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 @cpdma_ctlr_int_ctrl(ptr noundef %25, i1 noundef zeroext false) #9
  %27 = getelementptr inbounds %struct.cpsw_common, ptr %4, i32 0, i32 26
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %30, %15
  %31 = phi i32 [ %37, %30 ], [ 0, %15 ]
  %32 = getelementptr %struct.cpsw_common, ptr %4, i32 0, i32 15, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @cpdma_chan_stop(ptr noundef %33) #9
  %35 = load ptr, ptr %32, align 4
  %36 = tail call i32 @cpdma_chan_start(ptr noundef %35) #9
  %37 = add nuw nsw i32 %31, 1
  %38 = load i32, ptr %27, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %30, label %40

40:                                               ; preds = %30, %15
  %41 = load ptr, ptr %19, align 4
  %42 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %41, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 255) #9, !srcloc !9
  %43 = load ptr, ptr %19, align 4
  %44 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %43, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 255) #9, !srcloc !9
  %45 = load ptr, ptr %24, align 8
  %46 = tail call i32 @cpdma_ctlr_int_ctrl(ptr noundef %45, i1 noundef zeroext true) #9
  %47 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %48 = load ptr, ptr %47, align 64
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = getelementptr inbounds %struct.netdev_queue, ptr %48, i32 0, i32 11
  %51 = load volatile i32, ptr %50, align 8
  %52 = icmp eq i32 %51, %49
  br i1 %52, label %54, label %53

53:                                               ; preds = %40
  store volatile i32 %49, ptr %50, align 8
  br label %54

54:                                               ; preds = %53, %40
  %55 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %58, %54
  %59 = phi i32 [ %62, %58 ], [ 0, %54 ]
  %60 = load ptr, ptr %47, align 64
  %61 = getelementptr %struct.netdev_queue, ptr %60, i32 %59
  tail call void @netif_tx_wake_queue(ptr noundef %61) #9
  %62 = add nuw i32 %59, 1
  %63 = load i32, ptr %55, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %58, label %65

65:                                               ; preds = %58, %54
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_need_resplit(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 1, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %54, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %23, %5
  %9 = phi i32 [ 0, %5 ], [ %24, %23 ]
  %10 = phi i32 [ 0, %5 ], [ %25, %23 ]
  %11 = getelementptr %struct.cpsw_slave, ptr %7, i32 %10, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.phy_device, ptr %12, i32 0, i32 4
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, 8192
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.phy_device, ptr %12, i32 0, i32 8
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, %9
  br label %23

23:                                               ; preds = %19, %14, %8
  %24 = phi i32 [ %22, %19 ], [ %9, %14 ], [ %9, %8 ]
  %25 = add nuw i32 %10, 1
  %26 = icmp eq i32 %25, %3
  br i1 %26, label %27, label %8

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 27
  %29 = load i32, ptr %28, align 8
  %30 = icmp ne i32 %24, %29
  %31 = icmp ne i32 %24, 0
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  store i32 %24, ptr %28, align 8
  %34 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 26
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %43, %33
  %38 = phi i32 [ %44, %43 ], [ 0, %33 ]
  %39 = getelementptr %struct.cpsw_common, ptr %0, i32 0, i32 15, i32 %38
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @cpdma_chan_get_rate(ptr noundef %40) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = add nuw nsw i32 %38, 1
  %45 = load i32, ptr %34, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %37, label %49

47:                                               ; preds = %37
  %48 = icmp eq i32 %38, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %47, %43
  %50 = phi i32 [ %38, %47 ], [ %44, %43 ]
  %51 = load i32, ptr %34, align 4
  %52 = icmp ne i32 %50, %51
  %53 = zext i1 %52 to i32
  br label %54

54:                                               ; preds = %49, %47, %33, %27, %1
  %55 = phi i32 [ 0, %27 ], [ 0, %47 ], [ %53, %49 ], [ 0, %1 ], [ 0, %33 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_split_res(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 15
  %3 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 26
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %6, %1
  %7 = phi i32 [ %16, %6 ], [ 0, %1 ]
  %8 = phi i32 [ %17, %6 ], [ 0, %1 ]
  %9 = phi i32 [ %14, %6 ], [ 0, %1 ]
  %10 = getelementptr %struct.cpsw_vector, ptr %2, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @cpdma_chan_get_rate(ptr noundef %11) #9
  %13 = icmp ne i32 %12, 0
  %14 = add i32 %12, %9
  %15 = zext i1 %13 to i32
  %16 = add i32 %7, %15
  %17 = add nuw nsw i32 %8, 1
  %18 = load i32, ptr %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %6, label %20

20:                                               ; preds = %6
  %21 = icmp eq i32 %18, %16
  br i1 %21, label %47, label %24

22:                                               ; preds = %1
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %94, label %26

24:                                               ; preds = %20
  %25 = icmp eq i32 %16, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %14, %24 ], [ 0, %22 ]
  %28 = phi i32 [ %18, %24 ], [ %4, %22 ]
  %29 = sdiv i32 64, %28
  br label %47

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 27
  %32 = load i32, ptr %31, align 8
  %33 = mul i32 %32, 1000
  %34 = icmp ult i32 %33, %14
  %35 = mul i32 %32, 10000
  %36 = select i1 %34, i32 %35, i32 %33
  %37 = icmp ult i32 %36, %14
  %38 = mul i32 %36, 10
  %39 = select i1 %37, i32 %38, i32 %36
  %40 = shl i32 %14, 6
  %41 = udiv i32 %40, %39
  %42 = sub i32 64, %41
  %43 = sub i32 %18, %16
  %44 = sdiv i32 %42, %43
  %45 = sub i32 %39, %14
  %46 = udiv i32 %45, %43
  br label %47

47:                                               ; preds = %30, %26, %20
  %48 = phi i32 [ %18, %30 ], [ %28, %26 ], [ %18, %20 ]
  %49 = phi i32 [ %46, %30 ], [ 0, %26 ], [ 0, %20 ]
  %50 = phi i32 [ %39, %30 ], [ %27, %26 ], [ %14, %20 ]
  %51 = phi i32 [ %44, %30 ], [ %29, %26 ], [ 0, %20 ]
  %52 = icmp sgt i32 %48, 0
  br i1 %52, label %53, label %94

53:                                               ; preds = %79, %47
  %54 = phi i32 [ %82, %79 ], [ 0, %47 ]
  %55 = phi i32 [ %88, %79 ], [ 64, %47 ]
  %56 = phi i32 [ %89, %79 ], [ 0, %47 ]
  %57 = phi i32 [ %81, %79 ], [ %49, %47 ]
  %58 = getelementptr %struct.cpsw_vector, ptr %2, i32 %56
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 @cpdma_chan_get_rate(ptr noundef %59) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %53
  %63 = shl i32 %60, 6
  %64 = udiv i32 %63, %50
  %65 = getelementptr %struct.cpsw_vector, ptr %2, i32 %56, i32 1
  %66 = icmp ugt i32 %50, %63
  %67 = select i1 %66, i32 1, i32 %64
  store i32 %67, ptr %65, align 4
  %68 = icmp ugt i32 %60, %57
  %69 = tail call i32 @llvm.umax.i32(i32 %60, i32 %57)
  %70 = select i1 %68, i32 %56, i32 %54
  %71 = mul i32 %60, 100
  %72 = udiv i32 %71, %50
  %73 = icmp ugt i32 %50, %71
  %74 = select i1 %73, i32 1, i32 %72
  br label %79

75:                                               ; preds = %53
  %76 = getelementptr %struct.cpsw_vector, ptr %2, i32 %56, i32 1
  store i32 %51, ptr %76, align 4
  %77 = icmp eq i32 %54, 0
  %78 = select i1 %77, i32 %56, i32 %54
  br label %79

79:                                               ; preds = %75, %62
  %80 = phi i32 [ 0, %75 ], [ %74, %62 ]
  %81 = phi i32 [ %57, %75 ], [ %69, %62 ]
  %82 = phi i32 [ %78, %75 ], [ %70, %62 ]
  %83 = getelementptr %struct.cpsw_common, ptr %0, i32 0, i32 15, i32 %56
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 @cpdma_chan_set_weight(ptr noundef %84, i32 noundef %80) #9
  %86 = getelementptr %struct.cpsw_vector, ptr %2, i32 %56, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = sub i32 %55, %87
  %89 = add nuw nsw i32 %56, 1
  %90 = load i32, ptr %3, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %53, label %92

92:                                               ; preds = %79
  %93 = icmp eq i32 %88, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %92, %47, %22
  %95 = phi i32 [ %82, %92 ], [ 0, %47 ], [ 0, %22 ]
  %96 = phi i32 [ %88, %92 ], [ 64, %47 ], [ 64, %22 ]
  %97 = getelementptr %struct.cpsw_vector, ptr %2, i32 %95, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, %96
  store i32 %99, ptr %97, align 4
  br label %100

100:                                              ; preds = %94, %92
  %101 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 25
  %102 = load i32, ptr %101, align 8
  %103 = sdiv i32 64, %102
  %104 = icmp sgt i32 %102, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %105, %100
  %106 = phi i32 [ %109, %105 ], [ 64, %100 ]
  %107 = phi i32 [ %110, %105 ], [ 0, %100 ]
  %108 = getelementptr %struct.cpsw_common, ptr %0, i32 0, i32 16, i32 %107, i32 1
  store i32 %103, ptr %108, align 4
  %109 = sub i32 %106, %103
  %110 = add nuw nsw i32 %107, 1
  %111 = load i32, ptr %101, align 8
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %105, label %113

113:                                              ; preds = %105
  %114 = icmp eq i32 %109, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %113, %100
  %116 = phi i32 [ %109, %113 ], [ 64, %100 ]
  %117 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 16, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, %116
  store i32 %119, ptr %117, align 4
  br label %120

120:                                              ; preds = %115, %113
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_set_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_init_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.cpsw_ale_params, align 4
  %7 = alloca %struct.cpdma_params, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #9
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 25
  store i32 1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 26
  store i32 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %15 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 8
  store i32 %14, ptr %15, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %7, i8 0, i32 72, i1 false)
  %16 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %16, i8 0, i32 32, i1 false)
  switch i32 %14, label %42 [
    i32 1638666, label %17
    i32 1638668, label %29
    i32 1638671, label %29
    i32 1638674, label %29
  ]

17:                                               ; preds = %5
  %18 = getelementptr i8, ptr %1, i32 40
  %19 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 7
  store ptr %18, ptr %19, align 4
  %20 = getelementptr i8, ptr %1, i32 1280
  %21 = getelementptr i8, ptr %1, i32 1024
  %22 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 6
  store ptr %21, ptr %22, align 8
  %23 = getelementptr i8, ptr %1, i32 256
  %24 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr i8, ptr %1, i32 512
  %26 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  %27 = getelementptr i8, ptr %1, i32 1536
  %28 = getelementptr inbounds %struct.cpsw_ale_params, ptr %6, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  br label %43

29:                                               ; preds = %5, %5, %5
  %30 = getelementptr i8, ptr %1, i32 264
  %31 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 7
  store ptr %30, ptr %31, align 4
  %32 = getelementptr i8, ptr %1, i32 3072
  %33 = getelementptr i8, ptr %1, i32 2304
  %34 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 6
  store ptr %33, ptr %34, align 8
  %35 = getelementptr i8, ptr %1, i32 2048
  %36 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  %37 = getelementptr i8, ptr %1, i32 2560
  %38 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 2
  store ptr %37, ptr %38, align 4
  %39 = getelementptr i8, ptr %1, i32 3328
  %40 = getelementptr inbounds %struct.cpsw_ale_params, ptr %6, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 11
  store i32 %3, ptr %41, align 4
  br label %43

42:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef %14) #10
  br label %148

43:                                               ; preds = %29, %17
  %44 = phi ptr [ %32, %29 ], [ %20, %17 ]
  %45 = phi i32 [ 256, %29 ], [ 64, %17 ]
  %46 = phi i32 [ 3456, %29 ], [ 1792, %17 ]
  %47 = phi i32 [ 512, %29 ], [ 80, %17 ]
  %48 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 1, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %81, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 13
  br label %53

53:                                               ; preds = %75, %51
  %54 = phi i32 [ %47, %51 ], [ %76, %75 ]
  %55 = phi i32 [ %46, %51 ], [ %77, %75 ]
  %56 = phi i32 [ 0, %51 ], [ %78, %75 ]
  %57 = load ptr, ptr %52, align 4
  %58 = getelementptr %struct.cpsw_slave, ptr %57, i32 %56
  %59 = load ptr, ptr %12, align 8
  %60 = getelementptr %struct.cpsw_slave, ptr %57, i32 %56, i32 1
  store i32 %56, ptr %60, align 4
  %61 = load ptr, ptr %9, align 4
  %62 = getelementptr %struct.cpsw_slave_data, ptr %61, i32 %56
  %63 = getelementptr %struct.cpsw_slave, ptr %57, i32 %56, i32 3
  store ptr %62, ptr %63, align 4
  %64 = getelementptr i8, ptr %59, i32 %54
  store ptr %64, ptr %58, align 4
  %65 = getelementptr %struct.cpsw_slave_data, ptr %61, i32 %56, i32 5
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = getelementptr %struct.cpsw_slave, ptr %57, i32 %56, i32 6
  store i32 %67, ptr %68, align 4
  %69 = getelementptr i8, ptr %59, i32 %55
  %70 = tail call ptr @cpsw_sl_get(ptr noundef nonnull @.str.4, ptr noundef %8, ptr noundef %69) #9
  %71 = getelementptr %struct.cpsw_slave, ptr %57, i32 %56, i32 7
  store ptr %70, ptr %71, align 4
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %75

73:                                               ; preds = %53
  %74 = ptrtoint ptr %70 to i32
  br label %148

75:                                               ; preds = %53
  %76 = add i32 %54, %45
  %77 = add i32 %55, 64
  %78 = add nuw i32 %56, 1
  %79 = load i32, ptr %48, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %53, label %81

81:                                               ; preds = %75, %43
  store ptr %8, ptr %6, align 4
  %82 = getelementptr inbounds %struct.cpsw_ale_params, ptr %6, i32 0, i32 2
  store i32 %2, ptr %82, align 4
  %83 = getelementptr inbounds %struct.cpsw_ale_params, ptr %6, i32 0, i32 4
  store i32 3, ptr %83, align 4
  %84 = getelementptr inbounds %struct.cpsw_ale_params, ptr %6, i32 0, i32 7
  store ptr @.str.4, ptr %84, align 4
  %85 = call ptr @cpsw_ale_create(ptr noundef nonnull %6) #9
  %86 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 17
  store ptr %85, ptr %86, align 4
  %87 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.5) #10
  %89 = load ptr, ptr %86, align 4
  %90 = ptrtoint ptr %89 to i32
  br label %148

91:                                               ; preds = %81
  store ptr %8, ptr %7, align 4
  %92 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %93, i32 192
  %95 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 6
  store ptr %94, ptr %95, align 4
  %96 = getelementptr i8, ptr %93, i32 224
  %97 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 7
  store ptr %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 32
  %101 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 3
  store ptr %100, ptr %101, align 4
  %102 = getelementptr i8, ptr %99, i32 64
  %103 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 4
  store ptr %102, ptr %103, align 4
  %104 = getelementptr i8, ptr %99, i32 96
  %105 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 5
  store ptr %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 1, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 8
  store i32 %107, ptr %108, align 4
  %109 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 9
  store i8 1, ptr %109, align 4
  %110 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 10
  store i32 60, ptr %110, align 4
  %111 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 1, i32 5
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 13
  store i32 %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 14
  store i32 16, ptr %114, align 4
  %115 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 17
  store i8 1, ptr %115, align 4
  %116 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 11
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 12
  store i32 %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 10
  %120 = load i32, ptr %119, align 8
  %121 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 15
  store i32 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.cpdma_params, ptr %7, i32 0, i32 16
  store i32 %4, ptr %122, align 4
  %123 = call ptr @cpdma_ctlr_create(ptr noundef nonnull %7) #9
  %124 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 14
  store ptr %123, ptr %124, align 8
  %125 = icmp eq ptr %123, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %91
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.6) #10
  br label %148

127:                                              ; preds = %91
  %128 = load ptr, ptr %0, align 8
  %129 = getelementptr inbounds %struct.device, ptr %128, i32 0, i32 25
  %130 = load ptr, ptr %129, align 8
  %131 = call ptr @of_get_child_by_name(ptr noundef %130, ptr noundef nonnull @.str.7) #9
  %132 = icmp eq ptr %131, null
  %133 = load ptr, ptr %0, align 8
  br i1 %132, label %134, label %137

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.device, ptr %133, i32 0, i32 25
  %136 = load ptr, ptr %135, align 8
  br label %137

137:                                              ; preds = %134, %127
  %138 = phi ptr [ %136, %134 ], [ %131, %127 ]
  %139 = call ptr @cpts_create(ptr noundef %133, ptr noundef %44, ptr noundef %138, i32 noundef 4) #9
  %140 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 23
  store ptr %139, ptr %140, align 8
  %141 = icmp ugt ptr %139, inttoptr (i32 -4096 to ptr)
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = ptrtoint ptr %139 to i32
  %144 = load ptr, ptr %124, align 8
  %145 = call i32 @cpdma_ctlr_destroy(ptr noundef %144) #9
  br label %146

146:                                              ; preds = %142, %137
  %147 = phi i32 [ %143, %142 ], [ 0, %137 ]
  call void @of_node_put(ptr noundef %138) #9
  br label %148

148:                                              ; preds = %146, %126, %88, %73, %42
  %149 = phi i32 [ -19, %42 ], [ %90, %88 ], [ %147, %146 ], [ -12, %126 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #9
  ret i32 %149
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpsw_sl_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpsw_ale_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpdma_ctlr_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpts_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_ndo_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.hwtstamp_config, align 4
  %5 = alloca %struct.hwtstamp_config, align 4
  %6 = getelementptr i8, ptr %0, i32 1408
  %7 = getelementptr i8, ptr %0, i32 1996
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr @cpsw_slave_index, align 4
  %10 = tail call i32 %9(ptr noundef %8, ptr noundef %6) #9
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %184, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.cpsw_common, ptr %8, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.cpsw_slave, ptr %17, i32 %10, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.phy_device, ptr %19, i32 0, i32 33
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.mii_timestamper, ptr %23, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %182

29:                                               ; preds = %25, %21, %15
  switch i32 %2, label %181 [
    i32 35248, label %30
    i32 35249, label %152
  ]

30:                                               ; preds = %29
  %31 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false) #9, !annotation !24
  %32 = getelementptr inbounds %struct.cpsw_common, ptr %31, i32 0, i32 8
  %33 = load i32, ptr %32, align 8
  switch i32 %33, label %150 [
    i32 1638666, label %34
    i32 1638668, label %34
    i32 1638671, label %34
  ]

34:                                               ; preds = %30, %30, %30
  %35 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %36, i32 12, i32 -1090519040) #11, !srcloc !25
  %38 = extractvalue { i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48, !prof !10

40:                                               ; preds = %34
  %41 = tail call ptr @llvm.thread.pointer() #9
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %42) #7, !srcloc !26
  %44 = and i32 %43, -13
  %45 = or i32 %44, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #9, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !28
  %46 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %36, i32 noundef 12) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #9, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !28
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48, !prof !10

48:                                               ; preds = %40, %34
  %49 = phi i32 [ %46, %40 ], [ 12, %34 ]
  %50 = sub i32 12, %49
  %51 = getelementptr i8, ptr %5, i32 %50
  call void @llvm.memset.p0.i32(ptr align 1 %51, i8 0, i32 %49, i1 false) #9
  br label %150

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.hwtstamp_config, ptr %5, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %54, 1
  br i1 %55, label %150, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.hwtstamp_config, ptr %5, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  switch i32 %58, label %150 [
    i32 0, label %59
    i32 14, label %61
    i32 13, label %61
    i32 12, label %61
    i32 11, label %61
    i32 10, label %61
    i32 6, label %61
    i32 7, label %61
    i32 8, label %61
    i32 9, label %61
  ]

59:                                               ; preds = %56
  %60 = getelementptr i8, ptr %0, i32 1456
  store i32 0, ptr %60, align 16
  br label %63

61:                                               ; preds = %56, %56, %56, %56, %56, %56, %56, %56, %56
  %62 = getelementptr i8, ptr %0, i32 1456
  store i32 12, ptr %62, align 16
  store i32 12, ptr %57, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = icmp eq i32 %54, 1
  %65 = zext i1 %64 to i32
  %66 = getelementptr i8, ptr %0, i32 1452
  store i32 %65, ptr %66, align 4
  %67 = load i32, ptr %32, align 8
  switch i32 %67, label %137 [
    i32 1638666, label %68
    i32 1638668, label %93
    i32 1638671, label %93
  ]

68:                                               ; preds = %63
  %69 = load ptr, ptr %7, align 4
  %70 = getelementptr inbounds %struct.cpsw_common, ptr %69, i32 0, i32 13
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr @cpsw_slave_index, align 4
  %73 = call i32 %72(ptr noundef %69, ptr noundef %6) #9
  %74 = getelementptr %struct.cpsw_slave, ptr %71, i32 %73
  %75 = load i32, ptr %66, align 4
  %76 = icmp eq i32 %75, 0
  %77 = getelementptr i8, ptr %0, i32 1456
  %78 = load i32, ptr %77, align 16
  br i1 %76, label %79, label %84

79:                                               ; preds = %68
  %80 = icmp eq i32 %78, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load ptr, ptr %74, align 4
  %83 = getelementptr i8, ptr %82, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 0) #9, !srcloc !9
  br label %138

84:                                               ; preds = %79, %68
  %85 = phi i32 [ 983040, %79 ], [ 983056, %68 ]
  %86 = icmp ne i32 %78, 0
  %87 = zext i1 %86 to i32
  %88 = or i32 %85, %87
  %89 = load ptr, ptr %74, align 4
  %90 = getelementptr i8, ptr %89, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #9, !srcloc !9
  %91 = load ptr, ptr %74, align 4
  %92 = getelementptr i8, ptr %91, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 2001143) #9, !srcloc !9
  br label %138

93:                                               ; preds = %63, %63
  %94 = load ptr, ptr %7, align 4
  %95 = getelementptr inbounds %struct.cpsw_common, ptr %94, i32 0, i32 13
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr @cpsw_slave_index, align 4
  %98 = call i32 %97(ptr noundef %94, ptr noundef %6) #9
  %99 = getelementptr %struct.cpsw_slave, ptr %96, i32 %98
  %100 = load ptr, ptr %99, align 4
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #9, !srcloc !22
  %102 = getelementptr inbounds %struct.cpsw_common, ptr %94, i32 0, i32 8
  %103 = load i32, ptr %102, align 8
  %104 = icmp eq i32 %103, 1638668
  br i1 %104, label %105, label %116

105:                                              ; preds = %93
  %106 = and i32 %101, -1081112
  %107 = load i32, ptr %66, align 4
  %108 = icmp eq i32 %107, 0
  %109 = or i32 %106, 1081110
  %110 = select i1 %108, i32 %106, i32 %109
  %111 = getelementptr i8, ptr %0, i32 1456
  %112 = load i32, ptr %111, align 16
  %113 = icmp eq i32 %112, 0
  %114 = or i32 %110, 1081109
  %115 = select i1 %113, i32 %110, i32 %114
  br label %127

116:                                              ; preds = %93
  %117 = and i32 %101, -1113944
  %118 = load i32, ptr %66, align 4
  %119 = icmp eq i32 %118, 0
  %120 = or i32 %117, 1113942
  %121 = select i1 %119, i32 %117, i32 %120
  %122 = getelementptr i8, ptr %0, i32 1456
  %123 = load i32, ptr %122, align 16
  %124 = icmp eq i32 %123, 0
  %125 = or i32 %121, 1113941
  %126 = select i1 %124, i32 %121, i32 %125
  br label %127

127:                                              ; preds = %116, %105
  %128 = phi i32 [ %115, %105 ], [ %126, %116 ]
  %129 = load ptr, ptr %99, align 4
  %130 = getelementptr i8, ptr %129, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 1966095) #9, !srcloc !9
  %131 = load ptr, ptr %99, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %128) #9, !srcloc !9
  %132 = getelementptr inbounds %struct.cpsw_common, ptr %94, i32 0, i32 4
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %133, i32 0, i32 11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 35063) #9, !srcloc !9
  %135 = load ptr, ptr %132, align 8
  %136 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %135, i32 0, i32 10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 33024) #9, !srcloc !9
  br label %138

137:                                              ; preds = %63
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 669, i32 noundef 9, ptr noundef null) #9
  br label %138

138:                                              ; preds = %137, %127, %84, %81
  %139 = load ptr, ptr %35, align 4
  %140 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %139, i32 12, i32 -1090519040) #11, !srcloc !29
  %141 = extractvalue { i32, i32 } %140, 0
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %42) #7, !srcloc !26
  %145 = and i32 %144, -13
  %146 = or i32 %145, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %146) #9, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !28
  %147 = call i32 @arm_copy_to_user(ptr noundef %139, ptr noundef nonnull %5, i32 noundef 12) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %144) #9, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !28
  %148 = icmp eq i32 %147, 0
  %149 = select i1 %148, i32 0, i32 -14
  br label %150

150:                                              ; preds = %143, %138, %56, %52, %48, %30
  %151 = phi i32 [ -95, %30 ], [ -34, %52 ], [ -34, %56 ], [ -14, %48 ], [ -14, %138 ], [ %149, %143 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  br label %184

152:                                              ; preds = %29
  %153 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %154 = getelementptr inbounds %struct.cpsw_common, ptr %153, i32 0, i32 8
  %155 = load i32, ptr %154, align 8
  switch i32 %155, label %179 [
    i32 1638666, label %156
    i32 1638668, label %156
    i32 1638671, label %156
  ]

156:                                              ; preds = %152, %152, %152
  store i32 0, ptr %4, align 4
  %157 = getelementptr i8, ptr %0, i32 1452
  %158 = load i32, ptr %157, align 4
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = getelementptr inbounds %struct.hwtstamp_config, ptr %4, i32 0, i32 1
  store i32 %160, ptr %161, align 4
  %162 = getelementptr i8, ptr %0, i32 1456
  %163 = load i32, ptr %162, align 16
  %164 = getelementptr inbounds %struct.hwtstamp_config, ptr %4, i32 0, i32 2
  store i32 %163, ptr %164, align 4
  %165 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  %167 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %166, i32 12, i32 -1090519040) #11, !srcloc !29
  %168 = extractvalue { i32, i32 } %167, 0
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %156
  %171 = tail call ptr @llvm.thread.pointer() #9
  %172 = getelementptr inbounds %struct.thread_info, ptr %171, i32 0, i32 3
  %173 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %172) #7, !srcloc !26
  %174 = and i32 %173, -13
  %175 = or i32 %174, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %175) #9, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !28
  %176 = call i32 @arm_copy_to_user(ptr noundef %166, ptr noundef nonnull %4, i32 noundef 12) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %173) #9, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !28
  %177 = icmp eq i32 %176, 0
  %178 = select i1 %177, i32 0, i32 -14
  br label %179

179:                                              ; preds = %170, %156, %152
  %180 = phi i32 [ -95, %152 ], [ -14, %156 ], [ %178, %170 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  br label %184

181:                                              ; preds = %29
  br i1 %20, label %184, label %182

182:                                              ; preds = %181, %25
  %183 = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %19, ptr noundef %1, i32 noundef %2) #9
  br label %184

184:                                              ; preds = %182, %181, %179, %150, %3
  %185 = phi i32 [ %183, %182 ], [ %180, %179 ], [ %151, %150 ], [ -22, %3 ], [ -95, %181 ]
  ret i32 %185
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_ndo_set_tx_maxrate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 1996
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr %struct.netdev_queue, ptr %7, i32 %1, i32 5
  %9 = load i32, ptr %8, align 16
  %10 = icmp eq i32 %9, %2
  br i1 %10, label %70, label %11

11:                                               ; preds = %3
  %12 = mul i32 %2, 1000
  %13 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 14
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @cpdma_chan_get_min_rate(ptr noundef %14) #9
  %16 = icmp ult i32 %12, %15
  %17 = icmp ne i32 %12, 0
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = getelementptr i8, ptr %0, i32 1412
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.8, i32 noundef %15) #10
  br label %70

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 27
  %24 = load i32, ptr %23, align 8
  %25 = icmp ult i32 %24, %2
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %0, i32 1412
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.9) #10
  br label %70

29:                                               ; preds = %22
  %30 = load ptr, ptr %5, align 8
  %31 = tail call i32 @__pm_runtime_resume(ptr noundef %30, i32 noundef 4) #9
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load ptr, ptr %5, align 8
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #9, !srcloc !31
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 0, i32 -1, ptr elementtype(i32) %35) #9, !srcloc !32
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %70, label %39

39:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !33
  br label %70

40:                                               ; preds = %29
  %41 = getelementptr %struct.cpsw_common, ptr %5, i32 0, i32 15, i32 %1
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @cpdma_chan_set_rate(ptr noundef %42, i32 noundef %12) #9
  %44 = load ptr, ptr %5, align 8
  %45 = tail call i32 @__pm_runtime_idle(ptr noundef %44, i32 noundef 5) #9
  %46 = icmp eq i32 %43, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 1, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  br label %53

53:                                               ; preds = %65, %51
  %54 = phi i32 [ %49, %51 ], [ %66, %65 ]
  %55 = phi i32 [ 0, %51 ], [ %67, %65 ]
  %56 = load ptr, ptr %52, align 4
  %57 = getelementptr %struct.cpsw_slave, ptr %56, i32 %55, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 87
  %62 = load ptr, ptr %61, align 64
  %63 = getelementptr %struct.netdev_queue, ptr %62, i32 %1, i32 5
  store i32 %2, ptr %63, align 16
  %64 = load i32, ptr %48, align 4
  br label %65

65:                                               ; preds = %60, %53
  %66 = phi i32 [ %54, %53 ], [ %64, %60 ]
  %67 = add nuw i32 %55, 1
  %68 = icmp ult i32 %67, %66
  br i1 %68, label %53, label %69

69:                                               ; preds = %65, %47
  tail call void @cpsw_split_res(ptr noundef %5)
  br label %70

70:                                               ; preds = %69, %40, %39, %33, %26, %19, %3
  %71 = phi i32 [ -22, %19 ], [ -22, %26 ], [ 0, %69 ], [ 0, %3 ], [ %43, %40 ], [ %31, %33 ], [ %31, %39 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_get_min_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cpsw_shp_is_off(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %5, i32 0, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !22
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr @cpsw_slave_index, align 4
  %11 = tail call i32 %10(ptr noundef %3, ptr noundef %0) #9
  %12 = getelementptr %struct.cpsw_slave, ptr %9, i32 %11, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, 3
  %15 = add i32 %14, 16
  %16 = shl i32 7, %15
  %17 = and i32 %16, %7
  %18 = icmp eq i32 %17, 0
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_ndo_setup_tc(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  switch i32 %1, label %234 [
    i32 6, label %4
    i32 0, label %92
  ]

4:                                                ; preds = %3
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr i8, ptr %0, i32 1996
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 64
  %9 = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @netdev_txq_to_tc(ptr noundef %8, i32 noundef %10) #9
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 117
  %13 = load i16, ptr %12, align 2
  %14 = sext i16 %13 to i32
  %15 = add nsw i32 %14, -1
  %16 = icmp eq i32 %15, %11
  %17 = sub i32 3, %11
  %18 = icmp eq i32 %11, 3
  %19 = or i1 %18, %16
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = getelementptr i8, ptr %0, i32 1412
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.15, i32 noundef %11) #10
  br label %234

23:                                               ; preds = %4
  %24 = load i8, ptr %2, align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr %struct.cpsw_priv, ptr %5, i32 0, i32 7, i32 %17
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %234, label %30

30:                                               ; preds = %26, %23
  %31 = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 13
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr @cpsw_slave_index, align 4
  %34 = tail call i32 %33(ptr noundef %7, ptr noundef %5) #9
  %35 = getelementptr %struct.cpsw_slave, ptr %32, i32 %34, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.phy_device, ptr %36, i32 0, i32 4
  %40 = load i16, ptr %39, align 8
  %41 = and i16 %40, 8192
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = getelementptr i8, ptr %0, i32 1448
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr inbounds %struct.phy_device, ptr %36, i32 0, i32 8
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %45, %48
  %50 = select i1 %46, i1 true, i1 %49
  %51 = select i1 %50, i32 0, i32 %45
  store i32 %48, ptr %44, align 8
  br label %52

52:                                               ; preds = %43, %38, %30
  %53 = phi i32 [ %51, %43 ], [ 0, %38 ], [ 0, %30 ]
  %54 = getelementptr i8, ptr %0, i32 1448
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = getelementptr i8, ptr %0, i32 1412
  %59 = load ptr, ptr %58, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.16) #10
  br label %234

60:                                               ; preds = %52
  %61 = load ptr, ptr %7, align 8
  %62 = tail call i32 @__pm_runtime_resume(ptr noundef %61, i32 noundef 4) #9
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load ptr, ptr %7, align 8
  %66 = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %66) #9, !srcloc !31
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %66, ptr %66, i32 0, i32 -1, ptr elementtype(i32) %66) #9, !srcloc !32
  %68 = extractvalue { i32, i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %234, label %70

70:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !33
  br label %234

71:                                               ; preds = %60
  %72 = load i8, ptr %2, align 4
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %2, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i32 [ %76, %74 ], [ 0, %71 ]
  %79 = tail call fastcc i32 @cpsw_set_fifo_rlimit(ptr noundef %5, i32 noundef %17, i32 noundef %78) #9
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  store i32 %53, ptr %54, align 8
  br label %89

82:                                               ; preds = %77
  %83 = icmp ne i32 %78, 0
  %84 = icmp ne i32 %53, 0
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = getelementptr i8, ptr %0, i32 1412
  %88 = load ptr, ptr %87, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.17) #10
  br label %89

89:                                               ; preds = %86, %82, %81
  %90 = load ptr, ptr %7, align 8
  %91 = tail call i32 @__pm_runtime_idle(ptr noundef %90, i32 noundef 4) #9
  br label %234

92:                                               ; preds = %3
  %93 = getelementptr i8, ptr %0, i32 1408
  %94 = getelementptr i8, ptr %0, i32 1996
  %95 = load ptr, ptr %94, align 4
  %96 = load i8, ptr %2, align 8
  %97 = zext i8 %96 to i32
  %98 = icmp ugt i8 %96, 4
  br i1 %98, label %234, label %99

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, ptr %2, i32 0, i32 1
  %101 = load i16, ptr %100, align 2
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %234

103:                                              ; preds = %99
  %104 = load ptr, ptr %95, align 8
  %105 = tail call i32 @__pm_runtime_resume(ptr noundef %104, i32 noundef 4) #9
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load ptr, ptr %95, align 8
  %109 = getelementptr inbounds %struct.device, ptr %108, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #9, !srcloc !31
  %110 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 0, i32 -1, ptr elementtype(i32) %109) #9, !srcloc !32
  %111 = extractvalue { i32, i32, i32 } %110, 0
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %234, label %113

113:                                              ; preds = %107
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !33
  br label %234

114:                                              ; preds = %103
  %115 = icmp eq i8 %96, 0
  br i1 %115, label %208, label %116

116:                                              ; preds = %114
  %117 = add nsw i32 %97, -1
  %118 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 1, i32 0
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = sub nsw i32 3, %120
  %122 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 1, i32 1
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %117, %124
  %126 = mul nsw i32 %124, -16
  %127 = add nsw i32 %126, 48
  %128 = select i1 %125, i32 0, i32 %127
  %129 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 1, i32 2
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %117, %131
  %133 = mul nsw i32 %131, -256
  %134 = add nsw i32 %133, 768
  %135 = select i1 %132, i32 0, i32 %134
  %136 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 1, i32 3
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp eq i32 %117, %138
  %140 = mul nsw i32 %138, -4096
  %141 = add nsw i32 %140, 12288
  %142 = select i1 %139, i32 0, i32 %141
  %143 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 1, i32 4
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %117, %145
  %147 = mul nsw i32 %145, -65536
  %148 = add nsw i32 %147, 196608
  %149 = select i1 %146, i32 0, i32 %148
  %150 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 1, i32 5
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %117, %152
  %154 = mul nsw i32 %152, -1048576
  %155 = add nsw i32 %154, 3145728
  %156 = select i1 %153, i32 0, i32 %155
  %157 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 1, i32 6
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp eq i32 %117, %159
  %161 = mul i32 %159, -16777216
  %162 = add i32 %161, 50331648
  %163 = select i1 %160, i32 0, i32 %162
  %164 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 1, i32 7
  %165 = load i8, ptr %164, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp eq i32 %117, %166
  %168 = mul i32 %166, -268435456
  %169 = add i32 %168, 805306368
  %170 = select i1 %167, i32 0, i32 %169
  %171 = tail call i32 @netdev_set_num_tc(ptr noundef %0, i8 noundef zeroext %96) #9
  %172 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 3, i32 0
  %173 = load i16, ptr %172, align 2
  %174 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 4, i32 0
  %175 = load i16, ptr %174, align 2
  %176 = tail call i32 @netdev_set_tc_queue(ptr noundef %0, i8 noundef zeroext 0, i16 noundef zeroext %173, i16 noundef zeroext %175) #9
  %177 = icmp eq i8 %96, 1
  br i1 %177, label %198, label %178

178:                                              ; preds = %116
  %179 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 3, i32 1
  %180 = load i16, ptr %179, align 2
  %181 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 4, i32 1
  %182 = load i16, ptr %181, align 2
  %183 = tail call i32 @netdev_set_tc_queue(ptr noundef %0, i8 noundef zeroext 1, i16 noundef zeroext %180, i16 noundef zeroext %182) #9
  %184 = icmp eq i8 %96, 2
  br i1 %184, label %198, label %185

185:                                              ; preds = %178
  %186 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 3, i32 2
  %187 = load i16, ptr %186, align 2
  %188 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 4, i32 2
  %189 = load i16, ptr %188, align 2
  %190 = tail call i32 @netdev_set_tc_queue(ptr noundef %0, i8 noundef zeroext 2, i16 noundef zeroext %187, i16 noundef zeroext %189) #9
  %191 = icmp eq i8 %96, 3
  br i1 %191, label %198, label %192

192:                                              ; preds = %185
  %193 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 3, i32 3
  %194 = load i16, ptr %193, align 2
  %195 = getelementptr %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 4, i32 3
  %196 = load i16, ptr %195, align 2
  %197 = tail call i32 @netdev_set_tc_queue(ptr noundef %0, i8 noundef zeroext 3, i16 noundef zeroext %194, i16 noundef zeroext %196) #9
  br label %198

198:                                              ; preds = %192, %185, %178, %116
  %199 = icmp eq i32 %117, %120
  %200 = select i1 %199, i32 0, i32 %121
  %201 = or i32 %128, %200
  %202 = or i32 %201, %135
  %203 = or i32 %202, %142
  %204 = or i32 %203, %149
  %205 = or i32 %204, %156
  %206 = or i32 %205, %163
  %207 = or i32 %206, %170
  br label %208

208:                                              ; preds = %198, %114
  %209 = phi i32 [ 0, %114 ], [ %207, %198 ]
  %210 = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %2, i32 0, i32 2
  %211 = load i8, ptr %210, align 1
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  tail call void @netdev_reset_tc(ptr noundef %0) #9
  %214 = load i8, ptr %210, align 1
  br label %215

215:                                              ; preds = %213, %208
  %216 = phi i8 [ %211, %208 ], [ %214, %213 ]
  %217 = phi i32 [ %209, %208 ], [ 857870592, %213 ]
  %218 = icmp ne i8 %216, 0
  %219 = getelementptr i8, ptr %0, i32 1428
  %220 = zext i1 %218 to i8
  store i8 %220, ptr %219, align 4
  %221 = getelementptr inbounds %struct.cpsw_common, ptr %95, i32 0, i32 8
  %222 = load i32, ptr %221, align 8
  %223 = icmp eq i32 %222, 1638666
  %224 = select i1 %223, i32 16, i32 24
  %225 = getelementptr inbounds %struct.cpsw_common, ptr %95, i32 0, i32 13
  %226 = load ptr, ptr %225, align 4
  %227 = load ptr, ptr @cpsw_slave_index, align 4
  %228 = tail call i32 %227(ptr noundef %95, ptr noundef %93) #9
  %229 = getelementptr %struct.cpsw_slave, ptr %226, i32 %228
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr i8, ptr %230, i32 %224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %217) #9, !srcloc !9
  %232 = load ptr, ptr %95, align 8
  %233 = tail call i32 @__pm_runtime_idle(ptr noundef %232, i32 noundef 4) #9
  br label %234

234:                                              ; preds = %215, %113, %107, %99, %92, %89, %70, %64, %57, %26, %20, %3
  %235 = phi i32 [ -95, %3 ], [ %79, %89 ], [ -1, %57 ], [ -22, %20 ], [ 0, %26 ], [ %62, %64 ], [ %62, %70 ], [ 0, %215 ], [ -22, %92 ], [ -22, %99 ], [ %105, %107 ], [ %105, %113 ]
  ret i32 %235
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_cbs_resume(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.cpsw_priv, ptr %1, i32 0, i32 7, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @cpsw_set_fifo_rlimit(ptr noundef %1, i32 noundef 3, i32 noundef %4)
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr %struct.cpsw_priv, ptr %1, i32 0, i32 7, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cpsw_set_fifo_rlimit(ptr noundef %1, i32 noundef 2, i32 noundef %10)
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr %struct.cpsw_priv, ptr %1, i32 0, i32 7, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc i32 @cpsw_set_fifo_rlimit(ptr noundef %1, i32 noundef 1, i32 noundef %16)
  br label %20

20:                                               ; preds = %18, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_set_fifo_rlimit(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = mul i32 %7, 1000
  %9 = icmp slt i32 %8, %2
  br i1 %9, label %140, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr @cpsw_slave_index, align 4
  %14 = tail call i32 %13(ptr noundef %5, ptr noundef %0) #9
  %15 = getelementptr %struct.cpsw_slave, ptr %12, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 40
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !22
  %19 = icmp eq i32 %2, 0
  %20 = add i32 %2, -1
  %21 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 1
  br i1 %19, label %22, label %30

22:                                               ; preds = %10
  %23 = icmp sgt i32 %1, 3
  br i1 %23, label %24, label %84

24:                                               ; preds = %22
  %25 = getelementptr %struct.cpsw_priv, ptr %0, i32 0, i32 7, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %86, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.18, i32 noundef 3) #10
  br label %86

30:                                               ; preds = %10
  %31 = getelementptr %struct.cpsw_priv, ptr %0, i32 0, i32 7, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = icmp slt i32 %1, 3
  %35 = and i1 %34, %33
  br i1 %35, label %36, label %39

36:                                               ; preds = %99, %54, %30
  %37 = phi i32 [ 3, %30 ], [ 2, %54 ], [ 1, %99 ]
  %38 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.19, i32 noundef %37) #10
  br label %246

39:                                               ; preds = %30
  %40 = icmp eq i32 %1, 3
  br i1 %40, label %41, label %54

41:                                               ; preds = %39
  %42 = and i32 %18, -8323073
  %43 = load i32, ptr %6, align 8
  %44 = mul i32 %43, 10
  %45 = add i32 %44, %20
  %46 = sdiv i32 %45, %44
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 1, i32 %46
  %49 = shl i32 %48, 16
  %50 = or i32 %49, %42
  %51 = getelementptr %struct.cpsw_priv, ptr %0, i32 0, i32 7, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %92, label %66

54:                                               ; preds = %39
  %55 = lshr i32 %18, 16
  %56 = and i32 %55, 127
  %57 = select i1 %33, i32 0, i32 %56
  %58 = getelementptr %struct.cpsw_priv, ptr %0, i32 0, i32 7, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  %61 = icmp slt i32 %1, 2
  %62 = and i1 %61, %60
  br i1 %62, label %36, label %63

63:                                               ; preds = %54
  %64 = icmp eq i32 %1, 2
  br i1 %64, label %73, label %65

65:                                               ; preds = %63
  br i1 %60, label %99, label %66

66:                                               ; preds = %65, %41
  %67 = phi i32 [ %48, %41 ], [ 0, %65 ]
  %68 = phi i32 [ %48, %41 ], [ %57, %65 ]
  %69 = phi i32 [ %50, %41 ], [ %18, %65 ]
  %70 = lshr i32 %69, 8
  %71 = and i32 %70, 127
  %72 = add i32 %71, %68
  br label %99

73:                                               ; preds = %63
  %74 = and i32 %18, -32513
  %75 = load i32, ptr %6, align 8
  %76 = mul i32 %75, 10
  %77 = add i32 %76, %20
  %78 = sdiv i32 %77, %76
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, i32 1, i32 %78
  %81 = shl i32 %80, 8
  %82 = or i32 %81, %74
  %83 = add i32 %80, %57
  br label %92

84:                                               ; preds = %22
  %85 = icmp eq i32 %1, 3
  br i1 %85, label %86, label %127

86:                                               ; preds = %84, %28, %24
  %87 = getelementptr %struct.cpsw_priv, ptr %0, i32 0, i32 7, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %129, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.18, i32 noundef 2) #10
  br label %129

92:                                               ; preds = %73, %41
  %93 = phi i32 [ %82, %73 ], [ %50, %41 ]
  %94 = phi i32 [ %83, %73 ], [ %48, %41 ]
  %95 = phi i32 [ %80, %73 ], [ %48, %41 ]
  %96 = getelementptr %struct.cpsw_priv, ptr %0, i32 0, i32 7, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %135, label %111

99:                                               ; preds = %66, %65
  %100 = phi i32 [ %18, %65 ], [ %69, %66 ]
  %101 = phi i32 [ %57, %65 ], [ %72, %66 ]
  %102 = phi i32 [ 0, %65 ], [ %67, %66 ]
  %103 = getelementptr %struct.cpsw_priv, ptr %0, i32 0, i32 7, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  %106 = icmp slt i32 %1, 1
  %107 = and i1 %106, %105
  br i1 %107, label %36, label %108

108:                                              ; preds = %99
  %109 = icmp eq i32 %1, 1
  br i1 %109, label %117, label %110

110:                                              ; preds = %108
  br i1 %105, label %135, label %111

111:                                              ; preds = %110, %92
  %112 = phi i32 [ %95, %92 ], [ %102, %110 ]
  %113 = phi i32 [ %94, %92 ], [ %101, %110 ]
  %114 = phi i32 [ %93, %92 ], [ %100, %110 ]
  %115 = and i32 %114, 127
  %116 = add i32 %115, %113
  br label %135

117:                                              ; preds = %108
  %118 = and i32 %100, -128
  %119 = load i32, ptr %6, align 8
  %120 = mul i32 %119, 10
  %121 = add i32 %120, %20
  %122 = sdiv i32 %121, %120
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, i32 1, i32 %122
  %125 = or i32 %124, %118
  %126 = add i32 %124, %101
  br label %135

127:                                              ; preds = %84
  %128 = icmp sgt i32 %1, 1
  br i1 %128, label %129, label %143

129:                                              ; preds = %127, %90, %86
  %130 = getelementptr %struct.cpsw_priv, ptr %0, i32 0, i32 7, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %134, ptr noundef nonnull @.str.18, i32 noundef 1) #10
  br label %143

135:                                              ; preds = %117, %111, %110, %92
  %136 = phi i32 [ %125, %117 ], [ %114, %111 ], [ %100, %110 ], [ %93, %92 ]
  %137 = phi i32 [ %126, %117 ], [ %116, %111 ], [ %101, %110 ], [ %94, %92 ]
  %138 = phi i32 [ %124, %117 ], [ %112, %111 ], [ %102, %110 ], [ %95, %92 ]
  %139 = icmp sgt i32 %137, 99
  br i1 %139, label %140, label %143

140:                                              ; preds = %135, %3
  %141 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.21) #10
  br label %246

143:                                              ; preds = %135, %133, %129, %127
  %144 = phi i32 [ %138, %135 ], [ 0, %129 ], [ 0, %133 ], [ 0, %127 ]
  %145 = phi i32 [ %136, %135 ], [ %18, %129 ], [ %18, %133 ], [ %18, %127 ]
  %146 = load ptr, ptr %15, align 4
  %147 = getelementptr i8, ptr %146, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %145) #9, !srcloc !9
  %148 = getelementptr %struct.cpsw_priv, ptr %0, i32 0, i32 7, i32 %1
  store i32 %2, ptr %148, align 4
  %149 = load ptr, ptr %21, align 4
  %150 = load i32, ptr %6, align 8
  %151 = mul i32 %150, %144
  %152 = add i32 %151, 50
  %153 = udiv i32 %152, 100
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %149, ptr noundef nonnull @.str.20, i32 noundef %1, i32 noundef %153) #10
  %154 = load ptr, ptr %11, align 4
  %155 = load ptr, ptr @cpsw_slave_index, align 4
  %156 = tail call i32 %155(ptr noundef %5, ptr noundef %0) #9
  %157 = getelementptr %struct.cpsw_slave, ptr %154, i32 %156
  %158 = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 8
  %159 = load i32, ptr %158, align 8
  %160 = icmp eq i32 %159, 1638666
  %161 = select i1 %160, i32 8, i32 16
  br i1 %19, label %162, label %183

162:                                              ; preds = %143
  %163 = load ptr, ptr %4, align 4
  %164 = getelementptr inbounds %struct.cpsw_common, ptr %163, i32 0, i32 4
  %165 = load ptr, ptr %164, align 8
  %166 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %165, i32 0, i32 4
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #9, !srcloc !22
  %168 = getelementptr inbounds %struct.cpsw_common, ptr %163, i32 0, i32 13
  %169 = load ptr, ptr %168, align 4
  %170 = load ptr, ptr @cpsw_slave_index, align 4
  %171 = tail call i32 %170(ptr noundef %163, ptr noundef %0) #9
  %172 = getelementptr %struct.cpsw_slave, ptr %169, i32 %171, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = mul i32 %173, 3
  %175 = add i32 %174, 16
  %176 = add i32 %1, -1
  %177 = shl nuw i32 1, %176
  %178 = shl i32 %177, %175
  %179 = xor i32 %178, -1
  %180 = and i32 %167, %179
  %181 = load ptr, ptr %164, align 8
  %182 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %181, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %180) #9, !srcloc !9
  br label %183

183:                                              ; preds = %162, %143
  %184 = load ptr, ptr %157, align 4
  %185 = getelementptr i8, ptr %184, i32 %161
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #9, !srcloc !22
  %187 = load ptr, ptr %4, align 4
  %188 = getelementptr inbounds %struct.cpsw_common, ptr %187, i32 0, i32 4
  %189 = load ptr, ptr %188, align 8
  %190 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %189, i32 0, i32 4
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #9, !srcloc !22
  %192 = getelementptr inbounds %struct.cpsw_common, ptr %187, i32 0, i32 13
  %193 = load ptr, ptr %192, align 4
  %194 = load ptr, ptr @cpsw_slave_index, align 4
  %195 = tail call i32 %194(ptr noundef %187, ptr noundef %0) #9
  %196 = getelementptr %struct.cpsw_slave, ptr %193, i32 %195, i32 1
  %197 = load i32, ptr %196, align 4
  %198 = mul i32 %197, 3
  %199 = add i32 %198, 16
  %200 = shl i32 7, %199
  %201 = and i32 %200, %191
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %183
  %204 = and i32 %186, -15925249
  br i1 %19, label %207, label %205

205:                                              ; preds = %203
  %206 = or i32 %204, 131072
  br label %209

207:                                              ; preds = %203
  store i32 0, ptr %6, align 8
  br label %214

208:                                              ; preds = %183
  br i1 %19, label %214, label %209

209:                                              ; preds = %208, %205
  %210 = phi i32 [ %206, %205 ], [ %186, %208 ]
  %211 = add i32 %1, 20
  %212 = shl nuw i32 1, %211
  %213 = or i32 %210, %212
  br label %220

214:                                              ; preds = %208, %207
  %215 = phi i32 [ %204, %207 ], [ %186, %208 ]
  %216 = add i32 %1, 20
  %217 = shl nuw i32 1, %216
  %218 = xor i32 %217, -1
  %219 = and i32 %215, %218
  br label %220

220:                                              ; preds = %214, %209
  %221 = phi i32 [ %213, %209 ], [ %219, %214 ]
  %222 = load ptr, ptr %157, align 4
  %223 = getelementptr i8, ptr %222, i32 %161
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 %221) #9, !srcloc !9
  %224 = load ptr, ptr %4, align 4
  %225 = getelementptr inbounds %struct.cpsw_common, ptr %224, i32 0, i32 4
  %226 = load ptr, ptr %225, align 8
  %227 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %226, i32 0, i32 4
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #9, !srcloc !22
  %229 = getelementptr inbounds %struct.cpsw_common, ptr %224, i32 0, i32 13
  %230 = load ptr, ptr %229, align 4
  %231 = load ptr, ptr @cpsw_slave_index, align 4
  %232 = tail call i32 %231(ptr noundef %224, ptr noundef %0) #9
  %233 = getelementptr %struct.cpsw_slave, ptr %230, i32 %232, i32 1
  %234 = load i32, ptr %233, align 4
  %235 = mul i32 %234, 3
  %236 = add i32 %235, 16
  %237 = add i32 %1, -1
  %238 = shl nuw i32 1, %237
  %239 = shl i32 %238, %236
  %240 = or i32 %239, %228
  %241 = xor i32 %239, -1
  %242 = and i32 %228, %241
  %243 = select i1 %19, i32 %242, i32 %240
  %244 = load ptr, ptr %225, align 8
  %245 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %244, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 %243) #9, !srcloc !9
  br label %246

246:                                              ; preds = %220, %140, %36
  %247 = phi i32 [ 0, %220 ], [ -22, %140 ], [ -22, %36 ]
  ret i32 %247
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_mqprio_resume(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 6
  %4 = load i8, ptr %3, align 4, !range !12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %62, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpsw_priv, ptr %1, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %1, align 64
  %10 = getelementptr %struct.net_device, ptr %9, i32 0, i32 119, i32 0
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = sub nsw i32 3, %12
  %14 = getelementptr %struct.net_device, ptr %9, i32 0, i32 119, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = mul nsw i32 %16, -16
  %18 = add nsw i32 %17, 48
  %19 = or i32 %18, %13
  %20 = getelementptr %struct.net_device, ptr %9, i32 0, i32 119, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = mul nsw i32 %22, -256
  %24 = add nsw i32 %23, 768
  %25 = or i32 %24, %19
  %26 = getelementptr %struct.net_device, ptr %9, i32 0, i32 119, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = mul nsw i32 %28, -4096
  %30 = add nsw i32 %29, 12288
  %31 = or i32 %30, %25
  %32 = getelementptr %struct.net_device, ptr %9, i32 0, i32 119, i32 4
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = mul nsw i32 %34, -65536
  %36 = add nsw i32 %35, 196608
  %37 = or i32 %36, %31
  %38 = getelementptr %struct.net_device, ptr %9, i32 0, i32 119, i32 5
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = mul nsw i32 %40, -1048576
  %42 = add nsw i32 %41, 3145728
  %43 = or i32 %42, %37
  %44 = getelementptr %struct.net_device, ptr %9, i32 0, i32 119, i32 6
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = mul i32 %46, -16777216
  %48 = add i32 %47, 50331648
  %49 = or i32 %48, %43
  %50 = getelementptr %struct.net_device, ptr %9, i32 0, i32 119, i32 7
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = mul i32 %52, -268435456
  %54 = add i32 %53, 805306368
  %55 = or i32 %54, %49
  %56 = getelementptr inbounds %struct.cpsw_common, ptr %8, i32 0, i32 8
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %57, 1638666
  %59 = select i1 %58, i32 16, i32 24
  %60 = load ptr, ptr %0, align 4
  %61 = getelementptr i8, ptr %60, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %55) #9, !srcloc !9
  br label %62

62:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_fill_rx_channels(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 25
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %70

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 11
  %9 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 2
  %10 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 1
  br label %11

11:                                               ; preds = %66, %7
  %12 = phi i32 [ 0, %7 ], [ %67, %66 ]
  %13 = getelementptr %struct.cpsw_common, ptr %3, i32 0, i32 29, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.cpsw_common, ptr %3, i32 0, i32 16, i32 %12
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @cpdma_chan_get_rx_buf_num(ptr noundef %16) #9
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %22, label %57

19:                                               ; preds = %35
  %20 = add nuw nsw i32 %23, 1
  %21 = icmp eq i32 %20, %17
  br i1 %21, label %57, label %22

22:                                               ; preds = %19, %11
  %23 = phi i32 [ %20, %19 ], [ 0, %11 ]
  %24 = tail call ptr @page_pool_alloc_pages(ptr noundef %14, i32 noundef 10784) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i32, ptr %9, align 8
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %70, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @net_ratelimit() #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %70, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.10) #10
  br label %70

35:                                               ; preds = %22
  %36 = tail call ptr @page_address(ptr noundef nonnull %24) #9
  %37 = getelementptr i8, ptr %36, i32 24
  %38 = load ptr, ptr %0, align 64
  store ptr %38, ptr %37, align 4
  %39 = getelementptr i8, ptr %36, i32 28
  store i32 %12, ptr %39, align 4
  %40 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 258
  %43 = load ptr, ptr %15, align 4
  %44 = load i32, ptr %8, align 4
  %45 = tail call i32 @cpdma_chan_idle_submit_mapped(ptr noundef %43, ptr noundef nonnull %24, i32 noundef %42, i32 noundef %44, i32 noundef 0) #9
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %19

47:                                               ; preds = %35
  %48 = load i32, ptr %9, align 8
  %49 = and i32 %48, 32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = tail call i32 @net_ratelimit() #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.11, i32 noundef %12, i32 noundef %45) #10
  br label %56

56:                                               ; preds = %54, %51, %47
  tail call void @page_pool_put_page(ptr noundef %14, ptr noundef nonnull %24, i32 noundef -1, i1 noundef zeroext true) #9
  br label %70

57:                                               ; preds = %19, %11
  %58 = load i32, ptr %9, align 8
  %59 = and i32 %58, 32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = tail call i32 @net_ratelimit() #9
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.12, i32 noundef %12, i32 noundef %17) #10
  br label %66

66:                                               ; preds = %64, %61, %57
  %67 = add nuw nsw i32 %12, 1
  %68 = load i32, ptr %4, align 8
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %11, label %70

70:                                               ; preds = %66, %56, %33, %30, %26, %1
  %71 = phi i32 [ %45, %56 ], [ -12, %33 ], [ -12, %30 ], [ -12, %26 ], [ 0, %1 ], [ 0, %66 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_get_rx_buf_num(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_idle_submit_mapped(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_destroy_xdp_rxqs(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 25
  %3 = load i32, ptr %2, align 8
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %33

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 1, i32 3
  %7 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 13
  br label %8

8:                                                ; preds = %27, %5
  %9 = phi i32 [ 0, %5 ], [ %30, %27 ]
  %10 = load i32, ptr %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %23, %8
  %13 = phi i32 [ %24, %23 ], [ 0, %8 ]
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr %struct.cpsw_slave, ptr %14, i32 %13, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %16, i32 1408
  %20 = getelementptr %struct.cpsw_priv, ptr %19, i32 0, i32 13, i32 %9
  %21 = tail call zeroext i1 @xdp_rxq_info_is_reg(ptr noundef %20) #9
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @xdp_rxq_info_unreg(ptr noundef %20) #9
  br label %23

23:                                               ; preds = %22, %18, %12
  %24 = add nuw i32 %13, 1
  %25 = load i32, ptr %6, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %12, label %27

27:                                               ; preds = %23, %8
  %28 = getelementptr %struct.cpsw_common, ptr %0, i32 0, i32 29, i32 %9
  %29 = load ptr, ptr %28, align 4
  tail call void @page_pool_destroy(ptr noundef %29) #9
  store ptr null, ptr %28, align 4
  %30 = add nuw nsw i32 %9, 1
  %31 = load i32, ptr %2, align 8
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %8, label %33

33:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_create_xdp_rxqs(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.page_pool_params, align 4
  %3 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 25
  %4 = load i32, ptr %3, align 8
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %88

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %2, i32 4
  %8 = getelementptr inbounds %struct.page_pool_params, ptr %2, i32 0, i32 2
  %9 = getelementptr inbounds %struct.page_pool_params, ptr %2, i32 0, i32 3
  %10 = getelementptr inbounds %struct.page_pool_params, ptr %2, i32 0, i32 4
  %11 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 1, i32 3
  %12 = getelementptr inbounds %struct.cpsw_common, ptr %0, i32 0, i32 13
  br label %13

13:                                               ; preds = %55, %6
  %14 = phi i32 [ 0, %6 ], [ %56, %55 ]
  %15 = getelementptr %struct.cpsw_common, ptr %0, i32 0, i32 16, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @cpdma_chan_get_rx_buf_num(ptr noundef %16) #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(36) %7, i8 0, i64 36, i1 false) #9
  store i32 1, ptr %2, align 4
  store i32 %17, ptr %8, align 4
  store i32 -1, ptr %9, align 4
  %18 = load ptr, ptr %0, align 8
  store ptr %18, ptr %10, align 4
  %19 = call ptr @page_pool_create(ptr noundef nonnull %2) #9
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #9
  %22 = getelementptr %struct.cpsw_common, ptr %0, i32 0, i32 29, i32 %14
  store ptr %19, ptr %22, align 4
  %23 = load i32, ptr %11, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %55, label %28

25:                                               ; preds = %13
  %26 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.22) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #9
  %27 = ptrtoint ptr %19 to i32
  br label %59

28:                                               ; preds = %51, %21
  %29 = phi i32 [ %52, %51 ], [ %23, %21 ]
  %30 = phi i32 [ %53, %51 ], [ 0, %21 ]
  %31 = load ptr, ptr %12, align 4
  %32 = getelementptr %struct.cpsw_slave, ptr %31, i32 %30, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %28
  %36 = getelementptr i8, ptr %33, i32 1408
  %37 = getelementptr i8, ptr %33, i32 1996
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr %struct.cpsw_common, ptr %38, i32 0, i32 29, i32 %14
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr %struct.cpsw_priv, ptr %36, i32 0, i32 13, i32 %14
  %42 = load ptr, ptr %36, align 64
  %43 = call i32 @xdp_rxq_info_reg(ptr noundef %41, ptr noundef %42, i32 noundef %14, i32 noundef 0) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %35
  %46 = call i32 @xdp_rxq_info_reg_mem_model(ptr noundef %41, i32 noundef 2, ptr noundef %40) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, ptr %11, align 4
  br label %51

50:                                               ; preds = %45
  call void @xdp_rxq_info_unreg(ptr noundef %41) #9
  br label %59

51:                                               ; preds = %48, %28
  %52 = phi i32 [ %49, %48 ], [ %29, %28 ]
  %53 = add nuw i32 %30, 1
  %54 = icmp ult i32 %53, %52
  br i1 %54, label %28, label %55

55:                                               ; preds = %51, %21
  %56 = add nuw nsw i32 %14, 1
  %57 = load i32, ptr %3, align 8
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %13, label %88

59:                                               ; preds = %50, %35, %25
  %60 = phi i32 [ %46, %50 ], [ %27, %25 ], [ %43, %35 ]
  %61 = load i32, ptr %3, align 8
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %82, %59
  %64 = phi i32 [ %85, %82 ], [ 0, %59 ]
  %65 = load i32, ptr %11, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %78, %63
  %68 = phi i32 [ %79, %78 ], [ 0, %63 ]
  %69 = load ptr, ptr %12, align 4
  %70 = getelementptr %struct.cpsw_slave, ptr %69, i32 %68, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = getelementptr i8, ptr %71, i32 1408
  %75 = getelementptr %struct.cpsw_priv, ptr %74, i32 0, i32 13, i32 %64
  %76 = call zeroext i1 @xdp_rxq_info_is_reg(ptr noundef %75) #9
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  call void @xdp_rxq_info_unreg(ptr noundef %75) #9
  br label %78

78:                                               ; preds = %77, %73, %67
  %79 = add nuw i32 %68, 1
  %80 = load i32, ptr %11, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %67, label %82

82:                                               ; preds = %78, %63
  %83 = getelementptr %struct.cpsw_common, ptr %0, i32 0, i32 29, i32 %64
  %84 = load ptr, ptr %83, align 4
  call void @page_pool_destroy(ptr noundef %84) #9
  store ptr null, ptr %83, align 4
  %85 = add nuw nsw i32 %64, 1
  %86 = load i32, ptr %3, align 8
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %63, label %88

88:                                               ; preds = %82, %59, %55, %1
  %89 = phi i32 [ %60, %59 ], [ 0, %1 ], [ %60, %82 ], [ 0, %55 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_ndo_bpf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.netdev_bpf, ptr %1, i32 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 1984
  %9 = load ptr, ptr %8, align 64
  %10 = icmp ne ptr %9, null
  %11 = icmp ne ptr %7, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = getelementptr i8, ptr %0, i32 1460
  store volatile ptr %7, ptr %14, align 4
  tail call void @xdp_attachment_setup(ptr noundef %8, ptr noundef %1) #9
  br label %15

15:                                               ; preds = %13, %5, %2
  %16 = phi i32 [ -22, %2 ], [ 0, %5 ], [ 0, %13 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_xdp_tx_frame(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %1, i32 24
  %8 = load ptr, ptr %0, align 64
  store ptr %8, ptr %7, align 4
  %9 = getelementptr i8, ptr %1, i32 28
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %2, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.xdp_frame, ptr %1, i32 0, i32 2
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = add i32 %15, 24
  %20 = add i32 %19, %18
  %21 = ptrtoint ptr %1 to i32
  %22 = or i32 %21, 1
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.xdp_frame, ptr %1, i32 0, i32 1
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = tail call i32 @cpdma_chan_submit_mapped(ptr noundef %11, ptr noundef nonnull %23, i32 noundef %20, i32 noundef %26, i32 noundef %3) #9
  br label %41

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.xdp_frame, ptr %1, i32 0, i32 2
  %30 = load i16, ptr %29, align 2
  %31 = icmp ult i16 %30, 8
  br i1 %31, label %49, label %32

32:                                               ; preds = %28
  %33 = ptrtoint ptr %1 to i32
  %34 = or i32 %33, 1
  %35 = inttoptr i32 %34 to ptr
  %36 = load ptr, ptr %1, align 4
  %37 = getelementptr inbounds %struct.xdp_frame, ptr %1, i32 0, i32 1
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = tail call i32 @cpdma_chan_submit(ptr noundef %11, ptr noundef nonnull %35, ptr noundef %36, i32 noundef %39, i32 noundef %3) #9
  br label %41

41:                                               ; preds = %32, %13
  %42 = phi i32 [ %27, %13 ], [ %40, %32 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %0, align 64
  %46 = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 36, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %44, %41, %28
  %50 = phi i32 [ -22, %28 ], [ %42, %44 ], [ 0, %41 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_submit_mapped(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_submit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_run_xdp(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 64
  %10 = getelementptr inbounds %struct.cpsw_priv, ptr %0, i32 0, i32 11
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %227, label %13

13:                                               ; preds = %6
  %14 = load volatile i32, ptr @bpf_stats_enabled_key, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %44, !prof !34

16:                                               ; preds = %13
  %17 = tail call i64 @sched_clock() #9
  %18 = getelementptr inbounds %struct.bpf_prog, ptr %11, i32 1
  %19 = getelementptr inbounds %struct.bpf_prog, ptr %11, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %2, ptr noundef %18) #9
  %22 = getelementptr inbounds %struct.bpf_prog, ptr %11, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #7, !srcloc !35
  %28 = add i32 %27, %24
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.bpf_prog_stats, ptr %29, i32 0, i32 3
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !36
  %32 = load i32, ptr %30, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %30, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !37
  %34 = load i64, ptr %29, align 8
  %35 = add i64 %34, 1
  store i64 %35, ptr %29, align 8
  %36 = getelementptr inbounds %struct.bpf_prog_stats, ptr %29, i32 0, i32 1
  %37 = tail call i64 @sched_clock() #9
  %38 = sub i64 %37, %17
  %39 = and i64 %38, 4294967295
  %40 = load i64, ptr %36, align 8
  %41 = add i64 %39, %40
  store i64 %41, ptr %36, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !38
  %42 = load i32, ptr %30, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %30, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #9, !srcloc !39
  br label %49

44:                                               ; preds = %13
  %45 = getelementptr inbounds %struct.bpf_prog, ptr %11, i32 1
  %46 = getelementptr inbounds %struct.bpf_prog, ptr %11, i32 0, i32 9
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %2, ptr noundef %45) #9
  br label %49

49:                                               ; preds = %44, %16
  %50 = phi i32 [ %21, %16 ], [ %48, %44 ]
  %51 = load volatile i32, ptr @bpf_master_redirect_enabled_key, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %77, !prof !34

53:                                               ; preds = %49
  %54 = icmp eq i32 %50, 3
  br i1 %54, label %55, label %77

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.xdp_buff, ptr %2, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %57, align 64
  %59 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 14
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 2048
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 15
  %65 = load i64, ptr %64, align 16
  %66 = and i64 %65, 4
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = tail call i32 @xdp_master_redirect(ptr noundef %2) #9
  br label %77

70:                                               ; preds = %63, %55
  %71 = getelementptr inbounds %struct.xdp_buff, ptr %2, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %2, align 4
  %74 = ptrtoint ptr %72 to i32
  %75 = ptrtoint ptr %73 to i32
  %76 = sub i32 %74, %75
  store i32 %76, ptr %5, align 4
  br label %85

77:                                               ; preds = %68, %53, %49
  %78 = phi i32 [ %69, %68 ], [ %50, %53 ], [ %50, %49 ]
  %79 = getelementptr inbounds %struct.xdp_buff, ptr %2, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %2, align 4
  %82 = ptrtoint ptr %80 to i32
  %83 = ptrtoint ptr %81 to i32
  %84 = sub i32 %82, %83
  store i32 %84, ptr %5, align 4
  switch i32 %78, label %191 [
    i32 2, label %227
    i32 3, label %85
    i32 4, label %187
    i32 0, label %192
    i32 1, label %208
  ]

85:                                               ; preds = %77, %70
  %86 = phi ptr [ %71, %70 ], [ %79, %77 ]
  %87 = getelementptr inbounds %struct.xdp_buff, ptr %2, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.xdp_rxq_info, ptr %88, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = tail call ptr @xdp_convert_zc_to_xdp_frame(ptr noundef %2) #9
  br label %139

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.xdp_buff, ptr %2, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %2, align 4
  %98 = ptrtoint ptr %97 to i32
  %99 = ptrtoint ptr %96 to i32
  %100 = sub i32 %98, %99
  %101 = getelementptr inbounds %struct.xdp_buff, ptr %2, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = ptrtoint ptr %102 to i32
  %104 = sub i32 %98, %103
  %105 = tail call i32 @llvm.smax.i32(i32 %104, i32 0) #9
  %106 = sub i32 %100, %105
  %107 = icmp ult i32 %106, 24
  br i1 %107, label %224, label %108, !prof !34

108:                                              ; preds = %94
  %109 = load ptr, ptr %86, align 4
  %110 = getelementptr inbounds %struct.xdp_buff, ptr %2, i32 0, i32 6
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr i8, ptr %96, i32 %111
  %113 = getelementptr i8, ptr %112, i32 -256
  %114 = icmp ugt ptr %109, %113
  br i1 %114, label %115, label %116, !prof !34

115:                                              ; preds = %108
  tail call void @xdp_warn(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.xdp_update_frame_from_buff, i32 noundef 200) #9
  br label %224

116:                                              ; preds = %108
  store ptr %97, ptr %96, align 4
  %117 = load ptr, ptr %86, align 4
  %118 = load ptr, ptr %2, align 4
  %119 = ptrtoint ptr %117 to i32
  %120 = ptrtoint ptr %118 to i32
  %121 = sub i32 %119, %120
  %122 = trunc i32 %121 to i16
  %123 = getelementptr inbounds %struct.xdp_frame, ptr %96, i32 0, i32 1
  store i16 %122, ptr %123, align 4
  %124 = trunc i32 %100 to i16
  %125 = add i16 %124, -24
  %126 = getelementptr inbounds %struct.xdp_frame, ptr %96, i32 0, i32 2
  store i16 %125, ptr %126, align 2
  %127 = getelementptr inbounds %struct.xdp_frame, ptr %96, i32 0, i32 3
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %105, 255
  %130 = and i32 %128, -256
  %131 = or i32 %130, %129
  store i32 %131, ptr %127, align 4
  %132 = load i32, ptr %110, align 4
  %133 = shl i32 %132, 8
  %134 = or i32 %133, %129
  store i32 %134, ptr %127, align 4
  %135 = getelementptr inbounds %struct.xdp_frame, ptr %96, i32 0, i32 4
  %136 = load ptr, ptr %87, align 4
  %137 = getelementptr inbounds %struct.xdp_rxq_info, ptr %136, i32 0, i32 3
  %138 = load i64, ptr %137, align 4
  store i64 %138, ptr %135, align 4
  br label %139

139:                                              ; preds = %116, %92
  %140 = phi ptr [ %93, %92 ], [ %96, %116 ]
  %141 = icmp eq ptr %140, null
  br i1 %141, label %224, label %142, !prof !34

142:                                              ; preds = %139
  %143 = load ptr, ptr %7, align 4
  %144 = getelementptr i8, ptr %140, i32 24
  %145 = load ptr, ptr %0, align 64
  store ptr %145, ptr %144, align 4
  %146 = getelementptr i8, ptr %140, i32 28
  store i32 0, ptr %146, align 4
  %147 = getelementptr inbounds %struct.cpsw_common, ptr %143, i32 0, i32 15
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %3, null
  br i1 %149, label %165, label %150

150:                                              ; preds = %142
  %151 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1, i32 0, i32 2
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds %struct.xdp_frame, ptr %140, i32 0, i32 2
  %154 = load i16, ptr %153, align 2
  %155 = zext i16 %154 to i32
  %156 = add i32 %152, 24
  %157 = add i32 %156, %155
  %158 = ptrtoint ptr %140 to i32
  %159 = or i32 %158, 1
  %160 = inttoptr i32 %159 to ptr
  %161 = getelementptr inbounds %struct.xdp_frame, ptr %140, i32 0, i32 1
  %162 = load i16, ptr %161, align 4
  %163 = zext i16 %162 to i32
  %164 = tail call i32 @cpdma_chan_submit_mapped(ptr noundef %148, ptr noundef nonnull %160, i32 noundef %157, i32 noundef %163, i32 noundef %4) #9
  br label %178

165:                                              ; preds = %142
  %166 = getelementptr inbounds %struct.xdp_frame, ptr %140, i32 0, i32 2
  %167 = load i16, ptr %166, align 2
  %168 = icmp ult i16 %167, 8
  br i1 %168, label %186, label %169

169:                                              ; preds = %165
  %170 = ptrtoint ptr %140 to i32
  %171 = or i32 %170, 1
  %172 = inttoptr i32 %171 to ptr
  %173 = load ptr, ptr %140, align 4
  %174 = getelementptr inbounds %struct.xdp_frame, ptr %140, i32 0, i32 1
  %175 = load i16, ptr %174, align 4
  %176 = zext i16 %175 to i32
  %177 = tail call i32 @cpdma_chan_submit(ptr noundef %148, ptr noundef nonnull %172, ptr noundef %173, i32 noundef %176, i32 noundef %4) #9
  br label %178

178:                                              ; preds = %169, %150
  %179 = phi i32 [ %164, %150 ], [ %177, %169 ]
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %216, label %181

181:                                              ; preds = %178
  %182 = load ptr, ptr %0, align 64
  %183 = getelementptr inbounds %struct.net_device, ptr %182, i32 0, i32 36, i32 7
  %184 = load i32, ptr %183, align 4
  %185 = add i32 %184, 1
  store i32 %185, ptr %183, align 4
  br label %186

186:                                              ; preds = %181, %165
  tail call void @xdp_return_frame_rx_napi(ptr noundef nonnull %140) #9
  br label %216

187:                                              ; preds = %77
  %188 = tail call i32 @xdp_do_redirect(ptr noundef %9, ptr noundef %2, ptr noundef nonnull %11) #9
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %224

190:                                              ; preds = %187
  tail call void @xdp_do_flush() #9
  br label %216

191:                                              ; preds = %77
  tail call void @bpf_warn_invalid_xdp_action(ptr noundef %9, ptr noundef nonnull %11, i32 noundef %78) #9
  br label %192

192:                                              ; preds = %191, %77
  %193 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %208

195:                                              ; preds = %192
  %196 = tail call ptr @llvm.thread.pointer() #9
  %197 = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 2
  %198 = load i32, ptr %197, align 8
  %199 = lshr i32 %198, 5
  %200 = getelementptr i32, ptr @__cpu_online_mask, i32 %199
  %201 = load volatile i32, ptr %200, align 4
  %202 = and i32 %198, 31
  %203 = shl nuw i32 1, %202
  %204 = and i32 %203, %201
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %195
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !40
  %207 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %9, ptr noundef nonnull %11, i32 noundef %78) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !41
  br label %208

208:                                              ; preds = %206, %195, %192, %77
  %209 = load i32, ptr %5, align 4
  %210 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36
  %211 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 2
  %212 = load i32, ptr %211, align 8
  %213 = add i32 %212, %209
  store i32 %213, ptr %211, align 8
  %214 = load i32, ptr %210, align 8
  %215 = add i32 %214, 1
  store i32 %215, ptr %210, align 8
  br label %224

216:                                              ; preds = %190, %186, %178
  %217 = load i32, ptr %5, align 4
  %218 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36
  %219 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 2
  %220 = load i32, ptr %219, align 8
  %221 = add i32 %220, %217
  store i32 %221, ptr %219, align 8
  %222 = load i32, ptr %218, align 8
  %223 = add i32 %222, 1
  store i32 %223, ptr %218, align 8
  br label %227

224:                                              ; preds = %208, %187, %139, %115, %94
  %225 = getelementptr %struct.cpsw_common, ptr %8, i32 0, i32 29, i32 %1
  %226 = load ptr, ptr %225, align 4
  tail call void @page_pool_put_page(ptr noundef %226, ptr noundef %3, i32 noundef -1, i1 noundef zeroext true) #9
  br label %227

227:                                              ; preds = %224, %216, %77, %6
  %228 = phi i32 [ 1, %224 ], [ 0, %6 ], [ 1, %216 ], [ 0, %77 ]
  ret i32 %228
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame_rx_napi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_do_flush() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_txq_to_tc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_num_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_tc_queue(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_reset_tc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_pool_alloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_put_page(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xdp_rxq_info_is_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_rxq_info_unreg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_pool_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg_mem_model(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_attachment_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_master_redirect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdp_convert_zc_to_xdp_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_warn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

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
!9 = !{i64 5935761}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2156824104}
!12 = !{i8 0, i8 2}
!13 = !{i64 2156824424}
!14 = !{i64 2156824746}
!15 = !{i64 2156825073}
!16 = !{i64 2156826741}
!17 = !{i64 2156828350}
!18 = !{i64 2156830016}
!19 = !{i64 2156831625}
!20 = !{i64 2156833856}
!21 = !{i64 2156833698}
!22 = !{i64 5936179}
!23 = !{i64 2156836510}
!24 = !{!"auto-init"}
!25 = !{i64 2152127179, i64 2152127204}
!26 = !{i64 4623291}
!27 = !{i64 4623488}
!28 = !{i64 2152108767}
!29 = !{i64 2152127757, i64 2152127782}
!30 = !{i64 2148418151}
!31 = !{i64 917258, i64 2148407229, i64 2148407255, i64 2148407302, i64 2148407324, i64 2148407352, i64 2148407372}
!32 = !{i64 903827, i64 903852, i64 903874, i64 903890, i64 903902, i64 903922, i64 903946, i64 903962, i64 903974}
!33 = !{i64 2148418277}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 841636}
!36 = !{i64 822936, i64 822997}
!37 = !{i64 2149592058}
!38 = !{i64 2149592359}
!39 = !{i64 825953}
!40 = !{i64 2155642335}
!41 = !{i64 2155642499}
