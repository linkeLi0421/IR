; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [56 x i8], [8 x %struct.stmmac_rx_queue], i32, [60 x i8], [8 x %struct.stmmac_tx_queue], i32, [60 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [20 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr, [12 x i8] }
%struct.stmmac_rx_queue = type { i32, i32, [56 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [44 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.114, [20 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.114 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, ptr, ptr, ptr, %union.anon.115, ptr, ptr, i32, i32, i32, i32, i32, i32, [16 x i8] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.115 = type { ptr }
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
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.110, %struct.anon.111 }
%struct.anon.110 = type { i32, i32, i32 }
%struct.anon.111 = type { i32, i32, i32, i32 }
%struct.stmmac_hwtimestamp = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_est = type { %struct.mutex, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [1024 x i32], [1024 x i32], i32 }
%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_clock_request = type { i32, %union.anon.116 }
%union.anon.116 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.117, %struct.ptp_clock_time, i32, i32, %union.anon.118 }
%union.anon.117 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.118 = type { %struct.ptp_clock_time }

@stmmac_ptp_clock_ops = internal unnamed_addr global %struct.ptp_clock_info { ptr null, [32 x i8] c"stmmac ptp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 62500000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @stmmac_adjust_freq, ptr null, ptr @stmmac_adjust_time, ptr @stmmac_get_time, ptr null, ptr @stmmac_getcrosststamp, ptr @stmmac_set_time, ptr @stmmac_enable, ptr null, ptr null }, align 4
@stmmac_ptp_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [19 x i8] c"&priv->aux_ts_lock\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ptp_clock_register failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"registered PTP clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to configure EST\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmmac_ptp_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 25
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 98, i32 0
  store i8 1, ptr %6, align 8
  %7 = load i32, ptr %2, align 4
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 98, i32 1
  store i8 1, ptr %10, align 8
  %11 = load i32, ptr %2, align 4
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 98, i32 2
  store i8 1, ptr %14, align 8
  %15 = load i32, ptr %2, align 4
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.stmmac_priv, ptr %0, i32 0, i32 98, i32 3
  store i8 1, ptr %18, align 8
  br label %19

19:                                               ; preds = %17, %13, %9, %5, %1
  %20 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %21 = load ptr, ptr %20, align 64
  %22 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %21, i32 0, i32 53
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32 %23, ptr getelementptr inbounds (%struct.ptp_clock_info, ptr @stmmac_ptp_clock_ops, i32 0, i32 2), align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %21, i32 0, i32 54
  store i32 0, ptr %27, align 4
  %28 = load ptr, ptr %20, align 64
  %29 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %28, i32 0, i32 58
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %28, i32 0, i32 50
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = udiv i32 2000000000, %34
  %38 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %28, i32 0, i32 54
  store i32 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %36, %32, %26
  %40 = load i32, ptr %2, align 4
  store i32 %40, ptr getelementptr inbounds (%struct.ptp_clock_info, ptr @stmmac_ptp_clock_ops, i32 0, i32 5), align 4
  %41 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 37, i32 46
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr getelementptr inbounds (%struct.ptp_clock_info, ptr @stmmac_ptp_clock_ops, i32 0, i32 4), align 4
  %43 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 65
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 66
  tail call void @__mutex_init(ptr noundef %44, ptr noundef nonnull @.str, ptr noundef nonnull @stmmac_ptp_register.__key) #7
  %45 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 58
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(108) %45, ptr noundef nonnull align 4 dereferenceable(108) @stmmac_ptp_clock_ops, i32 108, i1 false)
  %46 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %47 = load ptr, ptr %46, align 8
  %48 = tail call ptr @ptp_clock_register(ptr noundef %45, ptr noundef %47) #7
  %49 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 57
  store ptr %48, ptr %49, align 4
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %53 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %53, ptr noundef nonnull @.str.1) #8
  store ptr null, ptr %49, align 4
  br label %59

54:                                               ; preds = %39
  %55 = icmp eq ptr %48, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 14
  %58 = load ptr, ptr %57, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %58, ptr noundef nonnull @.str.2) #8
  br label %59

59:                                               ; preds = %56, %54, %51
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmmac_ptp_unregister(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 57
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %3) #7
  store ptr null, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_adjust_freq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %1, 0
  %4 = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %5 = getelementptr i8, ptr %0, i32 108
  %6 = load i32, ptr %5, align 4
  %7 = zext i32 %6 to i64
  %8 = sext i32 %4 to i64
  %9 = mul nsw i64 %7, %8
  %10 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %9, i32 0) #9, !srcloc !8
  %11 = extractvalue { i64, i32 } %10, 0
  %12 = extractvalue { i64, i32 } %10, 1
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %9, i64 %11, i32 %12) #9, !srcloc !9
  %14 = extractvalue { i64, i32 } %13, 0
  %15 = lshr i64 %14, 29
  %16 = trunc i64 %15 to i32
  %17 = sub i32 0, %16
  %18 = select i1 %3, i32 %17, i32 %16
  %19 = add i32 %18, %6
  %20 = getelementptr i8, ptr %0, i32 132
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #7
  %22 = getelementptr i8, ptr %0, i32 -11148
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mac_device_info, ptr %23, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.stmmac_hwtimestamp, ptr %25, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %0, i32 160
  %33 = load ptr, ptr %32, align 8
  %34 = tail call i32 %29(ptr noundef %33, i32 noundef %19) #7
  br label %35

