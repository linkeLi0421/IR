; ModuleID = '/llk/IR/net/mac80211/ibss.c_pt.bc'
source_filename = "../net/mac80211/ibss.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.151, %struct.ieee80211_vif }
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
%struct.sk_buff_head = type { %union.anon.119, i32, %struct.spinlock }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.151 = type { %struct.ieee80211_if_mesh }
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
%struct.ieee80211_if_ibss = type { %struct.timer_list, %struct.work_struct, i32, i32, i8, i8, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, ptr, %struct.cfg80211_chan_def, i32, ptr, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.spinlock, %struct.list_head, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.118, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.118 = type { i32, i16 }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.beacon_data = type { ptr, ptr, i32, i32, ptr, [2 x i16], i8, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.152 }
%union.anon.152 = type { %struct.anon.158, [16 x i8] }
%struct.anon.158 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.160 = type <{ i64, i16, i16, [0 x i8] }>
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.117, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.117 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_csa_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, ptr, ptr, i32, i32, %struct.cfg80211_beacon_data, i8, i8, i8 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
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
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.140, [17 x i16], %struct.anon.141, %struct.anon.142, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.anon.140 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.141 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.142 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee802_11_elems = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8 }
%struct.anon.165 = type { i8, %union.anon.166 }
%union.anon.166 = type <{ %struct.anon.171, [17 x i8] }>
%struct.anon.171 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_csa_ie = type { %struct.cfg80211_chan_def, i8, i8, i8, i16, i16, i32 }
%struct.ieee80211_bss = type { i32, i32, i8, i8, [32 x i8], i32, ptr, i32, i8, i8, i8, i8 }
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }

@.str = private unnamed_addr constant [20 x i8] c"net/mac80211/ibss.c\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\016%s: No room for a new IBSS STA entry %pM\0A\00", align 1
@ieee80211_ibss_rx_no_sta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__tracepoint_drv_tx_last_beacon = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"net/mac80211/ieee80211_i.h\00", align 1
@ieee80211_update_sta_info.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [124 x i8] c"\016%s: IBSS %pM received channel switch from incompatible channel width (%d MHz, width:%d, CF1/2: %d/%d MHz), disconnecting\0A\00", align 1
@.str.5 = private unnamed_addr constant [100 x i8] c"\016%s: IBSS %pM switches to unsupported channel (%d MHz, width:%d, CF1/2: %d/%d MHz), disconnecting\0A\00", align 1
@ieee80211_have_rx_timestamp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"\016%s: Failed to join IBSS, beacons forbidden\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"\016%s: Failed to join IBSS, invalid chandef\0A\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"\016%s: Failed to join IBSS, DFS channel without control program\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"\016%s: Failed to join IBSS, no channel context\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"\016%s: Failed to join IBSS, driver failure: %d\0A\00", align 1
@drv_leave_ibss.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@__tracepoint_drv_leave_ibss = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@drv_join_ibss.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_join_ibss = external dso_local global %struct.tracepoint, align 4
@ieee80211_ibss_add_sta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sta_info_pre_move_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"net/mac80211/sta_info.h\00", align 1
@sta_info_pre_move_state.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"\016%s: Selected IBSS BSSID %pM based on configured SSID\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"\016%s: Created IBSS using preconfigured BSSID %pM\0A\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"\016%s: Trigger new scan to find an IBSS to join\0A\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"\016%s: Creating new IBSS network, BSSID %pM\0A\00", align 1
@.str.20 = private unnamed_addr constant [91 x i8] c"\016%s: No active IBSS STAs - trying to scan for other IBSS networks with same SSID (merge)\0A\00", align 1
@switch.table.ieee80211_ibss_process_chanswitch = private unnamed_addr constant [8 x i32] [i32 3088, i32 3072, i32 3088, i32 3088, i32 3088, i32 3088, i32 3088, i32 3088], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_ibss_csa_beacon(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %4 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %3, i32 0, i32 6
  %5 = load i8, ptr %4, align 2, !range !8
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %3, i32 0, i32 10
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 19
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = xor i8 %5, 1
  %18 = zext i8 %17 to i32
  %19 = tail call ptr @cfg80211_get_bss(ptr noundef %9, ptr noundef %11, ptr noundef %12, ptr noundef %13, i32 noundef %16, i32 noundef 2, i32 noundef %18) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 9, ptr noundef null) #11
  br label %44

22:                                               ; preds = %2
  %23 = icmp eq i8 %5, 0
  %24 = select i1 %23, i16 2, i16 18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  %25 = getelementptr inbounds %struct.cfg80211_bss, ptr %19, i32 0, i32 2
  %26 = load volatile ptr, ptr %25, align 4
  %27 = load i64, ptr %26, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  tail call void @cfg80211_put_bss(ptr noundef %30, ptr noundef nonnull %19) #11
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 16
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 19
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 24
  %37 = load i32, ptr %36, align 8
  %38 = tail call fastcc ptr @ieee80211_ibss_build_presp(ptr noundef %0, i32 noundef %35, i32 noundef %37, i16 noundef zeroext %24, i64 noundef %27, ptr noundef %10, ptr noundef null, ptr noundef %1)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  store volatile ptr %38, ptr %31, align 4
  %41 = icmp eq ptr %32, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.beacon_data, ptr %32, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %43, ptr noundef nonnull inttoptr (i32 28 to ptr)) #11
  br label %44

44:                                               ; preds = %42, %40, %22, %21
  %45 = phi i32 [ -22, %21 ], [ -12, %22 ], [ 256, %42 ], [ 256, %40 ]
  ret i32 %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_ibss_build_presp(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3, i64 noundef %4, ptr noundef %5, ptr noundef writeonly %6, ptr noundef readonly %7) unnamed_addr #0 {
  %9 = alloca %struct.ieee80211_sta_ht_cap, align 2
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 20
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = add nuw nsw i32 %14, 191
  %16 = add nuw nsw i32 %14, 227
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %277, label %19

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %21 = getelementptr %struct.beacon_data, ptr %17, i32 1
  store ptr %21, ptr %17, align 64
  store i16 80, ptr %21, align 4
  %22 = getelementptr %struct.beacon_data, ptr %17, i32 1, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(6) %22, i8 -1, i32 6, i1 false) #11
  %23 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %21, i32 0, i32 3
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %23, ptr noundef align 8 dereferenceable(6) %24, i32 6, i1 false)
  %25 = getelementptr %struct.beacon_data, ptr %17, i32 1, i32 4
  %26 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %20, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %25, ptr noundef align 2 dereferenceable(6) %26, i32 6, i1 false)
  %27 = trunc i32 %1 to i16
  %28 = getelementptr %struct.beacon_data, ptr %17, i32 1, i32 6
  %29 = getelementptr %struct.beacon_data, ptr %17, i32 1, i32 7, i32 1
  store i16 %27, ptr %29, align 4
  store i64 %4, ptr %28, align 4
  %30 = getelementptr inbounds %struct.anon.160, ptr %28, i32 0, i32 2
  store i16 %3, ptr %30, align 2
  %31 = getelementptr %struct.beacon_data, ptr %17, i32 2
  %32 = getelementptr i8, ptr %31, i32 1
  store i8 0, ptr %31, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 19
  %34 = load i8, ptr %33, align 4
  %35 = getelementptr i8, ptr %32, i32 1
  store i8 %34, ptr %32, align 1
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2, i32 3
  %37 = zext i8 %34 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %35, ptr align 4 %36, i32 %37, i1 false)
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %5, align 4
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr %struct.wiphy, ptr %40, i32 0, i32 53, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %5, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 7
  %48 = select i1 %47, i32 64, i32 0
  %49 = icmp eq i32 %46, 6
  %50 = select i1 %49, i32 32, i32 %48
  %51 = zext i1 %47 to i32
  %52 = select i1 %49, i32 2, i32 %51
  %53 = icmp ne ptr %6, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %19
  store i8 0, ptr %6, align 1
  br label %55

55:                                               ; preds = %54, %19
  %56 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %44, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %91

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %44, i32 0, i32 1
  br label %61

61:                                               ; preds = %84, %59
  %62 = phi i32 [ %57, %59 ], [ %85, %84 ]
  %63 = phi i32 [ %57, %59 ], [ %86, %84 ]
  %64 = phi i32 [ 0, %59 ], [ %88, %84 ]
  %65 = phi i32 [ 0, %59 ], [ %87, %84 ]
  %66 = phi i32 [ 0, %59 ], [ %89, %84 ]
  %67 = load ptr, ptr %60, align 4
  %68 = getelementptr %struct.ieee80211_rate, ptr %67, i32 %66
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, %50
  %71 = icmp eq i32 %70, %50
  br i1 %71, label %72, label %84

72:                                               ; preds = %61
  %73 = getelementptr %struct.ieee80211_rate, ptr %67, i32 %66, i32 1
  %74 = load i16, ptr %73, align 4
  %75 = icmp ugt i16 %74, 110
  %76 = and i1 %53, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  store i8 1, ptr %6, align 1
  %78 = load i32, ptr %56, align 4
  br label %79

79:                                               ; preds = %77, %72
  %80 = phi i32 [ %78, %77 ], [ %62, %72 ]
  %81 = shl nuw i32 1, %66
  %82 = or i32 %65, %81
  %83 = add i32 %64, 1
  br label %84

84:                                               ; preds = %79, %61
  %85 = phi i32 [ %62, %61 ], [ %80, %79 ]
  %86 = phi i32 [ %63, %61 ], [ %80, %79 ]
  %87 = phi i32 [ %65, %61 ], [ %82, %79 ]
  %88 = phi i32 [ %64, %61 ], [ %83, %79 ]
  %89 = add nuw nsw i32 %66, 1
  %90 = icmp slt i32 %89, %86
  br i1 %90, label %61, label %91

91:                                               ; preds = %84, %55
  %92 = phi i32 [ 0, %55 ], [ %87, %84 ]
  %93 = phi i32 [ 0, %55 ], [ %88, %84 ]
  %94 = getelementptr i8, ptr %38, i32 1
  store i8 1, ptr %38, align 1
  %95 = icmp sgt i32 %93, 8
  %96 = tail call i32 @llvm.smin.i32(i32 %93, i32 8)
  %97 = trunc i32 %96 to i8
  %98 = getelementptr i8, ptr %94, i32 1
  store i8 %97, ptr %94, align 1
  %99 = load i32, ptr %56, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %138

101:                                              ; preds = %91
  %102 = shl i32 5, %52
  %103 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %44, i32 0, i32 1
  %104 = add nsw i32 %102, -1
  br label %105

105:                                              ; preds = %132, %101
  %106 = phi i32 [ %99, %101 ], [ %133, %132 ]
  %107 = phi i32 [ 0, %101 ], [ %135, %132 ]
  %108 = phi ptr [ %98, %101 ], [ %134, %132 ]
  %109 = phi i32 [ 0, %101 ], [ %136, %132 ]
  %110 = shl nuw i32 1, %109
  %111 = and i32 %110, %92
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %132, label %113

113:                                              ; preds = %105
  %114 = load ptr, ptr %103, align 4
  %115 = getelementptr %struct.ieee80211_rate, ptr %114, i32 %109, i32 1
  %116 = load i16, ptr %115, align 4
  %117 = zext i16 %116 to i32
  %118 = add nsw i32 %104, %117
  %119 = sdiv i32 %118, %102
  %120 = and i32 %110, %2
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, i32 0, i32 128
  %123 = or i32 %119, %122
  %124 = trunc i32 %123 to i8
  %125 = getelementptr i8, ptr %108, i32 1
  store i8 %124, ptr %108, align 1
  %126 = add i32 %107, 1
  %127 = icmp eq i32 %126, 8
  br i1 %127, label %130, label %128

128:                                              ; preds = %113
  %129 = load i32, ptr %56, align 4
  br label %132

130:                                              ; preds = %113
  %131 = add nuw nsw i32 %109, 1
  br label %138

132:                                              ; preds = %128, %105
  %133 = phi i32 [ %129, %128 ], [ %106, %105 ]
  %134 = phi ptr [ %125, %128 ], [ %108, %105 ]
  %135 = phi i32 [ %126, %128 ], [ %107, %105 ]
  %136 = add nuw nsw i32 %109, 1
  %137 = icmp slt i32 %136, %133
  br i1 %137, label %105, label %138

138:                                              ; preds = %132, %130, %91
  %139 = phi i32 [ %131, %130 ], [ 0, %91 ], [ %136, %132 ]
  %140 = phi ptr [ %125, %130 ], [ %98, %91 ], [ %134, %132 ]
  %141 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %44, i32 0, i32 2
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %138
  %145 = getelementptr i8, ptr %140, i32 1
  store i8 3, ptr %140, align 1
  %146 = getelementptr i8, ptr %140, i32 2
  store i8 1, ptr %145, align 1
  %147 = load ptr, ptr %5, align 4
  %148 = getelementptr inbounds %struct.ieee80211_channel, ptr %147, i32 0, i32 1
  %149 = load i32, ptr %148, align 4
  %150 = mul i32 %149, 1000
  %151 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %150) #11
  %152 = trunc i32 %151 to i8
  %153 = getelementptr i8, ptr %140, i32 3
  store i8 %152, ptr %146, align 1
  br label %154

154:                                              ; preds = %144, %138
  %155 = phi ptr [ %153, %144 ], [ %140, %138 ]
  %156 = getelementptr i8, ptr %155, i32 1
  store i8 6, ptr %155, align 1
  %157 = getelementptr i8, ptr %155, i32 2
  store i8 2, ptr %156, align 1
  %158 = getelementptr i8, ptr %155, i32 3
  store i8 0, ptr %157, align 1
  %159 = getelementptr i8, ptr %155, i32 4
  store i8 0, ptr %158, align 1
  %160 = icmp eq ptr %7, null
  br i1 %160, label %185, label %161

