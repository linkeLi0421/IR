; ModuleID = '/llk/IR/net/mac80211/driver-ops.c_pt.bc'
source_filename = "../net/mac80211/driver-ops.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.144, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%union.anon.144 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
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
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.133, [17 x i16], %struct.anon.134, %struct.anon.135, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
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
%struct.ieee80211_vif_chanctx_switch = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.c\00", align 1
@drv_change_interface.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@drv_remove_interface.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_sta_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_sta_set_txpwr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_sta_rc_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_conf_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_conf_tx.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%s: invalid CW_min/CW_max: %d/%d\0A\00", align 1
@drv_get_tsf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_set_tsf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_offset_tsf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_reset_tsf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_switch_vif_chanctx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_switch_vif_chanctx.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_ampdu_action.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_start = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_stop = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_add_interface = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_change_interface = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_remove_interface = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_sta_state = external dso_local global %struct.tracepoint, align 4
@drv_sta_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@__tracepoint_drv_sta_add = external dso_local global %struct.tracepoint, align 4
@drv_sta_rate_tbl_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_sta_rate_tbl_update = external dso_local global %struct.tracepoint, align 4
@drv_sta_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_sta_remove = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_sta_set_txpwr = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_sta_rc_update = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_conf_tx = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_get_tsf = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_u64 = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_set_tsf = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_offset_tsf = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_reset_tsf = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_switch_vif_chanctx = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_ampdu_action = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drv_start(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 35
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 16, i32 noundef 9, ptr noundef null) #3
  br label %46

6:                                                ; preds = %1
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_start, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = tail call ptr @llvm.thread.pointer() #3
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !10
  %21 = tail call i32 @__traceiter_drv_start(ptr noundef null, ptr noundef %0) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  br label %22

22:                                               ; preds = %20, %9, %6
  store i8 1, ptr %2, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  %23 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ieee80211_ops, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %0) #3
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %22
  %31 = tail call ptr @llvm.thread.pointer() #3
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  %42 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %27) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %43

43:                                               ; preds = %41, %30, %22
  %44 = icmp eq i32 %27, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  store i8 0, ptr %2, align 1
  br label %46

46:                                               ; preds = %45, %43, %5
  %47 = phi i32 [ -114, %5 ], [ %27, %45 ], [ 0, %43 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drv_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 35
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !15

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef null) #3
  br label %47

6:                                                ; preds = %1
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_stop, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = tail call ptr @llvm.thread.pointer() #3
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  %21 = tail call i32 @__traceiter_drv_stop(ptr noundef null, ptr noundef %0) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !17
  br label %22

22:                                               ; preds = %20, %9, %6
  %23 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ieee80211_ops, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef %0) #3
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = tail call ptr @llvm.thread.pointer() #3
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !18
  %41 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !19
  br label %42

42:                                               ; preds = %40, %29, %22
  %43 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 42
  %44 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 42, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #3, !srcloc !20
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #3, !srcloc !21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !22
  tail call void @tasklet_unlock_wait(ptr noundef %43) #3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #3, !srcloc !20
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #3, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !26
  store i8 0, ptr %2, align 1
  br label %47

47:                                               ; preds = %42, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drv_add_interface(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %4 = load i32, ptr %3, align 8
  switch i32 %4, label %16 [
    i32 4, label %15
    i32 6, label %5
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 4096
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16, !prof !15

15:                                               ; preds = %10, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef null) #3
  br label %59

16:                                               ; preds = %10, %5, %2
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_add_interface, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = tail call ptr @llvm.thread.pointer() #3
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !27
  %31 = tail call i32 @__traceiter_drv_add_interface(ptr noundef null, ptr noundef %0, ptr noundef %1) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !28
  br label %32

32:                                               ; preds = %30, %19, %16
  %33 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ieee80211_ops, ptr %34, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %0, ptr noundef %3) #3
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %32
  %41 = tail call ptr @llvm.thread.pointer() #3
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  %52 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %37) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %53

53:                                               ; preds = %51, %40, %32
  %54 = icmp eq i32 %37, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 8
  %57 = load i32, ptr %56, align 8
  %58 = or i32 %57, 32
  store i32 %58, ptr %56, align 8
  br label %59

