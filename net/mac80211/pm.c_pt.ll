; ModuleID = '/llk/IR/net/mac80211/pm.c_pt.bc'
source_filename = "../net/mac80211/pm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_report_wowlan_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_report_wowlan_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_report_wowlan_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.120, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.120 = type { i32, i16 }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.sk_buff_head = type { %union.anon.121, i32, %struct.spinlock }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { ptr, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.134, i32 }
%union.anon.134 = type { ptr }
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
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.135, [17 x i16], %struct.anon.136, %struct.anon.137, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.anon.135 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.136 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.137 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
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
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.146, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%union.anon.146 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.124, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.124 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.125] }
%struct.anon.125 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_if_managed = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i8, i8, ptr, ptr, ptr, [6 x i8], i8, i8, i8, i8, i32, i32, %struct.work_struct, i32, i8, i8, i8, i32, i8, i8, i16, i32, i32, i32, i32, i32, i8, i16, %struct.ewma_beacon_signal, i32, i32, i32, i32, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_s1g_cap, %struct.ieee80211_s1g_cap, [6 x i8], %struct.delayed_work, ptr, ptr, %struct.spinlock, i8, i8, [4 x %struct.ieee80211_sta_tx_tspec], %struct.delayed_work, ptr, i32 }
%struct.ewma_beacon_signal = type { i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_s1g_cap = type { [10 x i8], [5 x i8] }
%struct.ieee80211_sta_tx_tspec = type { i32, i32, i8, i8, i32, i32, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [18 x i8] c"net/mac80211/pm.c\00", align 1
@__kstrtab_ieee80211_report_wowlan_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_report_wowlan_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_report_wowlan_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_report_wowlan_wakeup to i32), ptr @__kstrtab_ieee80211_report_wowlan_wakeup, ptr @__kstrtabns_ieee80211_report_wowlan_wakeup }, section "___ksymtab+ieee80211_report_wowlan_wakeup", align 4
@__tracepoint_drv_suspend = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ieee80211_report_wowlan_wakeup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ieee80211_suspend(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %167, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 32
  store i8 1, ptr %7, align 2
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void @ieee80211_scan_cancel(ptr noundef %0) #3
  tail call void @ieee80211_dfs_cac_cancel(ptr noundef %0) #3
  tail call void @ieee80211_roc_purge(ptr noundef %0, ptr noundef null) #3
  tail call void @ieee80211_del_virtual_monitor(ptr noundef %0) #3
  %8 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %6
  %13 = icmp eq ptr %1, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = load i8, ptr %1, align 4, !range !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %14, %12
  %18 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %18) #3
  %19 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 49
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %27, label %22

22:                                               ; preds = %22, %17
  %23 = phi ptr [ %25, %22 ], [ %20, %17 ]
  %24 = getelementptr inbounds %struct.sta_info, ptr %23, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 8, ptr noundef %24) #3
  tail call void @ieee80211_sta_tear_down_BA_sessions(ptr noundef %23, i32 noundef 1) #3
  %25 = load ptr, ptr %23, align 4
  %26 = icmp eq ptr %25, %19
  br i1 %26, label %27, label %22

27:                                               ; preds = %22, %17
  tail call void @mutex_unlock(ptr noundef %18) #3
  br label %28

28:                                               ; preds = %27, %6
  %29 = icmp eq ptr %1, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = load i8, ptr %1, align 4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30, %28
  %34 = xor i1 %29, true
  %35 = tail call i32 @ieee80211_request_sched_scan_stop(ptr noundef %0) #3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  tail call void @cfg80211_sched_scan_stopped_locked(ptr noundef %39, i64 noundef 0) #3
  br label %40

40:                                               ; preds = %37, %33, %30, %14
  %41 = phi i1 [ true, %30 ], [ %34, %33 ], [ %34, %37 ], [ true, %14 ]
  tail call void @ieee80211_stop_queues_by_reason(ptr noundef %0, i32 noundef 65535, i32 noundef 4, i1 noundef zeroext false) #3
  tail call void @synchronize_net() #3
  tail call void @ieee80211_flush_queues(ptr noundef %0, ptr noundef null, i1 noundef zeroext true) #3
  %42 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 34
  store i8 1, ptr %42, align 8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %43 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 9
  %44 = load ptr, ptr %43, align 8
  tail call void @flush_workqueue(ptr noundef %44) #3
  %45 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 51
  %46 = tail call i32 @del_timer_sync(ptr noundef %45) #3
  %47 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 93
  %48 = tail call zeroext i1 @cancel_work_sync(ptr noundef %47) #3
  %49 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 95
  %50 = tail call i32 @del_timer_sync(ptr noundef %49) #3
  %51 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 37
  %52 = zext i1 %41 to i8
  store i8 %52, ptr %51, align 1
  %53 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, %53
  br i1 %41, label %56, label %144

56:                                               ; preds = %40
  br i1 %55, label %86, label %57

57:                                               ; preds = %83, %56
  %58 = phi ptr [ %84, %83 ], [ %54, %56 ]
  %59 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %58, i32 0, i32 9
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %58, i32 0, i32 58
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  tail call void @ieee80211_mgd_quiesce(ptr noundef %58) #3
  %68 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %58, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %69 = load ptr, ptr %68, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %83, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %58, i32 0, i32 57
  %73 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %72, i32 0, i32 17
  %74 = load i8, ptr %73, align 2, !range !9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = load i32, ptr %0, align 8
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = or i32 %77, 2
  store i32 %81, ptr %0, align 8
  %82 = tail call i32 @ieee80211_hw_config(ptr noundef %0, i32 noundef 16) #3
  br label %83

