; ModuleID = '/llk/IR/drivers/net/wireless/ralink/rt2x00/rt2x00link.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2x00link.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rxdone_entry_desc = type { i64, i32, i32, i32, i32, i32, i16, i16, i32, i32, i8, i8, [2 x i32], i32 }
%struct.rt2x00_ops = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.rt2x00lib_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00link_update_stats(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 1, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4
  %13 = load i16, ptr %9, align 2
  %14 = and i16 %13, 252
  %15 = icmp eq i16 %14, 128
  br i1 %15, label %16, label %41

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %2, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 3
  %23 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %2, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = load volatile i32, ptr %22, align 4
  %26 = icmp eq i32 %25, 0
  %27 = mul i32 %25, 7
  %28 = mul i32 %24, -1024
  %29 = add i32 %27, %28
  %30 = lshr i32 %29, 3
  %31 = select i1 %26, i32 %28, i32 %30
  store volatile i32 %31, ptr %22, align 4
  %32 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 2, i32 3
  %33 = load i32, ptr %23, align 4
  %34 = load volatile i32, ptr %32, align 4
  %35 = icmp eq i32 %34, 0
  %36 = mul i32 %34, 7
  %37 = mul i32 %33, -1024
  %38 = add i32 %36, %37
  %39 = lshr i32 %38, 3
  %40 = select i1 %35, i32 %37, i32 %39
  store volatile i32 %40, ptr %32, align 4
  br label %41

41:                                               ; preds = %21, %16, %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00link_start_tuner(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 23
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 12
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 1, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = load volatile i32, ptr %10, align 4
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 1
  %22 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29
  %23 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 3
  store i32 0, ptr %23, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %22, i8 0, i64 32, i1 false) #5
  store i8 %16, ptr %15, align 1
  %24 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rt2x00_ops, ptr %25, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.rt2x00lib_ops, ptr %27, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %0, ptr noundef %21) #5
  br label %30

30:                                               ; preds = %20, %14
  %31 = load volatile i32, ptr %10, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 4
  %38 = tail call i32 @round_jiffies_relative(i32 noundef 100) #5
  tail call void @ieee80211_queue_delayed_work(ptr noundef %36, ptr noundef %37, i32 noundef %38) #5
  br label %39