161:                                              ; preds = %154
  %162 = getelementptr i8, ptr %155, i32 5
  store i8 37, ptr %159, align 1
  %163 = getelementptr i8, ptr %155, i32 6
  store i8 3, ptr %162, align 1
  %164 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %7, i32 0, i32 8
  %165 = load i8, ptr %164, align 1, !range !8
  %166 = getelementptr i8, ptr %155, i32 7
  store i8 %165, ptr %163, align 1
  %167 = load ptr, ptr %7, align 4
  %168 = getelementptr inbounds %struct.ieee80211_channel, ptr %167, i32 0, i32 1
  %169 = load i32, ptr %168, align 4
  %170 = mul i32 %169, 1000
  %171 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %170) #11
  %172 = trunc i32 %171 to i8
  %173 = getelementptr i8, ptr %155, i32 8
  store i8 %172, ptr %166, align 1
  %174 = load ptr, ptr %17, align 64
  %175 = ptrtoint ptr %173 to i32
  %176 = ptrtoint ptr %174 to i32
  %177 = sub i32 %175, %176
  %178 = trunc i32 %177 to i16
  %179 = getelementptr inbounds %struct.beacon_data, ptr %17, i32 0, i32 5
  store i16 %178, ptr %179, align 4
  %180 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %7, i32 0, i32 9
  %181 = load i8, ptr %180, align 2
  %182 = getelementptr i8, ptr %155, i32 9
  store i8 %181, ptr %173, align 1
  %183 = load i8, ptr %180, align 2
  %184 = getelementptr inbounds %struct.beacon_data, ptr %17, i32 0, i32 6
  store i8 %183, ptr %184, align 8
  br label %185

185:                                              ; preds = %161, %154
  %186 = phi ptr [ %182, %161 ], [ %159, %154 ]
  br i1 %95, label %187, label %224

187:                                              ; preds = %185
  %188 = getelementptr i8, ptr %186, i32 1
  store i8 50, ptr %186, align 1
  %189 = trunc i32 %93 to i8
  %190 = add i8 %189, -8
  %191 = getelementptr i8, ptr %186, i32 2
  store i8 %190, ptr %188, align 1
  %192 = load i32, ptr %56, align 4
  %193 = icmp slt i32 %139, %192
  br i1 %193, label %194, label %224

194:                                              ; preds = %187
  %195 = shl i32 5, %52
  %196 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %44, i32 0, i32 1
  %197 = add nsw i32 %195, -1
  br label %198

198:                                              ; preds = %219, %194
  %199 = phi i32 [ %192, %194 ], [ %220, %219 ]
  %200 = phi ptr [ %191, %194 ], [ %221, %219 ]
  %201 = phi i32 [ %139, %194 ], [ %222, %219 ]
  %202 = shl nuw i32 1, %201
  %203 = and i32 %202, %92
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %219, label %205

205:                                              ; preds = %198
  %206 = load ptr, ptr %196, align 4
  %207 = getelementptr %struct.ieee80211_rate, ptr %206, i32 %201, i32 1
  %208 = load i16, ptr %207, align 4
  %209 = zext i16 %208 to i32
  %210 = add nsw i32 %197, %209
  %211 = sdiv i32 %210, %195
  %212 = and i32 %202, %2
  %213 = icmp eq i32 %212, 0
  %214 = select i1 %213, i32 0, i32 128
  %215 = or i32 %211, %214
  %216 = trunc i32 %215 to i8
  %217 = getelementptr i8, ptr %200, i32 1
  store i8 %216, ptr %200, align 1
  %218 = load i32, ptr %56, align 4
  br label %219

219:                                              ; preds = %205, %198
  %220 = phi i32 [ %218, %205 ], [ %199, %198 ]
  %221 = phi ptr [ %217, %205 ], [ %200, %198 ]
  %222 = add nuw nsw i32 %201, 1
  %223 = icmp slt i32 %222, %220
  br i1 %223, label %198, label %224

224:                                              ; preds = %219, %187, %185
  %225 = phi ptr [ %186, %185 ], [ %191, %187 ], [ %221, %219 ]
  %226 = load i8, ptr %12, align 1
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %235, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 23
  %230 = load ptr, ptr %229, align 4
  %231 = zext i8 %226 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %225, ptr align 1 %230, i32 %231, i1 false)
  %232 = load i8, ptr %12, align 1
  %233 = zext i8 %232 to i32
  %234 = getelementptr i8, ptr %225, i32 %233
  br label %235

235:                                              ; preds = %228, %224
  %236 = phi ptr [ %234, %228 ], [ %225, %224 ]
  %237 = load i32, ptr %45, align 4
  switch i32 %237, label %238 [
    i32 0, label %261
    i32 6, label %261
    i32 7, label %261
  ]

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %44, i32 0, i32 5, i32 1
  %240 = load i8, ptr %239, align 2, !range !8
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %261, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %44, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %9) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(22) %9, ptr noundef align 4 dereferenceable(22) %243, i32 22, i1 false)
  call void @ieee80211_apply_htcap_overrides(ptr noundef %0, ptr noundef nonnull %9) #11
  %244 = load i16, ptr %9, align 2
  %245 = call ptr @ieee80211_ie_build_ht_cap(ptr noundef %236, ptr noundef nonnull %9, i16 noundef zeroext %244) #11
  %246 = call ptr @ieee80211_ie_build_ht_oper(ptr noundef %245, ptr noundef %243, ptr noundef %5, i16 noundef zeroext 0, i1 noundef zeroext false) #11
  %247 = load i32, ptr %45, align 4
  %248 = add i32 %247, -1
  %249 = icmp ult i32 %248, 2
  br i1 %249, label %259, label %250

250:                                              ; preds = %242
  %251 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %44, i32 0, i32 6
  %252 = load i8, ptr %251, align 4, !range !8
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %44, i32 0, i32 6, i32 1
  %256 = load i32, ptr %255, align 4
  %257 = call ptr @ieee80211_ie_build_vht_cap(ptr noundef %246, ptr noundef %251, i32 noundef %256) #11
  %258 = call ptr @ieee80211_ie_build_vht_oper(ptr noundef %257, ptr noundef %251, ptr noundef %5) #11
  br label %259

259:                                              ; preds = %254, %250, %242
  %260 = phi ptr [ %258, %254 ], [ %246, %250 ], [ %246, %242 ]
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %9) #11
  br label %261

261:                                              ; preds = %259, %238, %235, %235, %235
  %262 = phi ptr [ %260, %259 ], [ %236, %238 ], [ %236, %235 ], [ %236, %235 ], [ %236, %235 ]
  %263 = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 11
  %264 = load i16, ptr %263, align 4
  %265 = icmp ugt i16 %264, 3
  br i1 %265, label %266, label %268

266:                                              ; preds = %261
  %267 = call ptr @ieee80211_add_wmm_info_ie(ptr noundef %262, i8 noundef zeroext 0) #11
  br label %268

268:                                              ; preds = %266, %261
  %269 = phi ptr [ %267, %266 ], [ %262, %261 ]
  %270 = load ptr, ptr %17, align 64
  %271 = ptrtoint ptr %269 to i32
  %272 = ptrtoint ptr %270 to i32
  %273 = sub i32 %271, %272
  %274 = getelementptr inbounds %struct.beacon_data, ptr %17, i32 0, i32 2
  store i32 %273, ptr %274, align 8
  %275 = icmp sgt i32 %273, %15
  br i1 %275, label %276, label %277, !prof !9

276:                                              ; preds = %268
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef null) #11
  call void @kfree(ptr noundef nonnull %17) #11
  br label %277

277:                                              ; preds = %276, %268, %8
  %278 = phi ptr [ null, %276 ], [ null, %8 ], [ %17, %268 ]
  ret ptr %278
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_ibss_finish_csa(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %3 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %2, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr %struct.ieee80211_if_ibss, ptr %2, i32 0, i32 10, i32 4
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = or i32 %4, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2, i32 3
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 19
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %2, i32 0, i32 6
  %22 = load i8, ptr %21, align 2, !range !8
  %23 = xor i8 %22, 1
  %24 = zext i8 %23 to i32
  %25 = tail call ptr @cfg80211_get_bss(ptr noundef %14, ptr noundef %16, ptr noundef %3, ptr noundef %17, i32 noundef %20, i32 noundef 2, i32 noundef %24) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 31
  %29 = load ptr, ptr %28, align 4
  store ptr %29, ptr %25, align 4
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr inbounds %struct.ieee80211_hw, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  tail call void @cfg80211_put_bss(ptr noundef %32, ptr noundef nonnull %25) #11
  br label %33

33:                                               ; preds = %27, %10, %1
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 27
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 31
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %34, ptr noundef align 4 dereferenceable(28) %35, i32 28, i1 false)
  %36 = tail call i32 @ieee80211_ibss_csa_beacon(ptr noundef %0, ptr noundef null)
  ret i32 %36
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_ibss_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_ibss_rx_no_sta(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 48
  %9 = load i32, ptr %8, align 8
  %10 = icmp ugt i32 %9, 127
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = tail call i32 @net_ratelimit() #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %72, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %15, ptr noundef %2) #13
  br label %72

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %72, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %5, i32 0, i32 10
  %23 = load i32, ptr %1, align 4
  %24 = load i32, ptr %22, align 4
  %25 = xor i32 %24, %23
  %26 = getelementptr i8, ptr %1, i32 4
  %27 = load i16, ptr %26, align 2
  %28 = getelementptr %struct.ieee80211_if_ibss, ptr %5, i32 0, i32 10, i32 4
  %29 = load i16, ptr %28, align 2
  %30 = xor i16 %29, %27
  %31 = zext i16 %30 to i32
  %32 = or i32 %25, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  %38 = load i1, ptr @ieee80211_ibss_rx_no_sta.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !9

41:                                               ; preds = %34
  store i1 true, ptr @ieee80211_ibss_rx_no_sta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1224, i32 noundef 9, ptr noundef null) #11
  br label %42

42:                                               ; preds = %41, %34
  br i1 %37, label %43, label %44

43:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br label %72

44:                                               ; preds = %42
  %45 = load ptr, ptr %36, align 4
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %36, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %49 = tail call ptr @sta_info_alloc(ptr noundef %0, ptr noundef %2, i32 noundef 2592) #11
  %50 = icmp eq ptr %49, null
  br i1 %50, label %72, label %51

51:                                               ; preds = %44
  %52 = icmp eq i32 %48, 6
  %53 = icmp eq i32 %48, 7
  %54 = zext i1 %53 to i32
  %55 = select i1 %52, i32 2, i32 %54
  %56 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr %struct.wiphy, ptr %57, i32 0, i32 53, i32 %46
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 @ieee80211_mandatory_rates(ptr noundef %59, i32 noundef %55) #11
  %61 = or i32 %60, %3
  %62 = getelementptr inbounds %struct.sta_info, ptr %49, i32 0, i32 46
  %63 = getelementptr [6 x i32], ptr %62, i32 0, i32 %46
  store i32 %61, ptr %63, align 4
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 4
  tail call void @_raw_spin_lock(ptr noundef %64) #11
  %65 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  store ptr %49, ptr %67, align 4
  store ptr %66, ptr %49, align 4
  %68 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %65, ptr %68, align 4
  store volatile ptr %49, ptr %65, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %69 = load i16, ptr %64, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %64, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %71 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %7, ptr noundef %71) #11
  br label %72

