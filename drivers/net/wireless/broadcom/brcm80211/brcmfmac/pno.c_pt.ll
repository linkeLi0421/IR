; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.brcmf_cfg80211_info = type { ptr, ptr, %struct.brcmf_p2p_info, ptr, ptr, %struct.mutex, ptr, %struct.brcmf_cfg80211_connect_info, %struct.brcmf_pmk_list_le, i32, ptr, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, %struct.escan_info, %struct.timer_list, %struct.work_struct, %struct.list_head, %struct.brcmf_cfg80211_vif_event, %struct.completion, %struct.brcmu_d11inf, %struct.brcmf_assoclist_le, %struct.brcmf_cfg80211_wowl, ptr, [8 x i8] }
%struct.brcmf_p2p_info = type { ptr, i32, [6 x i8], [6 x i8], [6 x i8], [4 x %struct.p2p_bss], %struct.timer_list, i8, %struct.ieee80211_channel, i32, i8, %struct.completion, %struct.afx_hdl, i32, i32, %struct.completion, i8, i8, i8, i8 }
%struct.p2p_bss = type { ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.afx_hdl = type { %struct.work_struct, %struct.completion, i8, i32, i8, i16, i16, [6 x i8] }
%struct.brcmf_cfg80211_connect_info = type { ptr, i32, ptr, i32 }
%struct.brcmf_pmk_list_le = type { i32, [16 x %struct.brcmf_pmksa] }
%struct.brcmf_pmksa = type { [6 x i8], [16 x i8] }
%struct.escan_info = type { i32, ptr, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.brcmf_cfg80211_vif_event = type { %struct.wait_queue_head, %struct.spinlock, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.brcmu_d11inf = type { i8, ptr, ptr }
%struct.brcmf_assoclist_le = type { i32, [128 x [6 x i8]] }
%struct.brcmf_cfg80211_wowl = type { i8, i32, ptr, ptr, %struct.wait_queue_head, i8, i8 }
%struct.brcmf_pno_info = type { i32, [16 x ptr], %struct.mutex }
%struct.brcmf_pno_bssid_le = type { [6 x i8], i16 }
%struct.brcmf_pno_net_param_le = type { %struct.brcmf_ssid_le, i32, i32, i32, i32, i32 }
%struct.brcmf_ssid_le = type { i32, [32 x i8] }
%struct.brcmf_pno_macaddr_le = type { i8, i8, [6 x i8] }
%struct.brcmf_pno_param_le = type { i32, i32, i32, i16, i16, i8, i8, i8, i8, i32 }
%struct.brcmf_pno_config_le = type { i32, i32, [64 x i16], i32 }
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.brcmf_gscan_bucket_config = type { i8, i8, i8, i8, i16, i16 }
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
%struct.brcmf_gscan_config = type { i16, i8, i8, i8, i8, i8, i8, i16, [1 x %struct.brcmf_gscan_bucket_config] }
%struct.cfg80211_match_set = type { %struct.cfg80211_ssid, [6 x i8], i32, [6 x i32] }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.brcmf_pno_net_info_le = type { [6 x i8], i8, i8, [32 x i8], i16, i16 }

@brcmf_pno_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [14 x i8] c"&pi->req_lock\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/pno.c\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"pno request storage full\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: failed error=%d\0A\00", align 1
@__func__.brcmf_pno_config_sched_scans = private unnamed_addr constant [29 x i8] c"brcmf_pno_config_sched_scans\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"pfn_gscan_cfg\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pfn\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.brcmf_pno_config = private unnamed_addr constant [17 x i8] c"brcmf_pno_config\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"pfn_set\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"%s: pfn_set failed, err=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"pfn_cfg\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"pfn_macaddr\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"%s: pfn_macaddr failed, err=%d\0A\00", align 1
@__func__.brcmf_pno_set_random = private unnamed_addr constant [21 x i8] c"brcmf_pno_set_random\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"pfn_add\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"%s: adding failed: err=%d\0A\00", align 1
@__func__.brcmf_pno_add_ssid = private unnamed_addr constant [19 x i8] c"brcmf_pno_add_ssid\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"pfn_add_bssid\00", align 1
@__func__.brcmf_pno_add_bssid = private unnamed_addr constant [20 x i8] c"brcmf_pno_add_bssid\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"reqid not found\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"pfnclear\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"%s: failed code %d\0A\00", align 1
@__func__.brcmf_pno_clean = private unnamed_addr constant [16 x i8] c"brcmf_pno_clean\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_pno_start_sched_scan(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %5, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 16
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.2) #13
  br label %25

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.brcmf_pno_info, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = load i32, ptr %7, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %7, align 4
  %15 = getelementptr %struct.brcmf_pno_info, ptr %7, i32 0, i32 1, i32 %13
  store ptr %1, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %12) #13
  %16 = tail call fastcc i32 @brcmf_pno_config_sched_scans(ptr noundef %0)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load i64, ptr %1, align 8
  %20 = tail call fastcc i32 @brcmf_pno_remove_request(ptr noundef %7, i64 noundef %19)
  %21 = load i32, ptr %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call fastcc i32 @brcmf_pno_config_sched_scans(ptr noundef %0)
  br label %25

25:                                               ; preds = %23, %18, %11, %10
  %26 = phi i32 [ %16, %23 ], [ %16, %18 ], [ 0, %11 ], [ -28, %10 ]
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_pno_config_sched_scans(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.brcmf_pno_bssid_le, align 8
  %3 = alloca %struct.brcmf_pno_net_param_le, align 4
  %4 = alloca %struct.brcmf_pno_macaddr_le, align 8
  %5 = alloca %struct.brcmf_pno_param_le, align 4
  %6 = alloca %struct.brcmf_pno_config_le, align 4
  %7 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %6) #13
  %8 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %9, i32 0, i32 29
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 306, i32 noundef 9, ptr noundef null) #13
  br label %398

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.brcmf_pno_info, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %17, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %12, 1
  br i1 %21, label %22, label %33