59:                                               ; preds = %55, %53, %15
  %60 = phi i32 [ -22, %15 ], [ 0, %55 ], [ %37, %53 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drv_change_interface(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  %9 = load i1, ptr @drv_change_interface.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %18, !prof !15

12:                                               ; preds = %4
  store i1 true, ptr @drv_change_interface.__already_done, align 1
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %17 = select i1 %15, ptr %16, ptr %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 83, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %17, i32 noundef %6) #3
  br label %18

18:                                               ; preds = %12, %4
  br i1 %8, label %57, label %19

19:                                               ; preds = %18
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_change_interface, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = tail call ptr @llvm.thread.pointer() #3
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %25, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !29
  %34 = tail call i32 @__traceiter_drv_change_interface(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !30
  br label %35

35:                                               ; preds = %33, %22, %19
  %36 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ieee80211_ops, ptr %37, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %41 = tail call i32 %39(ptr noundef %0, ptr noundef %40, i32 noundef %2, i1 noundef zeroext %3) #3
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %35
  %45 = tail call ptr @llvm.thread.pointer() #3
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 5
  %49 = getelementptr i32, ptr @__cpu_online_mask, i32 %48
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %47, 31
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, %50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %44
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  %56 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %41) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %57

57:                                               ; preds = %55, %44, %35, %18
  %58 = phi i32 [ -5, %18 ], [ %41, %35 ], [ %41, %44 ], [ %41, %55 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drv_remove_interface(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @drv_remove_interface.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %16, !prof !15

10:                                               ; preds = %2
  store i1 true, ptr @drv_remove_interface.__already_done, align 1
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %15 = select i1 %13, ptr %14, ptr %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %15, i32 noundef %4) #3
  br label %16

16:                                               ; preds = %10, %2
  br i1 %6, label %56, label %17

17:                                               ; preds = %16
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_remove_interface, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = tail call ptr @llvm.thread.pointer() #3
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !31
  %32 = tail call i32 @__traceiter_drv_remove_interface(ptr noundef null, ptr noundef %0, ptr noundef %1) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !32
  br label %33

33:                                               ; preds = %31, %20, %17
  %34 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ieee80211_ops, ptr %35, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  tail call void %37(ptr noundef %0, ptr noundef %38) #3
  %39 = load i32, ptr %3, align 8
  %40 = and i32 %39, -33
  store i32 %40, ptr %3, align 8
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %33
  %44 = tail call ptr @llvm.thread.pointer() #3
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 5
  %48 = getelementptr i32, ptr @__cpu_online_mask, i32 %47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %46, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %49
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !18
  %55 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !19
  br label %56

56:                                               ; preds = %54, %43, %33, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drv_sta_state(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 49
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -1408
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %12, %9 ], [ %1, %5 ]
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  %19 = load i1, ptr @drv_sta_state.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %28, !prof !15

22:                                               ; preds = %13
  store i1 true, ptr @drv_sta_state.__already_done, align 1
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 10
  %27 = select i1 %25, ptr %26, ptr %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %27, i32 noundef %16) #3
  br label %28

28:                                               ; preds = %22, %13
  br i1 %18, label %278, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.sta_info, ptr %2, i32 0, i32 46
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sta_state, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = tail call ptr @llvm.thread.pointer() #3
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !33
  %45 = tail call i32 @__traceiter_drv_sta_state(ptr noundef null, ptr noundef %0, ptr noundef %14, ptr noundef %30, i32 noundef %3, i32 noundef %4) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !34
  br label %46

46:                                               ; preds = %44, %33, %29
  %47 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ieee80211_ops, ptr %48, i32 0, i32 35
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 58
  %54 = tail call i32 %50(ptr noundef %0, ptr noundef %53, ptr noundef %30, i32 noundef %3, i32 noundef %4) #3
  br label %261

55:                                               ; preds = %46
  %56 = icmp eq i32 %3, 2
  %57 = icmp eq i32 %4, 3
  %58 = and i1 %56, %57
  br i1 %58, label %59, label %193

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 58
  %61 = load i32, ptr %60, align 8
  %62 = icmp eq i32 %61, 4
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 49
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 -1408
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi ptr [ %66, %63 ], [ %14, %59 ]
  %69 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %68, i32 0, i32 8
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 32
  %72 = icmp eq i32 %71, 0
  %73 = load i1, ptr @drv_sta_add.__already_done, align 1
  %74 = xor i1 %73, true
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %82, !prof !15

76:                                               ; preds = %67
  store i1 true, ptr @drv_sta_add.__already_done, align 1
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %68, i32 0, i32 6
  %78 = load ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, null
  %80 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %68, i32 0, i32 10
  %81 = select i1 %79, ptr %80, ptr %78
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 460, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %81, i32 noundef %70) #3
  br label %82

82:                                               ; preds = %76, %67
  br i1 %72, label %261, label %83

