; ModuleID = '/llk/IR/net/mac80211/he.c_pt.bc'
source_filename = "../net/mac80211/he.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.133, [17 x i16], %struct.anon.134, %struct.anon.135, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.sk_buff_head = type { %union.anon.119, i32, %struct.spinlock }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { ptr, ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.anon.133 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.134 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.135 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.144, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.144 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.122, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.122 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.123] }
%struct.anon.123 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.115 }>
%struct.anon.115 = type { ptr, i32 }
%struct.ieee80211_he_operation = type <{ i32, i16, [0 x i8] }>
%struct.ieee80211_he_spr = type { i8, [0 x i8] }

@.str = private unnamed_addr constant [23 x i8] c"include/net/cfg80211.h\00", align 1
@switch.table.ieee80211_he_cap_ie_to_sta_he_cap = private unnamed_addr constant [4 x i32] [i32 2, i32 1, i32 2, i32 3], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_he_cap_ie_to_sta_he_cap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i8 noundef zeroext %3, ptr noundef readonly %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(55) %7, i8 0, i32 55, i1 false)
  %8 = icmp eq ptr %2, null
  br i1 %8, label %330, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 3
  %13 = load i8, ptr %12, align 2, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  switch i32 %11, label %17 [
    i32 2, label %21
    i32 3, label %16
  ]

16:                                               ; preds = %15
  br label %21

17:                                               ; preds = %15, %9
  %18 = trunc i32 %11 to i8
  %19 = and i32 %11, 255
  %20 = icmp ugt i8 %18, 11
  br i1 %20, label %31, label %21, !prof !9

21:                                               ; preds = %17, %16, %15
  %22 = phi i32 [ %19, %17 ], [ 8, %15 ], [ 9, %16 ]
  %23 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 9
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = icmp eq i16 %24, 0
  br i1 %26, label %330, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = shl nuw i32 1, %22
  br label %35

31:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 510, i32 noundef 9, ptr noundef null) #7
  br label %330

32:                                               ; preds = %35
  %33 = add nuw nsw i32 %36, 1
  %34 = icmp eq i32 %33, %25
  br i1 %34, label %330, label %35

35:                                               ; preds = %32, %27
  %36 = phi i32 [ 0, %27 ], [ %33, %32 ]
  %37 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %29, i32 %36
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = and i32 %30, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %32, label %42

42:                                               ; preds = %35
  %43 = icmp eq ptr %37, null
  br i1 %43, label %330, label %44

44:                                               ; preds = %42
  %45 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %29, i32 %36, i32 1
  %46 = load i8, ptr %45, align 2, !range !8
  %47 = icmp eq i8 %46, 0
  %48 = icmp eq ptr %45, null
  %49 = or i1 %48, %47
  br i1 %49, label %330, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %29, i32 0, i32 1, i32 1, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %29, i32 0, i32 1, i32 2
  %54 = load i16, ptr %53, align 2
  %55 = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %29, i32 0, i32 1, i32 2, i32 1
  %56 = load i16, ptr %55, align 2
  %57 = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %29, i32 0, i32 1, i32 2, i32 2
  %58 = load i16, ptr %57, align 2
  %59 = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %29, i32 0, i32 1, i32 2, i32 3
  %60 = load i16, ptr %59, align 2
  %61 = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %29, i32 0, i32 1, i32 2, i32 4
  %62 = load i16, ptr %61, align 2
  %63 = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %29, i32 0, i32 1, i32 2, i32 5
  %64 = load i16, ptr %63, align 2
  %65 = getelementptr inbounds %struct.ieee80211_he_cap_elem, ptr %2, i32 0, i32 1
  %66 = load i8, ptr %65, align 1
  %67 = and i8 %66, 8
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, i8 4, i8 8
  %70 = and i8 %66, 16
  %71 = icmp eq i8 %70, 0
  %72 = add nuw nsw i8 %69, 4
  %73 = select i1 %71, i8 %69, i8 %72
  %74 = zext i8 %73 to i32
  %75 = add nuw nsw i32 %74, 17
  %76 = getelementptr i8, ptr %2, i32 %75
  %77 = getelementptr %struct.ieee80211_he_cap_elem, ptr %2, i32 0, i32 1, i32 6
  %78 = load i8, ptr %77, align 1
  %79 = icmp sgt i8 %78, -1
  br i1 %79, label %94, label %80

