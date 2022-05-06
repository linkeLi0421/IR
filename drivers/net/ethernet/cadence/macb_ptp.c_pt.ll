; ModuleID = '/llk/IR/drivers/net/ethernet/cadence/macb_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/cadence/macb_ptp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.92, %union.anon.93, [48 x i8], %union.anon.94, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.96, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.92 = type { ptr }
%union.anon.93 = type { i64 }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { i32, ptr }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.98, i32, i32, i32, i16, i16, %union.anon.100, %union.anon.101, %union.anon.102, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.98 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { i32 }
%union.anon.102 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.macb = type { ptr, i8, ptr, ptr, i32, i32, i32, i32, i32, [8 x %struct.macb_queue], %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.110, %struct.macb_or_gem_ops, ptr, ptr, %struct.phylink_config, %struct.phylink_pcs, %struct.phylink_pcs, i32, i32, i32, [2 x %struct.macb_tx_skb], i32, [91 x i64], i32, i32, i32, ptr, i8, %struct.spinlock, i32, ptr, %struct.ptp_clock_info, %struct.tsu_incr, %struct.hwtstamp_config, %struct.ethtool_rx_fs_list, %struct.spinlock, i32, %struct.tasklet_struct, i32, i32, i32, %struct.macb_pm_data, ptr }
%struct.macb_queue = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.work_struct, i32, i32, i32, i32, ptr, ptr, ptr, %struct.napi_struct, %struct.queue_stats, %struct.work_struct, i32, i32, [128 x %struct.gem_tx_ts] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.queue_stats = type { %union.anon.109, i32, i32, i32, i32, i32 }
%union.anon.109 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.gem_tx_ts = type { ptr, %struct.macb_dma_desc_ptp }
%struct.macb_dma_desc_ptp = type { i32, i32 }
%union.anon.110 = type { %struct.gem_stats }
%struct.gem_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.macb_or_gem_ops = type { ptr, ptr, ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.macb_tx_skb = type { ptr, i32, i32, i8 }
%struct.tsu_incr = type { i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ethtool_rx_fs_list = type { %struct.list_head, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.114, i32 }
%union.anon.114 = type { ptr }
%struct.macb_pm_data = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.macb_dma_desc = type { i32, i32 }
%struct.macb_ptp_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.91, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.91 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.ifreq = type { %union.anon.2, %union.anon.3 }
%union.anon.2 = type { [16 x i8] }
%union.anon.3 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }

@gem_ptp_rxstamp._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.gem_ptp_rxstamp = private unnamed_addr constant [16 x i8] c"gem_ptp_rxstamp\00", align 1
@.str = private unnamed_addr constant [31 x i8] c"Timestamp not supported in BD\0A\00", align 1
@gem_ptp_caps_template = internal unnamed_addr constant %struct.ptp_clock_info { ptr null, [32 x i8] c"gem-ptp-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, ptr null, ptr @gem_ptp_adjfine, ptr null, ptr null, ptr @gem_ptp_adjtime, ptr null, ptr @gem_tsu_get_time, ptr null, ptr @gem_tsu_set_time, ptr @gem_ptp_enable, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"\013ptp clock register failed: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\013ptp clock register failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s ptp clock registered.\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"gem-ptp-timer\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s ptp clock unregistered.\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gem_ptp_rxstamp(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %8 = load i32, ptr %2, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %40, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 35
  %13 = load i8, ptr %12, align 8
  switch i8 %13, label %19 [
    i8 2, label %15
    i8 3, label %14
  ]

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ 16, %14 ], [ 8, %11 ]
  %17 = getelementptr i8, ptr %2, i32 %16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %15, %11
  %20 = tail call i32 @___ratelimit(ptr noundef nonnull @gem_ptp_rxstamp._rs, ptr noundef nonnull @__func__.gem_ptp_rxstamp) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.macb, ptr %0, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str) #10
  br label %40

