; ModuleID = '/llk/IR/drivers/net/wireless/ralink/rt2x00/rt2x00config.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2x00config.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rt2x00intf_conf = type { i32, i32, [2 x i32], [2 x i32] }
%struct.rt2x00_dev = type { ptr, ptr, ptr, ptr, [6 x %struct.ieee80211_supported_band], ptr, i32, i32, %struct.rt2x00_led, %struct.rt2x00_led, %struct.rt2x00_led, i16, i32, i32, i32, ptr, %struct.rt2x00_chip, %struct.hw_mode_spec, %struct.antenna_setup, %union.csr, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, %struct.ieee80211_iface_limit, [1 x %struct.ieee80211_iface_combination], %struct.link, ptr, ptr, i16, i16, i8, i8, i8, i8, i16, i16, i32, %struct.ieee80211_low_level_stats, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.work_struct, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.130, %struct.hrtimer, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, ptr, i32, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.rt2x00_led = type { ptr, %struct.led_classdev, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rt2x00_chip = type { i16, i16, i16, i32 }
%struct.hw_mode_spec = type { i32, i32, i32, ptr, ptr, %struct.ieee80211_sta_ht_cap }
%struct.antenna_setup = type { i32, i32, i8, i8 }
%union.csr = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.link = type { i32, %struct.link_qual, %struct.link_ant, %struct.ewma_rssi, %struct.delayed_work, %struct.delayed_work, i32, i8, %struct.delayed_work, %struct.delayed_work }
%struct.link_qual = type { i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.link_ant = type { i32, %struct.antenna_setup, i32, %struct.ewma_rssi }
%struct.ewma_rssi = type { i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.130 = type { %union.anon.131, [0 x i32] }
%union.anon.131 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.91, i32 }
%union.anon.91 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rt2x00_ops = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.rt2x00lib_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rt2x00lib_erp = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.95, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.95 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.96] }
%struct.anon.96 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.rt2x00lib_conf = type { ptr, %struct.rf_channel, %struct.channel_info }
%struct.rf_channel = type { i32, i32, i32, i32, i32 }
%struct.channel_info = type { i32, i16, i16, i16, i16 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [50 x i8] c"drivers/net/wireless/ralink/rt2x00/rt2x00config.c\00", align 1
@switch.table.rt2x00lib_config_intf = private unnamed_addr constant [7 x i32] [i32 2, i32 1, i32 3, i32 2, i32 2, i32 2, i32 3], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00lib_config_intf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rt2x00intf_conf, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #5
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %7, align 4, !annotation !8
  store i32 %2, ptr %6, align 4
  %8 = add i32 %2, -1
  %9 = icmp ult i32 %8, 7
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = trunc i32 %8 to i8
  %12 = lshr i8 71, %11
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds [7 x i32], ptr @switch.table.rt2x00lib_config_intf, i32 0, i32 %8
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.rt2x00intf_conf, ptr %6, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %10, %5
  %20 = getelementptr inbounds %struct.rt2x00intf_conf, ptr %6, i32 0, i32 2
  store i64 0, ptr %20, align 4
  %21 = icmp eq ptr %3, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %20, ptr noundef nonnull align 1 dereferenceable(6) %3, i32 6, i1 false)
  br label %23

23:                                               ; preds = %22, %19
  %24 = getelementptr inbounds %struct.rt2x00intf_conf, ptr %6, i32 0, i32 3
  store i64 0, ptr %24, align 4
  %25 = icmp eq ptr %4, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %24, ptr noundef nonnull align 1 dereferenceable(6) %4, i32 6, i1 false)
  br label %27

27:                                               ; preds = %26, %23
  br i1 %21, label %28, label %36

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 23
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 24
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %27
  br label %37

37:                                               ; preds = %36, %32, %28
  %38 = phi i32 [ 6, %36 ], [ 2, %28 ], [ 2, %32 ]
  br i1 %25, label %39, label %47

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 23
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 24
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %37
  %48 = or i32 %38, 8
  br label %49

