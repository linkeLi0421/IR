; ModuleID = '/llk/IR/net/mac80211/wpa.c_pt.bc'
source_filename = "../net/mac80211/wpa.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ieee80211_tx_data = type { ptr, %struct.sk_buff_head, ptr, ptr, ptr, ptr, %struct.ieee80211_tx_rate, i32 }
%struct.sk_buff_head = type { %union.anon.114, i32, %struct.spinlock }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.ieee80211_key = type { ptr, ptr, ptr, %struct.list_head, i32, %union.anon.132, i32, %struct.ieee80211_key_conf }
%struct.list_head = type { ptr, ptr }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { %struct.spinlock, %struct.tkip_ctx, [16 x %struct.tkip_ctx_rx], i32 }
%struct.tkip_ctx = type { [5 x i16], i32, i32 }
%struct.tkip_ctx_rx = type { %struct.tkip_ctx, i32, i16 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.116, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.116 = type { i32, i16 }
%struct.ieee80211_rx_data = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %union.anon.188 }
%union.anon.188 = type { %struct.anon.189 }
%struct.anon.189 = type { i32, i16 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.141, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.141 = type { %struct.ieee80211_if_mesh }
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
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.118, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.118 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.119] }
%struct.anon.119 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rhltable = type { %struct.rhashtable }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.128, i32 }
%union.anon.128 = type { ptr }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.129, [17 x i16], %struct.anon.130, %struct.anon.131, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.anon.129 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.130 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.131 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
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
%struct.ieee80211_mmie = type { i8, i8, i16, [6 x i8], [8 x i8] }
%struct.ieee80211_mmie_16 = type { i8, i8, i16, [6 x i8], [16 x i8] }
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [19 x i8] c"net/mac80211/wpa.c\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"mmic: not enough head/tail (%d/%d,%d/%d)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_tx_h_michael_mic_add(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %98, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ieee80211_key, ptr %7, i32 0, i32 7, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 1027074
  br i1 %12, label %13, label %98

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = icmp ult i32 %15, 24
  br i1 %16, label %98, label %17

17:                                               ; preds = %13
  %18 = load i16, ptr %5, align 2
  %19 = and i16 %18, 76
  %20 = icmp eq i16 %19, 8
  br i1 %20, label %21, label %98

21:                                               ; preds = %17
  %22 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %18) #10
  %23 = icmp ult i32 %15, %22
  br i1 %23, label %98, label %24

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %5, i32 %22
  %26 = sub i32 %15, %22
  %27 = load i32, ptr %3, align 8
  %28 = and i32 %27, 67108864
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 28
  br i1 %29, label %32, label %31, !prof !8

31:                                               ; preds = %24
  store ptr null, ptr %30, align 4
  br label %51

32:                                               ; preds = %24
  %33 = load ptr, ptr %30, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %32
  %36 = and i32 %27, 1073741824
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr %struct.ieee80211_hw, ptr %40, i32 0, i32 4, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 64
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %38, %35
  %46 = load ptr, ptr %6, align 4
  %47 = getelementptr inbounds %struct.ieee80211_key, ptr %46, i32 0, i32 7, i32 6
  %48 = load i16, ptr %47, align 8
  %49 = and i16 %48, 260
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %98, label %51

51:                                               ; preds = %45, %38, %32, %31
  %52 = phi i32 [ 8, %45 ], [ 8, %38 ], [ 12, %32 ], [ 12, %31 ]
  %53 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 14
  %60 = load ptr, ptr %59, align 8
  %61 = ptrtoint ptr %58 to i32
  %62 = ptrtoint ptr %60 to i32
  %63 = sub i32 %61, %62
  %64 = icmp slt i32 %63, %52
  %65 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %66 = load ptr, ptr %65, align 8
  %67 = ptrtoint ptr %5 to i32
  %68 = ptrtoint ptr %66 to i32
  %69 = sub i32 %67, %68
  %70 = icmp ult i32 %69, 8
  %71 = select i1 %64, i1 true, i1 %70
  br i1 %71, label %78, label %81, !prof !9

72:                                               ; preds = %51
  %73 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %74 = load ptr, ptr %73, align 8
  %75 = ptrtoint ptr %5 to i32
  %76 = ptrtoint ptr %74 to i32
  %77 = sub i32 %75, %76
  br label %78

78:                                               ; preds = %72, %56
  %79 = phi i32 [ %77, %72 ], [ %69, %56 ]
  %80 = phi i32 [ 0, %72 ], [ %63, %56 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %79, i32 noundef 8, i32 noundef %80, i32 noundef %52) #11
  br label %98

81:                                               ; preds = %56
  %82 = tail call ptr @skb_put(ptr noundef %2, i32 noundef 8) #11
  %83 = load ptr, ptr %6, align 4
  %84 = getelementptr inbounds %struct.ieee80211_key, ptr %83, i32 0, i32 7, i32 6
  %85 = load i16, ptr %84, align 8
  %86 = and i16 %85, 256
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  store i64 0, ptr %82, align 1
  br label %98

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.ieee80211_key, ptr %83, i32 0, i32 7, i32 8
  %91 = getelementptr [0 x i8], ptr %90, i32 0, i32 16
  tail call void @michael_mic(ptr noundef %91, ptr noundef %5, ptr noundef %25, i32 noundef %26, ptr noundef %82) #11
  %92 = load i32, ptr %3, align 8
  %93 = and i32 %92, 67108864
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95, !prof !8

95:                                               ; preds = %89
  %96 = load i8, ptr %82, align 1
  %97 = add i8 %96, 1
  store i8 %97, ptr %82, align 1
  br label %98

