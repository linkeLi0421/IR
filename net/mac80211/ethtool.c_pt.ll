; ModuleID = '/llk/IR/net/mac80211/ethtool.c_pt.bc'
source_filename = "../net/mac80211/ethtool.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.110, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.110 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.109, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.anon.109 = type { i64, i64, i8 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.118, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.118 = type { i32, i16 }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
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
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
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
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.144, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
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
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@ieee80211_ethtool_ops = dso_local local_unnamed_addr constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @cfg80211_get_drvinfo, ptr @ieee80211_get_regs_len, ptr @ieee80211_get_regs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ieee80211_get_ringparam, ptr @ieee80211_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr @ieee80211_get_strings, ptr null, ptr @ieee80211_get_stats, ptr null, ptr null, ptr null, ptr null, ptr @ieee80211_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__tracepoint_drv_get_ringparam = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_set_ringparam = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@ieee80211_gstrings_sta_stats = internal unnamed_addr constant [21 x [32 x i8]] [[32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_duplicates\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_filtered\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_retry_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_retries\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"sta_state\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"txrate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rxrate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"signal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"channel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"noise\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ch_time\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ch_time_busy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ch_time_ext_busy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ch_time_rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ch_time_tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 1
@__tracepoint_drv_get_et_strings = external dso_local global %struct.tracepoint, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"net/mac80211/ethtool.c\00", align 1
@__tracepoint_drv_get_survey = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_get_et_stats = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_get_et_sset_count = external dso_local global %struct.tracepoint, align 4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_get_drvinfo(ptr noundef, ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ieee80211_get_regs_len(ptr nocapture noundef readnone %0) #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ieee80211_get_regs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 39
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ethtool_regs, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ethtool_regs, ptr %1, i32 0, i32 2
  store i32 0, ptr %10, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_get_ringparam(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #3 {
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 85
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %1, i8 0, i32 36, i1 false)
  %12 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  %13 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 4
  %14 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  %15 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 1
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_get_ringparam, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %10
  %19 = tail call ptr @llvm.thread.pointer() #8
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 5
  %23 = getelementptr i32, ptr @__cpu_online_mask, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %21, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %30 = tail call i32 @__traceiter_drv_get_ringparam(ptr noundef null, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %31

31:                                               ; preds = %29, %18, %10
  %32 = getelementptr inbounds %struct.wiphy, ptr %7, i32 1, i32 56, i32 11, i32 16
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ieee80211_ops, ptr %33, i32 0, i32 57
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  tail call void %35(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15) #8
  br label %38

38:                                               ; preds = %37, %31
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = tail call ptr @llvm.thread.pointer() #8
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  %53 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %11) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  br label %54

54:                                               ; preds = %52, %41, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_ringparam(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #3 {
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 85
  %12 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ethtool_ringparam, ptr %1, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_set_ringparam, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = tail call ptr @llvm.thread.pointer() #8
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 5
  %31 = getelementptr i32, ptr @__cpu_online_mask, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %29, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %38 = tail call i32 @__traceiter_drv_set_ringparam(ptr noundef null, ptr noundef %11, i32 noundef %21, i32 noundef %23) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %39

39:                                               ; preds = %37, %26, %19
  %40 = getelementptr inbounds %struct.wiphy, ptr %7, i32 1, i32 56, i32 11, i32 16
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ieee80211_ops, ptr %41, i32 0, i32 56
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = tail call i32 %43(ptr noundef %11, i32 noundef %21, i32 noundef %23) #8
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi i32 [ %46, %45 ], [ -524, %39 ]
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = tail call ptr @llvm.thread.pointer() #8
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 5
  %56 = getelementptr i32, ptr @__cpu_online_mask, i32 %55
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %54, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %63 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %11, i32 noundef %48) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %64

64:                                               ; preds = %62, %51, %47, %15, %10
  %65 = phi i32 [ -22, %15 ], [ -22, %10 ], [ %48, %47 ], [ %48, %51 ], [ %48, %62 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_get_strings(ptr noundef %0, i32 noundef %1, ptr noundef %2) #3 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(672) %2, ptr noundef nonnull align 1 dereferenceable(672) @ieee80211_gstrings_sta_stats, i32 672, i1 false)
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i32 [ 672, %5 ], [ 0, %3 ]
  %8 = getelementptr i8, ptr %2, i32 %7
  %9 = getelementptr i8, ptr %0, i32 1764
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ieee80211_ops, ptr %12, i32 0, i32 65
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %53, label %16

16:                                               ; preds = %6
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_get_et_strings, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = tail call ptr @llvm.thread.pointer() #8
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %31 = tail call i32 @__traceiter_drv_get_et_strings(ptr noundef null, ptr noundef %10, i32 noundef %1) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  %32 = load ptr, ptr %11, align 4
  %33 = getelementptr inbounds %struct.ieee80211_ops, ptr %32, i32 0, i32 65
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %30, %19, %16
  %36 = phi ptr [ %14, %16 ], [ %14, %19 ], [ %34, %30 ]
  %37 = getelementptr i8, ptr %0, i32 3672
  tail call void %36(ptr noundef %10, ptr noundef %37, i32 noundef %1, ptr noundef %8) #8
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = tail call ptr @llvm.thread.pointer() #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  %52 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  br label %53

53:                                               ; preds = %51, %40, %35, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_get_stats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.station_info, align 8
  %5 = alloca %struct.survey_info, align 8
  %6 = getelementptr i8, ptr %0, i32 1764
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(208) %4, i8 0, i32 208, i1 false), !annotation !20
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %5, i8 0, i32 72, i1 false), !annotation !20
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(168) %2, i8 0, i32 168, i1 false)
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %8) #8
  %9 = getelementptr i8, ptr %0, i32 3672
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %116

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %0, i32 1408
  %14 = getelementptr i8, ptr %0, i32 2988
  %15 = tail call ptr @sta_info_get_bss(ptr noundef %13, ptr noundef %14) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %189, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sta_info, ptr %15, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %24, label %23, !prof !21

23:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 9, ptr noundef null) #8
  br label %189

24:                                               ; preds = %17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(208) %4, i8 0, i32 208, i1 false)
  call void @sta_set_sinfo(ptr noundef nonnull %15, ptr noundef nonnull %4, i1 noundef zeroext false) #8
  %25 = getelementptr inbounds %struct.sta_info, ptr %15, i32 0, i32 31
  %26 = load i32, ptr %25, align 8
  %27 = zext i32 %26 to i64
  %28 = load i64, ptr %2, align 8
  %29 = add i64 %28, %27
  store i64 %29, ptr %2, align 8
  %30 = getelementptr inbounds %struct.sta_info, ptr %15, i32 0, i32 31, i32 10
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr i64, ptr %2, i32 1
  %33 = load i64, ptr %32, align 8
  %34 = add i64 %33, %31
  store i64 %34, ptr %32, align 8
  %35 = getelementptr inbounds %struct.sta_info, ptr %15, i32 0, i32 31, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = zext i32 %36 to i64
  %38 = getelementptr i64, ptr %2, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = add i64 %39, %37
  store i64 %40, ptr %38, align 8
  %41 = getelementptr inbounds %struct.sta_info, ptr %15, i32 0, i32 31, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr i64, ptr %2, i32 3
  %45 = load i64, ptr %44, align 8
  %46 = add i64 %45, %43
  store i64 %46, ptr %44, align 8
  %47 = getelementptr inbounds %struct.sta_info, ptr %15, i32 0, i32 31, i32 4
  %48 = load i32, ptr %47, align 8
  %49 = zext i32 %48 to i64
  %50 = getelementptr i64, ptr %2, i32 4
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %51, %49
  store i64 %52, ptr %50, align 8
  %53 = getelementptr inbounds %struct.station_info, ptr %4, i32 0, i32 17
  %54 = load i32, ptr %53, align 8
  %55 = zext i32 %54 to i64
  %56 = getelementptr i64, ptr %2, i32 5
  %57 = load i64, ptr %56, align 8
  %58 = add i64 %57, %55
  store i64 %58, ptr %56, align 8
  %59 = getelementptr inbounds %struct.station_info, ptr %4, i32 0, i32 5
  %60 = load i64, ptr %59, align 8
  %61 = getelementptr i64, ptr %2, i32 6
  %62 = load i64, ptr %61, align 8
  %63 = add i64 %62, %60
  store i64 %63, ptr %61, align 8
  %64 = getelementptr inbounds %struct.sta_info, ptr %15, i32 0, i32 34
  %65 = load i32, ptr %64, align 8
  %66 = zext i32 %65 to i64
  %67 = getelementptr i64, ptr %2, i32 7
  %68 = load i64, ptr %67, align 8
  %69 = add i64 %68, %66
  store i64 %69, ptr %67, align 8
  %70 = getelementptr inbounds %struct.sta_info, ptr %15, i32 0, i32 34, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr i64, ptr %2, i32 8
  %74 = load i64, ptr %73, align 8
  %75 = add i64 %74, %72
  store i64 %75, ptr %73, align 8
  %76 = getelementptr inbounds %struct.sta_info, ptr %15, i32 0, i32 34, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = zext i32 %77 to i64
  %79 = getelementptr i64, ptr %2, i32 9
  %80 = load i64, ptr %79, align 8
  %81 = add i64 %80, %78
  store i64 %81, ptr %79, align 8
  %82 = getelementptr inbounds %struct.sta_info, ptr %15, i32 0, i32 22
  %83 = load i32, ptr %82, align 8
  %84 = zext i32 %83 to i64
  %85 = getelementptr i64, ptr %2, i32 10
  store i64 %84, ptr %85, align 8
  %86 = load i64, ptr %4, align 8
  %87 = and i64 %86, 256
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %24
  %90 = getelementptr inbounds %struct.station_info, ptr %4, i32 0, i32 14
  %91 = call i32 @cfg80211_calculate_bitrate(ptr noundef %90) #8
  %92 = zext i32 %91 to i64
  %93 = mul nuw nsw i64 %92, 100000
  %94 = getelementptr i64, ptr %2, i32 11
  store i64 %93, ptr %94, align 8
  %95 = load i64, ptr %4, align 8
  br label %96

