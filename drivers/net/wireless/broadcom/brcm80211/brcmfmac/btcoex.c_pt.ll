; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/btcoex.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.brcmf_btcoex_info = type { ptr, %struct.timer_list, i16, i8, i8, i32, %struct.work_struct, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.brcmf_cfg80211_info = type { ptr, ptr, %struct.brcmf_p2p_info, ptr, ptr, %struct.mutex, ptr, %struct.brcmf_cfg80211_connect_info, %struct.brcmf_pmk_list_le, i32, ptr, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, %struct.escan_info, %struct.timer_list, %struct.work_struct, %struct.list_head, %struct.brcmf_cfg80211_vif_event, %struct.completion, %struct.brcmu_d11inf, %struct.brcmf_assoclist_le, %struct.brcmf_cfg80211_wowl, ptr, [8 x i8] }
%struct.brcmf_p2p_info = type { ptr, i32, [6 x i8], [6 x i8], [6 x i8], [4 x %struct.p2p_bss], %struct.timer_list, i8, %struct.ieee80211_channel, i32, i8, %struct.completion, %struct.afx_hdl, i32, i32, %struct.completion, i8, i8, i8, i8 }
%struct.p2p_bss = type { ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.afx_hdl = type { %struct.work_struct, %struct.completion, i8, i32, i8, i16, i16, [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.brcmf_cfg80211_connect_info = type { ptr, i32, ptr, i32 }
%struct.brcmf_pmk_list_le = type { i32, [16 x %struct.brcmf_pmksa] }
%struct.brcmf_pmksa = type { [6 x i8], [16 x i8] }
%struct.escan_info = type { i32, ptr, ptr, ptr, ptr }
%struct.brcmf_cfg80211_vif_event = type { %struct.wait_queue_head, %struct.spinlock, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.brcmu_d11inf = type { i8, ptr, ptr }
%struct.brcmf_assoclist_le = type { i32, [128 x [6 x i8]] }
%struct.brcmf_cfg80211_wowl = type { i8, i32, ptr, ptr, %struct.wait_queue_head, i8, i8 }
%struct.anon.122 = type { i32, i32 }
%struct.brcmf_cfg80211_vif = type { ptr, %struct.wireless_dev, %struct.brcmf_cfg80211_profile, i32, %struct.vif_saved_ie, %struct.list_head, i16, i8, i32, i32, i32, i32 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.brcmf_cfg80211_profile = type { [6 x i8], %struct.brcmf_cfg80211_security, [6 x %struct.brcmf_wsec_key], i32, i16, i8 }
%struct.brcmf_cfg80211_security = type { i32, i32, i32, i32 }
%struct.brcmf_wsec_key = type { i32, i32, [32 x i8], [18 x i32], i32, i32, [3 x i32], i32, i32, %struct.anon.121, [2 x i32], [6 x i8] }
%struct.anon.121 = type { i32, i16 }
%struct.vif_saved_ie = type { [512 x i8], [512 x i8], [512 x i8], [512 x i8], [512 x i8], i32, i32, i32, i32, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.117, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.117 = type { i64, i64, i8 }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__func__.brcmf_btcoex_handler = private unnamed_addr constant [21 x i8] c"brcmf_btcoex_handler\00", align 1
@.str = private unnamed_addr constant [22 x i8] c"invalid state=%d !!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"btc_params\00", align 1
@__func__.brcmf_btcoex_is_sco_active = private unnamed_addr constant [27 x i8] c"brcmf_btcoex_is_sco_active\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ioc read btc params error\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_btcoex_attach(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 92) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %3, i32 0, i32 5
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %3, i32 0, i32 3
  store i8 0, ptr %7, align 2
  %8 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %3, i32 0, i32 2
  store i16 200, ptr %8, align 8
  %9 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %3, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %9, ptr noundef nonnull @brcmf_btcoex_timerfunc, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  %10 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %3, i32 0, i32 7
  store ptr %0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %3, i32 0, i32 11
  store i8 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %3, i32 0, i32 17
  store i8 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %3, i32 0, i32 6
  store i32 -32, ptr %13, align 8
  %14 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %3, i32 0, i32 6, i32 1
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %3, i32 0, i32 6, i32 1, i32 1
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %3, i32 0, i32 6, i32 2
  store ptr @brcmf_btcoex_handler, ptr %16, align 4
  %17 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 3
  store ptr %3, ptr %17, align 4
  br label %18

18:                                               ; preds = %5, %1
  %19 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_btcoex_timerfunc(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 22
  store i8 0, ptr %2, align 2
  %3 = getelementptr i8, ptr %0, i32 28
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_btcoex_handler(ptr noundef %0) #0 {
  %2 = alloca %struct.anon.122, align 8
  %3 = alloca %struct.anon.122, align 8
  %4 = alloca %struct.anon.122, align 8
  %5 = getelementptr i8, ptr %0, i32 -32
  %6 = getelementptr i8, ptr %0, i32 -6
  %7 = load i8, ptr %6, align 2, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  store i8 0, ptr %6, align 2
  %10 = getelementptr i8, ptr %0, i32 -28
  %11 = tail call i32 @del_timer_sync(ptr noundef %10) #5
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr i8, ptr %0, i32 -4
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %42 [
    i32 1, label %15
    i32 2, label %30
    i32 3, label %48
  ]

15:                                               ; preds = %12
  store i32 2, ptr %13, align 4
  %16 = getelementptr i8, ptr %0, i32 -8
  %17 = load i16, ptr %16, align 4
  %18 = icmp ult i16 %17, 200
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %0, i32 -28
  %21 = getelementptr i8, ptr %0, i32 -20
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @mod_timer(ptr noundef %20, i32 noundef %22) #5
  br label %47

24:                                               ; preds = %15
  %25 = add i16 %17, -200
  store i16 %25, ptr %16, align 4
  %26 = getelementptr i8, ptr %0, i32 -28
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = add i32 %27, 200
  %29 = tail call i32 @mod_timer(ptr noundef %26, i32 noundef %28) #5
  br label %47

30:                                               ; preds = %12
  %31 = getelementptr i8, ptr %0, i32 -5
  %32 = load i8, ptr %31, align 1, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  tail call fastcc void @brcmf_btcoex_boost_wifi(ptr noundef %5, i1 noundef zeroext true)
  store i32 3, ptr %13, align 4
  %35 = getelementptr i8, ptr %0, i32 -28
  %36 = load volatile i32, ptr @jiffies, align 64
  %37 = getelementptr i8, ptr %0, i32 -8
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = add i32 %36, %39
  %41 = tail call i32 @mod_timer(ptr noundef %35, i32 noundef %40) #5
  br label %47

42:                                               ; preds = %12
  %43 = tail call i32 @net_ratelimit() #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_btcoex_handler, ptr noundef nonnull @.str, i32 noundef %46) #5
  br label %48

47:                                               ; preds = %34, %24, %19
  store i8 1, ptr %6, align 2
  br label %70

48:                                               ; preds = %45, %42, %30, %12
  store i32 0, ptr %13, align 4
  store i8 0, ptr %6, align 2
  tail call fastcc void @brcmf_btcoex_boost_wifi(ptr noundef %5, i1 noundef zeroext false)
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %49, i32 0, i32 1
  tail call void @cfg80211_crit_proto_stopped(ptr noundef %50, i32 noundef 3264) #5
  %51 = getelementptr i8, ptr %0, i32 32
  %52 = load i8, ptr %51, align 4, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %48
  store i8 0, ptr %51, align 4
  %55 = load ptr, ptr %5, align 4
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %0, i32 20
  %58 = load i32, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  store i32 66, ptr %4, align 8
  %59 = getelementptr inbounds %struct.anon.122, ptr %4, i32 0, i32 1
  store i32 %58, ptr %59, align 4
  %60 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %56, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  %61 = getelementptr i8, ptr %0, i32 24
  %62 = load i32, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  store i32 41, ptr %3, align 8
  %63 = getelementptr inbounds %struct.anon.122, ptr %3, i32 0, i32 1
  store i32 %62, ptr %63, align 4
  %64 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %56, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  %65 = getelementptr i8, ptr %0, i32 28
  %66 = load i32, ptr %65, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  store i32 68, ptr %2, align 8
  %67 = getelementptr inbounds %struct.anon.122, ptr %2, i32 0, i32 1
  store i32 %66, ptr %67, align 4
  %68 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %56, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  br label %69

69:                                               ; preds = %54, %48
  store ptr null, ptr %5, align 4
  br label %70

70:                                               ; preds = %69, %47
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_btcoex_detach(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.anon.122, align 8
  %3 = alloca %struct.anon.122, align 8
  %4 = alloca %struct.anon.122, align 8
  %5 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %6, i32 0, i32 3
  %10 = load i8, ptr %9, align 2, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  store i8 0, ptr %9, align 2
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %13, i32 0, i32 1
  %15 = tail call i32 @del_timer_sync(ptr noundef %14) #5
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi ptr [ %16, %12 ], [ %6, %8 ]
  %19 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %18, i32 0, i32 6
  %20 = tail call zeroext i1 @cancel_work_sync(ptr noundef %19) #5
  %21 = load ptr, ptr %5, align 4
  tail call fastcc void @brcmf_btcoex_boost_wifi(ptr noundef %21, i1 noundef zeroext false)
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %22, i32 0, i32 11
  %24 = load i8, ptr %23, align 4, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %17
  store i8 0, ptr %23, align 4
  %27 = load ptr, ptr %22, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %22, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  store i32 66, ptr %4, align 8
  %31 = getelementptr inbounds %struct.anon.122, ptr %4, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  %32 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %28, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  %33 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %22, i32 0, i32 9
  %34 = load i32, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  store i32 41, ptr %3, align 8
  %35 = getelementptr inbounds %struct.anon.122, ptr %3, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %28, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  %37 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %22, i32 0, i32 10
  %38 = load i32, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  store i32 68, ptr %2, align 8
  %39 = getelementptr inbounds %struct.anon.122, ptr %2, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %28, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  %41 = load ptr, ptr %5, align 4
  br label %42

42:                                               ; preds = %26, %17
  %43 = phi ptr [ %22, %17 ], [ %41, %26 ]
  call void @kfree(ptr noundef %43) #5
  store ptr null, ptr %5, align 4
  br label %44

44:                                               ; preds = %42, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_btcoex_boost_wifi(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.anon.122, align 8
  %4 = alloca %struct.anon.122, align 8
  %5 = alloca %struct.anon.122, align 8
  %6 = alloca %struct.anon.122, align 8
  %7 = alloca %struct.anon.122, align 8
  %8 = alloca %struct.anon.122, align 8
  %9 = alloca %struct.anon.122, align 8
  %10 = alloca %struct.anon.122, align 8
  %11 = alloca %struct.anon.122, align 8
  %12 = alloca %struct.anon.122, align 8
  %13 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %14, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @brcmf_get_ifp(ptr noundef %16, i32 noundef 0) #5
  %18 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %0, i32 0, i32 17
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %1, label %21, label %43

21:                                               ; preds = %2
  br i1 %20, label %22, label %44

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %0, i32 0, i32 12
  store i32 50, ptr %23, align 4
  %24 = tail call i32 @brcmf_fil_iovar_int_get(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef %23) #5
  %25 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %0, i32 0, i32 13
  store i32 51, ptr %25, align 4
  %26 = tail call i32 @brcmf_fil_iovar_int_get(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef %25) #5
  %27 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %0, i32 0, i32 14
  store i32 64, ptr %27, align 4
  %28 = tail call i32 @brcmf_fil_iovar_int_get(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef %27) #5
  %29 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %0, i32 0, i32 15
  store i32 65, ptr %29, align 4
  %30 = tail call i32 @brcmf_fil_iovar_int_get(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef %29) #5
  %31 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %0, i32 0, i32 16
  store i32 71, ptr %31, align 4
  %32 = tail call i32 @brcmf_fil_iovar_int_get(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef %31) #5
  store i8 1, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  store i32 50, ptr %12, align 8
  %33 = getelementptr inbounds %struct.anon.122, ptr %12, i32 0, i32 1
  store i32 32802, ptr %33, align 4
  %34 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull %12, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  store i32 51, ptr %11, align 8
  %35 = getelementptr inbounds %struct.anon.122, ptr %11, i32 0, i32 1
  store i32 0, ptr %35, align 4
  %36 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull %11, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  store i32 64, ptr %10, align 8
  %37 = getelementptr inbounds %struct.anon.122, ptr %10, i32 0, i32 1
  store i32 0, ptr %37, align 4
  %38 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull %10, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  store i32 65, ptr %9, align 8
  %39 = getelementptr inbounds %struct.anon.122, ptr %9, i32 0, i32 1
  store i32 0, ptr %39, align 4
  %40 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull %9, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  store i32 71, ptr %8, align 8
  %41 = getelementptr inbounds %struct.anon.122, ptr %8, i32 0, i32 1
  store i32 0, ptr %41, align 4
  %42 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull %8, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  br label %66

43:                                               ; preds = %2
  br i1 %20, label %66, label %44

44:                                               ; preds = %43, %21
  %45 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %0, i32 0, i32 17
  %46 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %0, i32 0, i32 12
  %47 = load i32, ptr %46, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  store i32 50, ptr %7, align 8
  %48 = getelementptr inbounds %struct.anon.122, ptr %7, i32 0, i32 1
  store i32 %47, ptr %48, align 4
  %49 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull %7, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  %50 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %0, i32 0, i32 13
  %51 = load i32, ptr %50, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  store i32 51, ptr %6, align 8
  %52 = getelementptr inbounds %struct.anon.122, ptr %6, i32 0, i32 1
  store i32 %51, ptr %52, align 4
  %53 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull %6, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  %54 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %0, i32 0, i32 14
  %55 = load i32, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store i32 64, ptr %5, align 8
  %56 = getelementptr inbounds %struct.anon.122, ptr %5, i32 0, i32 1
  store i32 %55, ptr %56, align 4
  %57 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull %5, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  %58 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %0, i32 0, i32 15
  %59 = load i32, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  store i32 65, ptr %4, align 8
  %60 = getelementptr inbounds %struct.anon.122, ptr %4, i32 0, i32 1
  store i32 %59, ptr %60, align 4
  %61 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  %62 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %0, i32 0, i32 16
  %63 = load i32, ptr %62, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  store i32 71, ptr %3, align 8
  %64 = getelementptr inbounds %struct.anon.122, ptr %3, i32 0, i32 1
  store i32 %63, ptr %64, align 4
  %65 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  store i8 0, ptr %45, align 4
  br label %66

66:                                               ; preds = %44, %43, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_btcoex_set_mode(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.anon.122, align 8
  %5 = alloca %struct.anon.122, align 8
  %6 = alloca %struct.anon.122, align 8
  %7 = alloca %struct.anon.122, align 8
  %8 = alloca %struct.anon.122, align 8
  %9 = alloca %struct.anon.122, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.brcmf_cfg80211_vif, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.wiphy, ptr %12, i32 1, i32 0, i32 3, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %17, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @brcmf_get_ifp(ptr noundef %21, i32 noundef 0) #5
  switch i32 %1, label %114 [
    i32 0, label %23
    i32 1, label %75
  ]

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %19, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %114

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #5
  br label %31

28:                                               ; preds = %40
  %29 = add nuw nsw i32 %33, 1
  %30 = icmp eq i32 %29, 12
  br i1 %30, label %47, label %31

31:                                               ; preds = %28, %27
  %32 = phi i32 [ 0, %27 ], [ %45, %28 ]
  %33 = phi i32 [ 0, %27 ], [ %29, %28 ]
  store i32 27, ptr %10, align 4
  %34 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef nonnull %10) #5
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = call i32 @net_ratelimit() #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_btcoex_is_sco_active, ptr noundef nonnull @.str.2) #5
  br label %47

40:                                               ; preds = %31
  %41 = load i32, ptr %10, align 4
  %42 = and i32 %41, 6
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %32, %44
  %46 = icmp ugt i32 %45, 2
  br i1 %46, label %48, label %28

47:                                               ; preds = %39, %36, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  br label %114

48:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  %49 = zext i16 %2 to i32
  %50 = call i32 @__msecs_to_jiffies(i32 noundef %49) #5
  %51 = trunc i32 %50 to i16
  %52 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %19, i32 0, i32 2
  store i16 %51, ptr %52, align 4
  store ptr %0, ptr %19, align 4
  %53 = load ptr, ptr %0, align 4
  %54 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %19, i32 0, i32 11
  %55 = load i8, ptr %54, align 4, !range !8
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %19, i32 0, i32 8
  store i32 66, ptr %58, align 4
  %59 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %53, ptr noundef nonnull @.str.1, ptr noundef %58) #5
  %60 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %19, i32 0, i32 9
  store i32 41, ptr %60, align 4
  %61 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %53, ptr noundef nonnull @.str.1, ptr noundef %60) #5
  %62 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %19, i32 0, i32 10
  store i32 68, ptr %62, align 4
  %63 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %53, ptr noundef nonnull @.str.1, ptr noundef %62) #5
  store i8 1, ptr %54, align 4
  br label %64

64:                                               ; preds = %57, %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  store i32 66, ptr %9, align 8
  %65 = getelementptr inbounds %struct.anon.122, ptr %9, i32 0, i32 1
  store i32 10000, ptr %65, align 4
  %66 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %53, ptr noundef nonnull @.str.1, ptr noundef nonnull %9, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  store i32 41, ptr %8, align 8
  %67 = getelementptr inbounds %struct.anon.122, ptr %8, i32 0, i32 1
  store i32 51, ptr %67, align 4
  %68 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %53, ptr noundef nonnull @.str.1, ptr noundef nonnull %8, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  store i32 68, ptr %7, align 8
  %69 = getelementptr inbounds %struct.anon.122, ptr %7, i32 0, i32 1
  store i32 400, ptr %69, align 4
  %70 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %53, ptr noundef nonnull @.str.1, ptr noundef nonnull %7, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  %71 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %19, i32 0, i32 4
  store i8 0, ptr %71, align 1
  store i32 1, ptr %24, align 4
  %72 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %19, i32 0, i32 6
  %73 = load ptr, ptr @system_wq, align 4
  %74 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %73, ptr noundef %72) #5
  br label %114

75:                                               ; preds = %15
  %76 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %19, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %114, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %19, align 4
  %81 = icmp eq ptr %80, %0
  br i1 %81, label %82, label %114

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %19, i32 0, i32 4
  store i8 1, ptr %83, align 1
  %84 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %19, i32 0, i32 3
  %85 = load i8, ptr %84, align 2, !range !8
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %82
  store i8 0, ptr %84, align 2
  %88 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %19, i32 0, i32 1
  %89 = tail call i32 @del_timer_sync(ptr noundef %88) #5
  %90 = load i32, ptr %76, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %114, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %19, i32 0, i32 6
  %94 = load ptr, ptr @system_wq, align 4
  %95 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %94, ptr noundef %93) #5
  br label %114

96:                                               ; preds = %82
  %97 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %19, i32 0, i32 11
  %98 = load i8, ptr %97, align 4, !range !8
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %96
  store i8 0, ptr %97, align 4
  %101 = load ptr, ptr %0, align 4
  %102 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %19, i32 0, i32 8
  %103 = load i32, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  store i32 66, ptr %6, align 8
  %104 = getelementptr inbounds %struct.anon.122, ptr %6, i32 0, i32 1
  store i32 %103, ptr %104, align 4
  %105 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %101, ptr noundef nonnull @.str.1, ptr noundef nonnull %6, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  %106 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %19, i32 0, i32 9
  %107 = load i32, ptr %106, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store i32 41, ptr %5, align 8
  %108 = getelementptr inbounds %struct.anon.122, ptr %5, i32 0, i32 1
  store i32 %107, ptr %108, align 4
  %109 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %101, ptr noundef nonnull @.str.1, ptr noundef nonnull %5, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  %110 = getelementptr inbounds %struct.brcmf_btcoex_info, ptr %19, i32 0, i32 10
  %111 = load i32, ptr %110, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  store i32 68, ptr %4, align 8
  %112 = getelementptr inbounds %struct.anon.122, ptr %4, i32 0, i32 1
  store i32 %111, ptr %112, align 4
  %113 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %101, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  br label %114

114:                                              ; preds = %100, %96, %92, %87, %79, %75, %64, %47, %23, %15
  %115 = phi i32 [ -16, %23 ], [ 0, %15 ], [ 0, %75 ], [ 0, %79 ], [ 0, %64 ], [ 0, %47 ], [ 0, %87 ], [ 0, %92 ], [ 0, %96 ], [ 0, %100 ]
  ret i32 %115
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_get_ifp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_crit_proto_stopped(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind allocsize(2) }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2155636794, i64 2155637282, i64 2155636831, i64 2155636887, i64 2155636921, i64 2155636945, i64 2155636986, i64 2155637007, i64 2155637035, i64 2155637069}