49:                                               ; preds = %47, %43, %39
  %50 = phi i32 [ %48, %47 ], [ %38, %39 ], [ %38, %43 ]
  %51 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.rt2x00_ops, ptr %52, i32 0, i32 7
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.rt2x00lib_ops, ptr %54, i32 0, i32 36
  %56 = load ptr, ptr %55, align 4
  call void %56(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i32 noundef %50) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00lib_config_erp(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.rt2x00lib_erp, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #5
  %6 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %2, i32 0, i32 15
  %7 = getelementptr inbounds i8, ptr %5, i32 24
  store i32 0, ptr %7, align 4
  %8 = load i8, ptr %6, align 1, !range !9
  %9 = zext i8 %8 to i32
  store i32 %9, ptr %5, align 4
  %10 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %2, i32 0, i32 14
  %11 = load i8, ptr %10, align 4, !range !9
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %5, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %2, i32 0, i32 16
  %15 = load i8, ptr %14, align 2, !range !9
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i32 20, i32 9
  %18 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %5, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %5, i32 0, i32 4
  store i16 10, ptr %19, align 4
  %20 = select i1 %16, i16 30, i16 19
  %21 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %5, i32 0, i32 5
  store i16 %20, ptr %21, align 2
  %22 = select i1 %16, i16 50, i16 28
  %23 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %5, i32 0, i32 6
  store i16 %22, ptr %23, align 4
  %24 = select i1 %16, i16 364, i16 342
  %25 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %5, i32 0, i32 7
  store i16 %24, ptr %25, align 2
  %26 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %2, i32 0, i32 24
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %5, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %2, i32 0, i32 19
  %30 = load i16, ptr %29, align 2
  %31 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %5, i32 0, i32 8
  store i16 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %2, i32 0, i32 10
  %33 = load i8, ptr %32, align 1, !range !9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %2, i32 0, i32 13
  %37 = load i16, ptr %36, align 2
  br label %38

38:                                               ; preds = %35, %4
  %39 = phi i16 [ %37, %35 ], [ 0, %4 ]
  %40 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 38
  store i16 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %2, i32 0, i32 21
  %42 = load i64, ptr %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 40
  store i32 %43, ptr %44, align 8
  %45 = load i16, ptr %29, align 2
  %46 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 39
  store i16 %45, ptr %46, align 2
  %47 = and i32 %3, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %2, i32 0, i32 27
  %51 = load i16, ptr %50, align 8
  %52 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %5, i32 0, i32 9
  store i16 %51, ptr %52, align 2
  br label %53

53:                                               ; preds = %49, %38
  %54 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.rt2x00_ops, ptr %55, i32 0, i32 7
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.rt2x00lib_ops, ptr %57, i32 0, i32 37
  %59 = load ptr, ptr %58, align 4
  call void %59(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %3) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00lib_config_antenna(ptr noundef %0, [3 x i32] %1) local_unnamed_addr #0 {
  %3 = alloca %struct.antenna_setup, align 4
  %4 = extractvalue [3 x i32] %1, 0
  store i32 %4, ptr %3, align 4
  %5 = extractvalue [3 x i32] %1, 1
  %6 = getelementptr inbounds [3 x i32], ptr %3, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = extractvalue [3 x i32] %1, 2
  %8 = getelementptr inbounds [3 x i32], ptr %3, i32 0, i32 2
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 2
  %10 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 18
  %11 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 2, i32 1
  %12 = load i32, ptr %9, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  %15 = icmp eq i32 %4, 0
  br i1 %14, label %16, label %23

16:                                               ; preds = %2
  br i1 %15, label %17, label %26

17:                                               ; preds = %16
  %18 = or i32 %12, 1
  store i32 %18, ptr %9, align 4
  %19 = load i32, ptr %10, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 2, ptr %3, align 4
  br label %26

22:                                               ; preds = %17
  store i32 %19, ptr %3, align 4
  br label %26

23:                                               ; preds = %2
  br i1 %15, label %24, label %26

24:                                               ; preds = %23
  %25 = load i32, ptr %11, align 4
  store i32 %25, ptr %3, align 4
  br label %26

26:                                               ; preds = %24, %23, %22, %21, %16
  %27 = phi i32 [ %12, %23 ], [ %12, %24 ], [ %12, %16 ], [ %18, %22 ], [ %18, %21 ]
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  %30 = icmp eq i32 %5, 0
  br i1 %29, label %31, label %38

31:                                               ; preds = %26
  br i1 %30, label %32, label %44

32:                                               ; preds = %31
  %33 = or i32 %27, 2
  store i32 %33, ptr %9, align 4
  %34 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 18, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 2, i32 %35
  br label %42

38:                                               ; preds = %26
  br i1 %30, label %39, label %44

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 2, i32 1, i32 1
  %41 = load i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %32
  %43 = phi i32 [ %41, %39 ], [ %37, %32 ]
  store i32 %43, ptr %6, align 4
  br label %44

44:                                               ; preds = %42, %38, %31
  %45 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 12
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 49
  %51 = load ptr, ptr %50, align 8
  tail call void @rt2x00queue_stop_queue(ptr noundef %51) #5
  br label %52

52:                                               ; preds = %49, %44
  %53 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.rt2x00_ops, ptr %54, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.rt2x00lib_ops, ptr %56, i32 0, i32 38
  %58 = load ptr, ptr %57, align 4
  call void %58(ptr noundef %0, ptr noundef nonnull %3) #5
  call void @rt2x00link_reset_tuner(ptr noundef %0, i1 noundef zeroext true) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %3, i32 12, i1 false)
  %59 = load volatile i32, ptr %45, align 4
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 49
  %64 = load ptr, ptr %63, align 8
  call void @rt2x00queue_start_queue(ptr noundef %64) #5
  br label %65