98:                                               ; preds = %95, %89, %88, %78, %45, %21, %17, %13, %9, %1
  %99 = phi i32 [ 1, %78 ], [ 0, %88 ], [ 0, %17 ], [ 0, %13 ], [ 0, %9 ], [ 0, %1 ], [ 1, %21 ], [ 0, %45 ], [ 0, %95 ], [ 0, %89 ]
  ret i32 %99
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @michael_mic(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_rx_h_michael_mic_verify(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store i64 0, ptr %2, align 8, !annotation !10
  %3 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, 76
  %9 = icmp eq i16 %8, 8
  br i1 %9, label %10, label %127

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 24
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 24
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %10
  %16 = and i32 %12, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %107

18:                                               ; preds = %15
  %19 = and i32 %12, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %127

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %127, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ieee80211_key, ptr %23, i32 0, i32 7, i32 1
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 1027074
  br i1 %28, label %88, label %127

29:                                               ; preds = %10
  %30 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %127, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ieee80211_key, ptr %31, i32 0, i32 7, i32 1
  %35 = load i32, ptr %34, align 8
  %36 = icmp ne i32 %35, 1027074
  %37 = and i32 %12, 2
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %127, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %42, i32 0, i32 58
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.ieee80211_key, ptr %31, i32 0, i32 7, i32 5
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %127

50:                                               ; preds = %46, %40
  %51 = and i32 %12, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %101

53:                                               ; preds = %50
  %54 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %7) #10
  %55 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 5
  %56 = load i32, ptr %55, align 8
  %57 = add i32 %54, 8
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %127, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = tail call ptr @__pskb_pull_tail(ptr noundef %4, i32 noundef %61) #11
  %65 = icmp eq ptr %64, null
  br i1 %65, label %127, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %5, align 4
  %68 = load i32, ptr %55, align 8
  %69 = load ptr, ptr %30, align 4
  br label %70

70:                                               ; preds = %66, %59
  %71 = phi ptr [ %69, %66 ], [ %31, %59 ]
  %72 = phi i32 [ %68, %66 ], [ %56, %59 ]
  %73 = phi ptr [ %67, %66 ], [ %6, %59 ]
  %74 = getelementptr i8, ptr %73, i32 %54
  %75 = sub i32 %72, %54
  %76 = add i32 %75, -8
  %77 = getelementptr inbounds %struct.ieee80211_key, ptr %71, i32 0, i32 7, i32 8
  %78 = getelementptr [0 x i8], ptr %77, i32 0, i32 24
  call void @michael_mic(ptr noundef %78, ptr noundef %73, ptr noundef %74, i32 noundef %76, ptr noundef nonnull %2) #11
  %79 = getelementptr i8, ptr %74, i32 %76
  %80 = call i32 @__crypto_memneq(ptr noundef nonnull %2, ptr noundef %79, i32 noundef 8) #11
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %70
  %83 = load ptr, ptr %30, align 4
  br label %101

84:                                               ; preds = %70
  %85 = load i32, ptr %55, align 8
  %86 = add i32 %85, -8
  call void @skb_trim(ptr noundef %4, i32 noundef %86) #11
  %87 = load ptr, ptr %30, align 4
  br label %88

88:                                               ; preds = %84, %25
  %89 = phi ptr [ %23, %25 ], [ %87, %84 ]
  %90 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 9
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  %93 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 8
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr %struct.ieee80211_key, ptr %89, i32 0, i32 5, i32 0, i32 2, i32 %94, i32 1
  store i32 %91, ptr %95, align 4
  %96 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 9, i32 0, i32 1
  %97 = load i16, ptr %96, align 4
  %98 = load ptr, ptr %92, align 4
  %99 = load i32, ptr %93, align 4
  %100 = getelementptr %struct.ieee80211_key, ptr %98, i32 0, i32 5, i32 0, i32 2, i32 %99, i32 2
  store i16 %97, ptr %100, align 4
  br label %127

101:                                              ; preds = %82, %50
  %102 = phi ptr [ %31, %50 ], [ %83, %82 ]
  %103 = phi ptr [ %6, %50 ], [ %73, %82 ]
  %104 = getelementptr inbounds %struct.ieee80211_key, ptr %102, i32 0, i32 5, i32 0, i32 3
  %105 = load i32, ptr %104, align 8
  %106 = add i32 %105, 1
  store i32 %106, ptr %104, align 8
  br label %107

107:                                              ; preds = %101, %15
  %108 = phi ptr [ %6, %15 ], [ %103, %101 ]
  %109 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %110, i32 0, i32 6
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.ieee80211_hdr, ptr %108, i32 0, i32 3
  %114 = getelementptr inbounds %struct.ieee80211_hdr, ptr %108, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 1
  %117 = xor i32 %116, 1
  %118 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %107
  %122 = getelementptr inbounds %struct.ieee80211_key, ptr %119, i32 0, i32 7, i32 5
  %123 = load i8, ptr %122, align 1
  %124 = sext i8 %123 to i32
  br label %125

125:                                              ; preds = %121, %107
  %126 = phi i32 [ %124, %121 ], [ -1, %107 ]
  call void @cfg80211_michael_mic_failure(ptr noundef %112, ptr noundef %113, i32 noundef %117, i32 noundef %126, ptr noundef null, i32 noundef 2592) #11
  br label %127

127:                                              ; preds = %125, %88, %63, %53, %46, %33, %29, %25, %21, %18, %1
  %128 = phi i32 [ 1, %125 ], [ 0, %88 ], [ 0, %1 ], [ 0, %25 ], [ 0, %21 ], [ 0, %18 ], [ 0, %33 ], [ 0, %29 ], [ 1, %46 ], [ 1, %53 ], [ 1, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 %128
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_michael_mic_failure(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_tkip_encrypt(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @ieee80211_tx_set_protected(ptr noundef %0) #11
  %2 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 5
  %4 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 2
  br label %5

5:                                                ; preds = %73, %1
  %6 = phi ptr [ %2, %1 ], [ %7, %73 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %76, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 28
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %14, i32 0, i32 6
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 34
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %73, label %21

21:                                               ; preds = %16, %9
  %22 = phi i32 [ 0, %16 ], [ 4, %9 ]
  %23 = load i16, ptr %11, align 2
  %24 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %23) #10
  %25 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = sub i32 %26, %24
  %28 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 15
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 14
  %35 = load ptr, ptr %34, align 8
  %36 = ptrtoint ptr %33 to i32
  %37 = ptrtoint ptr %35 to i32
  %38 = sub i32 %36, %37
  br label %39

39:                                               ; preds = %31, %21
  %40 = phi i32 [ %38, %31 ], [ 0, %21 ]
  %41 = icmp slt i32 %40, %22
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 16
  %44 = load ptr, ptr %43, align 8
  %45 = ptrtoint ptr %11 to i32
  %46 = ptrtoint ptr %44 to i32
  %47 = sub i32 %45, %46
  %48 = icmp ult i32 %47, 8
  br i1 %48, label %49, label %50, !prof !11

49:                                               ; preds = %42, %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef null) #11
  br label %76

50:                                               ; preds = %42
  %51 = tail call ptr @skb_push(ptr noundef %7, i32 noundef 8) #11
  %52 = getelementptr i8, ptr %51, i32 8
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %51, ptr align 1 %52, i32 %24, i1 false) #11
  %53 = getelementptr i8, ptr %51, i32 %24
  %54 = load ptr, ptr %13, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %54, i32 0, i32 6
  %58 = load i16, ptr %57, align 8
  %59 = and i16 %58, 32
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56, %50
  %62 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #11, !srcloc !13
  %63 = tail call { i64, i32 } asm sideeffect "@ atomic64_add_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %62, ptr %62, i64 1, ptr elementtype(i64) %62) #11, !srcloc !14
  %64 = extractvalue { i64, i32 } %63, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %65 = tail call ptr @ieee80211_tkip_add_iv(ptr noundef %53, ptr noundef %62, i64 noundef %64) #11
  %66 = load ptr, ptr %13, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = tail call ptr @skb_put(ptr noundef %7, i32 noundef 4) #11
  %70 = load ptr, ptr %4, align 4
  %71 = getelementptr inbounds %struct.ieee80211_local, ptr %70, i32 0, i32 59
  %72 = tail call i32 @ieee80211_tkip_encrypt_data(ptr noundef %71, ptr noundef %12, ptr noundef %7, ptr noundef %65, i32 noundef %27) #11
  br label %73

73:                                               ; preds = %68, %61, %56, %16
  %74 = phi i32 [ %72, %68 ], [ 0, %16 ], [ 0, %56 ], [ 0, %61 ]
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %5

76:                                               ; preds = %73, %49, %5
  %77 = phi i32 [ 1, %49 ], [ 0, %5 ], [ 1, %73 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_set_protected(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_tkip_decrypt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = load i16, ptr %5, align 2
  %9 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %8) #10
  %10 = and i16 %8, 12
  %11 = icmp eq i16 %10, 8
  br i1 %11, label %12, label %64

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %64, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = sub i32 %18, %9
  %20 = icmp ult i32 %19, 12
  br i1 %20, label %64, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @__pskb_pull_tail(ptr noundef %3, i32 noundef %23) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %64, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %4, align 4
  %30 = load i32, ptr %17, align 8
  %31 = load ptr, ptr %13, align 4
  %32 = sub i32 %30, %9
  br label %33

33:                                               ; preds = %28, %21
  %34 = phi i32 [ %32, %28 ], [ %19, %21 ]
  %35 = phi ptr [ %31, %28 ], [ %14, %21 ]
  %36 = phi ptr [ %29, %28 ], [ %5, %21 ]
  %37 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 24
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 1
  %40 = and i32 %39, 1
  %41 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ieee80211_local, ptr %42, i32 0, i32 60
  %44 = getelementptr i8, ptr %36, i32 %9
  %45 = getelementptr inbounds %struct.sta_info, ptr %35, i32 0, i32 46, i32 1
  %46 = getelementptr inbounds %struct.ieee80211_hdr, ptr %36, i32 0, i32 2
  %47 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 9
  %50 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 9, i32 0, i32 1
  %51 = tail call i32 @ieee80211_tkip_decrypt_data(ptr noundef %43, ptr noundef %7, ptr noundef %44, i32 noundef %34, ptr noundef %45, ptr noundef %46, i32 noundef %40, i32 noundef %48, ptr noundef %49, ptr noundef %50) #11
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %33
  %54 = load i32, ptr %37, align 8
  %55 = and i32 %54, 8388608
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, ptr %17, align 8
  %59 = add i32 %58, -4
  tail call void @skb_trim(ptr noundef %3, i32 noundef %59) #11
  br label %60

60:                                               ; preds = %57, %53
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr i8, ptr %61, i32 8
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %62, ptr align 1 %61, i32 %9, i1 false)
  %63 = tail call ptr @skb_pull(ptr noundef %3, i32 noundef 8) #11
  br label %64

64:                                               ; preds = %60, %33, %25, %16, %12, %1
  %65 = phi i32 [ 0, %60 ], [ 0, %1 ], [ 1, %16 ], [ 1, %12 ], [ 1, %33 ], [ 1, %25 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_tkip_decrypt_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_ccmp_encrypt(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [32 x i8], align 2
  %4 = alloca [16 x i8], align 1
  tail call void @ieee80211_tx_set_protected(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds i8, ptr %4, i32 14
  %8 = getelementptr inbounds i8, ptr %4, i32 1
  %9 = getelementptr inbounds i8, ptr %4, i32 2
  %10 = getelementptr inbounds i8, ptr %4, i32 8
  %11 = getelementptr inbounds i8, ptr %4, i32 9
  %12 = getelementptr inbounds i8, ptr %4, i32 10
  %13 = getelementptr inbounds i8, ptr %4, i32 11
  %14 = getelementptr inbounds i8, ptr %4, i32 12
  %15 = getelementptr inbounds i8, ptr %4, i32 13
  %16 = getelementptr inbounds i8, ptr %3, i32 2
  %17 = getelementptr inbounds i8, ptr %3, i32 4
  %18 = getelementptr inbounds i8, ptr %3, i32 22
  %19 = getelementptr inbounds i8, ptr %3, i32 23
  %20 = getelementptr inbounds i8, ptr %3, i32 24
  %21 = getelementptr inbounds i8, ptr %3, i32 30
  %22 = getelementptr inbounds i8, ptr %3, i32 31
  br label %23

23:                                               ; preds = %155, %2
  %24 = phi ptr [ %5, %2 ], [ %25, %155 ]
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %5
  br i1 %26, label %158, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(32) %3, i8 0, i32 32, i1 false) #11, !annotation !10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  store i16 0, ptr %7, align 1, !annotation !10
  %31 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 3, i32 28
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %32, i32 0, i32 6
  %36 = load i16, ptr %35, align 8
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 34
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = and i32 %37, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %155, label %43

43:                                               ; preds = %40
  %44 = load i16, ptr %29, align 2
  %45 = and i16 %44, 12
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %155

47:                                               ; preds = %43, %34, %27
  %48 = phi i32 [ 0, %43 ], [ 0, %34 ], [ %1, %27 ]
  %49 = load i16, ptr %29, align 2
  %50 = call i32 @ieee80211_hdrlen(i16 noundef zeroext %49) #10
  %51 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 5
  %52 = load i32, ptr %51, align 8
  %53 = sub i32 %52, %50
  %54 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 15
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 14
  %61 = load ptr, ptr %60, align 8
  %62 = ptrtoint ptr %59 to i32
  %63 = ptrtoint ptr %61 to i32
  %64 = sub i32 %62, %63
  br label %65

65:                                               ; preds = %57, %47
  %66 = phi i32 [ %64, %57 ], [ 0, %47 ]
  %67 = icmp slt i32 %66, %48
  br i1 %67, label %75, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 16
  %70 = load ptr, ptr %69, align 8
  %71 = ptrtoint ptr %29 to i32
  %72 = ptrtoint ptr %70 to i32
  %73 = sub i32 %71, %72
  %74 = icmp ult i32 %73, 8
  br i1 %74, label %75, label %76, !prof !11

75:                                               ; preds = %68, %65
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 441, i32 noundef 9, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  br label %158

76:                                               ; preds = %68
  %77 = call ptr @skb_push(ptr noundef %25, i32 noundef 8) #11
  %78 = getelementptr i8, ptr %77, i32 8
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %77, ptr align 1 %78, i32 %50, i1 false) #11
  %79 = load ptr, ptr %31, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %79, i32 0, i32 6
  %83 = load i16, ptr %82, align 8
  %84 = and i16 %83, 32
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %155

86:                                               ; preds = %81, %76
  %87 = getelementptr i8, ptr %77, i32 %50
  %88 = getelementptr inbounds %struct.ieee80211_key, ptr %30, i32 0, i32 7
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %88) #11, !srcloc !13
  %89 = call { i64, i32 } asm sideeffect "@ atomic64_add_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %88, ptr %88, i64 1, ptr elementtype(i64) %88) #11, !srcloc !14
  %90 = extractvalue { i64, i32 } %89, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %91 = trunc i64 %90 to i8
  %92 = lshr i64 %90, 8
  %93 = trunc i64 %92 to i8
  %94 = lshr i64 %90, 16
  %95 = trunc i64 %94 to i8
  %96 = lshr i64 %90, 24
  %97 = trunc i64 %96 to i8
  %98 = lshr i64 %90, 32
  %99 = trunc i64 %98 to i8
  %100 = lshr i64 %90, 40
  %101 = trunc i64 %100 to i8
  %102 = getelementptr inbounds %struct.ieee80211_key, ptr %30, i32 0, i32 7, i32 5
  %103 = load i8, ptr %102, align 1
  store i8 %91, ptr %87, align 1
  %104 = getelementptr i8, ptr %87, i32 1
  store i8 %93, ptr %104, align 1
  %105 = getelementptr i8, ptr %87, i32 2
  store i8 0, ptr %105, align 1
  %106 = shl i8 %103, 6
  %107 = or i8 %106, 32
  %108 = getelementptr i8, ptr %87, i32 3
  store i8 %107, ptr %108, align 1
  %109 = getelementptr i8, ptr %87, i32 4
  store i8 %95, ptr %109, align 1
  %110 = getelementptr i8, ptr %87, i32 5
  store i8 %97, ptr %110, align 1
  %111 = getelementptr i8, ptr %87, i32 6
  store i8 %99, ptr %111, align 1
  %112 = getelementptr i8, ptr %87, i32 7
  store i8 %101, ptr %112, align 1
  %113 = load ptr, ptr %31, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %155

115:                                              ; preds = %86
  %116 = getelementptr i8, ptr %87, i32 8
  %117 = load ptr, ptr %28, align 4
  %118 = load i16, ptr %117, align 2
  %119 = and i16 %118, 12
  %120 = icmp eq i16 %119, 0
  %121 = select i1 %120, i16 -30721, i16 -30833
  %122 = and i16 %121, %118
  %123 = or i16 %122, 16384
  %124 = call i32 @ieee80211_hdrlen(i16 noundef zeroext %118) #10
  %125 = trunc i32 %124 to i16
  %126 = add i16 %125, -2
  %127 = and i16 %118, 768
  %128 = icmp eq i16 %127, 768
  %129 = and i16 %118, 140
  %130 = icmp eq i16 %129, 136
  br i1 %130, label %131, label %136

131:                                              ; preds = %115
  %132 = select i1 %128, i32 30, i32 24
  %133 = getelementptr i8, ptr %117, i32 %132
  %134 = load i8, ptr %133, align 1
  %135 = and i8 %134, 15
  br label %136

136:                                              ; preds = %131, %115
  %137 = phi i8 [ %135, %131 ], [ 0, %115 ]
  store i8 1, ptr %4, align 1
  %138 = select i1 %120, i8 16, i8 0
  %139 = or i8 %137, %138
  store i8 %139, ptr %8, align 1
  %140 = getelementptr inbounds %struct.ieee80211_hdr, ptr %117, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %9, ptr noundef align 2 dereferenceable(6) %140, i32 6, i1 false) #11
  store i8 %101, ptr %10, align 1
  store i8 %99, ptr %11, align 1
  store i8 %97, ptr %12, align 1
  store i8 %95, ptr %13, align 1
  store i8 %93, ptr %14, align 1
  store i8 %91, ptr %15, align 1
  %141 = call i16 @llvm.bswap.i16(i16 %126) #11
  store i16 %141, ptr %3, align 2
  store i16 %123, ptr %16, align 2
  %142 = getelementptr inbounds %struct.ieee80211_hdr, ptr %117, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(18) %17, ptr noundef align 2 dereferenceable(18) %142, i32 18, i1 false) #11
  %143 = getelementptr inbounds %struct.ieee80211_hdr, ptr %117, i32 0, i32 5
  %144 = load i8, ptr %143, align 2
  %145 = and i8 %144, 15
  store i8 %145, ptr %18, align 2
  store i8 0, ptr %19, align 1
  br i1 %128, label %146, label %148