72:                                               ; preds = %51, %44, %43, %21, %17, %14, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_mandatory_rates(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_ibss_rx_queued_mgmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ieee80211_ht_cap, align 1
  %4 = alloca %struct.cfg80211_chan_def, align 4
  %5 = alloca %struct.ieee80211_vht_cap, align 1
  %6 = alloca %struct.ieee80211_sta_vht_cap, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = load i16, ptr %9, align 2
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 7
  tail call void @mutex_lock(ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 19
  %13 = load i8, ptr %12, align 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %459, label %15

15:                                               ; preds = %2
  %16 = and i16 %10, 240
  %17 = zext i16 %16 to i32
  %18 = add nsw i32 %17, -64
  %19 = lshr exact i32 %18, 4
  switch i32 %19, label %459 [
    i32 0, label %20
    i32 1, label %156
    i32 4, label %156
    i32 7, label %404
    i32 8, label %420
    i32 9, label %427
  ]

20:                                               ; preds = %15
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 16
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 1
  %32 = icmp sgt i32 %26, 25
  %33 = select i1 %31, i1 %32, i1 false
  %34 = icmp ne ptr %28, null
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %459

36:                                               ; preds = %20
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tx_last_beacon, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = tail call ptr @llvm.thread.pointer() #11
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 5
  %44 = getelementptr i32, ptr @__cpu_online_mask, i32 %43
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %51 = tail call i32 @__traceiter_drv_tx_last_beacon(ptr noundef null, ptr noundef %24) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  br label %52

52:                                               ; preds = %50, %39, %36
  %53 = getelementptr inbounds %struct.ieee80211_local, ptr %24, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ieee80211_ops, ptr %54, i32 0, i32 45
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = tail call i32 %56(ptr noundef %24) #11
  br label %60

60:                                               ; preds = %58, %52
  %61 = phi i32 [ %59, %58 ], [ 0, %52 ]
  %62 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = tail call ptr @llvm.thread.pointer() #11
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 5
  %69 = getelementptr i32, ptr @__cpu_online_mask, i32 %68
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %67, 31
  %72 = shl nuw i32 1, %71
  %73 = and i32 %72, %70
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %64
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %76 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %24, i32 noundef %61) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %77

77:                                               ; preds = %75, %64, %60
  %78 = icmp eq i32 %61, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %21, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %459

84:                                               ; preds = %79, %77
  %85 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %21, i32 0, i32 4
  %86 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %22, i32 0, i32 10
  %87 = load i32, ptr %85, align 4
  %88 = load i32, ptr %86, align 4
  %89 = xor i32 %88, %87
  %90 = getelementptr %struct.ieee80211_mgmt, ptr %21, i32 0, i32 4, i32 4
  %91 = load i16, ptr %90, align 2
  %92 = getelementptr %struct.ieee80211_if_ibss, ptr %22, i32 0, i32 10, i32 4
  %93 = load i16, ptr %92, align 2
  %94 = xor i16 %93, %91
  %95 = zext i16 %94 to i32
  %96 = or i32 %89, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %84
  %99 = lshr i32 %87, 16
  %100 = trunc i32 %99 to i16
  %101 = trunc i32 %87 to i16
  %102 = and i16 %91, %101
  %103 = and i16 %102, %100
  %104 = icmp eq i16 %103, -1
  br i1 %104, label %105, label %459

105:                                              ; preds = %98, %84
  %106 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %21, i32 0, i32 6
  %107 = load i8, ptr %106, align 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %459

109:                                              ; preds = %105
  %110 = getelementptr i8, ptr %21, i32 %26
  %111 = getelementptr %struct.ieee80211_mgmt, ptr %21, i32 0, i32 6, i32 0, i32 1
  %112 = getelementptr i8, ptr %106, i32 1
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = getelementptr i8, ptr %111, i32 %114
  %116 = icmp ugt ptr %115, %110
  br i1 %116, label %459, label %117

117:                                              ; preds = %109
  %118 = icmp eq i8 %113, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %117
  %120 = load i8, ptr %12, align 4
  %121 = icmp eq i8 %113, %120
  br i1 %121, label %122, label %459

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2, i32 3
  %124 = tail call i32 @bcmp(ptr %111, ptr %123, i32 %114) #11
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %459

126:                                              ; preds = %122, %117
  %127 = getelementptr inbounds %struct.ieee80211_local, ptr %24, i32 0, i32 41
  %128 = load i32, ptr %127, align 8
  %129 = getelementptr inbounds %struct.beacon_data, ptr %28, i32 0, i32 2
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %130, %128
  %132 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %131, i32 noundef 2592) #11
  %133 = icmp eq ptr %132, null
  br i1 %133, label %459, label %134

134:                                              ; preds = %126
  %135 = load i32, ptr %127, align 8
  %136 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 17
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr i8, ptr %137, i32 %135
  store ptr %138, ptr %136, align 4
  %139 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 14
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr i8, ptr %140, i32 %135
  store ptr %141, ptr %139, align 8
  %142 = load ptr, ptr %28, align 4
  %143 = load i32, ptr %129, align 4
  %144 = tail call ptr @skb_put(ptr noundef nonnull %132, i32 noundef %143) #11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %144, ptr align 1 %142, i32 %143, i1 false) #11
  %145 = load ptr, ptr %136, align 4
  %146 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %21, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %146, ptr noundef align 2 dereferenceable(6) %147, i32 6, i1 false) #11
  %148 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3
  %149 = load i32, ptr %148, align 8
  %150 = or i32 %149, 65536
  store i32 %150, ptr %148, align 8
  %151 = load i8, ptr %112, align 1
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %134
  %154 = or i32 %149, 65540
  store i32 %154, ptr %148, align 8
  br label %155

155:                                              ; preds = %153, %134
  tail call fastcc void @ieee80211_tx_skb(ptr noundef %0, ptr noundef nonnull %132) #11
  br label %459

156:                                              ; preds = %15, %15
  %157 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %158 = load i32, ptr %157, align 8
  %159 = icmp ult i32 %158, 36
  br i1 %159, label %459, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %9, i32 0, i32 6, i32 1, i32 2
  %162 = add i32 %158, -36
  %163 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %9, i32 0, i32 4
  %164 = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %161, i32 noundef %162, i1 noundef zeroext false, i64 noundef 0, i32 noundef 0, ptr noundef %163, ptr noundef null) #11
  %165 = icmp eq ptr %164, null
  br i1 %165, label %459, label %166

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  %170 = load i8, ptr %169, align 4
  %171 = zext i8 %170 to i32
  %172 = getelementptr inbounds %struct.ieee80211_hw, ptr %168, i32 0, i32 1
  %173 = load ptr, ptr %172, align 8
  %174 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %175 = load i16, ptr %174, align 4
  %176 = and i16 %175, 8191
  %177 = zext i16 %176 to i32
  %178 = mul nuw nsw i32 %177, 1000
  %179 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %173, i32 noundef %178) #11
  %180 = icmp eq ptr %179, null
  br i1 %180, label %403, label %181

181:                                              ; preds = %166
  %182 = load i8, ptr %169, align 4
  %183 = zext i8 %182 to i32
  %184 = load ptr, ptr %167, align 4
  %185 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %186 = load i32, ptr %185, align 8
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %319

188:                                              ; preds = %181
  %189 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %190 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %189, i32 0, i32 10
  %191 = load i32, ptr %163, align 4
  %192 = load i32, ptr %190, align 4
  %193 = xor i32 %192, %191
  %194 = getelementptr %struct.ieee80211_mgmt, ptr %9, i32 0, i32 4, i32 4
  %195 = load i16, ptr %194, align 2
  %196 = getelementptr %struct.ieee80211_if_ibss, ptr %189, i32 0, i32 10, i32 4
  %197 = load i16, ptr %196, align 2
  %198 = xor i16 %197, %195
  %199 = zext i16 %198 to i32
  %200 = or i32 %193, %199
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %319

202:                                              ; preds = %188
  %203 = getelementptr inbounds %struct.ieee80211_hw, ptr %184, i32 0, i32 1
  %204 = load ptr, ptr %203, align 8
  %205 = getelementptr %struct.wiphy, ptr %204, i32 0, i32 53, i32 %183
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %209, !prof !9

208:                                              ; preds = %202
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 996, i32 noundef 9, ptr noundef null) #11
  br label %319

209:                                              ; preds = %202
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  %210 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %9, i32 0, i32 3
  %211 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef %210) #11
  %212 = getelementptr inbounds %struct.ieee802_11_elems, ptr %164, i32 0, i32 7
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %235, label %215

215:                                              ; preds = %209
  %216 = tail call i32 @ieee80211_sta_get_rates(ptr noundef %0, ptr noundef nonnull %164, i32 noundef %183, ptr noundef null) #11
  %217 = icmp eq ptr %211, null
  br i1 %217, label %233, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.sta_info, ptr %211, i32 0, i32 46
  %220 = getelementptr [6 x i32], ptr %219, i32 0, i32 %183
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 31
  %223 = load i16, ptr %222, align 1
  %224 = lshr i16 %223, 2
  %225 = and i16 %224, 7
  %226 = icmp eq i16 %225, 2
  %227 = zext i1 %226 to i32
  %228 = icmp eq i16 %225, 1
  %229 = select i1 %228, i32 2, i32 %227
  %230 = tail call i32 @ieee80211_mandatory_rates(ptr noundef nonnull %206, i32 noundef %229) #11
  %231 = or i32 %230, %216
  store i32 %231, ptr %220, align 4
  %232 = icmp ne i32 %231, %221
  br label %238

233:                                              ; preds = %215
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %234 = tail call fastcc ptr @ieee80211_ibss_add_sta(ptr noundef %0, ptr noundef %163, ptr noundef %210, i32 noundef %216) #11
  br label %235

235:                                              ; preds = %233, %209
  %236 = phi ptr [ %234, %233 ], [ %211, %209 ]
  %237 = icmp eq ptr %236, null
  br i1 %237, label %318, label %238

238:                                              ; preds = %235, %218
  %239 = phi ptr [ %211, %218 ], [ %236, %235 ]
  %240 = phi i1 [ %232, %218 ], [ false, %235 ]
  %241 = getelementptr inbounds %struct.sta_info, ptr %239, i32 0, i32 46, i32 10
  %242 = load i8, ptr %241, align 4, !range !8
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %257

244:                                              ; preds = %238
  %245 = getelementptr inbounds %struct.ieee802_11_elems, ptr %164, i32 0, i32 14
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %252

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.ieee802_11_elems, ptr %164, i32 0, i32 53
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %257, label %252

252:                                              ; preds = %248, %244
  %253 = getelementptr inbounds %struct.ieee80211_hw, ptr %184, i32 0, i32 11
  %254 = load i16, ptr %253, align 4
  %255 = icmp ugt i16 %254, 3
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  store i8 1, ptr %241, align 4
  tail call void @ieee80211_check_fast_xmit(ptr noundef nonnull %239) #11
  br label %257

257:                                              ; preds = %256, %252, %248, %238
  %258 = getelementptr inbounds %struct.ieee802_11_elems, ptr %164, i32 0, i32 17
  %259 = load ptr, ptr %258, align 4
  %260 = icmp eq ptr %259, null
  br i1 %260, label %310, label %261

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.ieee802_11_elems, ptr %164, i32 0, i32 16
  %263 = load ptr, ptr %262, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %310, label %265

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 27
  %267 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 31
  %268 = load i32, ptr %267, align 4
  switch i32 %268, label %269 [
    i32 0, label %310
    i32 6, label %310
    i32 7, label %310
  ]

269:                                              ; preds = %265
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false) #11, !annotation !21
  %270 = getelementptr inbounds %struct.sta_info, ptr %239, i32 0, i32 46, i32 14
  %271 = load i32, ptr %270, align 8
  call void @cfg80211_chandef_create(ptr noundef nonnull %4, ptr noundef nonnull %179, i32 noundef 0) #11
  %272 = load ptr, ptr %258, align 4
  %273 = call zeroext i1 @ieee80211_chandef_ht_oper(ptr noundef %272, ptr noundef nonnull %4) #11
  %274 = load ptr, ptr %262, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(26) %3, ptr noundef align 1 dereferenceable(26) %274, i32 26, i1 false) #11
  %275 = call zeroext i1 @ieee80211_ht_cap_ie_to_sta_ht_cap(ptr noundef %0, ptr noundef nonnull %206, ptr noundef nonnull %3, ptr noundef nonnull %239) #11
  %276 = or i1 %240, %275
  %277 = zext i1 %276 to i8
  %278 = getelementptr inbounds %struct.ieee802_11_elems, ptr %164, i32 0, i32 19
  %279 = load ptr, ptr %278, align 4
  %280 = icmp eq ptr %279, null
  br i1 %280, label %298, label %281

281:                                              ; preds = %269
  %282 = getelementptr inbounds %struct.ieee802_11_elems, ptr %164, i32 0, i32 18
  %283 = load ptr, ptr %282, align 4
  %284 = icmp eq ptr %283, null
  br i1 %284, label %298, label %285

285:                                              ; preds = %281
  %286 = load i32, ptr %267, align 4
  %287 = add i32 %286, -1
  %288 = icmp ult i32 %287, 2
  br i1 %288, label %298, label %289

289:                                              ; preds = %285
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %290 = getelementptr inbounds %struct.sta_info, ptr %239, i32 0, i32 46, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef align 8 dereferenceable(16) %290, i32 16, i1 false) #11
  %291 = load i32, ptr %283, align 1
  %292 = load ptr, ptr %258, align 4
  %293 = call zeroext i1 @ieee80211_chandef_vht_oper(ptr noundef %184, i32 noundef %291, ptr noundef nonnull %279, ptr noundef %292, ptr noundef nonnull %4) #11
  %294 = load ptr, ptr %282, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %5, ptr noundef align 1 dereferenceable(12) %294, i32 12, i1 false) #11
  call void @ieee80211_vht_cap_ie_to_sta_vht_cap(ptr noundef %0, ptr noundef nonnull %206, ptr noundef nonnull %5, ptr noundef nonnull %239) #11
  %295 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %6, ptr noundef dereferenceable(16) %290, i32 16) #11
  %296 = icmp eq i32 %295, 0
  %297 = select i1 %296, i8 %277, i8 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  br label %298

298:                                              ; preds = %289, %285, %281, %269
  %299 = phi i8 [ %297, %289 ], [ %277, %281 ], [ %277, %269 ], [ %277, %285 ]
  %300 = load i32, ptr %270, align 8
  %301 = icmp ne i32 %271, %300
  %302 = call ptr @cfg80211_chandef_compatible(ptr noundef %266, ptr noundef nonnull %4) #11
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %298
  %305 = load i1, ptr @ieee80211_update_sta_info.__already_done, align 1
  br i1 %305, label %307, label %306, !prof !22

306:                                              ; preds = %304
  store i1 true, ptr @ieee80211_update_sta_info.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1081, i32 noundef 9, ptr noundef null) #11
  br label %307

307:                                              ; preds = %306, %304, %298
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %3) #11
  %308 = icmp ne i8 %299, 0
  %309 = select i1 %301, i1 true, i1 %308
  br i1 %309, label %311, label %318

310:                                              ; preds = %265, %265, %265, %261, %257
  br i1 %240, label %311, label %318

311:                                              ; preds = %310, %307
  %312 = getelementptr inbounds %struct.sta_info, ptr %239, i32 0, i32 46
  %313 = getelementptr inbounds %struct.sta_info, ptr %239, i32 0, i32 46, i32 13
  %314 = load i8, ptr %313, align 1
  store i8 0, ptr %313, align 1
  call void @rate_control_rate_init(ptr noundef nonnull %239) #11
  %315 = load i8, ptr %313, align 1
  %316 = icmp eq i8 %315, %314
  %317 = select i1 %316, i32 4, i32 12
  call void @drv_sta_rc_update(ptr noundef %184, ptr noundef %0, ptr noundef %312, i32 noundef %317) #11
  br label %318