96:                                               ; preds = %89, %24
  %97 = phi i64 [ %95, %89 ], [ %86, %24 ]
  %98 = and i64 %97, 16384
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.station_info, ptr %4, i32 0, i32 15
  %102 = call i32 @cfg80211_calculate_bitrate(ptr noundef %101) #8
  %103 = zext i32 %102 to i64
  %104 = mul nuw nsw i64 %103, 100000
  %105 = getelementptr i64, ptr %2, i32 12
  store i64 %104, ptr %105, align 8
  %106 = load i64, ptr %4, align 8
  br label %107

107:                                              ; preds = %100, %96
  %108 = phi i64 [ %106, %100 ], [ %97, %96 ]
  %109 = and i64 %108, 8192
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %189, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.station_info, ptr %4, i32 0, i32 10
  %113 = load i8, ptr %112, align 2
  %114 = zext i8 %113 to i64
  %115 = getelementptr i64, ptr %2, i32 13
  store i64 %114, ptr %115, align 8
  br label %189

116:                                              ; preds = %3
  %117 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 49
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, %117
  br i1 %119, label %189, label %120

120:                                              ; preds = %116
  %121 = getelementptr i64, ptr %2, i32 1
  %122 = getelementptr i64, ptr %2, i32 2
  %123 = getelementptr i64, ptr %2, i32 3
  %124 = getelementptr i64, ptr %2, i32 4
  %125 = getelementptr inbounds %struct.station_info, ptr %4, i32 0, i32 17
  %126 = getelementptr i64, ptr %2, i32 5
  %127 = getelementptr inbounds %struct.station_info, ptr %4, i32 0, i32 5
  %128 = getelementptr i64, ptr %2, i32 6
  %129 = getelementptr i64, ptr %2, i32 7
  %130 = getelementptr i64, ptr %2, i32 8
  %131 = getelementptr i64, ptr %2, i32 9
  br label %132