22:                                               ; preds = %22, %15
  %23 = phi i32 [ %30, %22 ], [ %20, %15 ]
  %24 = phi i32 [ %31, %22 ], [ 1, %15 ]
  %25 = getelementptr %struct.brcmf_pno_info, ptr %11, i32 0, i32 1, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %26, i32 0, i32 12
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @gcd(i32 noundef %29, i32 noundef %23) #14
  %31 = add nuw nsw i32 %24, 1
  %32 = icmp eq i32 %31, %12
  br i1 %32, label %33, label %22

33:                                               ; preds = %22, %15
  %34 = phi i32 [ %20, %15 ], [ %30, %22 ]
  %35 = tail call i32 @llvm.umax.i32(i32 %34, i32 10)
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 8) #13
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %398, label %38, !prof !8

38:                                               ; preds = %33
  %39 = extractvalue { i32, i1 } %36, 0
  %40 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %398, label %42

42:                                               ; preds = %38
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %6, i8 0, i32 140, i1 false) #13
  %43 = load i32, ptr %11, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %95

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.brcmf_pno_config_le, ptr %6, i32 0, i32 1
  br label %47

47:                                               ; preds = %93, %45
  %48 = phi i32 [ 0, %45 ], [ %94, %93 ]
  %49 = phi i32 [ 0, %45 ], [ %90, %93 ]
  %50 = getelementptr %struct.brcmf_pno_info, ptr %11, i32 0, i32 1, i32 %49
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %51, i32 0, i32 3
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %47
  %56 = tail call i32 @llvm.usub.sat.i32(i32 64, i32 %48) #13
  br label %57

57:                                               ; preds = %62, %55
  %58 = phi i32 [ %67, %62 ], [ %48, %55 ]
  %59 = phi i32 [ %69, %62 ], [ 0, %55 ]
  %60 = icmp eq i32 %59, %56
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 %58, ptr %46, align 4
  br label %75

62:                                               ; preds = %57
  %63 = getelementptr %struct.cfg80211_sched_scan_request, ptr %51, i32 0, i32 27, i32 %59
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.ieee80211_channel, ptr %64, i32 0, i32 3
  %66 = load i16, ptr %65, align 2
  %67 = add nuw nsw i32 %58, 1
  %68 = getelementptr %struct.brcmf_pno_config_le, ptr %6, i32 0, i32 2, i32 %58
  store i16 %66, ptr %68, align 2
  %69 = add nuw nsw i32 %59, 1
  %70 = load i32, ptr %52, align 8
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %57, label %72