146:                                              ; preds = %136
  %147 = getelementptr inbounds %struct.ieee80211_hdr, ptr %117, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %20, ptr noundef align 2 dereferenceable(6) %147, i32 6, i1 false) #11
  store i8 %137, ptr %21, align 2
  store i8 0, ptr %22, align 1
  br label %149

148:                                              ; preds = %136
  store i64 0, ptr %20, align 2
  store i8 %137, ptr %20, align 2
  br label %149

149:                                              ; preds = %148, %146
  %150 = getelementptr inbounds %struct.ieee80211_key, ptr %30, i32 0, i32 5, i32 0, i32 2, i32 2, i32 2
  %151 = load ptr, ptr %150, align 8
  %152 = call ptr @skb_put(ptr noundef %25, i32 noundef %1) #11
  %153 = zext i16 %126 to i32
  %154 = call i32 @aead_encrypt(ptr noundef %151, ptr noundef nonnull %4, ptr noundef %16, i32 noundef %153, ptr noundef %116, i32 noundef %53, ptr noundef %152) #11
  br label %155

155:                                              ; preds = %149, %86, %81, %43, %40
  %156 = phi i32 [ %154, %149 ], [ 0, %43 ], [ 0, %40 ], [ 0, %81 ], [ 0, %86 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %23

158:                                              ; preds = %155, %75, %23
  %159 = phi i32 [ 1, %75 ], [ 0, %23 ], [ 1, %155 ]
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_ccmp_decrypt(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca [32 x i8], align 2
  %5 = alloca [16 x i8], align 1
  %6 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  %12 = load i16, ptr %9, align 2
  %13 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %12) #10
  %14 = and i16 %12, 12
  %15 = icmp eq i16 %14, 8
  br i1 %15, label %29, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = icmp ult i32 %18, 25
  br i1 %19, label %164, label %20

20:                                               ; preds = %16
  %21 = trunc i16 %12 to i8
  %22 = and i8 %21, -4
  switch i8 %22, label %164 [
    i8 -96, label %29
    i8 -64, label %29
    i8 -48, label %23
  ]

23:                                               ; preds = %20
  %24 = and i16 %12, 16384
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %9, i32 24
  %28 = load i8, ptr %27, align 1
  switch i8 %28, label %29 [
    i8 4, label %164
    i8 7, label %164
    i8 11, label %164
    i8 15, label %164
    i8 20, label %164
    i8 21, label %164
    i8 127, label %164
  ]

29:                                               ; preds = %26, %23, %20, %20, %2
  %30 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 24
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %29
  %35 = add i32 %13, 8
  %36 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 5
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = sub i32 %37, %39
  %41 = icmp ugt i32 %35, %40
  br i1 %41, label %42, label %50, !prof !11

42:                                               ; preds = %34
  %43 = icmp ult i32 %37, %35
  br i1 %43, label %164, label %44, !prof !11

44:                                               ; preds = %42
  %45 = sub i32 %35, %40
  %46 = tail call ptr @__pskb_pull_tail(ptr noundef %7, i32 noundef %45) #11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %164, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %30, align 8
  br label %50

50:                                               ; preds = %48, %34
  %51 = phi i32 [ %49, %48 ], [ %31, %34 ]
  %52 = and i32 %51, 2097152
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 %1, i32 0
  br label %62

55:                                               ; preds = %29
  %56 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = tail call ptr @__pskb_pull_tail(ptr noundef %7, i32 noundef %57) #11
  %61 = icmp eq ptr %60, null
  br i1 %61, label %164, label %62

62:                                               ; preds = %59, %55, %50
  %63 = phi i32 [ %54, %50 ], [ %1, %59 ], [ %1, %55 ]
  %64 = sub i32 0, %63
  %65 = load ptr, ptr %6, align 4
  %66 = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 17
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 5
  %69 = load i32, ptr %68, align 8
  %70 = add i32 %13, %63
  %71 = sub i32 -8, %70
  %72 = add i32 %71, %69
  %73 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  %76 = icmp slt i32 %72, 0
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %164, label %78

78:                                               ; preds = %62
  %79 = load i32, ptr %30, align 8
  %80 = and i32 %79, 1024
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %145

82:                                               ; preds = %78
  %83 = load ptr, ptr %8, align 4
  %84 = getelementptr i8, ptr %83, i32 %13
  %85 = getelementptr i8, ptr %84, i32 7
  %86 = load i8, ptr %85, align 1
  store i8 %86, ptr %3, align 1
  %87 = getelementptr i8, ptr %84, i32 6
  %88 = load i8, ptr %87, align 1
  %89 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %88, ptr %89, align 1
  %90 = getelementptr i8, ptr %84, i32 5
  %91 = load i8, ptr %90, align 1
  %92 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %91, ptr %92, align 1
  %93 = getelementptr i8, ptr %84, i32 4
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %94, ptr %95, align 1
  %96 = getelementptr i8, ptr %84, i32 1
  %97 = load i8, ptr %96, align 1
  %98 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %97, ptr %98, align 1
  %99 = load i8, ptr %84, align 1
  %100 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %99, ptr %100, align 1
  %101 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 8
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.ieee80211_key, ptr %11, i32 0, i32 5
  %104 = getelementptr [17 x [6 x i8]], ptr %103, i32 0, i32 %102
  %105 = call i32 @memcmp(ptr noundef nonnull dereferenceable(6) %3, ptr noundef dereferenceable(6) %104, i32 noundef 6)
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %82
  %108 = icmp eq i32 %105, 0
  %109 = and i32 %79, 4194304
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %108, i1 %110, i1 false
  br i1 %111, label %112, label %116

112:                                              ; preds = %107, %82
  %113 = getelementptr inbounds %struct.ieee80211_key, ptr %11, i32 0, i32 5, i32 0, i32 2, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, 1
  store i32 %115, ptr %113, align 4
  br label %164

116:                                              ; preds = %107
  %117 = and i32 %79, 2
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !10
  call fastcc void @ccmp_special_blocks(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %120 = getelementptr inbounds %struct.ieee80211_key, ptr %11, i32 0, i32 5, i32 0, i32 2, i32 2, i32 2
  %121 = load ptr, ptr %120, align 8
  %122 = load ptr, ptr %8, align 4
  %123 = getelementptr i8, ptr %122, i32 %13
  %124 = getelementptr i8, ptr %123, i32 8
  %125 = load i32, ptr %68, align 8
  %126 = getelementptr i8, ptr %122, i32 %125
  %127 = getelementptr i8, ptr %126, i32 %64
  %128 = getelementptr inbounds i8, ptr %4, i32 2
  %129 = load i16, ptr %4, align 2
  %130 = tail call i16 @llvm.bswap.i16(i16 %129) #11
  %131 = zext i16 %130 to i32
  %132 = call i32 @aead_decrypt(ptr noundef %121, ptr noundef nonnull %5, ptr noundef %128, i32 noundef %131, ptr noundef %124, i32 noundef %72, ptr noundef %127) #11
  %133 = icmp eq i32 %132, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  br i1 %133, label %134, label %164

134:                                              ; preds = %119, %116
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %104, ptr noundef nonnull align 1 dereferenceable(6) %3, i32 6, i1 false)
  %135 = load i16, ptr %67, align 2
  %136 = and i16 %135, 1024
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %138, label %143, !prof !16

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.ieee80211_hdr, ptr %67, i32 0, i32 5
  %140 = load i16, ptr %139, align 2
  %141 = and i16 %140, 15
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %145, label %143, !prof !8

143:                                              ; preds = %138, %134
  %144 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %144, ptr noundef nonnull align 1 dereferenceable(6) %3, i32 6, i1 false)
  br label %145

145:                                              ; preds = %143, %138, %78
  %146 = load i32, ptr %68, align 8
  %147 = sub i32 %146, %63
  %148 = icmp ugt i32 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %151 = load i32, ptr %150, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  store i32 %147, ptr %68, align 8
  %154 = load ptr, ptr %8, align 4
  %155 = getelementptr i8, ptr %154, i32 %147
  %156 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 14
  store ptr %155, ptr %156, align 8
  br label %160

157:                                              ; preds = %149
  %158 = call i32 @___pskb_trim(ptr noundef %7, i32 noundef %147) #11
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157, %153, %145
  %161 = load ptr, ptr %8, align 4
  %162 = getelementptr i8, ptr %161, i32 8
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %162, ptr align 1 %161, i32 %13, i1 false)
  %163 = call ptr @skb_pull(ptr noundef %7, i32 noundef 8) #11
  br label %164