83:                                               ; preds = %82
  %84 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sta_add, i32 0, i32 1), align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = tail call ptr @llvm.thread.pointer() #3
  %88 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %89 = load i32, ptr %88, align 8
  %90 = lshr i32 %89, 5
  %91 = getelementptr i32, ptr @__cpu_online_mask, i32 %90
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %89, 31
  %94 = shl nuw i32 1, %93
  %95 = and i32 %94, %92
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %86
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !35
  %98 = tail call i32 @__traceiter_drv_sta_add(ptr noundef null, ptr noundef %0, ptr noundef %68, ptr noundef %30) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !36
  br label %99

99:                                               ; preds = %97, %86, %83
  %100 = load ptr, ptr %47, align 4
  %101 = getelementptr inbounds %struct.ieee80211_ops, ptr %100, i32 0, i32 31
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %68, i32 0, i32 58
  %106 = tail call i32 %102(ptr noundef %0, ptr noundef %105, ptr noundef %30) #3
  br label %107

107:                                              ; preds = %104, %99
  %108 = phi i32 [ %106, %104 ], [ 0, %99 ]
  %109 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %107
  %112 = tail call ptr @llvm.thread.pointer() #3
  %113 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 2
  %114 = load i32, ptr %113, align 8
  %115 = lshr i32 %114, 5
  %116 = getelementptr i32, ptr @__cpu_online_mask, i32 %115
  %117 = load volatile i32, ptr %116, align 4
  %118 = and i32 %114, 31
  %119 = shl nuw i32 1, %118
  %120 = and i32 %119, %117
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %111
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  %123 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %108) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %124

124:                                              ; preds = %122, %111, %107
  %125 = icmp eq i32 %108, 0
  br i1 %125, label %126, label %261

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.sta_info, ptr %2, i32 0, i32 21
  store i8 1, ptr %127, align 4
  %128 = getelementptr inbounds %struct.sta_info, ptr %2, i32 0, i32 46, i32 16
  %129 = load volatile ptr, ptr %128, align 8
  %130 = icmp eq ptr %129, null
  br i1 %130, label %261, label %131

131:                                              ; preds = %126
  %132 = load i32, ptr %60, align 8
  %133 = icmp eq i32 %132, 4
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 49
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr i8, ptr %136, i32 -1408
  br label %138

138:                                              ; preds = %134, %131
  %139 = phi ptr [ %137, %134 ], [ %14, %131 ]
  %140 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %139, i32 0, i32 8
  %141 = load i32, ptr %140, align 8
  %142 = and i32 %141, 32
  %143 = icmp eq i32 %142, 0
  %144 = load i1, ptr @drv_sta_rate_tbl_update.__already_done, align 1
  %145 = xor i1 %144, true
  %146 = select i1 %143, i1 %145, i1 false
  br i1 %146, label %147, label %153, !prof !15

147:                                              ; preds = %138
  store i1 true, ptr @drv_sta_rate_tbl_update.__already_done, align 1
  %148 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %139, i32 0, i32 6
  %149 = load ptr, ptr %148, align 8
  %150 = icmp eq ptr %149, null
  %151 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %139, i32 0, i32 10
  %152 = select i1 %150, ptr %151, ptr %149
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 545, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %152, i32 noundef %141) #3
  br label %153

153:                                              ; preds = %147, %138
  br i1 %143, label %261, label %154

154:                                              ; preds = %153
  %155 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sta_rate_tbl_update, i32 0, i32 1), align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %154
  %158 = tail call ptr @llvm.thread.pointer() #3
  %159 = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 2
  %160 = load i32, ptr %159, align 8
  %161 = lshr i32 %160, 5
  %162 = getelementptr i32, ptr @__cpu_online_mask, i32 %161
  %163 = load volatile i32, ptr %162, align 4
  %164 = and i32 %160, 31
  %165 = shl nuw i32 1, %164
  %166 = and i32 %165, %163
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %157
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !37
  %169 = tail call i32 @__traceiter_drv_sta_rate_tbl_update(ptr noundef null, ptr noundef %0, ptr noundef %139, ptr noundef %30) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !38
  br label %170

170:                                              ; preds = %168, %157, %154
  %171 = load ptr, ptr %47, align 4
  %172 = getelementptr inbounds %struct.ieee80211_ops, ptr %171, i32 0, i32 38
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %139, i32 0, i32 58
  tail call void %173(ptr noundef %0, ptr noundef %176, ptr noundef %30) #3
  br label %177

177:                                              ; preds = %175, %170
  %178 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %261

180:                                              ; preds = %177
  %181 = tail call ptr @llvm.thread.pointer() #3
  %182 = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 2
  %183 = load i32, ptr %182, align 8
  %184 = lshr i32 %183, 5
  %185 = getelementptr i32, ptr @__cpu_online_mask, i32 %184
  %186 = load volatile i32, ptr %185, align 4
  %187 = and i32 %183, 31
  %188 = shl nuw i32 1, %187
  %189 = and i32 %188, %186
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %261, label %191