26:                                               ; preds = %15
  %27 = load i32, ptr %17, align 4
  %28 = getelementptr inbounds %struct.macb_dma_desc_ptp, ptr %17, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  call fastcc void @gem_hw_timestamp(ptr noundef %0, i32 noundef %27, i32 noundef %29, ptr noundef nonnull %4)
  %30 = load i64, ptr %4, align 8
  %31 = icmp sgt i64 %30, 9223372035
  br i1 %31, label %38, label %32, !prof !9

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.timespec64, ptr %4, i32 0, i32 1
  %34 = load i32, ptr %33, align 8
  %35 = mul i64 %30, 1000000000
  %36 = zext i32 %34 to i64
  %37 = add i64 %35, %36
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi i64 [ %37, %32 ], [ 9223372036854775807, %26 ]
  store i64 %39, ptr %7, align 8
  br label %40

40:                                               ; preds = %38, %22, %19, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gem_hw_timestamp(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = shl i32 %2, 2
  %6 = and i32 %5, 60
  %7 = lshr i32 %1, 30
  %8 = or i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, ptr %3, align 8
  %10 = and i32 %1, 1073741823
  %11 = getelementptr inbounds %struct.timespec64, ptr %3, i32 0, i32 1
  store i32 %10, ptr %11, align 8
  %12 = getelementptr %struct.macb, ptr %0, i32 0, i32 36
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #9
  %14 = getelementptr %struct.macb, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 %15(ptr noundef %0, i32 noundef 468) #9
  %17 = load ptr, ptr %14, align 8
  %18 = tail call i32 %17(ptr noundef %0, i32 noundef 464) #9
  %19 = load ptr, ptr %14, align 8
  %20 = tail call i32 %19(ptr noundef %0, i32 noundef 448) #9
  %21 = load ptr, ptr %14, align 8
  %22 = tail call i32 %21(ptr noundef %0, i32 noundef 468) #9
  %23 = icmp sgt i32 %16, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load ptr, ptr %14, align 8
  %26 = tail call i32 %25(ptr noundef %0, i32 noundef 468) #9
  %27 = load ptr, ptr %14, align 8
  %28 = tail call i32 %27(ptr noundef %0, i32 noundef 464) #9
  %29 = load ptr, ptr %14, align 8
  %30 = tail call i32 %29(ptr noundef %0, i32 noundef 448) #9
  br label %31

31:                                               ; preds = %24, %4
  %32 = phi i32 [ %28, %24 ], [ %18, %4 ]
  %33 = phi i32 [ %30, %24 ], [ %20, %4 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #9
  %34 = zext i32 %32 to i64
  %35 = load i64, ptr %3, align 8
  %36 = and i64 %35, 32
  %37 = icmp ne i64 %36, 0
  %38 = and i64 %34, 32
  %39 = icmp eq i64 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  %41 = add i64 %35, -64
  %42 = select i1 %40, i64 %41, i64 %35
  %43 = zext i32 %33 to i64
  %44 = shl nuw i64 %43, 32
  %45 = or i64 %44, %34
  %46 = and i64 %45, 281474976710592
  %47 = add i64 %42, %46
  store i64 %47, ptr %3, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gem_ptp_txstamp(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 28
  %5 = load volatile i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 27
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.macb_dma_desc, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 8388608
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %3
  %13 = add i32 %7, 1
  %14 = sub i32 %5, %13
  %15 = and i32 %14, 127
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.macb, ptr %18, i32 0, i32 35
  %20 = load i8, ptr %19, align 8
  switch i8 %20, label %42 [
    i8 2, label %22
    i8 3, label %21
  ]

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ 16, %21 ], [ 8, %17 ]
  %24 = getelementptr i8, ptr %2, i32 %23
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.skb_shared_info, ptr %28, i32 0, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = or i8 %30, 4
  store i8 %31, ptr %29, align 1
  %32 = getelementptr %struct.macb_queue, ptr %0, i32 0, i32 29, i32 %7
  store ptr %1, ptr %32, align 4
  tail call void asm sideeffect "dmb osh", "~{memory}"() #9, !srcloc !10
  %33 = load i32, ptr %24, align 4
  %34 = getelementptr %struct.macb_queue, ptr %0, i32 0, i32 29, i32 %7, i32 1
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.macb_dma_desc_ptp, ptr %24, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr %struct.macb_queue, ptr %0, i32 0, i32 29, i32 %7, i32 1, i32 1
  store i32 %36, ptr %37, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %38 = and i32 %13, 127
  store volatile i32 %38, ptr %6, align 8
  %39 = getelementptr inbounds %struct.macb_queue, ptr %0, i32 0, i32 26
  %40 = load ptr, ptr @system_wq, align 4
  %41 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %40, ptr noundef %39) #9
  br label %42

42:                                               ; preds = %26, %22, %17, %12, %3
  %43 = phi i32 [ 0, %26 ], [ -22, %3 ], [ -12, %12 ], [ -22, %22 ], [ -22, %17 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gem_ptp_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 17832
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(108) %4, ptr noundef nonnull align 4 dereferenceable(108) @gem_ptp_caps_template, i32 108, i1 false)
  %5 = getelementptr i8, ptr %0, i32 17812
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.macb_ptp_info, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %3) #9
  %10 = getelementptr i8, ptr %0, i32 17824
  store i32 %9, ptr %10, align 8
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.macb_ptp_info, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13() #9
  %15 = getelementptr i8, ptr %0, i32 17868
  store i32 %14, ptr %15, align 4
  %16 = load i32, ptr %10, align 8
  %17 = freeze i32 %16
  %18 = udiv i32 1000000000, %17
  %19 = mul i32 %18, %17
  %20 = sub i32 1000000000, %19
  %21 = getelementptr i8, ptr %0, i32 17944
  store i32 %18, ptr %21, align 4
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %1
  %24 = zext i32 %20 to i64
  %25 = shl nuw nsw i64 %24, 24
  %26 = icmp ult i32 %20, 256
  br i1 %26, label %27, label %30, !prof !12