72:                                               ; preds = %62, %47
  %73 = phi i32 [ %48, %47 ], [ %67, %62 ]
  store i32 %73, ptr %46, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72, %61
  %76 = phi i32 [ -28, %61 ], [ %73, %72 ]
  tail call void @kfree(ptr noundef nonnull %40) #13
  br label %398

77:                                               ; preds = %72
  %78 = trunc i32 %73 to i8
  %79 = add i8 %78, -1
  %80 = getelementptr %struct.brcmf_gscan_bucket_config, ptr %40, i32 %49
  store i8 %79, ptr %80, align 8
  %81 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %51, i32 0, i32 12
  %82 = load ptr, ptr %81, align 4
  %83 = load i32, ptr %82, align 4
  %84 = udiv i32 %83, %35
  %85 = trunc i32 %84 to i8
  %86 = getelementptr %struct.brcmf_gscan_bucket_config, ptr %40, i32 %49, i32 1
  %87 = icmp eq i8 %85, 0
  %88 = select i1 %87, i8 1, i8 %85
  store i8 %88, ptr %86, align 1
  %89 = getelementptr %struct.brcmf_gscan_bucket_config, ptr %40, i32 %49, i32 2
  store i8 4, ptr %89, align 2
  %90 = add nuw nsw i32 %49, 1
  %91 = load i32, ptr %11, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %77
  %94 = load i32, ptr %46, align 4
  br label %47

95:                                               ; preds = %77, %42
  %96 = phi i32 [ %43, %42 ], [ %91, %77 ]
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %398, label %98

98:                                               ; preds = %95
  %99 = shl i32 %96, 3
  %100 = add i32 %99, 10
  %101 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %100, i32 noundef 3520) #15
  %102 = icmp eq ptr %101, null
  br i1 %102, label %396, label %103

103:                                              ; preds = %98
  %104 = load ptr, ptr %0, align 4
  %105 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 0) #13
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef null, i32 noundef 0) #13
  br label %109

109:                                              ; preds = %107, %103
  %110 = phi i32 [ %108, %107 ], [ %105, %103 ]
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = tail call i32 @net_ratelimit() #13
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.brcmf_pub, ptr %104, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.wiphy, ptr %117, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.brcmf_pno_clean, i32 noundef %110) #16
  br label %119

119:                                              ; preds = %115, %112
  %120 = tail call i32 @net_ratelimit() #13
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %394, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.wiphy, ptr %124, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.brcmf_pno_config_sched_scans, i32 noundef %110) #16
  br label %394

126:                                              ; preds = %109
  %127 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %128 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %128, i8 0, i64 16, i1 false) #13
  store i32 2, ptr %5, align 4
  %129 = getelementptr inbounds %struct.brcmf_pno_param_le, ptr %5, i32 0, i32 7
  store i8 4, ptr %129, align 2
  %130 = getelementptr inbounds %struct.brcmf_pno_param_le, ptr %5, i32 0, i32 8
  store i8 3, ptr %130, align 1
  %131 = getelementptr inbounds %struct.brcmf_pno_param_le, ptr %5, i32 0, i32 1
  store i32 %35, ptr %131, align 4
  %132 = getelementptr inbounds %struct.brcmf_pno_param_le, ptr %5, i32 0, i32 3
  store i16 72, ptr %132, align 4
  %133 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %5, i32 noundef 24) #13
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %145

136:                                              ; preds = %126
  %137 = call i32 @net_ratelimit() #13
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.brcmf_pub, ptr %127, i32 0, i32 2
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.wiphy, ptr %141, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.brcmf_pno_config, i32 noundef %133) #16
  br label %143

143:                                              ; preds = %139, %136
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  %144 = icmp slt i32 %133, 0
  br i1 %144, label %394, label %145

145:                                              ; preds = %143, %135
  store i32 0, ptr %6, align 4
  %146 = getelementptr inbounds %struct.brcmf_pno_config_le, ptr %6, i32 0, i32 3
  store i32 0, ptr %146, align 4
  %147 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %6, i32 noundef 140) #13
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %377, label %149

