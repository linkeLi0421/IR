; ModuleID = '/llk/IR/net/mac80211/s1g.c_pt.bc'
source_filename = "../net/mac80211/s1g.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.175, [17 x i16], %struct.anon.176, %struct.anon.177, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
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
%struct.anon.175 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.176 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.177 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
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
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.142 }
%union.anon.142 = type { %struct.anon.148, [16 x i8] }
%struct.anon.148 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.155 = type { i8, %union.anon.156 }
%union.anon.156 = type <{ %struct.anon.161, [17 x i8] }>
%struct.anon.161 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.141, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
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
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.118, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.118 = type { i32, i16 }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rhltable = type { %struct.rhashtable }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.132, i32 }
%union.anon.132 = type { ptr }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@drv_add_twt_setup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@__tracepoint_drv_add_twt_setup = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"net/mac80211/ieee80211_i.h\00", align 1
@drv_twt_teardown_request.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_twt_teardown_request = external dso_local global %struct.tracepoint, align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ieee80211_s1g_sta_rate_init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 35, i32 2, i32 1
  %3 = load i16, ptr %2, align 1
  %4 = or i16 %3, 8192
  store i16 %4, ptr %2, align 1
  %5 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 31, i32 8
  store i32 40960, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ieee80211_s1g_is_twt_setup(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 252
  %6 = icmp eq i16 %5, 208
  br i1 %6, label %7, label %15, !prof !8

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 6
  %9 = load i8, ptr %8, align 2
  %10 = icmp eq i8 %9, 22
  br i1 %10, label %11, label %15, !prof !8

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.anon.155, ptr %8, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 6
  br label %15

15:                                               ; preds = %11, %7, %1
  %16 = phi i1 [ %14, %11 ], [ false, %1 ], [ false, %7 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_s1g_rx_twt_action(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %4, i32 0, i32 3
  %9 = tail call ptr @sta_info_get_bss(ptr noundef %0, ptr noundef %8) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %128, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %4, i32 0, i32 6
  %13 = getelementptr inbounds %struct.anon.155, ptr %12, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  switch i8 %14, label %128 [
    i8 6, label %15
    i8 7, label %122
  ]

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %16, i32 0, i32 6, i32 0, i32 1
  %18 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %16, i32 0, i32 6, i32 0, i32 2, i32 2
  %19 = load i16, ptr %18, align 1
  %20 = and i16 %19, -2
  store i16 %20, ptr %18, align 1
  %21 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %16, i32 0, i32 6, i32 0, i32 2, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = and i16 %19, -16
  %27 = or i16 %26, 14
  store i16 %27, ptr %18, align 1
  br label %81

28:                                               ; preds = %15
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.sta_info, ptr %9, i32 0, i32 46
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 32
  %34 = icmp eq i32 %33, 0
  %35 = load i1, ptr @drv_add_twt_setup.__already_done, align 1
  %36 = xor i1 %35, true
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %44, !prof !8

38:                                               ; preds = %28
  store i1 true, ptr @drv_add_twt_setup.__already_done, align 1
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %43 = select i1 %41, ptr %42, ptr %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1462, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %43, i32 noundef %32) #8
  br label %44

44:                                               ; preds = %38, %28
  br i1 %34, label %81, label %45

45:                                               ; preds = %44
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_add_twt_setup, i32 0, i32 1), align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = tail call ptr @llvm.thread.pointer() #8
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = lshr i32 %51, 5
  %53 = getelementptr i32, ptr @__cpu_online_mask, i32 %52
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %51, 31
  %56 = shl nuw i32 1, %55
  %57 = and i32 %56, %54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %60 = tail call i32 @__traceiter_drv_add_twt_setup(ptr noundef null, ptr noundef %29, ptr noundef %30, ptr noundef %17, ptr noundef %18) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  br label %61

61:                                               ; preds = %59, %48, %45
  %62 = getelementptr inbounds %struct.ieee80211_local, ptr %29, i32 0, i32 8
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.ieee80211_ops, ptr %63, i32 0, i32 106
  %65 = load ptr, ptr %64, align 4
  tail call void %65(ptr noundef %29, ptr noundef %30, ptr noundef %17) #8
  %66 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = tail call ptr @llvm.thread.pointer() #8
  %70 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = lshr i32 %71, 5
  %73 = getelementptr i32, ptr @__cpu_online_mask, i32 %72
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %71, 31
  %76 = shl nuw i32 1, %75
  %77 = and i32 %76, %74
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %68
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  %80 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %29) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  br label %81

