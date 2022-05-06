; ModuleID = '/llk/IR/drivers/net/wireless/ralink/rt2x00/rt2x00crypto.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2x00crypto.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
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
%struct.atomic_t = type { i32 }
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
%struct.txentry_desc = type { i32, i16, i16, %union.anon.92, i32, i16, i32, i16, i16, i16 }
%union.anon.92 = type { %struct.anon.94 }
%struct.anon.94 = type { i16, i8, i8, i8, i32, i32 }
%struct.rxdone_entry_desc = type { i64, i32, i32, i32, i32, i32, i16, i16, i32, i32, i8, i8, [2 x i32], i32 }

@switch.table.rt2x00crypto_create_tx_descriptor = private unnamed_addr constant [5 x i32] [i32 1, i32 3, i32 0, i32 4, i32 2], align 4
@switch.table.rt2x00crypto_rx_insert_iv = private unnamed_addr constant [4 x i32] [i32 4, i32 4, i32 8, i32 8], align 4
@switch.table.rt2x00crypto_rx_insert_iv.1 = private unnamed_addr constant [4 x i32] [i32 4, i32 4, i32 4, i32 8], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @rt2x00crypto_key_to_cipher(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, -1027073
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds [5 x i32], ptr @switch.table.rt2x00crypto_create_tx_descriptor, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @rt2x00crypto_create_tx_descriptor(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 13
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 8192
  %9 = icmp ne i32 %8, 0
  %10 = icmp ne ptr %5, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %57

12:                                               ; preds = %3
  %13 = load i32, ptr %2, align 4
  %14 = or i32 %13, 512
  store i32 %14, ptr %2, align 4
  %15 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %5, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, -1027073
  %18 = icmp ult i32 %17, 5
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = getelementptr inbounds [5 x i32], ptr @switch.table.rt2x00crypto_create_tx_descriptor, i32 0, i32 %17
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %12
  %23 = phi i32 [ %21, %19 ], [ 0, %12 ]
  %24 = getelementptr inbounds %struct.txentry_desc, ptr %2, i32 0, i32 6
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %5, i32 0, i32 6
  %26 = load i16, ptr %25, align 8
  %27 = and i16 %26, 8
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = or i32 %13, 1536
  store i32 %30, ptr %2, align 4
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi i32 [ %30, %29 ], [ %14, %22 ]
  %33 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %5, i32 0, i32 4
  %34 = load i8, ptr %33, align 2
  %35 = zext i8 %34 to i16
  %36 = getelementptr inbounds %struct.txentry_desc, ptr %2, i32 0, i32 7
  store i16 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.txentry_desc, ptr %2, i32 0, i32 2
  %38 = load i16, ptr %37, align 2
  %39 = getelementptr inbounds %struct.txentry_desc, ptr %2, i32 0, i32 8
  store i16 %38, ptr %39, align 2
  %40 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %5, i32 0, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i16
  %43 = getelementptr inbounds %struct.txentry_desc, ptr %2, i32 0, i32 9
  store i16 %42, ptr %43, align 4
  %44 = load i16, ptr %25, align 8
  %45 = and i16 %44, 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  %48 = or i32 %32, 2048
  store i32 %48, ptr %2, align 4
  %49 = load i16, ptr %25, align 8
  br label %50

50:                                               ; preds = %47, %31
  %51 = phi i32 [ %48, %47 ], [ %32, %31 ]
  %52 = phi i16 [ %49, %47 ], [ %44, %31 ]
  %53 = and i16 %52, 4
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = or i32 %51, 4096
  store i32 %56, ptr %2, align 4
  br label %57

57:                                               ; preds = %55, %50, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @rt2x00crypto_tx_overhead(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rt2x00_dev, ptr %0, i32 0, i32 13
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 8192
  %8 = icmp ne i32 %7, 0
  %9 = icmp ne ptr %4, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %4, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %4, i32 0, i32 6
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %4, i32 0, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %22, %14
  br label %24

24:                                               ; preds = %19, %11
  %25 = phi i32 [ %14, %11 ], [ %23, %19 ]
  %26 = and i16 %16, 4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %4, i32 0, i32 1
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 1027074
  %32 = add nuw nsw i32 %25, 8
  %33 = select i1 %31, i32 %32, i32 %25
  br label %34

34:                                               ; preds = %28, %24, %2
  %35 = phi i32 [ 0, %2 ], [ %25, %24 ], [ %33, %28 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @rt2x00crypto_tx_copy_iv(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.txentry_desc, ptr %1, i32 0, i32 9
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %15, label %6, !prof !8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.txentry_desc, ptr %1, i32 0, i32 8
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = zext i16 %4 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %7, ptr align 1 %13, i32 %14, i1 false)
  br label %15

15:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00crypto_tx_remove_iv(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.txentry_desc, ptr %1, i32 0, i32 9
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %31, label %6, !prof !8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.txentry_desc, ptr %1, i32 0, i32 8
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = zext i16 %4 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %8, ptr align 1 %14, i32 %15, i1 false)
  %16 = load ptr, ptr %9, align 4
  %17 = load i16, ptr %3, align 4
  %18 = zext i16 %17 to i32
  %19 = getelementptr i8, ptr %16, i32 %18
  %20 = load i16, ptr %11, align 2
  %21 = zext i16 %20 to i32
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %19, ptr align 1 %16, i32 %21, i1 false)
  %22 = load i16, ptr %3, align 4
  %23 = zext i16 %22 to i32
  %24 = tail call ptr @skb_pull(ptr noundef %0, i32 noundef %23) #6
  %25 = load i16, ptr %3, align 4
  %26 = getelementptr inbounds %struct.txentry_desc, ptr %1, i32 0, i32 1
  %27 = load i16, ptr %26, align 4
  %28 = sub i16 %27, %25
  store i16 %28, ptr %26, align 4
  %29 = load i8, ptr %7, align 4
  %30 = or i8 %29, 4
  store i8 %30, ptr %7, align 4
  br label %31

31:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00crypto_tx_insert_iv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 0, i32 4
  %12 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 20
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 0, i32 4
  %16 = add nuw nsw i32 %15, %11
  %17 = tail call ptr @skb_push(ptr noundef %0, i32 noundef %16) #6
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %16
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %19, ptr align 1 %20, i32 %1, i1 false)
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr i8, ptr %21, i32 %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %22, ptr align 4 %8, i32 %16, i1 false)
  %23 = load i8, ptr %3, align 4
  %24 = and i8 %23, -5
  store i8 %24, ptr %3, align 4
  br label %25

25:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt2x00crypto_rx_insert_iv(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %2, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = sub i32 %5, %1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %1
  %10 = ptrtoint ptr %9 to i32
  %11 = and i32 %10, 3
  %12 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %2, i32 0, i32 10
  %13 = load i8, ptr %12, align 8
  %14 = add i8 %13, -1
  %15 = icmp ult i8 %14, 4
  br i1 %15, label %16, label %63

16:                                               ; preds = %3
  %17 = sext i8 %14 to i32
  %18 = getelementptr inbounds [4 x i32], ptr @switch.table.rt2x00crypto_rx_insert_iv, i32 0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = sext i8 %14 to i32
  %21 = getelementptr inbounds [4 x i32], ptr @switch.table.rt2x00crypto_rx_insert_iv.1, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %2, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %16
  %28 = sub nuw nsw i32 %19, %11
  %29 = tail call ptr @skb_push(ptr noundef %0, i32 noundef %28) #6
  %30 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %22) #6
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr i8, ptr %31, i32 %28
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %31, ptr align 1 %32, i32 %1, i1 false)
  br label %41