318:                                              ; preds = %311, %310, %307, %235
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br label %319

319:                                              ; preds = %318, %208, %188, %181
  %320 = call ptr @ieee80211_bss_info_update(ptr noundef %168, ptr noundef %7, ptr noundef %9, i32 noundef %158, ptr noundef nonnull %179) #11
  %321 = icmp eq ptr %320, null
  br i1 %321, label %403, label %322

322:                                              ; preds = %319
  %323 = getelementptr i8, ptr %320, i32 -60
  %324 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %9, i32 0, i32 6
  %325 = load i64, ptr %324, align 2
  %326 = getelementptr i8, ptr %320, i32 -18
  %327 = load i16, ptr %326, align 2
  %328 = and i16 %327, 2
  %329 = icmp eq i16 %328, 0
  br i1 %329, label %402, label %330

330:                                              ; preds = %322
  %331 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %332 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %331, i32 0, i32 5
  %333 = load i8, ptr %332, align 1, !range !8
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %340, label %335

335:                                              ; preds = %330
  %336 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 27
  %337 = load ptr, ptr %336, align 8
  %338 = load ptr, ptr %323, align 4
  %339 = icmp eq ptr %337, %338
  br i1 %339, label %340, label %402

340:                                              ; preds = %335, %330
  %341 = getelementptr inbounds %struct.ieee802_11_elems, ptr %164, i32 0, i32 58
  %342 = load i8, ptr %341, align 1
  %343 = load i8, ptr %12, align 8
  %344 = icmp eq i8 %342, %343
  br i1 %344, label %345, label %402

345:                                              ; preds = %340
  %346 = zext i8 %342 to i32
  %347 = getelementptr inbounds %struct.ieee802_11_elems, ptr %164, i32 0, i32 6
  %348 = load ptr, ptr %347, align 4
  %349 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2, i32 3
  %350 = call i32 @bcmp(ptr %348, ptr %349, i32 %346) #11
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %402

352:                                              ; preds = %345
  %353 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 4
  %354 = load i8, ptr %353, align 1, !range !8
  %355 = icmp eq i8 %354, 0
  br i1 %355, label %356, label %402

356:                                              ; preds = %352
  %357 = call fastcc zeroext i1 @ieee80211_ibss_process_chanswitch(ptr noundef %0, ptr noundef nonnull %164) #11
  br i1 %357, label %402, label %358

358:                                              ; preds = %356
  %359 = getelementptr i8, ptr %320, i32 -16
  %360 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %331, i32 0, i32 10
  %361 = load i32, ptr %359, align 4
  %362 = load i32, ptr %360, align 4
  %363 = xor i32 %362, %361
  %364 = getelementptr i8, ptr %320, i32 -12
  %365 = load i16, ptr %364, align 2
  %366 = getelementptr %struct.ieee80211_if_ibss, ptr %331, i32 0, i32 10, i32 4
  %367 = load i16, ptr %366, align 2
  %368 = xor i16 %367, %365
  %369 = zext i16 %368 to i32
  %370 = or i32 %363, %369
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %402, label %372

372:                                              ; preds = %358
  %373 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2, i32 0, i32 1
  %374 = load i8, ptr %373, align 4, !range !8
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %376, label %402

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %378 = load i32, ptr %377, align 8
  %379 = and i32 %378, 65664
  %380 = icmp eq i32 %379, 65664
  %381 = load i1, ptr @ieee80211_have_rx_timestamp.__already_done, align 1
  %382 = xor i1 %381, true
  %383 = select i1 %380, i1 %382, i1 false
  br i1 %383, label %384, label %386, !prof !9

384:                                              ; preds = %376
  store i1 true, ptr @ieee80211_have_rx_timestamp.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1763, i32 noundef 9, ptr noundef null) #11
  %385 = load i32, ptr %377, align 8
  br label %386

386:                                              ; preds = %384, %376
  %387 = phi i32 [ %385, %384 ], [ %378, %376 ]
  %388 = and i32 %387, 65668
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %393, label %390

390:                                              ; preds = %386
  %391 = add i32 %158, 4
  %392 = call i64 @ieee80211_calculate_rx_timestamp(ptr noundef %168, ptr noundef %7, i32 noundef %391, i32 noundef 24) #11
  br label %395

393:                                              ; preds = %386
  %394 = call i64 @drv_get_tsf(ptr noundef %168, ptr noundef %0) #11
  br label %395

395:                                              ; preds = %393, %390
  %396 = phi i64 [ %392, %390 ], [ %394, %393 ]
  %397 = icmp ugt i64 %325, %396
  br i1 %397, label %398, label %402

398:                                              ; preds = %395
  call fastcc void @ieee80211_sta_join_ibss(ptr noundef %0, ptr noundef nonnull %320) #11
  %399 = call i32 @ieee80211_sta_get_rates(ptr noundef %0, ptr noundef nonnull %164, i32 noundef %171, ptr noundef null) #11
  %400 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %9, i32 0, i32 3
  %401 = call fastcc ptr @ieee80211_ibss_add_sta(ptr noundef %0, ptr noundef %163, ptr noundef %400, i32 noundef %399) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br label %402

402:                                              ; preds = %398, %395, %372, %358, %356, %352, %345, %340, %335, %322
  call void @ieee80211_rx_bss_put(ptr noundef %168, ptr noundef nonnull %320) #11
  br label %403

403:                                              ; preds = %402, %319, %166
  call void @kfree(ptr noundef nonnull %164) #11
  br label %459

404:                                              ; preds = %15
  %405 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %406 = load i32, ptr %405, align 8
  %407 = icmp ult i32 %406, 30
  br i1 %407, label %459, label %408

408:                                              ; preds = %404
  %409 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %9, i32 0, i32 6
  %410 = load i16, ptr %409, align 2
  %411 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %9, i32 0, i32 6, i32 0, i32 1
  %412 = load i16, ptr %411, align 2
  %413 = icmp ne i16 %410, 0
  %414 = icmp ne i16 %412, 1
  %415 = select i1 %413, i1 true, i1 %414
  br i1 %415, label %459, label %416

416:                                              ; preds = %408
  %417 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %9, i32 0, i32 3
  %418 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %419 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %418, i32 0, i32 10
  tail call void @ieee80211_send_auth(ptr noundef %0, i16 noundef zeroext 2, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef %417, ptr noundef %419, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0) #11
  br label %459

420:                                              ; preds = %15
  %421 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %422 = load i32, ptr %421, align 8
  %423 = icmp ult i32 %422, 26
  br i1 %423, label %459, label %424

424:                                              ; preds = %420
  %425 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %9, i32 0, i32 3
  %426 = tail call i32 @sta_info_destroy_addr(ptr noundef %0, ptr noundef %425) #11
  br label %459

427:                                              ; preds = %15
  %428 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %9, i32 0, i32 6
  %429 = load i8, ptr %428, align 2
  %430 = icmp eq i8 %429, 0
  br i1 %430, label %431, label %459

431:                                              ; preds = %427
  %432 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %433 = load i32, ptr %432, align 8
  %434 = add i32 %433, -26
  %435 = icmp slt i32 %434, 0
  br i1 %435, label %459, label %436

436:                                              ; preds = %431
  %437 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %9, i32 0, i32 6, i32 0, i32 1
  %438 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %9, i32 0, i32 4
  %439 = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %437, i32 noundef %434, i1 noundef zeroext true, i64 noundef 0, i32 noundef 0, ptr noundef %438, ptr noundef null) #11
  %440 = icmp eq ptr %439, null
  br i1 %440, label %458, label %441

441:                                              ; preds = %436
  %442 = getelementptr inbounds %struct.ieee802_11_elems, ptr %439, i32 0, i32 76
  %443 = load i8, ptr %442, align 2, !range !8
  %444 = icmp eq i8 %443, 0
  br i1 %444, label %445, label %458

445:                                              ; preds = %441
  %446 = load i32, ptr %432, align 8
  %447 = icmp ult i32 %446, 26
  br i1 %447, label %458, label %448

448:                                              ; preds = %445
  %449 = getelementptr inbounds %struct.anon.165, ptr %428, i32 0, i32 1
  %450 = load i8, ptr %449, align 1
  %451 = icmp eq i8 %450, 4
  br i1 %451, label %452, label %458

452:                                              ; preds = %448
  %453 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 4
  %454 = load i8, ptr %453, align 1, !range !8
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %456, label %458

456:                                              ; preds = %452
  %457 = tail call fastcc zeroext i1 @ieee80211_ibss_process_chanswitch(ptr noundef %0, ptr noundef nonnull %439) #11
  br label %458

458:                                              ; preds = %456, %452, %448, %445, %441, %436
  tail call void @kfree(ptr noundef %439) #11
  br label %459

459:                                              ; preds = %458, %431, %427, %424, %420, %416, %408, %404, %403, %160, %156, %155, %126, %122, %119, %109, %105, %98, %79, %20, %15, %2
  call void @mutex_unlock(ptr noundef %11) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_ibss_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [26 x i8], align 1
  %3 = alloca [8 x ptr], align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 7
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 19
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %309, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %9) #11
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 5
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %22, label %13

13:                                               ; preds = %13, %8
  %14 = phi ptr [ %20, %13 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #11
  %19 = tail call fastcc ptr @ieee80211_ibss_finish_sta(ptr noundef %14)
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  tail call void @_raw_spin_lock_bh(ptr noundef %9) #11
  %20 = load volatile ptr, ptr %10, align 4
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %22, label %13

22:                                               ; preds = %13, %8
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #11
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 2
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %308 [
    i32 0, label %25
    i32 1, label %222
  ]

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  %29 = getelementptr inbounds %struct.ieee80211_local, ptr %28, i32 0, i32 49
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %47, label %32

32:                                               ; preds = %43, %25
  %33 = phi ptr [ %44, %43 ], [ %30, %25 ]
  %34 = tail call i32 @ieee80211_sta_last_active(ptr noundef %33) #11
  %35 = getelementptr inbounds %struct.sta_info, ptr %33, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load volatile i32, ptr @jiffies, align 64
  %40 = sub i32 -3000, %34
  %41 = add i32 %40, %39
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38, %32
  %44 = load volatile ptr, ptr %33, align 4
  %45 = icmp eq ptr %44, %29
  br i1 %45, label %47, label %32

46:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br label %309

47:                                               ; preds = %43, %25
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2, i32 0, i32 1
  %49 = load i8, ptr %48, align 4, !range !8
  %50 = icmp eq i8 %49, 0
  %51 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %26, i32 0, i32 10
  %52 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %26, i32 0, i32 5
  %53 = load i8, ptr %52, align 1, !range !8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 27
  %57 = load ptr, ptr %56, align 4
  br label %58

58:                                               ; preds = %55, %47
  %59 = phi ptr [ %57, %55 ], [ null, %47 ]
  %60 = load i32, ptr %51, align 4
  %61 = getelementptr %struct.ieee80211_if_ibss, ptr %26, i32 0, i32 10, i32 4
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = or i32 %60, %63
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i1 %50, i1 false
  %67 = select i1 %66, ptr null, ptr %51
  %68 = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2, i32 3
  %71 = load i8, ptr %5, align 4
  %72 = zext i8 %71 to i32
  %73 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %26, i32 0, i32 6
  %74 = load i8, ptr %73, align 2, !range !8
  %75 = xor i8 %74, 1
  %76 = zext i8 %75 to i32
  %77 = tail call ptr @cfg80211_get_bss(ptr noundef %69, ptr noundef %59, ptr noundef %67, ptr noundef %70, i32 noundef %72, i32 noundef 2, i32 noundef %76) #11
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %58
  %80 = getelementptr inbounds %struct.cfg80211_bss, ptr %77, i32 0, i32 17
  %81 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %82 = getelementptr inbounds %struct.cfg80211_bss, ptr %77, i32 0, i32 11
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %81, ptr noundef %82) #13
  tail call fastcc void @ieee80211_sta_join_ibss(ptr noundef %0, ptr noundef %80) #11
  tail call void @ieee80211_rx_bss_put(ptr noundef %28, ptr noundef %80) #11
  br label %309

84:                                               ; preds = %58
  %85 = load i8, ptr %48, align 4, !range !8
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load i8, ptr %52, align 1, !range !8
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %91, ptr noundef %67) #13
  tail call fastcc void @ieee80211_sta_create_ibss(ptr noundef %0) #11
  br label %309

93:                                               ; preds = %87, %84
  %94 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, 200
  %97 = load volatile i32, ptr @jiffies, align 64
  %98 = sub i32 %96, %97
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %209

100:                                              ; preds = %93
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #11, !annotation !21
  %101 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %101) #13
  %103 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 31
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 7
  %106 = zext i1 %105 to i32
  %107 = icmp eq i32 %104, 6
  %108 = select i1 %107, i32 2, i32 %106
  %109 = load i8, ptr %52, align 1, !range !8
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %205, label %111

111:                                              ; preds = %100
  %112 = load ptr, ptr %68, align 8
  switch i32 %104, label %119 [
    i32 2, label %122
    i32 4, label %113
    i32 3, label %116
    i32 5, label %118
  ]

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 8
  %115 = load i32, ptr %114, align 4
  br label %116

116:                                              ; preds = %113, %111
  %117 = phi i32 [ 0, %111 ], [ %115, %113 ]
  br label %122

118:                                              ; preds = %111
  br label %122

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 7
  %121 = load i32, ptr %120, align 4
  br label %133

122:                                              ; preds = %118, %116, %111
  %123 = phi i32 [ 40, %111 ], [ 80, %116 ], [ 160, %118 ]
  %124 = phi i32 [ 0, %111 ], [ %117, %116 ], [ 0, %118 ]
  %125 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 7
  %126 = load i32, ptr %125, align 4
  %127 = lshr exact i32 %123, 1
  %128 = sub nsw i32 10, %127
  %129 = add i32 %128, %126
  %130 = add nsw i32 %127, -10
  %131 = add i32 %130, %126
  %132 = icmp ugt i32 %129, %131
  br i1 %132, label %157, label %133