27:                                               ; preds = %23
  %28 = trunc i64 %25 to i32
  %29 = udiv i32 %28, %16
  br label %34

30:                                               ; preds = %23
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %25) #11, !srcloc !13
  %32 = extractvalue { i64, i64 } %31, 1
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %30, %27, %1
  %35 = phi i32 [ 0, %1 ], [ %29, %27 ], [ %33, %30 ]
  %36 = getelementptr i8, ptr %0, i32 17940
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  %38 = tail call ptr @ptp_clock_register(ptr noundef %4, ptr noundef %37) #9
  %39 = getelementptr i8, ptr %0, i32 17828
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = ptrtoint ptr %38 to i32
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %42) #10
  store ptr null, ptr %39, align 4
  br label %98

44:                                               ; preds = %34
  %45 = icmp eq ptr %38, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %98

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %0, i32 17820
  store i32 0, ptr %49, align 4
  %50 = getelementptr i8, ptr %0, i32 1436
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %48
  %54 = getelementptr i8, ptr %0, i32 1448
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi ptr [ %65, %55 ], [ %54, %53 ]
  %57 = phi i32 [ %64, %55 ], [ 0, %53 ]
  %58 = getelementptr inbounds %struct.macb_queue, ptr %56, i32 0, i32 27
  store i32 0, ptr %58, align 8
  %59 = getelementptr inbounds %struct.macb_queue, ptr %56, i32 0, i32 28
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.macb_queue, ptr %56, i32 0, i32 26
  store i32 -32, ptr %60, align 8
  %61 = getelementptr inbounds %struct.macb_queue, ptr %56, i32 0, i32 26, i32 1
  store volatile ptr %61, ptr %61, align 4
  %62 = getelementptr inbounds %struct.macb_queue, ptr %56, i32 0, i32 26, i32 1, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.macb_queue, ptr %56, i32 0, i32 26, i32 2
  store ptr @gem_tx_timestamp_flush, ptr %63, align 4
  %64 = add nuw i32 %57, 1
  %65 = getelementptr %struct.macb_queue, ptr %56, i32 1
  %66 = load i32, ptr %50, align 4
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %55, label %68