132:                                              ; preds = %186, %120
  %133 = phi ptr [ %118, %120 ], [ %187, %186 ]
  %134 = getelementptr inbounds %struct.sta_info, ptr %133, i32 0, i32 6
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %135, i32 0, i32 6
  %137 = load ptr, ptr %136, align 8
  %138 = icmp eq ptr %137, %0
  br i1 %138, label %139, label %186

139:                                              ; preds = %132
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(208) %4, i8 0, i32 208, i1 false)
  call void @sta_set_sinfo(ptr noundef %133, ptr noundef nonnull %4, i1 noundef zeroext false) #8
  %140 = getelementptr inbounds %struct.sta_info, ptr %133, i32 0, i32 31
  %141 = load i32, ptr %140, align 8
  %142 = zext i32 %141 to i64
  %143 = load i64, ptr %2, align 8
  %144 = add i64 %143, %142
  store i64 %144, ptr %2, align 8
  %145 = getelementptr inbounds %struct.sta_info, ptr %133, i32 0, i32 31, i32 10
  %146 = load i64, ptr %145, align 8
  %147 = load i64, ptr %121, align 8
  %148 = add i64 %147, %146
  store i64 %148, ptr %121, align 8
  %149 = getelementptr inbounds %struct.sta_info, ptr %133, i32 0, i32 31, i32 2
  %150 = load i32, ptr %149, align 8
  %151 = zext i32 %150 to i64
  %152 = load i64, ptr %122, align 8
  %153 = add i64 %152, %151
  store i64 %153, ptr %122, align 8
  %154 = getelementptr inbounds %struct.sta_info, ptr %133, i32 0, i32 31, i32 3
  %155 = load i32, ptr %154, align 4
  %156 = zext i32 %155 to i64
  %157 = load i64, ptr %123, align 8
  %158 = add i64 %157, %156
  store i64 %158, ptr %123, align 8
  %159 = getelementptr inbounds %struct.sta_info, ptr %133, i32 0, i32 31, i32 4
  %160 = load i32, ptr %159, align 8
  %161 = zext i32 %160 to i64
  %162 = load i64, ptr %124, align 8
  %163 = add i64 %162, %161
  store i64 %163, ptr %124, align 8
  %164 = load i32, ptr %125, align 8
  %165 = zext i32 %164 to i64
  %166 = load i64, ptr %126, align 8
  %167 = add i64 %166, %165
  store i64 %167, ptr %126, align 8
  %168 = load i64, ptr %127, align 8
  %169 = load i64, ptr %128, align 8
  %170 = add i64 %169, %168
  store i64 %170, ptr %128, align 8
  %171 = getelementptr inbounds %struct.sta_info, ptr %133, i32 0, i32 34
  %172 = load i32, ptr %171, align 8
  %173 = zext i32 %172 to i64
  %174 = load i64, ptr %129, align 8
  %175 = add i64 %174, %173
  store i64 %175, ptr %129, align 8
  %176 = getelementptr inbounds %struct.sta_info, ptr %133, i32 0, i32 34, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = zext i32 %177 to i64
  %179 = load i64, ptr %130, align 8
  %180 = add i64 %179, %178
  store i64 %180, ptr %130, align 8
  %181 = getelementptr inbounds %struct.sta_info, ptr %133, i32 0, i32 34, i32 2
  %182 = load i32, ptr %181, align 8
  %183 = zext i32 %182 to i64
  %184 = load i64, ptr %131, align 8
  %185 = add i64 %184, %183
  store i64 %185, ptr %131, align 8
  br label %186