33:                                               ; preds = %16
  %34 = or i32 %19, %11
  %35 = tail call ptr @skb_push(ptr noundef %0, i32 noundef %34) #6
  %36 = sub nuw nsw i32 %22, %11
  %37 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %36) #6
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr i8, ptr %38, i32 %19
  %40 = getelementptr i8, ptr %39, i32 %11
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %38, ptr align 1 %40, i32 %1, i1 false)
  br label %41

41:                                               ; preds = %33, %27
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr i8, ptr %42, i32 %1
  %44 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %2, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %43, ptr noundef align 4 %44, i32 %19, i1 false)
  %45 = load i32, ptr %23, align 8
  %46 = and i32 %45, 64
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = add i32 %19, %1
  %50 = load ptr, ptr %7, align 4
  %51 = getelementptr i8, ptr %50, i32 %49
  %52 = getelementptr i8, ptr %51, i32 %11
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %51, ptr align 1 %52, i32 %6, i1 false)
  br label %53

53:                                               ; preds = %48, %41
  %54 = add i32 %19, %5
  %55 = load ptr, ptr %7, align 4
  %56 = getelementptr i8, ptr %55, i32 %54
  %57 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %2, i32 0, i32 13
  %58 = load i32, ptr %57, align 4
  store i32 %58, ptr %56, align 1
  %59 = add i32 %54, %22
  store i32 %59, ptr %4, align 8
  %60 = getelementptr inbounds %struct.rxdone_entry_desc, ptr %2, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, -17
  store i32 %62, ptr %60, align 4
  br label %63

63:                                               ; preds = %53, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