149:                                              ; preds = %145
  store i16 2, ptr %101, align 64
  %150 = getelementptr inbounds %struct.brcmf_gscan_config, ptr %101, i32 0, i32 6
  store i8 3, ptr %150, align 1
  %151 = getelementptr inbounds %struct.brcmf_gscan_config, ptr %101, i32 0, i32 2
  store i8 101, ptr %151, align 1
  %152 = getelementptr inbounds %struct.brcmf_gscan_config, ptr %101, i32 0, i32 1
  store i8 8, ptr %152, align 2
  %153 = trunc i32 %96 to i8
  %154 = getelementptr inbounds %struct.brcmf_gscan_config, ptr %101, i32 0, i32 5
  store i8 %153, ptr %154, align 2
  %155 = getelementptr inbounds %struct.brcmf_gscan_config, ptr %101, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %155, ptr nonnull align 64 %40, i32 %99, i1 false)
  %156 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %101, i32 noundef %100) #13
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %377, label %158

158:                                              ; preds = %149
  %159 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store i64 769, ptr %4, align 8, !annotation !9
  %160 = load i32, ptr %11, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %165, label %258

162:                                              ; preds = %165
  %163 = add nuw nsw i32 %166, 1
  %164 = icmp eq i32 %163, %160
  br i1 %164, label %258, label %165

165:                                              ; preds = %162, %158
  %166 = phi i32 [ %163, %162 ], [ 0, %158 ]
  %167 = getelementptr %struct.brcmf_pno_info, ptr %11, i32 0, i32 1, i32 %166
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %168, i32 0, i32 7
  %170 = load i32, ptr %169, align 8
  %171 = and i32 %170, 8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %162, label %173

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %168, i32 0, i32 14
  %175 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %168, i32 0, i32 15
  %176 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, ptr %4, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %176, ptr noundef nonnull align 1 dereferenceable(6) %174, i32 6, i1 false) #13
  %177 = load i8, ptr %175, align 1
  %178 = load i8, ptr %176, align 2
  %179 = and i8 %178, %177
  %180 = call i32 @get_random_u32() #13
  %181 = load i8, ptr %175, align 1
  %182 = zext i8 %181 to i32
  %183 = xor i32 %182, -1
  %184 = and i32 %180, %183
  %185 = trunc i32 %184 to i8
  %186 = or i8 %179, %185
  %187 = getelementptr %struct.cfg80211_sched_scan_request, ptr %168, i32 0, i32 15, i32 1
  %188 = load i8, ptr %187, align 1
  %189 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, ptr %4, i32 0, i32 2, i32 1
  %190 = load i8, ptr %189, align 1
  %191 = and i8 %190, %188
  %192 = call i32 @get_random_u32() #13
  %193 = load i8, ptr %187, align 1
  %194 = zext i8 %193 to i32
  %195 = xor i32 %194, -1
  %196 = and i32 %192, %195
  %197 = trunc i32 %196 to i8
  %198 = or i8 %191, %197
  store i8 %198, ptr %189, align 1
  %199 = getelementptr %struct.cfg80211_sched_scan_request, ptr %168, i32 0, i32 15, i32 2
  %200 = load i8, ptr %199, align 1
  %201 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, ptr %4, i32 0, i32 2, i32 2
  %202 = load i8, ptr %201, align 4
  %203 = and i8 %202, %200
  %204 = call i32 @get_random_u32() #13
  %205 = load i8, ptr %199, align 1
  %206 = zext i8 %205 to i32
  %207 = xor i32 %206, -1
  %208 = and i32 %204, %207
  %209 = trunc i32 %208 to i8
  %210 = or i8 %203, %209
  store i8 %210, ptr %201, align 4
  %211 = getelementptr %struct.cfg80211_sched_scan_request, ptr %168, i32 0, i32 15, i32 3
  %212 = load i8, ptr %211, align 1
  %213 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, ptr %4, i32 0, i32 2, i32 3
  %214 = load i8, ptr %213, align 1
  %215 = and i8 %214, %212
  %216 = call i32 @get_random_u32() #13
  %217 = load i8, ptr %211, align 1
  %218 = zext i8 %217 to i32
  %219 = xor i32 %218, -1
  %220 = and i32 %216, %219
  %221 = trunc i32 %220 to i8
  %222 = or i8 %215, %221
  store i8 %222, ptr %213, align 1
  %223 = getelementptr %struct.cfg80211_sched_scan_request, ptr %168, i32 0, i32 15, i32 4
  %224 = load i8, ptr %223, align 1
  %225 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, ptr %4, i32 0, i32 2, i32 4
  %226 = load i8, ptr %225, align 2
  %227 = and i8 %226, %224
  %228 = call i32 @get_random_u32() #13
  %229 = load i8, ptr %223, align 1
  %230 = zext i8 %229 to i32
  %231 = xor i32 %230, -1
  %232 = and i32 %228, %231
  %233 = trunc i32 %232 to i8
  %234 = or i8 %227, %233
  store i8 %234, ptr %225, align 2
  %235 = getelementptr %struct.cfg80211_sched_scan_request, ptr %168, i32 0, i32 15, i32 5
  %236 = load i8, ptr %235, align 1
  %237 = getelementptr inbounds %struct.brcmf_pno_macaddr_le, ptr %4, i32 0, i32 2, i32 5
  %238 = load i8, ptr %237, align 1
  %239 = and i8 %238, %236
  %240 = call i32 @get_random_u32() #13
  %241 = load i8, ptr %235, align 1
  %242 = zext i8 %241 to i32
  %243 = xor i32 %242, -1
  %244 = and i32 %240, %243
  %245 = trunc i32 %244 to i8
  %246 = or i8 %239, %245
  store i8 %246, ptr %237, align 1
  %247 = and i8 %186, -4
  %248 = or i8 %247, 2
  store i8 %248, ptr %176, align 2
  %249 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %4, i32 noundef 8) #13
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %258, label %251