186:                                              ; preds = %139, %132
  %187 = load ptr, ptr %133, align 4
  %188 = icmp eq ptr %187, %117
  br i1 %188, label %189, label %132

189:                                              ; preds = %186, %116, %111, %107, %23, %12
  %190 = getelementptr inbounds %struct.survey_info, ptr %5, i32 0, i32 8
  store i32 0, ptr %190, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !22
  %191 = getelementptr i8, ptr %0, i32 4492
  %192 = load volatile ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !23
  br label %248

195:                                              ; preds = %189
  %196 = load ptr, ptr %192, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !23
  %197 = icmp eq ptr %196, null
  br i1 %197, label %248, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 8
  br label %200

200:                                              ; preds = %244, %198
  %201 = phi i32 [ %245, %244 ], [ 0, %198 ]
  store i32 0, ptr %190, align 8
  %202 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_get_survey, i32 0, i32 1), align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %217

204:                                              ; preds = %200
  %205 = tail call ptr @llvm.thread.pointer() #8
  %206 = getelementptr inbounds %struct.thread_info, ptr %205, i32 0, i32 2
  %207 = load i32, ptr %206, align 8
  %208 = lshr i32 %207, 5
  %209 = getelementptr i32, ptr @__cpu_online_mask, i32 %208
  %210 = load volatile i32, ptr %209, align 4
  %211 = and i32 %207, 31
  %212 = shl nuw i32 1, %211
  %213 = and i32 %212, %210
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %204
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  %216 = call i32 @__traceiter_drv_get_survey(ptr noundef null, ptr noundef %7, i32 noundef %201, ptr noundef nonnull %5) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  br label %217

217:                                              ; preds = %215, %204, %200
  %218 = load ptr, ptr %199, align 4
  %219 = getelementptr inbounds %struct.ieee80211_ops, ptr %218, i32 0, i32 47
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %224, label %222

222:                                              ; preds = %217
  %223 = call i32 %220(ptr noundef %7, i32 noundef %201, ptr noundef nonnull %5) #8
  br label %224

224:                                              ; preds = %222, %217
  %225 = phi i32 [ %223, %222 ], [ -95, %217 ]
  %226 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %241

228:                                              ; preds = %224
  %229 = tail call ptr @llvm.thread.pointer() #8
  %230 = getelementptr inbounds %struct.thread_info, ptr %229, i32 0, i32 2
  %231 = load i32, ptr %230, align 8
  %232 = lshr i32 %231, 5
  %233 = getelementptr i32, ptr @__cpu_online_mask, i32 %232
  %234 = load volatile i32, ptr %233, align 4
  %235 = and i32 %231, 31
  %236 = shl nuw i32 1, %235
  %237 = and i32 %236, %234
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %228
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %240 = call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %7, i32 noundef %225) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %241

241:                                              ; preds = %239, %228, %224
  %242 = icmp eq i32 %225, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %241
  store i32 0, ptr %190, align 8
  br label %251

244:                                              ; preds = %241
  %245 = add i32 %201, 1
  %246 = load ptr, ptr %5, align 8
  %247 = icmp eq ptr %196, %246
  br i1 %247, label %248, label %200

248:                                              ; preds = %244, %195, %194
  %249 = load i32, ptr %190, align 8
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %248, %243
  %252 = getelementptr i64, ptr %2, i32 14
  store i64 0, ptr %252, align 8
  br label %265

253:                                              ; preds = %248
  %254 = load ptr, ptr %5, align 8
  %255 = getelementptr inbounds %struct.ieee80211_channel, ptr %254, i32 0, i32 1
  %256 = load i32, ptr %255, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr i64, ptr %2, i32 14
  store i64 %257, ptr %258, align 8
  %259 = and i32 %249, 1
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %265, label %261