191:                                              ; preds = %180
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !18
  %192 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !19
  br label %261

193:                                              ; preds = %55
  %194 = icmp eq i32 %3, 3
  %195 = icmp eq i32 %4, 2
  %196 = and i1 %194, %195
  br i1 %196, label %197, label %261

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 58
  %199 = load i32, ptr %198, align 8
  %200 = icmp eq i32 %199, 4
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 49
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr i8, ptr %203, i32 -1408
  br label %205

205:                                              ; preds = %201, %197
  %206 = phi ptr [ %204, %201 ], [ %14, %197 ]
  %207 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %206, i32 0, i32 8
  %208 = load i32, ptr %207, align 8
  %209 = and i32 %208, 32
  %210 = icmp eq i32 %209, 0
  %211 = load i1, ptr @drv_sta_remove.__already_done, align 1
  %212 = xor i1 %211, true
  %213 = select i1 %210, i1 %212, i1 false
  br i1 %213, label %214, label %220, !prof !15

214:                                              ; preds = %205
  store i1 true, ptr @drv_sta_remove.__already_done, align 1
  %215 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %206, i32 0, i32 6
  %216 = load ptr, ptr %215, align 8
  %217 = icmp eq ptr %216, null
  %218 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %206, i32 0, i32 10
  %219 = select i1 %217, ptr %218, ptr %216
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 479, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %219, i32 noundef %208) #3
  br label %220

220:                                              ; preds = %214, %205
  br i1 %210, label %261, label %221

221:                                              ; preds = %220
  %222 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sta_remove, i32 0, i32 1), align 4
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %237

224:                                              ; preds = %221
  %225 = tail call ptr @llvm.thread.pointer() #3
  %226 = getelementptr inbounds %struct.thread_info, ptr %225, i32 0, i32 2
  %227 = load i32, ptr %226, align 8
  %228 = lshr i32 %227, 5
  %229 = getelementptr i32, ptr @__cpu_online_mask, i32 %228
  %230 = load volatile i32, ptr %229, align 4
  %231 = and i32 %227, 31
  %232 = shl nuw i32 1, %231
  %233 = and i32 %232, %230
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %224
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !39
  %236 = tail call i32 @__traceiter_drv_sta_remove(ptr noundef null, ptr noundef %0, ptr noundef %206, ptr noundef %30) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !40
  br label %237

237:                                              ; preds = %235, %224, %221
  %238 = load ptr, ptr %47, align 4
  %239 = getelementptr inbounds %struct.ieee80211_ops, ptr %238, i32 0, i32 32
  %240 = load ptr, ptr %239, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %245, label %242

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %206, i32 0, i32 58
  %244 = tail call i32 %240(ptr noundef %0, ptr noundef %243, ptr noundef %30) #3
  br label %245

245:                                              ; preds = %242, %237
  %246 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %261

248:                                              ; preds = %245
  %249 = tail call ptr @llvm.thread.pointer() #3
  %250 = getelementptr inbounds %struct.thread_info, ptr %249, i32 0, i32 2
  %251 = load i32, ptr %250, align 8
  %252 = lshr i32 %251, 5
  %253 = getelementptr i32, ptr @__cpu_online_mask, i32 %252
  %254 = load volatile i32, ptr %253, align 4
  %255 = and i32 %251, 31
  %256 = shl nuw i32 1, %255
  %257 = and i32 %256, %254
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %261, label %259

259:                                              ; preds = %248
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !18
  %260 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !19
  br label %261

261:                                              ; preds = %259, %248, %245, %220, %193, %191, %180, %177, %153, %126, %124, %82, %52
  %262 = phi i32 [ %54, %52 ], [ 0, %126 ], [ %108, %124 ], [ 0, %193 ], [ 0, %153 ], [ 0, %177 ], [ 0, %180 ], [ 0, %191 ], [ 0, %220 ], [ 0, %245 ], [ 0, %248 ], [ 0, %259 ], [ -5, %82 ]
  %263 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %265, label %278

265:                                              ; preds = %261
  %266 = tail call ptr @llvm.thread.pointer() #3
  %267 = getelementptr inbounds %struct.thread_info, ptr %266, i32 0, i32 2
  %268 = load i32, ptr %267, align 8
  %269 = lshr i32 %268, 5
  %270 = getelementptr i32, ptr @__cpu_online_mask, i32 %269
  %271 = load volatile i32, ptr %270, align 4
  %272 = and i32 %268, 31
  %273 = shl nuw i32 1, %272
  %274 = and i32 %273, %271
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %265
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  %277 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %262) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %278