164:                                              ; preds = %160, %157, %119, %112, %62, %59, %44, %42, %26, %26, %26, %26, %26, %26, %26, %20, %16
  %165 = phi i32 [ 0, %160 ], [ 1, %44 ], [ 1, %62 ], [ 1, %112 ], [ 1, %157 ], [ 1, %119 ], [ 0, %16 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 1, %59 ], [ 0, %20 ], [ 1, %42 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  ret i32 %165
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @ccmp_special_blocks(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, 12
  %9 = icmp eq i16 %8, 0
  %10 = select i1 %9, i16 -30721, i16 -30833
  %11 = and i16 %10, %7
  %12 = or i16 %11, 16384
  %13 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %7) #10
  %14 = trunc i32 %13 to i16
  %15 = add i16 %14, -2
  %16 = and i16 %7, 768
  %17 = icmp eq i16 %16, 768
  %18 = and i16 %7, 140
  %19 = icmp eq i16 %18, 136
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = select i1 %17, i32 30, i32 24
  %22 = getelementptr i8, ptr %6, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 15
  br label %25

25:                                               ; preds = %20, %4
  %26 = phi i8 [ %24, %20 ], [ 0, %4 ]
  store i8 1, ptr %2, align 1
  %27 = select i1 %9, i8 16, i8 0
  %28 = or i8 %26, %27
  %29 = getelementptr i8, ptr %2, i32 1
  store i8 %28, ptr %29, align 1
  %30 = getelementptr i8, ptr %2, i32 2
  %31 = getelementptr inbounds %struct.ieee80211_hdr, ptr %6, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %30, ptr noundef align 2 dereferenceable(6) %31, i32 6, i1 false)
  %32 = getelementptr i8, ptr %2, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %32, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false)
  %33 = tail call i16 @llvm.bswap.i16(i16 %15) #11
  store i16 %33, ptr %3, align 1
  %34 = getelementptr i8, ptr %3, i32 2
  store i16 %12, ptr %34, align 1
  %35 = getelementptr i8, ptr %3, i32 4
  %36 = getelementptr inbounds %struct.ieee80211_hdr, ptr %6, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(18) %35, ptr noundef align 2 dereferenceable(18) %36, i32 18, i1 false)
  %37 = getelementptr inbounds %struct.ieee80211_hdr, ptr %6, i32 0, i32 5
  %38 = load i8, ptr %37, align 2
  %39 = and i8 %38, 15
  %40 = getelementptr i8, ptr %3, i32 22
  store i8 %39, ptr %40, align 1
  %41 = getelementptr i8, ptr %3, i32 23
  store i8 0, ptr %41, align 1
  %42 = getelementptr i8, ptr %3, i32 24
  br i1 %17, label %43, label %47

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct.ieee80211_hdr, ptr %6, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %42, ptr noundef align 2 dereferenceable(6) %44, i32 6, i1 false)
  %45 = getelementptr i8, ptr %3, i32 30
  store i8 %26, ptr %45, align 1
  %46 = getelementptr i8, ptr %3, i32 31
  store i8 0, ptr %46, align 1
  br label %48

47:                                               ; preds = %25
  store i64 0, ptr %42, align 1
  store i8 %26, ptr %42, align 1
  br label %48

48:                                               ; preds = %47, %43
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_gcmp_encrypt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [32 x i8], align 2
  %3 = alloca [16 x i8], align 1
  tail call void @ieee80211_tx_set_protected(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 5
  %6 = getelementptr inbounds i8, ptr %3, i32 12
  %7 = getelementptr inbounds i8, ptr %3, i32 6
  %8 = getelementptr inbounds i8, ptr %3, i32 7
  %9 = getelementptr inbounds i8, ptr %3, i32 8
  %10 = getelementptr inbounds i8, ptr %3, i32 9
  %11 = getelementptr inbounds i8, ptr %3, i32 10
  %12 = getelementptr inbounds i8, ptr %3, i32 11
  %13 = getelementptr inbounds i8, ptr %3, i32 13
  %14 = getelementptr inbounds i8, ptr %3, i32 14
  %15 = getelementptr inbounds i8, ptr %3, i32 15
  %16 = getelementptr inbounds i8, ptr %2, i32 2
  %17 = getelementptr inbounds i8, ptr %2, i32 4
  %18 = getelementptr inbounds i8, ptr %2, i32 22
  %19 = getelementptr inbounds i8, ptr %2, i32 23
  %20 = getelementptr inbounds i8, ptr %2, i32 24
  %21 = getelementptr inbounds i8, ptr %2, i32 30
  %22 = getelementptr inbounds i8, ptr %2, i32 31
  br label %23

23:                                               ; preds = %171, %1
  %24 = phi ptr [ %4, %1 ], [ %25, %171 ]
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %4
  br i1 %26, label %174, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(32) %2, i8 0, i32 32, i1 false) #11, !annotation !10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  store i8 0, ptr %6, align 1, !annotation !10
  %31 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 3, i32 28
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %32, i32 0, i32 6
  %36 = load i16, ptr %35, align 8
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 34
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = and i32 %37, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %171, label %43

43:                                               ; preds = %40
  %44 = load i16, ptr %29, align 2
  %45 = and i16 %44, 12
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %171

47:                                               ; preds = %43, %34, %27
  %48 = phi i32 [ 0, %43 ], [ 0, %34 ], [ 16, %27 ]
  %49 = load i16, ptr %29, align 2
  %50 = call i32 @ieee80211_hdrlen(i16 noundef zeroext %49) #10
  %51 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 5
  %52 = load i32, ptr %51, align 8
  %53 = sub i32 %52, %50
  %54 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 15
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 14
  %61 = load ptr, ptr %60, align 8
  %62 = ptrtoint ptr %59 to i32
  %63 = ptrtoint ptr %61 to i32
  %64 = sub i32 %62, %63
  br label %65

65:                                               ; preds = %57, %47
  %66 = phi i32 [ %64, %57 ], [ 0, %47 ]
  %67 = icmp slt i32 %66, %48
  br i1 %67, label %75, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 16
  %70 = load ptr, ptr %69, align 8
  %71 = ptrtoint ptr %29 to i32
  %72 = ptrtoint ptr %70 to i32
  %73 = sub i32 %71, %72
  %74 = icmp ult i32 %73, 8
  br i1 %74, label %75, label %76, !prof !11

75:                                               ; preds = %68, %65
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 675, i32 noundef 9, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  br label %174

76:                                               ; preds = %68
  %77 = call ptr @skb_push(ptr noundef %25, i32 noundef 8) #11
  %78 = getelementptr i8, ptr %77, i32 8
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %77, ptr align 1 %78, i32 %50, i1 false) #11
  %79 = load ptr, ptr %69, align 8
  %80 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 13, i32 0, i32 18
  %81 = load i16, ptr %80, align 4
  %82 = zext i16 %81 to i32
  %83 = getelementptr i8, ptr %79, i32 %82
  %84 = load ptr, ptr %28, align 4
  %85 = ptrtoint ptr %83 to i32
  %86 = ptrtoint ptr %84 to i32
  %87 = sub i32 %85, %86
  %88 = ptrtoint ptr %79 to i32
  %89 = sub i32 %86, %88
  %90 = trunc i32 %89 to i16
  %91 = trunc i32 %87 to i16
  %92 = add i16 %90, 8
  %93 = add i16 %92, %91
  store i16 %93, ptr %80, align 4
  %94 = load ptr, ptr %31, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %76
  %97 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %94, i32 0, i32 6
  %98 = load i16, ptr %97, align 8
  %99 = and i16 %98, 32
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %171

101:                                              ; preds = %96, %76
  %102 = getelementptr i8, ptr %77, i32 %50
  %103 = getelementptr inbounds %struct.ieee80211_key, ptr %30, i32 0, i32 7
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %103) #11, !srcloc !13
  %104 = call { i64, i32 } asm sideeffect "@ atomic64_add_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %103, ptr %103, i64 1, ptr elementtype(i64) %103) #11, !srcloc !14
  %105 = extractvalue { i64, i32 } %104, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %106 = trunc i64 %105 to i8
  %107 = lshr i64 %105, 8
  %108 = trunc i64 %107 to i8
  %109 = lshr i64 %105, 16
  %110 = trunc i64 %109 to i8
  %111 = lshr i64 %105, 24
  %112 = trunc i64 %111 to i8
  %113 = lshr i64 %105, 32
  %114 = trunc i64 %113 to i8
  %115 = lshr i64 %105, 40
  %116 = trunc i64 %115 to i8
  %117 = getelementptr inbounds %struct.ieee80211_key, ptr %30, i32 0, i32 7, i32 5
  %118 = load i8, ptr %117, align 1
  store i8 %106, ptr %102, align 1
  %119 = getelementptr i8, ptr %102, i32 1
  store i8 %108, ptr %119, align 1
  %120 = getelementptr i8, ptr %102, i32 2
  store i8 0, ptr %120, align 1
  %121 = shl i8 %118, 6
  %122 = or i8 %121, 32
  %123 = getelementptr i8, ptr %102, i32 3
  store i8 %122, ptr %123, align 1
  %124 = getelementptr i8, ptr %102, i32 4
  store i8 %110, ptr %124, align 1
  %125 = getelementptr i8, ptr %102, i32 5
  store i8 %112, ptr %125, align 1
  %126 = getelementptr i8, ptr %102, i32 6
  store i8 %114, ptr %126, align 1
  %127 = getelementptr i8, ptr %102, i32 7
  store i8 %116, ptr %127, align 1
  %128 = load ptr, ptr %31, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %171

130:                                              ; preds = %101
  %131 = getelementptr i8, ptr %102, i32 8
  %132 = load ptr, ptr %28, align 4
  %133 = getelementptr inbounds %struct.ieee80211_hdr, ptr %132, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef align 2 dereferenceable(6) %133, i32 6, i1 false) #11
  store i8 %116, ptr %7, align 1
  store i8 %114, ptr %8, align 1
  store i8 %112, ptr %9, align 1
  store i8 %110, ptr %10, align 1
  store i8 %108, ptr %11, align 1
  store i8 %106, ptr %12, align 1
  store i8 0, ptr %13, align 1
  store i8 0, ptr %14, align 1
  store i8 1, ptr %15, align 1
  %134 = load i16, ptr %132, align 2
  %135 = call i32 @ieee80211_hdrlen(i16 noundef zeroext %134) #10
  %136 = trunc i32 %135 to i16
  %137 = add i16 %136, -2
  %138 = call i16 @llvm.bswap.i16(i16 %137) #11
  store i16 %138, ptr %2, align 2
  %139 = load i16, ptr %132, align 2
  %140 = and i16 %139, 12
  %141 = icmp eq i16 %140, 0
  %142 = select i1 %141, i16 -30721, i16 -30833
  %143 = and i16 %142, %139
  %144 = or i16 %143, 16384
  store i16 %144, ptr %16, align 2
  %145 = getelementptr inbounds %struct.ieee80211_hdr, ptr %132, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(18) %17, ptr noundef align 2 dereferenceable(18) %145, i32 18, i1 false) #11
  %146 = getelementptr inbounds %struct.ieee80211_hdr, ptr %132, i32 0, i32 5
  %147 = load i8, ptr %146, align 2
  %148 = and i8 %147, 15
  store i8 %148, ptr %18, align 2
  store i8 0, ptr %19, align 1
  %149 = load i16, ptr %132, align 2
  %150 = and i16 %149, 140
  %151 = icmp eq i16 %150, 136
  %152 = and i16 %149, 768
  br i1 %151, label %153, label %159