68:                                               ; preds = %55, %48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  %69 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #9
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %2, i64 noundef %69) #9
  %70 = load i64, ptr %2, align 8
  %71 = getelementptr inbounds i8, ptr %2, i32 8
  %72 = load i32, ptr %71, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  %73 = trunc i64 %70 to i32
  %74 = lshr i64 %70, 32
  %75 = trunc i64 %74 to i32
  %76 = and i32 %75, 65535
  %77 = call i32 @_raw_spin_lock_irqsave(ptr noundef %49) #9
  %78 = getelementptr i8, ptr %0, i32 1420
  %79 = load ptr, ptr %78, align 4
  call void %79(ptr noundef %3, i32 noundef 468, i32 noundef 0) #9
  %80 = load ptr, ptr %78, align 4
  call void %80(ptr noundef %3, i32 noundef 448, i32 noundef %76) #9
  %81 = load ptr, ptr %78, align 4
  call void %81(ptr noundef %3, i32 noundef 464, i32 noundef %73) #9
  %82 = load ptr, ptr %78, align 4
  call void %82(ptr noundef %3, i32 noundef 468, i32 noundef %72) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %77) #9
  %83 = call i32 @_raw_spin_lock_irqsave(ptr noundef %49) #9
  %84 = load ptr, ptr %78, align 4
  %85 = load i32, ptr %36, align 4
  %86 = shl i32 %85, 24
  %87 = lshr i32 %85, 8
  %88 = and i32 %87, 65535
  %89 = or i32 %88, %86
  call void %84(ptr noundef %3, i32 noundef 444, i32 noundef %89) #9
  %90 = load ptr, ptr %78, align 4
  %91 = getelementptr i8, ptr %0, i32 17944
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 255
  call void %90(ptr noundef %3, i32 noundef 476, i32 noundef %93) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %83) #9
  %94 = load ptr, ptr %78, align 4
  call void %94(ptr noundef %3, i32 noundef 472, i32 noundef 0) #9
  %95 = getelementptr i8, ptr %0, i32 16748
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.platform_device, ptr %96, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %97, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #10
  br label %98

98:                                               ; preds = %68, %46, %41
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gem_tx_timestamp_flush(ptr noundef %0) #0 {
  %2 = alloca %struct.skb_shared_hwtstamps, align 8
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr i8, ptr %0, i32 -352
  %5 = getelementptr i8, ptr %0, i32 16
  %6 = load volatile i32, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  %7 = getelementptr i8, ptr %0, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = and i32 %9, 127
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 24
  %14 = getelementptr inbounds %struct.timespec64, ptr %3, i32 0, i32 1
  br label %15

15:                                               ; preds = %31, %12
  %16 = phi i32 [ %8, %12 ], [ %35, %31 ]
  %17 = getelementptr [128 x %struct.gem_tx_ts], ptr %13, i32 0, i32 %16
  %18 = load ptr, ptr %4, align 8
  %19 = load ptr, ptr %17, align 4
  %20 = getelementptr inbounds %struct.gem_tx_ts, ptr %17, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #9, !annotation !8
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.gem_tx_ts, ptr %17, i32 0, i32 1, i32 1
  %23 = load i32, ptr %22, align 4
  call fastcc void @gem_hw_timestamp(ptr noundef %18, i32 noundef %21, i32 noundef %23, ptr noundef nonnull %3) #9
  %24 = load i64, ptr %3, align 8
  %25 = icmp sgt i64 %24, 9223372035
  br i1 %25, label %31, label %26, !prof !9