35:                                               ; preds = %31, %27, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_adjust_time(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr i8, ptr %0, i32 -632
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 58
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 64
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i32 [ 1, %2 ], [ %14, %10 ]
  %17 = lshr i64 %1, 63
  %18 = trunc i64 %17 to i32
  %19 = tail call i64 @llvm.abs.i64(i64 %1, i1 false)
  %20 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %19, i32 0) #9, !srcloc !8
  %21 = extractvalue { i64, i32 } %20, 0
  %22 = extractvalue { i64, i32 } %20, 1
  %23 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %19, i64 %21, i32 %22) #9, !srcloc !9
  %24 = extractvalue { i64, i32 } %23, 0
  %25 = trunc i64 %19 to i32
  %26 = lshr i64 %24, 29
  %27 = trunc i64 %26 to i32
  %28 = mul i32 %27, -1000000000
  %29 = add i32 %28, %25
  %30 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %63, label %33

33:                                               ; preds = %15
  %34 = getelementptr inbounds %struct.stmmac_est, ptr %31, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %63, label %37

37:                                               ; preds = %33
  tail call void @mutex_lock(ptr noundef nonnull %31) #7
  %38 = load ptr, ptr %5, align 64
  %39 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %38, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.stmmac_est, ptr %40, i32 0, i32 1
  store i32 0, ptr %41, align 4
  %42 = getelementptr i8, ptr %0, i32 -11148
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.stmmac_ops, ptr %44, i32 0, i32 46
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %0, i32 -11160
  %52 = load ptr, ptr %51, align 32
  %53 = load ptr, ptr %5, align 64
  %54 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %53, i32 0, i32 9
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %53, i32 0, i32 50
  %57 = load i32, ptr %56, align 4
  %58 = tail call i32 %48(ptr noundef %52, ptr noundef %55, i32 noundef %57) #7
  br label %59

59:                                               ; preds = %50, %46, %37
  %60 = load ptr, ptr %5, align 64
  %61 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %60, i32 0, i32 9
  %62 = load ptr, ptr %61, align 4
  tail call void @mutex_unlock(ptr noundef %62) #7
  br label %63

63:                                               ; preds = %59, %33, %15
  %64 = phi i1 [ true, %59 ], [ false, %33 ], [ false, %15 ]
  %65 = getelementptr i8, ptr %0, i32 132
  %66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %65) #7
  %67 = getelementptr i8, ptr %0, i32 -11148
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.mac_device_info, ptr %68, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.stmmac_hwtimestamp, ptr %70, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = getelementptr i8, ptr %0, i32 160
  %78 = load ptr, ptr %77, align 8
  %79 = tail call i32 %74(ptr noundef %78, i32 noundef %27, i32 noundef %29, i32 noundef %18, i32 noundef %16) #7
  br label %80

80:                                               ; preds = %76, %72, %63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %65, i32 noundef %66) #7
  br i1 %64, label %81, label %162

81:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !10
  %82 = load ptr, ptr %5, align 64
  %83 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %82, i32 0, i32 9
  %84 = load ptr, ptr %83, align 4
  tail call void @mutex_lock(ptr noundef %84) #7
  %85 = getelementptr inbounds %struct.ptp_clock_info, ptr %0, i32 0, i32 13
  %86 = load ptr, ptr %85, align 8
  %87 = call i32 %86(ptr noundef %0, ptr noundef nonnull %3) #7
  %88 = load i64, ptr %3, align 8
  %89 = icmp sgt i64 %88, 9223372035
  br i1 %89, label %96, label %90, !prof !11