80:                                               ; preds = %50
  %81 = load i8, ptr %76, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 120
  %84 = tail call i32 @__sw_hweight8(i32 noundef %83) #7
  %85 = and i32 %82, 7
  %86 = mul nuw nsw i32 %85, 6
  %87 = add nuw nsw i32 %86, 6
  %88 = mul i32 %84, %87
  %89 = add i32 %88, 7
  %90 = and i32 %89, 255
  %91 = add nuw nsw i32 %90, 7
  %92 = lshr i32 %91, 3
  %93 = trunc i32 %92 to i8
  br label %94

94:                                               ; preds = %80, %50
  %95 = phi i8 [ %93, %80 ], [ 0, %50 ]
  %96 = zext i8 %95 to i32
  %97 = trunc i32 %75 to i8
  %98 = add nuw nsw i8 %95, %97
  %99 = icmp ugt i8 %98, %3
  br i1 %99, label %330, label %100

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 6, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(17) %101, ptr noundef nonnull align 1 dereferenceable(17) %2, i32 17, i1 false)
  %102 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 6, i32 2
  %103 = getelementptr i8, ptr %2, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %102, ptr noundef align 1 %103, i32 %74, i1 false)
  %104 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 6, i32 1, i32 1
  %105 = getelementptr %struct.sta_info, ptr %5, i32 0, i32 46, i32 6, i32 1, i32 1, i32 6
  %106 = load i8, ptr %105, align 1
  %107 = icmp sgt i8 %106, -1
  br i1 %107, label %110, label %108

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 6, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %109, ptr align 1 %76, i32 %96, i1 false)
  br label %110

110:                                              ; preds = %108, %100
  store i8 1, ptr %7, align 1
  %111 = tail call i32 @ieee80211_sta_cap_rx_bw(ptr noundef %5) #7
  %112 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 39
  store i32 %111, ptr %112, align 4
  %113 = tail call i32 @ieee80211_sta_cur_vht_bw(ptr noundef %5) #7
  %114 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 14
  store i32 %113, ptr %114, align 8
  %115 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 3
  %118 = icmp ne ptr %4, null
  %119 = and i1 %118, %117
  br i1 %119, label %120, label %148

120:                                              ; preds = %110
  %121 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 6
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %122, i32 0, i32 58
  %124 = load i32, ptr %123, align 8
  %125 = add i32 %124, -3
  %126 = icmp ult i32 %125, 2
  br i1 %126, label %127, label %135

127:                                              ; preds = %120
  %128 = load i16, ptr %4, align 1
  %129 = lshr i16 %128, 9
  %130 = and i16 %129, 3
  %131 = xor i16 %130, 2
  %132 = zext i16 %131 to i32
  %133 = getelementptr inbounds [4 x i32], ptr @switch.table.ieee80211_he_cap_ie_to_sta_he_cap, i32 0, i32 %132
  %134 = load i32, ptr %133, align 4
  br label %135

135:                                              ; preds = %127, %120
  %136 = phi i32 [ 1, %120 ], [ %134, %127 ]
  %137 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 15
  store i32 %136, ptr %137, align 4
  %138 = load i16, ptr %4, align 1
  %139 = lshr i16 %138, 6
  %140 = trunc i16 %139 to i2
  %141 = icmp eq i2 %140, 1
  %142 = select i1 %141, i16 7991, i16 3895
  %143 = icmp eq i2 %140, -2
  %144 = select i1 %143, i16 11454, i16 %142
  %145 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 21
  store i16 %144, ptr %145, align 8
  %146 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 7
  %147 = load i16, ptr %4, align 1
  store i16 %147, ptr %146, align 1
  br label %148