26:                                               ; preds = %15
  %27 = load i32, ptr %14, align 8
  %28 = mul i64 %24, 1000000000
  %29 = zext i32 %27 to i64
  %30 = add i64 %28, %29
  br label %31

31:                                               ; preds = %26, %15
  %32 = phi i64 [ %30, %26 ], [ 9223372036854775807, %15 ]
  store i64 %32, ptr %2, align 8
  call void @skb_tstamp_tx(ptr noundef %19, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  %33 = load ptr, ptr %17, align 4
  call void @__dev_kfree_skb_any(ptr noundef %33, i32 noundef 1) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %34 = add i32 %16, 1
  %35 = and i32 %34, 127
  store volatile i32 %35, ptr %7, align 4
  %36 = sub i32 %6, %34
  %37 = and i32 %36, 127
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %15

39:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gem_ptp_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 17828
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %3) #9
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr i8, ptr %0, i32 1408
  %9 = getelementptr i8, ptr %0, i32 17940
  store i32 0, ptr %9, align 4
  %10 = getelementptr i8, ptr %0, i32 17944
  store i32 0, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 1420
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %8, i32 noundef 444, i32 noundef 0) #9
  %13 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef %8, i32 noundef 476, i32 noundef 0) #9
  %14 = load ptr, ptr %11, align 4
  tail call void %14(ptr noundef %8, i32 noundef 472, i32 noundef 0) #9
  %15 = getelementptr i8, ptr %0, i32 16748
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gem_get_hwtst(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 17816
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 12, i32 -1090519040) #11, !srcloc !16
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %0, i32 17948
  %15 = tail call ptr @llvm.thread.pointer() #9
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #12, !srcloc !17
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #9, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !19
  %20 = tail call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef %14, i32 noundef 12) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #9, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !19
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 0, i32 -14
  br label %23

23:                                               ; preds = %13, %7, %2
  %24 = phi i32 [ -95, %2 ], [ -14, %7 ], [ %22, %13 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gem_set_hwtst(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr i8, ptr %0, i32 17948
  %6 = getelementptr i8, ptr %0, i32 17816
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %68, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 12, i32 -1090519040) #11, !srcloc !20
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24, !prof !12

16:                                               ; preds = %10
  %17 = tail call ptr @llvm.thread.pointer() #9
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #12, !srcloc !17
  %20 = and i32 %19, -13
  %21 = or i32 %20, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #9, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !19
  %22 = tail call i32 @arm_copy_from_user(ptr noundef %5, ptr noundef %12, i32 noundef 12) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #9, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !12

24:                                               ; preds = %16, %10
  %25 = phi i32 [ %22, %16 ], [ 12, %10 ]
  %26 = sub i32 12, %25
  %27 = getelementptr i8, ptr %5, i32 %26
  tail call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %25, i1 false) #9
  br label %68

28:                                               ; preds = %16
  %29 = getelementptr i8, ptr %0, i32 17952
  %30 = load i32, ptr %29, align 4
  switch i32 %30, label %68 [
    i32 0, label %39
    i32 2, label %31
    i32 1, label %38
  ]

31:                                               ; preds = %28
  %32 = getelementptr i8, ptr %0, i32 1416
  %33 = load ptr, ptr %32, align 8
  %34 = tail call i32 %33(ptr noundef %4, i32 noundef 0) #9
  %35 = getelementptr i8, ptr %0, i32 1420
  %36 = load ptr, ptr %35, align 4
  %37 = or i32 %34, 16777216
  tail call void %36(ptr noundef %4, i32 noundef 0, i32 noundef %37) #9
  br label %38

38:                                               ; preds = %31, %28
  br label %39