153:                                              ; preds = %130
  %154 = icmp eq i16 %152, 768
  %155 = select i1 %154, i32 30, i32 24
  %156 = getelementptr i8, ptr %132, i32 %155
  %157 = load i8, ptr %156, align 1
  %158 = and i8 %157, 15
  br label %159

159:                                              ; preds = %153, %130
  %160 = phi i8 [ %158, %153 ], [ 0, %130 ]
  %161 = icmp eq i16 %152, 768
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.ieee80211_hdr, ptr %132, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %20, ptr noundef align 2 dereferenceable(6) %163, i32 6, i1 false) #11
  store i8 %160, ptr %21, align 2
  store i8 0, ptr %22, align 1
  br label %165

164:                                              ; preds = %159
  store i64 0, ptr %20, align 2
  store i8 %160, ptr %20, align 2
  br label %165

165:                                              ; preds = %164, %162
  %166 = getelementptr inbounds %struct.ieee80211_key, ptr %30, i32 0, i32 5, i32 0, i32 2, i32 2, i32 2
  %167 = load ptr, ptr %166, align 8
  %168 = call ptr @skb_put(ptr noundef %25, i32 noundef 16) #11
  %169 = zext i16 %137 to i32
  %170 = call i32 @aead_encrypt(ptr noundef %167, ptr noundef nonnull %3, ptr noundef %16, i32 noundef %169, ptr noundef %131, i32 noundef %53, ptr noundef %168) #11
  br label %171

171:                                              ; preds = %165, %101, %96, %43, %40
  %172 = phi i32 [ %170, %165 ], [ 0, %43 ], [ 0, %40 ], [ 0, %96 ], [ 0, %101 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %23

174:                                              ; preds = %171, %75, %23
  %175 = phi i32 [ 1, %75 ], [ 0, %23 ], [ 1, %171 ]
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_gcmp_decrypt(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [32 x i8], align 2
  %4 = alloca [16 x i8], align 1
  %5 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #11
  %11 = load i16, ptr %8, align 2
  %12 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %11) #10
  %13 = and i16 %11, 12
  %14 = icmp eq i16 %13, 8
  br i1 %14, label %28, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = icmp ult i32 %17, 25
  br i1 %18, label %162, label %19

19:                                               ; preds = %15
  %20 = trunc i16 %11 to i8
  %21 = and i8 %20, -4
  switch i8 %21, label %162 [
    i8 -96, label %28
    i8 -64, label %28
    i8 -48, label %22
  ]

22:                                               ; preds = %19
  %23 = and i16 %11, 16384
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %8, i32 24
  %27 = load i8, ptr %26, align 1
  switch i8 %27, label %28 [
    i8 4, label %162
    i8 7, label %162
    i8 11, label %162
    i8 15, label %162
    i8 20, label %162
    i8 21, label %162
    i8 127, label %162
  ]

28:                                               ; preds = %25, %22, %19, %19, %1
  %29 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 24
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %28
  %34 = add i32 %12, 8
  %35 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 5
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = sub i32 %36, %38
  %40 = icmp ugt i32 %34, %39
  br i1 %40, label %41, label %49, !prof !11

41:                                               ; preds = %33
  %42 = icmp ult i32 %36, %34
  br i1 %42, label %162, label %43, !prof !11

43:                                               ; preds = %41
  %44 = sub i32 %34, %39
  %45 = tail call ptr @__pskb_pull_tail(ptr noundef %6, i32 noundef %44) #11
  %46 = icmp eq ptr %45, null
  br i1 %46, label %162, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %29, align 8
  br label %49

49:                                               ; preds = %47, %33
  %50 = phi i32 [ %48, %47 ], [ %30, %33 ]
  %51 = lshr i32 %50, 17
  %52 = and i32 %51, 16
  %53 = xor i32 %52, 16
  br label %61

54:                                               ; preds = %28
  %55 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = tail call ptr @__pskb_pull_tail(ptr noundef %6, i32 noundef %56) #11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %162, label %61

61:                                               ; preds = %58, %54, %49
  %62 = phi i32 [ %53, %49 ], [ 16, %58 ], [ 16, %54 ]
  %63 = load ptr, ptr %5, align 4
  %64 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 17
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 5
  %67 = load i32, ptr %66, align 8
  %68 = add i32 %12, %62
  %69 = sub i32 -8, %68
  %70 = add i32 %69, %67
  %71 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  %74 = icmp slt i32 %70, 0
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %162, label %76

76:                                               ; preds = %61
  %77 = load i32, ptr %29, align 8
  %78 = and i32 %77, 1024
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %143

80:                                               ; preds = %76
  %81 = load ptr, ptr %7, align 4
  %82 = getelementptr i8, ptr %81, i32 %12
  %83 = getelementptr i8, ptr %82, i32 7
  %84 = load i8, ptr %83, align 1
  store i8 %84, ptr %2, align 1
  %85 = getelementptr i8, ptr %82, i32 6
  %86 = load i8, ptr %85, align 1
  %87 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %86, ptr %87, align 1
  %88 = getelementptr i8, ptr %82, i32 5
  %89 = load i8, ptr %88, align 1
  %90 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 %89, ptr %90, align 1
  %91 = getelementptr i8, ptr %82, i32 4
  %92 = load i8, ptr %91, align 1
  %93 = getelementptr inbounds i8, ptr %2, i32 3
  store i8 %92, ptr %93, align 1
  %94 = getelementptr i8, ptr %82, i32 1
  %95 = load i8, ptr %94, align 1
  %96 = getelementptr inbounds i8, ptr %2, i32 4
  store i8 %95, ptr %96, align 1
  %97 = load i8, ptr %82, align 1
  %98 = getelementptr inbounds i8, ptr %2, i32 5
  store i8 %97, ptr %98, align 1
  %99 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 8
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.ieee80211_key, ptr %10, i32 0, i32 5
  %102 = getelementptr [17 x [6 x i8]], ptr %101, i32 0, i32 %100
  %103 = call i32 @memcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef dereferenceable(6) %102, i32 noundef 6)
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %80
  %106 = icmp eq i32 %103, 0
  %107 = and i32 %77, 4194304
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %110, label %114

110:                                              ; preds = %105, %80
  %111 = getelementptr inbounds %struct.ieee80211_key, ptr %10, i32 0, i32 5, i32 0, i32 2, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 4
  br label %162

114:                                              ; preds = %105
  %115 = and i32 %77, 2
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !10
  call fastcc void @gcmp_special_blocks(ptr noundef %6, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %118 = getelementptr inbounds %struct.ieee80211_key, ptr %10, i32 0, i32 5, i32 0, i32 2, i32 2, i32 2
  %119 = load ptr, ptr %118, align 8
  %120 = load ptr, ptr %7, align 4
  %121 = getelementptr i8, ptr %120, i32 %12
  %122 = getelementptr i8, ptr %121, i32 8
  %123 = load i32, ptr %66, align 8
  %124 = getelementptr i8, ptr %120, i32 %123
  %125 = getelementptr i8, ptr %124, i32 -16
  %126 = getelementptr inbounds i8, ptr %3, i32 2
  %127 = load i16, ptr %3, align 2
  %128 = tail call i16 @llvm.bswap.i16(i16 %127) #11
  %129 = zext i16 %128 to i32
  %130 = call i32 @aead_decrypt(ptr noundef %119, ptr noundef nonnull %4, ptr noundef %126, i32 noundef %129, ptr noundef %122, i32 noundef %70, ptr noundef %125) #11
  %131 = icmp eq i32 %130, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  br i1 %131, label %132, label %162

132:                                              ; preds = %117, %114
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %102, ptr noundef nonnull align 1 dereferenceable(6) %2, i32 6, i1 false)
  %133 = load i16, ptr %65, align 2
  %134 = and i16 %133, 1024
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %141, !prof !16

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.ieee80211_hdr, ptr %65, i32 0, i32 5
  %138 = load i16, ptr %137, align 2
  %139 = and i16 %138, 15
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %143, label %141, !prof !8

141:                                              ; preds = %136, %132
  %142 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %142, ptr noundef nonnull align 1 dereferenceable(6) %2, i32 6, i1 false)
  br label %143

143:                                              ; preds = %141, %136, %76
  %144 = load i32, ptr %66, align 8
  %145 = sub i32 %144, %62
  %146 = icmp ugt i32 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 6
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  store i32 %145, ptr %66, align 8
  %152 = load ptr, ptr %7, align 4
  %153 = getelementptr i8, ptr %152, i32 %145
  %154 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 14
  store ptr %153, ptr %154, align 8
  br label %158

155:                                              ; preds = %147
  %156 = call i32 @___pskb_trim(ptr noundef %6, i32 noundef %145) #11
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155, %151, %143
  %159 = load ptr, ptr %7, align 4
  %160 = getelementptr i8, ptr %159, i32 8
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %160, ptr align 1 %159, i32 %12, i1 false)
  %161 = call ptr @skb_pull(ptr noundef %6, i32 noundef 8) #11
  br label %162