251:                                              ; preds = %173
  %252 = call i32 @net_ratelimit() #13
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.brcmf_pub, ptr %159, i32 0, i32 2
  %256 = load ptr, ptr %255, align 4
  %257 = getelementptr inbounds %struct.wiphy, ptr %256, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %257, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.brcmf_pno_set_random, i32 noundef %249) #16
  br label %259

258:                                              ; preds = %173, %162, %158
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %261

259:                                              ; preds = %254, %251
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  %260 = icmp slt i32 %249, 0
  br i1 %260, label %377, label %261

261:                                              ; preds = %259, %258
  %262 = load i32, ptr %11, align 4
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %374

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.brcmf_pno_net_param_le, ptr %3, i32 0, i32 4
  %266 = getelementptr inbounds i8, ptr %3, i32 4
  %267 = getelementptr inbounds %struct.brcmf_pno_net_param_le, ptr %3, i32 0, i32 5
  %268 = getelementptr inbounds %struct.brcmf_pno_net_param_le, ptr %3, i32 0, i32 2
  %269 = getelementptr inbounds %struct.brcmf_pno_net_param_le, ptr %3, i32 0, i32 1
  %270 = getelementptr inbounds %struct.brcmf_pno_bssid_le, ptr %2, i32 0, i32 1
  br label %271

271:                                              ; preds = %369, %264
  %272 = phi i32 [ %262, %264 ], [ %370, %369 ]
  %273 = phi i32 [ 0, %264 ], [ %371, %369 ]
  %274 = phi i32 [ 0, %264 ], [ %372, %369 ]
  %275 = getelementptr %struct.brcmf_pno_info, ptr %11, i32 0, i32 1, i32 %274
  %276 = load ptr, ptr %275, align 4
  %277 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %276, i32 0, i32 9
  %278 = load i32, ptr %277, align 8
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %369

280:                                              ; preds = %271
  %281 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %276, i32 0, i32 8
  %282 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %276, i32 0, i32 1
  %283 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %276, i32 0, i32 2
  br label %284

284:                                              ; preds = %362, %280
  %285 = phi i32 [ %273, %280 ], [ %363, %362 ]
  %286 = phi i32 [ 0, %280 ], [ %364, %362 ]
  %287 = load ptr, ptr %281, align 4
  %288 = getelementptr %struct.cfg80211_match_set, ptr %287, i32 %286
  %289 = getelementptr inbounds %struct.cfg80211_ssid, ptr %288, i32 0, i32 1
  %290 = load i8, ptr %289, align 4
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %333, label %292

292:                                              ; preds = %284
  %293 = icmp eq ptr %288, null
  br i1 %293, label %314, label %294