278:                                              ; preds = %276, %265, %261, %28
  %279 = phi i32 [ -5, %28 ], [ %262, %261 ], [ %262, %265 ], [ %262, %276 ]
  ret i32 %279
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drv_sta_set_txpwr(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 49
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -1408
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi ptr [ %10, %7 ], [ %1, %3 ]
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  %17 = load i1, ptr @drv_sta_set_txpwr.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %26, !prof !15

20:                                               ; preds = %11
  store i1 true, ptr @drv_sta_set_txpwr.__already_done, align 1
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 6
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 10
  %25 = select i1 %23, ptr %24, ptr %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %25, i32 noundef %14) #3
  br label %26

26:                                               ; preds = %20, %11
  br i1 %16, label %70, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.sta_info, ptr %2, i32 0, i32 46
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sta_set_txpwr, i32 0, i32 1), align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = tail call ptr @llvm.thread.pointer() #3
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 5
  %36 = getelementptr i32, ptr @__cpu_online_mask, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %34, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %31
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !41
  %43 = tail call i32 @__traceiter_drv_sta_set_txpwr(ptr noundef null, ptr noundef %0, ptr noundef %12, ptr noundef %28) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !42
  br label %44

44:                                               ; preds = %42, %31, %27
  %45 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.ieee80211_ops, ptr %46, i32 0, i32 34
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 58
  %52 = tail call i32 %48(ptr noundef %0, ptr noundef %51, ptr noundef %28) #3
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi i32 [ %52, %50 ], [ -95, %44 ]
  %55 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = tail call ptr @llvm.thread.pointer() #3
  %59 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 5
  %62 = getelementptr i32, ptr @__cpu_online_mask, i32 %61
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %60, 31
  %65 = shl nuw i32 1, %64
  %66 = and i32 %65, %63
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %57
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  %69 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %54) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %70

70:                                               ; preds = %68, %57, %53, %26
  %71 = phi i32 [ -5, %26 ], [ %54, %53 ], [ %54, %57 ], [ %54, %68 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drv_sta_rc_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 49
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 -1408
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %11, %8 ], [ %1, %4 ]
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  %18 = load i1, ptr @drv_sta_rc_update.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %27, !prof !15

21:                                               ; preds = %12
  store i1 true, ptr @drv_sta_rc_update.__already_done, align 1
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 6
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 10
  %26 = select i1 %24, ptr %25, ptr %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %26, i32 noundef %15) #3
  br label %27

27:                                               ; preds = %21, %12
  br i1 %17, label %75, label %28

28:                                               ; preds = %27
  %29 = and i32 %3, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 58
  %33 = load i32, ptr %32, align 8
  switch i32 %33, label %34 [
    i32 7, label %35
    i32 1, label %35
  ]

34:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 172, i32 noundef 9, ptr noundef null) #3
  br label %35

35:                                               ; preds = %34, %31, %31, %28
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sta_rc_update, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = tail call ptr @llvm.thread.pointer() #3
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 5
  %43 = getelementptr i32, ptr @__cpu_online_mask, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %41, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !43
  %50 = tail call i32 @__traceiter_drv_sta_rc_update(ptr noundef null, ptr noundef %0, ptr noundef %13, ptr noundef %2, i32 noundef %3) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !44
  br label %51

51:                                               ; preds = %49, %38, %35
  %52 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ieee80211_ops, ptr %53, i32 0, i32 37
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 58
  tail call void %55(ptr noundef %0, ptr noundef %58, ptr noundef %2, i32 noundef %3) #3
  br label %59

59:                                               ; preds = %57, %51
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = tail call ptr @llvm.thread.pointer() #3
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = lshr i32 %65, 5
  %67 = getelementptr i32, ptr @__cpu_online_mask, i32 %66
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %65, 31
  %70 = shl nuw i32 1, %69
  %71 = and i32 %70, %68
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %62
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !18
  %74 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !19
  br label %75

75:                                               ; preds = %73, %62, %59, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drv_conf_tx(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  %9 = load i1, ptr @drv_conf_tx.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %18, !prof !15

12:                                               ; preds = %4
  store i1 true, ptr @drv_conf_tx.__already_done, align 1
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %17 = select i1 %15, ptr %16, ptr %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 190, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %17, i32 noundef %6) #3
  br label %18

18:                                               ; preds = %12, %4
  br i1 %8, label %84, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %3, i32 0, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %3, i32 0, i32 2
  %25 = load i16, ptr %24, align 2
  %26 = icmp ugt i16 %21, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ieee80211_ops, ptr %29, i32 0, i32 40
  %31 = load ptr, ptr %30, align 4
  %32 = icmp ne ptr %31, null
  %33 = load i1, ptr @drv_conf_tx.__already_done.2, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %84, !prof !15