133:                                              ; preds = %122, %119
  %134 = phi i1 [ false, %122 ], [ true, %119 ]
  %135 = phi i32 [ %124, %122 ], [ 0, %119 ]
  %136 = phi i32 [ %123, %122 ], [ 20, %119 ]
  %137 = phi i32 [ %131, %122 ], [ %121, %119 ]
  %138 = phi i32 [ %129, %122 ], [ %121, %119 ]
  br label %139

139:                                              ; preds = %150, %133
  %140 = phi i32 [ %152, %150 ], [ %138, %133 ]
  %141 = phi i32 [ %151, %150 ], [ 0, %133 ]
  %142 = mul i32 %140, 1000
  %143 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %112, i32 noundef %142) #11
  %144 = icmp eq ptr %143, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %139
  %146 = icmp ult i32 %141, 8
  br i1 %146, label %147, label %154

147:                                              ; preds = %145
  %148 = getelementptr ptr, ptr %3, i32 %141
  store ptr %143, ptr %148, align 4
  %149 = add nuw nsw i32 %141, 1
  br label %150

150:                                              ; preds = %147, %139
  %151 = phi i32 [ %149, %147 ], [ %141, %139 ]
  %152 = add i32 %140, 20
  %153 = icmp ugt i32 %152, %137
  br i1 %153, label %154, label %139

154:                                              ; preds = %150, %145
  %155 = phi i32 [ %151, %150 ], [ %141, %145 ]
  %156 = icmp eq i32 %135, 0
  br i1 %156, label %201, label %159

157:                                              ; preds = %122
  %158 = icmp eq i32 %124, 0
  br i1 %158, label %201, label %166

159:                                              ; preds = %154
  %160 = getelementptr ptr, ptr %3, i32 %155
  %161 = sub i32 8, %155
  br i1 %134, label %176, label %162

162:                                              ; preds = %159
  %163 = lshr i32 %136, 1
  %164 = sub nsw i32 10, %163
  %165 = add nsw i32 %163, -10
  br label %166

166:                                              ; preds = %162, %157
  %167 = phi i32 [ %165, %162 ], [ %130, %157 ]
  %168 = phi i32 [ %164, %162 ], [ %128, %157 ]
  %169 = phi i32 [ %161, %162 ], [ 8, %157 ]
  %170 = phi ptr [ %160, %162 ], [ %3, %157 ]
  %171 = phi i32 [ %135, %162 ], [ %124, %157 ]
  %172 = phi i32 [ %155, %162 ], [ 0, %157 ]
  %173 = add i32 %168, %171
  %174 = add i32 %167, %171
  %175 = icmp ugt i32 %173, %174
  br i1 %175, label %197, label %176

176:                                              ; preds = %166, %159
  %177 = phi i32 [ %169, %166 ], [ %161, %159 ]
  %178 = phi ptr [ %170, %166 ], [ %160, %159 ]
  %179 = phi i32 [ %172, %166 ], [ %155, %159 ]
  %180 = phi i32 [ %174, %166 ], [ %135, %159 ]
  %181 = phi i32 [ %173, %166 ], [ %135, %159 ]
  br label %182

182:                                              ; preds = %193, %176
  %183 = phi i32 [ %195, %193 ], [ %181, %176 ]
  %184 = phi i32 [ %194, %193 ], [ 0, %176 ]
  %185 = mul i32 %183, 1000
  %186 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %112, i32 noundef %185) #11
  %187 = icmp eq ptr %186, null
  br i1 %187, label %193, label %188

188:                                              ; preds = %182
  %189 = icmp ult i32 %184, %177
  br i1 %189, label %190, label %197

190:                                              ; preds = %188
  %191 = getelementptr ptr, ptr %178, i32 %184
  store ptr %186, ptr %191, align 4
  %192 = add nuw i32 %184, 1
  br label %193

193:                                              ; preds = %190, %182
  %194 = phi i32 [ %192, %190 ], [ %184, %182 ]
  %195 = add i32 %183, 20
  %196 = icmp ugt i32 %195, %180
  br i1 %196, label %197, label %182

197:                                              ; preds = %193, %188, %166
  %198 = phi i32 [ %172, %166 ], [ %179, %188 ], [ %179, %193 ]
  %199 = phi i32 [ 0, %166 ], [ %194, %193 ], [ %184, %188 ]
  %200 = add i32 %199, %198
  br label %201

201:                                              ; preds = %197, %157, %154
  %202 = phi i32 [ %200, %197 ], [ %155, %154 ], [ 0, %157 ]
  %203 = load i8, ptr %5, align 4
  %204 = call i32 @ieee80211_request_ibss_scan(ptr noundef %0, ptr noundef %70, i8 noundef zeroext %203, ptr noundef nonnull %3, i32 noundef %202, i32 noundef %108) #11
  br label %208

205:                                              ; preds = %100
  %206 = load i8, ptr %5, align 4
  %207 = tail call i32 @ieee80211_request_ibss_scan(ptr noundef %0, ptr noundef %70, i8 noundef zeroext %206, ptr noundef null, i32 noundef 0, i32 noundef %108) #11
  br label %208

208:                                              ; preds = %205, %201
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  br label %309

209:                                              ; preds = %93
  %210 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 15
  %211 = load i32, ptr %210, align 4
  %212 = add i32 %211, 700
  %213 = load volatile i32, ptr @jiffies, align 64
  %214 = sub i32 %212, %213
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %209
  tail call fastcc void @ieee80211_sta_create_ibss(ptr noundef %0) #11
  br label %217

217:                                              ; preds = %216, %209
  %218 = load volatile i32, ptr @jiffies, align 64
  %219 = add i32 %218, 200
  %220 = tail call i32 @round_jiffies(i32 noundef %219) #11
  %221 = tail call i32 @mod_timer(ptr noundef %26, i32 noundef %220) #11
  br label %309

222:                                              ; preds = %22
  %223 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %224 = load volatile i32, ptr @jiffies, align 64
  %225 = add i32 %224, 3000
  %226 = tail call i32 @round_jiffies(i32 noundef %225) #11
  %227 = tail call i32 @mod_timer(ptr noundef %223, i32 noundef %226) #11
  %228 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.ieee80211_local, ptr %229, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %230) #11
  %231 = getelementptr inbounds %struct.ieee80211_local, ptr %229, i32 0, i32 49
  %232 = load ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, %231
  br i1 %233, label %265, label %234

234:                                              ; preds = %222
  %235 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %223, i32 0, i32 10
  br label %236

236:                                              ; preds = %263, %234
  %237 = phi ptr [ %232, %234 ], [ %238, %263 ]
  %238 = load ptr, ptr %237, align 8
  %239 = call i32 @ieee80211_sta_last_active(ptr noundef %237) #11
  %240 = getelementptr inbounds %struct.sta_info, ptr %237, i32 0, i32 6
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, %0
  br i1 %242, label %243, label %263

243:                                              ; preds = %236
  %244 = add i32 %239, 6000
  %245 = load volatile i32, ptr @jiffies, align 64
  %246 = sub i32 %244, %245
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %257, label %248

248:                                              ; preds = %243
  %249 = add i32 %239, 1000
  %250 = load volatile i32, ptr @jiffies, align 64
  %251 = sub i32 %249, %250
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %248
  %254 = getelementptr inbounds %struct.sta_info, ptr %237, i32 0, i32 22
  %255 = load i32, ptr %254, align 8
  %256 = icmp eq i32 %255, 4
  br i1 %256, label %263, label %257

257:                                              ; preds = %253, %243
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(26) %2, i8 0, i32 26, i1 false) #11, !annotation !21
  %258 = getelementptr inbounds %struct.sta_info, ptr %237, i32 0, i32 46, i32 1
  call void @ieee80211_send_deauth_disassoc(ptr noundef %0, ptr noundef %258, ptr noundef %235, i16 noundef zeroext 192, i16 noundef zeroext 3, i1 noundef zeroext true, ptr noundef nonnull %2) #11
  %259 = call i32 @__sta_info_destroy(ptr noundef %237) #11
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %262, label %261, !prof !22

261:                                              ; preds = %257
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1277, i32 noundef 9, ptr noundef null) #11
  br label %262

262:                                              ; preds = %261, %257
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %2) #11
  br label %263

263:                                              ; preds = %262, %253, %248, %236
  %264 = icmp eq ptr %238, %231
  br i1 %264, label %265, label %236

265:                                              ; preds = %263, %222
  call void @mutex_unlock(ptr noundef %230) #11
  %266 = load volatile i32, ptr @jiffies, align 64
  %267 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 3
  %268 = load i32, ptr %267, align 4
  %269 = add i32 %266, -3000
  %270 = sub i32 %269, %268
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %309, label %272

272:                                              ; preds = %265
  %273 = load ptr, ptr %228, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  %274 = getelementptr inbounds %struct.ieee80211_local, ptr %273, i32 0, i32 49
  %275 = load volatile ptr, ptr %274, align 4
  %276 = icmp eq ptr %275, %274
  br i1 %276, label %292, label %277

277:                                              ; preds = %288, %272
  %278 = phi ptr [ %289, %288 ], [ %275, %272 ]
  %279 = call i32 @ieee80211_sta_last_active(ptr noundef %278) #11
  %280 = getelementptr inbounds %struct.sta_info, ptr %278, i32 0, i32 6
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, %0
  br i1 %282, label %283, label %288

283:                                              ; preds = %277
  %284 = load volatile i32, ptr @jiffies, align 64
  %285 = sub i32 -3000, %279
  %286 = add i32 %285, %284
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %283, %277
  %289 = load volatile ptr, ptr %278, align 4
  %290 = icmp eq ptr %289, %274
  br i1 %290, label %292, label %277

291:                                              ; preds = %283
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br label %309

292:                                              ; preds = %288, %272
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %293 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %223, i32 0, i32 5
  %294 = load i8, ptr %293, align 1, !range !8
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %296, label %309

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %298 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %297) #13
  %299 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 31
  %300 = load i32, ptr %299, align 4
  %301 = icmp eq i32 %300, 7
  %302 = zext i1 %301 to i32
  %303 = icmp eq i32 %300, 6
  %304 = select i1 %303, i32 2, i32 %302
  %305 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2, i32 3
  %306 = load i8, ptr %5, align 4
  %307 = call i32 @ieee80211_request_ibss_scan(ptr noundef %0, ptr noundef %305, i8 noundef zeroext %306, ptr noundef null, i32 noundef 0, i32 noundef %304) #11
  br label %309

308:                                              ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1712, i32 noundef 9, ptr noundef null) #11
  br label %309

309:                                              ; preds = %308, %296, %292, %291, %265, %217, %208, %90, %79, %46, %1
  call void @mutex_unlock(ptr noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_ibss_finish_sta(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #11
  %5 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, ptr noundef align 8 dereferenceable(6) %5, i32 6, i1 false)
  %6 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1048576
  %9 = icmp ne i32 %8, 0
  %10 = load i1, ptr @sta_info_pre_move_state.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %1
  store i1 true, ptr @sta_info_pre_move_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 742, i32 noundef 9, ptr noundef null) #11
  br label %14

14:                                               ; preds = %13, %1
  %15 = tail call i32 @sta_info_move_state(ptr noundef %0, i32 noundef 2) #11
  %16 = icmp ne i32 %15, 0
  %17 = load i1, ptr @sta_info_pre_move_state.__already_done.15, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %14
  store i1 true, ptr @sta_info_pre_move_state.__already_done.15, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 745, i32 noundef 9, ptr noundef null) #11
  br label %21

21:                                               ; preds = %20, %14
  %22 = load volatile i32, ptr %6, align 4
  %23 = and i32 %22, 1048576
  %24 = icmp ne i32 %23, 0
  %25 = load i1, ptr @sta_info_pre_move_state.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !9

28:                                               ; preds = %21
  store i1 true, ptr @sta_info_pre_move_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 742, i32 noundef 9, ptr noundef null) #11
  br label %29

29:                                               ; preds = %28, %21
  %30 = tail call i32 @sta_info_move_state(ptr noundef %0, i32 noundef 3) #11
  %31 = icmp ne i32 %30, 0
  %32 = load i1, ptr @sta_info_pre_move_state.__already_done.15, align 1
  %33 = xor i1 %32, true
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %36, !prof !9

35:                                               ; preds = %29
  store i1 true, ptr @sta_info_pre_move_state.__already_done.15, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 745, i32 noundef 9, ptr noundef null) #11
  br label %36

36:                                               ; preds = %35, %29
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %37, i32 0, i32 57
  %39 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %38, i32 0, i32 7
  %40 = load i8, ptr %39, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load volatile i32, ptr %6, align 4
  %44 = and i32 %43, 1048576
  %45 = icmp ne i32 %44, 0
  %46 = load i1, ptr @sta_info_pre_move_state.__already_done, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %50, !prof !9

49:                                               ; preds = %42
  store i1 true, ptr @sta_info_pre_move_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 742, i32 noundef 9, ptr noundef null) #11
  br label %50

50:                                               ; preds = %49, %42
  %51 = tail call i32 @sta_info_move_state(ptr noundef %0, i32 noundef 4) #11
  %52 = icmp ne i32 %51, 0
  %53 = load i1, ptr @sta_info_pre_move_state.__already_done.15, align 1
  %54 = xor i1 %53, true
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %57, !prof !9

56:                                               ; preds = %50
  store i1 true, ptr @sta_info_pre_move_state.__already_done.15, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 745, i32 noundef 9, ptr noundef null) #11
  br label %57