148:                                              ; preds = %135, %110
  %149 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 6, i32 2, i32 1
  %150 = load i16, ptr %149, align 2
  %151 = zext i16 %54 to i32
  %152 = zext i16 %56 to i32
  %153 = load i16, ptr %102, align 2
  br label %154

154:                                              ; preds = %154, %148
  %155 = phi i16 [ %153, %148 ], [ %189, %154 ]
  %156 = phi i16 [ %150, %148 ], [ %195, %154 ]
  %157 = phi i32 [ 0, %148 ], [ %196, %154 ]
  %158 = shl nuw nsw i32 %157, 1
  %159 = lshr i32 %151, %158
  %160 = trunc i32 %159 to i16
  %161 = and i16 %160, 3
  %162 = lshr i32 %152, %158
  %163 = trunc i32 %162 to i16
  %164 = and i16 %163, 3
  %165 = zext i16 %155 to i32
  %166 = lshr i32 %165, %158
  %167 = trunc i32 %166 to i16
  %168 = and i16 %167, 3
  %169 = zext i16 %156 to i32
  %170 = lshr i32 %169, %158
  %171 = trunc i32 %170 to i16
  %172 = and i16 %171, 3
  %173 = icmp eq i16 %172, 3
  %174 = icmp eq i16 %161, 3
  %175 = select i1 %173, i1 true, i1 %174
  %176 = tail call i16 @llvm.umin.i16(i16 %161, i16 %172) #7
  %177 = icmp eq i16 %168, 3
  %178 = icmp eq i16 %164, 3
  %179 = select i1 %177, i1 true, i1 %178
  %180 = tail call i16 @llvm.umin.i16(i16 %164, i16 %168) #7
  %181 = shl nuw nsw i32 3, %158
  %182 = trunc i32 %181 to i16
  %183 = xor i16 %182, -1
  %184 = and i16 %155, %183
  %185 = zext i16 %180 to i32
  %186 = select i1 %179, i32 3, i32 %185
  %187 = shl nuw nsw i32 %186, %158
  %188 = trunc i32 %187 to i16
  %189 = or i16 %184, %188
  %190 = and i16 %156, %183
  %191 = zext i16 %176 to i32
  %192 = select i1 %175, i32 3, i32 %191
  %193 = shl nuw nsw i32 %192, %158
  %194 = trunc i32 %193 to i16
  %195 = or i16 %190, %194
  %196 = add nuw nsw i32 %157, 1
  %197 = icmp eq i32 %196, 8
  br i1 %197, label %198, label %154

198:                                              ; preds = %154
  store i16 %189, ptr %102, align 2
  store i16 %195, ptr %149, align 2
  %199 = and i8 %52, 8
  %200 = icmp eq i8 %199, 0
  %201 = load i8, ptr %104, align 1
  %202 = and i8 %201, 8
  %203 = icmp eq i8 %202, 0
  %204 = select i1 %203, i1 true, i1 %200
  br i1 %204, label %256, label %205

205:                                              ; preds = %198
  %206 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 6, i32 2, i32 2
  %207 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 6, i32 2, i32 3
  %208 = load i16, ptr %207, align 2
  %209 = zext i16 %58 to i32
  %210 = zext i16 %60 to i32
  %211 = load i16, ptr %206, align 2
  br label %212