294:                                              ; preds = %292
  %295 = load ptr, ptr %282, align 8
  %296 = icmp eq ptr %295, null
  br i1 %296, label %314, label %297

297:                                              ; preds = %294
  %298 = load i32, ptr %283, align 4
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %314

300:                                              ; preds = %297
  %301 = zext i8 %290 to i32
  br label %302

302:                                              ; preds = %311, %300
  %303 = phi i32 [ 0, %300 ], [ %312, %311 ]
  %304 = getelementptr %struct.cfg80211_ssid, ptr %295, i32 %303, i32 1
  %305 = load i8, ptr %304, align 1
  %306 = icmp eq i8 %290, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %302
  %308 = getelementptr %struct.cfg80211_ssid, ptr %295, i32 %303
  %309 = call i32 @strncmp(ptr noundef nonnull %288, ptr noundef %308, i32 noundef %301) #13
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %316, label %311

311:                                              ; preds = %307, %302
  %312 = add nuw nsw i32 %303, 1
  %313 = icmp eq i32 %312, %298
  br i1 %313, label %314, label %302

314:                                              ; preds = %311, %297, %294, %292
  %315 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  br label %318

316:                                              ; preds = %307
  %317 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  br label %318

318:                                              ; preds = %316, %314
  %319 = phi ptr [ %317, %316 ], [ %315, %314 ]
  %320 = phi i32 [ 4, %316 ], [ 0, %314 ]
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(44) %266, i8 0, i64 44, i1 false) #13
  store i32 -1, ptr %265, align 4
  store i32 0, ptr %267, align 4
  store i32 1, ptr %268, align 4
  store i32 %320, ptr %269, align 4
  %321 = load i8, ptr %289, align 1
  %322 = zext i8 %321 to i32
  store i32 %322, ptr %3, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %266, ptr align 1 %288, i32 %322, i1 false) #13
  %323 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %3, i32 noundef 56) #13
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %325, label %332

325:                                              ; preds = %318
  %326 = call i32 @net_ratelimit() #13
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %332, label %328

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct.brcmf_pub, ptr %319, i32 0, i32 2
  %330 = load ptr, ptr %329, align 4
  %331 = getelementptr inbounds %struct.wiphy, ptr %330, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %331, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.brcmf_pno_add_ssid, i32 noundef %323) #16
  br label %332

332:                                              ; preds = %328, %325, %318
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  br label %333

333:                                              ; preds = %332, %284
  %334 = phi i32 [ %323, %332 ], [ %285, %284 ]
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %359

336:                                              ; preds = %333
  %337 = getelementptr %struct.cfg80211_match_set, ptr %287, i32 %286, i32 1
  %338 = load i32, ptr %337, align 4
  %339 = and i32 %338, 1
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %362

341:                                              ; preds = %336
  %342 = getelementptr i8, ptr %337, i32 4
  %343 = load i16, ptr %342, align 2
  %344 = zext i16 %343 to i32
  %345 = or i32 %338, %344
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %362, label %347

347:                                              ; preds = %341
  %348 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(6) %2, ptr noundef align 1 dereferenceable(6) %337, i32 6, i1 false) #13
  store i16 0, ptr %270, align 2
  %349 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %2, i32 noundef 8) #13
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %358

351:                                              ; preds = %347
  %352 = call i32 @net_ratelimit() #13
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %358, label %354

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct.brcmf_pub, ptr %348, i32 0, i32 2
  %356 = load ptr, ptr %355, align 4
  %357 = getelementptr inbounds %struct.wiphy, ptr %356, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %357, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.brcmf_pno_add_bssid, i32 noundef %349) #16
  br label %358

358:                                              ; preds = %354, %351, %347
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %359

359:                                              ; preds = %358, %333
  %360 = phi i32 [ %334, %333 ], [ %349, %358 ]
  %361 = icmp slt i32 %360, 0
  br i1 %361, label %377, label %362

362:                                              ; preds = %359, %341, %336
  %363 = phi i32 [ %360, %359 ], [ 0, %341 ], [ 0, %336 ]
  %364 = add nuw nsw i32 %286, 1
  %365 = load i32, ptr %277, align 8
  %366 = icmp slt i32 %364, %365
  br i1 %366, label %284, label %367