39:                                               ; preds = %38, %28
  %40 = phi i32 [ 48, %38 ], [ %30, %28 ]
  %41 = getelementptr i8, ptr %0, i32 17956
  %42 = load i32, ptr %41, align 4
  switch i32 %42, label %51 [
    i32 0, label %52
    i32 4, label %52
    i32 5, label %52
    i32 12, label %43
    i32 9, label %43
    i32 6, label %43
    i32 13, label %43
    i32 10, label %43
    i32 7, label %43
    i32 14, label %43
    i32 11, label %43
    i32 8, label %43
    i32 3, label %50
    i32 1, label %50
  ]

43:                                               ; preds = %39, %39, %39, %39, %39, %39, %39, %39, %39
  store i32 12, ptr %41, align 4
  %44 = getelementptr i8, ptr %0, i32 1416
  %45 = load ptr, ptr %44, align 8
  %46 = tail call i32 %45(ptr noundef %4, i32 noundef 0) #9
  %47 = getelementptr i8, ptr %0, i32 1420
  %48 = load ptr, ptr %47, align 4
  %49 = or i32 %46, 32768
  tail call void %48(ptr noundef %4, i32 noundef 0, i32 noundef %49) #9
  br label %52

50:                                               ; preds = %39, %39
  store i32 1, ptr %41, align 4
  br label %52

51:                                               ; preds = %39
  store i32 0, ptr %41, align 4
  br label %68

52:                                               ; preds = %50, %43, %39, %39, %39
  %53 = phi i32 [ 48, %50 ], [ 32, %43 ], [ 0, %39 ], [ 0, %39 ], [ 0, %39 ]
  %54 = getelementptr i8, ptr %0, i32 1420
  %55 = load ptr, ptr %54, align 4
  tail call void %55(ptr noundef %4, i32 noundef 1228, i32 noundef %40) #9
  %56 = load ptr, ptr %54, align 4
  tail call void %56(ptr noundef %4, i32 noundef 1232, i32 noundef %53) #9
  %57 = load ptr, ptr %11, align 4
  %58 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %57, i32 12, i32 -1090519040) #11, !srcloc !16
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #12, !srcloc !17
  %63 = and i32 %62, -13
  %64 = or i32 %63, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #9, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !19
  %65 = tail call i32 @arm_copy_to_user(ptr noundef %57, ptr noundef %5, i32 noundef 12) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #9, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !19
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i32 0, i32 -14
  br label %68

68:                                               ; preds = %61, %52, %51, %28, %24, %3
  %69 = phi i32 [ -34, %51 ], [ -95, %3 ], [ -34, %28 ], [ -14, %24 ], [ -14, %52 ], [ %67, %61 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gem_tsu_get_time(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16424
  %5 = getelementptr i8, ptr %0, i32 -12
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -16416
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 %10(ptr noundef %4, i32 noundef 468) #9
  br label %17

12:                                               ; preds = %3
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %2) #9
  %13 = getelementptr i8, ptr %0, i32 -16416
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 %14(ptr noundef %4, i32 noundef 468) #9
  %16 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %2, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %16) #9
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi i32 [ %11, %8 ], [ %15, %12 ]
  %19 = phi ptr [ %9, %8 ], [ %13, %12 ]
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 %20(ptr noundef %4, i32 noundef 464) #9
  %22 = load ptr, ptr %19, align 8
  %23 = tail call i32 %22(ptr noundef %4, i32 noundef 448) #9
  %24 = load ptr, ptr %19, align 8
  %25 = tail call i32 %24(ptr noundef %4, i32 noundef 468) #9
  %26 = icmp sgt i32 %18, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %17
  br i1 %7, label %28, label %32

28:                                               ; preds = %27
  %29 = load ptr, ptr %19, align 8
  %30 = tail call i32 %29(ptr noundef %4, i32 noundef 468) #9
  %31 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  store i32 %30, ptr %31, align 8
  br label %37