81:                                               ; preds = %79, %68, %61, %44, %25
  %82 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %16, i32 0, i32 6, i32 0, i32 2
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = add nuw nsw i32 %84, 29
  %86 = load ptr, ptr %5, align 4
  %87 = getelementptr inbounds %struct.ieee80211_hw, ptr %86, i32 0, i32 5
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, %85
  %90 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %89, i32 noundef 2592) #8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %128, label %92

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  %94 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %16, i32 0, i32 3
  %95 = load i32, ptr %87, align 4
  %96 = getelementptr inbounds %struct.sk_buff, ptr %90, i32 0, i32 17
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr i8, ptr %97, i32 %95
  store ptr %98, ptr %96, align 4
  %99 = getelementptr inbounds %struct.sk_buff, ptr %90, i32 0, i32 14
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr i8, ptr %100, i32 %95
  store ptr %101, ptr %99, align 8
  %102 = tail call ptr @skb_put(ptr noundef nonnull %90, i32 noundef %85) #8
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 %102, i8 0, i32 %85, i1 false) #8
  store i16 208, ptr %102, align 2
  %103 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %102, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %103, ptr noundef align 1 dereferenceable(6) %94, i32 6, i1 false) #8
  %104 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %102, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %104, ptr noundef align 8 dereferenceable(6) %93, i32 6, i1 false) #8
  %105 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %102, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %105, ptr noundef align 1 dereferenceable(6) %93, i32 6, i1 false) #8
  %106 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %102, i32 0, i32 6
  store i8 22, ptr %106, align 2
  %107 = getelementptr inbounds %struct.anon.155, ptr %106, i32 0, i32 1
  store i8 6, ptr %107, align 1
  %108 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %102, i32 0, i32 6, i32 0, i32 1
  %109 = load i8, ptr %82, align 1
  %110 = zext i8 %109 to i32
  %111 = add nuw nsw i32 %110, 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %108, ptr noundef align 1 %17, i32 %111, i1 false) #8
  %112 = getelementptr inbounds %struct.sk_buff, ptr %90, i32 0, i32 3
  %113 = load i32, ptr %112, align 8
  %114 = or i32 %113, 1114113
  store i32 %114, ptr %112, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %115 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %116 = load volatile ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %119, !prof !8

118:                                              ; preds = %92
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2200, i32 noundef 9, ptr noundef null) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  tail call void @kfree_skb_reason(ptr noundef nonnull %90, i32 noundef 0) #8
  br label %128

119:                                              ; preds = %92
  %120 = load ptr, ptr %116, align 4
  %121 = load i32, ptr %120, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %0, ptr noundef nonnull %90, i32 noundef 7, i32 noundef %121) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %128

122:                                              ; preds = %11
  %123 = load ptr, ptr %3, align 4
  %124 = load ptr, ptr %5, align 4
  %125 = getelementptr inbounds %struct.sta_info, ptr %9, i32 0, i32 46
  %126 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %123, i32 0, i32 6, i32 0, i32 1
  %127 = load i8, ptr %126, align 1
  tail call fastcc void @drv_twt_teardown_request(ptr noundef %124, ptr noundef %0, ptr noundef %125, i8 noundef zeroext %127) #8
  br label %128