57:                                               ; preds = %56, %50, %36
  tail call void @rate_control_rate_init(ptr noundef %0) #11
  %58 = tail call i32 @sta_info_insert_rcu(ptr noundef %0) #11
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call ptr @sta_info_get(ptr noundef %4, ptr noundef nonnull %2) #11
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi ptr [ %61, %60 ], [ %0, %57 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #11
  ret ptr %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_ibss_setup_sdata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  tail call void @init_timer_key(ptr noundef %2, ptr noundef nonnull @ieee80211_ibss_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 5
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 4
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  store i32 -32, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 0, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 2
  store ptr @ieee80211_csa_connection_drop_work, ptr %9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_ibss_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1052
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -340
  tail call void @ieee80211_queue_work(ptr noundef %3, ptr noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_csa_connection_drop_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1428
  %3 = getelementptr i8, ptr %0, i32 -1384
  tail call void @mutex_lock(ptr noundef %3) #11
  tail call fastcc void @ieee80211_ibss_disconnect(ptr noundef %2)
  tail call void @synchronize_rcu() #11
  %4 = getelementptr i8, ptr %0, i32 -344
  tail call void @skb_queue_purge(ptr noundef %4) #11
  %5 = getelementptr i8, ptr %0, i32 -1072
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -360
  tail call void @ieee80211_queue_work(ptr noundef %6, ptr noundef %7) #11
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_ibss_notify_scan_completed(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %22, label %6

6:                                                ; preds = %19, %1
  %7 = phi ptr [ %20, %19 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 9
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 58
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 57, i32 0, i32 1, i32 3
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %12, %6
  %20 = load ptr, ptr %7, align 8
  %21 = icmp eq ptr %20, %3
  br i1 %21, label %22, label %6

22:                                               ; preds = %19, %1
  tail call void @mutex_unlock(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_ibss_join(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_channel, ptr %6, i32 0, i32 2
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %147

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @cfg80211_chandef_dfs_required(ptr noundef %12, ptr noundef %5, i32 noundef %14) #11
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %147, label %17

17:                                               ; preds = %10
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 12
  %21 = load i8, ptr %20, align 4, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %147, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 2, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = shl nuw i32 1, %25
  %27 = trunc i32 %26 to i8
  br label %28

28:                                               ; preds = %23, %17
  %29 = phi i8 [ %27, %23 ], [ 0, %17 ]
  %30 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 8
  %31 = load i8, ptr %30, align 4, !range !8
  %32 = icmp eq i8 %31, 0
  %33 = icmp ne i32 %15, 0
  %34 = select i1 %32, i1 true, i1 %33
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %36) #11
  %37 = tail call i32 @ieee80211_check_combinations(ptr noundef %0, ptr noundef %5, i32 noundef %35, i8 noundef zeroext %29) #11
  tail call void @mutex_unlock(ptr noundef %36) #11
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %147, label %39

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %45 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %44, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %45, ptr noundef nonnull align 1 dereferenceable(6) %41, i32 6, i1 false)
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i8 [ 1, %43 ], [ 0, %39 ]
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2, i32 0, i32 1
  store i8 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 9
  %50 = load i8, ptr %49, align 1, !range !8
  %51 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %52 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %51, i32 0, i32 6
  store i8 %50, ptr %52, align 2
  %53 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 10
  %54 = load i8, ptr %53, align 2, !range !8
  %55 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %51, i32 0, i32 7
  store i8 %54, ptr %55, align 1
  %56 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 12
  %57 = load i8, ptr %56, align 4, !range !8
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2, i32 1
  store i8 %57, ptr %58, align 8
  %59 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2
  store i32 %60, ptr %61, align 8
  %62 = load volatile i32, ptr @jiffies, align 64
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 3
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 2, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 7
  %67 = select i1 %66, i32 64, i32 0
  %68 = icmp eq i32 %65, 6
  %69 = select i1 %68, i32 32, i32 %67
  %70 = load ptr, ptr %11, align 8
  %71 = load ptr, ptr %5, align 4
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr %struct.wiphy, ptr %70, i32 0, i32 53, i32 %72
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %74, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %46
  %79 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %74, i32 0, i32 1
  br label %80

80:                                               ; preds = %94, %78
  %81 = phi i32 [ %76, %78 ], [ %95, %94 ]
  %82 = phi i32 [ %60, %78 ], [ %96, %94 ]
  %83 = phi i32 [ 0, %78 ], [ %97, %94 ]
  %84 = load ptr, ptr %79, align 4
  %85 = getelementptr %struct.ieee80211_rate, ptr %84, i32 %83
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, %69
  %88 = icmp eq i32 %87, %69
  br i1 %88, label %94, label %89

89:                                               ; preds = %80
  %90 = shl nuw i32 1, %83
  %91 = xor i32 %90, -1
  %92 = and i32 %82, %91
  store i32 %92, ptr %61, align 8
  %93 = load i32, ptr %75, align 4
  br label %94

94:                                               ; preds = %89, %80
  %95 = phi i32 [ %81, %80 ], [ %93, %89 ]
  %96 = phi i32 [ %82, %80 ], [ %92, %89 ]
  %97 = add nuw nsw i32 %83, 1
  %98 = icmp slt i32 %97, %95
  br i1 %98, label %80, label %99

99:                                               ; preds = %94, %46
  %100 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 26
  %101 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %100, ptr noundef align 4 dereferenceable(24) %101, i32 24, i1 false)
  %102 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 6
  %103 = load i16, ptr %102, align 2
  %104 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 19
  store i16 %103, ptr %104, align 2
  %105 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 27
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %105, ptr noundef align 4 dereferenceable(28) %5, i32 28, i1 false)
  %106 = load i8, ptr %30, align 4, !range !8
  %107 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %51, i32 0, i32 5
  store i8 %106, ptr %107, align 1
  %108 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %121, label %111

111:                                              ; preds = %99
  %112 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 5
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = tail call ptr @kmemdup(ptr noundef nonnull %109, i32 noundef %114, i32 noundef 3264) #11
  %116 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 23
  store ptr %115, ptr %116, align 4
  %117 = icmp eq ptr %115, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %111
  %119 = load i8, ptr %112, align 1
  %120 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 20
  store i8 %119, ptr %120, align 1
  br label %121

121:                                              ; preds = %118, %111, %99
  %122 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 2
  store i32 0, ptr %122, align 4
  %123 = load volatile i32, ptr @jiffies, align 64
  %124 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 15
  store i32 %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2, i32 3
  %126 = load ptr, ptr %1, align 4
  %127 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 4
  %128 = load i8, ptr %127, align 4
  %129 = zext i8 %128 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %125, ptr align 1 %126, i32 %129, i1 false)
  %130 = load i8, ptr %127, align 4
  %131 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 19
  store i8 %130, ptr %131, align 8
  %132 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 17
  %133 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(26) %132, ptr noundef align 4 dereferenceable(26) %133, i32 26, i1 false)
  %134 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 2
  %135 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(26) %134, ptr noundef align 2 dereferenceable(26) %135, i32 26, i1 false)
  %136 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 27
  %137 = load i16, ptr %136, align 8
  %138 = or i16 %137, 11
  store i16 %138, ptr %136, align 8
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 33554448) #11
  %139 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 44
  store i32 1, ptr %139, align 8
  %140 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 39
  %141 = load i8, ptr %140, align 4
  %142 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 43
  store i8 %141, ptr %142, align 4
  %143 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %1, i32 0, i32 11
  %144 = load i8, ptr %143, align 1, !range !8
  %145 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 23
  store i8 %144, ptr %145, align 2
  %146 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %4, ptr noundef %146) #11
  br label %147

147:                                              ; preds = %121, %28, %19, %10, %2
  %148 = phi i32 [ 0, %121 ], [ -95, %2 ], [ %15, %10 ], [ -22, %19 ], [ %37, %28 ]
  ret i32 %148
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_chandef_dfs_required(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_check_combinations(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_ibss_leave(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  tail call fastcc void @ieee80211_ibss_disconnect(ptr noundef %0)
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 19
  store i8 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %2, i32 0, i32 10
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #11
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 23
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #11
  store ptr null, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 20
  store i8 0, ptr %7, align 1
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 17
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false)
  tail call void @synchronize_rcu() #11
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 41
  tail call void @skb_queue_purge(ptr noundef %9) #11
  %10 = tail call i32 @del_timer_sync(ptr noundef %2) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_ibss_disconnect(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %2, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.ieee80211_if_ibss, ptr %2, i32 0, i32 10, i32 4
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = or i32 %6, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2, i32 3
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 19
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %2, i32 0, i32 6
  %22 = load i8, ptr %21, align 2, !range !8
  %23 = xor i8 %22, 1
  %24 = zext i8 %23 to i32
  %25 = tail call ptr @cfg80211_get_bss(ptr noundef %14, ptr noundef %16, ptr noundef %5, ptr noundef %17, i32 noundef %20, i32 noundef 2, i32 noundef %24) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %12
  %28 = load ptr, ptr %13, align 8
  tail call void @cfg80211_unlink_bss(ptr noundef %28, ptr noundef nonnull %25) #11
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.ieee80211_hw, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  tail call void @cfg80211_put_bss(ptr noundef %31, ptr noundef nonnull %25) #11
  br label %32

32:                                               ; preds = %27, %12, %1
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 2
  store i32 0, ptr %33, align 4
  %34 = tail call i32 @__sta_info_flush(ptr noundef %0, i1 noundef zeroext false) #11
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %35) #11
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 5
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %47, label %39

39:                                               ; preds = %39, %32
  %40 = phi ptr [ %45, %39 ], [ %37, %32 ]
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %40, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %40, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %41, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %35) #11
  tail call void @sta_info_free(ptr noundef %4, ptr noundef %40) #11
  tail call void @_raw_spin_lock_bh(ptr noundef %35) #11
  %45 = load volatile ptr, ptr %36, align 4
  %46 = icmp eq ptr %45, %36
  br i1 %46, label %47, label %39

47:                                               ; preds = %39, %32
  tail call void @_raw_spin_unlock_bh(ptr noundef %35) #11
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %49 = load ptr, ptr %48, align 8
  tail call void @netif_carrier_off(ptr noundef %49) #11
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 11
  store i8 0, ptr %50, align 8
  %51 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 12
  store i8 0, ptr %51, align 1
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 17
  store i8 0, ptr %52, align 1
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 40
  store i32 0, ptr %53, align 8
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 16
  %55 = load ptr, ptr %54, align 4
  store volatile ptr null, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.beacon_data, ptr %55, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %58, ptr noundef nonnull inttoptr (i32 28 to ptr)) #11
  br label %59