90:                                               ; preds = %81
  %91 = getelementptr inbounds [2 x i64], ptr %3, i32 0, i32 1
  %92 = load i64, ptr %91, align 8
  %93 = mul i64 %88, 1000000000
  %94 = and i64 %92, 4294967295
  %95 = add i64 %94, %93
  br label %96

96:                                               ; preds = %90, %81
  %97 = phi i64 [ %95, %90 ], [ 9223372036854775807, %81 ]
  %98 = load ptr, ptr %5, align 64
  %99 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %98, i32 0, i32 9
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.stmmac_est, ptr %100, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr %struct.stmmac_est, ptr %100, i32 0, i32 2, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = zext i32 %105 to i64
  %107 = mul nuw nsw i64 %106, 1000000000
  %108 = add nuw nsw i64 %107, %103
  %109 = getelementptr inbounds %struct.stmmac_est, ptr %100, i32 0, i32 5
  %110 = getelementptr %struct.stmmac_est, ptr %100, i32 0, i32 5, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = zext i32 %111 to i64
  %113 = mul nuw nsw i64 %112, 1000000000
  %114 = load i32, ptr %109, align 4
  %115 = zext i32 %114 to i64
  %116 = add nuw nsw i64 %113, %115
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @stmmac_calc_tas_basetime(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %108, i64 noundef %97, i64 noundef %116) #7
  %117 = load i64, ptr %4, align 8
  %118 = getelementptr inbounds i8, ptr %4, i32 8
  %119 = load i64, ptr %118, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  %120 = trunc i64 %119 to i32
  %121 = load ptr, ptr %5, align 64
  %122 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %121, i32 0, i32 9
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.stmmac_est, ptr %123, i32 0, i32 4
  store i32 %120, ptr %124, align 4
  %125 = trunc i64 %117 to i32
  %126 = load ptr, ptr %5, align 64
  %127 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %126, i32 0, i32 9
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr %struct.stmmac_est, ptr %128, i32 0, i32 4, i32 1
  store i32 %125, ptr %129, align 4
  %130 = load ptr, ptr %5, align 64
  %131 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %130, i32 0, i32 9
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.stmmac_est, ptr %132, i32 0, i32 1
  store i32 1, ptr %133, align 4
  %134 = load ptr, ptr %67, align 4
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %154, label %137

137:                                              ; preds = %96
  %138 = getelementptr inbounds %struct.stmmac_ops, ptr %135, i32 0, i32 46
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %154, label %141

141:                                              ; preds = %137
  %142 = getelementptr i8, ptr %0, i32 -11160
  %143 = load ptr, ptr %142, align 32
  %144 = load ptr, ptr %5, align 64
  %145 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %144, i32 0, i32 9
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %144, i32 0, i32 50
  %148 = load i32, ptr %147, align 4
  %149 = call i32 %139(ptr noundef %143, ptr noundef %146, i32 noundef %148) #7
  %150 = icmp eq i32 %149, 0
  %151 = load ptr, ptr %5, align 64
  %152 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %151, i32 0, i32 9
  %153 = load ptr, ptr %152, align 4
  call void @mutex_unlock(ptr noundef %153) #7
  br i1 %150, label %161, label %158

154:                                              ; preds = %137, %96
  %155 = load ptr, ptr %5, align 64
  %156 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %155, i32 0, i32 9
  %157 = load ptr, ptr %156, align 4
  call void @mutex_unlock(ptr noundef %157) #7
  br label %158

158:                                              ; preds = %154, %141
  %159 = getelementptr i8, ptr %0, i32 -11156
  %160 = load ptr, ptr %159, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %160, ptr noundef nonnull @.str.3) #8
  br label %161

161:                                              ; preds = %158, %141
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %162