128:                                              ; preds = %122, %119, %118, %81, %11, %2
  tail call void @mutex_unlock(ptr noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get_bss(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_s1g_status_twt_action(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %4, i32 0, i32 2
  %9 = tail call ptr @sta_info_get_bss(ptr noundef %0, ptr noundef %8) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %59, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %4, i32 0, i32 6
  %13 = getelementptr inbounds %struct.anon.155, ptr %12, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 6
  br i1 %15, label %16, label %59

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %17, i32 0, i32 6, i32 0, i32 2, i32 2
  %19 = load i16, ptr %18, align 1
  %20 = lshr i16 %19, 7
  %21 = trunc i16 %20 to i8
  %22 = and i8 %21, 7
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.sta_info, ptr %9, i32 0, i32 46
  tail call fastcc void @drv_twt_teardown_request(ptr noundef %23, ptr noundef %0, ptr noundef %24, i8 noundef zeroext %22) #8
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.ieee80211_hw, ptr %25, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 27
  %29 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %28, i32 noundef 2592) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %59, label %31

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  %33 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %17, i32 0, i32 3
  %34 = load i32, ptr %26, align 4
  %35 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 %34
  store ptr %37, ptr %35, align 4
  %38 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 14
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr i8, ptr %39, i32 %34
  store ptr %40, ptr %38, align 8
  %41 = tail call ptr @skb_put(ptr noundef nonnull %29, i32 noundef 27) #8
  %42 = getelementptr inbounds i8, ptr %41, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(27) %42, i8 0, i32 25, i1 false) #8
  store i16 208, ptr %41, align 2
  %43 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %41, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %43, ptr noundef align 1 dereferenceable(6) %33, i32 6, i1 false) #8
  %44 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %41, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %44, ptr noundef align 8 dereferenceable(6) %32, i32 6, i1 false) #8
  %45 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %41, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %45, ptr noundef align 1 dereferenceable(6) %32, i32 6, i1 false) #8
  %46 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %41, i32 0, i32 6
  store i8 22, ptr %46, align 2
  %47 = getelementptr inbounds %struct.anon.155, ptr %46, i32 0, i32 1
  store i8 7, ptr %47, align 1
  %48 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %41, i32 0, i32 6, i32 0, i32 1
  store i8 %22, ptr %48, align 1
  %49 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 3
  %50 = load i32, ptr %49, align 8
  %51 = or i32 %50, 65537
  store i32 %51, ptr %49, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %53 = load volatile ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56, !prof !8

55:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2200, i32 noundef 9, ptr noundef null) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  tail call void @kfree_skb_reason(ptr noundef nonnull %29, i32 noundef 0) #8
  br label %59

56:                                               ; preds = %31
  %57 = load ptr, ptr %53, align 4
  %58 = load i32, ptr %57, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %0, ptr noundef nonnull %29, i32 noundef 7, i32 noundef %58) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %59

59:                                               ; preds = %56, %55, %16, %11, %2
  tail call void @mutex_unlock(ptr noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_add_twt_setup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drv_twt_teardown_request(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  %9 = load i1, ptr @drv_twt_teardown_request.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %18, !prof !8

12:                                               ; preds = %4
  store i1 true, ptr @drv_twt_teardown_request.__already_done, align 1
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %17 = select i1 %15, ptr %16, ptr %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1478, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %17, i32 noundef %6) #8
  br label %18

18:                                               ; preds = %12, %4
  br i1 %8, label %61, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ieee80211_ops, ptr %21, i32 0, i32 107
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %61, label %25

25:                                               ; preds = %19
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_twt_teardown_request, i32 0, i32 1), align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = tail call ptr @llvm.thread.pointer() #8
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 5
  %33 = getelementptr i32, ptr @__cpu_online_mask, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %31, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %40 = tail call i32 @__traceiter_drv_twt_teardown_request(ptr noundef null, ptr noundef %0, ptr noundef %2, i8 noundef zeroext %3) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %41 = load ptr, ptr %20, align 4
  %42 = getelementptr inbounds %struct.ieee80211_ops, ptr %41, i32 0, i32 107
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %39, %28, %25
  %45 = phi ptr [ %23, %25 ], [ %23, %28 ], [ %43, %39 ]
  tail call void %45(ptr noundef %0, ptr noundef %2, i8 noundef zeroext %3) #8
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = tail call ptr @llvm.thread.pointer() #8
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = lshr i32 %51, 5
  %53 = getelementptr i32, ptr @__cpu_online_mask, i32 %52
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %51, 31
  %56 = shl nuw i32 1, %55
  %57 = and i32 %56, %54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  %60 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  br label %61

61:                                               ; preds = %59, %48, %44, %19, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_twt_teardown_request(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }

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
!9 = !{i64 2159300341}
!10 = !{i64 2159300537}
!11 = !{i64 2157371066}
!12 = !{i64 2157371218}
!13 = !{i64 2149462051}
!14 = !{i64 2149462268}
!15 = !{i64 2159318305}
!16 = !{i64 2159318501}
