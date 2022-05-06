; ModuleID = '/llk/IR/net/mac80211/wep.c_pt.bc'
source_filename = "../net/mac80211/wep.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.118, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.118 = type { i32, i16 }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.sk_buff_head = type { %union.anon.119, i32, %struct.spinlock }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { ptr, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.132, i32 }
%union.anon.132 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_rx_data = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %union.anon.179 }
%union.anon.179 = type { %struct.anon.180 }
%struct.anon.180 = type { i32, i16 }
%struct.ieee80211_key = type { ptr, ptr, ptr, %struct.list_head, i32, %union.anon.136, i32, %struct.ieee80211_key_conf }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type { %struct.spinlock, %struct.tkip_ctx, [16 x %struct.tkip_ctx_rx], i32 }
%struct.tkip_ctx = type { [5 x i16], i32, i32 }
%struct.tkip_ctx_rx = type { %struct.tkip_ctx, i32, i16 }
%struct.ieee80211_tx_data = type { ptr, %struct.sk_buff_head, ptr, ptr, ptr, ptr, %struct.ieee80211_tx_rate, i32 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>

@.str = private unnamed_addr constant [19 x i8] c"net/mac80211/wep.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_wep_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 61
  tail call void @get_random_bytes(ptr noundef %2, i32 noundef 4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_wep_encrypt_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %3, i32 noundef %4) #9
  %7 = xor i32 %6, -1
  %8 = getelementptr i8, ptr %3, i32 %4
  store i32 %7, ptr %8, align 1
  %9 = tail call i32 @arc4_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8
  %10 = add i32 %4, 4
  tail call void @arc4_crypt(ptr noundef %0, ptr noundef %3, ptr noundef %3, i32 noundef %10) #8
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(1032) %0, i8 0, i32 1032, i1 false) #8
  tail call void asm sideeffect "", "r,~{memory}"(ptr %0) #8, !srcloc !8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arc4_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arc4_crypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_wep_encrypt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  %7 = getelementptr inbounds i8, ptr %6, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, i8 0, i32 13, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %15 = load ptr, ptr %14, align 8
  %16 = ptrtoint ptr %13 to i32
  %17 = ptrtoint ptr %15 to i32
  %18 = sub i32 %16, %17
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %21, !prof !10

20:                                               ; preds = %11, %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 139, i32 noundef 9, ptr noundef null) #8
  br label %43

21:                                               ; preds = %11
  %22 = tail call fastcc ptr @ieee80211_wep_add_iv(ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef %4)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr i8, ptr %22, i32 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = ptrtoint ptr %27 to i32
  %31 = ptrtoint ptr %29 to i32
  %32 = sub i32 %31, %30
  %33 = add i32 %32, %26
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %6, ptr noundef nonnull align 1 dereferenceable(3) %22, i32 3, i1 false)
  %34 = getelementptr inbounds i8, ptr %6, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %34, ptr align 1 %2, i32 %3, i1 false)
  %35 = tail call ptr @skb_put(ptr noundef %1, i32 noundef 4) #8
  %36 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 59
  %37 = add i32 %3, 3
  %38 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %27, i32 noundef %33) #9
  %39 = xor i32 %38, -1
  %40 = getelementptr i8, ptr %27, i32 %33
  store i32 %39, ptr %40, align 1
  %41 = call i32 @arc4_setkey(ptr noundef %36, ptr noundef nonnull %6, i32 noundef %37) #8
  %42 = add i32 %33, 4
  call void @arc4_crypt(ptr noundef %36, ptr noundef %27, ptr noundef %27, i32 noundef %42) #8
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(1032) %36, i8 0, i32 1032, i1 false) #8
  call void asm sideeffect "", "r,~{memory}"(ptr %36) #8, !srcloc !8
  br label %43

43:                                               ; preds = %24, %21, %20
  %44 = phi i32 [ -1, %20 ], [ 0, %24 ], [ -1, %21 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_wep_add_iv(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = load i16, ptr %6, align 2
  %8 = or i16 %7, 16384
  store i16 %8, ptr %6, align 2
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %9 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %17, !prof !10

16:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef null) #8
  br label %63

17:                                               ; preds = %4
  %18 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %8) #10
  %19 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 4) #8
  %20 = getelementptr i8, ptr %19, i32 4
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %19, ptr align 1 %20, i32 %18, i1 false)
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %22, i32 0, i32 6
  %26 = load i16, ptr %25, align 8
  %27 = and i16 %26, 32
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %19, i32 %18
  br label %63

31:                                               ; preds = %24, %17
  %32 = getelementptr i8, ptr %19, i32 %18
  %33 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 61
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = and i32 %35, 65280
  %37 = icmp eq i32 %36, 65280
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = lshr i32 %35, 16
  %40 = and i32 %39, 255
  %41 = icmp ult i32 %40, 3
  %42 = add i32 %2, 3
  %43 = icmp sge i32 %40, %42
  %44 = or i1 %41, %43
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = add i32 %34, 257
  store i32 %46, ptr %33, align 4
  br label %47