162:                                              ; preds = %161, %80
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_get_time(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 132
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = getelementptr i8, ptr %0, i32 -11148
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mac_device_info, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.stmmac_hwtimestamp, ptr %10, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 160
  %18 = load ptr, ptr %17, align 8
  call void %14(ptr noundef %18, ptr noundef nonnull %3) #7
  br label %19

19:                                               ; preds = %16, %12, %2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %20 = load i64, ptr %3, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %20) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_getcrosststamp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -11320
  %4 = tail call i32 @get_device_system_crosststamp(ptr noundef nonnull @stmmac_get_syncdevicetime, ptr noundef %3, ptr noundef null, ptr noundef %1) #7
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_set_time(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 132
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %5 = getelementptr i8, ptr %0, i32 -11148
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mac_device_info, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.stmmac_hwtimestamp, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %0, i32 160
  %16 = load ptr, ptr %15, align 8
  %17 = load i64, ptr %1, align 8
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = tail call i32 %12(ptr noundef %16, i32 noundef %18, i32 noundef %20) #7
  br label %22

22:                                               ; preds = %14, %10, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_enable(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -11148
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mac_device_info, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %1, align 8
  switch i32 %8, label %78 [
    i32 1, label %9
    i32 0, label %51
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %78

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1
  %15 = getelementptr i8, ptr %0, i32 1512
  %16 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr [4 x %struct.stmmac_pps_cfg], ptr %15, i32 0, i32 %17
  %19 = load i64, ptr %14, align 8
  %20 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %18, i32 0, i32 1
  store i64 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %18, i32 0, i32 1, i32 1
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1, i32 0, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %18, i32 0, i32 2
  store i64 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 1
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %18, i32 0, i32 2, i32 1
  store i32 %28, ptr %29, align 8
  %30 = getelementptr i8, ptr %0, i32 132
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #7
  %32 = load ptr, ptr %4, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %13
  %36 = getelementptr inbounds %struct.stmmac_ops, ptr %33, i32 0, i32 33
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %0, i32 -11160
  %41 = load ptr, ptr %40, align 32
  %42 = load i32, ptr %16, align 8
  %43 = icmp ne i32 %2, 0
  %44 = getelementptr i8, ptr %0, i32 112
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr i8, ptr %0, i32 116
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 %37(ptr noundef %41, i32 noundef %42, ptr noundef %18, i1 noundef zeroext %43, i32 noundef %45, i32 noundef %47) #7
  br label %49

49:                                               ; preds = %39, %35, %13
  %50 = phi i32 [ %48, %39 ], [ -22, %35 ], [ -22, %13 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #7
  br label %78

51:                                               ; preds = %3
  %52 = getelementptr i8, ptr %0, i32 160
  %53 = load ptr, ptr %52, align 8
  %54 = icmp ne i32 %2, 0
  %55 = getelementptr i8, ptr %0, i32 -632
  %56 = load ptr, ptr %55, align 64
  %57 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %56, i32 0, i32 72
  %58 = zext i1 %54 to i8
  store i8 %58, ptr %57, align 4
  %59 = getelementptr i8, ptr %0, i32 136
  tail call void @mutex_lock(ptr noundef %59) #7
  %60 = getelementptr i8, ptr %53, i32 64
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %62 = and i32 %61, -241
  br i1 %54, label %63, label %72

63:                                               ; preds = %51
  %64 = load ptr, ptr %55, align 64
  %65 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %64, i32 0, i32 71
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %62, %66
  %68 = or i32 %67, 1
  %69 = getelementptr i8, ptr %7, i32 180
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %71 = or i32 %70, 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %71) #7, !srcloc !16
  br label %76

72:                                               ; preds = %51
  %73 = getelementptr i8, ptr %7, i32 180
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  %75 = and i32 %74, -4097
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %75) #7, !srcloc !16
  br label %76

76:                                               ; preds = %72, %63
  %77 = phi i32 [ %68, %63 ], [ %62, %72 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %77) #7, !srcloc !16
  tail call void @mutex_unlock(ptr noundef %59) #7
  br label %78

78:                                               ; preds = %76, %49, %9, %3
  %79 = phi i32 [ -95, %9 ], [ -95, %3 ], [ 0, %76 ], [ %50, %49 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_calc_tas_basetime(ptr sret(%struct.timespec64) align 8, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_device_system_crosststamp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_get_syncdevicetime(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.stmmac_priv, ptr %2, i32 0, i32 36
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 44
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 %7(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ -95, %3 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 887946, i64 887973, i64 887995, i64 888023}
!9 = !{i64 888354, i64 888381, i64 888414, i64 888435, i64 888462, i64 888488}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 5297615}
!13 = !{i64 2156015745}
!14 = !{i64 2156017065}
!15 = !{i64 2156017354}
!16 = !{i64 5297197}
!17 = !{i64 2156018064}
!18 = !{i64 2156018353}
!19 = !{i64 2156018691}