36:                                               ; preds = %27
  store i1 true, ptr @drv_conf_tx.__already_done.2, align 1
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %38 = zext i16 %21 to i32
  %39 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %3, i32 0, i32 2
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 200, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %37, i32 noundef %38, i32 noundef %41) #3
  br label %84

42:                                               ; preds = %23
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_conf_tx, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = tail call ptr @llvm.thread.pointer() #3
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 5
  %50 = getelementptr i32, ptr @__cpu_online_mask, i32 %49
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %48, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %53, %51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !45
  %57 = tail call i32 @__traceiter_drv_conf_tx(ptr noundef null, ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !46
  br label %58

58:                                               ; preds = %56, %45, %42
  %59 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.ieee80211_ops, ptr %60, i32 0, i32 40
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %66 = tail call i32 %62(ptr noundef %0, ptr noundef %65, i16 noundef zeroext %2, ptr noundef %3) #3
  br label %67

67:                                               ; preds = %64, %58
  %68 = phi i32 [ %66, %64 ], [ -95, %58 ]
  %69 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = tail call ptr @llvm.thread.pointer() #3
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 5
  %76 = getelementptr i32, ptr @__cpu_online_mask, i32 %75
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %74, 31
  %79 = shl nuw i32 1, %78
  %80 = and i32 %79, %77
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %71
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  %83 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %68) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %84

84:                                               ; preds = %82, %71, %67, %36, %27, %18
  %85 = phi i32 [ -5, %18 ], [ -22, %36 ], [ -22, %27 ], [ %68, %67 ], [ %68, %71 ], [ %68, %82 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @drv_get_tsf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @drv_get_tsf.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %16, !prof !15

10:                                               ; preds = %2
  store i1 true, ptr @drv_get_tsf.__already_done, align 1
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %15 = select i1 %13, ptr %14, ptr %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %15, i32 noundef %4) #3
  br label %16

16:                                               ; preds = %10, %2
  br i1 %6, label %59, label %17

17:                                               ; preds = %16
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_get_tsf, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = tail call ptr @llvm.thread.pointer() #3
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !47
  %32 = tail call i32 @__traceiter_drv_get_tsf(ptr noundef null, ptr noundef %0, ptr noundef %1) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !48
  br label %33

33:                                               ; preds = %31, %20, %17
  %34 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ieee80211_ops, ptr %35, i32 0, i32 41
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %41 = tail call i64 %37(ptr noundef %0, ptr noundef %40) #3
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi i64 [ %41, %39 ], [ -1, %33 ]
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_u64, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = tail call ptr @llvm.thread.pointer() #3
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 5
  %51 = getelementptr i32, ptr @__cpu_online_mask, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !49
  %58 = tail call i32 @__traceiter_drv_return_u64(ptr noundef null, ptr noundef %0, i64 noundef %43) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !50
  br label %59

59:                                               ; preds = %57, %46, %42, %16
  %60 = phi i64 [ -1, %16 ], [ %43, %42 ], [ %43, %46 ], [ %43, %57 ]
  ret i64 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drv_set_tsf(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @drv_set_tsf.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %17, !prof !15

11:                                               ; preds = %3
  store i1 true, ptr @drv_set_tsf.__already_done, align 1
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %16 = select i1 %14, ptr %15, ptr %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %16, i32 noundef %5) #3
  br label %17

17:                                               ; preds = %11, %3
  br i1 %7, label %58, label %18

18:                                               ; preds = %17
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_set_tsf, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = tail call ptr @llvm.thread.pointer() #3
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !51
  %33 = tail call i32 @__traceiter_drv_set_tsf(ptr noundef null, ptr noundef %0, ptr noundef %1, i64 noundef %2) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !52
  br label %34

34:                                               ; preds = %32, %21, %18
  %35 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ieee80211_ops, ptr %36, i32 0, i32 42
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  tail call void %38(ptr noundef %0, ptr noundef %41, i64 noundef %2) #3
  br label %42

42:                                               ; preds = %40, %34
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = tail call ptr @llvm.thread.pointer() #3
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 5
  %50 = getelementptr i32, ptr @__cpu_online_mask, i32 %49
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %48, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %53, %51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !18
  %57 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !19
  br label %58

58:                                               ; preds = %56, %45, %42, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drv_offset_tsf(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @drv_offset_tsf.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %17, !prof !15

11:                                               ; preds = %3
  store i1 true, ptr @drv_offset_tsf.__already_done, align 1
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %16 = select i1 %14, ptr %15, ptr %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %16, i32 noundef %5) #3
  br label %17

17:                                               ; preds = %11, %3
  br i1 %7, label %58, label %18