162:                                              ; preds = %158, %155, %117, %110, %61, %58, %43, %41, %25, %25, %25, %25, %25, %25, %25, %19, %15
  %163 = phi i32 [ 0, %158 ], [ 1, %43 ], [ 1, %61 ], [ 1, %110 ], [ 1, %155 ], [ 1, %117 ], [ 0, %15 ], [ 0, %25 ], [ 0, %25 ], [ 0, %25 ], [ 0, %25 ], [ 0, %25 ], [ 0, %25 ], [ 0, %25 ], [ 1, %58 ], [ 0, %19 ], [ 1, %41 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #11
  ret i32 %163
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @gcmp_special_blocks(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_hdr, ptr %6, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %2, ptr noundef align 2 dereferenceable(6) %7, i32 6, i1 false)
  %8 = getelementptr i8, ptr %2, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %8, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false)
  %9 = getelementptr i8, ptr %2, i32 13
  store i8 0, ptr %9, align 1
  %10 = getelementptr i8, ptr %2, i32 14
  store i8 0, ptr %10, align 1
  %11 = getelementptr i8, ptr %2, i32 15
  store i8 1, ptr %11, align 1
  %12 = load i16, ptr %6, align 2
  %13 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %12) #10
  %14 = trunc i32 %13 to i16
  %15 = add i16 %14, -2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #11
  store i16 %16, ptr %3, align 1
  %17 = load i16, ptr %6, align 2
  %18 = and i16 %17, 12
  %19 = icmp eq i16 %18, 0
  %20 = select i1 %19, i16 -30721, i16 -30833
  %21 = and i16 %20, %17
  %22 = or i16 %21, 16384
  %23 = getelementptr i8, ptr %3, i32 2
  store i16 %22, ptr %23, align 1
  %24 = getelementptr i8, ptr %3, i32 4
  %25 = getelementptr inbounds %struct.ieee80211_hdr, ptr %6, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(18) %24, ptr noundef align 2 dereferenceable(18) %25, i32 18, i1 false)
  %26 = getelementptr inbounds %struct.ieee80211_hdr, ptr %6, i32 0, i32 5
  %27 = load i8, ptr %26, align 2
  %28 = and i8 %27, 15
  %29 = getelementptr i8, ptr %3, i32 22
  store i8 %28, ptr %29, align 1
  %30 = getelementptr i8, ptr %3, i32 23
  store i8 0, ptr %30, align 1
  %31 = load i16, ptr %6, align 2
  %32 = and i16 %31, 140
  %33 = icmp eq i16 %32, 136
  %34 = and i16 %31, 768
  br i1 %33, label %35, label %41

35:                                               ; preds = %4
  %36 = icmp eq i16 %34, 768
  %37 = select i1 %36, i32 30, i32 24
  %38 = getelementptr i8, ptr %6, i32 %37
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, 15
  br label %41

41:                                               ; preds = %35, %4
  %42 = phi i8 [ %40, %35 ], [ 0, %4 ]
  %43 = icmp eq i16 %34, 768
  %44 = getelementptr i8, ptr %3, i32 24
  br i1 %43, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ieee80211_hdr, ptr %6, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %44, ptr noundef align 2 dereferenceable(6) %46, i32 6, i1 false)
  %47 = getelementptr i8, ptr %3, i32 30
  store i8 %42, ptr %47, align 1
  %48 = getelementptr i8, ptr %3, i32 31
  store i8 0, ptr %48, align 1
  br label %50

49:                                               ; preds = %41
  store i64 0, ptr %44, align 1
  store i8 %42, ptr %44, align 1
  br label %50

50:                                               ; preds = %49, %45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_aes_cmac_encrypt(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [20 x i8], align 2
  %3 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #11
  %5 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 949, i32 noundef 9, ptr noundef null) #11
  br label %79

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  %13 = select i1 %12, ptr null, ptr %11
  %14 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 28
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 7, i32 6
  %19 = load i16, ptr %18, align 8
  %20 = and i16 %19, 1024
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %79, label %22

22:                                               ; preds = %17, %9
  %23 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 14
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %28 to i32
  %32 = ptrtoint ptr %30 to i32
  %33 = sub i32 %31, %32
  %34 = icmp ult i32 %33, 18
  br i1 %34, label %35, label %36, !prof !11

35:                                               ; preds = %26, %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 960, i32 noundef 9, ptr noundef null) #11
  br label %79

36:                                               ; preds = %26
  %37 = tail call ptr @skb_put(ptr noundef %13, i32 noundef 18) #11
  store i8 76, ptr %37, align 1
  %38 = getelementptr inbounds %struct.ieee80211_mmie, ptr %37, i32 0, i32 1
  store i8 16, ptr %38, align 1
  %39 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 7
  %40 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 7, i32 5
  %41 = load i8, ptr %40, align 1
  %42 = sext i8 %41 to i16
  %43 = getelementptr inbounds %struct.ieee80211_mmie, ptr %37, i32 0, i32 2
  store i16 %42, ptr %43, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #11, !srcloc !13
  %44 = tail call { i64, i32 } asm sideeffect "@ atomic64_add_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %39, ptr %39, i64 1, ptr elementtype(i64) %39) #11, !srcloc !14
  %45 = extractvalue { i64, i32 } %44, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %46 = getelementptr inbounds %struct.ieee80211_mmie, ptr %37, i32 0, i32 3
  %47 = trunc i64 %45 to i8
  %48 = getelementptr %struct.ieee80211_mmie, ptr %37, i32 0, i32 3, i32 1
  store i8 %47, ptr %46, align 1
  %49 = lshr i64 %45, 8
  %50 = trunc i64 %49 to i8
  %51 = getelementptr %struct.ieee80211_mmie, ptr %37, i32 0, i32 3, i32 2
  store i8 %50, ptr %48, align 1
  %52 = lshr i64 %45, 16
  %53 = trunc i64 %52 to i8
  %54 = getelementptr %struct.ieee80211_mmie, ptr %37, i32 0, i32 3, i32 3
  store i8 %53, ptr %51, align 1
  %55 = lshr i64 %45, 24
  %56 = trunc i64 %55 to i8
  %57 = getelementptr %struct.ieee80211_mmie, ptr %37, i32 0, i32 3, i32 4
  store i8 %56, ptr %54, align 1
  %58 = lshr i64 %45, 32
  %59 = trunc i64 %58 to i8
  %60 = getelementptr %struct.ieee80211_mmie, ptr %37, i32 0, i32 3, i32 5
  store i8 %59, ptr %57, align 1
  %61 = lshr i64 %45, 40
  %62 = trunc i64 %61 to i8
  store i8 %62, ptr %60, align 1
  %63 = load ptr, ptr %14, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %36
  %66 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %67 = load ptr, ptr %66, align 4
  %68 = load i16, ptr %67, align 2
  %69 = and i16 %68, -14337
  store i16 %69, ptr %2, align 2
  %70 = getelementptr inbounds i8, ptr %2, i32 2
  %71 = getelementptr inbounds %struct.ieee80211_hdr, ptr %67, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(18) %70, ptr noundef align 2 dereferenceable(18) %71, i32 18, i1 false) #11
  %72 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 5, i32 0, i32 1, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr i8, ptr %67, i32 24
  %75 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 5
  %76 = load i32, ptr %75, align 8
  %77 = add i32 %76, -24
  %78 = getelementptr inbounds %struct.ieee80211_mmie, ptr %37, i32 0, i32 4
  call void @ieee80211_aes_cmac(ptr noundef %73, ptr noundef nonnull %2, ptr noundef %74, i32 noundef %77, ptr noundef %78) #11
  br label %79

79:                                               ; preds = %65, %36, %35, %17, %8
  %80 = phi i32 [ 1, %8 ], [ 1, %35 ], [ 0, %65 ], [ 0, %17 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #11
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_aes_cmac(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_aes_cmac_256_encrypt(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [20 x i8], align 2
  %3 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #11
  %5 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 997, i32 noundef 9, ptr noundef null) #11
  br label %71

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  %13 = select i1 %12, ptr null, ptr %11
  %14 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 28
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %71

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 14
  %25 = load ptr, ptr %24, align 8
  %26 = ptrtoint ptr %23 to i32
  %27 = ptrtoint ptr %25 to i32
  %28 = sub i32 %26, %27
  %29 = icmp ult i32 %28, 26
  br i1 %29, label %30, label %31, !prof !11

30:                                               ; preds = %21, %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1007, i32 noundef 9, ptr noundef null) #11
  br label %71

31:                                               ; preds = %21
  %32 = tail call ptr @skb_put(ptr noundef %13, i32 noundef 26) #11
  store i8 76, ptr %32, align 1
  %33 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %32, i32 0, i32 1
  store i8 24, ptr %33, align 1
  %34 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 7
  %35 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 7, i32 5
  %36 = load i8, ptr %35, align 1
  %37 = sext i8 %36 to i16
  %38 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %32, i32 0, i32 2
  store i16 %37, ptr %38, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #11, !srcloc !13
  %39 = tail call { i64, i32 } asm sideeffect "@ atomic64_add_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %34, ptr %34, i64 1, ptr elementtype(i64) %34) #11, !srcloc !14
  %40 = extractvalue { i64, i32 } %39, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %41 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %32, i32 0, i32 3
  %42 = trunc i64 %40 to i8
  %43 = getelementptr %struct.ieee80211_mmie_16, ptr %32, i32 0, i32 3, i32 1
  store i8 %42, ptr %41, align 1
  %44 = lshr i64 %40, 8
  %45 = trunc i64 %44 to i8
  %46 = getelementptr %struct.ieee80211_mmie_16, ptr %32, i32 0, i32 3, i32 2
  store i8 %45, ptr %43, align 1
  %47 = lshr i64 %40, 16
  %48 = trunc i64 %47 to i8
  %49 = getelementptr %struct.ieee80211_mmie_16, ptr %32, i32 0, i32 3, i32 3
  store i8 %48, ptr %46, align 1
  %50 = lshr i64 %40, 24
  %51 = trunc i64 %50 to i8
  %52 = getelementptr %struct.ieee80211_mmie_16, ptr %32, i32 0, i32 3, i32 4
  store i8 %51, ptr %49, align 1
  %53 = lshr i64 %40, 32
  %54 = trunc i64 %53 to i8
  %55 = getelementptr %struct.ieee80211_mmie_16, ptr %32, i32 0, i32 3, i32 5
  store i8 %54, ptr %52, align 1
  %56 = lshr i64 %40, 40
  %57 = trunc i64 %56 to i8
  store i8 %57, ptr %55, align 1
  %58 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %59 = load ptr, ptr %58, align 4
  %60 = load i16, ptr %59, align 2
  %61 = and i16 %60, -14337
  store i16 %61, ptr %2, align 2
  %62 = getelementptr inbounds i8, ptr %2, i32 2
  %63 = getelementptr inbounds %struct.ieee80211_hdr, ptr %59, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(18) %62, ptr noundef align 2 dereferenceable(18) %63, i32 18, i1 false) #11
  %64 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 5, i32 0, i32 1, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr i8, ptr %59, i32 24
  %67 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 5
  %68 = load i32, ptr %67, align 8
  %69 = add i32 %68, -24
  %70 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %32, i32 0, i32 4
  call void @ieee80211_aes_cmac_256(ptr noundef %65, ptr noundef nonnull %2, ptr noundef %66, i32 noundef %69, ptr noundef %70) #11
  br label %71

