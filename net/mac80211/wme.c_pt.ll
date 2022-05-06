; ModuleID = '/llk/IR/net/mac80211/wme.c_pt.bc'
source_filename = "../net/mac80211/wme.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff = type { %union.anon.41, %union.anon.44, %union.anon.45, [48 x i8], %union.anon.46, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.48, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, ptr, %union.anon.43 }
%union.anon.43 = type { ptr }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.50, i32, i32, i32, i16, i16, %union.anon.52, %union.anon.53, %union.anon.54, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.50 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.170, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.list_head = type { ptr, ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.69, i32, %struct.spinlock }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.170 = type { %struct.ieee80211_if_mesh }
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
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.148, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.148 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.149] }
%struct.anon.149 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.146, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.146 = type { i32, i16 }
%struct.ieee80211_sta_tx_tspec = type { i32, i32, i8, i8, i32, i32, i8 }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.159, [17 x i16], %struct.anon.160, %struct.anon.161, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.anon.159 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.160 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.161 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
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
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rhltable = type { %struct.rhashtable }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.158, i32 }
%union.anon.158 = type { ptr }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }

@ieee802_1d_to_ac = dso_local local_unnamed_addr constant [8 x i32] [i32 2, i32 3, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0], align 4
@switch.table.__ieee80211_select_queue = private unnamed_addr constant [8 x i32] [i32 2, i32 5, i32 5, i32 2, i32 3, i32 3, i32 5, i32 5], align 4
@switch.table.__ieee80211_select_queue.1 = private unnamed_addr constant [8 x i32] [i32 3, i32 2, i32 1, i32 0, i32 5, i32 4, i32 7, i32 6], align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @ieee80211_select_queue_80211(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %76

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 11
  %12 = load i16, ptr %11, align 4
  %13 = icmp ult i16 %12, 4
  br i1 %13, label %76, label %14

14:                                               ; preds = %8
  %15 = load i16, ptr %2, align 2
  %16 = and i16 %15, 12
  %17 = icmp eq i16 %16, 8
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 5
  store i32 7, ptr %19, align 8
  br label %76

20:                                               ; preds = %14
  %21 = and i16 %15, 140
  %22 = icmp eq i16 %21, 136
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 5
  store i32 0, ptr %24, align 8
  br label %76

25:                                               ; preds = %20
  %26 = and i16 %15, 768
  %27 = icmp eq i16 %26, 768
  %28 = select i1 %27, i32 30, i32 24
  %29 = getelementptr i8, ptr %2, i32 %28
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 7
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 5
  store i32 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 13
  %35 = load i8, ptr %34, align 2
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 1, %32
  %38 = and i32 %37, %36
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 112
  br label %42

42:                                               ; preds = %61, %40
  %43 = phi i32 [ %32, %40 ], [ %63, %61 ]
  %44 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %41, i32 0, i32 %45, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %41, i32 0, i32 %45, i32 3
  %51 = load i8, ptr %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %43, %52
  br i1 %53, label %73, label %54

54:                                               ; preds = %49, %42
  %55 = icmp ult i32 %43, 8
  br i1 %55, label %56, label %69

56:                                               ; preds = %54
  %57 = trunc i32 %43 to i8
  %58 = lshr i8 -7, %57
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds [8 x i32], ptr @switch.table.__ieee80211_select_queue, i32 0, i32 %43
  %63 = load i32, ptr %62, align 4
  store i32 %63, ptr %33, align 8
  %64 = load i8, ptr %34, align 2
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 1, %63
  %67 = and i32 %66, %65
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %42

69:                                               ; preds = %61, %56, %54, %25
  %70 = phi i32 [ %32, %25 ], [ %43, %56 ], [ %43, %54 ], [ %63, %61 ]
  %71 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %70
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %69, %49
  %74 = phi i32 [ %72, %69 ], [ %45, %49 ]
  %75 = trunc i32 %74 to i16
  br label %76

76:                                               ; preds = %73, %23, %18, %8, %3
  %77 = phi i16 [ %75, %73 ], [ 2, %23 ], [ 0, %18 ], [ 0, %8 ], [ 0, %3 ]
  ret i16 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @__ieee80211_select_queue(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %6 [
    i32 7, label %14
    i32 11, label %14
  ]

6:                                                ; preds = %3
  %7 = icmp eq ptr %1, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 10
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %6
  %13 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 5
  store i32 0, ptr %13, align 8
  br label %85

14:                                               ; preds = %8, %3, %3
  %15 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 16
  %16 = load i16, ptr %15, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 20
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %16, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 27
  %22 = load volatile ptr, ptr %21, align 8
  %23 = tail call i32 @cfg80211_classify8021d(ptr noundef %2, ptr noundef %22) #4
  br label %24

24:                                               ; preds = %20, %14
  %25 = phi i32 [ %23, %20 ], [ 7, %14 ]
  %26 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 5
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 13
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  %30 = shl nuw i32 1, %25
  %31 = and i32 %30, %29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %62, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 112
  br label %35

35:                                               ; preds = %54, %33
  %36 = phi i32 [ %25, %33 ], [ %56, %54 ]
  %37 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %34, i32 0, i32 %38, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %34, i32 0, i32 %38, i32 3
  %44 = load i8, ptr %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %36, %45
  br i1 %46, label %82, label %47

47:                                               ; preds = %42, %35
  %48 = icmp ult i32 %36, 8
  br i1 %48, label %49, label %62

49:                                               ; preds = %47
  %50 = trunc i32 %36 to i8
  %51 = lshr i8 -7, %50
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds [8 x i32], ptr @switch.table.__ieee80211_select_queue, i32 0, i32 %36
  %56 = load i32, ptr %55, align 4
  store i32 %56, ptr %26, align 8
  %57 = load i8, ptr %27, align 2
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 1, %56
  %60 = and i32 %59, %58
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %35

62:                                               ; preds = %54, %49, %47, %24
  %63 = phi i32 [ %25, %24 ], [ %36, %49 ], [ %36, %47 ], [ %56, %54 ]
  %64 = icmp eq ptr %1, null
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 43
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %63, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = icmp ult i8 %67, 8
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = sext i8 %67 to i32
  %74 = getelementptr inbounds [8 x i32], ptr @switch.table.__ieee80211_select_queue.1, i32 0, i32 %73
  %75 = load i32, ptr %74, align 4
  br label %76

76:                                               ; preds = %72, %70
  %77 = phi i32 [ %75, %72 ], [ 0, %70 ]
  store i32 %77, ptr %26, align 8
  br label %78

78:                                               ; preds = %76, %65, %62
  %79 = phi i32 [ %77, %76 ], [ %63, %65 ], [ %63, %62 ]
  %80 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %79
  %81 = load i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %78, %42
  %83 = phi i32 [ %81, %78 ], [ %38, %42 ]
  %84 = trunc i32 %83 to i16
  br label %85

85:                                               ; preds = %82, %12
  %86 = phi i16 [ %84, %82 ], [ 2, %12 ]
  ret i16 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_classify8021d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @ieee80211_select_queue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_ops, ptr %6, i32 0, i32 89
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %55

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 11
  %12 = load i16, ptr %11, align 4
  %13 = icmp ult i16 %12, 4
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = icmp ult i32 %16, 6
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 5
  store i32 0, ptr %19, align 8
  br label %55

20:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %22 = load i32, ptr %21, align 8
  switch i32 %22, label %52 [
    i32 4, label %23
    i32 3, label %27
    i32 2, label %30
    i32 1, label %37
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %25 = load volatile ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %52

27:                                               ; preds = %23, %20
  %28 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  br label %40

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef %32) #4
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  %36 = select i1 %34, ptr %35, ptr null
  br label %40

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %30, %27
  %41 = phi ptr [ %39, %37 ], [ %29, %27 ], [ %36, %30 ]
  %42 = phi ptr [ null, %37 ], [ null, %27 ], [ %33, %30 ]
  %43 = icmp eq ptr %42, null
  %44 = icmp ne ptr %41, null
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, ptr %41, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef nonnull %41) #4
  br label %52

52:                                               ; preds = %50, %46, %40, %23, %20
  %53 = phi ptr [ null, %46 ], [ %51, %50 ], [ %42, %40 ], [ %25, %23 ], [ null, %20 ]
  %54 = tail call zeroext i16 @__ieee80211_select_queue(ptr noundef %0, ptr noundef %53, ptr noundef %1)
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !10
  br label %55

55:                                               ; preds = %52, %18, %2
  %56 = phi i16 [ 0, %18 ], [ %54, %52 ], [ 0, %2 ]
  ret i16 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ieee80211_set_qos_hdr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 7
  %10 = load i16, ptr %4, align 2
  %11 = and i16 %10, 140
  %12 = icmp eq i16 %11, 136
  br i1 %12, label %13, label %48

13:                                               ; preds = %2
  %14 = and i16 %10, 768
  %15 = icmp eq i16 %14, 768
  %16 = select i1 %15, i32 30, i32 24
  %17 = getelementptr i8, ptr %4, i32 %16
  %18 = load i32, ptr %5, align 8
  %19 = and i32 %18, 128
  %20 = icmp eq i32 %19, 0
  %21 = load i8, ptr %17, align 1
  br i1 %20, label %27, label %22

22:                                               ; preds = %13
  %23 = and i8 %21, 32
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %22
  %26 = or i32 %18, 4
  store i32 %26, ptr %5, align 8
  br label %48

27:                                               ; preds = %13
  %28 = and i8 %21, -112
  %29 = getelementptr inbounds %struct.ieee80211_hdr, ptr %4, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 12
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = zext i8 %9 to i32
  %38 = shl nuw nsw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33, %27
  %42 = or i8 %28, 32
  %43 = or i32 %18, 4
  store i32 %43, ptr %5, align 8
  br label %44

44:                                               ; preds = %41, %33
  %45 = phi i8 [ %42, %41 ], [ %28, %33 ]
  %46 = or i8 %45, %9
  store i8 %46, ptr %17, align 1
  %47 = getelementptr i8, ptr %17, i32 1
  store i8 0, ptr %47, align 1
  br label %48

48:                                               ; preds = %44, %25, %22, %2
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
!9 = !{i64 2149278300}
!10 = !{i64 2149278517}