18:                                               ; preds = %17
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_offset_tsf, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = tail call ptr @llvm.thread.pointer() #3
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !53
  %33 = tail call i32 @__traceiter_drv_offset_tsf(ptr noundef null, ptr noundef %0, ptr noundef %1, i64 noundef %2) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !54
  br label %34

34:                                               ; preds = %32, %21, %18
  %35 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ieee80211_ops, ptr %36, i32 0, i32 43
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  tail call void %38(ptr noundef %0, ptr noundef %41, i64 noundef %2) #3
  br label %42

42:                                               ; preds = %40, %34
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = tail call ptr @llvm.thread.pointer() #3
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 5
  %50 = getelementptr i32, ptr @__cpu_online_mask, i32 %49
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %48, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %53, %51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !18
  %57 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !19
  br label %58

58:                                               ; preds = %56, %45, %42, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drv_reset_tsf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @drv_reset_tsf.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %16, !prof !15

10:                                               ; preds = %2
  store i1 true, ptr @drv_reset_tsf.__already_done, align 1
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %15 = select i1 %13, ptr %14, ptr %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 264, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %15, i32 noundef %4) #3
  br label %16

16:                                               ; preds = %10, %2
  br i1 %6, label %57, label %17

17:                                               ; preds = %16
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_reset_tsf, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = tail call ptr @llvm.thread.pointer() #3
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !55
  %32 = tail call i32 @__traceiter_drv_reset_tsf(ptr noundef null, ptr noundef %0, ptr noundef %1) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !56
  br label %33

33:                                               ; preds = %31, %20, %17
  %34 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ieee80211_ops, ptr %35, i32 0, i32 44
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  tail call void %37(ptr noundef %0, ptr noundef %40) #3
  br label %41

41:                                               ; preds = %39, %33
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = tail call ptr @llvm.thread.pointer() #3
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 5
  %49 = getelementptr i32, ptr @__cpu_online_mask, i32 %48
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %47, 31
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, %50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %44
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !18
  %56 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !19
  br label %57

57:                                               ; preds = %55, %44, %41, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drv_switch_vif_chanctx(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_ops, ptr %6, i32 0, i32 74
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %94, label %10

10:                                               ; preds = %4
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %40, %10
  %13 = phi i32 [ %41, %40 ], [ 0, %10 ]
  %14 = getelementptr %struct.ieee80211_vif_chanctx_switch, ptr %1, i32 %13, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.ieee80211_vif_chanctx_switch, ptr %1, i32 %13, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 -4
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  %21 = load i1, ptr @drv_switch_vif_chanctx.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !15

24:                                               ; preds = %12
  store i1 true, ptr @drv_switch_vif_chanctx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef null) #3
  br label %25

25:                                               ; preds = %24, %12
  switch i32 %3, label %40 [
    i32 1, label %26
    i32 0, label %30
  ]

26:                                               ; preds = %25
  %27 = getelementptr i8, ptr %15, i32 -4
  %28 = load i8, ptr %27, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %40, label %34

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %15, i32 -4
  %32 = load i8, ptr %31, align 4, !range !8
  %33 = icmp eq i8 %32, 0
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ true, %26 ], [ %33, %30 ]
  %36 = load i1, ptr @drv_switch_vif_chanctx.__already_done.4, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !15

39:                                               ; preds = %34
  store i1 true, ptr @drv_switch_vif_chanctx.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 299, i32 noundef 9, ptr noundef null) #3
  br label %40

40:                                               ; preds = %39, %34, %26, %25
  %41 = add nuw nsw i32 %13, 1
  %42 = icmp eq i32 %41, %2
  br i1 %42, label %43, label %12