47:                                               ; preds = %45, %38, %31
  %48 = phi i32 [ %35, %38 ], [ %35, %31 ], [ %46, %45 ]
  %49 = icmp eq ptr %32, null
  br i1 %49, label %63, label %50

50:                                               ; preds = %47
  %51 = lshr i32 %48, 16
  %52 = trunc i32 %51 to i8
  %53 = getelementptr i8, ptr %32, i32 1
  store i8 %52, ptr %32, align 1
  %54 = load i32, ptr %33, align 4
  %55 = lshr i32 %54, 8
  %56 = trunc i32 %55 to i8
  %57 = getelementptr i8, ptr %32, i32 2
  store i8 %56, ptr %53, align 1
  %58 = load i32, ptr %33, align 4
  %59 = trunc i32 %58 to i8
  %60 = getelementptr i8, ptr %32, i32 3
  store i8 %59, ptr %57, align 1
  %61 = trunc i32 %3 to i8
  %62 = shl i8 %61, 6
  store i8 %62, ptr %60, align 1
  br label %63

63:                                               ; preds = %50, %47, %29, %16
  %64 = phi ptr [ null, %16 ], [ %30, %29 ], [ null, %47 ], [ %32, %50 ]
  ret ptr %64
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_wep_decrypt_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %7 = tail call i32 @arc4_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8
  %8 = add i32 %4, 4
  tail call void @arc4_crypt(ptr noundef %0, ptr noundef %3, ptr noundef %3, i32 noundef %8) #8
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(1032) %0, i8 0, i32 1032, i1 false) #8
  tail call void asm sideeffect "", "r,~{memory}"(ptr %0) #8, !srcloc !8
  %9 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %3, i32 noundef %4) #9
  %10 = xor i32 %9, -1
  store i32 %10, ptr %6, align 4
  %11 = getelementptr i8, ptr %3, i32 %4
  %12 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %6, ptr noundef dereferenceable(4) %11, i32 4)
  %13 = icmp ne i32 %12, 0
  %14 = sext i1 %13 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_wep_decrypt(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca [16 x i8], align 1
  %4 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 12
  %10 = icmp eq i16 %9, 8
  %11 = and i16 %8, 252
  %12 = icmp eq i16 %11, 176
  %13 = or i1 %10, %12
  br i1 %13, label %14, label %134

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 24
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %82

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @__pskb_pull_tail(ptr noundef %5, i32 noundef %21) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %134, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %26, %19
  %31 = phi ptr [ %29, %26 ], [ %7, %19 ]
  %32 = phi ptr [ %27, %26 ], [ %5, %19 ]
  %33 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %37 = getelementptr inbounds i8, ptr %3, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %37, i8 0, i32 13, i1 false) #8, !annotation !9
  %38 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 17
  %39 = load i16, ptr %31, align 2
  %40 = and i16 %39, 16384
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %30
  %43 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %39) #10
  %44 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 5
  %45 = load i32, ptr %44, align 8
  %46 = add i32 %43, 8
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %42
  %49 = sub i32 %45, %43
  %50 = add i32 %49, -8
  %51 = icmp eq ptr %36, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = add i32 %43, 3
  %54 = getelementptr i8, ptr %31, i32 %53
  %55 = load i8, ptr %54, align 1
  %56 = lshr i8 %55, 6
  %57 = getelementptr inbounds %struct.ieee80211_key, ptr %36, i32 0, i32 7, i32 5
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %56, %58
  br i1 %59, label %61, label %60

60:                                               ; preds = %52, %48, %42, %30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %134

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.ieee80211_key, ptr %36, i32 0, i32 7, i32 7
  %63 = load i8, ptr %62, align 2
  %64 = zext i8 %63 to i32
  %65 = add nuw nsw i32 %64, 3
  %66 = getelementptr i8, ptr %31, i32 %43
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef align 1 dereferenceable(3) %66, i32 3, i1 false) #8
  %67 = getelementptr inbounds %struct.ieee80211_key, ptr %36, i32 0, i32 7, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr align 1 %67, i32 %64, i1 false) #8
  %68 = getelementptr inbounds %struct.ieee80211_local, ptr %34, i32 0, i32 60
  %69 = getelementptr i8, ptr %66, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %70 = call i32 @arc4_setkey(ptr noundef %68, ptr noundef nonnull %3, i32 noundef %65) #8
  %71 = add i32 %49, -4
  call void @arc4_crypt(ptr noundef %68, ptr noundef %69, ptr noundef %69, i32 noundef %71) #8
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(1032) %68, i8 0, i32 1032, i1 false) #8
  call void asm sideeffect "", "r,~{memory}"(ptr %68) #8, !srcloc !8
  %72 = call i32 @crc32_le(i32 noundef -1, ptr noundef %69, i32 noundef %50) #9
  %73 = xor i32 %72, -1
  store i32 %73, ptr %2, align 4
  %74 = getelementptr i8, ptr %69, i32 %50
  %75 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %2, ptr noundef dereferenceable(4) %74, i32 4) #8
  %76 = icmp eq i32 %75, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %77 = load i32, ptr %44, align 8
  %78 = add i32 %77, -4
  call void @skb_trim(ptr noundef %32, i32 noundef %78) #8
  %79 = load ptr, ptr %38, align 4
  %80 = getelementptr i8, ptr %79, i32 4
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %80, ptr align 1 %79, i32 %43, i1 false) #8
  %81 = call ptr @skb_pull(ptr noundef %32, i32 noundef 4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br i1 %76, label %133, label %134

82:                                               ; preds = %14
  %83 = and i32 %16, 16
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %133

85:                                               ; preds = %82
  %86 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %8) #10
  %87 = add i32 %86, 4
  %88 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 5
  %89 = load i32, ptr %88, align 8
  %90 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = sub i32 %89, %91
  %93 = icmp ugt i32 %87, %92
  br i1 %93, label %94, label %106, !prof !10