59:                                               ; preds = %57, %47
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %60) #11
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 2560) #11
  tail call fastcc void @drv_leave_ibss(ptr noundef %4, ptr noundef %0)
  %61 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %61) #11
  tail call void @ieee80211_vif_release_channel(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %61) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_apply_htcap_overrides(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_ht_cap(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_ht_oper(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_vht_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_vht_oper(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_add_wmm_info_ie(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_tx_skb(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2200, i32 noundef 9, ptr noundef null) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #11
  br label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 4
  %9 = load i32, ptr %8, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %0, ptr noundef %1, i32 noundef 7, i32 noundef %9) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br label %10

10:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_tx_last_beacon(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_bss_info_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_ibss_process_chanswitch(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.cfg80211_csa_settings, align 4
  %4 = alloca %struct.ieee80211_csa_ie, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(192) %3, i8 0, i32 192, i1 false), !annotation !21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !21
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 27
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 31
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = trunc i32 %8 to i8
  %12 = lshr i8 -61, %11
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds [8 x i32], ptr @switch.table.ieee80211_ibss_process_chanswitch, i32 0, i32 %8
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %10, %2
  %19 = phi i32 [ 2048, %2 ], [ %17, %15 ], [ 2048, %10 ]
  %20 = getelementptr inbounds %struct.ieee802_11_elems, ptr %1, i32 0, i32 18
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, ptr %21, align 1
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi i32 [ %24, %23 ], [ 0, %18 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(192) %3, i8 0, i32 192, i1 false)
  %27 = load ptr, ptr %6, align 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %5, i32 0, i32 10
  %30 = call i32 @ieee80211_parse_ch_switch_ie(ptr noundef %0, ptr noundef %1, i32 noundef %28, i32 noundef %26, i32 noundef %19, ptr noundef %29, ptr noundef nonnull %4) #11
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %151, label %32

32:                                               ; preds = %25
  %33 = icmp eq i32 %30, 0
  br i1 %33, label %34, label %164

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ieee80211_hw, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 11
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 8388608
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %151, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %4, i32 0, i32 2
  %45 = load i8, ptr %44, align 1
  %46 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %3, i32 0, i32 9
  store i8 %45, ptr %46, align 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 4 dereferenceable(28) %4, i32 28, i1 false)
  %47 = load i32, ptr %7, align 4
  switch i32 %47, label %75 [
    i32 7, label %61
    i32 6, label %61
    i32 0, label %57
    i32 1, label %48
    i32 2, label %49
  ]

48:                                               ; preds = %43
  br label %57

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %6, align 4
  %53 = getelementptr inbounds %struct.ieee80211_channel, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %51, %54
  %56 = select i1 %55, i32 3, i32 2
  br label %57

57:                                               ; preds = %49, %48, %43
  %58 = phi i32 [ 1, %48 ], [ %56, %49 ], [ %47, %43 ]
  %59 = load ptr, ptr %3, align 4
  call void @cfg80211_chandef_create(ptr noundef nonnull %3, ptr noundef %59, i32 noundef %58) #11
  %60 = load ptr, ptr %35, align 4
  br label %76

61:                                               ; preds = %43, %43
  %62 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, %47
  br i1 %64, label %76, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %67 = load ptr, ptr %3, align 4
  %68 = getelementptr inbounds %struct.ieee80211_channel, ptr %67, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %66, ptr noundef %29, i32 noundef %69, i32 noundef %63, i32 noundef %71, i32 noundef %73) #13
  br label %151

75:                                               ; preds = %43
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 846, i32 noundef 9, ptr noundef null) #11
  br label %151

76:                                               ; preds = %61, %57
  %77 = phi ptr [ %36, %61 ], [ %60, %57 ]
  %78 = getelementptr inbounds %struct.ieee80211_hw, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8
  %80 = call zeroext i1 @cfg80211_reg_can_beacon(ptr noundef %79, ptr noundef nonnull %3, i32 noundef 1) #11
  br i1 %80, label %93, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %83 = load ptr, ptr %3, align 4
  %84 = getelementptr inbounds %struct.ieee80211_channel, ptr %83, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %82, ptr noundef %29, i32 noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef %91) #13
  br label %151

93:                                               ; preds = %76
  %94 = load ptr, ptr %35, align 4
  %95 = getelementptr inbounds %struct.ieee80211_hw, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 8
  %97 = call i32 @cfg80211_chandef_dfs_required(ptr noundef %96, ptr noundef nonnull %3, i32 noundef 1) #11
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %151, label %99

99:                                               ; preds = %93
  %100 = icmp eq i32 %97, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2, i32 1
  %103 = load i8, ptr %102, align 4, !range !8
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %151, label %105

105:                                              ; preds = %101, %99
  %106 = icmp ne i32 %97, 0
  %107 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %3, i32 0, i32 7
  %108 = zext i1 %106 to i8
  store i8 %108, ptr %107, align 4
  %109 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32
  %110 = load ptr, ptr %3, align 4
  %111 = load ptr, ptr %109, align 4
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %113, label %137

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 2
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 5
  %127 = load i16, ptr %126, align 4
  %128 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 5
  %129 = load i16, ptr %128, align 4
  %130 = icmp eq i16 %127, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 3
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 3
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %164, label %137

137:                                              ; preds = %131, %125, %119, %113, %105
  %138 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %4, i32 0, i32 1
  %139 = load i8, ptr %138, align 4
  %140 = icmp ne i8 %139, 0
  %141 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %3, i32 0, i32 8
  %142 = zext i1 %140 to i8
  store i8 %142, ptr %141, align 1
  %143 = load ptr, ptr %35, align 4
  %144 = getelementptr inbounds %struct.ieee80211_hw, ptr %143, i32 0, i32 1
  %145 = load ptr, ptr %144, align 8
  %146 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %147 = load ptr, ptr %146, align 8
  %148 = call i32 @ieee80211_channel_switch(ptr noundef %145, ptr noundef %147, ptr noundef nonnull %3) #11
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %137
  call fastcc void @ieee80211_ibss_csa_mark_radar(ptr noundef %0)
  br label %164

151:                                              ; preds = %137, %101, %93, %81, %75, %65, %34, %25
  %152 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  call void @ieee80211_queue_work(ptr noundef %153, ptr noundef %154) #11
  %155 = load ptr, ptr %152, align 4
  %156 = getelementptr inbounds %struct.ieee80211_hw, ptr %155, i32 0, i32 1
  %157 = load ptr, ptr %156, align 8
  %158 = call i32 @cfg80211_chandef_dfs_required(ptr noundef %157, ptr noundef %6, i32 noundef 1) #11
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %151
  %161 = load ptr, ptr %152, align 4
  %162 = getelementptr inbounds %struct.ieee80211_hw, ptr %161, i32 0, i32 1
  %163 = load ptr, ptr %162, align 8
  call void @__cfg80211_radar_event(ptr noundef %163, ptr noundef %6, i1 noundef zeroext false, i32 noundef 2592) #11
  br label %164

164:                                              ; preds = %160, %151, %150, %131, %32
  %165 = phi i1 [ true, %150 ], [ false, %32 ], [ true, %131 ], [ true, %151 ], [ true, %160 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #11
  ret i1 %165
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ieee80211_calculate_rx_timestamp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drv_get_tsf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_sta_join_ibss(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.cfg80211_chan_def, align 4
  %4 = getelementptr i8, ptr %1, i32 -60
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, i8 0, i32 28, i1 false), !annotation !21
  %5 = getelementptr i8, ptr %1, i32 -20
  %6 = load i16, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 27
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 31
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %28 [
    i32 5, label %26
    i32 4, label %26
    i32 3, label %26
    i32 6, label %22
    i32 7, label %22
    i32 0, label %19
    i32 1, label %10
    i32 2, label %11
  ]

10:                                               ; preds = %2
  br label %19

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.ieee80211_channel, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %13, %16
  %18 = select i1 %17, i32 3, i32 2
  br label %19

19:                                               ; preds = %11, %10, %2
  %20 = phi i32 [ 1, %10 ], [ %18, %11 ], [ %9, %2 ]
  %21 = load ptr, ptr %4, align 4
  call void @cfg80211_chandef_create(ptr noundef nonnull %3, ptr noundef %21, i32 noundef %20) #11
  br label %30

22:                                               ; preds = %2, %2
  %23 = load ptr, ptr %4, align 4
  call void @cfg80211_chandef_create(ptr noundef nonnull %3, ptr noundef %23, i32 noundef 0) #11
  %24 = load i32, ptr %8, align 4
  %25 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  br label %30

26:                                               ; preds = %2, %2, %2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef align 8 dereferenceable(28) %7, i32 28, i1 false)
  %27 = load ptr, ptr %4, align 4
  store ptr %27, ptr %3, align 4
  br label %30

28:                                               ; preds = %2
  %29 = load ptr, ptr %4, align 4
  call void @cfg80211_chandef_create(ptr noundef nonnull %3, ptr noundef %29, i32 noundef 0) #11
  br label %30

30:                                               ; preds = %28, %26, %22, %19
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ieee80211_hw, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %4, align 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr %struct.wiphy, ptr %34, i32 0, i32 53, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %8, align 4
  %40 = icmp eq i32 %39, 7
  %41 = select i1 %40, i32 64, i32 0
  %42 = icmp eq i32 %39, 6
  %43 = select i1 %42, i32 32, i32 %41
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %45, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 7
  %51 = zext i1 %50 to i32
  %52 = icmp eq i32 %49, 6
  %53 = select i1 %52, i32 2, i32 %51
  br label %54

54:                                               ; preds = %47, %30
  %55 = phi i32 [ %53, %47 ], [ 0, %30 ]
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %56 = getelementptr inbounds %struct.ieee80211_bss, ptr %1, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %101, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %38, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = icmp sgt i32 %61, 0
  %63 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %38, i32 0, i32 1
  %64 = shl nuw nsw i32 5, %55
  %65 = add nsw i32 %64, -1
  br label %66

66:                                               ; preds = %97, %59
  %67 = phi i32 [ 0, %59 ], [ %98, %97 ]
  %68 = phi i32 [ 0, %59 ], [ %99, %97 ]
  %69 = getelementptr %struct.ieee80211_bss, ptr %1, i32 0, i32 4, i32 %68
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 127
  %73 = and i32 %71, 128
  %74 = icmp eq i32 %73, 0
  br i1 %62, label %75, label %97

75:                                               ; preds = %66
  %76 = load ptr, ptr %63, align 4
  br label %77

77:                                               ; preds = %94, %75
  %78 = phi i32 [ 0, %75 ], [ %95, %94 ]
  %79 = getelementptr %struct.ieee80211_rate, ptr %76, i32 %78
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, %43
  %82 = icmp eq i32 %81, %43
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = getelementptr %struct.ieee80211_rate, ptr %76, i32 %78, i32 1
  %85 = load i16, ptr %84, align 4
  %86 = zext i16 %85 to i32
  %87 = add i32 %65, %86
  %88 = sdiv i32 %87, %64
  %89 = icmp eq i32 %88, %72
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = shl nuw i32 1, %78
  %92 = select i1 %74, i32 0, i32 %91
  %93 = or i32 %92, %67
  br label %97

94:                                               ; preds = %83, %77
  %95 = add nuw nsw i32 %78, 1
  %96 = icmp eq i32 %95, %61
  br i1 %96, label %97, label %77

97:                                               ; preds = %94, %90, %66
  %98 = phi i32 [ %93, %90 ], [ %67, %66 ], [ %67, %94 ]
  %99 = add nuw i32 %68, 1
  %100 = icmp eq i32 %99, %57
  br i1 %100, label %101, label %66

101:                                              ; preds = %97, %54
  %102 = phi i32 [ 0, %54 ], [ %98, %97 ]
  %103 = call i16 @llvm.umax.i16(i16 %6, i16 10)
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  %104 = getelementptr i8, ptr %1, i32 -52
  %105 = load volatile ptr, ptr %104, align 4
  %106 = load i64, ptr %105, align 8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %107 = getelementptr i8, ptr %1, i32 -16
  %108 = zext i16 %103 to i32
  %109 = getelementptr i8, ptr %1, i32 -18
  %110 = load i16, ptr %109, align 2
  call fastcc void @__ieee80211_sta_join_ibss(ptr noundef %0, ptr noundef %107, i32 noundef %108, ptr noundef nonnull %3, i32 noundef %102, i16 noundef zeroext %110, i64 noundef %106, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_get_rates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_ibss_add_sta(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 48
  %9 = load i32, ptr %8, align 8
  %10 = icmp ugt i32 %9, 127
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = tail call i32 @net_ratelimit() #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %15, ptr noundef %2) #13
  br label %17

17:                                               ; preds = %14, %11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %67

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %67

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %5, i32 0, i32 10
  %25 = load i32, ptr %1, align 4
  %26 = load i32, ptr %24, align 4
  %27 = xor i32 %26, %25
  %28 = getelementptr i8, ptr %1, i32 4
  %29 = load i16, ptr %28, align 2
  %30 = getelementptr %struct.ieee80211_if_ibss, ptr %5, i32 0, i32 10, i32 4
  %31 = load i16, ptr %30, align 2
  %32 = xor i16 %31, %29
  %33 = zext i16 %32 to i32
  %34 = or i32 %27, %33
  %35 = icmp eq i32 %34, 0
  tail call void asm sideeffect "", "~{memory}"() #11
  br i1 %35, label %36, label %67

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  %40 = load i1, ptr @ieee80211_ibss_add_sta.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44, !prof !9

43:                                               ; preds = %36
  store i1 true, ptr @ieee80211_ibss_add_sta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 626, i32 noundef 9, ptr noundef null) #11
  br label %44

44:                                               ; preds = %43, %36
  br i1 %39, label %67, label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr %38, align 4
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %38, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %50 = tail call ptr @sta_info_alloc(ptr noundef %0, ptr noundef %2, i32 noundef 3264) #11
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %67

53:                                               ; preds = %45
  %54 = icmp eq i32 %49, 6
  %55 = icmp eq i32 %49, 7
  %56 = zext i1 %55 to i32
  %57 = select i1 %54, i32 2, i32 %56
  %58 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr %struct.wiphy, ptr %59, i32 0, i32 53, i32 %47
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 @ieee80211_mandatory_rates(ptr noundef %61, i32 noundef %57) #11
  %63 = or i32 %62, %3
  %64 = getelementptr inbounds %struct.sta_info, ptr %50, i32 0, i32 46
  %65 = getelementptr [6 x i32], ptr %64, i32 0, i32 %47
  store i32 %63, ptr %65, align 4
  %66 = tail call fastcc ptr @ieee80211_ibss_finish_sta(ptr noundef nonnull %50)
  br label %67

67:                                               ; preds = %53, %52, %44, %23, %22, %17
  %68 = phi ptr [ null, %17 ], [ null, %22 ], [ %66, %53 ], [ null, %52 ], [ null, %44 ], [ null, %23 ]
  ret ptr %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_bss_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_fast_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_chandef_ht_oper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_ht_cap_ie_to_sta_ht_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_chandef_vht_oper(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vht_cap_ie_to_sta_vht_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_chandef_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_rate_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_sta_rc_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_parse_ch_switch_ie(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_reg_can_beacon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_switch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_ibss_csa_mark_radar(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 27
  %7 = tail call i32 @cfg80211_chandef_dfs_required(ptr noundef %5, ptr noundef %6, i32 noundef 1) #11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  tail call void @__cfg80211_radar_event(ptr noundef %12, ptr noundef %6, i1 noundef zeroext false, i32 noundef 2592) #11
  br label %13

13:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cfg80211_radar_event(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ieee80211_sta_join_ibss(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i16 noundef zeroext %5, i64 noundef %6, i1 noundef zeroext %7) unnamed_addr #0 {
  %9 = alloca %struct.cfg80211_chan_def, align 4
  %10 = alloca %struct.cfg80211_inform_bss, align 8
  %11 = alloca i8, align 1
  %12 = zext i1 %7 to i8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 28, i1 false), !annotation !21
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i32 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #11
  store i8 0, ptr %11, align 1, !annotation !21
  tail call void @drv_reset_tsf(ptr noundef %15, ptr noundef %0) #11
  %16 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %13, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %1, align 4
  %19 = xor i32 %18, %17
  %20 = getelementptr %struct.ieee80211_if_ibss, ptr %13, i32 0, i32 10, i32 4
  %21 = load i16, ptr %20, align 2
  %22 = getelementptr i8, ptr %1, i32 4
  %23 = load i16, ptr %22, align 2
  %24 = xor i16 %23, %21
  %25 = zext i16 %24 to i32
  %26 = or i32 %19, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %8
  %29 = tail call i32 @__sta_info_flush(ptr noundef %0, i1 noundef zeroext false) #11
  br label %30

30:                                               ; preds = %28, %8
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 11
  %32 = load i8, ptr %31, align 8, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  store i8 0, ptr %31, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 12
  store i8 0, ptr %35, align 1
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 17
  store i8 0, ptr %36, align 1
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %38 = load ptr, ptr %37, align 8
  tail call void @netif_carrier_off(ptr noundef %38) #11
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 2560) #11
  tail call fastcc void @drv_leave_ibss(ptr noundef %15, ptr noundef %0)
  br label %39

39:                                               ; preds = %34, %30
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 16
  %41 = load ptr, ptr %40, align 4
  store volatile ptr null, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.beacon_data, ptr %41, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %44, ptr noundef nonnull inttoptr (i32 28 to ptr)) #11
  br label %45

45:                                               ; preds = %43, %39
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, ptr noundef align 4 dereferenceable(28) %3, i32 28, i1 false)
  %46 = load ptr, ptr %9, align 4
  %47 = getelementptr inbounds %struct.ieee80211_hw, ptr %15, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = call zeroext i1 @cfg80211_reg_can_beacon(ptr noundef %48, ptr noundef nonnull %9, i32 noundef 1) #11
  br i1 %49, label %65, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %9, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  switch i32 %52, label %56 [
    i32 7, label %53
    i32 6, label %53
    i32 1, label %53
    i32 0, label %53
  ]

53:                                               ; preds = %50, %50, %50, %50
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %54) #13
  br label %214

56:                                               ; preds = %50
  store i32 1, ptr %51, align 4
  %57 = getelementptr inbounds %struct.ieee80211_channel, ptr %46, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %9, i32 0, i32 2
  store i32 %58, ptr %59, align 4
  %60 = load ptr, ptr %47, align 8
  %61 = call zeroext i1 @cfg80211_reg_can_beacon(ptr noundef %60, ptr noundef nonnull %9, i32 noundef 1) #11
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %63) #13
  br label %214