43:                                               ; preds = %40, %10
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_switch_vif_chanctx, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = tail call ptr @llvm.thread.pointer() #3
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 5
  %51 = getelementptr i32, ptr @__cpu_online_mask, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !57
  %58 = tail call i32 @__traceiter_drv_switch_vif_chanctx(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !58
  br label %59

59:                                               ; preds = %57, %46, %43
  %60 = load ptr, ptr %5, align 4
  %61 = getelementptr inbounds %struct.ieee80211_ops, ptr %60, i32 0, i32 74
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 %62(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #3
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = tail call ptr @llvm.thread.pointer() #3
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %66
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  %78 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %63) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %79

79:                                               ; preds = %77, %66, %59
  %80 = icmp eq i32 %63, 0
  %81 = icmp eq i32 %3, 1
  %82 = and i1 %81, %80
  %83 = and i1 %82, %11
  br i1 %83, label %84, label %94

84:                                               ; preds = %84, %79
  %85 = phi i32 [ %92, %84 ], [ 0, %79 ]
  %86 = getelementptr %struct.ieee80211_vif_chanctx_switch, ptr %1, i32 %85, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr %struct.ieee80211_vif_chanctx_switch, ptr %1, i32 %85, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %87, i32 -4
  store i8 1, ptr %90, align 4
  %91 = getelementptr i8, ptr %89, i32 -4
  store i8 0, ptr %91, align 4
  %92 = add nuw nsw i32 %85, 1
  %93 = icmp eq i32 %92, %2
  br i1 %93, label %94, label %84

94:                                               ; preds = %84, %79, %4
  %95 = phi i32 [ -95, %4 ], [ %63, %79 ], [ 0, %84 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drv_ampdu_action(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 49
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -1408
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi ptr [ %10, %7 ], [ %1, %3 ]
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  %17 = load i1, ptr @drv_ampdu_action.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %26, !prof !15

20:                                               ; preds = %11
  store i1 true, ptr @drv_ampdu_action.__already_done, align 1
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 6
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 10
  %25 = select i1 %23, ptr %24, ptr %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 335, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %25, i32 noundef %14) #3
  br label %26

26:                                               ; preds = %20, %11
  br i1 %16, label %69, label %27

27:                                               ; preds = %26
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_ampdu_action, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = tail call ptr @llvm.thread.pointer() #3
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !59
  %42 = tail call i32 @__traceiter_drv_ampdu_action(ptr noundef null, ptr noundef %0, ptr noundef %12, ptr noundef %2) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !60
  br label %43

43:                                               ; preds = %41, %30, %27
  %44 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ieee80211_ops, ptr %45, i32 0, i32 46
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 58
  %51 = tail call i32 %47(ptr noundef %0, ptr noundef %50, ptr noundef %2) #3
  br label %52

52:                                               ; preds = %49, %43
  %53 = phi i32 [ %51, %49 ], [ -95, %43 ]
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = tail call ptr @llvm.thread.pointer() #3
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = lshr i32 %59, 5
  %61 = getelementptr i32, ptr @__cpu_online_mask, i32 %60
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %59, 31
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, %62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %56
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  %68 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %53) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %69

69:                                               ; preds = %67, %56, %52, %26
  %70 = phi i32 [ -5, %26 ], [ %53, %52 ], [ %53, %56 ], [ %53, %67 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_stop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_add_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_change_interface(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_remove_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sta_state(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sta_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sta_rate_tbl_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sta_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sta_set_txpwr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sta_rc_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_conf_tx(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_get_tsf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_u64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_set_tsf(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_offset_tsf(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_reset_tsf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_switch_vif_chanctx(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_ampdu_action(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2157402484}
!11 = !{i64 2157402624}
!12 = !{i64 2159525879}
!13 = !{i64 2157347350}
!14 = !{i64 2157347510}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2157495869}
!17 = !{i64 2157496007}
!18 = !{i64 2157334480}
!19 = !{i64 2157334632}
!20 = !{i64 783652, i64 2148273623, i64 2148273649, i64 2148273696, i64 2148273718, i64 2148273746, i64 2148273766}
!21 = !{i64 2148285038, i64 2148285064, i64 2148285093, i64 2148285127, i64 2148285158, i64 2148285181}
!22 = !{i64 2154304189}
!23 = !{i64 2154304779}
!24 = !{i64 2154305100}
!25 = !{i64 2148287395, i64 2148287421, i64 2148287450, i64 2148287484, i64 2148287515, i64 2148287538}
!26 = !{i64 2159526491}
!27 = !{i64 2157508983}
!28 = !{i64 2157509153}
!29 = !{i64 2157523284}
!30 = !{i64 2157523482}
!31 = !{i64 2157541161}
!32 = !{i64 2157541337}
!33 = !{i64 2157849425}
!34 = !{i64 2157849641}
!35 = !{i64 2157909593}
!36 = !{i64 2157909761}
!37 = !{i64 2157969926}
!38 = !{i64 2157970118}
!39 = !{i64 2157923220}
!40 = !{i64 2157923394}
!41 = !{i64 2157867363}
!42 = !{i64 2157867543}
!43 = !{i64 2157881685}
!44 = !{i64 2157881883}
!45 = !{i64 2157984461}
!46 = !{i64 2157984643}
!47 = !{i64 2158001585}
!48 = !{i64 2158001743}
!49 = !{i64 2157385950}
!50 = !{i64 2157386110}
!51 = !{i64 2158014837}
!52 = !{i64 2158015005}
!53 = !{i64 2158028282}
!54 = !{i64 2158028462}
!55 = !{i64 2158041551}
!56 = !{i64 2158041713}
!57 = !{i64 2158418281}
!58 = !{i64 2158418487}
!59 = !{i64 2158072583}
!60 = !{i64 2158072767}