261:                                              ; preds = %253
  %262 = getelementptr inbounds %struct.survey_info, ptr %5, i32 0, i32 9
  %263 = load i8, ptr %262, align 4
  %264 = zext i8 %263 to i64
  br label %265

265:                                              ; preds = %261, %253, %251
  %266 = phi i64 [ %264, %261 ], [ -1, %251 ], [ -1, %253 ]
  %267 = phi i32 [ %249, %261 ], [ 0, %251 ], [ %249, %253 ]
  %268 = getelementptr i64, ptr %2, i32 15
  store i64 %266, ptr %268, align 8
  %269 = and i32 %267, 4
  %270 = icmp eq i32 %269, 0
  %271 = getelementptr inbounds %struct.survey_info, ptr %5, i32 0, i32 1
  %272 = load i64, ptr %271, align 8
  %273 = select i1 %270, i64 -1, i64 %272
  %274 = getelementptr i64, ptr %2, i32 16
  store i64 %273, ptr %274, align 8
  %275 = and i32 %267, 8
  %276 = icmp eq i32 %275, 0
  %277 = getelementptr inbounds %struct.survey_info, ptr %5, i32 0, i32 2
  %278 = load i64, ptr %277, align 8
  %279 = select i1 %276, i64 -1, i64 %278
  %280 = getelementptr i64, ptr %2, i32 17
  store i64 %279, ptr %280, align 8
  %281 = and i32 %267, 16
  %282 = icmp eq i32 %281, 0
  %283 = getelementptr inbounds %struct.survey_info, ptr %5, i32 0, i32 3
  %284 = load i64, ptr %283, align 8
  %285 = select i1 %282, i64 -1, i64 %284
  %286 = getelementptr i64, ptr %2, i32 18
  store i64 %285, ptr %286, align 8
  %287 = and i32 %267, 32
  %288 = icmp eq i32 %287, 0
  %289 = getelementptr inbounds %struct.survey_info, ptr %5, i32 0, i32 4
  %290 = load i64, ptr %289, align 8
  %291 = select i1 %288, i64 -1, i64 %290
  %292 = getelementptr i64, ptr %2, i32 19
  store i64 %291, ptr %292, align 8
  %293 = and i32 %267, 64
  %294 = icmp eq i32 %293, 0
  %295 = getelementptr inbounds %struct.survey_info, ptr %5, i32 0, i32 5
  %296 = load i64, ptr %295, align 8
  %297 = select i1 %294, i64 -1, i64 %296
  %298 = getelementptr i64, ptr %2, i32 20
  store i64 %297, ptr %298, align 8
  call void @mutex_unlock(ptr noundef %8) #8
  %299 = getelementptr i64, ptr %2, i32 21
  %300 = load ptr, ptr %6, align 4
  %301 = getelementptr inbounds %struct.ieee80211_local, ptr %300, i32 0, i32 8
  %302 = load ptr, ptr %301, align 4
  %303 = getelementptr inbounds %struct.ieee80211_ops, ptr %302, i32 0, i32 64
  %304 = load ptr, ptr %303, align 4
  %305 = icmp eq ptr %304, null
  br i1 %305, label %342, label %306

306:                                              ; preds = %265
  %307 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_get_et_stats, i32 0, i32 1), align 4
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %309, label %325

309:                                              ; preds = %306
  %310 = tail call ptr @llvm.thread.pointer() #8
  %311 = getelementptr inbounds %struct.thread_info, ptr %310, i32 0, i32 2
  %312 = load i32, ptr %311, align 8
  %313 = lshr i32 %312, 5
  %314 = getelementptr i32, ptr @__cpu_online_mask, i32 %313
  %315 = load volatile i32, ptr %314, align 4
  %316 = and i32 %312, 31
  %317 = shl nuw i32 1, %316
  %318 = and i32 %317, %315
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %325, label %320