94:                                               ; preds = %85
  %95 = icmp ult i32 %89, %87
  br i1 %95, label %134, label %96, !prof !10

96:                                               ; preds = %94
  %97 = sub i32 %87, %92
  %98 = tail call ptr @__pskb_pull_tail(ptr noundef %5, i32 noundef %97) #8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %134, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %4, align 4
  %102 = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 17
  %103 = load ptr, ptr %102, align 4
  %104 = load i16, ptr %103, align 2
  %105 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %104) #10
  br label %106

106:                                              ; preds = %100, %85
  %107 = phi i32 [ %105, %100 ], [ %86, %85 ]
  %108 = phi ptr [ %103, %100 ], [ %7, %85 ]
  %109 = phi ptr [ %101, %100 ], [ %5, %85 ]
  %110 = getelementptr i8, ptr %108, i32 4
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %110, ptr align 1 %108, i32 %107, i1 false) #8
  %111 = tail call ptr @skb_pull(ptr noundef %109, i32 noundef 4) #8
  %112 = load i32, ptr %15, align 8
  %113 = and i32 %112, 8388608
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %106
  %116 = load ptr, ptr %4, align 4
  %117 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 5
  %118 = load i32, ptr %117, align 8
  %119 = add i32 %118, -4
  %120 = icmp ugt i32 %118, 3
  br i1 %120, label %121, label %133

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 6
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  store i32 %119, ptr %117, align 8
  %126 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 17
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %127, i32 %119
  %129 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 14
  store ptr %128, ptr %129, align 8
  br label %133

130:                                              ; preds = %121
  %131 = tail call i32 @___pskb_trim(ptr noundef %116, i32 noundef %119) #8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130, %125, %115, %106, %82, %61
  br label %134

134:                                              ; preds = %133, %130, %96, %94, %61, %60, %23, %1
  %135 = phi i32 [ 0, %133 ], [ 1, %61 ], [ 1, %96 ], [ 1, %130 ], [ 1, %23 ], [ 1, %60 ], [ 1, %94 ], [ 0, %1 ]
  ret i32 %135
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_wep_encrypt(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @ieee80211_tx_set_protected(ptr noundef %0) #8
  %2 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %2, align 4
  %5 = icmp eq ptr %4, %2
  br i1 %5, label %44, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 5
  br label %8

8:                                                ; preds = %41, %6
  %9 = phi ptr [ %4, %6 ], [ %42, %41 ]
  %10 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 28
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load ptr, ptr %3, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.ieee80211_key, ptr %15, i32 0, i32 7, i32 8
  %17 = getelementptr inbounds %struct.ieee80211_key, ptr %15, i32 0, i32 7, i32 7
  %18 = load i8, ptr %17, align 2
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.ieee80211_key, ptr %15, i32 0, i32 7, i32 5
  %21 = load i8, ptr %20, align 1
  %22 = sext i8 %21 to i32
  %23 = tail call i32 @ieee80211_wep_encrypt(ptr noundef %14, ptr noundef %9, ptr noundef %16, i32 noundef %19, i32 noundef %22) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %41, label %44

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %11, i32 0, i32 6
  %27 = load i16, ptr %26, align 8
  %28 = and i16 %27, 34
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 4
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr inbounds %struct.ieee80211_key, ptr %32, i32 0, i32 7, i32 7
  %34 = load i8, ptr %33, align 2
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct.ieee80211_key, ptr %32, i32 0, i32 7, i32 5
  %37 = load i8, ptr %36, align 1
  %38 = sext i8 %37 to i32
  %39 = tail call fastcc ptr @ieee80211_wep_add_iv(ptr noundef %31, ptr noundef %9, i32 noundef %35, i32 noundef %38) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %30, %25, %13
  %42 = load ptr, ptr %9, align 4
  %43 = icmp eq ptr %42, %2
  br i1 %43, label %44, label %8

44:                                               ; preds = %41, %30, %13, %1
  %45 = phi i32 [ 0, %1 ], [ 1, %30 ], [ 1, %13 ], [ 0, %41 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_set_protected(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind readnone willreturn }

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
!8 = !{i64 2149014368}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