65:                                               ; preds = %62, %52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00queue_stop_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00link_reset_tuner(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00queue_start_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00lib_config(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rt2x00lib_conf, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #5
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store ptr %1, ptr %4, align 4
  %6 = and i32 %2, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %81, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7, i32 1
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %13 [
    i32 6, label %11
    i32 7, label %11
    i32 0, label %11
  ]

11:                                               ; preds = %8, %8, %8
  %12 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 10, ptr noundef %12) #5
  br label %15

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %14) #5
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32, ptr %9, align 4
  %17 = icmp eq i32 %16, 2
  %18 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 12
  br i1 %17, label %19, label %61

19:                                               ; preds = %15
  tail call void @_set_bit(i32 noundef 8, ptr noundef %18) #5
  %20 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 17, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ieee80211_channel, ptr %23, i32 0, i32 3
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr %struct.rf_channel, ptr %21, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %9, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %45

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ieee80211_channel, ptr %23, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = add i32 %28, 2
  br label %45

39:                                               ; preds = %31
  %40 = icmp ult i32 %33, %35
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = icmp eq i32 %28, 14
  %43 = select i1 %42, i32 -1, i32 -2
  %44 = add i32 %43, %28
  br label %45

45:                                               ; preds = %41, %39, %37, %19
  %46 = phi i32 [ %38, %37 ], [ %44, %41 ], [ %28, %39 ], [ %28, %19 ]
  %47 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 17, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %56, %45
  %51 = phi i32 [ %58, %56 ], [ 0, %45 ]
  %52 = phi i16 [ %57, %56 ], [ 0, %45 ]
  %53 = getelementptr %struct.rf_channel, ptr %21, i32 %51
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, %46
  br i1 %55, label %68, label %56

56:                                               ; preds = %50
  %57 = add i16 %52, 1
  %58 = zext i16 %57 to i32
  %59 = icmp ugt i32 %48, %58
  br i1 %59, label %50, label %60

60:                                               ; preds = %56, %45
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 187, i32 noundef 9, ptr noundef null) #5
  br label %63

61:                                               ; preds = %15
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %18) #5
  %62 = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi ptr [ %22, %60 ], [ %62, %61 ]
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.ieee80211_channel, ptr %65, i32 0, i32 3
  %67 = load i16, ptr %66, align 2
  br label %68

68:                                               ; preds = %63, %50
  %69 = phi i16 [ %67, %63 ], [ %52, %50 ]
  %70 = getelementptr inbounds %struct.rt2x00lib_conf, ptr %4, i32 0, i32 1
  %71 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 17, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = zext i16 %69 to i32
  %74 = getelementptr %struct.rf_channel, ptr %72, i32 %73
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %70, ptr noundef align 4 dereferenceable(20) %74, i32 20, i1 false)
  %75 = getelementptr inbounds %struct.rt2x00lib_conf, ptr %4, i32 0, i32 2
  %76 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 17, i32 4
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr %struct.channel_info, ptr %77, i32 %73
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %75, ptr noundef align 4 dereferenceable(12) %78, i32 12, i1 false)
  %79 = load i32, ptr %70, align 4
  %80 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 61
  store i32 %79, ptr %80, align 8
  br label %81