320:                                              ; preds = %309
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  %321 = call i32 @__traceiter_drv_get_et_stats(ptr noundef null, ptr noundef %300) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !27
  %322 = load ptr, ptr %301, align 4
  %323 = getelementptr inbounds %struct.ieee80211_ops, ptr %322, i32 0, i32 64
  %324 = load ptr, ptr %323, align 4
  br label %325

325:                                              ; preds = %320, %309, %306
  %326 = phi ptr [ %304, %306 ], [ %304, %309 ], [ %324, %320 ]
  call void %326(ptr noundef %300, ptr noundef %9, ptr noundef %1, ptr noundef %299) #8
  %327 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %328 = icmp sgt i32 %327, 0
  br i1 %328, label %329, label %342

329:                                              ; preds = %325
  %330 = tail call ptr @llvm.thread.pointer() #8
  %331 = getelementptr inbounds %struct.thread_info, ptr %330, i32 0, i32 2
  %332 = load i32, ptr %331, align 8
  %333 = lshr i32 %332, 5
  %334 = getelementptr i32, ptr @__cpu_online_mask, i32 %333
  %335 = load volatile i32, ptr %334, align 4
  %336 = and i32 %332, 31
  %337 = shl nuw i32 1, %336
  %338 = and i32 %337, %335
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %342, label %340

340:                                              ; preds = %329
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  %341 = call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %300) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  br label %342

342:                                              ; preds = %340, %329, %325, %265
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_get_sset_count(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 1764
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_ops, ptr %6, i32 0, i32 63
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %48, label %10

10:                                               ; preds = %2
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_get_et_sset_count, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = tail call ptr @llvm.thread.pointer() #8
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %25 = tail call i32 @__traceiter_drv_get_et_sset_count(ptr noundef null, ptr noundef %4, i32 noundef %1) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.ieee80211_ops, ptr %26, i32 0, i32 63
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %24, %13, %10
  %30 = phi ptr [ %8, %10 ], [ %8, %13 ], [ %28, %24 ]
  %31 = getelementptr i8, ptr %0, i32 3672
  %32 = tail call i32 %30(ptr noundef %4, ptr noundef %31, i32 noundef %1) #8
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = tail call ptr @llvm.thread.pointer() #8
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %47 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %4, i32 noundef %32) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %48

48:                                               ; preds = %46, %35, %29, %2
  %49 = phi i32 [ 0, %2 ], [ %32, %29 ], [ %32, %35 ], [ %32, %46 ]
  %50 = icmp eq i32 %1, 1
  %51 = select i1 %50, i32 21, i32 0
  %52 = add i32 %49, %51
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 -95, i32 %52
  ret i32 %54
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_get_ringparam(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_set_ringparam(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_get_et_strings(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get_bss(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sta_set_sinfo(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_calculate_bitrate(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_get_survey(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_get_et_stats(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_get_et_sset_count(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
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
!9 = !{i64 2155631526, i64 2155632014, i64 2155631563, i64 2155631619, i64 2155631653, i64 2155631677, i64 2155631718, i64 2155631739, i64 2155631767, i64 2155631801}
!10 = !{i64 2158242494}
!11 = !{i64 2158242698}
!12 = !{i64 2157371981}
!13 = !{i64 2157372133}
!14 = !{i64 2158224637}
!15 = !{i64 2158224809}
!16 = !{i64 2157384851}
!17 = !{i64 2157385011}
!18 = !{i64 2157452754}
!19 = !{i64 2157452924}
!20 = !{!"auto-init"}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2149434759}
!23 = !{i64 2149434976}
!24 = !{i64 2158123560}
!25 = !{i64 2158123738}
!26 = !{i64 2157479126}
!27 = !{i64 2157479280}
!28 = !{i64 2157466063}
!29 = !{i64 2157466239}