71:                                               ; preds = %31, %30, %9, %8
  %72 = phi i32 [ 1, %8 ], [ 1, %30 ], [ 0, %31 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #11
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_aes_cmac_256(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_aes_cmac_decrypt(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [20 x i8], align 2
  %3 = alloca [8 x i8], align 8
  %4 = alloca [6 x i8], align 1
  %5 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 0, ptr %3, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #11
  %9 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, 12
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %75

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = icmp ult i32 %16, 42
  br i1 %17, label %75, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %10, i32 %16
  %20 = getelementptr i8, ptr %19, i32 -18
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 76
  br i1 %22, label %23, label %75

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ieee80211_mmie, ptr %20, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 16
  br i1 %26, label %27, label %75

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ieee80211_mmie, ptr %20, i32 0, i32 3
  %29 = getelementptr i8, ptr %28, i32 5
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %30, ptr %4, align 1
  %32 = getelementptr i8, ptr %28, i32 4
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %33, ptr %31, align 1
  %35 = getelementptr i8, ptr %28, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 %36, ptr %34, align 1
  %38 = getelementptr i8, ptr %28, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr inbounds i8, ptr %4, i32 4
  store i8 %39, ptr %37, align 1
  %41 = getelementptr i8, ptr %28, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr inbounds i8, ptr %4, i32 5
  store i8 %42, ptr %40, align 1
  %44 = load i8, ptr %28, align 1
  store i8 %44, ptr %43, align 1
  %45 = getelementptr inbounds %struct.ieee80211_key, ptr %8, i32 0, i32 5
  %46 = call i32 @memcmp(ptr noundef nonnull dereferenceable(6) %4, ptr noundef dereferenceable(6) %45, i32 noundef 6)
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %27
  %49 = getelementptr inbounds %struct.ieee80211_key, ptr %8, i32 0, i32 5, i32 0, i32 1, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  br label %75

52:                                               ; preds = %27
  %53 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 24
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = and i16 %11, -14337
  store i16 %58, ptr %2, align 2
  %59 = getelementptr inbounds i8, ptr %2, i32 2
  %60 = getelementptr inbounds %struct.ieee80211_hdr, ptr %10, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(18) %59, ptr noundef align 2 dereferenceable(18) %60, i32 18, i1 false) #11
  %61 = getelementptr inbounds %struct.ieee80211_key, ptr %8, i32 0, i32 5, i32 0, i32 1, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr i8, ptr %10, i32 24
  %64 = add i32 %16, -24
  call void @ieee80211_aes_cmac(ptr noundef %62, ptr noundef nonnull %2, ptr noundef %63, i32 noundef %64, ptr noundef nonnull %3) #11
  %65 = getelementptr inbounds %struct.ieee80211_mmie, ptr %20, i32 0, i32 4
  %66 = call i32 @__crypto_memneq(ptr noundef nonnull %3, ptr noundef %65, i32 noundef 8) #11
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.ieee80211_key, ptr %8, i32 0, i32 5, i32 0, i32 1, i32 1
  %70 = load i32, ptr %69, align 8
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 8
  br label %75

72:                                               ; preds = %57, %52
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %45, ptr noundef nonnull align 1 dereferenceable(6) %4, i32 6, i1 false)
  %73 = load i32, ptr %15, align 8
  %74 = add i32 %73, -18
  call void @skb_trim(ptr noundef %6, i32 noundef %74) #11
  br label %75

75:                                               ; preds = %72, %68, %48, %23, %18, %14, %1
  %76 = phi i32 [ 1, %48 ], [ 0, %72 ], [ 1, %68 ], [ 0, %1 ], [ 1, %14 ], [ 1, %23 ], [ 1, %18 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #11
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_aes_cmac_256_decrypt(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [20 x i8], align 2
  %3 = alloca [16 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #11
  %9 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, 12
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %75

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = icmp ult i32 %16, 50
  br i1 %17, label %75, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %10, i32 %16
  %20 = getelementptr i8, ptr %19, i32 -26
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 76
  br i1 %22, label %23, label %75

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %20, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 24
  br i1 %26, label %27, label %75

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %20, i32 0, i32 3
  %29 = getelementptr i8, ptr %28, i32 5
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %30, ptr %4, align 1
  %32 = getelementptr i8, ptr %28, i32 4
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %33, ptr %31, align 1
  %35 = getelementptr i8, ptr %28, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 %36, ptr %34, align 1
  %38 = getelementptr i8, ptr %28, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr inbounds i8, ptr %4, i32 4
  store i8 %39, ptr %37, align 1
  %41 = getelementptr i8, ptr %28, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr inbounds i8, ptr %4, i32 5
  store i8 %42, ptr %40, align 1
  %44 = load i8, ptr %28, align 1
  store i8 %44, ptr %43, align 1
  %45 = getelementptr inbounds %struct.ieee80211_key, ptr %8, i32 0, i32 5
  %46 = call i32 @memcmp(ptr noundef nonnull dereferenceable(6) %4, ptr noundef dereferenceable(6) %45, i32 noundef 6)
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %27
  %49 = getelementptr inbounds %struct.ieee80211_key, ptr %8, i32 0, i32 5, i32 0, i32 1, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  br label %75

52:                                               ; preds = %27
  %53 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 24
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = and i16 %11, -14337
  store i16 %58, ptr %2, align 2
  %59 = getelementptr inbounds i8, ptr %2, i32 2
  %60 = getelementptr inbounds %struct.ieee80211_hdr, ptr %10, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(18) %59, ptr noundef align 2 dereferenceable(18) %60, i32 18, i1 false) #11
  %61 = getelementptr inbounds %struct.ieee80211_key, ptr %8, i32 0, i32 5, i32 0, i32 1, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr i8, ptr %10, i32 24
  %64 = add i32 %16, -24
  call void @ieee80211_aes_cmac_256(ptr noundef %62, ptr noundef nonnull %2, ptr noundef %63, i32 noundef %64, ptr noundef nonnull %3) #11
  %65 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %20, i32 0, i32 4
  %66 = call i32 @__crypto_memneq(ptr noundef nonnull %3, ptr noundef %65, i32 noundef 16) #11
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.ieee80211_key, ptr %8, i32 0, i32 5, i32 0, i32 1, i32 1
  %70 = load i32, ptr %69, align 8
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 8
  br label %75

72:                                               ; preds = %57, %52
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %45, ptr noundef nonnull align 1 dereferenceable(6) %4, i32 6, i1 false)
  %73 = load i32, ptr %15, align 8
  %74 = add i32 %73, -26
  call void @skb_trim(ptr noundef %6, i32 noundef %74) #11
  br label %75

75:                                               ; preds = %72, %68, %48, %23, %18, %14, %1
  %76 = phi i32 [ 1, %48 ], [ 0, %72 ], [ 1, %68 ], [ 0, %1 ], [ 1, %14 ], [ 1, %23 ], [ 1, %18 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #11
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_aes_gmac_encrypt(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [20 x i8], align 2
  %3 = alloca [12 x i8], align 1
  %4 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %6 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1142, i32 noundef 9, ptr noundef null) #11
  br label %87

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  %14 = select i1 %13, ptr null, ptr %12
  %15 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3, i32 28
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %87

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 14
  %26 = load ptr, ptr %25, align 8
  %27 = ptrtoint ptr %24 to i32
  %28 = ptrtoint ptr %26 to i32
  %29 = sub i32 %27, %28
  %30 = icmp ult i32 %29, 26
  br i1 %30, label %31, label %32, !prof !11

31:                                               ; preds = %22, %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1152, i32 noundef 9, ptr noundef null) #11
  br label %87

32:                                               ; preds = %22
  %33 = tail call ptr @skb_put(ptr noundef %14, i32 noundef 26) #11
  store i8 76, ptr %33, align 1
  %34 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %33, i32 0, i32 1
  store i8 24, ptr %34, align 1
  %35 = getelementptr inbounds %struct.ieee80211_key, ptr %5, i32 0, i32 7
  %36 = getelementptr inbounds %struct.ieee80211_key, ptr %5, i32 0, i32 7, i32 5
  %37 = load i8, ptr %36, align 1
  %38 = sext i8 %37 to i16
  %39 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %33, i32 0, i32 2
  store i16 %38, ptr %39, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #11, !srcloc !13
  %40 = tail call { i64, i32 } asm sideeffect "@ atomic64_add_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %35, ptr %35, i64 1, ptr elementtype(i64) %35) #11, !srcloc !14
  %41 = extractvalue { i64, i32 } %40, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %42 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %33, i32 0, i32 3
  %43 = trunc i64 %41 to i8
  %44 = getelementptr %struct.ieee80211_mmie_16, ptr %33, i32 0, i32 3, i32 1
  store i8 %43, ptr %42, align 1
  %45 = lshr i64 %41, 8
  %46 = trunc i64 %45 to i8
  %47 = getelementptr %struct.ieee80211_mmie_16, ptr %33, i32 0, i32 3, i32 2
  store i8 %46, ptr %44, align 1
  %48 = lshr i64 %41, 16
  %49 = trunc i64 %48 to i8
  %50 = getelementptr %struct.ieee80211_mmie_16, ptr %33, i32 0, i32 3, i32 3
  store i8 %49, ptr %47, align 1
  %51 = lshr i64 %41, 24
  %52 = trunc i64 %51 to i8
  %53 = getelementptr %struct.ieee80211_mmie_16, ptr %33, i32 0, i32 3, i32 4
  store i8 %52, ptr %50, align 1
  %54 = lshr i64 %41, 32
  %55 = trunc i64 %54 to i8
  %56 = getelementptr %struct.ieee80211_mmie_16, ptr %33, i32 0, i32 3, i32 5
  store i8 %55, ptr %53, align 1
  %57 = lshr i64 %41, 40
  %58 = trunc i64 %57 to i8
  store i8 %58, ptr %56, align 1
  %59 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 17
  %60 = load ptr, ptr %59, align 4
  %61 = load i16, ptr %60, align 2
  %62 = and i16 %61, -14337
  store i16 %62, ptr %2, align 2
  %63 = getelementptr inbounds i8, ptr %2, i32 2
  %64 = getelementptr inbounds %struct.ieee80211_hdr, ptr %60, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(18) %63, ptr noundef align 2 dereferenceable(18) %64, i32 18, i1 false) #11
  %65 = getelementptr inbounds %struct.ieee80211_hdr, ptr %60, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef align 2 dereferenceable(6) %65, i32 6, i1 false)
  %66 = getelementptr inbounds i8, ptr %3, i32 6
  %67 = load i8, ptr %56, align 1
  %68 = getelementptr inbounds i8, ptr %3, i32 7
  store i8 %67, ptr %66, align 1
  %69 = load i8, ptr %53, align 1
  %70 = getelementptr inbounds i8, ptr %3, i32 8
  store i8 %69, ptr %68, align 1
  %71 = load i8, ptr %50, align 1
  %72 = getelementptr inbounds i8, ptr %3, i32 9
  store i8 %71, ptr %70, align 1
  %73 = load i8, ptr %47, align 1
  %74 = getelementptr inbounds i8, ptr %3, i32 10
  store i8 %73, ptr %72, align 1
  %75 = load i8, ptr %44, align 1
  %76 = getelementptr inbounds i8, ptr %3, i32 11
  store i8 %75, ptr %74, align 1
  %77 = load i8, ptr %42, align 1
  store i8 %77, ptr %76, align 1
  %78 = getelementptr inbounds %struct.ieee80211_key, ptr %5, i32 0, i32 5, i32 0, i32 1, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr i8, ptr %60, i32 24
  %81 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 5
  %82 = load i32, ptr %81, align 8
  %83 = add i32 %82, -24
  %84 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %33, i32 0, i32 4
  %85 = call i32 @ieee80211_aes_gmac(ptr noundef %79, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %80, i32 noundef %83, ptr noundef %84) #11
  %86 = lshr i32 %85, 31
  br label %87