83:                                               ; preds = %80, %76, %71, %67, %63, %57
  %84 = load ptr, ptr %58, align 8
  %85 = icmp eq ptr %84, %53
  br i1 %85, label %86, label %57

86:                                               ; preds = %83, %56
  %87 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_suspend, i32 0, i32 1), align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = tail call ptr @llvm.thread.pointer() #3
  %91 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %92 = load i32, ptr %91, align 8
  %93 = lshr i32 %92, 5
  %94 = getelementptr i32, ptr @__cpu_online_mask, i32 %93
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %92, 31
  %97 = shl nuw i32 1, %96
  %98 = and i32 %97, %95
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %89
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  %101 = tail call i32 @__traceiter_drv_suspend(ptr noundef null, ptr noundef %0) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !12
  br label %102

102:                                              ; preds = %100, %89, %86
  %103 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.ieee80211_ops, ptr %104, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = tail call i32 %106(ptr noundef %0, ptr noundef %1) #3
  %108 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %102
  %111 = tail call ptr @llvm.thread.pointer() #3
  %112 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 2
  %113 = load i32, ptr %112, align 8
  %114 = lshr i32 %113, 5
  %115 = getelementptr i32, ptr @__cpu_online_mask, i32 %114
  %116 = load volatile i32, ptr %115, align 4
  %117 = and i32 %113, 31
  %118 = shl nuw i32 1, %117
  %119 = and i32 %118, %116
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %110
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  %122 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %107) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %123

123:                                              ; preds = %121, %110, %102
  %124 = icmp slt i32 %107, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %123
  store i8 0, ptr %42, align 8
  store i8 0, ptr %51, align 1
  %126 = load volatile i32, ptr %8, align 4
  %127 = and i32 %126, 128
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %130) #3
  %131 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 49
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, %131
  br i1 %133, label %139, label %134

134:                                              ; preds = %134, %129
  %135 = phi ptr [ %137, %134 ], [ %132, %129 ]
  %136 = getelementptr inbounds %struct.sta_info, ptr %135, i32 0, i32 23
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %136) #3
  %137 = load ptr, ptr %135, align 4
  %138 = icmp eq ptr %137, %131
  br i1 %138, label %139, label %134

139:                                              ; preds = %134, %129
  tail call void @mutex_unlock(ptr noundef %130) #3
  br label %140

140:                                              ; preds = %139, %125
  tail call void @ieee80211_wake_queues_by_reason(ptr noundef %0, i32 noundef 65535, i32 noundef 4, i1 noundef zeroext false) #3
  br label %171

141:                                              ; preds = %123
  switch i32 %107, label %142 [
    i32 0, label %167
    i32 1, label %143
  ], !prof !15

142:                                              ; preds = %141
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef null) #3
  br label %143

143:                                              ; preds = %142, %141
  tail call void @ieee80211_wake_queues_by_reason(ptr noundef %0, i32 noundef 65535, i32 noundef 4, i1 noundef zeroext false) #3
  br label %171

144:                                              ; preds = %40
  br i1 %55, label %161, label %145

145:                                              ; preds = %158, %144
  %146 = phi ptr [ %159, %158 ], [ %54, %144 ]
  %147 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %146, i32 0, i32 9
  %148 = load volatile i32, ptr %147, align 4
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %146, i32 0, i32 58
  %153 = load i32, ptr %152, align 8
  switch i32 %153, label %155 [
    i32 4, label %158
    i32 6, label %158
    i32 2, label %154
  ]

154:                                              ; preds = %151
  tail call void @ieee80211_mgd_quiesce(ptr noundef %146) #3
  br label %155

155:                                              ; preds = %154, %151
  %156 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %146, i32 0, i32 5
  %157 = tail call zeroext i1 @flush_delayed_work(ptr noundef %156) #3
  tail call void @drv_remove_interface(ptr noundef %0, ptr noundef %146) #3
  br label %158

158:                                              ; preds = %155, %151, %151, %145
  %159 = load ptr, ptr %146, align 8
  %160 = icmp eq ptr %159, %53
  br i1 %160, label %161, label %145

161:                                              ; preds = %158, %144
  %162 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 88
  %163 = load volatile ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, %162
  br i1 %164, label %166, label %165, !prof !16

165:                                              ; preds = %161
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 172, i32 noundef 9, ptr noundef null) #3
  br label %166

166:                                              ; preds = %165, %161
  tail call void @ieee80211_stop_device(ptr noundef %0) #3
  br label %167

167:                                              ; preds = %166, %141, %2
  %168 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 31
  store i8 1, ptr %168, align 1
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !17
  %169 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 34
  store i8 0, ptr %169, align 8
  %170 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 32
  store i8 0, ptr %170, align 2
  br label %171

171:                                              ; preds = %167, %143, %140
  %172 = phi i32 [ 0, %167 ], [ %107, %143 ], [ %107, %140 ]
  ret i32 %172
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_dfs_cac_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_roc_purge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_del_virtual_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_tear_down_BA_sessions(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues_by_reason(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_flush_queues(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mgd_quiesce(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_hw_config(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues_by_reason(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_remove_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_report_wowlan_wakeup(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -2256
  tail call void @cfg80211_report_wowlan_wakeup(ptr noundef %4, ptr noundef %1, i32 noundef %2) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_report_wowlan_wakeup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_request_sched_scan_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_stopped_locked(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_suspend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

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
!8 = !{i64 2159595559}
!9 = !{i8 0, i8 2}
!10 = !{i64 2159603107}
!11 = !{i64 2157625885}
!12 = !{i64 2157626029}
!13 = !{i64 2157518979}
!14 = !{i64 2157519139}
!15 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2159614248}