65:                                               ; preds = %56, %45
  %66 = load ptr, ptr %14, align 4
  %67 = getelementptr inbounds %struct.ieee80211_hw, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8
  %69 = call i32 @cfg80211_chandef_dfs_required(ptr noundef %68, ptr noundef nonnull %9, i32 noundef 1) #11
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %72) #13
  br label %214

74:                                               ; preds = %65
  %75 = icmp eq i32 %69, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2, i32 1
  %78 = load i8, ptr %77, align 4, !range !8
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %81) #13
  br label %214

83:                                               ; preds = %76, %74
  %84 = getelementptr inbounds %struct.ieee80211_local, ptr %15, i32 0, i32 66
  call void @mutex_lock(ptr noundef %84) #11
  %85 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %13, i32 0, i32 5
  %86 = load i8, ptr %85, align 1, !range !8
  %87 = xor i8 %86, 1
  %88 = zext i8 %87 to i32
  %89 = call i32 @ieee80211_vif_use_channel(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %88) #11
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %92) #13
  call void @mutex_unlock(ptr noundef %84) #11
  br label %214

94:                                               ; preds = %83
  %95 = icmp ne i32 %69, 0
  %96 = zext i1 %95 to i8
  %97 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 47
  store i8 %96, ptr %97, align 4
  call void @mutex_unlock(ptr noundef %84) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %16, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false)
  %98 = call fastcc ptr @ieee80211_ibss_build_presp(ptr noundef %0, i32 noundef %2, i32 noundef %4, i16 noundef zeroext %5, i64 noundef %6, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef null)
  %99 = icmp eq ptr %98, null
  br i1 %99, label %214, label %100

100:                                              ; preds = %94
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !23
  store volatile ptr %98, ptr %40, align 4
  %101 = load ptr, ptr %98, align 4
  %102 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 17
  store i8 1, ptr %102, align 1
  %103 = trunc i32 %2 to i16
  %104 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 19
  store i16 %103, ptr %104, align 2
  %105 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 24
  store i32 %4, ptr %105, align 8
  %106 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 19
  %107 = load i8, ptr %106, align 4
  %108 = zext i8 %107 to i32
  %109 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 40
  store i32 %108, ptr %109, align 8
  %110 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 39
  %111 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %110, ptr align 4 %111, i32 %108, i1 false)
  %112 = call i32 @ieee80211_reset_erp_info(ptr noundef %0) #11
  %113 = load i32, ptr %46, align 4
  %114 = icmp eq i32 %113, 1
  %115 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 16
  %116 = zext i1 %114 to i8
  store i8 %116, ptr %115, align 2
  %117 = or i32 %112, 35832
  %118 = load i32, ptr %46, align 4
  %119 = icmp ne i32 %118, 0
  %120 = load i8, ptr %11, align 1
  %121 = icmp eq i8 %120, 0
  %122 = select i1 %119, i1 true, i1 %121
  %123 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, -5
  %126 = select i1 %122, i32 0, i32 4
  %127 = or i32 %125, %126
  store i32 %127, ptr %123, align 8
  call void @ieee80211_set_wmm_default(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext false) #11
  store i8 1, ptr %31, align 8
  %128 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 12
  store i8 %12, ptr %128, align 1
  %129 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %130 = load i32, ptr %129, align 8
  %131 = and i32 %130, 32
  %132 = icmp eq i32 %131, 0
  %133 = load i1, ptr @drv_join_ibss.__already_done, align 1
  %134 = xor i1 %133, true
  %135 = select i1 %132, i1 %134, i1 false
  br i1 %135, label %136, label %142, !prof !9

136:                                              ; preds = %100
  store i1 true, ptr @drv_join_ibss.__already_done, align 1
  %137 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %138 = load ptr, ptr %137, align 8
  %139 = icmp eq ptr %138, null
  %140 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %141 = select i1 %139, ptr %140, ptr %138
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1114, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %141, i32 noundef %130) #11
  br label %142

142:                                              ; preds = %136, %100
  br i1 %132, label %188, label %143

143:                                              ; preds = %142
  %144 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1
  %145 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_join_ibss, i32 0, i32 1), align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %143
  %148 = tail call ptr @llvm.thread.pointer() #11
  %149 = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 2
  %150 = load i32, ptr %149, align 8
  %151 = lshr i32 %150, 5
  %152 = getelementptr i32, ptr @__cpu_online_mask, i32 %151
  %153 = load volatile i32, ptr %152, align 4
  %154 = and i32 %150, 31
  %155 = shl nuw i32 1, %154
  %156 = and i32 %155, %153
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %147
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  %159 = call i32 @__traceiter_drv_join_ibss(ptr noundef null, ptr noundef %15, ptr noundef %0, ptr noundef %144) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  br label %160

160:                                              ; preds = %158, %147, %143
  %161 = getelementptr inbounds %struct.ieee80211_local, ptr %15, i32 0, i32 8
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.ieee80211_ops, ptr %162, i32 0, i32 82
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %168 = call i32 %164(ptr noundef %15, ptr noundef %167) #11
  br label %169

169:                                              ; preds = %166, %160
  %170 = phi i32 [ %168, %166 ], [ 0, %160 ]
  %171 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %169
  %174 = tail call ptr @llvm.thread.pointer() #11
  %175 = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 2
  %176 = load i32, ptr %175, align 8
  %177 = lshr i32 %176, 5
  %178 = getelementptr i32, ptr @__cpu_online_mask, i32 %177
  %179 = load volatile i32, ptr %178, align 4
  %180 = and i32 %176, 31
  %181 = shl nuw i32 1, %180
  %182 = and i32 %181, %179
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %173
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %185 = call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %15, i32 noundef %170) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %186

186:                                              ; preds = %184, %173, %169
  %187 = icmp eq i32 %170, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %186, %142
  %189 = phi i32 [ %170, %186 ], [ -5, %142 ]
  store i8 0, ptr %31, align 8
  store i8 0, ptr %128, align 1
  store i8 0, ptr %102, align 1
  store i32 0, ptr %109, align 8
  store volatile ptr null, ptr %40, align 4
  %190 = getelementptr inbounds %struct.beacon_data, ptr %98, i32 0, i32 7
  call void @kvfree_call_rcu(ptr noundef %190, ptr noundef nonnull inttoptr (i32 28 to ptr)) #11
  call void @mutex_lock(ptr noundef %84) #11
  call void @ieee80211_vif_release_channel(ptr noundef %0) #11
  call void @mutex_unlock(ptr noundef %84) #11
  %191 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %191, i32 noundef %189) #13
  br label %214

193:                                              ; preds = %186
  call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef %117) #11
  %194 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 2
  store i32 1, ptr %194, align 4
  %195 = load volatile i32, ptr @jiffies, align 64
  %196 = add i32 %195, 3000
  %197 = call i32 @round_jiffies(i32 noundef %196) #11
  %198 = call i32 @mod_timer(ptr noundef %13, i32 noundef %197) #11
  store ptr %46, ptr %10, align 8
  %199 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %9, i32 0, i32 1
  %200 = load i32, ptr %199, align 4
  %201 = icmp eq i32 %200, 7
  %202 = zext i1 %201 to i32
  %203 = icmp eq i32 %200, 6
  %204 = select i1 %203, i32 2, i32 %202
  %205 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %10, i32 0, i32 1
  store i32 %204, ptr %205, align 4
  %206 = load ptr, ptr %47, align 8
  %207 = getelementptr inbounds %struct.beacon_data, ptr %98, i32 0, i32 2
  %208 = load i32, ptr %207, align 4
  %209 = call ptr @cfg80211_inform_bss_frame_data(ptr noundef %206, ptr noundef nonnull %10, ptr noundef %101, i32 noundef %208, i32 noundef 3264) #11
  %210 = load ptr, ptr %47, align 8
  call void @cfg80211_put_bss(ptr noundef %210, ptr noundef %209) #11
  %211 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %212 = load ptr, ptr %211, align 8
  call void @netif_carrier_on(ptr noundef %212) #11
  %213 = load ptr, ptr %211, align 8
  call void @cfg80211_ibss_joined(ptr noundef %213, ptr noundef %16, ptr noundef %46, i32 noundef 3264) #11
  br label %214

214:                                              ; preds = %193, %188, %94, %91, %80, %71, %62, %53
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_reset_tsf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drv_leave_ibss(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @drv_leave_ibss.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %16, !prof !9

10:                                               ; preds = %2
  store i1 true, ptr @drv_leave_ibss.__already_done, align 1
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %15 = select i1 %13, ptr %14, ptr %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1128, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %15, i32 noundef %4) #11
  br label %16

16:                                               ; preds = %10, %2
  br i1 %6, label %57, label %17

17:                                               ; preds = %16
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_leave_ibss, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  %32 = tail call i32 @__traceiter_drv_leave_ibss(ptr noundef null, ptr noundef %0, ptr noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  br label %33

33:                                               ; preds = %31, %20, %17
  %34 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ieee80211_ops, ptr %35, i32 0, i32 83
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  tail call void %37(ptr noundef %0, ptr noundef %40) #11
  br label %41

41:                                               ; preds = %39, %33
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  %56 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br label %57

57:                                               ; preds = %55, %44, %41, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_vif_use_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_reset_erp_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_set_wmm_default(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vif_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_frame_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ibss_joined(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sta_info_flush(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_leave_ibss(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_join_ibss(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_auth(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_destroy_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802_11_parse_elems_crc(ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_insert_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_move_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_sta_create_ibss(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !21
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2, i32 0, i32 1
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %3, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, ptr noundef align 2 dereferenceable(6) %8, i32 6, i1 false)
  br label %41

9:                                                ; preds = %1
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #11
  %10 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2, i32 0
  %11 = load i8, ptr %10, align 1
  %12 = load i8, ptr %2, align 1
  %13 = xor i8 %12, %11
  %14 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = xor i8 %17, %15
  store i8 %18, ptr %16, align 1
  %19 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = xor i8 %22, %20
  store i8 %23, ptr %21, align 1
  %24 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = xor i8 %27, %25
  store i8 %28, ptr %26, align 1
  %29 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 4
  %32 = load i8, ptr %31, align 1
  %33 = xor i8 %32, %30
  store i8 %33, ptr %31, align 1
  %34 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2, i32 5
  %35 = load i8, ptr %34, align 1
  %36 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 5
  %37 = load i8, ptr %36, align 1
  %38 = xor i8 %37, %35
  store i8 %38, ptr %36, align 1
  %39 = and i8 %13, -4
  %40 = or i8 %39, 2
  store i8 %40, ptr %2, align 1
  br label %41

41:                                               ; preds = %9, %7
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %42, ptr noundef nonnull %2) #13
  %44 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %3, i32 0, i32 6
  %45 = load i8, ptr %44, align 2, !range !8
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, i16 2, i16 18
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 19
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 27
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  call fastcc void @__ieee80211_sta_join_ibss(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %50, ptr noundef %51, i32 noundef %53, i16 noundef zeroext %47, i64 noundef 0, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_request_ibss_scan(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_last_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_deauth_disassoc(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sta_info_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unlink_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sta_info_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

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
!10 = !{i64 2148991462}
!11 = !{i64 2148991679}
!12 = !{i64 2159594706}
!13 = !{i64 2149217661}
!14 = !{i64 2149213485}
!15 = !{i64 2149213560, i64 2149213587, i64 2149213634, i64 2149213656, i64 2149213684, i64 2149213704}
!16 = !{i64 2149240664}
!17 = !{i64 2158179922}
!18 = !{i64 2158180080}
!19 = !{i64 2157472947}
!20 = !{i64 2157473107}
!21 = !{!"auto-init"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2159571205}
!24 = !{i64 2158650493}
!25 = !{i64 2158650667}
!26 = !{i64 2158663750}
!27 = !{i64 2158663914}
!28 = !{i64 2157460077}
!29 = !{i64 2157460229}