87:                                               ; preds = %32, %31, %10, %9
  %88 = phi i32 [ 1, %9 ], [ 1, %31 ], [ 0, %10 ], [ %86, %32 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #11
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_aes_gmac(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_aes_gmac_decrypt(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [20 x i8], align 2
  %3 = alloca [6 x i8], align 1
  %4 = alloca [12 x i8], align 1
  %5 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !10
  %9 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, 12
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %87

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = icmp ult i32 %16, 50
  br i1 %17, label %87, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %10, i32 %16
  %20 = getelementptr i8, ptr %19, i32 -26
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 76
  br i1 %22, label %23, label %87

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %20, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 24
  br i1 %26, label %27, label %87

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %20, i32 0, i32 3
  %29 = getelementptr i8, ptr %28, i32 5
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %30, ptr %3, align 1
  %32 = getelementptr i8, ptr %28, i32 4
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %33, ptr %31, align 1
  %35 = getelementptr i8, ptr %28, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %36, ptr %34, align 1
  %38 = getelementptr i8, ptr %28, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %39, ptr %37, align 1
  %41 = getelementptr i8, ptr %28, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %42, ptr %40, align 1
  %44 = load i8, ptr %28, align 1
  store i8 %44, ptr %43, align 1
  %45 = getelementptr inbounds %struct.ieee80211_key, ptr %8, i32 0, i32 5
  %46 = call i32 @memcmp(ptr noundef nonnull dereferenceable(6) %3, ptr noundef dereferenceable(6) %45, i32 noundef 6)
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %27
  %49 = getelementptr inbounds %struct.ieee80211_key, ptr %8, i32 0, i32 5, i32 0, i32 1, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  br label %87

52:                                               ; preds = %27
  %53 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 24
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %52
  %58 = and i16 %11, -14337
  store i16 %58, ptr %2, align 2
  %59 = getelementptr inbounds i8, ptr %2, i32 2
  %60 = getelementptr inbounds %struct.ieee80211_hdr, ptr %10, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(18) %59, ptr noundef align 2 dereferenceable(18) %60, i32 18, i1 false) #11
  %61 = getelementptr inbounds %struct.ieee80211_hdr, ptr %10, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, ptr noundef align 2 dereferenceable(6) %61, i32 6, i1 false)
  %62 = getelementptr inbounds i8, ptr %4, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %62, ptr noundef nonnull align 1 dereferenceable(6) %3, i32 6, i1 false)
  %63 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %64 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 2592, i32 noundef 16) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %87, label %66

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.ieee80211_key, ptr %8, i32 0, i32 5, i32 0, i32 1, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = load ptr, ptr %9, align 4
  %70 = getelementptr i8, ptr %69, i32 24
  %71 = load i32, ptr %15, align 8
  %72 = add i32 %71, -24
  %73 = call i32 @ieee80211_aes_gmac(ptr noundef %68, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef %70, i32 noundef %72, ptr noundef nonnull %64) #11
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %20, i32 0, i32 4
  %77 = call i32 @__crypto_memneq(ptr noundef nonnull %64, ptr noundef %76, i32 noundef 16) #11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75, %66
  %80 = getelementptr inbounds %struct.ieee80211_key, ptr %8, i32 0, i32 5, i32 0, i32 1, i32 1
  %81 = load i32, ptr %80, align 8
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 8
  call void @kfree(ptr noundef nonnull %64) #11
  br label %87

83:                                               ; preds = %75
  call void @kfree(ptr noundef nonnull %64) #11
  br label %84

84:                                               ; preds = %83, %52
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %45, ptr noundef nonnull align 1 dereferenceable(6) %3, i32 6, i1 false)
  %85 = load i32, ptr %15, align 8
  %86 = add i32 %85, -26
  call void @skb_trim(ptr noundef %6, i32 noundef %86) #11
  br label %87

87:                                               ; preds = %84, %79, %57, %48, %23, %18, %14, %1
  %88 = phi i32 [ 1, %48 ], [ 0, %84 ], [ 1, %79 ], [ 0, %1 ], [ 1, %14 ], [ 1, %23 ], [ 1, %18 ], [ 1, %57 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #11
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_hw_encrypt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 5
  br label %7

7:                                                ; preds = %43, %5
  %8 = phi ptr [ %3, %5 ], [ %44, %43 ]
  %9 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3, i32 28
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.ieee80211_key, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %10, i32 0, i32 6
  %22 = load i16, ptr %21, align 8
  %23 = and i16 %22, 32
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.ieee80211_key, ptr %13, i32 0, i32 7, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 16
  %29 = load ptr, ptr %28, align 8
  %30 = ptrtoint ptr %20 to i32
  %31 = ptrtoint ptr %29 to i32
  %32 = sub i32 %30, %31
  %33 = zext i8 %27 to i32
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = tail call i32 @pskb_expand_head(ptr noundef %8, i32 noundef %33, i32 noundef 0, i32 noundef 2592) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47, !prof !8

38:                                               ; preds = %35, %25
  %39 = load i16, ptr %20, align 2
  %40 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %39) #10
  %41 = tail call ptr @skb_push(ptr noundef %8, i32 noundef %33) #11
  %42 = getelementptr i8, ptr %41, i32 %33
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %41, ptr align 1 %42, i32 %40, i1 false) #11
  br label %43

43:                                               ; preds = %38, %18, %12
  %44 = load ptr, ptr %8, align 4
  %45 = icmp eq ptr %44, %2
  br i1 %45, label %46, label %7

46:                                               ; preds = %43, %1
  tail call void @ieee80211_tx_set_protected(ptr noundef %0) #11
  br label %47

47:                                               ; preds = %46, %35, %7
  %48 = phi i32 [ 0, %46 ], [ 1, %7 ], [ 1, %35 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_crypto_hw_decrypt(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %113, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 41
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %113, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = load i16, ptr %15, align 2
  %17 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %16) #10
  %18 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 24
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %113, label %22

22:                                               ; preds = %9
  %23 = and i16 %16, 12
  %24 = icmp eq i16 %23, 8
  br i1 %24, label %25, label %113

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %7, i32 0, i32 2
  %29 = load i8, ptr %28, align 2
  %30 = zext i8 %29 to i32
  %31 = add i32 %17, %30
  %32 = sub i32 %27, %31
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %113, label %34

34:                                               ; preds = %25
  %35 = and i16 %16, 140
  %36 = icmp eq i16 %35, 136
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = and i16 %16, 768
  %39 = icmp eq i16 %38, 768
  %40 = select i1 %39, i32 30, i32 24
  %41 = getelementptr i8, ptr %15, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, 15
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %37, %34
  %46 = phi i32 [ %44, %37 ], [ 0, %34 ]
  %47 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = tail call ptr @__pskb_pull_tail(ptr noundef %13, i32 noundef %48) #11
  %52 = icmp eq ptr %51, null
  br i1 %52, label %113, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %12, align 4
  %55 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 17
  %56 = load ptr, ptr %55, align 4
  br label %57

57:                                               ; preds = %53, %45
  %58 = phi ptr [ %56, %53 ], [ %15, %45 ]
  %59 = getelementptr inbounds %struct.ieee80211_key, ptr %11, i32 0, i32 5
  %60 = getelementptr [17 x [16 x i8]], ptr %59, i32 0, i32 %46
  %61 = getelementptr i8, ptr %58, i32 %17
  %62 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %7, i32 0, i32 4
  %63 = load i8, ptr %62, align 4
  %64 = zext i8 %63 to i32
  %65 = getelementptr i8, ptr %61, i32 %64
  %66 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %7, i32 0, i32 3
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  br label %69

69:                                               ; preds = %79, %57
  %70 = phi i32 [ %68, %57 ], [ %71, %79 ]
  %71 = add nsw i32 %70, -1
  %72 = icmp sgt i32 %70, 0
  br i1 %72, label %73, label %113

73:                                               ; preds = %69
  %74 = getelementptr i8, ptr %65, i32 %71
  %75 = load i8, ptr %74, align 1
  %76 = getelementptr i8, ptr %60, i32 %71
  %77 = load i8, ptr %76, align 1
  %78 = icmp ult i8 %75, %77
  br i1 %78, label %113, label %79

79:                                               ; preds = %73
  %80 = icmp ugt i8 %75, %77
  br i1 %80, label %81, label %69

81:                                               ; preds = %79
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %60, ptr align 1 %65, i32 %68, i1 false) #11
  %82 = load ptr, ptr %12, align 4
  %83 = getelementptr inbounds %struct.sk_buff, ptr %82, i32 0, i32 5
  %84 = load i32, ptr %83, align 8
  %85 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %7, i32 0, i32 8
  %86 = load i8, ptr %85, align 4
  %87 = zext i8 %86 to i32
  %88 = sub i32 %84, %87
  %89 = icmp ugt i32 %84, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.sk_buff, ptr %82, i32 0, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  store i32 %88, ptr %83, align 8
  %95 = getelementptr inbounds %struct.sk_buff, ptr %82, i32 0, i32 17
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr i8, ptr %96, i32 %88
  %98 = getelementptr inbounds %struct.sk_buff, ptr %82, i32 0, i32 14
  store ptr %97, ptr %98, align 8
  br label %102

99:                                               ; preds = %90
  %100 = tail call i32 @___pskb_trim(ptr noundef %82, i32 noundef %88) #11
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %99, %94, %81
  %103 = load ptr, ptr %12, align 4
  %104 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 17
  %105 = load ptr, ptr %104, align 4
  %106 = load i8, ptr %28, align 2
  %107 = zext i8 %106 to i32
  %108 = getelementptr i8, ptr %105, i32 %107
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %108, ptr align 1 %105, i32 %17, i1 false) #11
  %109 = load ptr, ptr %12, align 4
  %110 = load i8, ptr %28, align 2
  %111 = zext i8 %110 to i32
  %112 = tail call ptr @skb_pull(ptr noundef %109, i32 noundef %111) #11
  br label %113

113:                                              ; preds = %102, %99, %73, %69, %50, %25, %22, %9, %5, %1
  %114 = phi i32 [ 1, %5 ], [ 1, %1 ], [ 0, %102 ], [ 1, %9 ], [ 0, %22 ], [ 1, %25 ], [ 1, %99 ], [ 1, %50 ], [ 1, %69 ], [ 1, %73 ]
  ret i32 %114
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_tkip_add_iv(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_tkip_encrypt_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aead_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 2002, i32 2000}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2148353303}
!13 = !{i64 714599, i64 2148204570, i64 2148204596, i64 2148204643, i64 2148204665, i64 2148204693, i64 2148204713}
!14 = !{i64 2148227968, i64 2148228002, i64 2148228036, i64 2148228070, i64 2148228104, i64 2148228140, i64 2148228163}
!15 = !{i64 2148353508}
!16 = !{!"branch_weights", i32 2146410443, i32 1073205}