32:                                               ; preds = %27
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %2) #9
  %33 = load ptr, ptr %19, align 8
  %34 = tail call i32 %33(ptr noundef %4, i32 noundef 468) #9
  %35 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  store i32 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %2, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %36) #9
  br label %37

37:                                               ; preds = %32, %28
  %38 = load ptr, ptr %19, align 8
  %39 = tail call i32 %38(ptr noundef %4, i32 noundef 464) #9
  %40 = load ptr, ptr %19, align 8
  %41 = tail call i32 %40(ptr noundef %4, i32 noundef 448) #9
  br label %44

42:                                               ; preds = %17
  %43 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  store i32 %18, ptr %43, align 8
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi i32 [ %39, %37 ], [ %21, %42 ]
  %46 = phi i32 [ %41, %37 ], [ %23, %42 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  %47 = zext i32 %46 to i64
  %48 = shl nuw i64 %47, 32
  %49 = zext i32 %45 to i64
  %50 = and i64 %48, 281470681743360
  %51 = or i64 %50, %49
  store i64 %51, ptr %1, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gem_ptp_adjfine(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %1, 0
  %4 = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %5 = getelementptr i8, ptr %0, i32 108
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 112
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 24
  %10 = add i32 %9, %6
  %11 = sext i32 %4 to i64
  %12 = zext i32 %10 to i64
  %13 = mul nsw i64 %12, %11
  %14 = add nsw i64 %13, 500000
  %15 = lshr i64 %14, 16
  %16 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %15) #11, !srcloc !21
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %15, i64 %16, i32 0) #11, !srcloc !22
  %18 = extractvalue { i64, i32 } %17, 0
  %19 = lshr i64 %18, 18
  %20 = trunc i64 %19 to i32
  %21 = sub i32 0, %20
  %22 = select i1 %3, i32 %21, i32 %20
  %23 = add i32 %22, %10
  %24 = getelementptr i8, ptr %0, i32 -16424
  %25 = lshr i32 %23, 24
  %26 = getelementptr i8, ptr %0, i32 -12
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #9
  %28 = getelementptr i8, ptr %0, i32 -16412
  %29 = load ptr, ptr %28, align 4
  %30 = shl i32 %23, 24
  %31 = lshr i32 %23, 8
  %32 = and i32 %31, 65535
  %33 = or i32 %32, %30
  tail call void %29(ptr noundef %24, i32 noundef 444, i32 noundef %33) #9
  %34 = load ptr, ptr %28, align 4
  tail call void %34(ptr noundef %24, i32 noundef 476, i32 noundef %25) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gem_ptp_adjtime(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr i8, ptr %0, i32 -16424
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %1) #9
  %6 = call i64 @llvm.abs.i64(i64 %1, i1 false)
  %7 = icmp sgt i64 %6, 1073741823
  br i1 %7, label %8, label %58

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 -12
  %10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #9
  %11 = getelementptr i8, ptr %0, i32 -16416
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 %12(ptr noundef %5, i32 noundef 468) #9
  %14 = load ptr, ptr %11, align 8
  %15 = call i32 %14(ptr noundef %5, i32 noundef 464) #9
  %16 = load ptr, ptr %11, align 8
  %17 = call i32 %16(ptr noundef %5, i32 noundef 448) #9
  %18 = load ptr, ptr %11, align 8
  %19 = call i32 %18(ptr noundef %5, i32 noundef 468) #9
  %20 = icmp sgt i32 %13, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %8
  %22 = load ptr, ptr %11, align 8
  %23 = call i32 %22(ptr noundef %5, i32 noundef 468) #9
  %24 = load ptr, ptr %11, align 8
  %25 = call i32 %24(ptr noundef %5, i32 noundef 464) #9
  %26 = load ptr, ptr %11, align 8
  %27 = call i32 %26(ptr noundef %5, i32 noundef 448) #9
  br label %28