367:                                              ; preds = %362
  %368 = load i32, ptr %11, align 4
  br label %369

369:                                              ; preds = %367, %271
  %370 = phi i32 [ %272, %271 ], [ %368, %367 ]
  %371 = phi i32 [ %273, %271 ], [ %363, %367 ]
  %372 = add nuw nsw i32 %274, 1
  %373 = icmp slt i32 %372, %370
  br i1 %373, label %271, label %374

374:                                              ; preds = %369, %261
  %375 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 1) #13
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %377, label %394

377:                                              ; preds = %374, %359, %259, %149, %145
  %378 = phi i32 [ %375, %374 ], [ %249, %259 ], [ %156, %149 ], [ %147, %145 ], [ %360, %359 ]
  %379 = load ptr, ptr %0, align 4
  %380 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 0) #13
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %377
  %383 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef null, i32 noundef 0) #13
  br label %384

384:                                              ; preds = %382, %377
  %385 = phi i32 [ %383, %382 ], [ %380, %377 ]
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %394

387:                                              ; preds = %384
  %388 = call i32 @net_ratelimit() #13
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %394, label %390

390:                                              ; preds = %387
  %391 = getelementptr inbounds %struct.brcmf_pub, ptr %379, i32 0, i32 2
  %392 = load ptr, ptr %391, align 4
  %393 = getelementptr inbounds %struct.wiphy, ptr %392, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %393, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.brcmf_pno_clean, i32 noundef %385) #16
  br label %394

394:                                              ; preds = %390, %387, %384, %374, %143, %122, %119
  %395 = phi i32 [ %110, %122 ], [ %110, %119 ], [ %133, %143 ], [ %375, %374 ], [ %378, %384 ], [ %378, %387 ], [ %378, %390 ]
  call void @kfree(ptr noundef nonnull %101) #13
  br label %396

396:                                              ; preds = %394, %98
  %397 = phi i32 [ %395, %394 ], [ -12, %98 ]
  call void @kfree(ptr noundef nonnull %40) #13
  br label %398

398:                                              ; preds = %396, %95, %75, %38, %33, %14
  %399 = phi i32 [ %397, %396 ], [ %96, %95 ], [ -12, %33 ], [ -12, %38 ], [ %76, %75 ], [ -61, %14 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %6) #13
  ret i32 %399
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_pno_remove_request(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.brcmf_pno_info, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %14, %6
  %9 = phi i32 [ %15, %14 ], [ 0, %6 ]
  %10 = getelementptr %struct.brcmf_pno_info, ptr %0, i32 0, i32 1, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, %1
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = add nuw nsw i32 %9, 1
  %16 = icmp eq i32 %15, %4
  br i1 %16, label %20, label %8

17:                                               ; preds = %8, %6
  %18 = phi i32 [ 0, %6 ], [ %9, %8 ]
  %19 = icmp eq i32 %18, %4
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %17, %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 9, ptr noundef nonnull @.str.17) #13
  br label %38

21:                                               ; preds = %17
  %22 = add i32 %4, -1
  store i32 %22, ptr %0, align 4
  %23 = icmp eq i32 %22, 0
  %24 = icmp eq i32 %18, %22
  %25 = select i1 %23, i1 true, i1 %24
  %26 = add i32 %4, -2
  %27 = icmp sgt i32 %18, %26
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %29, %21
  %30 = phi i32 [ %31, %29 ], [ %18, %21 ]
  %31 = add i32 %30, 1
  %32 = getelementptr %struct.brcmf_pno_info, ptr %0, i32 0, i32 1, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr %struct.brcmf_pno_info, ptr %0, i32 0, i32 1, i32 %30
  store ptr %33, ptr %34, align 4
  %35 = load i32, ptr %0, align 4
  %36 = add i32 %35, -1
  %37 = icmp sgt i32 %31, %36
  br i1 %37, label %38, label %29

38:                                               ; preds = %29, %21, %20, %2
  %39 = phi i32 [ 0, %2 ], [ -2, %20 ], [ 0, %21 ], [ 0, %29 ]
  tail call void @mutex_unlock(ptr noundef %3) #13
  ret i32 %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_pno_stop_sched_scan(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %5, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %2
  %11 = tail call fastcc i32 @brcmf_pno_remove_request(ptr noundef %7, i64 noundef %1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 4
  %15 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 0) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef null, i32 noundef 0) #13
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i32 [ %18, %17 ], [ %15, %13 ]
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = tail call i32 @net_ratelimit() #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.brcmf_pno_clean, i32 noundef %20) #16
  br label %29