212:                                              ; preds = %212, %205
  %213 = phi i16 [ %211, %205 ], [ %247, %212 ]
  %214 = phi i16 [ %208, %205 ], [ %253, %212 ]
  %215 = phi i32 [ 0, %205 ], [ %254, %212 ]
  %216 = shl nuw nsw i32 %215, 1
  %217 = lshr i32 %209, %216
  %218 = trunc i32 %217 to i16
  %219 = and i16 %218, 3
  %220 = lshr i32 %210, %216
  %221 = trunc i32 %220 to i16
  %222 = and i16 %221, 3
  %223 = zext i16 %213 to i32
  %224 = lshr i32 %223, %216
  %225 = trunc i32 %224 to i16
  %226 = and i16 %225, 3
  %227 = zext i16 %214 to i32
  %228 = lshr i32 %227, %216
  %229 = trunc i32 %228 to i16
  %230 = and i16 %229, 3
  %231 = icmp eq i16 %230, 3
  %232 = icmp eq i16 %219, 3
  %233 = select i1 %231, i1 true, i1 %232
  %234 = tail call i16 @llvm.umin.i16(i16 %219, i16 %230) #7
  %235 = icmp eq i16 %226, 3
  %236 = icmp eq i16 %222, 3
  %237 = select i1 %235, i1 true, i1 %236
  %238 = tail call i16 @llvm.umin.i16(i16 %222, i16 %226) #7
  %239 = shl nuw nsw i32 3, %216
  %240 = trunc i32 %239 to i16
  %241 = xor i16 %240, -1
  %242 = and i16 %213, %241
  %243 = zext i16 %238 to i32
  %244 = select i1 %237, i32 3, i32 %243
  %245 = shl nuw nsw i32 %244, %216
  %246 = trunc i32 %245 to i16
  %247 = or i16 %242, %246
  %248 = and i16 %214, %241
  %249 = zext i16 %234 to i32
  %250 = select i1 %233, i32 3, i32 %249
  %251 = shl nuw nsw i32 %250, %216
  %252 = trunc i32 %251 to i16
  %253 = or i16 %248, %252
  %254 = add nuw nsw i32 %215, 1
  %255 = icmp eq i32 %254, 8
  br i1 %255, label %263, label %212

256:                                              ; preds = %198
  %257 = xor i1 %200, true
  %258 = select i1 %203, i1 true, i1 %257
  br i1 %258, label %264, label %259

259:                                              ; preds = %256
  %260 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 6, i32 2, i32 2
  store i16 -1, ptr %260, align 2
  %261 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 6, i32 2, i32 3
  store i16 -1, ptr %261, align 2
  %262 = and i8 %201, -9
  store i8 %262, ptr %104, align 1
  br label %264

263:                                              ; preds = %212
  store i16 %247, ptr %206, align 2
  store i16 %253, ptr %207, align 2
  br label %264

264:                                              ; preds = %263, %259, %256
  %265 = phi i8 [ %201, %263 ], [ %201, %256 ], [ %262, %259 ]
  %266 = and i8 %52, 16
  %267 = icmp eq i8 %266, 0
  %268 = and i8 %265, 16
  %269 = icmp eq i8 %268, 0
  %270 = select i1 %269, i1 true, i1 %267
  br i1 %270, label %322, label %271

271:                                              ; preds = %264
  %272 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 6, i32 2, i32 4
  %273 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 6, i32 2, i32 5
  %274 = load i16, ptr %273, align 2
  %275 = zext i16 %62 to i32
  %276 = zext i16 %64 to i32
  %277 = load i16, ptr %272, align 2
  br label %278