28:                                               ; preds = %21, %8
  %29 = phi i32 [ %23, %21 ], [ %13, %8 ]
  %30 = phi i32 [ %25, %21 ], [ %15, %8 ]
  %31 = phi i32 [ %27, %21 ], [ %17, %8 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #9
  %32 = zext i32 %31 to i64
  %33 = shl nuw i64 %32, 32
  %34 = zext i32 %30 to i64
  %35 = and i64 %33, 281470681743360
  %36 = or i64 %35, %34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %37 = load i64, ptr %3, align 8
  %38 = getelementptr inbounds [2 x i64], ptr %3, i32 0, i32 1
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #9, !alias.scope !23, !annotation !8
  %41 = add i64 %36, %37
  %42 = add i32 %29, %40
  %43 = sext i32 %42 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %4, i64 noundef %41, i64 noundef %43) #9
  %44 = load i64, ptr %4, align 8
  %45 = getelementptr inbounds i8, ptr %4, i32 8
  %46 = load i64, ptr %45, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  %47 = trunc i64 %44 to i32
  %48 = lshr i64 %44, 32
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  %51 = trunc i64 %46 to i32
  %52 = call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #9
  %53 = getelementptr i8, ptr %0, i32 -16412
  %54 = load ptr, ptr %53, align 4
  call void %54(ptr noundef %5, i32 noundef 468, i32 noundef 0) #9
  %55 = load ptr, ptr %53, align 4
  call void %55(ptr noundef %5, i32 noundef 448, i32 noundef %50) #9
  %56 = load ptr, ptr %53, align 4
  call void %56(ptr noundef %5, i32 noundef 464, i32 noundef %47) #9
  %57 = load ptr, ptr %53, align 4
  call void %57(ptr noundef %5, i32 noundef 468, i32 noundef %51) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %52) #9
  br label %66

58:                                               ; preds = %2
  %59 = lshr i64 %1, 32
  %60 = trunc i64 %59 to i32
  %61 = and i32 %60, -2147483648
  %62 = trunc i64 %6 to i32
  %63 = or i32 %61, %62
  %64 = getelementptr i8, ptr %0, i32 -16412
  %65 = load ptr, ptr %64, align 4
  call void %65(ptr noundef %5, i32 noundef 472, i32 noundef %63) #9
  br label %66

66:                                               ; preds = %58, %28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gem_tsu_set_time(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -16424
  %4 = load i64, ptr %1, align 8
  %5 = trunc i64 %4 to i32
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 65535
  %9 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr i8, ptr %0, i32 -12
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #9
  %13 = getelementptr i8, ptr %0, i32 -16412
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %3, i32 noundef 468, i32 noundef 0) #9
  %15 = load ptr, ptr %13, align 4
  tail call void %15(ptr noundef %3, i32 noundef 448, i32 noundef %8) #9
  %16 = load ptr, ptr %13, align 4
  tail call void %16(ptr noundef %3, i32 noundef 464, i32 noundef %5) #9
  %17 = load ptr, ptr %13, align 4
  tail call void %17(ptr noundef %3, i32 noundef 468, i32 noundef %10) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @gem_ptp_enable(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }

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
!10 = !{i64 2155376440}
!11 = !{i64 2155378635}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148337508, i64 2148337788, i64 2148338122, i64 2148338456}
!14 = !{i64 2155388168}
!15 = !{i64 2155390414}
!16 = !{i64 2151685067, i64 2151685092}
!17 = !{i64 4180601}
!18 = !{i64 4180798}
!19 = !{i64 2151666077}
!20 = !{i64 2151684489, i64 2151684514}
!21 = !{i64 851677, i64 851704}
!22 = !{i64 852372, i64 852399, i64 852432, i64 852453, i64 852480, i64 852506}
!23 = !{!24}
!24 = distinct !{!24, !25, !"timespec64_add: argument 0"}
!25 = distinct !{!25, !"timespec64_add"}