39:                                               ; preds = %34, %30, %9, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00link_reset_tuner(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 1, i32 3
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 12
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 1
  %11 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29
  %12 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 3
  store i32 0, ptr %12, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i8 %4, ptr %3, align 1
  %13 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rt2x00_ops, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rt2x00lib_ops, ptr %16, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %0, ptr noundef %10) #5
  br i1 %1, label %19, label %21

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 2, i32 3
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00link_stop_tuner(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 4
  %3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00link_start_watchdog(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 12
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rt2x00_ops, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rt2x00lib_ops, ptr %10, i32 0, i32 21
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 7
  %16 = load i8, ptr %15, align 4, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 5
  %22 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 6
  %23 = load i32, ptr %22, align 4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %20, ptr noundef %21, i32 noundef %23) #5
  br label %24

24:                                               ; preds = %18, %14, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00link_stop_watchdog(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 5
  %3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00link_register(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 4
  store i32 -32, ptr %2, align 4
  %3 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 4, i32 0, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 4, i32 0, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 4, i32 0, i32 2
  store ptr @rt2x00link_tuner, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %6, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #5
  %7 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 5
  store i32 -32, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 5, i32 0, i32 1
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 5, i32 0, i32 1, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 5, i32 0, i32 2
  store ptr @rt2x00link_watchdog, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %11, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #5
  %12 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 29, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = tail call i32 @round_jiffies_relative(i32 noundef 100) #5
  store i32 %16, ptr %12, align 4
  br label %17

17:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt2x00link_tuner(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -1428
  %3 = getelementptr i8, ptr %0, i32 -60
  %4 = getelementptr i8, ptr %0, i32 -232
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %183, label %8

8:                                                ; preds = %1
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %183

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 -124
  tail call void @mutex_lock(ptr noundef %13) #5
  %14 = getelementptr i8, ptr %0, i32 -96
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %142, label %17

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %0, i32 -56
  %19 = getelementptr i8, ptr %0, i32 -1424
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rt2x00_ops, ptr %20, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rt2x00lib_ops, ptr %22, i32 0, i32 16
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %2, ptr noundef %18) #5
  %25 = getelementptr i8, ptr %0, i32 -40
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %0, i32 216
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %26
  store i32 %29, ptr %27, align 4
  %30 = getelementptr i8, ptr %0, i32 -44
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %17
  %34 = getelementptr i8, ptr %0, i32 -4
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, 10
  %37 = icmp ult i32 %35, 1024
  %38 = sub nsw i32 0, %36
  %39 = select i1 %37, i32 -128, i32 %38
  br label %40

40:                                               ; preds = %33, %17
  %41 = phi i32 [ %39, %33 ], [ -128, %17 ]
  store i32 %41, ptr %18, align 4
  %42 = getelementptr i8, ptr %0, i32 -228
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 262144
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %40
  %47 = load ptr, ptr %19, align 4
  %48 = getelementptr inbounds %struct.rt2x00_ops, ptr %47, i32 0, i32 7
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.rt2x00lib_ops, ptr %49, i32 0, i32 18
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %3, align 4
  tail call void %51(ptr noundef %2, ptr noundef %18, i32 noundef %52) #5
  %53 = load i32, ptr %18, align 4
  br label %54

54:                                               ; preds = %46, %40
  %55 = phi i32 [ %53, %46 ], [ %41, %40 ]
  tail call void @rt2x00leds_led_quality(ptr noundef %2, i32 noundef %55) #5
  %56 = getelementptr i8, ptr %0, i32 -28
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  %60 = and i32 %57, 2
  %61 = icmp eq i32 %60, 0
  %62 = and i32 %57, 3
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 0, ptr %56, align 4
  br label %141

65:                                               ; preds = %54
  %66 = and i32 %57, 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %101, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr %30, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = getelementptr i8, ptr %0, i32 -8
  %73 = load i32, ptr %72, align 4
  %74 = lshr i32 %73, 10
  %75 = icmp ult i32 %73, 1024
  %76 = sub nsw i32 0, %74
  %77 = select i1 %75, i32 -128, i32 %76
  br label %78

78:                                               ; preds = %71, %68
  %79 = phi i32 [ %77, %71 ], [ -128, %68 ]
  %80 = getelementptr i8, ptr %0, i32 -12
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %82, i32 -128, i32 %81
  %84 = getelementptr i8, ptr %0, i32 -24
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr i8, ptr %0, i32 -20
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr i8, ptr %0, i32 -16
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %57, -5
  store i32 %90, ptr %56, align 4
  %91 = icmp slt i32 %79, %83
  br i1 %91, label %93, label %92

92:                                               ; preds = %78
  store i32 %79, ptr %80, align 4
  br label %141

93:                                               ; preds = %78
  %94 = icmp eq i32 %85, 1
  %95 = select i1 %94, i32 2, i32 1
  %96 = select i1 %59, i32 %85, i32 %95
  %97 = select i1 %61, i32 %87, i32 %95
  %98 = insertvalue [3 x i32] poison, i32 %96, 0
  %99 = insertvalue [3 x i32] %98, i32 %97, 1
  %100 = insertvalue [3 x i32] %99, i32 %89, 2
  tail call void @rt2x00lib_config_antenna(ptr noundef %2, [3 x i32] %100) #5
  br label %141

101:                                              ; preds = %65
  %102 = load i32, ptr %3, align 8
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %142, label %105

105:                                              ; preds = %101
  %106 = getelementptr i8, ptr %0, i32 -24
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr i8, ptr %0, i32 -20
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr i8, ptr %0, i32 -16
  %111 = load i32, ptr %110, align 4
  %112 = load i32, ptr %30, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %105
  %115 = getelementptr i8, ptr %0, i32 -8
  %116 = load i32, ptr %115, align 4
  %117 = lshr i32 %116, 10
  %118 = icmp ult i32 %116, 1024
  %119 = sub nsw i32 0, %117
  %120 = select i1 %118, i32 -128, i32 %119
  br label %121

121:                                              ; preds = %114, %105
  %122 = phi i32 [ %120, %114 ], [ -128, %105 ]
  %123 = getelementptr i8, ptr %0, i32 -12
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, i32 -128, i32 %124
  store i32 %122, ptr %123, align 4
  %127 = sub i32 %122, %126
  %128 = tail call i32 @llvm.abs.i32(i32 %127, i1 false) #5
  %129 = icmp slt i32 %128, 5
  br i1 %129, label %141, label %130

130:                                              ; preds = %121
  %131 = or i32 %57, 4
  store i32 %131, ptr %56, align 4
  %132 = icmp eq i32 %107, 1
  %133 = select i1 %132, i32 2, i32 1
  %134 = select i1 %59, i32 %107, i32 %133
  %135 = icmp eq i32 %109, 1
  %136 = select i1 %135, i32 2, i32 1
  %137 = select i1 %61, i32 %109, i32 %136
  %138 = insertvalue [3 x i32] poison, i32 %134, 0
  %139 = insertvalue [3 x i32] %138, i32 %137, 1
  %140 = insertvalue [3 x i32] %139, i32 %111, 2
  tail call void @rt2x00lib_config_antenna(ptr noundef %2, [3 x i32] %140) #5
  br label %141

141:                                              ; preds = %130, %121, %93, %92, %64
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %30, i8 0, i64 16, i1 false) #5
  br label %142

142:                                              ; preds = %141, %101, %12
  %143 = getelementptr i8, ptr %0, i32 -1424
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.rt2x00_ops, ptr %144, i32 0, i32 7
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.rt2x00lib_ops, ptr %146, i32 0, i32 19
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %158, label %150

150:                                              ; preds = %142
  %151 = load i32, ptr %3, align 4
  %152 = and i32 %151, 3
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  tail call void %148(ptr noundef %2) #5
  %155 = load ptr, ptr %143, align 4
  %156 = getelementptr inbounds %struct.rt2x00_ops, ptr %155, i32 0, i32 7
  %157 = load ptr, ptr %156, align 4
  br label %158

158:                                              ; preds = %154, %150, %142
  %159 = phi ptr [ %157, %154 ], [ %146, %150 ], [ %146, %142 ]
  %160 = getelementptr inbounds %struct.rt2x00lib_ops, ptr %159, i32 0, i32 20
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %173, label %163

163:                                              ; preds = %158
  %164 = getelementptr i8, ptr %0, i32 -228
  %165 = load volatile i32, ptr %164, align 4
  %166 = and i32 %165, 33554432
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load i32, ptr %3, align 4
  %170 = urem i32 %169, 10
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  tail call void %161(ptr noundef %2) #5
  br label %173

173:                                              ; preds = %172, %168, %163, %158
  tail call void @mutex_unlock(ptr noundef %13) #5
  %174 = load i32, ptr %3, align 4
  %175 = add i32 %174, 1
  store i32 %175, ptr %3, align 4
  %176 = load volatile i32, ptr %4, align 4
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %173
  %180 = getelementptr i8, ptr %0, i32 -1416
  %181 = load ptr, ptr %180, align 4
  %182 = tail call i32 @round_jiffies_relative(i32 noundef 100) #5
  tail call void @ieee80211_queue_delayed_work(ptr noundef %181, ptr noundef %0, i32 noundef %182) #5
  br label %183

183:                                              ; preds = %179, %173, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rt2x00link_watchdog(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -276
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -1472
  %8 = getelementptr i8, ptr %0, i32 -1468
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rt2x00_ops, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rt2x00lib_ops, ptr %11, i32 0, i32 21
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %7) #5
  %14 = load volatile i32, ptr %2, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %6
  %18 = getelementptr i8, ptr %0, i32 -1460
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %0, i32 44
  %21 = load i32, ptr %20, align 4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %19, ptr noundef %0, i32 noundef %21) #5
  br label %22

22:                                               ; preds = %17, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00leds_led_quality(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_config_antenna(ptr noundef, [3 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i8 0, i8 2}