278:                                              ; preds = %278, %271
  %279 = phi i16 [ %277, %271 ], [ %313, %278 ]
  %280 = phi i16 [ %274, %271 ], [ %319, %278 ]
  %281 = phi i32 [ 0, %271 ], [ %320, %278 ]
  %282 = shl nuw nsw i32 %281, 1
  %283 = lshr i32 %275, %282
  %284 = trunc i32 %283 to i16
  %285 = and i16 %284, 3
  %286 = lshr i32 %276, %282
  %287 = trunc i32 %286 to i16
  %288 = and i16 %287, 3
  %289 = zext i16 %279 to i32
  %290 = lshr i32 %289, %282
  %291 = trunc i32 %290 to i16
  %292 = and i16 %291, 3
  %293 = zext i16 %280 to i32
  %294 = lshr i32 %293, %282
  %295 = trunc i32 %294 to i16
  %296 = and i16 %295, 3
  %297 = icmp eq i16 %296, 3
  %298 = icmp eq i16 %285, 3
  %299 = select i1 %297, i1 true, i1 %298
  %300 = tail call i16 @llvm.umin.i16(i16 %285, i16 %296) #7
  %301 = icmp eq i16 %292, 3
  %302 = icmp eq i16 %288, 3
  %303 = select i1 %301, i1 true, i1 %302
  %304 = tail call i16 @llvm.umin.i16(i16 %288, i16 %292) #7
  %305 = shl nuw nsw i32 3, %282
  %306 = trunc i32 %305 to i16
  %307 = xor i16 %306, -1
  %308 = and i16 %279, %307
  %309 = zext i16 %304 to i32
  %310 = select i1 %303, i32 3, i32 %309
  %311 = shl nuw nsw i32 %310, %282
  %312 = trunc i32 %311 to i16
  %313 = or i16 %308, %312
  %314 = and i16 %280, %307
  %315 = zext i16 %300 to i32
  %316 = select i1 %299, i32 3, i32 %315
  %317 = shl nuw nsw i32 %316, %282
  %318 = trunc i32 %317 to i16
  %319 = or i16 %314, %318
  %320 = add nuw nsw i32 %281, 1
  %321 = icmp eq i32 %320, 8
  br i1 %321, label %329, label %278

322:                                              ; preds = %264
  %323 = xor i1 %267, true
  %324 = select i1 %269, i1 true, i1 %323
  br i1 %324, label %330, label %325

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 6, i32 2, i32 4
  store i16 -1, ptr %326, align 2
  %327 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 46, i32 6, i32 2, i32 5
  store i16 -1, ptr %327, align 2
  %328 = and i8 %265, -17
  store i8 %328, ptr %104, align 1
  br label %330

329:                                              ; preds = %278
  store i16 %313, ptr %272, align 2
  store i16 %319, ptr %273, align 2
  br label %330

330:                                              ; preds = %329, %325, %322, %94, %44, %42, %32, %31, %21, %6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_cap_rx_bw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_cur_vht_bw(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ieee80211_he_op_ie_to_bss_conf(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.ieee80211_vif, ptr %0, i32 0, i32 1, i32 56
  store i64 0, ptr %3, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 1
  store i32 %6, ptr %3, align 4
  %7 = getelementptr inbounds %struct.ieee80211_he_operation, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.ieee80211_vif, ptr %0, i32 0, i32 1, i32 56, i32 1
  store i16 %8, ptr %9, align 4
  br label %10

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ieee80211_he_spr_ie_to_bss_conf(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.ieee80211_vif, ptr %0, i32 0, i32 1, i32 57
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(21) %3, i8 0, i32 21, i1 false)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %1, align 1
  %7 = and i8 %6, 8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = and i8 %6, 4
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.ieee80211_he_spr, ptr %1, i32 0, i32 1
  %13 = getelementptr %struct.ieee80211_he_spr, ptr %1, i32 2
  %14 = select i1 %11, ptr %12, ptr %13
  %15 = getelementptr i8, ptr %14, i32 1
  %16 = load i8, ptr %14, align 1
  %17 = getelementptr inbounds %struct.ieee80211_vif, ptr %0, i32 0, i32 1, i32 57, i32 4
  store i8 %16, ptr %17, align 1
  %18 = load i8, ptr %15, align 1
  %19 = getelementptr inbounds %struct.ieee80211_vif, ptr %0, i32 0, i32 1, i32 57, i32 3
  store i8 %18, ptr %19, align 1
  store i8 1, ptr %3, align 1
  br label %20

20:                                               ; preds = %9, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