81:                                               ; preds = %68, %3
  %82 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 13
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %83, 1024
  %85 = icmp eq i32 %84, 0
  %86 = and i32 %2, 16
  %87 = icmp eq i32 %86, 0
  %88 = or i1 %87, %85
  br i1 %88, label %92, label %89

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 46
  %91 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %90) #5
  br label %92

92:                                               ; preds = %89, %81
  %93 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.rt2x00_ops, ptr %94, i32 0, i32 7
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.rt2x00lib_ops, ptr %96, i32 0, i32 39
  %98 = load ptr, ptr %97, align 4
  call void %98(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #5
  %99 = load i32, ptr %1, align 4
  %100 = and i32 %99, 2
  %101 = icmp eq i32 %100, 0
  %102 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 12
  br i1 %101, label %104, label %103

103:                                              ; preds = %92
  call void @_set_bit(i32 noundef 9, ptr noundef %102) #5
  br label %105

104:                                              ; preds = %92
  call void @_clear_bit(i32 noundef 9, ptr noundef %102) #5
  br label %105

105:                                              ; preds = %104, %103
  %106 = load i32, ptr %1, align 4
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  %109 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 12
  br i1 %108, label %111, label %110

110:                                              ; preds = %105
  call void @_set_bit(i32 noundef 11, ptr noundef %109) #5
  br label %112

111:                                              ; preds = %105
  call void @_clear_bit(i32 noundef 11, ptr noundef %109) #5
  br label %112

112:                                              ; preds = %111, %110
  %113 = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7
  %114 = load ptr, ptr %113, align 4
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 6
  store i32 %115, ptr %116, align 4
  %117 = load ptr, ptr %113, align 4
  %118 = getelementptr inbounds %struct.ieee80211_channel, ptr %117, i32 0, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 7
  store i32 %119, ptr %120, align 8
  %121 = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = trunc i32 %122 to i16
  %124 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 33
  store i16 %123, ptr %124, align 2
  %125 = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 6
  %126 = load i8, ptr %125, align 4
  %127 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 34
  store i8 %126, ptr %127, align 8
  %128 = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 5
  %129 = load i8, ptr %128, align 1
  %130 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 35
  store i8 %129, ptr %130, align 1
  br i1 %7, label %132, label %131

131:                                              ; preds = %112
  call void @rt2x00link_reset_tuner(ptr noundef %0, i1 noundef zeroext false) #5
  br label %132

132:                                              ; preds = %131, %112
  %133 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 12
  %134 = load volatile i32, ptr %133, align 4
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %170, label %137

137:                                              ; preds = %132
  %138 = load volatile i32, ptr %82, align 4
  %139 = and i32 %138, 1024
  %140 = icmp eq i32 %139, 0
  %141 = or i1 %87, %140
  br i1 %141, label %170, label %142

142:                                              ; preds = %137
  %143 = load i32, ptr %1, align 4
  %144 = and i32 %143, 2
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %170, label %146

146:                                              ; preds = %142
  %147 = load volatile i32, ptr @jiffies, align 64
  %148 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 40
  %149 = load i32, ptr %148, align 8
  %150 = sub i32 %147, %149
  %151 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 39
  %152 = load i16, ptr %151, align 2
  %153 = zext i16 %152 to i32
  %154 = call i32 @__msecs_to_jiffies(i32 noundef %153) #5
  %155 = and i32 %150, 65535
  %156 = and i32 %154, 65535
  %157 = icmp ugt i32 %155, %156
  %158 = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 4
  %159 = load i8, ptr %158, align 2
  %160 = zext i8 %159 to i32
  %161 = mul i32 %154, %160
  %162 = select i1 %157, i32 0, i32 %150
  %163 = sub i32 %161, %162
  %164 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 42
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 46
  %167 = and i32 %163, 65535
  %168 = add nsw i32 %167, -15
  %169 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %165, ptr noundef %166, i32 noundef %168) #5
  br label %170

170:                                              ; preds = %146, %142, %137, %132
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
!9 = !{i8 0, i8 2}