29:                                               ; preds = %25, %22, %19
  %30 = load i32, ptr %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call fastcc i32 @brcmf_pno_config_sched_scans(ptr noundef %0)
  br label %34

34:                                               ; preds = %32, %29, %10, %2
  %35 = phi i32 [ 0, %2 ], [ %11, %10 ], [ 0, %32 ], [ 0, %29 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_pno_attach(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 88) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 29
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.brcmf_pno_info, ptr %3, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @brcmf_pno_attach.__key) #13
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_pno_detach(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 537, i32 noundef 9, ptr noundef null) #13
  br label %7

7:                                                ; preds = %6, %1
  tail call void @kfree(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @brcmf_pno_wiphy_params(ptr nocapture noundef writeonly %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = select i1 %1, i8 16, i8 1
  %4 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 19
  store i8 %3, ptr %4, align 1
  %5 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 20
  store i8 16, ptr %5, align 2
  %6 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 21
  store i8 16, ptr %6, align 1
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 23
  store i16 2048, ptr %7, align 2
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 25
  store i32 508, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @brcmf_pno_find_reqid_by_bucket(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.brcmf_pno_info, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = load i32, ptr %0, align 4
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr %struct.brcmf_pno_info, ptr %0, i32 0, i32 1, i32 %1
  %8 = load ptr, ptr %7, align 4
  %9 = load i64, ptr %8, align 8
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i64 [ %9, %6 ], [ 0, %2 ]
  tail call void @mutex_unlock(ptr noundef %3) #13
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_pno_get_bucket_map(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.brcmf_pno_info, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = load i32, ptr %0, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %58

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.brcmf_pno_net_info_le, ptr %1, i32 0, i32 2
  %8 = getelementptr inbounds %struct.brcmf_pno_net_info_le, ptr %1, i32 0, i32 3
  br label %9

9:                                                ; preds = %54, %6
  %10 = phi i32 [ 0, %6 ], [ %56, %54 ]
  %11 = phi i32 [ 0, %6 ], [ %55, %54 ]
  %12 = getelementptr %struct.brcmf_pno_info, ptr %0, i32 0, i32 1, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %13, i32 0, i32 9
  %15 = load i32, ptr %14, align 8
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %13, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = load i8, ptr %7, align 1
  %21 = zext i8 %20 to i32
  br label %22

22:                                               ; preds = %51, %17
  %23 = phi i32 [ 0, %17 ], [ %52, %51 ]
  %24 = getelementptr %struct.cfg80211_match_set, ptr %19, i32 %23
  %25 = getelementptr inbounds %struct.cfg80211_ssid, ptr %24, i32 0, i32 1
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, %20
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = tail call i32 @bcmp(ptr %24, ptr %8, i32 %21)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = shl nuw i32 1, %10
  %33 = or i32 %32, %11
  br label %54

34:                                               ; preds = %28, %22
  %35 = getelementptr %struct.cfg80211_match_set, ptr %19, i32 %23, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = getelementptr i8, ptr %35, i32 4
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = or i32 %36, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %35, ptr noundef dereferenceable(6) %1, i32 6)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = shl nuw i32 1, %10
  %50 = or i32 %49, %11
  br label %54

51:                                               ; preds = %45, %39, %34
  %52 = add nuw nsw i32 %23, 1
  %53 = icmp eq i32 %52, %15
  br i1 %53, label %54, label %22

54:                                               ; preds = %51, %48, %31, %9
  %55 = phi i32 [ %50, %48 ], [ %33, %31 ], [ %11, %9 ], [ %11, %51 ]
  %56 = add nuw nsw i32 %10, 1
  %57 = icmp eq i32 %56, %4
  br i1 %57, label %58, label %9

58:                                               ; preds = %54, %2
  %59 = phi i32 [ 0, %2 ], [ %55, %54 ]
  tail call void @mutex_unlock(ptr noundef %3) #13
  ret i32 %59
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

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
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
