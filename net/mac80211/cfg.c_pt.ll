; ModuleID = '/llk/IR/net/mac80211/cfg.c_pt.bc'
source_filename = "../net/mac80211/cfg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_csa_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_csa_finish\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_csa_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_channel_switch_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_channel_switch_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_channel_switch_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_nan_func_terminated:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_nan_func_terminated\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_nan_func_terminated:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_nan_func_match:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_nan_func_match\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_nan_func_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_color_change_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_color_change_finish\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_color_change_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieeee80211_obss_color_collision_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22ieeee80211_obss_color_collision_notify\22\09\09\09\09\09"
module asm "__kstrtabns_ieeee80211_obss_color_collision_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.182, [17 x i16], %struct.anon.183, %struct.anon.184, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
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
%struct.anon.182 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.183 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.184 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
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
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.148, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.148 = type { %struct.ieee80211_if_mesh }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.118, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.118 = type { i32, i16 }
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
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
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
%struct.ieee80211_csa_settings = type { ptr, ptr, i32, i32, i8 }
%struct.ieee80211_channel_switch = type { i64, i32, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_csa_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, ptr, ptr, i32, i32, %struct.cfg80211_beacon_data, i8, i8, i8 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.cfg80211_nan_func = type { i32, [6 x i8], i8, i8, i8, i8, i8, i8, %struct.mac_address, i32, ptr, i8, i8, ptr, i8, i8, ptr, i32, ptr, ptr, i8, i8, i8, i64 }
%struct.mac_address = type { [6 x i8] }
%struct.cfg80211_nan_match_params = type { i32, i8, i8, ptr, i8, ptr, i64 }
%struct.fq_tin = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.fq_flow, i32, i32, i32, i32, i32, i32, i32 }
%struct.fq_flow = type { ptr, %struct.list_head, %struct.sk_buff_head, i32, i32 }
%struct.cfg80211_txq_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.txq_info = type { %struct.fq_tin, %struct.codel_vars, %struct.codel_stats, %struct.rb_node, %struct.sk_buff_head, i32, %struct.ieee80211_txq }
%struct.codel_vars = type { i32, i32, i8, i16, i32, i32, i32 }
%struct.codel_stats = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }
%struct.vif_params = type { i32, i32, [6 x i8], ptr, ptr }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.ieee80211_key = type { ptr, ptr, ptr, %struct.list_head, i32, %union.anon.140, i32, %struct.ieee80211_key_conf }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { %struct.spinlock, %struct.tkip_ctx, [16 x %struct.tkip_ctx_rx], i32 }
%struct.tkip_ctx = type { [5 x i16], i32, i32 }
%struct.tkip_ctx_rx = type { %struct.tkip_ctx, i32, i16 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_key_seq = type { %union.anon.124 }
%union.anon.124 = type { %struct.anon.125, [12 x i8] }
%struct.anon.125 = type { i32, i16 }
%struct.anon.130 = type { [16 x i8], i8 }
%struct.cfg80211_ap_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, i32, i32, ptr, i32, i32, %struct.cfg80211_crypto_settings, i8, i32, i32, i32, i8, i8, ptr, i8, %struct.cfg80211_bitrate_mask, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.cfg80211_fils_discovery, %struct.cfg80211_unsol_bcast_probe_resp, %struct.cfg80211_mbssid_config }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.cfg80211_fils_discovery = type { i32, i32, i32, ptr }
%struct.cfg80211_unsol_bcast_probe_resp = type { i32, i32, ptr }
%struct.cfg80211_mbssid_config = type { ptr, i8, i8 }
%struct.beacon_data = type { ptr, ptr, i32, i32, ptr, [2 x i16], i8, %struct.callback_head }
%struct.station_parameters = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, ptr, ptr, i8, i8, i32, i16, ptr, i8, ptr, i8, ptr, i8, i8, i8, i32, ptr, i8, i16, %struct.sta_txpwr, ptr }
%struct.sta_txpwr = type { i16, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.44, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.81, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.44 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ref_tracker_dir = type {}
%union.anon.81 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.bss_parameters = type { i32, i32, i32, ptr, i8, i32, i32, i8, i8 }
%struct.ieee80211_txq_params = type { i32, i16, i16, i16, i8 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.mgmt_frame_regs = type { i32, i32, i32, i32 }
%struct.ieee80211_qos_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, i16 }
%struct.mac80211_qos_map = type { %struct.cfg80211_qos_map, %struct.callback_head }
%struct.cfg80211_qos_map = type { i8, [21 x %struct.cfg80211_dscp_exception], [8 x %struct.cfg80211_dscp_range] }
%struct.cfg80211_dscp_exception = type { i8, i8 }
%struct.cfg80211_dscp_range = type { i8, i8 }
%struct.cfg80211_nan_conf = type { i8, i8 }
%struct.ieee80211_color_change_settings = type { i16, i16, i8 }
%struct.cfg80211_color_change_settings = type { %struct.cfg80211_beacon_data, i16, i16, %struct.cfg80211_beacon_data, i8, i8 }
%struct.probe_resp = type { %struct.callback_head, i32, [2 x i16], [0 x i8] }
%struct.ieee80211_ftm_responder_params = type { ptr, ptr, i32, i32 }
%struct.fils_discovery_data = type { %struct.callback_head, i32, [0 x i8] }
%struct.unsol_bcast_probe_resp_data = type { %struct.callback_head, i32, [0 x i8] }

@sta_set_rate_info_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [19 x i8] c"net/mac80211/cfg.c\00", align 1
@__ieee80211_request_smps_mgd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ieee80211_csa_finish = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_csa_finish = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_csa_finish = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_csa_finish to i32), ptr @__kstrtab_ieee80211_csa_finish, ptr @__kstrtabns_ieee80211_csa_finish }, section "___ksymtab+ieee80211_csa_finish", align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"\016%s: channel switch failed, disconnecting\0A\00", align 1
@__kstrtab_ieee80211_channel_switch_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_channel_switch_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_channel_switch_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_channel_switch_disconnect to i32), ptr @__kstrtab_ieee80211_channel_switch_disconnect, ptr @__kstrtabns_ieee80211_channel_switch_disconnect }, section "___ksymtab+ieee80211_channel_switch_disconnect", align 4
@__kstrtab_ieee80211_nan_func_terminated = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_nan_func_terminated = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_nan_func_terminated = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_nan_func_terminated to i32), ptr @__kstrtab_ieee80211_nan_func_terminated, ptr @__kstrtabns_ieee80211_nan_func_terminated }, section "___ksymtab+ieee80211_nan_func_terminated", align 4
@__kstrtab_ieee80211_nan_func_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_nan_func_match = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_nan_func_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_nan_func_match to i32), ptr @__kstrtab_ieee80211_nan_func_match, ptr @__kstrtabns_ieee80211_nan_func_match }, section "___ksymtab+ieee80211_nan_func_match", align 4
@__kstrtab_ieee80211_color_change_finish = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_color_change_finish = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_color_change_finish = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_color_change_finish to i32), ptr @__kstrtab_ieee80211_color_change_finish, ptr @__kstrtabns_ieee80211_color_change_finish }, section "___ksymtab_gpl+ieee80211_color_change_finish", align 4
@__kstrtab_ieeee80211_obss_color_collision_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieeee80211_obss_color_collision_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_ieeee80211_obss_color_collision_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieeee80211_obss_color_collision_notify to i32), ptr @__kstrtab_ieeee80211_obss_color_collision_notify, ptr @__kstrtabns_ieeee80211_obss_color_collision_notify }, section "___ksymtab_gpl+ieeee80211_obss_color_collision_notify", align 4
@mac80211_config_ops = dso_local local_unnamed_addr constant %struct.cfg80211_ops { ptr @ieee80211_suspend, ptr @ieee80211_resume, ptr @ieee80211_set_wakeup, ptr @ieee80211_add_iface, ptr @ieee80211_del_iface, ptr @ieee80211_change_iface, ptr @ieee80211_add_key, ptr @ieee80211_get_key, ptr @ieee80211_del_key, ptr @ieee80211_config_default_key, ptr @ieee80211_config_default_mgmt_key, ptr @ieee80211_config_default_beacon_key, ptr @ieee80211_start_ap, ptr @ieee80211_change_beacon, ptr @ieee80211_stop_ap, ptr @ieee80211_add_station, ptr @ieee80211_del_station, ptr @ieee80211_change_station, ptr @ieee80211_get_station, ptr @ieee80211_dump_station, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ieee80211_join_ocb, ptr @ieee80211_leave_ocb, ptr @ieee80211_change_bss, ptr @ieee80211_set_txq_params, ptr null, ptr @ieee80211_set_monitor_channel, ptr @ieee80211_scan, ptr @ieee80211_abort_scan, ptr @ieee80211_auth, ptr @ieee80211_assoc, ptr @ieee80211_deauth, ptr @ieee80211_disassoc, ptr null, ptr null, ptr null, ptr @ieee80211_join_ibss, ptr @ieee80211_leave_ibss, ptr @ieee80211_set_mcast_rate, ptr @ieee80211_set_wiphy_params, ptr @ieee80211_set_tx_power, ptr @ieee80211_get_tx_power, ptr @ieee80211_rfkill_poll, ptr @ieee80211_set_bitrate_mask, ptr @ieee80211_dump_survey, ptr null, ptr null, ptr null, ptr @ieee80211_remain_on_channel, ptr @ieee80211_cancel_remain_on_channel, ptr @ieee80211_mgmt_tx, ptr @ieee80211_mgmt_tx_cancel_wait, ptr @ieee80211_set_power_mgmt, ptr @ieee80211_set_cqm_rssi_config, ptr @ieee80211_set_cqm_rssi_range_config, ptr null, ptr @ieee80211_update_mgmt_frame_registrations, ptr @ieee80211_set_antenna, ptr @ieee80211_get_antenna, ptr @ieee80211_sched_scan_start, ptr @ieee80211_sched_scan_stop, ptr @ieee80211_set_rekey_data, ptr @ieee80211_tdls_mgmt, ptr @ieee80211_tdls_oper, ptr @ieee80211_probe_client, ptr @ieee80211_set_noack_map, ptr @ieee80211_cfg_get_channel, ptr @ieee80211_start_p2p_device, ptr @ieee80211_stop_p2p_device, ptr null, ptr @ieee80211_start_radar_detection, ptr @ieee80211_end_cac, ptr null, ptr null, ptr null, ptr null, ptr @ieee80211_channel_switch, ptr @ieee80211_set_qos_map, ptr @ieee80211_set_ap_chanwidth, ptr @ieee80211_add_tx_ts, ptr @ieee80211_del_tx_ts, ptr @ieee80211_tdls_channel_switch, ptr @ieee80211_tdls_cancel_channel_switch, ptr @ieee80211_start_nan, ptr @ieee80211_stop_nan, ptr @ieee80211_add_nan_func, ptr @ieee80211_del_nan_func, ptr @ieee80211_nan_change_conf, ptr @ieee80211_set_multicast_to_unicast, ptr @ieee80211_get_txq_stats, ptr null, ptr null, ptr null, ptr @ieee80211_tx_control_port, ptr @ieee80211_get_ftm_responder_stats, ptr @ieee80211_start_pmsr, ptr @ieee80211_abort_pmsr, ptr null, ptr @ieee80211_probe_mesh_link, ptr @ieee80211_set_tid_config, ptr @ieee80211_reset_tid_config, ptr @ieee80211_set_sar_specs, ptr @ieee80211_color_change, ptr null, ptr @ieee80211_set_radar_background }, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"\016%s: failed to finalize CSA, disconnecting\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@drv_post_channel_switch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@__tracepoint_drv_post_channel_switch = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@drv_pre_channel_switch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_pre_channel_switch = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_channel_switch_beacon = external dso_local global %struct.tracepoint, align 4
@ieee80211_set_after_color_change_beacon.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"net/mac80211/ieee80211_i.h\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"%s: resume with hardware scan still in progress\0A\00", align 1
@__tracepoint_drv_set_wakeup = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@drv_sta_set_4addr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_sta_set_4addr = external dso_local global %struct.tracepoint, align 4
@ieee80211_add_key.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_get_key_seq = external dso_local global %struct.tracepoint, align 4
@drv_start_ap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_start_ap = external dso_local global %struct.tracepoint, align 4
@drv_stop_ap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_stop_ap = external dso_local global %struct.tracepoint, align 4
@ieee802_1d_to_ac = external dso_local local_unnamed_addr constant [8 x i32], align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"failed to set TX queue parameters for AC %d\0A\00", align 1
@__tracepoint_drv_set_frag_threshold = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_set_coverage_class = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_set_rts_threshold = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_get_txpower = external dso_local global %struct.tracepoint, align 4
@drv_set_bitrate_mask.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_set_bitrate_mask = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_get_survey = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_config_iface_filter = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_set_antenna = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_get_antenna = external dso_local global %struct.tracepoint, align 4
@drv_set_rekey_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_set_rekey_data = external dso_local global %struct.tracepoint, align 4
@drv_start_nan.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_start_nan = external dso_local global %struct.tracepoint, align 4
@drv_stop_nan.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_stop_nan = external dso_local global %struct.tracepoint, align 4
@drv_add_nan_func.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_add_nan_func = external dso_local global %struct.tracepoint, align 4
@drv_del_nan_func.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_del_nan_func = external dso_local global %struct.tracepoint, align 4
@drv_nan_change_conf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_nan_change_conf = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_get_ftm_responder_stats = external dso_local global %struct.tracepoint, align 4
@drv_start_pmsr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_start_pmsr = external dso_local global %struct.tracepoint, align 4
@drv_abort_pmsr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_abort_pmsr = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_ieee80211_channel_switch_disconnect, ptr @__ksymtab_ieee80211_color_change_finish, ptr @__ksymtab_ieee80211_csa_finish, ptr @__ksymtab_ieee80211_nan_func_match, ptr @__ksymtab_ieee80211_nan_func_terminated, ptr @__ksymtab_ieeee80211_obss_color_collision_notify], section "llvm.metadata"
@switch.table.ieee80211_add_key = private unnamed_addr constant [13 x i32] [i32 1027073, i32 1027074, i32 1027073, i32 1027076, i32 1027077, i32 1027078, i32 1027073, i32 1027080, i32 1027081, i32 1027082, i32 1027083, i32 1027084, i32 1027085], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sta_set_rate_info_tx(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  store i8 0, ptr %2, align 2
  %4 = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %1, i32 0, i32 1
  %5 = load i16, ptr %4, align 1
  %6 = lshr i16 %5, 5
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  store i8 1, ptr %2, align 2
  %11 = load i8, ptr %1, align 1
  %12 = getelementptr inbounds %struct.rate_info, ptr %2, i32 0, i32 1
  store i8 %11, ptr %12, align 1
  br label %78

13:                                               ; preds = %3
  %14 = and i32 %7, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  store i8 2, ptr %2, align 2
  %17 = load i8, ptr %1, align 1
  %18 = and i8 %17, 15
  %19 = getelementptr inbounds %struct.rate_info, ptr %2, i32 0, i32 1
  store i8 %18, ptr %19, align 1
  %20 = load i8, ptr %1, align 1
  %21 = ashr i8 %20, 4
  %22 = add nsw i8 %21, 1
  %23 = getelementptr inbounds %struct.rate_info, ptr %2, i32 0, i32 3
  store i8 %22, ptr %23, align 2
  br label %78

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %26, i32 0, i32 58, i32 9
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %28, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 7
  %34 = zext i1 %33 to i32
  %35 = icmp eq i32 %32, 6
  %36 = select i1 %35, i32 2, i32 %34
  br label %37

37:                                               ; preds = %30, %24
  %38 = phi i32 [ %36, %30 ], [ 0, %24 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  %39 = load ptr, ptr %25, align 4
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %39, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %39, i32 0, i32 58, i32 9
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  br label %78

46:                                               ; preds = %37
  %47 = load ptr, ptr %43, align 4
  %48 = load i32, ptr %47, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  %49 = getelementptr inbounds %struct.ieee80211_hw, ptr %41, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr %struct.wiphy, ptr %50, i32 0, i32 53, i32 %48
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %78, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %52, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  %58 = load i1, ptr @sta_set_rate_info_tx.__already_done, align 1
  %59 = xor i1 %58, true
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %63, !prof !10

61:                                               ; preds = %54
  store i1 true, ptr @sta_set_rate_info_tx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 763, i32 noundef 9, ptr noundef null) #12
  %62 = load ptr, ptr %55, align 4
  br label %63

63:                                               ; preds = %61, %54
  %64 = phi ptr [ %62, %61 ], [ %56, %54 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %78, label %66

66:                                               ; preds = %63
  %67 = load i8, ptr %1, align 1
  %68 = sext i8 %67 to i32
  %69 = getelementptr %struct.ieee80211_rate, ptr %64, i32 %68, i32 1
  %70 = load i16, ptr %69, align 4
  %71 = zext i16 %70 to i32
  %72 = shl nsw i32 -1, %38
  %73 = xor i32 %72, -1
  %74 = add i32 %73, %71
  %75 = lshr i32 %74, %38
  %76 = trunc i32 %75 to i16
  %77 = getelementptr inbounds %struct.rate_info, ptr %2, i32 0, i32 2
  store i16 %76, ptr %77, align 2
  br label %78

78:                                               ; preds = %66, %63, %46, %45, %16, %10
  %79 = load i16, ptr %4, align 1
  %80 = lshr i16 %79, 5
  %81 = zext i16 %80 to i32
  %82 = and i32 %81, 32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.rate_info, ptr %2, i32 0, i32 4
  store i8 3, ptr %85, align 1
  br label %97

86:                                               ; preds = %78
  %87 = and i32 %81, 512
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.rate_info, ptr %2, i32 0, i32 4
  store i8 4, ptr %90, align 1
  br label %97

91:                                               ; preds = %86
  %92 = and i32 %81, 1024
  %93 = icmp eq i32 %92, 0
  %94 = getelementptr inbounds %struct.rate_info, ptr %2, i32 0, i32 4
  br i1 %93, label %96, label %95

95:                                               ; preds = %91
  store i8 5, ptr %94, align 1
  br label %97

96:                                               ; preds = %91
  store i8 0, ptr %94, align 1
  br label %97

97:                                               ; preds = %96, %95, %89, %84
  %98 = load i16, ptr %4, align 1
  %99 = and i16 %98, 4096
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = load i8, ptr %2, align 2
  %103 = or i8 %102, 4
  store i8 %103, ptr %2, align 2
  br label %104

104:                                              ; preds = %101, %97
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ieee80211_request_smps_mgd(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %4 = load i32, ptr %3, align 8
  %5 = icmp ne i32 %4, 2
  %6 = load i1, ptr @__ieee80211_request_smps_mgd.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !10

9:                                                ; preds = %2
  store i1 true, ptr @__ieee80211_request_smps_mgd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2863, i32 noundef 9, ptr noundef null) #12
  br label %10

10:                                               ; preds = %9, %2
  br i1 %5, label %73, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 4
  %14 = load i32, ptr %13, align 8
  store i32 %1, ptr %13, align 8
  %15 = icmp eq i32 %14, %1
  %16 = icmp ne i32 %1, 0
  %17 = and i1 %16, %15
  br i1 %17, label %73, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %73, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %73, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.cfg80211_bss, ptr %20, i32 0, i32 11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ieee80211_local, ptr %29, i32 0, i32 49
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %54, label %33

33:                                               ; preds = %51, %26
  %34 = phi ptr [ %52, %51 ], [ %31, %26 ]
  %35 = getelementptr inbounds %struct.sta_info, ptr %34, i32 0, i32 46, i32 17
  %36 = load i8, ptr %35, align 4, !range !11
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.sta_info, ptr %34, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.sta_info, ptr %34, i32 0, i32 21
  %44 = load i8, ptr %43, align 4, !range !11
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.sta_info, ptr %34, i32 0, i32 23
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %42, %38, %33
  %52 = load volatile ptr, ptr %34, align 4
  %53 = icmp eq ptr %52, %30
  br i1 %53, label %54, label %33

54:                                               ; preds = %51, %46, %26
  %55 = phi i1 [ true, %26 ], [ false, %46 ], [ true, %51 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  %56 = xor i1 %55, true
  %57 = or i1 %16, %56
  %58 = select i1 %16, i32 %1, i32 1
  br i1 %57, label %64, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %12, i32 0, i32 17
  %61 = load i8, ptr %60, align 2, !range !11
  %62 = icmp eq i8 %61, 0
  %63 = select i1 %62, i32 1, i32 3
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i32 [ %58, %54 ], [ %63, %59 ]
  %66 = tail call i32 @ieee80211_send_smps_action(ptr noundef %0, i32 noundef %65, ptr noundef %27, ptr noundef %27) #12
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store i32 %14, ptr %13, align 8
  br label %73

69:                                               ; preds = %64
  %70 = icmp eq i32 %65, 1
  %71 = or i1 %70, %55
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void @ieee80211_teardown_tdls_peers(ptr noundef %0) #12
  br label %73

73:                                               ; preds = %72, %69, %68, %22, %18, %11, %10
  %74 = phi i32 [ -22, %10 ], [ 0, %11 ], [ 0, %22 ], [ 0, %18 ], [ 0, %69 ], [ 0, %72 ], [ %66, %68 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_send_smps_action(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_teardown_tdls_peers(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_csa_finish(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1908
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -1328
  tail call void @ieee80211_queue_work(ptr noundef %3, ptr noundef %4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_channel_switch_disconnect(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr i8, ptr %0, i32 -1908
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -1312
  store i8 %3, ptr %6, align 8
  %7 = getelementptr i8, ptr %0, i32 -1896
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %7) #13
  %9 = getelementptr i8, ptr %0, i32 -728
  tail call void @ieee80211_queue_work(ptr noundef %5, ptr noundef %9) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_csa_finalize_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -936
  %3 = getelementptr i8, ptr %0, i32 -580
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -892
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %7) #12
  %8 = getelementptr i8, ptr %0, i32 2135
  %9 = load i8, ptr %8, align 1, !range !11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 -572
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call fastcc void @ieee80211_csa_finalize(ptr noundef %2)
  br label %17

17:                                               ; preds = %16, %11, %1
  tail call void @mutex_unlock(ptr noundef %7) #12
  tail call void @mutex_unlock(ptr noundef %6) #12
  tail call void @mutex_unlock(ptr noundef %5) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_csa_finalize(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 35
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 38
  %9 = load i8, ptr %8, align 1, !range !11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %123, label %133

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 31
  %14 = load ptr, ptr %12, align 4
  %15 = load ptr, ptr %13, align 4
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %126

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 31, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %126

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 31, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %126

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 5
  %31 = load i16, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 31, i32 5
  %33 = load i16, ptr %32, align 4
  %34 = icmp eq i16 %31, %33
  br i1 %34, label %35, label %126

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 31, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %126

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 4
  store i8 0, ptr %42, align 1
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %44 = load i32, ptr %43, align 8
  switch i32 %44, label %54 [
    i32 3, label %45
    i32 1, label %51
  ]

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = tail call fastcc i32 @ieee80211_assign_beacon(ptr noundef %0, ptr noundef %47, ptr noundef null, ptr noundef null) #12
  %49 = load ptr, ptr %46, align 8
  tail call void @kfree(ptr noundef %49) #12
  store ptr null, ptr %46, align 8
  %50 = icmp slt i32 %48, 0
  br i1 %50, label %126, label %55

51:                                               ; preds = %41
  %52 = tail call i32 @ieee80211_ibss_finish_csa(ptr noundef %0) #12
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %126, label %55

54:                                               ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3247, i32 noundef 9, ptr noundef null) #12
  br label %126

55:                                               ; preds = %51, %45
  %56 = phi i32 [ %48, %45 ], [ %52, %51 ]
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef %56) #12
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 30
  %58 = load i8, ptr %57, align 8, !range !11
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  tail call void @ieee80211_wake_vif_queues(ptr noundef %3, ptr noundef %0, i32 noundef 2) #12
  store i8 0, ptr %57, align 8
  br label %61

61:                                               ; preds = %60, %55
  %62 = load ptr, ptr %2, align 4
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 32
  %66 = icmp eq i32 %65, 0
  %67 = load i1, ptr @drv_post_channel_switch.__already_done, align 1
  %68 = xor i1 %67, true
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %76, !prof !10

70:                                               ; preds = %61
  store i1 true, ptr @drv_post_channel_switch.__already_done, align 1
  %71 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, null
  %74 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %75 = select i1 %73, ptr %74, ptr %72
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1069, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %75, i32 noundef %64) #12
  br label %76

76:                                               ; preds = %70, %61
  br i1 %66, label %126, label %77

77:                                               ; preds = %76
  %78 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_post_channel_switch, i32 0, i32 1), align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = tail call ptr @llvm.thread.pointer() #12
  %82 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %83 = load i32, ptr %82, align 8
  %84 = lshr i32 %83, 5
  %85 = getelementptr i32, ptr @__cpu_online_mask, i32 %84
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %83, 31
  %88 = shl nuw i32 1, %87
  %89 = and i32 %88, %86
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %80
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %92 = tail call i32 @__traceiter_drv_post_channel_switch(ptr noundef null, ptr noundef %62, ptr noundef %0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  br label %93

93:                                               ; preds = %91, %80, %77
  %94 = getelementptr inbounds %struct.ieee80211_local, ptr %62, i32 0, i32 8
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.ieee80211_ops, ptr %95, i32 0, i32 79
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %93
  %100 = tail call i32 %97(ptr noundef %62, ptr noundef %43) #12
  br label %101

101:                                              ; preds = %99, %93
  %102 = phi i32 [ %100, %99 ], [ 0, %93 ]
  %103 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = tail call ptr @llvm.thread.pointer() #12
  %107 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %108 = load i32, ptr %107, align 8
  %109 = lshr i32 %108, 5
  %110 = getelementptr i32, ptr @__cpu_online_mask, i32 %109
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %108, 31
  %113 = shl nuw i32 1, %112
  %114 = and i32 %113, %111
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %105
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %117 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %62, i32 noundef %102) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %118

118:                                              ; preds = %116, %105, %101
  %119 = icmp eq i32 %102, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %122 = load ptr, ptr %121, align 8
  tail call void @cfg80211_ch_switch_notify(ptr noundef %122, ptr noundef %13) #12
  br label %133

123:                                              ; preds = %7
  %124 = tail call i32 @ieee80211_vif_use_reserved_context(ptr noundef %0) #12
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %123, %118, %76, %54, %51, %45, %35, %29, %23, %17, %11
  %127 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %127) #13
  %129 = load ptr, ptr %2, align 4
  %130 = getelementptr inbounds %struct.ieee80211_hw, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1
  tail call void @cfg80211_stop_iface(ptr noundef %131, ptr noundef %132, i32 noundef 3264) #12
  br label %133

133:                                              ; preds = %126, %123, %120, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_channel_switch(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.ieee80211_csa_settings, align 4
  %5 = alloca %struct.ieee80211_channel_switch, align 8
  %6 = getelementptr i8, ptr %1, i32 1408
  %7 = getelementptr i8, ptr %1, i32 1764
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %8, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %9) #12
  %10 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i32 56, i1 false) #12, !annotation !16
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %10, i32 0, i32 103
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %14, label %281

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ieee80211_local, ptr %10, i32 0, i32 67
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %281

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %1, i32 1653
  %20 = load i8, ptr %19, align 1, !range !11
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %281

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %1, i32 3780
  %24 = load ptr, ptr %2, align 4
  %25 = load ptr, ptr %23, align 4
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %1, i32 3784
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %1, i32 3788
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 5
  %41 = load i16, ptr %40, align 4
  %42 = getelementptr i8, ptr %1, i32 3804
  %43 = load i16, ptr %42, align 4
  %44 = icmp eq i16 %41, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %1, i32 3792
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %281, label %51

51:                                               ; preds = %45, %39, %33, %27, %22
  %52 = getelementptr i8, ptr %1, i32 4479
  %53 = load i8, ptr %52, align 1, !range !11
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %281

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ieee80211_local, ptr %10, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %56) #12
  %57 = getelementptr i8, ptr %1, i32 4492
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %279, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %2, align 4
  %62 = getelementptr inbounds %struct.ieee80211_channel, ptr %61, i32 0, i32 2
  %63 = load i16, ptr %62, align 4
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %279

65:                                               ; preds = %60
  store i64 0, ptr %5, align 8
  %66 = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %5, i32 0, i32 1
  store i32 0, ptr %66, align 8
  %67 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %2, i32 0, i32 8
  %68 = load i8, ptr %67, align 1, !range !11
  %69 = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %5, i32 0, i32 2
  store i8 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %5, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %70, ptr noundef align 4 dereferenceable(28) %2, i32 28, i1 false) #12
  %71 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %2, i32 0, i32 9
  %72 = load i8, ptr %71, align 2
  %73 = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %5, i32 0, i32 4
  store i8 %72, ptr %73, align 4
  %74 = load ptr, ptr %7, align 4
  %75 = getelementptr i8, ptr %1, i32 1768
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 32
  %78 = icmp eq i32 %77, 0
  %79 = load i1, ptr @drv_pre_channel_switch.__already_done, align 1
  %80 = xor i1 %79, true
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %88, !prof !10

82:                                               ; preds = %65
  store i1 true, ptr @drv_pre_channel_switch.__already_done, align 1
  %83 = getelementptr i8, ptr %1, i32 1760
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  %86 = getelementptr i8, ptr %1, i32 1776
  %87 = select i1 %85, ptr %86, ptr %84
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1052, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %87, i32 noundef %76) #12
  br label %88

88:                                               ; preds = %82, %65
  br i1 %78, label %279, label %89

89:                                               ; preds = %88
  %90 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_pre_channel_switch, i32 0, i32 1), align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = tail call ptr @llvm.thread.pointer() #12
  %94 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %95 = load i32, ptr %94, align 8
  %96 = lshr i32 %95, 5
  %97 = getelementptr i32, ptr @__cpu_online_mask, i32 %96
  %98 = load volatile i32, ptr %97, align 4
  %99 = and i32 %95, 31
  %100 = shl nuw i32 1, %99
  %101 = and i32 %100, %98
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %92
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %104 = call i32 @__traceiter_drv_pre_channel_switch(ptr noundef null, ptr noundef %74, ptr noundef %6, ptr noundef nonnull %5) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  br label %105

105:                                              ; preds = %103, %92, %89
  %106 = getelementptr inbounds %struct.ieee80211_local, ptr %74, i32 0, i32 8
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.ieee80211_ops, ptr %107, i32 0, i32 78
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %105
  %112 = getelementptr i8, ptr %1, i32 3672
  %113 = call i32 %109(ptr noundef %74, ptr noundef %112, ptr noundef nonnull %5) #12
  br label %114

114:                                              ; preds = %111, %105
  %115 = phi i32 [ %113, %111 ], [ 0, %105 ]
  %116 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = tail call ptr @llvm.thread.pointer() #12
  %120 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 2
  %121 = load i32, ptr %120, align 8
  %122 = lshr i32 %121, 5
  %123 = getelementptr i32, ptr @__cpu_online_mask, i32 %122
  %124 = load volatile i32, ptr %123, align 4
  %125 = and i32 %121, 31
  %126 = shl nuw i32 1, %125
  %127 = and i32 %126, %124
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %118
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %130 = call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %74, i32 noundef %115) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %131

131:                                              ; preds = %129, %118, %114
  %132 = icmp eq i32 %115, 0
  br i1 %132, label %133, label %279

133:                                              ; preds = %131
  %134 = getelementptr i8, ptr %58, i32 -8
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %2, i32 0, i32 7
  %137 = load i8, ptr %136, align 4, !range !11
  %138 = icmp ne i8 %137, 0
  %139 = call i32 @ieee80211_vif_reserve_chanctx(ptr noundef %6, ptr noundef %2, i32 noundef %135, i1 noundef zeroext %138) #12
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %279

141:                                              ; preds = %133
  %142 = load i32, ptr %134, align 4
  %143 = call i32 @ieee80211_check_combinations(ptr noundef %6, ptr noundef null, i32 noundef %142, i8 noundef zeroext 0) #12
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  %146 = call i32 @ieee80211_vif_unreserve_chanctx(ptr noundef %6) #12
  br label %279

147:                                              ; preds = %141
  %148 = getelementptr i8, ptr %1, i32 4510
  %149 = load i8, ptr %148, align 2, !range !11
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %147
  store i8 0, ptr %148, align 2
  %152 = getelementptr i8, ptr %1, i32 2832
  %153 = load ptr, ptr %152, align 8
  call void @kfree(ptr noundef %153) #12
  store ptr null, ptr %152, align 8
  %154 = getelementptr i8, ptr %1, i32 1760
  %155 = load ptr, ptr %154, align 8
  %156 = call i32 @cfg80211_bss_color_notify(ptr noundef %155, i32 noundef 3264, i32 noundef 144, i8 noundef zeroext 0, i64 noundef 0) #12
  br label %157

157:                                              ; preds = %151, %147
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #12
  %158 = getelementptr inbounds i8, ptr %4, i32 16
  store i32 0, ptr %158, align 4
  %159 = getelementptr i8, ptr %1, i32 3672
  %160 = load i32, ptr %159, align 8
  switch i32 %160, label %233 [
    i32 3, label %161
    i32 1, label %190
  ]

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %2, i32 0, i32 6
  %163 = call fastcc ptr @cfg80211_beacon_dup(ptr noundef %162) #12
  %164 = getelementptr i8, ptr %1, i32 2832
  store ptr %163, ptr %164, align 8
  %165 = icmp eq ptr %163, null
  br i1 %165, label %233, label %166

166:                                              ; preds = %161
  %167 = load i8, ptr %71, align 2
  %168 = icmp ult i8 %167, 2
  br i1 %168, label %236, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %2, i32 0, i32 4
  %171 = load i32, ptr %170, align 4
  %172 = icmp ugt i32 %171, 2
  br i1 %172, label %233, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %2, i32 0, i32 5
  %175 = load i32, ptr %174, align 4
  %176 = icmp ugt i32 %175, 2
  br i1 %176, label %233, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %2, i32 0, i32 2
  %179 = load ptr, ptr %178, align 4
  store ptr %179, ptr %4, align 4
  %180 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %2, i32 0, i32 3
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.ieee80211_csa_settings, ptr %4, i32 0, i32 1
  store ptr %181, ptr %182, align 4
  %183 = getelementptr inbounds %struct.ieee80211_csa_settings, ptr %4, i32 0, i32 2
  store i32 %171, ptr %183, align 4
  %184 = getelementptr inbounds %struct.ieee80211_csa_settings, ptr %4, i32 0, i32 3
  store i32 %175, ptr %184, align 4
  store i8 %167, ptr %158, align 4
  %185 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %2, i32 0, i32 1
  %186 = call fastcc i32 @ieee80211_assign_beacon(ptr noundef %6, ptr noundef %185, ptr noundef nonnull %4, ptr noundef null) #12
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %236

188:                                              ; preds = %177
  %189 = load ptr, ptr %164, align 8
  call void @kfree(ptr noundef %189) #12
  br label %233

190:                                              ; preds = %157
  %191 = getelementptr i8, ptr %1, i32 3696
  %192 = load i8, ptr %191, align 8, !range !11
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %233, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 1
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr i8, ptr %1, i32 2912
  %198 = getelementptr i8, ptr %1, i32 2916
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %196, %199
  br i1 %200, label %201, label %233

201:                                              ; preds = %194
  switch i32 %196, label %233 [
    i32 2, label %202
    i32 6, label %218
    i32 7, label %218
    i32 0, label %218
    i32 1, label %218
  ]

202:                                              ; preds = %201
  %203 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 2
  %204 = load i32, ptr %203, align 4
  %205 = load ptr, ptr %2, align 4
  %206 = getelementptr inbounds %struct.ieee80211_channel, ptr %205, i32 0, i32 1
  %207 = load i32, ptr %206, align 4
  %208 = icmp ugt i32 %204, %207
  %209 = select i1 %208, i32 3, i32 2
  %210 = getelementptr i8, ptr %1, i32 2920
  %211 = load i32, ptr %210, align 4
  %212 = load ptr, ptr %197, align 4
  %213 = getelementptr inbounds %struct.ieee80211_channel, ptr %212, i32 0, i32 1
  %214 = load i32, ptr %213, align 4
  %215 = icmp ugt i32 %211, %214
  %216 = select i1 %215, i32 3, i32 2
  %217 = icmp eq i32 %209, %216
  br i1 %217, label %218, label %233

218:                                              ; preds = %202, %201, %201, %201, %201
  %219 = load ptr, ptr %197, align 8
  %220 = load i32, ptr %219, align 4
  %221 = load ptr, ptr %2, align 4
  %222 = load i32, ptr %221, align 4
  %223 = icmp eq i32 %220, %222
  br i1 %223, label %224, label %233

224:                                              ; preds = %218
  %225 = load i8, ptr %71, align 2
  %226 = icmp ugt i8 %225, 1
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = call i32 @ieee80211_ibss_csa_beacon(ptr noundef %6, ptr noundef %2) #12
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %227, %224
  %231 = phi i32 [ 0, %224 ], [ %228, %227 ]
  %232 = call i32 @ieee80211_send_action_csa(ptr noundef %6, ptr noundef %2) #12
  br label %236

233:                                              ; preds = %227, %218, %202, %201, %194, %190, %188, %173, %169, %161, %157
  %234 = phi i32 [ -95, %157 ], [ %228, %227 ], [ -22, %218 ], [ -22, %201 ], [ -22, %202 ], [ -22, %194 ], [ -22, %190 ], [ -22, %169 ], [ -22, %173 ], [ -12, %161 ], [ %186, %188 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  %235 = call i32 @ieee80211_vif_unreserve_chanctx(ptr noundef %6) #12
  br label %279

236:                                              ; preds = %230, %177, %166
  %237 = phi i32 [ %231, %230 ], [ 0, %166 ], [ %186, %177 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  %238 = getelementptr i8, ptr %1, i32 2364
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %238, ptr noundef align 4 dereferenceable(28) %2, i32 28, i1 false) #12
  %239 = load i8, ptr %67, align 1, !range !11
  %240 = getelementptr i8, ptr %1, i32 2360
  store i8 %239, ptr %240, align 8
  store i8 1, ptr %52, align 1
  %241 = icmp eq i8 %239, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %236
  call void @ieee80211_stop_vif_queues(ptr noundef %10, ptr noundef %6, i32 noundef 2) #12
  br label %243

243:                                              ; preds = %242, %236
  %244 = getelementptr i8, ptr %1, i32 1760
  %245 = load ptr, ptr %244, align 8
  %246 = load i8, ptr %71, align 2
  %247 = load i8, ptr %67, align 1, !range !11
  %248 = icmp ne i8 %247, 0
  call void @cfg80211_ch_switch_started_notify(ptr noundef %245, ptr noundef %238, i8 noundef zeroext %246, i1 noundef zeroext %248) #12
  %249 = icmp eq i32 %237, 0
  br i1 %249, label %278, label %250

250:                                              ; preds = %243
  call void @ieee80211_bss_info_change_notify(ptr noundef %6, i32 noundef %237) #12
  %251 = load ptr, ptr %7, align 4
  %252 = getelementptr inbounds %struct.ieee80211_local, ptr %251, i32 0, i32 8
  %253 = load ptr, ptr %252, align 4
  %254 = getelementptr inbounds %struct.ieee80211_ops, ptr %253, i32 0, i32 77
  %255 = load ptr, ptr %254, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %279, label %257

257:                                              ; preds = %250
  %258 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_channel_switch_beacon, i32 0, i32 1), align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %276

260:                                              ; preds = %257
  %261 = tail call ptr @llvm.thread.pointer() #12
  %262 = getelementptr inbounds %struct.thread_info, ptr %261, i32 0, i32 2
  %263 = load i32, ptr %262, align 8
  %264 = lshr i32 %263, 5
  %265 = getelementptr i32, ptr @__cpu_online_mask, i32 %264
  %266 = load volatile i32, ptr %265, align 4
  %267 = and i32 %263, 31
  %268 = shl nuw i32 1, %267
  %269 = and i32 %268, %266
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %260
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  %272 = call i32 @__traceiter_drv_channel_switch_beacon(ptr noundef null, ptr noundef %251, ptr noundef %6, ptr noundef %2) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  %273 = load ptr, ptr %252, align 4
  %274 = getelementptr inbounds %struct.ieee80211_ops, ptr %273, i32 0, i32 77
  %275 = load ptr, ptr %274, align 4
  br label %276

276:                                              ; preds = %271, %260, %257
  %277 = phi ptr [ %255, %257 ], [ %255, %260 ], [ %275, %271 ]
  call void %277(ptr noundef %251, ptr noundef %159, ptr noundef %2) #12
  br label %279

278:                                              ; preds = %243
  call fastcc void @ieee80211_csa_finalize(ptr noundef %6) #12
  br label %279

279:                                              ; preds = %278, %276, %250, %233, %145, %133, %131, %88, %60, %55
  %280 = phi i32 [ %115, %131 ], [ %139, %133 ], [ %143, %145 ], [ %234, %233 ], [ 0, %278 ], [ -16, %55 ], [ -95, %60 ], [ 0, %250 ], [ 0, %276 ], [ -5, %88 ]
  call void @mutex_unlock(ptr noundef %56) #12
  br label %281

281:                                              ; preds = %279, %51, %45, %18, %14, %3
  %282 = phi i32 [ %280, %279 ], [ -16, %14 ], [ -16, %3 ], [ -16, %18 ], [ -22, %45 ], [ -16, %51 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #12
  call void @mutex_unlock(ptr noundef %9) #12
  ret i32 %282
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ieee80211_mgmt_tx_cookie(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 107
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, 1
  store i64 %4, ptr %2, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %9, !prof !10

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3611, i32 noundef 9, ptr noundef null) #12
  %7 = load i64, ptr %2, align 8
  %8 = add i64 %7, 1
  store i64 %8, ptr %2, align 8
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i64 [ %4, %1 ], [ %8, %6 ]
  ret i64 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_attach_ack_skb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @skb_copy(ptr noundef %1, i32 noundef %3) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 109
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #12
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 108
  %11 = tail call i32 @idr_alloc(ptr noundef %10, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 8192, i32 noundef 2592) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call void @kfree_skb_reason(ptr noundef nonnull %5, i32 noundef 0) #12
  br label %31

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %11, 3
  %18 = and i32 %17, 65528
  %19 = and i32 %16, -65529
  %20 = or i32 %19, %18
  store i32 %20, ptr %15, align 4
  %21 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 107
  %22 = load i64, ptr %21, align 8
  %23 = add i64 %22, 1
  store i64 %23, ptr %21, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28, !prof !10

25:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3611, i32 noundef 9, ptr noundef null) #12
  %26 = load i64, ptr %21, align 8
  %27 = add i64 %26, 1
  store i64 %27, ptr %21, align 8
  br label %28

28:                                               ; preds = %25, %14
  %29 = phi i64 [ %23, %14 ], [ %27, %25 ]
  store i64 %29, ptr %2, align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 8
  store i64 %29, ptr %30, align 8
  br label %31

31:                                               ; preds = %28, %13, %4
  %32 = phi i32 [ -12, %13 ], [ 0, %28 ], [ -12, %4 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_nan_func_terminated(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load i32, ptr %0, align 8
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %8, label %7, !prof !21

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3963, i32 noundef 9, ptr noundef null) #12
  br label %20

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -852
  tail call void @_raw_spin_lock_bh(ptr noundef %9) #12
  %10 = getelementptr i8, ptr %0, i32 -848
  %11 = zext i8 %1 to i32
  %12 = tail call ptr @idr_find(ptr noundef %10, i32 noundef %11) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !10

14:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3969, i32 noundef 9, ptr noundef null) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #12
  br label %20

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.cfg80211_nan_func, ptr %12, i32 0, i32 23
  %17 = load i64, ptr %16, align 8
  %18 = tail call ptr @idr_remove(ptr noundef %10, i32 noundef %11) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #12
  tail call void @cfg80211_free_nan_func(ptr noundef nonnull %12) #12
  %19 = tail call ptr @ieee80211_vif_to_wdev(ptr noundef %0) #12
  tail call void @cfg80211_nan_func_terminated(ptr noundef %19, i8 noundef zeroext %1, i32 noundef %2, i64 noundef %17, i32 noundef %3) #12
  br label %20

20:                                               ; preds = %15, %14, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_free_nan_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_nan_func_terminated(ptr noundef, i8 noundef zeroext, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_vif_to_wdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_nan_func_match(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load i32, ptr %0, align 8
  %5 = icmp eq i32 %4, 12
  br i1 %5, label %7, label %6, !prof !21

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3993, i32 noundef 9, ptr noundef null) #12
  br label %21

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -852
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #12
  %9 = getelementptr i8, ptr %0, i32 -848
  %10 = getelementptr inbounds %struct.cfg80211_nan_match_params, ptr %1, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = tail call ptr @idr_find(ptr noundef %9, i32 noundef %12) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !10

15:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3999, i32 noundef 9, ptr noundef null) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #12
  br label %21

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.cfg80211_nan_func, ptr %13, i32 0, i32 23
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds %struct.cfg80211_nan_match_params, ptr %1, i32 0, i32 6
  store i64 %18, ptr %19, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #12
  %20 = tail call ptr @ieee80211_vif_to_wdev(ptr noundef %0) #12
  tail call void @cfg80211_nan_match(ptr noundef %20, ptr noundef %1, i32 noundef %2) #12
  br label %21

21:                                               ; preds = %16, %15, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_nan_match(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ieee80211_fill_txq_stats(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load i32, ptr %0, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = or i32 %3, 2
  store i32 %7, ptr %0, align 4
  %8 = getelementptr inbounds %struct.fq_tin, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cfg80211_txq_stats, ptr %0, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %7, %6 ], [ %3, %2 ]
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = or i32 %12, 4
  store i32 %16, ptr %0, align 4
  %17 = getelementptr inbounds %struct.fq_tin, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cfg80211_txq_stats, ptr %0, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i32 [ %16, %15 ], [ %12, %11 ]
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = or i32 %21, 8
  store i32 %25, ptr %0, align 4
  %26 = getelementptr inbounds %struct.fq_tin, ptr %1, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.cfg80211_txq_stats, ptr %0, i32 0, i32 3
  store i32 %27, ptr %28, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i32 [ %25, %24 ], [ %21, %20 ]
  %31 = and i32 %30, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = or i32 %30, 16
  store i32 %34, ptr %0, align 4
  %35 = getelementptr inbounds %struct.txq_info, ptr %1, i32 0, i32 2, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.cfg80211_txq_stats, ptr %0, i32 0, i32 4
  store i32 %36, ptr %37, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i32 [ %34, %33 ], [ %30, %29 ]
  %40 = and i32 %39, 32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = or i32 %39, 32
  store i32 %43, ptr %0, align 4
  %44 = getelementptr inbounds %struct.txq_info, ptr %1, i32 0, i32 2, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.cfg80211_txq_stats, ptr %0, i32 0, i32 5
  store i32 %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i32 [ %43, %42 ], [ %39, %38 ]
  %49 = and i32 %48, 64
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = or i32 %48, 64
  store i32 %52, ptr %0, align 4
  %53 = getelementptr inbounds %struct.fq_tin, ptr %1, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.cfg80211_txq_stats, ptr %0, i32 0, i32 6
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %51, %47
  %57 = phi i32 [ %52, %51 ], [ %48, %47 ]
  %58 = and i32 %57, 256
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = or i32 %57, 256
  store i32 %61, ptr %0, align 4
  %62 = getelementptr inbounds %struct.fq_tin, ptr %1, i32 0, i32 7
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.cfg80211_txq_stats, ptr %0, i32 0, i32 8
  store i32 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i32 [ %61, %60 ], [ %57, %56 ]
  %67 = and i32 %66, 512
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = or i32 %66, 512
  store i32 %70, ptr %0, align 4
  %71 = getelementptr inbounds %struct.fq_tin, ptr %1, i32 0, i32 9
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.cfg80211_txq_stats, ptr %0, i32 0, i32 9
  store i32 %72, ptr %73, align 4
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi i32 [ %70, %69 ], [ %66, %65 ]
  %76 = and i32 %75, 1024
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = or i32 %75, 1024
  store i32 %79, ptr %0, align 4
  %80 = getelementptr inbounds %struct.fq_tin, ptr %1, i32 0, i32 10
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.cfg80211_txq_stats, ptr %0, i32 0, i32 10
  store i32 %81, ptr %82, align 4
  br label %83

83:                                               ; preds = %78, %74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_color_change_finalize_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -984
  %3 = getelementptr i8, ptr %0, i32 -628
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -940
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr i8, ptr %0, i32 2118
  %8 = load i8, ptr %7, align 2, !range !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -620
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call fastcc void @ieee80211_color_change_finalize(ptr noundef %2)
  br label %16

16:                                               ; preds = %15, %10, %1
  tail call void @mutex_unlock(ptr noundef %6) #12
  tail call void @mutex_unlock(ptr noundef %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_color_change_finalize(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 15
  store i8 0, ptr %2, align 2
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call fastcc i32 @ieee80211_assign_beacon(ptr noundef %0, ptr noundef %8, ptr noundef null, ptr noundef null) #12
  %10 = load ptr, ptr %7, align 8
  tail call void @kfree(ptr noundef %10) #12
  store ptr null, ptr %7, align 8
  %11 = icmp sgt i32 %9, -1
  br i1 %11, label %15, label %18

12:                                               ; preds = %1
  %13 = load i1, ptr @ieee80211_set_after_color_change_beacon.__already_done, align 1
  br i1 %13, label %18, label %14, !prof !21

14:                                               ; preds = %12
  store i1 true, ptr @ieee80211_set_after_color_change_beacon.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4231, i32 noundef 9, ptr noundef null) #12
  br label %18

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 16
  %17 = load i8, ptr %16, align 1
  tail call fastcc void @ieee80211_color_change_bss_config_notify(ptr noundef %0, i8 noundef zeroext %17, i32 noundef 1, i32 noundef %9)
  br label %18

18:                                               ; preds = %15, %14, %12, %6
  %19 = phi i32 [ 145, %15 ], [ 144, %12 ], [ 144, %14 ], [ 144, %6 ]
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 @cfg80211_bss_color_notify(ptr noundef %21, i32 noundef 3264, i32 noundef %19, i8 noundef zeroext 0, i64 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_color_change_finish(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1908
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -1280
  tail call void @ieee80211_queue_work(ptr noundef %3, ptr noundef %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieeee80211_obss_color_collision_notify(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 838
  %4 = load i8, ptr %3, align 2, !range !11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 807
  %8 = load i8, ptr %7, align 1, !range !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 -1912
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @cfg80211_bss_color_notify(ptr noundef %12, i32 noundef 3264, i32 noundef 141, i8 noundef zeroext 0, i64 noundef %1) #12
  br label %14

14:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_suspend(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %7 = tail call i32 @__ieee80211_suspend(ptr noundef %6, ptr noundef %1) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_resume(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !10

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wiphy, ptr %0, i32 5, i32 56, i32 30
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = load volatile i32, ptr %5, align 4
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24, !prof !10

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 11
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 56, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 56
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi ptr [ %21, %19 ], [ %17, %13 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2156, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %23) #12
  br label %24

24:                                               ; preds = %22, %9, %4
  %25 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %26 = tail call i32 @ieee80211_reconfig(ptr noundef %25) #12
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_set_wakeup(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_ops, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %5
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_set_wakeup, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = tail call ptr @llvm.thread.pointer() #12
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  %27 = tail call i32 @__traceiter_drv_set_wakeup(ptr noundef null, ptr noundef %6, i1 noundef zeroext %1) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds %struct.ieee80211_ops, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %26, %15, %12
  %32 = phi ptr [ %10, %12 ], [ %10, %15 ], [ %30, %26 ]
  tail call void %32(ptr noundef %6, i1 noundef zeroext %1) #12
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = tail call ptr @llvm.thread.pointer() #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !25
  %47 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %6) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  br label %48

48:                                               ; preds = %46, %35, %31, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ieee80211_add_iface(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store ptr null, ptr %6, align 4, !annotation !16
  %11 = call i32 @ieee80211_if_add(ptr noundef %10, ptr noundef %1, i8 noundef zeroext %2, ptr noundef nonnull %6, i32 noundef %3, ptr noundef %4) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = inttoptr i32 %11 to ptr
  br label %25

15:                                               ; preds = %9
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 -8
  %18 = icmp eq i32 %3, 6
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = call fastcc i32 @ieee80211_set_mon_options(ptr noundef %17, ptr noundef %4)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 4
  br label %25

24:                                               ; preds = %19
  call void @ieee80211_if_remove(ptr noundef %17) #12
  br label %25

25:                                               ; preds = %24, %22, %15, %13
  %26 = phi ptr [ %14, %13 ], [ null, %24 ], [ %23, %22 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_del_iface(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -8
  tail call void @ieee80211_if_remove(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_change_iface(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = getelementptr i8, ptr %1, i32 1764
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @ieee80211_if_change_type(ptr noundef %5, i32 noundef %2) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %4
  switch i32 %2, label %44 [
    i32 4, label %11
    i32 2, label %17
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.vif_params, ptr %3, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %1, i32 2824
  store volatile ptr null, ptr %16, align 8
  tail call void @ieee80211_check_fast_rx_iface(ptr noundef %5) #12
  br label %44

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.vif_params, ptr %3, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %1, i32 3060
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %19, %24
  br i1 %25, label %52, label %26

26:                                               ; preds = %21
  %27 = trunc i32 %19 to i8
  store i8 %27, ptr %22, align 4
  %28 = getelementptr i8, ptr %1, i32 2976
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %52, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %32) #12
  %33 = getelementptr i8, ptr %1, i32 2988
  %34 = tail call ptr @sta_info_get(ptr noundef %5, ptr noundef %33) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.sta_info, ptr %34, i32 0, i32 46
  %38 = load i32, ptr %18, align 4
  %39 = icmp ne i32 %38, 0
  tail call fastcc void @drv_sta_set_4addr(ptr noundef %7, ptr noundef %5, ptr noundef %37, i1 noundef zeroext %39)
  br label %40

40:                                               ; preds = %36, %31
  tail call void @mutex_unlock(ptr noundef %32) #12
  %41 = load i32, ptr %18, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void @ieee80211_send_4addr_nullfunc(ptr noundef %7, ptr noundef %5) #12
  br label %44

44:                                               ; preds = %43, %40, %17, %15, %11, %10
  %45 = getelementptr i8, ptr %1, i32 3672
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 6
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = tail call fastcc i32 @ieee80211_set_mon_options(ptr noundef %5, ptr noundef %3)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %44
  br label %52

52:                                               ; preds = %51, %48, %26, %21, %4
  %53 = phi i32 [ 0, %51 ], [ %8, %4 ], [ %49, %48 ], [ 0, %21 ], [ 0, %26 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_add_key(ptr nocapture noundef readnone %0, ptr noundef %1, i8 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = getelementptr i8, ptr %1, i32 1408
  %8 = getelementptr i8, ptr %1, i32 1764
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %1, i32 1772
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %139, label %14

14:                                               ; preds = %6
  br i1 %3, label %15, label %48

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.key_params, ptr %5, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr %struct.wiphy, ptr %21, i32 0, i32 14, i32 4
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %139, label %26

26:                                               ; preds = %19
  %27 = tail call ptr @sta_info_get_bss(ptr noundef %7, ptr noundef %4) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %139, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.sta_info, ptr %27, i32 0, i32 9
  %31 = load i8, ptr %30, align 8
  %32 = icmp eq i8 %31, %2
  br i1 %32, label %139, label %33

33:                                               ; preds = %29
  %34 = zext i8 %2 to i32
  %35 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 65
  tail call void @mutex_lock(ptr noundef %35) #12
  %36 = getelementptr %struct.sta_info, ptr %27, i32 0, i32 8, i32 %34
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.ieee80211_key, ptr %37, i32 0, i32 7, i32 6
  %41 = load i16, ptr %40, align 8
  %42 = and i16 %41, 512
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = tail call i32 @ieee80211_set_tx_key(ptr noundef nonnull %37) #12
  br label %46

46:                                               ; preds = %44, %39, %33
  %47 = phi i32 [ %45, %44 ], [ -22, %39 ], [ -22, %33 ]
  tail call void @mutex_unlock(ptr noundef %35) #12
  br label %139

48:                                               ; preds = %15, %14
  %49 = getelementptr inbounds %struct.key_params, ptr %5, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, -1027073
  %52 = icmp ult i32 %51, 13
  br i1 %52, label %57, label %53

53:                                               ; preds = %57, %48
  %54 = getelementptr i8, ptr %1, i32 3672
  %55 = load i32, ptr %54, align 8
  %56 = tail call ptr @ieee80211_cs_get(ptr noundef %9, i32 noundef %50, i32 noundef %55) #12
  br label %64

57:                                               ; preds = %48
  %58 = trunc i32 %51 to i16
  %59 = lshr i16 8123, %58
  %60 = and i16 %59, 1
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %53, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds [13 x i32], ptr @switch.table.ieee80211_add_key, i32 0, i32 %51
  br label %64

64:                                               ; preds = %62, %53
  %65 = phi ptr [ %63, %62 ], [ %49, %53 ]
  %66 = phi ptr [ null, %62 ], [ %56, %53 ]
  %67 = load i32, ptr %65, align 4
  %68 = zext i8 %2 to i32
  %69 = getelementptr inbounds %struct.key_params, ptr %5, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = load ptr, ptr %5, align 4
  %72 = getelementptr inbounds %struct.key_params, ptr %5, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.key_params, ptr %5, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = tail call ptr @ieee80211_key_alloc(i32 noundef %67, i32 noundef %68, i32 noundef %70, ptr noundef %71, i32 noundef %73, ptr noundef %75, ptr noundef %66) #12
  %77 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %80

78:                                               ; preds = %64
  %79 = ptrtoint ptr %76 to i32
  br label %139

80:                                               ; preds = %64
  br i1 %3, label %81, label %85

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.ieee80211_key, ptr %76, i32 0, i32 7, i32 6
  %83 = load i16, ptr %82, align 8
  %84 = or i16 %83, 8
  store i16 %84, ptr %82, align 8
  br label %85

85:                                               ; preds = %81, %80
  %86 = getelementptr inbounds %struct.key_params, ptr %5, i32 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ieee80211_key, ptr %76, i32 0, i32 7, i32 6
  %91 = load i16, ptr %90, align 8
  %92 = or i16 %91, 512
  store i16 %92, ptr %90, align 8
  br label %93

93:                                               ; preds = %89, %85
  %94 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %94) #12
  %95 = icmp eq ptr %4, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %93
  %97 = tail call ptr @sta_info_get_bss(ptr noundef %7, ptr noundef nonnull %4) #12
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.sta_info, ptr %97, i32 0, i32 23
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %101, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99, %96
  tail call void @ieee80211_key_free_unused(ptr noundef %76) #12
  br label %137

105:                                              ; preds = %99, %93
  %106 = phi ptr [ %97, %99 ], [ null, %93 ]
  %107 = getelementptr i8, ptr %1, i32 3672
  %108 = load i32, ptr %107, align 8
  switch i32 %108, label %131 [
    i32 2, label %109
    i32 3, label %117
    i32 4, label %117
    i32 11, label %128
    i32 7, label %128
    i32 5, label %128
    i32 6, label %128
    i32 10, label %128
    i32 12, label %128
    i32 0, label %128
    i32 13, label %128
    i32 8, label %128
    i32 9, label %128
  ]

109:                                              ; preds = %105
  %110 = getelementptr i8, ptr %1, i32 3040
  %111 = load i32, ptr %110, align 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %131, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.ieee80211_key, ptr %76, i32 0, i32 7, i32 6
  %115 = load i16, ptr %114, align 8
  %116 = or i16 %115, 64
  store i16 %116, ptr %114, align 8
  br label %131

117:                                              ; preds = %105, %105
  %118 = icmp eq ptr %106, null
  br i1 %118, label %135, label %119

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.sta_info, ptr %106, i32 0, i32 23
  %121 = load volatile i32, ptr %120, align 4
  %122 = and i32 %121, 128
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.ieee80211_key, ptr %76, i32 0, i32 7, i32 6
  %126 = load i16, ptr %125, align 8
  %127 = or i16 %126, 64
  store i16 %127, ptr %125, align 8
  br label %133

128:                                              ; preds = %105, %105, %105, %105, %105, %105, %105, %105, %105, %105
  %129 = load i1, ptr @ieee80211_add_key.__already_done.9, align 1
  br i1 %129, label %131, label %130, !prof !21

130:                                              ; preds = %128
  store i1 true, ptr @ieee80211_add_key.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 536, i32 noundef 9, ptr noundef null) #12
  br label %131

131:                                              ; preds = %130, %128, %113, %109, %105
  %132 = icmp eq ptr %106, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %131, %124, %119
  %134 = getelementptr inbounds %struct.sta_info, ptr %106, i32 0, i32 41
  store ptr %66, ptr %134, align 4
  br label %135

135:                                              ; preds = %133, %131, %117
  %136 = tail call i32 @ieee80211_key_link(ptr noundef %76, ptr noundef %7, ptr noundef %106) #12
  br label %137

137:                                              ; preds = %135, %104
  %138 = phi i32 [ %136, %135 ], [ -2, %104 ]
  tail call void @mutex_unlock(ptr noundef %94) #12
  br label %139

139:                                              ; preds = %137, %78, %46, %29, %26, %19, %6
  %140 = phi i32 [ %79, %78 ], [ %138, %137 ], [ -100, %6 ], [ %47, %46 ], [ -22, %19 ], [ -22, %26 ], [ 0, %29 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_get_key(ptr nocapture noundef readnone %0, ptr noundef %1, i8 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) #0 {
  %8 = alloca [6 x i8], align 1
  %9 = alloca %struct.key_params, align 4
  %10 = alloca %struct.ieee80211_key_seq, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 0, i32 6, i1 false)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 28, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i32 20, i1 false)
  %11 = getelementptr i8, ptr %1, i32 1408
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %12 = icmp eq ptr %4, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @sta_info_get_bss(ptr noundef %11, ptr noundef nonnull %4) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %188, label %16

16:                                               ; preds = %13
  %17 = zext i8 %2 to i32
  %18 = icmp ult i8 %2, 4
  %19 = and i1 %18, %3
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr %struct.sta_info, ptr %14, i32 0, i32 8, i32 %17
  br label %30

22:                                               ; preds = %16
  %23 = icmp ugt i8 %2, 7
  %24 = or i1 %23, %3
  br i1 %24, label %188, label %25

25:                                               ; preds = %22
  %26 = getelementptr %struct.sta_info, ptr %14, i32 0, i32 7, i32 %17
  br label %30

27:                                               ; preds = %7
  %28 = zext i8 %2 to i32
  %29 = getelementptr %struct.ieee80211_sub_if_data, ptr %11, i32 0, i32 14, i32 %28
  br label %30

30:                                               ; preds = %27, %25, %20
  %31 = phi ptr [ %21, %20 ], [ %26, %25 ], [ %29, %27 ]
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %188, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %35, i8 0, i32 24, i1 false)
  %36 = getelementptr inbounds %struct.ieee80211_key, ptr %32, i32 0, i32 7
  %37 = getelementptr inbounds %struct.ieee80211_key, ptr %32, i32 0, i32 7, i32 1
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.key_params, ptr %9, i32 0, i32 5
  store i32 %38, ptr %39, align 4
  switch i32 %38, label %140 [
    i32 1027074, label %40
    i32 1027076, label %83
    i32 1027082, label %83
    i32 1027078, label %83
    i32 1027085, label %83
    i32 1027083, label %83
    i32 1027084, label %83
    i32 1027080, label %83
    i32 1027081, label %83
  ]

40:                                               ; preds = %34
  %41 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %36, ptr elementtype(i64) %36) #12, !srcloc !27
  %42 = lshr i64 %41, 16
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds %struct.ieee80211_key, ptr %32, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  %48 = trunc i64 %41 to i8
  %49 = lshr i64 %41, 8
  %50 = trunc i64 %49 to i8
  br i1 %47, label %65, label %51

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.ieee80211_key, ptr %32, i32 0, i32 7, i32 6
  %53 = load i16, ptr %52, align 8
  %54 = and i16 %53, 2
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = getelementptr i8, ptr %1, i32 1764
  %58 = load ptr, ptr %57, align 4
  call fastcc void @drv_get_key_seq(ptr noundef %58, ptr noundef nonnull %32, ptr noundef nonnull %10)
  %59 = load i32, ptr %10, align 4
  %60 = getelementptr inbounds %struct.anon.125, ptr %10, i32 0, i32 1
  %61 = load i16, ptr %60, align 4
  %62 = trunc i16 %61 to i8
  %63 = lshr i16 %61, 8
  %64 = trunc i16 %63 to i8
  br label %65

65:                                               ; preds = %56, %51, %40
  %66 = phi i8 [ %48, %51 ], [ %62, %56 ], [ %48, %40 ]
  %67 = phi i8 [ %50, %51 ], [ %64, %56 ], [ %50, %40 ]
  %68 = phi i32 [ %43, %51 ], [ %59, %56 ], [ %43, %40 ]
  store i8 %66, ptr %8, align 1
  %69 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 1
  store i8 %67, ptr %69, align 1
  %70 = trunc i32 %68 to i8
  %71 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 2
  store i8 %70, ptr %71, align 1
  %72 = lshr i32 %68, 8
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 3
  store i8 %73, ptr %74, align 1
  %75 = lshr i32 %68, 16
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 4
  store i8 %76, ptr %77, align 1
  %78 = lshr i32 %68, 24
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 5
  store i8 %79, ptr %80, align 1
  %81 = getelementptr inbounds %struct.key_params, ptr %9, i32 0, i32 1
  store ptr %8, ptr %81, align 4
  %82 = getelementptr inbounds %struct.key_params, ptr %9, i32 0, i32 3
  store i32 6, ptr %82, align 4
  br label %182

83:                                               ; preds = %34, %34, %34, %34, %34, %34, %34, %34
  %84 = getelementptr inbounds %struct.ieee80211_key, ptr %32, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %119, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.ieee80211_key, ptr %32, i32 0, i32 7, i32 6
  %90 = load i16, ptr %89, align 8
  %91 = and i16 %90, 2
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %119

93:                                               ; preds = %88
  %94 = getelementptr i8, ptr %1, i32 1764
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.ieee80211_local, ptr %95, i32 0, i32 8
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.ieee80211_ops, ptr %97, i32 0, i32 28
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %93
  call void %99(ptr noundef %95, ptr noundef %36, ptr noundef nonnull %10) #12
  br label %102

102:                                              ; preds = %101, %93
  %103 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_get_key_seq, i32 0, i32 1), align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = tail call ptr @llvm.thread.pointer() #12
  %107 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %108 = load i32, ptr %107, align 8
  %109 = lshr i32 %108, 5
  %110 = getelementptr i32, ptr @__cpu_online_mask, i32 %109
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %108, 31
  %113 = shl nuw i32 1, %112
  %114 = and i32 %113, %111
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %105
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  %117 = call i32 @__traceiter_drv_get_key_seq(ptr noundef null, ptr noundef %95, ptr noundef %36) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !29
  br label %118

118:                                              ; preds = %116, %105, %102
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %8, ptr noundef nonnull align 4 dereferenceable(6) %10, i32 6, i1 false)
  br label %137

119:                                              ; preds = %88, %83
  %120 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %36, ptr elementtype(i64) %36) #12, !srcloc !27
  %121 = trunc i64 %120 to i8
  store i8 %121, ptr %8, align 1
  %122 = lshr i64 %120, 8
  %123 = trunc i64 %122 to i8
  %124 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 1
  store i8 %123, ptr %124, align 1
  %125 = lshr i64 %120, 16
  %126 = trunc i64 %125 to i8
  %127 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 2
  store i8 %126, ptr %127, align 1
  %128 = lshr i64 %120, 24
  %129 = trunc i64 %128 to i8
  %130 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 3
  store i8 %129, ptr %130, align 1
  %131 = lshr i64 %120, 32
  %132 = trunc i64 %131 to i8
  %133 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 4
  store i8 %132, ptr %133, align 1
  %134 = lshr i64 %120, 40
  %135 = trunc i64 %134 to i8
  %136 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 5
  store i8 %135, ptr %136, align 1
  br label %137

137:                                              ; preds = %119, %118
  %138 = getelementptr inbounds %struct.key_params, ptr %9, i32 0, i32 1
  store ptr %8, ptr %138, align 4
  %139 = getelementptr inbounds %struct.key_params, ptr %9, i32 0, i32 3
  store i32 6, ptr %139, align 4
  br label %182

140:                                              ; preds = %34
  %141 = getelementptr inbounds %struct.ieee80211_key, ptr %32, i32 0, i32 4
  %142 = load i32, ptr %141, align 4
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %182, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.ieee80211_key, ptr %32, i32 0, i32 7, i32 6
  %147 = load i16, ptr %146, align 8
  %148 = and i16 %147, 2
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %151, label %150, !prof !21

150:                                              ; preds = %145
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 692, i32 noundef 9, ptr noundef null) #12
  br label %182

151:                                              ; preds = %145
  %152 = getelementptr i8, ptr %1, i32 1764
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.ieee80211_local, ptr %153, i32 0, i32 8
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.ieee80211_ops, ptr %155, i32 0, i32 28
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %151
  call void %157(ptr noundef %153, ptr noundef %36, ptr noundef nonnull %10) #12
  br label %160

160:                                              ; preds = %159, %151
  %161 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_get_key_seq, i32 0, i32 1), align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %160
  %164 = tail call ptr @llvm.thread.pointer() #12
  %165 = getelementptr inbounds %struct.thread_info, ptr %164, i32 0, i32 2
  %166 = load i32, ptr %165, align 8
  %167 = lshr i32 %166, 5
  %168 = getelementptr i32, ptr @__cpu_online_mask, i32 %167
  %169 = load volatile i32, ptr %168, align 4
  %170 = and i32 %166, 31
  %171 = shl nuw i32 1, %170
  %172 = and i32 %171, %169
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %163
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  %175 = call i32 @__traceiter_drv_get_key_seq(ptr noundef null, ptr noundef %153, ptr noundef %36) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !29
  br label %176

176:                                              ; preds = %174, %163, %160
  %177 = getelementptr inbounds %struct.key_params, ptr %9, i32 0, i32 1
  store ptr %10, ptr %177, align 4
  %178 = getelementptr inbounds %struct.anon.130, ptr %10, i32 0, i32 1
  %179 = load i8, ptr %178, align 4
  %180 = zext i8 %179 to i32
  %181 = getelementptr inbounds %struct.key_params, ptr %9, i32 0, i32 3
  store i32 %180, ptr %181, align 4
  br label %182

182:                                              ; preds = %176, %150, %140, %137, %65
  %183 = getelementptr inbounds %struct.ieee80211_key, ptr %32, i32 0, i32 7, i32 8
  store ptr %183, ptr %9, align 4
  %184 = getelementptr inbounds %struct.ieee80211_key, ptr %32, i32 0, i32 7, i32 7
  %185 = load i8, ptr %184, align 2
  %186 = zext i8 %185 to i32
  %187 = getelementptr inbounds %struct.key_params, ptr %9, i32 0, i32 2
  store i32 %186, ptr %187, align 4
  call void %6(ptr noundef %5, ptr noundef nonnull %9) #12
  br label %188

188:                                              ; preds = %182, %30, %22, %13
  %189 = phi i32 [ 0, %182 ], [ -2, %30 ], [ -2, %13 ], [ -2, %22 ]
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #12
  ret i32 %189
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_del_key(ptr nocapture noundef readnone %0, ptr noundef %1, i8 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4) #0 {
  %6 = getelementptr i8, ptr %1, i32 1408
  %7 = getelementptr i8, ptr %1, i32 1764
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %8, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %8, i32 0, i32 65
  tail call void @mutex_lock(ptr noundef %10) #12
  %11 = icmp eq ptr %4, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  %13 = tail call ptr @sta_info_get_bss(ptr noundef %6, ptr noundef nonnull %4) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %12
  %16 = zext i8 %2 to i32
  br i1 %3, label %17, label %19

17:                                               ; preds = %15
  %18 = getelementptr %struct.sta_info, ptr %13, i32 0, i32 8, i32 %16
  br label %24

19:                                               ; preds = %15
  %20 = getelementptr %struct.sta_info, ptr %13, i32 0, i32 7, i32 %16
  br label %24

21:                                               ; preds = %5
  %22 = zext i8 %2 to i32
  %23 = getelementptr %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 14, i32 %22
  br label %24

24:                                               ; preds = %21, %19, %17
  %25 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %23, %21 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %1, i32 3672
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 2
  tail call void @ieee80211_key_free(ptr noundef nonnull %26, i1 noundef zeroext %31) #12
  br label %32

32:                                               ; preds = %28, %24, %12
  %33 = phi i32 [ 0, %28 ], [ -2, %12 ], [ -2, %24 ]
  tail call void @mutex_unlock(ptr noundef %10) #12
  tail call void @mutex_unlock(ptr noundef %9) #12
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_config_default_key(ptr nocapture noundef readnone %0, ptr noundef %1, i8 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  %6 = getelementptr i8, ptr %1, i32 1408
  %7 = zext i8 %2 to i32
  tail call void @ieee80211_set_default_key(ptr noundef %6, i32 noundef %7, i1 noundef zeroext %3, i1 noundef zeroext %4) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_config_default_mgmt_key(ptr nocapture noundef readnone %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = zext i8 %2 to i32
  tail call void @ieee80211_set_default_mgmt_key(ptr noundef %4, i32 noundef %5) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_config_default_beacon_key(ptr nocapture noundef readnone %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = zext i8 %2 to i32
  tail call void @ieee80211_set_default_beacon_key(ptr noundef %4, i32 noundef %5) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_start_ap(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = getelementptr i8, ptr %1, i32 1764
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %1, i32 2816
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %264

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %264

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %1, i32 2528
  store i32 1, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 39
  %17 = load i8, ptr %16, align 4
  %18 = getelementptr i8, ptr %1, i32 2524
  store i8 %17, ptr %18, align 4
  %19 = getelementptr i8, ptr %1, i32 3672
  %20 = getelementptr i8, ptr %1, i32 3706
  %21 = load i16, ptr %20, align 2
  %22 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = trunc i32 %23 to i16
  store i16 %24, ptr %20, align 2
  %25 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 19
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %49, label %28

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 20
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %49, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %1, i32 3690
  store i8 1, ptr %33, align 2
  %34 = load ptr, ptr %29, align 4
  %35 = load i32, ptr %34, align 1
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 7
  %38 = getelementptr i8, ptr %1, i32 3684
  store i8 %37, ptr %38, align 4
  %39 = load ptr, ptr %29, align 4
  %40 = load i32, ptr %39, align 1
  %41 = trunc i32 %40 to i16
  %42 = lshr i16 %41, 4
  %43 = and i16 %42, 1023
  %44 = getelementptr i8, ptr %1, i32 3688
  store i16 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 28, i32 1
  %46 = load i8, ptr %45, align 1, !range !11
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %47, i32 403473216, i32 940344128
  br label %49

49:                                               ; preds = %32, %28, %14
  %50 = phi i32 [ 135037760, %28 ], [ 135037760, %14 ], [ %48, %32 ]
  %51 = load i32, ptr %19, align 8
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %76

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 31
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %76, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 31, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = trunc i32 %59 to i8
  %61 = getelementptr i8, ptr %1, i32 4512
  store ptr null, ptr %61, align 8
  %62 = getelementptr i8, ptr %1, i32 3975
  store i8 0, ptr %62, align 1
  %63 = getelementptr i8, ptr %1, i32 3968
  store i8 0, ptr %63, align 8
  %64 = getelementptr i8, ptr %1, i32 3977
  store i8 0, ptr %64, align 1
  %65 = getelementptr i8, ptr %55, i32 -8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %264, label %67

67:                                               ; preds = %57
  %68 = icmp eq ptr %65, %4
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  store ptr %19, ptr %61, align 8
  br label %72

70:                                               ; preds = %67
  %71 = getelementptr i8, ptr %55, i32 2256
  store ptr %71, ptr %61, align 8
  store i8 1, ptr %63, align 8
  store i8 %60, ptr %62, align 1
  br label %72

72:                                               ; preds = %70, %69
  %73 = and i32 %59, 256
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i8 1, ptr %64, align 1
  br label %76

76:                                               ; preds = %75, %72, %53, %49
  %77 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %77) #12
  %78 = tail call i32 @ieee80211_vif_use_channel(ptr noundef %4, ptr noundef %2, i32 noundef 0) #12
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  tail call void @ieee80211_vif_copy_chanctx_to_vlans(ptr noundef %4, i1 noundef zeroext false) #12
  tail call void @mutex_unlock(ptr noundef %77) #12
  %81 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 7
  %82 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 7, i32 7
  %83 = load i16, ptr %82, align 2
  %84 = getelementptr i8, ptr %1, i32 2010
  store i16 %83, ptr %84, align 2
  %85 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 7, i32 8
  %86 = load i8, ptr %85, align 4, !range !11
  %87 = getelementptr i8, ptr %1, i32 2012
  store i8 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 7, i32 9
  %89 = load i8, ptr %88, align 1, !range !11
  %90 = getelementptr i8, ptr %1, i32 2014
  store i8 %89, ptr %90, align 2
  %91 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 7, i32 10
  %92 = load i8, ptr %91, align 2, !range !11
  %93 = getelementptr i8, ptr %1, i32 2013
  store i8 %92, ptr %93, align 1
  %94 = load ptr, ptr %5, align 4
  %95 = load i32, ptr %19, align 8
  %96 = tail call i32 @ieee80211_cs_headroom(ptr noundef %94, ptr noundef %81, i32 noundef %95) #12
  %97 = getelementptr i8, ptr %1, i32 2016
  store i32 %96, ptr %97, align 8
  %98 = getelementptr i8, ptr %1, i32 2836
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %98
  br i1 %100, label %119, label %102

101:                                              ; preds = %76
  tail call void @mutex_unlock(ptr noundef %77) #12
  store i16 %21, ptr %20, align 2
  br label %264

102:                                              ; preds = %102, %80
  %103 = phi ptr [ %117, %102 ], [ %99, %80 ]
  %104 = load i16, ptr %82, align 2
  %105 = getelementptr i8, ptr %103, i32 -806
  store i16 %104, ptr %105, align 2
  %106 = load i8, ptr %85, align 4, !range !11
  %107 = getelementptr i8, ptr %103, i32 -804
  store i8 %106, ptr %107, align 4
  %108 = load i8, ptr %88, align 1, !range !11
  %109 = getelementptr i8, ptr %103, i32 -802
  store i8 %108, ptr %109, align 2
  %110 = load i8, ptr %91, align 2, !range !11
  %111 = getelementptr i8, ptr %103, i32 -803
  store i8 %110, ptr %111, align 1
  %112 = load ptr, ptr %5, align 4
  %113 = getelementptr i8, ptr %103, i32 856
  %114 = load i32, ptr %113, align 8
  %115 = tail call i32 @ieee80211_cs_headroom(ptr noundef %112, ptr noundef %81, i32 noundef %114) #12
  %116 = getelementptr i8, ptr %103, i32 -800
  store i32 %115, ptr %116, align 8
  %117 = load ptr, ptr %103, align 4
  %118 = icmp eq ptr %117, %98
  br i1 %118, label %119, label %102

119:                                              ; preds = %102, %80
  %120 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = trunc i32 %121 to i8
  %123 = getelementptr i8, ptr %1, i32 3704
  store i8 %122, ptr %123, align 8
  %124 = getelementptr i8, ptr %1, i32 3703
  store i8 1, ptr %124, align 1
  %125 = getelementptr i8, ptr %1, i32 4478
  %126 = load i8, ptr %125, align 2, !range !11
  %127 = getelementptr i8, ptr %1, i32 3958
  store i8 %126, ptr %127, align 2
  %128 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 25
  %129 = load i8, ptr %128, align 4, !range !11
  %130 = getelementptr i8, ptr %1, i32 3692
  store i8 %129, ptr %130, align 4
  %131 = getelementptr i8, ptr %1, i32 3988
  %132 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 27
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(21) %131, ptr noundef align 4 dereferenceable(21) %132, i32 21, i1 false)
  %133 = getelementptr i8, ptr %1, i32 4009
  %134 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 28
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %133, ptr noundef align 1 dereferenceable(3) %134, i32 3, i1 false)
  %135 = load ptr, ptr %2, align 4
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 4
  %138 = getelementptr i8, ptr %1, i32 4024
  %139 = zext i1 %137 to i8
  store i8 %139, ptr %138, align 8
  %140 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 5
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr i8, ptr %1, i32 3888
  store i32 %141, ptr %142, align 8
  %143 = load i32, ptr %140, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %119
  %146 = getelementptr i8, ptr %1, i32 3855
  %147 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 4
  %148 = load ptr, ptr %147, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %146, ptr align 1 %148, i32 %143, i1 false)
  br label %149

149:                                              ; preds = %145, %119
  %150 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 6
  %151 = load i32, ptr %150, align 4
  %152 = icmp ne i32 %151, 0
  %153 = getelementptr i8, ptr %1, i32 3892
  %154 = zext i1 %152 to i8
  store i8 %154, ptr %153, align 4
  %155 = getelementptr i8, ptr %1, i32 3904
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(54) %155, i8 0, i32 54, i1 false)
  %156 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 12
  %157 = load i8, ptr %156, align 4
  %158 = and i8 %157, 127
  %159 = getelementptr i8, ptr %1, i32 3905
  store i8 %158, ptr %159, align 1
  %160 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 13
  %161 = load i8, ptr %160, align 1, !range !11
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %149
  %164 = or i8 %157, -128
  store i8 %164, ptr %159, align 1
  br label %165

165:                                              ; preds = %163, %149
  %166 = getelementptr i8, ptr %1, i32 2808
  store i8 0, ptr %166, align 8
  %167 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %168 = load ptr, ptr %167, align 8
  %169 = getelementptr %struct.wiphy, ptr %168, i32 0, i32 14, i32 0
  %170 = load i8, ptr %169, align 1
  %171 = and i8 %170, 64
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %209, label %173

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 16
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr i8, ptr %1, i32 2784
  store i32 %175, ptr %176, align 4
  %177 = icmp eq i32 %175, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %173
  store i8 1, ptr %166, align 8
  br label %179

179:                                              ; preds = %178, %173
  %180 = getelementptr %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 16, i32 0, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr i8, ptr %1, i32 2788
  store i32 %181, ptr %182, align 4
  %183 = icmp eq i32 %181, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %179
  store i8 1, ptr %166, align 8
  br label %185

185:                                              ; preds = %184, %179
  %186 = getelementptr %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 16, i32 0, i32 2
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr i8, ptr %1, i32 2792
  store i32 %187, ptr %188, align 4
  %189 = icmp eq i32 %187, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %185
  store i8 1, ptr %166, align 8
  br label %191

191:                                              ; preds = %190, %185
  %192 = getelementptr %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 16, i32 0, i32 3
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr i8, ptr %1, i32 2796
  store i32 %193, ptr %194, align 4
  %195 = icmp eq i32 %193, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %191
  store i8 1, ptr %166, align 8
  br label %197

197:                                              ; preds = %196, %191
  %198 = getelementptr %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 16, i32 0, i32 4
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr i8, ptr %1, i32 2800
  store i32 %199, ptr %200, align 4
  %201 = icmp eq i32 %199, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %197
  store i8 1, ptr %166, align 8
  br label %203

203:                                              ; preds = %202, %197
  %204 = getelementptr %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 16, i32 0, i32 5
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr i8, ptr %1, i32 2804
  store i32 %205, ptr %206, align 4
  %207 = icmp eq i32 %205, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %203
  store i8 1, ptr %166, align 8
  br label %209

209:                                              ; preds = %208, %203, %165
  %210 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 4
  %211 = load volatile i32, ptr %210, align 4
  %212 = and i32 %211, 1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %209
  %215 = getelementptr i8, ptr %1, i32 4028
  %216 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(360) %215, ptr noundef align 4 dereferenceable(360) %216, i32 360, i1 false)
  br label %217

217:                                              ; preds = %214, %209
  %218 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 1
  %219 = tail call fastcc i32 @ieee80211_assign_beacon(ptr noundef %4, ptr noundef %218, ptr noundef null, ptr noundef null)
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %262, label %221

221:                                              ; preds = %217
  %222 = or i32 %219, %50
  %223 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 29, i32 1
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 29
  %228 = tail call fastcc i32 @ieee80211_set_fils_discovery(ptr noundef %4, ptr noundef %227)
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %262, label %230

230:                                              ; preds = %226
  %231 = or i32 %222, 1073741824
  br label %232

232:                                              ; preds = %230, %221
  %233 = phi i32 [ %231, %230 ], [ %222, %221 ]
  %234 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 30
  %235 = load i32, ptr %234, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %232
  %238 = tail call fastcc i32 @ieee80211_set_unsol_bcast_probe_resp(ptr noundef %4, ptr noundef %234)
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %262, label %240

240:                                              ; preds = %237
  %241 = or i32 %233, -2147483648
  br label %242

242:                                              ; preds = %240, %232
  %243 = phi i32 [ %241, %240 ], [ %233, %232 ]
  %244 = load ptr, ptr %5, align 4
  %245 = tail call fastcc i32 @drv_start_ap(ptr noundef %244, ptr noundef %4)
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %253, label %247

247:                                              ; preds = %242
  %248 = load ptr, ptr %7, align 8
  %249 = icmp eq ptr %248, null
  br i1 %249, label %252, label %250

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.beacon_data, ptr %248, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %251, ptr noundef nonnull inttoptr (i32 28 to ptr)) #12
  br label %252

252:                                              ; preds = %250, %247
  store volatile ptr null, ptr %7, align 8
  br label %262

253:                                              ; preds = %242
  tail call void @ieee80211_recalc_dtim(ptr noundef %6, ptr noundef %4) #12
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %4, i32 noundef %243) #12
  tail call void @netif_carrier_on(ptr noundef %1) #12
  %254 = load ptr, ptr %98, align 4
  %255 = icmp eq ptr %254, %98
  br i1 %255, label %264, label %256

256:                                              ; preds = %256, %253
  %257 = phi ptr [ %260, %256 ], [ %254, %253 ]
  %258 = getelementptr i8, ptr %257, i32 -1056
  %259 = load ptr, ptr %258, align 8
  tail call void @netif_carrier_on(ptr noundef %259) #12
  %260 = load ptr, ptr %257, align 4
  %261 = icmp eq ptr %260, %98
  br i1 %261, label %264, label %256

262:                                              ; preds = %252, %237, %226, %217
  %263 = phi i32 [ %219, %217 ], [ %228, %226 ], [ %238, %237 ], [ %245, %252 ]
  tail call void @mutex_lock(ptr noundef %77) #12
  tail call void @ieee80211_vif_release_channel(ptr noundef %4) #12
  tail call void @mutex_unlock(ptr noundef %77) #12
  br label %264

264:                                              ; preds = %262, %256, %253, %101, %57, %10, %3
  %265 = phi i32 [ %78, %101 ], [ %263, %262 ], [ -114, %3 ], [ -524, %10 ], [ -22, %57 ], [ 0, %253 ], [ 0, %256 ]
  ret i32 %265
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_change_beacon(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = getelementptr i8, ptr %1, i32 4479
  %6 = load i8, ptr %5, align 1, !range !11
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %1, i32 4510
  %10 = load i8, ptr %9, align 2, !range !11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %1, i32 2816
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @ieee80211_assign_beacon(ptr noundef %4, ptr noundef %2, ptr noundef null, ptr noundef null)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %4, i32 noundef %17) #12
  br label %20

20:                                               ; preds = %19, %16, %12, %8, %3
  %21 = phi i32 [ 0, %19 ], [ -16, %8 ], [ -16, %3 ], [ -2, %12 ], [ %17, %16 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_stop_ap(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = alloca %struct.cfg80211_chan_def, align 4
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = getelementptr i8, ptr %1, i32 1764
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, i8 0, i32 28, i1 false), !annotation !16
  %7 = getelementptr i8, ptr %1, i32 2816
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %125, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %1, i32 2820
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %1, i32 2824
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %1, i32 2828
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %17) #12
  %18 = getelementptr i8, ptr %1, i32 4479
  store i8 0, ptr %18, align 1
  %19 = getelementptr i8, ptr %1, i32 2360
  %20 = load i8, ptr %19, align 8, !range !11
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %10
  tail call void @ieee80211_wake_vif_queues(ptr noundef %6, ptr noundef %4, i32 noundef 2) #12
  store i8 0, ptr %19, align 8
  br label %23

23:                                               ; preds = %22, %10
  tail call void @mutex_unlock(ptr noundef %17) #12
  %24 = getelementptr i8, ptr %1, i32 2832
  %25 = load ptr, ptr %24, align 8
  tail call void @kfree(ptr noundef %25) #12
  store ptr null, ptr %24, align 8
  %26 = getelementptr i8, ptr %1, i32 2836
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %35, label %29

29:                                               ; preds = %29, %23
  %30 = phi ptr [ %33, %29 ], [ %27, %23 ]
  %31 = getelementptr i8, ptr %30, i32 -1056
  %32 = load ptr, ptr %31, align 8
  tail call void @netif_carrier_off(ptr noundef %32) #12
  %33 = load ptr, ptr %30, align 4
  %34 = icmp eq ptr %33, %26
  br i1 %34, label %35, label %29

35:                                               ; preds = %29, %23
  tail call void @netif_carrier_off(ptr noundef %1) #12
  store volatile ptr null, ptr %7, align 8
  store volatile ptr null, ptr %11, align 4
  store volatile ptr null, ptr %13, align 8
  store volatile ptr null, ptr %15, align 4
  %36 = getelementptr inbounds %struct.beacon_data, ptr %8, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %36, ptr noundef nonnull inttoptr (i32 28 to ptr)) #12
  %37 = icmp eq ptr %12, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @kvfree_call_rcu(ptr noundef nonnull %12, ptr noundef null) #12
  br label %39

39:                                               ; preds = %38, %35
  %40 = icmp eq ptr %14, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  tail call void @kvfree_call_rcu(ptr noundef nonnull %14, ptr noundef null) #12
  br label %42

42:                                               ; preds = %41, %39
  %43 = icmp eq ptr %16, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  tail call void @kvfree_call_rcu(ptr noundef nonnull %16, ptr noundef null) #12
  br label %45

45:                                               ; preds = %44, %42
  %46 = getelementptr i8, ptr %1, i32 3964
  %47 = load ptr, ptr %46, align 4
  tail call void @kfree(ptr noundef %47) #12
  store ptr null, ptr %46, align 4
  %48 = tail call i32 @__sta_info_flush(ptr noundef %4, i1 noundef zeroext true) #12
  tail call void @ieee80211_free_keys(ptr noundef %4, i1 noundef zeroext true) #12
  %49 = getelementptr i8, ptr %1, i32 3703
  store i8 0, ptr %49, align 1
  %50 = getelementptr i8, ptr %1, i32 2808
  store i8 0, ptr %50, align 8
  %51 = getelementptr i8, ptr %1, i32 3888
  store i32 0, ptr %51, align 8
  %52 = getelementptr i8, ptr %1, i32 1772
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %52) #12
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %4, i32 noundef 512) #12
  %53 = getelementptr i8, ptr %1, i32 1653
  %54 = load i8, ptr %53, align 1, !range !11
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %45
  %57 = getelementptr i8, ptr %1, i32 3780
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef align 4 dereferenceable(28) %57, i32 28, i1 false)
  %58 = getelementptr i8, ptr %1, i32 2544
  %59 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %58) #12
  %60 = getelementptr i8, ptr %1, i32 1760
  %61 = load ptr, ptr %60, align 8
  call void @cfg80211_cac_event(ptr noundef %61, ptr noundef nonnull %3, i32 noundef 2, i32 noundef 3264) #12
  br label %62

62:                                               ; preds = %56, %45
  %63 = load ptr, ptr %5, align 4
  %64 = getelementptr i8, ptr %1, i32 1768
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 32
  %67 = icmp eq i32 %66, 0
  %68 = load i1, ptr @drv_stop_ap.__already_done, align 1
  %69 = xor i1 %68, true
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %77, !prof !10

71:                                               ; preds = %62
  store i1 true, ptr @drv_stop_ap.__already_done, align 1
  %72 = getelementptr i8, ptr %1, i32 1760
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  %75 = getelementptr i8, ptr %1, i32 1776
  %76 = select i1 %74, ptr %75, ptr %73
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 982, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %76, i32 noundef %65) #12
  br label %77

77:                                               ; preds = %71, %62
  br i1 %67, label %118, label %78

78:                                               ; preds = %77
  %79 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_stop_ap, i32 0, i32 1), align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = tail call ptr @llvm.thread.pointer() #12
  %83 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = lshr i32 %84, 5
  %86 = getelementptr i32, ptr @__cpu_online_mask, i32 %85
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %84, 31
  %89 = shl nuw i32 1, %88
  %90 = and i32 %89, %87
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %81
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  %93 = call i32 @__traceiter_drv_stop_ap(ptr noundef null, ptr noundef %63, ptr noundef %4) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !31
  br label %94

94:                                               ; preds = %92, %81, %78
  %95 = getelementptr inbounds %struct.ieee80211_local, ptr %63, i32 0, i32 8
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.ieee80211_ops, ptr %96, i32 0, i32 12
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %94
  %101 = getelementptr i8, ptr %1, i32 3672
  call void %98(ptr noundef %63, ptr noundef %101) #12
  br label %102

102:                                              ; preds = %100, %94
  %103 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = tail call ptr @llvm.thread.pointer() #12
  %107 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %108 = load i32, ptr %107, align 8
  %109 = lshr i32 %108, 5
  %110 = getelementptr i32, ptr @__cpu_online_mask, i32 %109
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %108, 31
  %113 = shl nuw i32 1, %112
  %114 = and i32 %113, %111
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %105
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !25
  %117 = call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %63) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  br label %118

118:                                              ; preds = %116, %105, %102, %77
  %119 = getelementptr i8, ptr %1, i32 3096
  %120 = getelementptr i8, ptr %1, i32 3104
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 90
  %123 = load i32, ptr %122, align 4
  %124 = sub i32 %123, %121
  store i32 %124, ptr %122, align 4
  call void @ieee80211_purge_tx_queue(ptr noundef %6, ptr noundef %119) #12
  call void @mutex_lock(ptr noundef %17) #12
  call void @ieee80211_vif_copy_chanctx_to_vlans(ptr noundef %4, i1 noundef zeroext true) #12
  call void @ieee80211_vif_release_channel(ptr noundef %4) #12
  call void @mutex_unlock(ptr noundef %17) #12
  br label %125

125:                                              ; preds = %118, %2
  %126 = phi i32 [ 0, %118 ], [ -2, %2 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #12
  ret i32 %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_add_station(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !10

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %9 = getelementptr inbounds %struct.station_parameters, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %10, i32 3672
  %14 = load i32, ptr %13, align 8
  %15 = add i32 %14, -3
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %77

17:                                               ; preds = %12, %7
  %18 = phi ptr [ %10, %12 ], [ %1, %7 ]
  %19 = getelementptr i8, ptr %18, i32 1408
  %20 = getelementptr i8, ptr %18, i32 3672
  %21 = getelementptr i8, ptr %18, i32 4472
  %22 = load i32, ptr %2, align 4
  %23 = load i32, ptr %21, align 4
  %24 = xor i32 %23, %22
  %25 = getelementptr i8, ptr %2, i32 4
  %26 = load i16, ptr %25, align 2
  %27 = getelementptr i8, ptr %18, i32 4476
  %28 = load i16, ptr %27, align 2
  %29 = xor i16 %28, %26
  %30 = zext i16 %29 to i32
  %31 = or i32 %24, %30
  %32 = icmp ne i32 %31, 0
  %33 = and i32 %22, 1
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  %36 = zext i16 %26 to i32
  %37 = or i32 %22, %36
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %35, i1 %38, i1 false
  br i1 %39, label %40, label %77

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.station_parameters, ptr %3, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 64
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load i32, ptr %20, align 8
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = getelementptr i8, ptr %18, i32 2976
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %77, label %52

52:                                               ; preds = %48, %45, %40
  %53 = tail call ptr @sta_info_alloc(ptr noundef %19, ptr noundef %2, i32 noundef 3264) #12
  %54 = icmp eq ptr %53, null
  br i1 %54, label %77, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %41, align 4
  %57 = and i32 %56, 64
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.sta_info, ptr %53, i32 0, i32 46, i32 17
  store i8 1, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = tail call fastcc i32 @sta_apply_parameters(ptr noundef %8, ptr noundef nonnull %53, ptr noundef %3)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  tail call void @sta_info_free(ptr noundef %8, ptr noundef nonnull %53) #12
  br label %77

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.sta_info, ptr %53, i32 0, i32 23
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, 2048
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load volatile i32, ptr %66, align 4
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void @rate_control_rate_init(ptr noundef nonnull %53) #12
  br label %75

75:                                               ; preds = %74, %70, %65
  %76 = tail call i32 @sta_info_insert(ptr noundef nonnull %53) #12
  br label %77

77:                                               ; preds = %75, %64, %52, %48, %17, %12
  %78 = phi i32 [ %62, %64 ], [ %76, %75 ], [ -22, %12 ], [ -22, %17 ], [ -22, %48 ], [ -12, %52 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_del_station(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = load ptr, ptr %2, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @sta_info_destroy_addr_bss(ptr noundef %4, ptr noundef nonnull %5) #12
  br label %11

9:                                                ; preds = %3
  %10 = tail call i32 @__sta_info_flush(ptr noundef %4, i1 noundef zeroext false) #12
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ 0, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_change_station(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8, !prof !10

7:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %10 = getelementptr inbounds %struct.wiphy, ptr %0, i32 2, i32 56, i32 15
  tail call void @mutex_lock(ptr noundef %10) #12
  %11 = tail call ptr @sta_info_get_bss(ptr noundef %5, ptr noundef %2) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %107, label %13

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %1, i32 3672
  %15 = load i32, ptr %14, align 8
  switch i32 %15, label %107 [
    i32 7, label %16
    i32 1, label %37
    i32 2, label %21
    i32 3, label %31
    i32 4, label %31
  ]

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %1, i32 3120
  %18 = load i8, ptr %17, align 8, !range !11
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i32 7, i32 8
  br label %37

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.sta_info, ptr %11, i32 0, i32 23
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = load volatile i32, ptr %22, align 4
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 5, i32 6
  br label %37

31:                                               ; preds = %13, %13
  %32 = getelementptr inbounds %struct.sta_info, ptr %11, i32 0, i32 23
  %33 = load volatile i32, ptr %32, align 4
  %34 = lshr i32 %33, 1
  %35 = and i32 %34, 1
  %36 = xor i32 %35, 1
  br label %37

37:                                               ; preds = %31, %26, %21, %16, %13
  %38 = phi i32 [ %20, %16 ], [ 4, %13 ], [ 3, %21 ], [ %30, %26 ], [ %36, %31 ]
  %39 = tail call i32 @cfg80211_check_station_change(ptr noundef nonnull %0, ptr noundef %3, i32 noundef %38) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %107

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.station_parameters, ptr %3, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %95, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.sta_info, ptr %11, i32 0, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %47, i32 0, i32 6
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %43, %49
  br i1 %50, label %95, label %51

51:                                               ; preds = %45
  %52 = getelementptr i8, ptr %43, i32 1408
  %53 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 70
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.wireless_dev, ptr %54, i32 0, i32 8
  %56 = load i8, ptr %55, align 4, !range !11
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %51
  %59 = getelementptr i8, ptr %43, i32 2824
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %107

62:                                               ; preds = %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  store volatile ptr %11, ptr %59, align 8
  tail call void @__ieee80211_check_fast_rx_iface(ptr noundef %52) #12
  %63 = load ptr, ptr %46, align 4
  %64 = getelementptr inbounds %struct.sta_info, ptr %11, i32 0, i32 46
  tail call fastcc void @drv_sta_set_4addr(ptr noundef %9, ptr noundef %63, ptr noundef %64, i1 noundef zeroext true)
  %65 = load ptr, ptr %46, align 4
  br label %66

66:                                               ; preds = %62, %51
  %67 = phi ptr [ %65, %62 ], [ %47, %51 ]
  %68 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %67, i32 0, i32 58
  %69 = load i32, ptr %68, align 8
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %67, i32 0, i32 57, i32 0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  tail call void @ieee80211_clear_fast_rx(ptr noundef nonnull %11) #12
  %76 = load ptr, ptr %46, align 4
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %76, i32 0, i32 57, i32 0, i32 0, i32 1
  store volatile ptr null, ptr %77, align 8
  br label %78

78:                                               ; preds = %75, %71, %66
  %79 = getelementptr inbounds %struct.sta_info, ptr %11, i32 0, i32 23
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %80, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr %46, align 4
  tail call void @ieee80211_vif_dec_num_mcast(ptr noundef %84) #12
  br label %85

85:                                               ; preds = %83, %78
  store ptr %52, ptr %46, align 4
  tail call void @ieee80211_check_fast_xmit(ptr noundef nonnull %11) #12
  %86 = load volatile i32, ptr %79, align 4
  %87 = and i32 %86, 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %46, align 4
  tail call void @ieee80211_vif_inc_num_mcast(ptr noundef %90) #12
  %91 = load ptr, ptr %46, align 4
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %91, i32 0, i32 6
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.sta_info, ptr %11, i32 0, i32 46, i32 1
  tail call void @cfg80211_send_layer2_update(ptr noundef %93, ptr noundef %94) #12
  br label %95

95:                                               ; preds = %89, %85, %45, %41
  %96 = tail call fastcc i32 @sta_apply_parameters(ptr noundef %9, ptr noundef nonnull %11, ptr noundef %3)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  tail call void @mutex_unlock(ptr noundef %10) #12
  %99 = load i32, ptr %14, align 8
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.station_parameters, ptr %3, i32 0, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 2
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  tail call void @ieee80211_recalc_ps(ptr noundef %9) #12
  tail call void @ieee80211_recalc_ps_vif(ptr noundef %5) #12
  br label %109

107:                                              ; preds = %95, %58, %37, %13, %8
  %108 = phi i32 [ %39, %37 ], [ %96, %95 ], [ -2, %8 ], [ -95, %13 ], [ -16, %58 ]
  tail call void @mutex_unlock(ptr noundef %10) #12
  br label %109

109:                                              ; preds = %107, %106, %101, %98
  %110 = phi i32 [ %108, %107 ], [ 0, %106 ], [ 0, %101 ], [ 0, %98 ]
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_get_station(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = getelementptr i8, ptr %1, i32 1764
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %8) #12
  %9 = tail call ptr @sta_info_get_bss(ptr noundef %5, ptr noundef %2) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @sta_set_sinfo(ptr noundef nonnull %9, ptr noundef %3, i1 noundef zeroext true) #12
  br label %12

12:                                               ; preds = %11, %4
  %13 = phi i32 [ 0, %11 ], [ -2, %4 ]
  tail call void @mutex_unlock(ptr noundef %8) #12
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_dump_station(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) #0 {
  %6 = getelementptr i8, ptr %1, i32 1408
  %7 = getelementptr i8, ptr %1, i32 1764
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %8, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %9) #12
  %10 = tail call ptr @sta_info_get_by_idx(ptr noundef %6, i32 noundef %2) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 46, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %3, ptr noundef align 8 dereferenceable(6) %13, i32 6, i1 false)
  tail call void @sta_set_sinfo(ptr noundef nonnull %10, ptr noundef %4, i1 noundef zeroext true) #12
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi i32 [ 0, %12 ], [ -2, %5 ]
  tail call void @mutex_unlock(ptr noundef %9) #12
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_join_ocb(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = tail call i32 @ieee80211_ocb_join(ptr noundef %4, ptr noundef %2) #12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_leave_ocb(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = tail call i32 @ieee80211_ocb_leave(ptr noundef %3) #12
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_change_bss(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = getelementptr i8, ptr %1, i32 2816
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %128, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %1, i32 1764
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %11 = getelementptr i8, ptr %1, i32 4492
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  br label %128

15:                                               ; preds = %8
  %16 = load ptr, ptr %12, align 4
  %17 = load i32, ptr %16, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  %18 = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr %struct.wiphy, ptr %19, i32 0, i32 53, i32 %17
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %128, label %23

23:                                               ; preds = %15
  %24 = load i32, ptr %2, align 4
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = icmp ne i32 %24, 0
  %28 = getelementptr i8, ptr %1, i32 3700
  %29 = zext i1 %27 to i8
  store i8 %29, ptr %28, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i32 [ 2, %26 ], [ 0, %23 ]
  %32 = getelementptr inbounds %struct.bss_parameters, ptr %2, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = icmp ne i32 %33, 0
  %37 = getelementptr i8, ptr %1, i32 3701
  %38 = zext i1 %36 to i8
  store i8 %38, ptr %37, align 1
  %39 = or i32 %31, 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i32 [ %39, %35 ], [ %31, %30 ]
  %42 = getelementptr i8, ptr %1, i32 3702
  %43 = load i8, ptr %42, align 2, !range !11
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %21, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  switch i32 %47, label %50 [
    i32 1, label %48
    i32 3, label %48
  ]

48:                                               ; preds = %45, %45
  store i8 1, ptr %42, align 2
  %49 = or i32 %41, 8
  br label %50

50:                                               ; preds = %48, %45, %40
  %51 = phi i32 [ %41, %40 ], [ %49, %48 ], [ %41, %45 ]
  %52 = getelementptr inbounds %struct.bss_parameters, ptr %2, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = icmp ne i32 %53, 0
  %57 = zext i1 %56 to i8
  store i8 %57, ptr %42, align 2
  %58 = or i32 %51, 8
  br label %59

59:                                               ; preds = %55, %50
  %60 = phi i32 [ %58, %55 ], [ %51, %50 ]
  %61 = getelementptr inbounds %struct.bss_parameters, ptr %2, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %59
  %65 = getelementptr i8, ptr %1, i32 3780
  %66 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %21, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 %67
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.bss_parameters, ptr %2, i32 0, i32 4
  %71 = load i8, ptr %70, align 4
  %72 = zext i8 %71 to i32
  %73 = getelementptr i8, ptr %1, i32 3728
  %74 = tail call i32 @ieee80211_parse_bitrates(ptr noundef %65, ptr noundef %69, ptr noundef nonnull %62, i32 noundef %72, ptr noundef %73) #12
  %75 = or i32 %60, 32
  tail call void @ieee80211_check_rate_mask(ptr noundef %4) #12
  br label %76

76:                                               ; preds = %64, %59
  %77 = phi i32 [ %75, %64 ], [ %60, %59 ]
  %78 = getelementptr inbounds %struct.bss_parameters, ptr %2, i32 0, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = icmp eq i32 %79, 0
  %83 = getelementptr i8, ptr %1, i32 1768
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, -9
  %86 = select i1 %82, i32 0, i32 8
  %87 = or i32 %85, %86
  store i32 %87, ptr %83, align 8
  tail call void @ieee80211_check_fast_rx_iface(ptr noundef %4) #12
  br label %88

88:                                               ; preds = %81, %76
  %89 = getelementptr inbounds %struct.bss_parameters, ptr %2, i32 0, i32 6
  %90 = load i32, ptr %89, align 4
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = trunc i32 %90 to i16
  %94 = getelementptr i8, ptr %1, i32 3760
  store i16 %93, ptr %94, align 8
  %95 = or i32 %77, 16
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i32 [ %95, %92 ], [ %77, %88 ]
  %98 = getelementptr inbounds %struct.bss_parameters, ptr %2, i32 0, i32 7
  %99 = load i8, ptr %98, align 4
  %100 = icmp sgt i8 %99, -1
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = getelementptr i8, ptr %1, i32 3905
  %103 = load i8, ptr %102, align 1
  %104 = and i8 %103, -128
  store i8 %104, ptr %102, align 1
  %105 = load i8, ptr %98, align 4
  %106 = and i8 %105, 127
  %107 = or i8 %106, %104
  store i8 %107, ptr %102, align 1
  %108 = or i32 %97, 524288
  br label %109

109:                                              ; preds = %101, %96
  %110 = phi i32 [ %108, %101 ], [ %97, %96 ]
  %111 = getelementptr inbounds %struct.bss_parameters, ptr %2, i32 0, i32 8
  %112 = load i8, ptr %111, align 1
  %113 = icmp sgt i8 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = getelementptr i8, ptr %1, i32 3905
  %116 = load i8, ptr %115, align 1
  %117 = or i8 %116, -128
  store i8 %117, ptr %115, align 1
  %118 = or i32 %110, 524288
  br label %126

119:                                              ; preds = %109
  %120 = icmp eq i8 %112, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %119
  %122 = getelementptr i8, ptr %1, i32 3905
  %123 = load i8, ptr %122, align 1
  %124 = and i8 %123, 127
  store i8 %124, ptr %122, align 1
  %125 = or i32 %110, 524288
  br label %126

126:                                              ; preds = %121, %119, %114
  %127 = phi i32 [ %118, %114 ], [ %125, %121 ], [ %110, %119 ]
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %4, i32 noundef %127) #12
  br label %128

128:                                              ; preds = %126, %15, %14, %3
  %129 = phi i32 [ 0, %126 ], [ -2, %3 ], [ -22, %15 ], [ -22, %14 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_txq_params(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.ieee80211_tx_queue_params, align 2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !10

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %9 = getelementptr i8, ptr %1, i32 1408
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %4) #12
  %10 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ieee80211_ops, ptr %11, i32 0, i32 40
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %45, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 25
  %17 = load i16, ptr %16, align 4
  %18 = icmp ult i16 %17, 4
  br i1 %18, label %45, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %4, i32 6
  store i64 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.ieee80211_txq_params, ptr %2, i32 0, i32 4
  %22 = load i8, ptr %21, align 2
  %23 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %4, i32 0, i32 3
  store i8 %22, ptr %23, align 2
  %24 = getelementptr inbounds %struct.ieee80211_txq_params, ptr %2, i32 0, i32 3
  %25 = load i16, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %4, i32 0, i32 2
  store i16 %25, ptr %26, align 2
  %27 = getelementptr inbounds %struct.ieee80211_txq_params, ptr %2, i32 0, i32 2
  %28 = load i16, ptr %27, align 2
  %29 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %4, i32 0, i32 1
  store i16 %28, ptr %29, align 2
  %30 = getelementptr inbounds %struct.ieee80211_txq_params, ptr %2, i32 0, i32 1
  %31 = load i16, ptr %30, align 4
  store i16 %31, ptr %4, align 2
  %32 = load i32, ptr %2, align 4
  call void @ieee80211_regulatory_limit_wmm_params(ptr noundef %9, ptr noundef nonnull %4, i32 noundef %32) #12
  %33 = load i32, ptr %2, align 4
  %34 = getelementptr %struct.ieee80211_sub_if_data, ptr %9, i32 0, i32 26, i32 %33
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(14) %34, ptr noundef nonnull align 2 dereferenceable(14) %4, i32 14, i1 false)
  %35 = load i32, ptr %2, align 4
  %36 = trunc i32 %35 to i16
  %37 = call i32 @drv_conf_tx(ptr noundef %8, ptr noundef %9, i16 noundef zeroext %36, ptr noundef nonnull %4) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %19
  %40 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 11
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.wiphy, ptr %41, i32 0, i32 56
  %43 = load i32, ptr %2, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %42, ptr noundef nonnull @.str.12, i32 noundef %43) #13
  br label %45

44:                                               ; preds = %19
  call void @ieee80211_bss_info_change_notify(ptr noundef %9, i32 noundef 8192) #12
  br label %45

45:                                               ; preds = %44, %39, %15, %7
  %46 = phi i32 [ -22, %39 ], [ 0, %44 ], [ -95, %7 ], [ -95, %15 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %4) #12
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_monitor_channel(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 6, i32 56, i32 9, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %1, align 4
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.wiphy, ptr %0, i32 6, i32 56, i32 9, i32 3, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.wiphy, ptr %0, i32 6, i32 56, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.wiphy, ptr %0, i32 6, i32 56, i32 10, i32 2
  %25 = load i16, ptr %24, align 4
  %26 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 5
  %27 = load i16, ptr %26, align 4
  %28 = icmp eq i16 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.wiphy, ptr %0, i32 6, i32 56, i32 10, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %59, label %35

35:                                               ; preds = %29, %23, %17, %11, %5
  %36 = getelementptr inbounds %struct.wiphy, ptr %0, i32 5, i32 56, i32 25
  tail call void @mutex_lock(ptr noundef %36) #12
  %37 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 26
  %38 = load i8, ptr %37, align 1, !range !11
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.wiphy, ptr %0, i32 6, i32 56, i32 9, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %56, label %53

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.wiphy, ptr %0, i32 2, i32 56, i32 11, i32 8, i32 0, i32 1
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 14
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.wiphy, ptr %0, i32 6, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %51, ptr noundef align 4 dereferenceable(28) %1, i32 28, i1 false)
  %52 = tail call i32 @ieee80211_hw_config(ptr noundef %6, i32 noundef 0) #12
  br label %56

53:                                               ; preds = %40
  tail call void @ieee80211_vif_release_channel(ptr noundef nonnull %42) #12
  %54 = tail call i32 @ieee80211_vif_use_channel(ptr noundef nonnull %42, ptr noundef %1, i32 noundef 1) #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %50, %44, %40
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %7, ptr noundef align 4 dereferenceable(28) %1, i32 28, i1 false)
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32 [ 0, %56 ], [ %54, %53 ]
  tail call void @mutex_unlock(ptr noundef %36) #12
  br label %59

59:                                               ; preds = %57, %29
  %60 = phi i32 [ %58, %57 ], [ 0, %29 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_scan(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -8
  %6 = getelementptr i8, ptr %4, i32 2256
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr i8, ptr %4, i32 3062
  %9 = load i8, ptr %8, align 2, !range !11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  switch i32 %7, label %37 [
    i32 2, label %35
    i32 3, label %13
    i32 1, label %35
    i32 7, label %35
    i32 8, label %35
    i32 10, label %35
    i32 9, label %13
  ]

12:                                               ; preds = %2
  switch i32 %7, label %37 [
    i32 2, label %35
    i32 1, label %35
    i32 7, label %35
    i32 8, label %35
    i32 10, label %35
    i32 9, label %13
    i32 3, label %21
  ]

13:                                               ; preds = %12, %11, %11
  %14 = getelementptr i8, ptr %4, i32 348
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ieee80211_local, ptr %15, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ieee80211_ops, ptr %17, i32 0, i32 21
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %13, %12
  %22 = getelementptr i8, ptr %4, i32 1400
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 13
  %27 = load i32, ptr %26, align 32
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30, %21, %13, %12, %12, %12, %12, %12, %11, %11, %11, %11, %11
  %36 = tail call i32 @ieee80211_request_scan(ptr noundef %5, ptr noundef %1) #12
  br label %37

37:                                               ; preds = %35, %30, %25, %12, %11
  %38 = phi i32 [ %36, %35 ], [ -95, %30 ], [ -95, %25 ], [ -95, %12 ], [ -95, %11 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_abort_scan(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  tail call void @ieee80211_scan_cancel(ptr noundef %6) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_auth(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = tail call i32 @ieee80211_mgd_auth(ptr noundef %4, ptr noundef %2) #12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_assoc(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = tail call i32 @ieee80211_mgd_assoc(ptr noundef %4, ptr noundef %2) #12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_deauth(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = tail call i32 @ieee80211_mgd_deauth(ptr noundef %4, ptr noundef %2) #12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_disassoc(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = tail call i32 @ieee80211_mgd_disassoc(ptr noundef %4, ptr noundef %2) #12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_join_ibss(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = tail call i32 @ieee80211_ibss_join(ptr noundef %4, ptr noundef %2) #12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_leave_ibss(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = tail call i32 @ieee80211_ibss_leave(ptr noundef %3) #12
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_mcast_rate(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = getelementptr i8, ptr %1, i32 3736
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %5, ptr noundef align 4 dereferenceable(24) %2, i32 24, i1 false)
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %4, i32 noundef 33554432) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_wiphy_params(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %7 = and i32 %1, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %55, label %9

9:                                                ; preds = %5
  tail call void @ieee80211_check_fast_xmit_all(ptr noundef %6) #12
  %10 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 35
  %11 = load i32, ptr %10, align 8
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_set_frag_threshold, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = tail call ptr @llvm.thread.pointer() #12
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !33
  %26 = tail call i32 @__traceiter_drv_set_frag_threshold(ptr noundef null, ptr noundef %6, i32 noundef %11) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !34
  br label %27

27:                                               ; preds = %25, %14, %9
  %28 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ieee80211_ops, ptr %29, i32 0, i32 29
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = tail call i32 %31(ptr noundef %6, i32 noundef %11) #12
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi i32 [ %34, %33 ], [ 0, %27 ]
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = tail call ptr @llvm.thread.pointer() #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %51 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %6, i32 noundef %36) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %52

52:                                               ; preds = %50, %39, %35
  %53 = icmp eq i32 %36, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %52
  tail call void @ieee80211_check_fast_xmit_all(ptr noundef %6) #12
  br label %182

55:                                               ; preds = %52, %5
  %56 = and i32 %1, 48
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %107, label %58

58:                                               ; preds = %55
  %59 = and i32 %1, 16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 37
  %63 = load i8, ptr %62, align 16
  %64 = zext i8 %63 to i16
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi i16 [ %64, %61 ], [ -1, %58 ]
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_set_coverage_class, i32 0, i32 1), align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = tail call ptr @llvm.thread.pointer() #12
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 5
  %74 = getelementptr i32, ptr @__cpu_online_mask, i32 %73
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %72, 31
  %77 = shl nuw i32 1, %76
  %78 = and i32 %77, %75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  %81 = tail call i32 @__traceiter_drv_set_coverage_class(ptr noundef null, ptr noundef %6, i16 noundef signext %66) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  br label %82

82:                                               ; preds = %80, %69, %65
  %83 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.ieee80211_ops, ptr %84, i32 0, i32 49
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  tail call void %86(ptr noundef %6, i16 noundef signext %66) #12
  br label %89

89:                                               ; preds = %88, %82
  %90 = phi i32 [ 0, %88 ], [ -95, %82 ]
  %91 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = tail call ptr @llvm.thread.pointer() #12
  %95 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 2
  %96 = load i32, ptr %95, align 8
  %97 = lshr i32 %96, 5
  %98 = getelementptr i32, ptr @__cpu_online_mask, i32 %97
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %96, 31
  %101 = shl nuw i32 1, %100
  %102 = and i32 %101, %99
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %93
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %105 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %6, i32 noundef %90) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %106

106:                                              ; preds = %104, %93, %89
  br i1 %87, label %182, label %107

107:                                              ; preds = %106, %55
  %108 = and i32 %1, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %155, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 36
  %112 = load i32, ptr %111, align 4
  %113 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_set_rts_threshold, i32 0, i32 1), align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %110
  %116 = tail call ptr @llvm.thread.pointer() #12
  %117 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2
  %118 = load i32, ptr %117, align 8
  %119 = lshr i32 %118, 5
  %120 = getelementptr i32, ptr @__cpu_online_mask, i32 %119
  %121 = load volatile i32, ptr %120, align 4
  %122 = and i32 %118, 31
  %123 = shl nuw i32 1, %122
  %124 = and i32 %123, %121
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %115
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !37
  %127 = tail call i32 @__traceiter_drv_set_rts_threshold(ptr noundef null, ptr noundef %6, i32 noundef %112) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !38
  br label %128

128:                                              ; preds = %126, %115, %110
  %129 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.ieee80211_ops, ptr %130, i32 0, i32 30
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %128
  %135 = tail call i32 %132(ptr noundef %6, i32 noundef %112) #12
  br label %136

136:                                              ; preds = %134, %128
  %137 = phi i32 [ %135, %134 ], [ 0, %128 ]
  %138 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %136
  %141 = tail call ptr @llvm.thread.pointer() #12
  %142 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 2
  %143 = load i32, ptr %142, align 8
  %144 = lshr i32 %143, 5
  %145 = getelementptr i32, ptr @__cpu_online_mask, i32 %144
  %146 = load volatile i32, ptr %145, align 4
  %147 = and i32 %143, 31
  %148 = shl nuw i32 1, %147
  %149 = and i32 %148, %146
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %140
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %152 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %6, i32 noundef %137) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %153

153:                                              ; preds = %151, %140, %136
  %154 = icmp eq i32 %137, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %153, %107
  %156 = and i32 %1, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 33
  %160 = load i8, ptr %159, align 4
  %161 = icmp ugt i8 %160, 31
  br i1 %161, label %182, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 3, i32 1
  store i8 %160, ptr %163, align 8
  br label %164

164:                                              ; preds = %162, %155
  %165 = and i32 %1, 2
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 34
  %169 = load i8, ptr %168, align 1
  %170 = icmp ugt i8 %169, 31
  br i1 %170, label %182, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.ieee80211_conf, ptr %6, i32 0, i32 5
  store i8 %169, ptr %172, align 1
  br label %173

173:                                              ; preds = %171, %164
  %174 = and i32 %1, 3
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %173
  %177 = tail call i32 @ieee80211_hw_config(ptr noundef %6, i32 noundef 128) #12
  br label %178

178:                                              ; preds = %176, %173
  %179 = and i32 %1, 448
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  tail call void @ieee80211_txq_set_params(ptr noundef %6) #12
  br label %182

182:                                              ; preds = %181, %178, %167, %158, %153, %106, %54
  %183 = phi i32 [ %36, %54 ], [ %90, %106 ], [ %137, %153 ], [ -22, %158 ], [ -22, %167 ], [ 0, %181 ], [ 0, %178 ]
  ret i32 %183
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_tx_power(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !10

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

7:                                                ; preds = %4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %7
  %10 = getelementptr i8, ptr %1, i32 -8
  %11 = getelementptr i8, ptr %1, i32 2256
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.wiphy, ptr %0, i32 6, i32 56, i32 9, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %104, label %18

18:                                               ; preds = %14, %9
  %19 = phi ptr [ %16, %14 ], [ %10, %9 ]
  switch i32 %2, label %31 [
    i32 0, label %27
    i32 1, label %20
    i32 2, label %20
  ]

20:                                               ; preds = %18, %18
  %21 = icmp sgt i32 %3, -1
  %22 = srem i32 %3, 100
  %23 = icmp eq i32 %22, 0
  %24 = and i1 %21, %23
  br i1 %24, label %25, label %104

25:                                               ; preds = %20
  %26 = udiv i32 %3, 100
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi i32 [ %26, %25 ], [ -2147483648, %18 ]
  %29 = phi i32 [ %2, %25 ], [ 1, %18 ]
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %19, i32 0, i32 45
  store i32 %28, ptr %30, align 4
  br label %31

31:                                               ; preds = %27, %18
  %32 = phi i32 [ %2, %18 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %19, i32 0, i32 58, i32 1, i32 43
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 %32, ptr %33, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = xor i1 %35, true
  tail call void @ieee80211_recalc_txpower(ptr noundef %19, i1 noundef zeroext %38) #12
  br label %104

39:                                               ; preds = %7
  switch i32 %2, label %51 [
    i32 0, label %47
    i32 1, label %40
    i32 2, label %40
  ]

40:                                               ; preds = %39, %39
  %41 = icmp sgt i32 %3, -1
  %42 = srem i32 %3, 100
  %43 = icmp eq i32 %42, 0
  %44 = and i1 %41, %43
  br i1 %44, label %45, label %104

45:                                               ; preds = %40
  %46 = udiv i32 %3, 100
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi i32 [ %46, %45 ], [ -2147483648, %39 ]
  %49 = phi i32 [ %2, %45 ], [ 1, %39 ]
  %50 = getelementptr inbounds %struct.wiphy, ptr %0, i32 6, i32 42
  store i32 %48, ptr %50, align 8
  br label %51

51:                                               ; preds = %47, %39
  %52 = phi i32 [ %2, %39 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.wiphy, ptr %0, i32 5, i32 56, i32 18
  tail call void @mutex_lock(ptr noundef %53) #12
  %54 = getelementptr inbounds %struct.wiphy, ptr %0, i32 5, i32 56, i32 15
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  tail call void @mutex_unlock(ptr noundef %53) #12
  br label %104

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.wiphy, ptr %0, i32 6, i32 42
  br label %63

60:                                               ; preds = %77
  %61 = load ptr, ptr %54, align 8
  %62 = icmp eq ptr %61, %54
  br i1 %62, label %91, label %82

63:                                               ; preds = %77, %58
  %64 = phi ptr [ %55, %58 ], [ %80, %77 ]
  %65 = phi i1 [ false, %58 ], [ %79, %77 ]
  %66 = phi i1 [ false, %58 ], [ %78, %77 ]
  %67 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %64, i32 0, i32 58
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %68, 6
  br i1 %69, label %77, label %70

70:                                               ; preds = %63
  %71 = load i32, ptr %59, align 8
  %72 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %64, i32 0, i32 45
  store i32 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %64, i32 0, i32 58, i32 1, i32 43
  %74 = load i32, ptr %73, align 4
  %75 = icmp ne i32 %52, %74
  %76 = select i1 %75, i1 true, i1 %65
  store i32 %52, ptr %73, align 4
  br label %77

77:                                               ; preds = %70, %63
  %78 = phi i1 [ %66, %70 ], [ true, %63 ]
  %79 = phi i1 [ %76, %70 ], [ %65, %63 ]
  %80 = load ptr, ptr %64, align 8
  %81 = icmp eq ptr %80, %54
  br i1 %81, label %60, label %63

82:                                               ; preds = %88, %60
  %83 = phi ptr [ %89, %88 ], [ %61, %60 ]
  %84 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %83, i32 0, i32 58
  %85 = load i32, ptr %84, align 8
  %86 = icmp eq i32 %85, 6
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  tail call void @ieee80211_recalc_txpower(ptr noundef %83, i1 noundef zeroext %79) #12
  br label %88

88:                                               ; preds = %87, %82
  %89 = load ptr, ptr %83, align 8
  %90 = icmp eq ptr %89, %54
  br i1 %90, label %91, label %82

91:                                               ; preds = %88, %60
  tail call void @mutex_unlock(ptr noundef %53) #12
  br i1 %78, label %92, label %104

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.wiphy, ptr %0, i32 6, i32 56, i32 9, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.wiphy, ptr %0, i32 6, i32 42
  %98 = load i32, ptr %97, align 8
  %99 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %94, i32 0, i32 45
  store i32 %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %94, i32 0, i32 58, i32 1, i32 43
  %101 = load i32, ptr %100, align 4
  %102 = icmp ne i32 %52, %101
  %103 = select i1 %102, i1 true, i1 %79
  store i32 %52, ptr %100, align 4
  tail call void @ieee80211_recalc_txpower(ptr noundef nonnull %94, i1 noundef zeroext %103) #12
  br label %104

104:                                              ; preds = %96, %92, %91, %57, %40, %37, %20, %14
  %105 = phi i32 [ 0, %37 ], [ -95, %14 ], [ -95, %20 ], [ -95, %40 ], [ 0, %92 ], [ 0, %96 ], [ 0, %91 ], [ 0, %57 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_get_tx_power(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %8 = getelementptr i8, ptr %1, i32 -8
  %9 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ieee80211_ops, ptr %10, i32 0, i32 85
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %6
  %15 = getelementptr i8, ptr %1, i32 2256
  %16 = tail call i32 %12(ptr noundef %7, ptr noundef %15, ptr noundef %2) #12
  %17 = load i32, ptr %2, align 4
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_get_txpower, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = tail call ptr @llvm.thread.pointer() #12
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !39
  %32 = tail call i32 @__traceiter_drv_get_txpower(ptr noundef null, ptr noundef %7, ptr noundef %8, i32 noundef %17, i32 noundef %16) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !40
  br label %41

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 26
  %35 = load i8, ptr %34, align 1, !range !11
  %36 = icmp eq i8 %35, 0
  %37 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 0, i32 1
  %38 = getelementptr i8, ptr %1, i32 2480
  %39 = select i1 %36, ptr %37, ptr %38
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %2, align 4
  br label %41

41:                                               ; preds = %33, %31, %20, %14
  %42 = phi i32 [ 0, %33 ], [ %16, %14 ], [ %16, %20 ], [ %16, %31 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_rfkill_poll(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !10

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_ops, ptr %6, i32 0, i32 48
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  tail call void %8(ptr noundef %11) #12
  br label %12

12:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_bitrate_mask(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !10

9:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #12, !srcloc !41
  unreachable

10:                                               ; preds = %4
  %11 = load ptr, ptr %7, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !10

13:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 85
  %16 = getelementptr i8, ptr %1, i32 1772
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %190, label %20

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %1, i32 4492
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %1, i32 3780
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %1, i32 3728
  %30 = load i32, ptr %29, align 8
  %31 = load i32, ptr %26, align 4
  %32 = getelementptr [6 x %struct.anon.123], ptr %3, i32 0, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, %30
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %190, label %36

36:                                               ; preds = %28, %24, %20
  %37 = getelementptr inbounds %struct.wiphy, ptr %11, i32 1, i32 14
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %100, label %41

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %1, i32 1768
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 32
  %45 = icmp eq i32 %44, 0
  %46 = load i1, ptr @drv_set_bitrate_mask.__already_done, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %55, !prof !10

49:                                               ; preds = %41
  store i1 true, ptr @drv_set_bitrate_mask.__already_done, align 1
  %50 = getelementptr i8, ptr %1, i32 1760
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  %53 = getelementptr i8, ptr %1, i32 1776
  %54 = select i1 %52, ptr %53, ptr %51
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 757, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %54, i32 noundef %43) #12
  br label %55

55:                                               ; preds = %49, %41
  br i1 %45, label %190, label %56

56:                                               ; preds = %55
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_set_bitrate_mask, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = tail call ptr @llvm.thread.pointer() #12
  %61 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 5
  %64 = getelementptr i32, ptr @__cpu_online_mask, i32 %63
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %62, 31
  %67 = shl nuw i32 1, %66
  %68 = and i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %59
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !42
  %71 = tail call i32 @__traceiter_drv_set_bitrate_mask(ptr noundef null, ptr noundef %15, ptr noundef %5, ptr noundef %3) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !43
  br label %72

72:                                               ; preds = %70, %59, %56
  %73 = getelementptr inbounds %struct.wiphy, ptr %11, i32 1, i32 56, i32 11, i32 16
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.ieee80211_ops, ptr %74, i32 0, i32 59
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = getelementptr i8, ptr %1, i32 3672
  %80 = tail call i32 %76(ptr noundef %15, ptr noundef %79, ptr noundef %3) #12
  br label %81

81:                                               ; preds = %78, %72
  %82 = phi i32 [ %80, %78 ], [ -95, %72 ]
  %83 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = tail call ptr @llvm.thread.pointer() #12
  %87 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %88 = load i32, ptr %87, align 8
  %89 = lshr i32 %88, 5
  %90 = getelementptr i32, ptr @__cpu_online_mask, i32 %89
  %91 = load volatile i32, ptr %90, align 4
  %92 = and i32 %88, 31
  %93 = shl nuw i32 1, %92
  %94 = and i32 %93, %91
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %85
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %97 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %15, i32 noundef %82) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %98

98:                                               ; preds = %96, %85, %81
  %99 = icmp eq i32 %82, 0
  br i1 %99, label %100, label %190

100:                                              ; preds = %98, %36
  br label %101

101:                                              ; preds = %187, %100
  %102 = phi i32 [ %188, %187 ], [ 0, %100 ]
  %103 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 %102
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr [6 x %struct.anon.123], ptr %3, i32 0, i32 %102
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 50, i32 %102
  store i32 %106, ptr %107, align 4
  %108 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 52, i32 %102
  %109 = getelementptr [6 x %struct.anon.123], ptr %3, i32 0, i32 %102, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(10) %108, ptr noundef align 4 dereferenceable(10) %109, i32 10, i1 false)
  %110 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 54, i32 %102
  %111 = getelementptr [6 x %struct.anon.123], ptr %3, i32 0, i32 %102, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %110, ptr noundef align 2 dereferenceable(16) %111, i32 16, i1 false)
  %112 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 51, i32 %102
  store i8 0, ptr %112, align 1
  %113 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 53, i32 %102
  store i8 0, ptr %113, align 1
  %114 = icmp eq ptr %104, null
  br i1 %114, label %187, label %115

115:                                              ; preds = %101
  %116 = load i8, ptr %108, align 1
  %117 = icmp eq i8 %116, -1
  br i1 %117, label %118, label %154

118:                                              ; preds = %115
  %119 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 52, i32 %102, i32 1
  %120 = load i8, ptr %119, align 1
  %121 = icmp eq i8 %120, -1
  br i1 %121, label %122, label %154

122:                                              ; preds = %118
  %123 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 52, i32 %102, i32 2
  %124 = load i8, ptr %123, align 1
  %125 = icmp eq i8 %124, -1
  br i1 %125, label %126, label %154

126:                                              ; preds = %122
  %127 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 52, i32 %102, i32 3
  %128 = load i8, ptr %127, align 1
  %129 = icmp eq i8 %128, -1
  br i1 %129, label %130, label %154

130:                                              ; preds = %126
  %131 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 52, i32 %102, i32 4
  %132 = load i8, ptr %131, align 1
  %133 = icmp eq i8 %132, -1
  br i1 %133, label %134, label %154

134:                                              ; preds = %130
  %135 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 52, i32 %102, i32 5
  %136 = load i8, ptr %135, align 1
  %137 = icmp eq i8 %136, -1
  br i1 %137, label %138, label %154

138:                                              ; preds = %134
  %139 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 52, i32 %102, i32 6
  %140 = load i8, ptr %139, align 1
  %141 = icmp eq i8 %140, -1
  br i1 %141, label %142, label %154

142:                                              ; preds = %138
  %143 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 52, i32 %102, i32 7
  %144 = load i8, ptr %143, align 1
  %145 = icmp eq i8 %144, -1
  br i1 %145, label %146, label %154

146:                                              ; preds = %142
  %147 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 52, i32 %102, i32 8
  %148 = load i8, ptr %147, align 1
  %149 = icmp eq i8 %148, -1
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 52, i32 %102, i32 9
  %152 = load i8, ptr %151, align 1
  %153 = icmp eq i8 %152, -1
  br i1 %153, label %155, label %154

154:                                              ; preds = %150, %146, %142, %138, %134, %130, %126, %122, %118, %115
  store i8 1, ptr %112, align 1
  br label %155

155:                                              ; preds = %154, %150
  %156 = load i16, ptr %110, align 2
  %157 = icmp eq i16 %156, -1
  br i1 %157, label %158, label %186

158:                                              ; preds = %155
  %159 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 54, i32 %102, i32 1
  %160 = load i16, ptr %159, align 2
  %161 = icmp eq i16 %160, -1
  br i1 %161, label %162, label %186

162:                                              ; preds = %158
  %163 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 54, i32 %102, i32 2
  %164 = load i16, ptr %163, align 2
  %165 = icmp eq i16 %164, -1
  br i1 %165, label %166, label %186

166:                                              ; preds = %162
  %167 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 54, i32 %102, i32 3
  %168 = load i16, ptr %167, align 2
  %169 = icmp eq i16 %168, -1
  br i1 %169, label %170, label %186

170:                                              ; preds = %166
  %171 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 54, i32 %102, i32 4
  %172 = load i16, ptr %171, align 2
  %173 = icmp eq i16 %172, -1
  br i1 %173, label %174, label %186

174:                                              ; preds = %170
  %175 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 54, i32 %102, i32 5
  %176 = load i16, ptr %175, align 2
  %177 = icmp eq i16 %176, -1
  br i1 %177, label %178, label %186

178:                                              ; preds = %174
  %179 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 54, i32 %102, i32 6
  %180 = load i16, ptr %179, align 2
  %181 = icmp eq i16 %180, -1
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 54, i32 %102, i32 7
  %184 = load i16, ptr %183, align 2
  %185 = icmp eq i16 %184, -1
  br i1 %185, label %187, label %186

186:                                              ; preds = %182, %178, %174, %170, %166, %162, %158, %155
  store i8 1, ptr %113, align 1
  br label %187

187:                                              ; preds = %186, %182, %101
  %188 = add nuw nsw i32 %102, 1
  %189 = icmp eq i32 %188, 6
  br i1 %189, label %190, label %101

190:                                              ; preds = %187, %98, %55, %28, %14
  %191 = phi i32 [ -22, %28 ], [ -100, %14 ], [ %82, %98 ], [ -5, %55 ], [ 0, %187 ]
  ret i32 %191
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_dump_survey(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #12, !srcloc !41
  unreachable

9:                                                ; preds = %4
  %10 = load ptr, ptr %6, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 85
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_get_survey, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #12
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !44
  %29 = tail call i32 @__traceiter_drv_get_survey(ptr noundef null, ptr noundef %14, i32 noundef %2, ptr noundef %3) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !45
  br label %30

30:                                               ; preds = %28, %17, %13
  %31 = getelementptr inbounds %struct.wiphy, ptr %10, i32 1, i32 56, i32 11, i32 16
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ieee80211_ops, ptr %32, i32 0, i32 47
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = tail call i32 %34(ptr noundef %14, i32 noundef %2, ptr noundef %3) #12
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi i32 [ %37, %36 ], [ -95, %30 ]
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = tail call ptr @llvm.thread.pointer() #12
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 5
  %47 = getelementptr i32, ptr @__cpu_online_mask, i32 %46
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %45, 31
  %50 = shl nuw i32 1, %49
  %51 = and i32 %50, %48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %54 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %14, i32 noundef %39) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %55

55:                                               ; preds = %53, %42, %38
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_remain_on_channel(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_cancel_remain_on_channel(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_mgmt_tx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_mgmt_tx_cancel_wait(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_power_mgmt(ptr nocapture noundef readnone %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = zext i1 %2 to i8
  %6 = getelementptr i8, ptr %1, i32 1408
  %7 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5581, 0\0A.popsection", ""() #12, !srcloc !41
  unreachable

11:                                               ; preds = %4
  %12 = load ptr, ptr %8, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !10

14:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 85
  %17 = getelementptr i8, ptr %1, i32 3672
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %45

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.wiphy, ptr %12, i32 1, i32 14
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 256
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %1, i32 2994
  %27 = load i8, ptr %26, align 2, !range !11
  %28 = icmp eq i8 %27, %5
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wiphy, ptr %12, i32 6, i32 41
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %3
  br i1 %32, label %45, label %33

33:                                               ; preds = %29, %25
  store i8 %5, ptr %26, align 2
  %34 = getelementptr inbounds %struct.wiphy, ptr %12, i32 6, i32 41
  store i32 %3, ptr %34, align 4
  %35 = getelementptr i8, ptr %1, i32 1452
  tail call void @mutex_lock(ptr noundef %35) #12
  %36 = getelementptr i8, ptr %1, i32 3000
  %37 = load i32, ptr %36, align 8
  %38 = tail call i32 @__ieee80211_request_smps_mgd(ptr noundef %6, i32 noundef %37)
  tail call void @mutex_unlock(ptr noundef %35) #12
  %39 = load volatile i32, ptr %21, align 4
  %40 = and i32 %39, 1024
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = tail call i32 @ieee80211_hw_config(ptr noundef %16, i32 noundef 16) #12
  br label %44

44:                                               ; preds = %42, %33
  tail call void @ieee80211_recalc_ps(ptr noundef %16) #12
  tail call void @ieee80211_recalc_ps_vif(ptr noundef %6) #12
  tail call void @ieee80211_check_fast_rx_iface(ptr noundef %6) #12
  br label %45

45:                                               ; preds = %44, %29, %20, %15
  %46 = phi i32 [ 0, %44 ], [ -95, %15 ], [ -95, %20 ], [ 0, %29 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_cqm_rssi_config(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = getelementptr i8, ptr %1, i32 3764
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, %2
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %1, i32 3768
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, %3
  br i1 %12, label %30, label %13

13:                                               ; preds = %9, %4
  %14 = getelementptr i8, ptr %1, i32 4496
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = and i32 %15, 2
  %20 = icmp eq i32 %19, 0
  store i32 %2, ptr %6, align 4
  %21 = getelementptr i8, ptr %1, i32 3768
  store i32 %3, ptr %21, align 8
  %22 = getelementptr i8, ptr %1, i32 3772
  store i32 0, ptr %22, align 4
  %23 = getelementptr i8, ptr %1, i32 3776
  store i32 0, ptr %23, align 8
  %24 = getelementptr i8, ptr %1, i32 3076
  store i32 0, ptr %24, align 4
  %25 = getelementptr i8, ptr %1, i32 2976
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, i1 true, i1 %20
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %5, i32 noundef 1024) #12
  br label %30

30:                                               ; preds = %29, %18, %13, %9
  %31 = phi i32 [ 0, %9 ], [ -95, %13 ], [ 0, %29 ], [ 0, %18 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_cqm_rssi_range_config(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = getelementptr i8, ptr %1, i32 4496
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %1, i32 3772
  store i32 %2, ptr %11, align 4
  %12 = getelementptr i8, ptr %1, i32 3776
  store i32 %3, ptr %12, align 8
  %13 = getelementptr i8, ptr %1, i32 3764
  store i32 0, ptr %13, align 4
  %14 = getelementptr i8, ptr %1, i32 3768
  store i32 0, ptr %14, align 8
  %15 = getelementptr i8, ptr %1, i32 3076
  store i32 0, ptr %15, align 4
  %16 = getelementptr i8, ptr %1, i32 2976
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = and i32 %7, 2
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %10
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %5, i32 noundef 1024) #12
  br label %23

23:                                               ; preds = %22, %10, %4
  %24 = phi i32 [ -95, %4 ], [ 0, %22 ], [ 0, %10 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_update_mgmt_frame_registrations(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %8 = getelementptr i8, ptr %1, i32 -8
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 22
  %10 = load i8, ptr %9, align 4, !range !11
  %11 = zext i8 %10 to i32
  %12 = load i32, ptr %2, align 4
  %13 = lshr i32 %12, 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, %11
  br i1 %15, label %16, label %25

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 23
  %18 = load i8, ptr %17, align 1, !range !11
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.mgmt_frame_regs, ptr %2, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 13
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, %19
  br label %25

25:                                               ; preds = %16, %6
  %26 = phi i1 [ true, %6 ], [ %24, %16 ]
  %27 = trunc i32 %12 to i8
  %28 = lshr i8 %27, 4
  %29 = and i8 %28, 1
  store i8 %29, ptr %9, align 4
  %30 = getelementptr inbounds %struct.mgmt_frame_regs, ptr %2, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 23
  %33 = lshr i32 %31, 13
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  store i8 %35, ptr %32, align 1
  %36 = getelementptr i8, ptr %1, i32 3088
  %37 = load i8, ptr %36, align 8, !range !11
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.mgmt_frame_regs, ptr %2, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, %38
  br i1 %43, label %44, label %53

44:                                               ; preds = %25
  %45 = getelementptr i8, ptr %1, i32 3089
  %46 = load i8, ptr %45, align 1, !range !11
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds %struct.mgmt_frame_regs, ptr %2, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %49, 13
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, %47
  br label %53

53:                                               ; preds = %44, %25
  %54 = phi i1 [ true, %25 ], [ %52, %44 ]
  %55 = trunc i32 %40 to i8
  %56 = lshr i8 %55, 4
  %57 = and i8 %56, 1
  store i8 %57, ptr %36, align 8
  %58 = getelementptr inbounds %struct.mgmt_frame_regs, ptr %2, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr i8, ptr %1, i32 3089
  %61 = lshr i32 %59, 13
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  store i8 %63, ptr %60, align 1
  %64 = getelementptr inbounds %struct.wiphy, ptr %0, i32 2, i32 56, i32 11, i32 8, i32 0, i32 1
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %117, label %67

67:                                               ; preds = %53
  br i1 %54, label %68, label %115

68:                                               ; preds = %67
  %69 = getelementptr i8, ptr %1, i32 356
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %115, label %73

73:                                               ; preds = %68
  %74 = zext i8 %57 to i32
  %75 = shl nuw nsw i32 %74, 8
  %76 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_config_iface_filter, i32 0, i32 1), align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = tail call ptr @llvm.thread.pointer() #12
  %80 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 2
  %81 = load i32, ptr %80, align 8
  %82 = lshr i32 %81, 5
  %83 = getelementptr i32, ptr @__cpu_online_mask, i32 %82
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %81, 31
  %86 = shl nuw i32 1, %85
  %87 = and i32 %86, %84
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %78
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !46
  %90 = tail call i32 @__traceiter_drv_config_iface_filter(ptr noundef null, ptr noundef %7, ptr noundef %8, i32 noundef %75, i32 noundef 256) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !47
  br label %91

91:                                               ; preds = %89, %78, %73
  %92 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.ieee80211_ops, ptr %93, i32 0, i32 15
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = getelementptr i8, ptr %1, i32 2256
  tail call void %95(ptr noundef %7, ptr noundef %98, i32 noundef %75, i32 noundef 256) #12
  br label %99

99:                                               ; preds = %97, %91
  %100 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = tail call ptr @llvm.thread.pointer() #12
  %104 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %105 = load i32, ptr %104, align 8
  %106 = lshr i32 %105, 5
  %107 = getelementptr i32, ptr @__cpu_online_mask, i32 %106
  %108 = load volatile i32, ptr %107, align 4
  %109 = and i32 %105, 31
  %110 = shl nuw i32 1, %109
  %111 = and i32 %110, %108
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %102
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !25
  %114 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %7) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  br label %115

115:                                              ; preds = %113, %102, %99, %68, %67
  br i1 %26, label %116, label %117

116:                                              ; preds = %115
  tail call void @ieee80211_configure_filter(ptr noundef %7) #12
  br label %117

117:                                              ; preds = %116, %115, %53
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_antenna(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 35
  %9 = load i8, ptr %8, align 1, !range !11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ieee80211_ops, ptr %13, i32 0, i32 52
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call i32 %15(ptr noundef %7, i32 noundef %1, i32 noundef %2) #12
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi i32 [ %18, %17 ], [ -95, %11 ]
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_set_antenna, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = tail call ptr @llvm.thread.pointer() #12
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 5
  %28 = getelementptr i32, ptr @__cpu_online_mask, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %26, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !48
  %35 = tail call i32 @__traceiter_drv_set_antenna(ptr noundef null, ptr noundef %7, i32 noundef %1, i32 noundef %2, i32 noundef %20) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !49
  br label %36

36:                                               ; preds = %34, %23, %19, %6
  %37 = phi i32 [ -95, %6 ], [ %20, %19 ], [ %20, %23 ], [ %20, %34 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_get_antenna(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ieee80211_ops, ptr %9, i32 0, i32 53
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = tail call i32 %11(ptr noundef %7, ptr noundef %1, ptr noundef %2) #12
  br label %15

15:                                               ; preds = %13, %6
  %16 = phi i32 [ %14, %13 ], [ -95, %6 ]
  %17 = load i32, ptr %1, align 4
  %18 = load i32, ptr %2, align 4
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_get_antenna, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = tail call ptr @llvm.thread.pointer() #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !50
  %33 = tail call i32 @__traceiter_drv_get_antenna(ptr noundef null, ptr noundef %7, i32 noundef %17, i32 noundef %18, i32 noundef %16) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !51
  br label %34

34:                                               ; preds = %32, %21, %15
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_sched_scan_start(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1764
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_ops, ptr %7, i32 0, i32 23
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %1, i32 1408
  %13 = tail call i32 @ieee80211_request_sched_scan_start(ptr noundef %12, ptr noundef %2) #12
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i32 [ %13, %11 ], [ -95, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_sched_scan_stop(ptr noundef %0, ptr nocapture noundef readnone %1, i64 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_ops, ptr %8, i32 0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %14 = tail call i32 @ieee80211_request_sched_scan_stop(ptr noundef %13) #12
  br label %15

15:                                               ; preds = %12, %6
  %16 = phi i32 [ %14, %12 ], [ -95, %6 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_rekey_data(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %8 = getelementptr i8, ptr %1, i32 1408
  %9 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ieee80211_ops, ptr %10, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %68, label %14

14:                                               ; preds = %6
  %15 = getelementptr i8, ptr %1, i32 1768
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  %19 = load i1, ptr @drv_set_rekey_data.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %28, !prof !10

22:                                               ; preds = %14
  store i1 true, ptr @drv_set_rekey_data.__already_done, align 1
  %23 = getelementptr i8, ptr %1, i32 1760
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  %26 = getelementptr i8, ptr %1, i32 1776
  %27 = select i1 %25, ptr %26, ptr %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 773, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %27, i32 noundef %16) #12
  br label %28

28:                                               ; preds = %22, %14
  br i1 %18, label %68, label %29

29:                                               ; preds = %28
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_set_rekey_data, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = tail call ptr @llvm.thread.pointer() #12
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !52
  %44 = tail call i32 @__traceiter_drv_set_rekey_data(ptr noundef null, ptr noundef %7, ptr noundef %8, ptr noundef %2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !53
  br label %45

45:                                               ; preds = %43, %32, %29
  %46 = load ptr, ptr %9, align 4
  %47 = getelementptr inbounds %struct.ieee80211_ops, ptr %46, i32 0, i32 19
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = getelementptr i8, ptr %1, i32 3672
  tail call void %48(ptr noundef %7, ptr noundef %51, ptr noundef %2) #12
  br label %52

52:                                               ; preds = %50, %45
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = tail call ptr @llvm.thread.pointer() #12
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !25
  %67 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %7) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  br label %68

68:                                               ; preds = %66, %55, %52, %28, %6
  %69 = phi i32 [ -95, %6 ], [ 0, %28 ], [ 0, %52 ], [ 0, %55 ], [ 0, %66 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_tdls_mgmt(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_tdls_oper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_probe_client(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = getelementptr i8, ptr %1, i32 1764
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %8) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %9 = getelementptr i8, ptr %1, i32 4492
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3738, i32 noundef 9, ptr noundef null) #12
  br label %67

13:                                               ; preds = %4
  %14 = load ptr, ptr %10, align 4
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @sta_info_get_bss(ptr noundef %5, ptr noundef %2) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %67, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.sta_info, ptr %16, i32 0, i32 46, i32 10
  %20 = load i8, ptr %19, align 4, !range !11
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i32 24, i32 26
  %23 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %22, %24
  %26 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %25, i32 noundef 2592) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %67, label %28

28:                                               ; preds = %18
  %29 = select i1 %21, i16 584, i16 712
  %30 = getelementptr inbounds %struct.anon.46, ptr %26, i32 0, i32 2
  store ptr %1, ptr %30, align 8
  %31 = load i32, ptr %23, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 %31
  store ptr %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 14
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr i8, ptr %36, i32 %31
  store ptr %37, ptr %35, align 8
  %38 = tail call ptr @skb_put(ptr noundef nonnull %26, i32 noundef %22) #12
  store i16 %29, ptr %38, align 2
  %39 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %38, i32 0, i32 1
  store i16 0, ptr %39, align 2
  %40 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %38, i32 0, i32 2
  %41 = getelementptr inbounds %struct.sta_info, ptr %16, i32 0, i32 46, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %40, ptr noundef align 8 dereferenceable(6) %41, i32 6, i1 false)
  %42 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %38, i32 0, i32 3
  %43 = getelementptr i8, ptr %1, i32 4472
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %42, ptr noundef align 8 dereferenceable(6) %43, i32 6, i1 false)
  %44 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %38, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %44, ptr noundef align 8 dereferenceable(6) %43, i32 6, i1 false)
  %45 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %38, i32 0, i32 5
  store i16 0, ptr %45, align 2
  %46 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3
  %47 = load i32, ptr %46, align 8
  %48 = or i32 %47, 2097153
  store i32 %48, ptr %46, align 8
  %49 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %15, 7
  %52 = and i32 %50, -8
  %53 = or i32 %52, %51
  store i32 %53, ptr %49, align 4
  %54 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 9
  store i16 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 13, i32 0, i32 5
  store i32 7, ptr %55, align 8
  br i1 %21, label %58, label %56

56:                                               ; preds = %28
  %57 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %38, i32 0, i32 6
  store i16 7, ptr %57, align 2
  br label %58

58:                                               ; preds = %56, %28
  %59 = tail call i32 @ieee80211_attach_ack_skb(ptr noundef %7, ptr noundef nonnull %26, ptr noundef %3, i32 noundef 2592)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void @kfree_skb_reason(ptr noundef nonnull %26, i32 noundef 0) #12
  br label %67

62:                                               ; preds = %58
  %63 = tail call ptr @llvm.thread.pointer() #12
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %65 = load volatile i32, ptr %64, align 4
  %66 = add i32 %65, 512
  store volatile i32 %66, ptr %64, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !54
  tail call void @ieee80211_xmit(ptr noundef %5, ptr noundef nonnull %16, ptr noundef nonnull %26) #12
  tail call fastcc void @local_bh_enable()
  br label %67

67:                                               ; preds = %62, %61, %18, %13, %12
  %68 = phi i32 [ -22, %12 ], [ %59, %61 ], [ 0, %62 ], [ -67, %13 ], [ -12, %18 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  tail call void @mutex_unlock(ptr noundef %8) #12
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_noack_map(ptr nocapture noundef readnone %0, ptr noundef %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = getelementptr i8, ptr %1, i32 1956
  store i16 %2, ptr %5, align 4
  tail call void @ieee80211_check_fast_xmit_iface(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_cfg_get_channel(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %8 = getelementptr i8, ptr %1, i32 2256
  %9 = getelementptr i8, ptr %1, i32 3076
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %1, i32 2364
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %2, ptr noundef align 4 dereferenceable(28) %13, i32 28, i1 false)
  br label %33

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.wiphy, ptr %0, i32 2, i32 56, i32 11, i32 8, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 14
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %16, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32, ptr %8, align 8
  %24 = icmp eq i32 %23, 6
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 26
  %27 = load i8, ptr %26, align 1, !range !11
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wiphy, ptr %0, i32 6, i32 56, i32 9, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %2, ptr noundef align 8 dereferenceable(28) %30, i32 28, i1 false)
  br label %33

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.wiphy, ptr %0, i32 6, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %2, ptr noundef align 8 dereferenceable(28) %32, i32 28, i1 false)
  br label %33

33:                                               ; preds = %31, %29, %22, %18, %14, %12
  %34 = phi i32 [ 0, %12 ], [ -61, %22 ], [ -61, %18 ], [ -61, %14 ], [ 0, %31 ], [ 0, %29 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_start_p2p_device(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -8
  %4 = getelementptr i8, ptr %1, i32 348
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = tail call i32 @ieee80211_check_combinations(ptr noundef %3, ptr noundef null, i32 noundef 0, i8 noundef zeroext 0) #12
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %8, i32 0, i32 89
  tail call void @mutex_unlock(ptr noundef %9) #12
  %10 = icmp slt i32 %7, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @ieee80211_do_open(ptr noundef %1, i1 noundef zeroext true) #12
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi i32 [ %12, %11 ], [ %7, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_stop_p2p_device(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -8
  tail call void @ieee80211_sdata_stop(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_start_radar_detection(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = getelementptr i8, ptr %1, i32 1764
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %8) #12
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 103
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %12, label %27

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 67
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %1, i32 2528
  store i32 1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 39
  %19 = load i8, ptr %18, align 4
  %20 = getelementptr i8, ptr %1, i32 2524
  store i8 %19, ptr %20, align 4
  %21 = tail call i32 @ieee80211_vif_use_channel(ptr noundef %5, ptr noundef %2, i32 noundef 0) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr i8, ptr %1, i32 2544
  %26 = tail call i32 @__msecs_to_jiffies(i32 noundef %3) #12
  tail call void @ieee80211_queue_delayed_work(ptr noundef %24, ptr noundef %25, i32 noundef %26) #12
  br label %27

27:                                               ; preds = %23, %16, %12, %4
  %28 = phi i32 [ %21, %16 ], [ 0, %23 ], [ -16, %12 ], [ -16, %4 ]
  tail call void @mutex_unlock(ptr noundef %8) #12
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_end_cac(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1764
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 62
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %20, label %9

9:                                                ; preds = %17, %2
  %10 = phi ptr [ %18, %17 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %10, i32 0, i32 48
  %12 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %11) #12
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %10, i32 0, i32 1, i32 36
  %14 = load i8, ptr %13, align 1, !range !11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  tail call void @ieee80211_vif_release_channel(ptr noundef %10) #12
  store i8 0, ptr %13, align 1
  br label %17

17:                                               ; preds = %16, %9
  %18 = load ptr, ptr %10, align 8
  %19 = icmp eq ptr %18, %6
  br i1 %19, label %20, label %9

20:                                               ; preds = %17, %2
  tail call void @mutex_unlock(ptr noundef %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_qos_map(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef readonly %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 68) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(59) %7, ptr noundef nonnull align 1 dereferenceable(59) %2, i32 59, i1 false)
  br label %10

10:                                               ; preds = %9, %3
  %11 = phi ptr [ %7, %9 ], [ null, %3 ]
  %12 = getelementptr i8, ptr %1, i32 2080
  %13 = load ptr, ptr %12, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !55
  store volatile ptr %11, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mac80211_qos_map, ptr %13, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %16, ptr noundef nonnull inttoptr (i32 60 to ptr)) #12
  br label %17

17:                                               ; preds = %15, %10, %5
  %18 = phi i32 [ -12, %5 ], [ 0, %15 ], [ 0, %10 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_ap_chanwidth(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %1, i32 1408
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4
  %6 = call i32 @ieee80211_vif_change_bandwidth(ptr noundef %5, ptr noundef %2, ptr noundef nonnull %4) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4
  call void @ieee80211_bss_info_change_notify(ptr noundef %5, i32 noundef %9) #12
  br label %10

10:                                               ; preds = %8, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ieee80211_add_tx_ts(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readnone %3, i8 noundef zeroext %4, i16 noundef zeroext %5) #4 {
  %7 = zext i8 %4 to i32
  %8 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %1, i32 3672
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %32

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %1, i32 1958
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i32
  %17 = shl nuw i32 1, %7
  %18 = and i32 %17, %16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %1, i32 3264
  %22 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %21, i32 0, i32 %9, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = icmp eq i16 %5, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = zext i16 %5 to i32
  %29 = shl nuw nsw i32 %28, 5
  store i32 %29, ptr %22, align 4
  %30 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %21, i32 0, i32 %9, i32 2
  store i8 %2, ptr %30, align 4
  %31 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %21, i32 0, i32 %9, i32 3
  store i8 %4, ptr %31, align 1
  br label %32

32:                                               ; preds = %27, %25, %20, %13, %6
  %33 = phi i32 [ -95, %6 ], [ -22, %13 ], [ -16, %20 ], [ 0, %27 ], [ 0, %25 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_del_tx_ts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8, !prof !10

7:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %10 = getelementptr i8, ptr %1, i32 3264
  %11 = getelementptr i8, ptr %1, i32 3268
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %1, i32 3272
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, %2
  br i1 %17, label %18, label %24

18:                                               ; preds = %44, %36, %28, %14
  %19 = phi i32 [ 0, %14 ], [ 1, %28 ], [ 2, %36 ], [ 3, %44 ]
  %20 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %10, i32 0, i32 %19
  %21 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %10, i32 0, i32 %19, i32 3
  store i8 -1, ptr %21, align 1
  tail call void @synchronize_net() #12
  tail call void @ieee80211_flush_queues(ptr noundef %9, ptr noundef %5, i1 noundef zeroext false) #12
  %22 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %10, i32 0, i32 %19, i32 5
  store i32 2, ptr %22, align 4
  %23 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %10, i32 0, i32 %19, i32 6
  store i8 0, ptr %23, align 4
  tail call void @ieee80211_sta_handle_tspec_ac_params(ptr noundef %5) #12
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %20, i8 0, i32 24, i1 false)
  br label %48

24:                                               ; preds = %14, %8
  %25 = getelementptr i8, ptr %1, i32 3292
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %1, i32 3296
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, %2
  br i1 %31, label %18, label %32

32:                                               ; preds = %28, %24
  %33 = getelementptr i8, ptr %1, i32 3316
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %1, i32 3320
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, %2
  br i1 %39, label %18, label %40

40:                                               ; preds = %36, %32
  %41 = getelementptr i8, ptr %1, i32 3340
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %1, i32 3344
  %46 = load i8, ptr %45, align 4
  %47 = icmp eq i8 %46, %2
  br i1 %47, label %18, label %48

48:                                               ; preds = %44, %40, %18
  %49 = phi i32 [ 0, %18 ], [ -2, %44 ], [ -2, %40 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_tdls_channel_switch(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tdls_cancel_channel_switch(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_start_nan(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -8
  %5 = getelementptr i8, ptr %1, i32 348
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %7) #12
  %8 = tail call i32 @ieee80211_check_combinations(ptr noundef %4, ptr noundef null, i32 noundef 0, i8 noundef zeroext 0) #12
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 89
  tail call void @mutex_unlock(ptr noundef %10) #12
  %11 = icmp slt i32 %8, 0
  br i1 %11, label %74, label %12

12:                                               ; preds = %3
  %13 = tail call i32 @ieee80211_do_open(ptr noundef %1, i1 noundef zeroext true) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %74

15:                                               ; preds = %12
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr i8, ptr %1, i32 352
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  %21 = load i1, ptr @drv_start_nan.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %30, !prof !10

24:                                               ; preds = %15
  store i1 true, ptr @drv_start_nan.__already_done, align 1
  %25 = getelementptr i8, ptr %1, i32 344
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  %28 = getelementptr i8, ptr %1, i32 360
  %29 = select i1 %27, ptr %28, ptr %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1309, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %29, i32 noundef %18) #12
  br label %30

30:                                               ; preds = %24, %15
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_start_nan, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = tail call ptr @llvm.thread.pointer() #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !56
  %45 = tail call i32 @__traceiter_drv_start_nan(ptr noundef null, ptr noundef %16, ptr noundef %4, ptr noundef %2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !57
  br label %46

46:                                               ; preds = %44, %33, %30
  %47 = getelementptr inbounds %struct.ieee80211_local, ptr %16, i32 0, i32 8
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ieee80211_ops, ptr %48, i32 0, i32 91
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %1, i32 2256
  %52 = tail call i32 %50(ptr noundef %16, ptr noundef %51, ptr noundef %2) #12
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %46
  %56 = tail call ptr @llvm.thread.pointer() #12
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %67 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %16, i32 noundef %52) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %68

68:                                               ; preds = %66, %55, %46
  %69 = icmp eq i32 %52, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %68
  tail call void @ieee80211_sdata_stop(ptr noundef %4) #12
  br label %71

71:                                               ; preds = %70, %68
  %72 = getelementptr i8, ptr %1, i32 1400
  %73 = load i16, ptr %2, align 1
  store i16 %73, ptr %72, align 8
  br label %74

74:                                               ; preds = %71, %12, %3
  %75 = phi i32 [ %52, %71 ], [ %8, %3 ], [ %13, %12 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_stop_nan(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -8
  %4 = getelementptr i8, ptr %1, i32 348
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %1, i32 352
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  %10 = load i1, ptr @drv_stop_nan.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %19, !prof !10

13:                                               ; preds = %2
  store i1 true, ptr @drv_stop_nan.__already_done, align 1
  %14 = getelementptr i8, ptr %1, i32 344
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  %17 = getelementptr i8, ptr %1, i32 360
  %18 = select i1 %16, ptr %17, ptr %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1321, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %18, i32 noundef %7) #12
  br label %19

19:                                               ; preds = %13, %2
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_stop_nan, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = tail call ptr @llvm.thread.pointer() #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !58
  %34 = tail call i32 @__traceiter_drv_stop_nan(ptr noundef null, ptr noundef %5, ptr noundef %3) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !59
  br label %35

35:                                               ; preds = %33, %22, %19
  %36 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ieee80211_ops, ptr %37, i32 0, i32 92
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %1, i32 2256
  %41 = tail call i32 %39(ptr noundef %5, ptr noundef %40) #12
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %35
  %45 = tail call ptr @llvm.thread.pointer() #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !25
  %56 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %5) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  br label %57

57:                                               ; preds = %55, %44, %35
  tail call void @ieee80211_sdata_stop(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_add_nan_func(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -8
  %5 = getelementptr i8, ptr %1, i32 2256
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %8, label %95

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %1, i32 356
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %95, label %13

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %1, i32 1404
  tail call void @_raw_spin_lock_bh(ptr noundef %14) #12
  %15 = getelementptr i8, ptr %1, i32 1408
  %16 = getelementptr i8, ptr %1, i32 348
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ieee80211_hw, ptr %17, i32 0, i32 29
  %19 = load i8, ptr %18, align 8
  %20 = zext i8 %19 to i32
  %21 = add nuw nsw i32 %20, 1
  %22 = tail call i32 @idr_alloc(ptr noundef %15, ptr noundef %2, i32 noundef 1, i32 noundef %21, i32 noundef 2592) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %14) #12
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %95, label %24

24:                                               ; preds = %13
  %25 = trunc i32 %22 to i8
  %26 = getelementptr inbounds %struct.cfg80211_nan_func, ptr %2, i32 0, i32 22
  store i8 %25, ptr %26, align 2
  %27 = and i32 %22, 255
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30, !prof !10

29:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 338, i32 noundef 9, ptr noundef null) #12
  br label %30

30:                                               ; preds = %29, %24
  %31 = load ptr, ptr %16, align 4
  %32 = getelementptr i8, ptr %1, i32 352
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  %36 = load i1, ptr @drv_add_nan_func.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %45, !prof !10

39:                                               ; preds = %30
  store i1 true, ptr @drv_add_nan_func.__already_done, align 1
  %40 = getelementptr i8, ptr %1, i32 344
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  %43 = getelementptr i8, ptr %1, i32 360
  %44 = select i1 %42, ptr %43, ptr %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1356, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %44, i32 noundef %33) #12
  br label %45

45:                                               ; preds = %39, %30
  %46 = getelementptr inbounds %struct.ieee80211_local, ptr %31, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.ieee80211_ops, ptr %47, i32 0, i32 94
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %90, label %51

51:                                               ; preds = %45
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_add_nan_func, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = tail call ptr @llvm.thread.pointer() #12
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @__cpu_online_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !60
  %66 = tail call i32 @__traceiter_drv_add_nan_func(ptr noundef null, ptr noundef %31, ptr noundef %4, ptr noundef %2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !61
  %67 = load ptr, ptr %46, align 4
  %68 = getelementptr inbounds %struct.ieee80211_ops, ptr %67, i32 0, i32 94
  %69 = load ptr, ptr %68, align 4
  br label %70

70:                                               ; preds = %65, %54, %51
  %71 = phi ptr [ %49, %51 ], [ %49, %54 ], [ %69, %65 ]
  %72 = tail call i32 %71(ptr noundef %31, ptr noundef %5, ptr noundef %2) #12
  %73 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = tail call ptr @llvm.thread.pointer() #12
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %78 = load i32, ptr %77, align 8
  %79 = lshr i32 %78, 5
  %80 = getelementptr i32, ptr @__cpu_online_mask, i32 %79
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %78, 31
  %83 = shl nuw i32 1, %82
  %84 = and i32 %83, %81
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %75
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %87 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %31, i32 noundef %72) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %88

88:                                               ; preds = %86, %75, %70
  %89 = icmp eq i32 %72, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %88, %45
  %91 = phi i32 [ %72, %88 ], [ -95, %45 ]
  tail call void @_raw_spin_lock_bh(ptr noundef %14) #12
  %92 = load i8, ptr %26, align 2
  %93 = zext i8 %92 to i32
  %94 = tail call ptr @idr_remove(ptr noundef %15, i32 noundef %93) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %14) #12
  br label %95

95:                                               ; preds = %90, %88, %13, %8, %3
  %96 = phi i32 [ -95, %3 ], [ -100, %8 ], [ %22, %13 ], [ %91, %90 ], [ 0, %88 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_del_nan_func(ptr nocapture noundef readnone %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %1, i32 -8
  %6 = getelementptr i8, ptr %1, i32 2256
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 12
  br i1 %8, label %9, label %89

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %1, i32 356
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %89, label %14

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %1, i32 1404
  tail call void @_raw_spin_lock_bh(ptr noundef %15) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %16 = getelementptr i8, ptr %1, i32 1408
  store i32 0, ptr %4, align 4
  %17 = call ptr @idr_get_next(ptr noundef %16, ptr noundef nonnull %4) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %24, %14
  %20 = phi ptr [ %27, %24 ], [ %17, %14 ]
  %21 = getelementptr inbounds %struct.cfg80211_nan_func, ptr %20, i32 0, i32 23
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %22, %2
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load i32, ptr %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %4, align 4
  %27 = call ptr @idr_get_next(ptr noundef %16, ptr noundef nonnull %4) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %19

29:                                               ; preds = %24, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @_raw_spin_unlock_bh(ptr noundef %15) #12
  br label %89

30:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %31 = getelementptr inbounds %struct.cfg80211_nan_func, ptr %20, i32 0, i32 22
  %32 = load i8, ptr %31, align 2
  call void @_raw_spin_unlock_bh(ptr noundef %15) #12
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %89, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %1, i32 348
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %1, i32 352
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 32
  %40 = icmp eq i32 %39, 0
  %41 = load i1, ptr @drv_del_nan_func.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %50, !prof !10

44:                                               ; preds = %34
  store i1 true, ptr @drv_del_nan_func.__already_done, align 1
  %45 = getelementptr i8, ptr %1, i32 344
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  %48 = getelementptr i8, ptr %1, i32 360
  %49 = select i1 %47, ptr %48, ptr %46
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1373, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %49, i32 noundef %38) #12
  br label %50

50:                                               ; preds = %44, %34
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_del_nan_func, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = tail call ptr @llvm.thread.pointer() #12
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 5
  %58 = getelementptr i32, ptr @__cpu_online_mask, i32 %57
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %56, 31
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, %59
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %53
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !62
  %65 = call i32 @__traceiter_drv_del_nan_func(ptr noundef null, ptr noundef %36, ptr noundef %5, i8 noundef zeroext %32) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !63
  br label %66

66:                                               ; preds = %64, %53, %50
  %67 = getelementptr inbounds %struct.ieee80211_local, ptr %36, i32 0, i32 8
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ieee80211_ops, ptr %68, i32 0, i32 95
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  call void %70(ptr noundef %36, ptr noundef %6, i8 noundef zeroext %32) #12
  br label %73

73:                                               ; preds = %72, %66
  %74 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = tail call ptr @llvm.thread.pointer() #12
  %78 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = lshr i32 %79, 5
  %81 = getelementptr i32, ptr @__cpu_online_mask, i32 %80
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %79, 31
  %84 = shl nuw i32 1, %83
  %85 = and i32 %84, %82
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %76
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !25
  %88 = call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %36) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  br label %89

89:                                               ; preds = %87, %76, %73, %30, %29, %9, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_nan_change_conf(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.cfg80211_nan_conf, align 2
  %6 = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  %7 = getelementptr i8, ptr %1, i32 2256
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 12
  br i1 %9, label %10, label %92

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %1, i32 356
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %92, label %15

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %1, i32 1400
  %17 = load i16, ptr %16, align 8
  store i16 %17, ptr %5, align 2
  %18 = and i32 %3, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i8, ptr %2, align 1
  store i8 %21, ptr %5, align 2
  br label %22

22:                                               ; preds = %20, %15
  %23 = and i32 %3, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.cfg80211_nan_conf, ptr %2, i32 0, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr inbounds %struct.cfg80211_nan_conf, ptr %5, i32 0, i32 1
  store i8 %27, ptr %28, align 1
  br label %29

29:                                               ; preds = %25, %22
  %30 = getelementptr i8, ptr %1, i32 348
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %1, i32 352
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  %36 = load i1, ptr @drv_nan_change_conf.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %45, !prof !10

39:                                               ; preds = %29
  store i1 true, ptr @drv_nan_change_conf.__already_done, align 1
  %40 = getelementptr i8, ptr %1, i32 344
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  %43 = getelementptr i8, ptr %1, i32 360
  %44 = select i1 %42, ptr %43, ptr %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1336, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %44, i32 noundef %33) #12
  br label %45

45:                                               ; preds = %39, %29
  %46 = getelementptr inbounds %struct.ieee80211_local, ptr %31, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.ieee80211_ops, ptr %47, i32 0, i32 93
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %92, label %51

51:                                               ; preds = %45
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_nan_change_conf, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = tail call ptr @llvm.thread.pointer() #12
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @__cpu_online_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !64
  %66 = call i32 @__traceiter_drv_nan_change_conf(ptr noundef null, ptr noundef %31, ptr noundef %6, ptr noundef nonnull %5, i32 noundef %3) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !65
  %67 = load ptr, ptr %46, align 4
  %68 = getelementptr inbounds %struct.ieee80211_ops, ptr %67, i32 0, i32 93
  %69 = load ptr, ptr %68, align 4
  br label %70

70:                                               ; preds = %65, %54, %51
  %71 = phi ptr [ %49, %51 ], [ %49, %54 ], [ %69, %65 ]
  %72 = call i32 %71(ptr noundef %31, ptr noundef %7, ptr noundef nonnull %5, i32 noundef %3) #12
  %73 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = tail call ptr @llvm.thread.pointer() #12
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %78 = load i32, ptr %77, align 8
  %79 = lshr i32 %78, 5
  %80 = getelementptr i32, ptr @__cpu_online_mask, i32 %79
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %78, 31
  %83 = shl nuw i32 1, %82
  %84 = and i32 %83, %81
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %75
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %87 = call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %31, i32 noundef %72) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %88

88:                                               ; preds = %86, %75, %70
  %89 = icmp eq i32 %72, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %88
  %91 = load i16, ptr %5, align 2
  store i16 %91, ptr %16, align 8
  br label %92

92:                                               ; preds = %90, %88, %45, %10, %4
  %93 = phi i32 [ -95, %4 ], [ -100, %10 ], [ 0, %90 ], [ %72, %88 ], [ -95, %45 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  ret i32 %93
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ieee80211_set_multicast_to_unicast(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, i1 noundef zeroext %2) #5 {
  %4 = zext i1 %2 to i8
  %5 = getelementptr i8, ptr %1, i32 3128
  store i8 %4, ptr %5, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_get_txq_stats(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_ops, ptr %8, i32 0, i32 89
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %44, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 38, i32 23
  tail call void @_raw_spin_lock_bh(ptr noundef %13) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %14 = icmp eq ptr %1, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %1, i32 3072
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %17, i32 -164
  tail call void @ieee80211_fill_txq_stats(ptr noundef %2, ptr noundef %20)
  br label %42

21:                                               ; preds = %12
  %22 = load i32, ptr %2, align 4
  %23 = or i32 %22, 2502
  store i32 %23, ptr %2, align 4
  %24 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 42
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.cfg80211_txq_stats, ptr %2, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 40
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.cfg80211_txq_stats, ptr %2, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 44
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.cfg80211_txq_stats, ptr %2, i32 0, i32 6
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 45
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.cfg80211_txq_stats, ptr %2, i32 0, i32 7
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 46
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.cfg80211_txq_stats, ptr %2, i32 0, i32 8
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 38, i32 27
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.cfg80211_txq_stats, ptr %2, i32 0, i32 11
  store i32 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %21, %19, %15
  %43 = phi i32 [ 0, %19 ], [ 0, %21 ], [ 1, %15 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  tail call void @_raw_spin_unlock_bh(ptr noundef %13) #12
  br label %44

44:                                               ; preds = %42, %6
  %45 = phi i32 [ %43, %42 ], [ 1, %6 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_tx_control_port(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_get_ftm_responder_stats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %8 = getelementptr i8, ptr %1, i32 1408
  %9 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ieee80211_ops, ptr %10, i32 0, i32 97
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = getelementptr i8, ptr %1, i32 3672
  %16 = tail call i32 %12(ptr noundef %7, ptr noundef %15, ptr noundef %2) #12
  br label %17

17:                                               ; preds = %14, %6
  %18 = phi i32 [ %16, %14 ], [ -95, %6 ]
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_get_ftm_responder_stats, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = tail call ptr @llvm.thread.pointer() #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !66
  %33 = tail call i32 @__traceiter_drv_get_ftm_responder_stats(ptr noundef null, ptr noundef %7, ptr noundef %8, ptr noundef %2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !67
  br label %34

34:                                               ; preds = %32, %21, %17
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_start_pmsr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %8 = getelementptr i8, ptr %1, i32 -8
  %9 = getelementptr i8, ptr %1, i32 352
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 32
  %12 = icmp eq i32 %11, 0
  %13 = load i1, ptr @drv_start_pmsr.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %22, !prof !10

16:                                               ; preds = %6
  store i1 true, ptr @drv_start_pmsr.__already_done, align 1
  %17 = getelementptr i8, ptr %1, i32 344
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  %20 = getelementptr i8, ptr %1, i32 360
  %21 = select i1 %19, ptr %20, ptr %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1275, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %21, i32 noundef %10) #12
  br label %22

22:                                               ; preds = %16, %6
  br i1 %12, label %65, label %23

23:                                               ; preds = %22
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_start_pmsr, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = tail call ptr @llvm.thread.pointer() #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !68
  %38 = tail call i32 @__traceiter_drv_start_pmsr(ptr noundef null, ptr noundef %7, ptr noundef %8) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !69
  br label %39

39:                                               ; preds = %37, %26, %23
  %40 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ieee80211_ops, ptr %41, i32 0, i32 98
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = getelementptr i8, ptr %1, i32 2256
  %47 = tail call i32 %43(ptr noundef %7, ptr noundef %46, ptr noundef %2) #12
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi i32 [ %47, %45 ], [ -95, %39 ]
  %50 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = tail call ptr @llvm.thread.pointer() #12
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 5
  %57 = getelementptr i32, ptr @__cpu_online_mask, i32 %56
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %55, 31
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %52
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %64 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %7, i32 noundef %49) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %65

65:                                               ; preds = %63, %52, %48, %22
  %66 = phi i32 [ -5, %22 ], [ %49, %48 ], [ %49, %52 ], [ %49, %63 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_abort_pmsr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %8 = getelementptr i8, ptr %1, i32 -8
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_abort_pmsr, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = tail call ptr @llvm.thread.pointer() #12
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !70
  %23 = tail call i32 @__traceiter_drv_abort_pmsr(ptr noundef null, ptr noundef %7, ptr noundef %8) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !71
  br label %24

24:                                               ; preds = %22, %11, %6
  %25 = getelementptr i8, ptr %1, i32 352
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 32
  %28 = icmp eq i32 %27, 0
  %29 = load i1, ptr @drv_abort_pmsr.__already_done, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %38, !prof !10

32:                                               ; preds = %24
  store i1 true, ptr @drv_abort_pmsr.__already_done, align 1
  %33 = getelementptr i8, ptr %1, i32 344
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  %36 = getelementptr i8, ptr %1, i32 360
  %37 = select i1 %35, ptr %36, ptr %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1294, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %37, i32 noundef %26) #12
  br label %38

38:                                               ; preds = %32, %24
  br i1 %28, label %63, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ieee80211_ops, ptr %41, i32 0, i32 99
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = getelementptr i8, ptr %1, i32 2256
  tail call void %43(ptr noundef %7, ptr noundef %46, ptr noundef %2) #12
  br label %47

47:                                               ; preds = %45, %39
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = tail call ptr @llvm.thread.pointer() #12
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %50
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !25
  %62 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %7) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  br label %63

63:                                               ; preds = %61, %50, %47, %38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_probe_mesh_link(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_tid_config(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = getelementptr i8, ptr %1, i32 1764
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_ops, ptr %8, i32 0, i32 100
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %67, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %1, i32 3672
  %17 = tail call i32 %10(ptr noundef %6, ptr noundef %16, ptr noundef null, ptr noundef %2) #12
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %15
  %21 = tail call ptr @llvm.thread.pointer() #12
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %67, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %32 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %6, i32 noundef %17) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %67

33:                                               ; preds = %12
  %34 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %34) #12
  %35 = load ptr, ptr %2, align 8
  %36 = tail call ptr @sta_info_get_bss(ptr noundef %4, ptr noundef %35) #12
  %37 = icmp eq ptr %36, null
  %38 = load ptr, ptr %5, align 4
  br i1 %37, label %39, label %41

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.ieee80211_local, ptr %38, i32 0, i32 46
  tail call void @mutex_unlock(ptr noundef %40) #12
  br label %67

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.sta_info, ptr %36, i32 0, i32 46
  %43 = getelementptr inbounds %struct.ieee80211_local, ptr %38, i32 0, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ieee80211_ops, ptr %44, i32 0, i32 100
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %1, i32 3672
  %48 = tail call i32 %46(ptr noundef %38, ptr noundef %47, ptr noundef %42, ptr noundef %2) #12
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %41
  %52 = tail call ptr @llvm.thread.pointer() #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %63 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %38, i32 noundef %48) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %64

64:                                               ; preds = %62, %51, %41
  %65 = load ptr, ptr %5, align 4
  %66 = getelementptr inbounds %struct.ieee80211_local, ptr %65, i32 0, i32 46
  tail call void @mutex_unlock(ptr noundef %66) #12
  br label %67

67:                                               ; preds = %64, %39, %31, %20, %15, %3
  %68 = phi i32 [ %48, %64 ], [ -2, %39 ], [ -95, %3 ], [ %17, %15 ], [ %17, %20 ], [ %17, %31 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_reset_tid_config(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) #0 {
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = getelementptr i8, ptr %1, i32 1764
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ieee80211_ops, ptr %9, i32 0, i32 101
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %66, label %13

13:                                               ; preds = %4
  %14 = icmp eq ptr %2, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %13
  %16 = getelementptr i8, ptr %1, i32 3672
  %17 = tail call i32 %11(ptr noundef %7, ptr noundef %16, ptr noundef null, i8 noundef zeroext %3) #12
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %15
  %21 = tail call ptr @llvm.thread.pointer() #12
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %66, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %32 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %7, i32 noundef %17) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %66

33:                                               ; preds = %13
  %34 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %34) #12
  %35 = tail call ptr @sta_info_get_bss(ptr noundef %5, ptr noundef nonnull %2) #12
  %36 = icmp eq ptr %35, null
  %37 = load ptr, ptr %6, align 4
  br i1 %36, label %38, label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ieee80211_local, ptr %37, i32 0, i32 46
  tail call void @mutex_unlock(ptr noundef %39) #12
  br label %66

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.sta_info, ptr %35, i32 0, i32 46
  %42 = getelementptr inbounds %struct.ieee80211_local, ptr %37, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ieee80211_ops, ptr %43, i32 0, i32 101
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %1, i32 3672
  %47 = tail call i32 %45(ptr noundef %37, ptr noundef %46, ptr noundef %41, i8 noundef zeroext %3) #12
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %40
  %51 = tail call ptr @llvm.thread.pointer() #12
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %50
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %62 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %37, i32 noundef %47) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %63

63:                                               ; preds = %61, %50, %40
  %64 = load ptr, ptr %6, align 4
  %65 = getelementptr inbounds %struct.ieee80211_local, ptr %64, i32 0, i32 46
  tail call void @mutex_unlock(ptr noundef %65) #12
  br label %66

66:                                               ; preds = %63, %38, %31, %20, %15, %4
  %67 = phi i32 [ %47, %63 ], [ -2, %38 ], [ -95, %4 ], [ %17, %15 ], [ %17, %20 ], [ %17, %31 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_sar_specs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_ops, ptr %7, i32 0, i32 104
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %13 = tail call i32 %9(ptr noundef %12, ptr noundef %1) #12
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i32 [ %13, %11 ], [ -95, %5 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_color_change(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.ieee80211_color_change_settings, align 2
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = getelementptr i8, ptr %1, i32 3968
  %7 = load i8, ptr %6, align 8, !range !11
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %60

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %1, i32 1764
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ieee80211_local, ptr %11, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %12) #12
  %13 = getelementptr i8, ptr %1, i32 4510
  %14 = load i8, ptr %13, align 2, !range !11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %1, i32 4479
  %18 = load i8, ptr %17, align 1, !range !11
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  %21 = getelementptr inbounds i8, ptr %4, i32 4
  store i16 0, ptr %21, align 2
  %22 = getelementptr i8, ptr %1, i32 3672
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %44

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.cfg80211_color_change_settings, ptr %2, i32 0, i32 3
  %27 = tail call fastcc ptr @cfg80211_beacon_dup(ptr noundef %26) #12
  %28 = getelementptr i8, ptr %1, i32 2832
  store ptr %27, ptr %28, align 8
  %29 = icmp eq ptr %27, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.cfg80211_color_change_settings, ptr %2, i32 0, i32 4
  %32 = load i8, ptr %31, align 4
  %33 = icmp ult i8 %32, 2
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.cfg80211_color_change_settings, ptr %2, i32 0, i32 1
  %36 = load i16, ptr %35, align 4
  store i16 %36, ptr %4, align 2
  %37 = getelementptr inbounds %struct.cfg80211_color_change_settings, ptr %2, i32 0, i32 2
  %38 = load i16, ptr %37, align 2
  %39 = getelementptr inbounds %struct.ieee80211_color_change_settings, ptr %4, i32 0, i32 1
  store i16 %38, ptr %39, align 2
  store i8 %32, ptr %21, align 2
  %40 = call fastcc i32 @ieee80211_assign_beacon(ptr noundef %5, ptr noundef %2, ptr noundef null, ptr noundef nonnull %4) #12
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load ptr, ptr %28, align 8
  call void @kfree(ptr noundef %43) #12
  br label %44

44:                                               ; preds = %42, %25, %20
  %45 = phi i32 [ -95, %20 ], [ -12, %25 ], [ %40, %42 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  br label %58

46:                                               ; preds = %34, %30
  %47 = phi i32 [ 0, %30 ], [ %40, %34 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  store i8 1, ptr %13, align 2
  %48 = getelementptr inbounds %struct.cfg80211_color_change_settings, ptr %2, i32 0, i32 5
  %49 = load i8, ptr %48, align 1
  %50 = getelementptr i8, ptr %1, i32 4511
  store i8 %49, ptr %50, align 1
  %51 = getelementptr i8, ptr %1, i32 1760
  %52 = load ptr, ptr %51, align 8
  %53 = load i8, ptr %31, align 4
  %54 = call i32 @cfg80211_bss_color_notify(ptr noundef %52, i32 noundef 3264, i32 noundef 143, i8 noundef zeroext %53, i64 noundef 0) #12
  %55 = icmp eq i32 %47, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  call fastcc void @ieee80211_color_change_bss_config_notify(ptr noundef %5, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %47)
  br label %58

57:                                               ; preds = %46
  call fastcc void @ieee80211_color_change_finalize(ptr noundef %5)
  br label %58

58:                                               ; preds = %57, %56, %44, %16, %9
  %59 = phi i32 [ 0, %56 ], [ 0, %57 ], [ -16, %16 ], [ -16, %9 ], [ %45, %44 ]
  call void @mutex_unlock(ptr noundef %12) #12
  br label %60

60:                                               ; preds = %58, %3
  %61 = phi i32 [ %59, %58 ], [ -22, %3 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ieee80211_set_radar_background(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wiphy, ptr %0, i32 1, i32 56, i32 11, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_ops, ptr %7, i32 0, i32 108
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %13 = tail call i32 %9(ptr noundef %12, ptr noundef %1) #12
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i32 [ %13, %11 ], [ -95, %5 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_stop_iface(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_vif_use_reserved_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_vif_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ch_switch_notify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_assign_beacon(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %1, align 4
  %8 = icmp ne ptr %7, null
  %9 = icmp ne ptr %6, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %146

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 10
  %13 = getelementptr inbounds %struct.beacon_data, ptr %6, i32 0, i32 2
  %14 = select i1 %8, ptr %12, ptr %13
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, i1 %9, i1 false
  %20 = getelementptr inbounds %struct.beacon_data, ptr %6, i32 0, i32 3
  %21 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 11
  %22 = select i1 %19, ptr %20, ptr %21
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %15, 36
  %25 = add i32 %24, %23
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %146, label %28

28:                                               ; preds = %11
  %29 = getelementptr i8, ptr %26, i32 36
  store ptr %29, ptr %26, align 64
  %30 = getelementptr i8, ptr %29, i32 %15
  %31 = getelementptr inbounds %struct.beacon_data, ptr %26, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.beacon_data, ptr %26, i32 0, i32 2
  store i32 %15, ptr %32, align 8
  %33 = getelementptr inbounds %struct.beacon_data, ptr %26, i32 0, i32 3
  store i32 %23, ptr %33, align 4
  %34 = icmp eq ptr %2, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.ieee80211_csa_settings, ptr %2, i32 0, i32 4
  %37 = load i8, ptr %36, align 4
  %38 = getelementptr inbounds %struct.beacon_data, ptr %26, i32 0, i32 6
  store i8 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.beacon_data, ptr %26, i32 0, i32 5
  %40 = load ptr, ptr %2, align 4
  %41 = getelementptr inbounds %struct.ieee80211_csa_settings, ptr %2, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %39, ptr align 2 %40, i32 %43, i1 false)
  br label %52

44:                                               ; preds = %28
  %45 = icmp eq ptr %3, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.ieee80211_color_change_settings, ptr %3, i32 0, i32 2
  %48 = load i8, ptr %47, align 2
  %49 = getelementptr inbounds %struct.beacon_data, ptr %26, i32 0, i32 6
  store i8 %48, ptr %49, align 8
  %50 = load i16, ptr %3, align 2
  %51 = getelementptr inbounds %struct.beacon_data, ptr %26, i32 0, i32 5
  store i16 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %46, %44, %35
  %53 = load ptr, ptr %1, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %29, ptr nonnull align 1 %53, i32 %15, i1 false)
  br label %58

56:                                               ; preds = %52
  %57 = load ptr, ptr %6, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %29, ptr align 1 %57, i32 %15, i1 false)
  br label %58

58:                                               ; preds = %56, %55
  %59 = load ptr, ptr %16, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %30, ptr nonnull align 1 %59, i32 %23, i1 false)
  br label %66

62:                                               ; preds = %58
  br i1 %9, label %63, label %66

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.beacon_data, ptr %6, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %30, ptr align 1 %65, i32 %23, i1 false)
  br label %66

66:                                               ; preds = %63, %62, %61
  %67 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 15
  %70 = load i32, ptr %69, align 4
  %71 = icmp ne ptr %68, null
  %72 = icmp ne i32 %70, 0
  %73 = and i1 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = add i32 %70, 16
  %78 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %77, i32 noundef 3520) #15
  %79 = icmp eq ptr %78, null
  br i1 %79, label %99, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.probe_resp, ptr %78, i32 0, i32 1
  store i32 %70, ptr %81, align 8
  %82 = getelementptr inbounds %struct.probe_resp, ptr %78, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 16 %82, ptr nonnull align 1 %68, i32 %70, i1 false) #12
  br i1 %34, label %90, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.probe_resp, ptr %78, i32 0, i32 2
  %85 = getelementptr inbounds %struct.ieee80211_csa_settings, ptr %2, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.ieee80211_csa_settings, ptr %2, i32 0, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 %88, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %84, ptr align 2 %86, i32 %89, i1 false) #12
  br label %96

90:                                               ; preds = %80
  %91 = icmp eq ptr %3, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.ieee80211_color_change_settings, ptr %3, i32 0, i32 1
  %94 = load i16, ptr %93, align 2
  %95 = getelementptr inbounds %struct.probe_resp, ptr %78, i32 0, i32 2
  store i16 %94, ptr %95, align 4
  br label %96

96:                                               ; preds = %92, %90, %83
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !72
  store volatile ptr %78, ptr %75, align 4
  %97 = icmp eq ptr %76, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %96
  tail call void @kvfree_call_rcu(ptr noundef nonnull %76, ptr noundef null) #12
  br label %100

99:                                               ; preds = %74
  tail call void @kfree(ptr noundef nonnull %26) #12
  br label %146

100:                                              ; preds = %98, %96, %66
  %101 = phi i32 [ 256, %66 ], [ 65792, %96 ], [ 65792, %98 ]
  %102 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 9
  %103 = load i8, ptr %102, align 4
  %104 = icmp eq i8 %103, -1
  br i1 %104, label %142, label %105

105:                                              ; preds = %100
  %106 = icmp ne i8 %103, 0
  %107 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 48
  %108 = zext i1 %106 to i8
  store i8 %108, ptr %107, align 1
  %109 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 6
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 16
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 7
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %1, i32 0, i32 17
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %112, 0
  %118 = icmp eq i32 %116, 0
  %119 = or i32 %116, %112
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %140, label %121

121:                                              ; preds = %105
  %122 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 49
  %123 = load ptr, ptr %122, align 4
  %124 = add i32 %116, %112
  %125 = add i32 %124, 16
  %126 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %125, i32 noundef 3520) #15
  %127 = icmp eq ptr %126, null
  br i1 %127, label %139, label %128

128:                                              ; preds = %121
  %129 = getelementptr %struct.ieee80211_ftm_responder_params, ptr %126, i32 1
  br i1 %117, label %133, label %130

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.ieee80211_ftm_responder_params, ptr %126, i32 0, i32 2
  store i32 %112, ptr %131, align 8
  store ptr %129, ptr %126, align 64
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 16 %129, ptr align 1 %110, i32 %112, i1 false) #12
  %132 = getelementptr i8, ptr %129, i32 %112
  br label %133

133:                                              ; preds = %130, %128
  %134 = phi ptr [ %132, %130 ], [ %129, %128 ]
  br i1 %118, label %138, label %135

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.ieee80211_ftm_responder_params, ptr %126, i32 0, i32 3
  store i32 %116, ptr %136, align 4
  %137 = getelementptr inbounds %struct.ieee80211_ftm_responder_params, ptr %126, i32 0, i32 1
  store ptr %134, ptr %137, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %134, ptr align 1 %114, i32 %116, i1 false) #12
  br label %138

138:                                              ; preds = %135, %133
  store ptr %126, ptr %122, align 4
  tail call void @kfree(ptr noundef %123) #12
  br label %140

139:                                              ; preds = %121
  tail call void @kfree(ptr noundef nonnull %26) #12
  br label %146

140:                                              ; preds = %138, %105
  %141 = or i32 %101, 67108864
  br label %142

142:                                              ; preds = %140, %100
  %143 = phi i32 [ %141, %140 ], [ %101, %100 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !73
  store volatile ptr %26, ptr %5, align 8
  br i1 %9, label %144, label %146

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.beacon_data, ptr %6, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %145, ptr noundef nonnull inttoptr (i32 28 to ptr)) #12
  br label %146

146:                                              ; preds = %144, %142, %139, %99, %11, %4
  %147 = phi i32 [ -12, %99 ], [ -12, %139 ], [ -22, %4 ], [ -12, %11 ], [ %143, %144 ], [ %143, %142 ]
  ret i32 %147
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_ibss_finish_csa(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_post_channel_switch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_vif_reserve_chanctx(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_check_combinations(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_vif_unreserve_chanctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_vif_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ch_switch_started_notify(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_pre_channel_switch(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_bss_color_notify(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @cfg80211_beacon_dup(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %0, i32 0, i32 10
  %3 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %0, i32 0, i32 11
  %4 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %0, i32 0, i32 12
  %5 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %0, i32 0, i32 13
  %6 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %0, i32 0, i32 14
  %7 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %0, i32 0, i32 15
  %8 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %0, i32 0, i32 16
  %9 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %0, i32 0, i32 17
  %10 = load i32, ptr %3, align 4
  %11 = load i32, ptr %2, align 4
  %12 = add i32 %10, %11
  %13 = load i32, ptr %4, align 4
  %14 = add i32 %12, %13
  %15 = load i32, ptr %5, align 4
  %16 = add i32 %14, %15
  %17 = load i32, ptr %6, align 4
  %18 = add i32 %16, %17
  %19 = load i32, ptr %7, align 4
  %20 = add i32 %18, %19
  %21 = load i32, ptr %8, align 4
  %22 = add i32 %20, %21
  %23 = load i32, ptr %9, align 4
  %24 = add i32 %22, %23
  %25 = add i32 %24, 72
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %121, label %28

28:                                               ; preds = %1
  %29 = load i32, ptr %2, align 4
  %30 = getelementptr %struct.cfg80211_beacon_data, ptr %26, i32 1
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %26, i32 0, i32 10
  store i32 %29, ptr %33, align 8
  store ptr %30, ptr %26, align 64
  %34 = load ptr, ptr %0, align 4
  %35 = load i32, ptr %2, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %30, ptr align 1 %34, i32 %35, i1 false)
  %36 = getelementptr i8, ptr %30, i32 %35
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi ptr [ %36, %32 ], [ %30, %28 ]
  %39 = load i32, ptr %3, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %26, i32 0, i32 11
  store i32 %39, ptr %42, align 4
  %43 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %26, i32 0, i32 1
  store ptr %38, ptr %43, align 4
  %44 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load i32, ptr %3, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %38, ptr align 1 %45, i32 %46, i1 false)
  %47 = getelementptr i8, ptr %38, i32 %46
  br label %48

48:                                               ; preds = %41, %37
  %49 = phi ptr [ %47, %41 ], [ %38, %37 ]
  %50 = load i32, ptr %4, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %26, i32 0, i32 12
  store i32 %50, ptr %53, align 16
  %54 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %26, i32 0, i32 2
  store ptr %49, ptr %54, align 8
  %55 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %0, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %4, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %49, ptr align 1 %56, i32 %57, i1 false)
  %58 = load i32, ptr %4, align 4
  %59 = getelementptr i8, ptr %49, i32 %58
  br label %60

60:                                               ; preds = %52, %48
  %61 = phi ptr [ %59, %52 ], [ %49, %48 ]
  %62 = load i32, ptr %5, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %26, i32 0, i32 13
  store i32 %62, ptr %65, align 4
  %66 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %26, i32 0, i32 3
  store ptr %61, ptr %66, align 4
  %67 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %0, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %61, ptr align 1 %68, i32 %69, i1 false)
  %70 = load i32, ptr %5, align 4
  %71 = getelementptr i8, ptr %61, i32 %70
  br label %72

72:                                               ; preds = %64, %60
  %73 = phi ptr [ %71, %64 ], [ %61, %60 ]
  %74 = load i32, ptr %6, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %26, i32 0, i32 14
  store i32 %74, ptr %77, align 8
  %78 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %26, i32 0, i32 4
  store ptr %73, ptr %78, align 16
  %79 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %0, i32 0, i32 4
  %80 = load ptr, ptr %79, align 4
  %81 = load i32, ptr %6, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %73, ptr align 1 %80, i32 %81, i1 false)
  %82 = load i32, ptr %6, align 4
  %83 = getelementptr i8, ptr %73, i32 %82
  br label %84

84:                                               ; preds = %76, %72
  %85 = phi ptr [ %83, %76 ], [ %73, %72 ]
  %86 = load i32, ptr %7, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %26, i32 0, i32 15
  store i32 %86, ptr %89, align 4
  %90 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %26, i32 0, i32 5
  store ptr %85, ptr %90, align 4
  %91 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %0, i32 0, i32 5
  %92 = load ptr, ptr %91, align 4
  %93 = load i32, ptr %7, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %85, ptr align 1 %92, i32 %93, i1 false)
  %94 = load i32, ptr %7, align 4
  %95 = getelementptr i8, ptr %85, i32 %94
  br label %96

96:                                               ; preds = %88, %84
  %97 = phi ptr [ %95, %88 ], [ %85, %84 ]
  %98 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %0, i32 0, i32 9
  %99 = load i8, ptr %98, align 4
  %100 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %26, i32 0, i32 9
  store i8 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %0, i32 0, i32 6
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %96
  %105 = load i32, ptr %8, align 4
  %106 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %26, i32 0, i32 16
  store i32 %105, ptr %106, align 64
  %107 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %26, i32 0, i32 6
  store ptr %97, ptr %107, align 8
  %108 = load ptr, ptr %101, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %97, ptr align 1 %108, i32 %105, i1 false)
  %109 = load i32, ptr %8, align 4
  %110 = getelementptr i8, ptr %97, i32 %109
  br label %111

111:                                              ; preds = %104, %96
  %112 = phi ptr [ %110, %104 ], [ %97, %96 ]
  %113 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %0, i32 0, i32 7
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load i32, ptr %9, align 4
  %118 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %26, i32 0, i32 17
  store i32 %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %26, i32 0, i32 7
  store ptr %112, ptr %119, align 4
  %120 = load ptr, ptr %113, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %112, ptr align 1 %120, i32 %117, i1 false)
  br label %121

121:                                              ; preds = %116, %111, %1
  %122 = phi ptr [ null, %1 ], [ %26, %116 ], [ %26, %111 ]
  ret ptr %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_ibss_csa_beacon(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_send_action_csa(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_channel_switch_beacon(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_color_change_bss_config_notify(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 58
  store i8 %1, ptr %6, align 1
  %7 = icmp ne i32 %2, 0
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 58, i32 1
  %9 = zext i1 %7 to i8
  store i8 %9, ptr %8, align 1
  %10 = or i32 %3, 536870912
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef %10) #12
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 50
  %12 = load i8, ptr %11, align 8, !range !11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 17
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ieee80211_local, ptr %20, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %21) #12
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.ieee80211_local, ptr %22, i32 0, i32 62
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %43, label %26

26:                                               ; preds = %38, %18
  %27 = phi ptr [ %39, %38 ], [ %22, %18 ]
  %28 = phi ptr [ %40, %38 ], [ %24, %18 ]
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 58, i32 17
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, %5
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 58, i32 1, i32 58
  store i8 %1, ptr %35, align 1
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 58, i32 1, i32 58, i32 1
  store i8 %9, ptr %36, align 1
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %28, i32 noundef 536870912) #12
  %37 = load ptr, ptr %19, align 4
  br label %38

38:                                               ; preds = %34, %30, %26
  %39 = phi ptr [ %27, %26 ], [ %27, %30 ], [ %37, %34 ]
  %40 = load ptr, ptr %28, align 8
  %41 = getelementptr inbounds %struct.ieee80211_local, ptr %39, i32 0, i32 62
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %43, label %26

43:                                               ; preds = %38, %18
  %44 = phi ptr [ %22, %18 ], [ %39, %38 ]
  %45 = getelementptr inbounds %struct.ieee80211_local, ptr %44, i32 0, i32 64
  tail call void @mutex_unlock(ptr noundef %45) #12
  br label %46

46:                                               ; preds = %43, %14, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ieee80211_suspend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_reconfig(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_set_wakeup(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_if_add(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_set_mon_options(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 9
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %14 = load i32, ptr %13, align 8
  %15 = xor i32 %14, %5
  %16 = and i32 %15, 96
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %80

18:                                               ; preds = %12, %7, %2
  %19 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 111
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %struct.vif_params, ptr %1, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %21, label %25, label %30

25:                                               ; preds = %18
  br i1 %24, label %26, label %80

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.vif_params, ptr %1, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %67, label %80

30:                                               ; preds = %18
  br i1 %24, label %40, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 58, i32 1, i32 33
  %33 = load i64, ptr %23, align 1
  store i64 %33, ptr %32, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 58, i32 1, i32 33, i32 1
  %35 = load ptr, ptr %22, align 4
  %36 = getelementptr i8, ptr %35, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %34, ptr noundef align 1 dereferenceable(16) %36, i32 16, i1 false) #12
  tail call void @ieee80211_bss_info_change_notify(ptr noundef nonnull %20, i32 noundef 8388608) #12
  %37 = load ptr, ptr %22, align 4
  %38 = load i64, ptr %37, align 1
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %31, %30
  %41 = phi i1 [ %39, %31 ], [ false, %30 ]
  %42 = getelementptr inbounds %struct.vif_params, ptr %1, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %61, label %45

45:                                               ; preds = %40
  %46 = load i32, ptr %43, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %43, i32 4
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = or i32 %46, %52
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %49, %45
  %56 = phi i1 [ false, %45 ], [ %54, %49 ]
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  store i32 %46, ptr %57, align 4
  %58 = getelementptr i8, ptr %43, i32 4
  %59 = load i16, ptr %58, align 2
  %60 = getelementptr %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 57, i32 0, i32 0, i32 1
  store i16 %59, ptr %60, align 2
  br label %61

61:                                               ; preds = %55, %40
  %62 = phi i1 [ %56, %55 ], [ false, %40 ]
  %63 = select i1 %41, i1 true, i1 %62
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 58, i32 5
  %65 = zext i1 %63 to i8
  store i8 %65, ptr %64, align 8
  %66 = load i32, ptr %1, align 4
  br label %67

67:                                               ; preds = %61, %26
  %68 = phi i32 [ %5, %26 ], [ %66, %61 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 9
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  tail call void @ieee80211_adjust_monitor_flags(ptr noundef %0, i32 noundef -1) #12
  %76 = load i32, ptr %1, align 4
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  store i32 %76, ptr %77, align 8
  tail call void @ieee80211_adjust_monitor_flags(ptr noundef %0, i32 noundef 1) #12
  tail call void @ieee80211_configure_filter(ptr noundef %4) #12
  br label %80

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  store i32 %68, ptr %79, align 8
  br label %80

80:                                               ; preds = %78, %75, %67, %26, %25, %12
  %81 = phi i32 [ -16, %12 ], [ -95, %26 ], [ -95, %25 ], [ 0, %75 ], [ 0, %78 ], [ 0, %67 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_if_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_adjust_monitor_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_configure_filter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_if_change_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_fast_rx_iface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drv_sta_set_4addr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #11 {
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
  %18 = load i1, ptr @drv_sta_set_4addr.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %27, !prof !10

21:                                               ; preds = %12
  store i1 true, ptr @drv_sta_set_4addr.__already_done, align 1
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 6
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 10
  %26 = select i1 %24, ptr %25, ptr %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1428, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %26, i32 noundef %15) #12
  br label %27

27:                                               ; preds = %21, %12
  br i1 %17, label %68, label %28

28:                                               ; preds = %27
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sta_set_4addr, i32 0, i32 1), align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = tail call ptr @llvm.thread.pointer() #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  %43 = tail call i32 @__traceiter_drv_sta_set_4addr(ptr noundef null, ptr noundef %0, ptr noundef %13, ptr noundef %2, i1 noundef zeroext %3) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !75
  br label %44

44:                                               ; preds = %42, %31, %28
  %45 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.ieee80211_ops, ptr %46, i32 0, i32 103
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 58
  tail call void %48(ptr noundef %0, ptr noundef %51, ptr noundef %2, i1 noundef zeroext %3) #12
  br label %52

52:                                               ; preds = %50, %44
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = tail call ptr @llvm.thread.pointer() #12
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !25
  %67 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  br label %68

68:                                               ; preds = %66, %55, %52, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_4addr_nullfunc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sta_set_4addr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_cs_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_key_alloc(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_key_free_unused(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_key_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_set_tx_key(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drv_get_key_seq(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_ops, ptr %5, i32 0, i32 28
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 7
  tail call void %7(ptr noundef %0, ptr noundef %10, ptr noundef %2) #12
  br label %11

11:                                               ; preds = %9, %3
  %12 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 7
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_get_key_seq, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = tail call ptr @llvm.thread.pointer() #12
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  %27 = tail call i32 @__traceiter_drv_get_key_seq(ptr noundef null, ptr noundef %0, ptr noundef %12) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !29
  br label %28

28:                                               ; preds = %26, %15, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_get_key_seq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_key_free(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_set_default_key(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_set_default_mgmt_key(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_set_default_beacon_key(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_vif_use_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vif_copy_chanctx_to_vlans(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_cs_headroom(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_set_fils_discovery(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cfg80211_fils_discovery, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cfg80211_fils_discovery, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 59
  %12 = load i32, ptr %1, align 4
  store i32 %12, ptr %11, align 4
  %13 = getelementptr inbounds %struct.cfg80211_fils_discovery, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 59, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %7, align 4
  %19 = add i32 %18, 12
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %10
  %23 = load i32, ptr %7, align 4
  %24 = getelementptr inbounds %struct.fils_discovery_data, ptr %20, i32 0, i32 1
  store i32 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.fils_discovery_data, ptr %20, i32 0, i32 2
  %26 = load ptr, ptr %3, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %25, ptr align 1 %26, i32 %23, i1 false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !76
  store volatile ptr %20, ptr %16, align 8
  %27 = icmp eq ptr %17, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  tail call void @kvfree_call_rcu(ptr noundef nonnull %17, ptr noundef null) #12
  br label %29

29:                                               ; preds = %28, %22, %10, %6, %2
  %30 = phi i32 [ -22, %6 ], [ -22, %2 ], [ -12, %10 ], [ 0, %28 ], [ 0, %22 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_set_unsol_bcast_probe_resp(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cfg80211_unsol_bcast_probe_resp, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cfg80211_unsol_bcast_probe_resp, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = add i32 %8, 12
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %7, align 4
  %18 = getelementptr inbounds %struct.unsol_bcast_probe_resp_data, ptr %14, i32 0, i32 1
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.unsol_bcast_probe_resp_data, ptr %14, i32 0, i32 2
  %20 = load ptr, ptr %3, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %19, ptr align 1 %20, i32 %17, i1 false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !77
  store volatile ptr %14, ptr %11, align 4
  %21 = icmp eq ptr %12, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  tail call void @kvfree_call_rcu(ptr noundef nonnull %12, ptr noundef null) #12
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i32, ptr %1, align 4
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 60
  store i32 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %23, %10, %6, %2
  %27 = phi i32 [ 0, %23 ], [ -22, %6 ], [ -22, %2 ], [ -12, %10 ]
  ret i32 %27
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drv_start_ap(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @drv_start_ap.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %16, !prof !10

10:                                               ; preds = %2
  store i1 true, ptr @drv_start_ap.__already_done, align 1
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %15 = select i1 %13, ptr %14, ptr %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 969, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %15, i32 noundef %4) #12
  br label %16

16:                                               ; preds = %10, %2
  br i1 %6, label %60, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 1
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_start_ap, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = tail call ptr @llvm.thread.pointer() #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !78
  %33 = tail call i32 @__traceiter_drv_start_ap(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %18) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !79
  br label %34

34:                                               ; preds = %32, %21, %17
  %35 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ieee80211_ops, ptr %36, i32 0, i32 11
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %42 = tail call i32 %38(ptr noundef %0, ptr noundef %41) #12
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi i32 [ %42, %40 ], [ 0, %34 ]
  %45 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = tail call ptr @llvm.thread.pointer() #12
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 5
  %52 = getelementptr i32, ptr @__cpu_online_mask, i32 %51
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %50, 31
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %59 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %44) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %60

60:                                               ; preds = %58, %47, %43, %16
  %61 = phi i32 [ -5, %16 ], [ %44, %43 ], [ %44, %47 ], [ %44, %58 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_dtim(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vif_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_start_ap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sta_info_flush(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_keys(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_cac_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_purge_tx_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_stop_ap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sta_apply_parameters(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !8
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 58, i32 9
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  br label %307

12:                                               ; preds = %3
  %13 = load ptr, ptr %9, align 4
  %14 = load i32, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  %15 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr %struct.wiphy, ptr %16, i32 0, i32 53, i32 %14
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %307, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 23
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 2048
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %24, 2
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %28, i1 true, i1 %30
  %32 = or i32 %24, 160
  %33 = or i32 %22, 160
  %34 = select i1 %31, i32 %22, i32 %33
  %35 = select i1 %31, i32 %24, i32 %32
  %36 = and i32 %34, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %40 = load i16, ptr %39, align 4
  %41 = icmp ugt i16 %40, 3
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 10
  %44 = trunc i32 %35 to i8
  %45 = lshr i8 %44, 3
  %46 = and i8 %45, 1
  store i8 %46, ptr %43, align 4
  br label %47

47:                                               ; preds = %42, %38, %20
  %48 = load volatile i32, ptr %25, align 4
  %49 = and i32 %48, 2048
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = and i32 %34, 128
  %53 = icmp eq i32 %52, 0
  %54 = and i32 %35, 128
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = tail call fastcc i32 @sta_apply_auth_flags(ptr noundef %1, i32 noundef %34, i32 noundef %35)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %307

60:                                               ; preds = %57, %51, %47
  %61 = and i32 %34, 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = and i32 %35, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @_set_bit(i32 noundef 4, ptr noundef %25) #12
  br label %68

67:                                               ; preds = %63
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %25) #12
  br label %68

68:                                               ; preds = %67, %66, %60
  %69 = and i32 %34, 16
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = and i32 %35, 16
  %73 = icmp eq i32 %72, 0
  %74 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 19
  %75 = lshr exact i32 %72, 4
  %76 = trunc i32 %75 to i8
  store i8 %76, ptr %74, align 2
  br i1 %73, label %78, label %77

77:                                               ; preds = %71
  tail call void @_set_bit(i32 noundef 7, ptr noundef %25) #12
  br label %79

78:                                               ; preds = %71
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %25) #12
  br label %79

79:                                               ; preds = %78, %77, %68
  %80 = and i32 %34, 64
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = and i32 %35, 64
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  tail call void @_set_bit(i32 noundef 11, ptr noundef %25) #12
  br label %87

86:                                               ; preds = %82
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %25) #12
  br label %87

87:                                               ; preds = %86, %85, %79
  %88 = load volatile i32, ptr %25, align 4
  %89 = and i32 %88, 2048
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 57, i32 0, i32 40, i32 0, i32 108
  %93 = load i8, ptr %92, align 4, !range !11
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 19
  %97 = load i8, ptr %96, align 4
  %98 = icmp ugt i8 %97, 3
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 18
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %101, i32 3
  %103 = load i8, ptr %102, align 1
  %104 = and i8 %103, 64
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %99
  tail call void @_set_bit(i32 noundef 14, ptr noundef %25) #12
  br label %107

107:                                              ; preds = %106, %99, %95, %91, %87
  %108 = load volatile i32, ptr %25, align 4
  %109 = and i32 %108, 2048
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %132, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 57, i32 0, i32 40, i32 0, i32 109
  %113 = load i8, ptr %112, align 1, !range !11
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %117 = load volatile i32, ptr %116, align 4
  %118 = and i32 %117, 536870912
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 19
  %122 = load i8, ptr %121, align 4
  %123 = icmp ugt i8 %122, 7
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 18
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr i8, ptr %126, i32 7
  %128 = load i8, ptr %127, align 1
  %129 = and i8 %128, 32
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %124
  tail call void @_set_bit(i32 noundef 16, ptr noundef %25) #12
  br label %132

132:                                              ; preds = %131, %124, %120, %115, %111, %107
  %133 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 4
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 14
  %139 = load i8, ptr %138, align 4
  %140 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 11
  store i8 %139, ptr %140, align 1
  %141 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 15
  %142 = load i8, ptr %141, align 1
  %143 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 12
  store i8 %142, ptr %143, align 2
  br label %144

144:                                              ; preds = %137, %132
  %145 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 19
  %146 = load i8, ptr %145, align 4
  %147 = icmp ugt i8 %146, 7
  br i1 %147, label %148, label %171

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 18
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr i8, ptr %150, i32 7
  %152 = load i8, ptr %151, align 1
  %153 = lshr i8 %152, 7
  %154 = icmp eq i8 %146, 8
  br i1 %154, label %161, label %155

155:                                              ; preds = %148
  %156 = getelementptr i8, ptr %150, i32 8
  %157 = load i8, ptr %156, align 1
  %158 = shl i8 %157, 1
  %159 = and i8 %158, 2
  %160 = or i8 %159, %153
  br label %161

161:                                              ; preds = %155, %148
  %162 = phi i8 [ %160, %155 ], [ %153, %148 ]
  %163 = add nsw i8 %162, -1
  %164 = icmp ult i8 %163, 3
  %165 = zext i8 %163 to i24
  %166 = shl nuw nsw i24 %165, 3
  %167 = lshr i24 528416, %166
  %168 = trunc i24 %167 to i8
  %169 = select i1 %164, i8 %168, i8 0
  %170 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 20
  store i8 %169, ptr %170, align 1
  br label %171

171:                                              ; preds = %161, %144
  %172 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 6
  %173 = load i16, ptr %172, align 4
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 2
  store i16 %173, ptr %176, align 2
  br label %177

177:                                              ; preds = %175, %171
  %178 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 5
  %179 = load i32, ptr %178, align 4
  %180 = icmp sgt i32 %179, -1
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = trunc i32 %179 to i16
  %183 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 18
  store i16 %182, ptr %183, align 8
  br label %184

184:                                              ; preds = %181, %177
  %185 = load i32, ptr %133, align 4
  %186 = and i32 %185, 8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %201, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 30, i32 1
  %190 = load i32, ptr %189, align 4
  %191 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 27, i32 1
  store i32 %190, ptr %191, align 4
  %192 = load i32, ptr %189, align 4
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 27
  %196 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 30
  %197 = load i16, ptr %196, align 4
  store i16 %197, ptr %195, align 8
  br label %198

198:                                              ; preds = %194, %188
  %199 = tail call i32 @drv_sta_set_txpwr(ptr noundef %0, ptr noundef %5, ptr noundef %1) #12
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %307

201:                                              ; preds = %198, %184
  %202 = load ptr, ptr %2, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %216, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 9
  %206 = load i8, ptr %205, align 2
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %204
  %209 = zext i8 %206 to i32
  %210 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 58, i32 1, i32 32
  %211 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46
  %212 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %18, i32 0, i32 2
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr [6 x i32], ptr %211, i32 0, i32 %213
  %215 = tail call i32 @ieee80211_parse_bitrates(ptr noundef %210, ptr noundef nonnull %18, ptr noundef nonnull %202, i32 noundef %209, ptr noundef %214) #12
  br label %216

216:                                              ; preds = %208, %204, %201
  %217 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 12
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %222, label %220

220:                                              ; preds = %216
  %221 = tail call zeroext i1 @ieee80211_ht_cap_ie_to_sta_ht_cap(ptr noundef %5, ptr noundef nonnull %18, ptr noundef nonnull %218, ptr noundef %1) #12
  br label %222

222:                                              ; preds = %220, %216
  %223 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 13
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %227, label %226

226:                                              ; preds = %222
  tail call void @ieee80211_vht_cap_ie_to_sta_vht_cap(ptr noundef %5, ptr noundef nonnull %18, ptr noundef nonnull %224, ptr noundef %1) #12
  br label %227

227:                                              ; preds = %226, %222
  %228 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 27
  %229 = load ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %236, label %231

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 28
  %233 = load i8, ptr %232, align 4
  %234 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 31
  %235 = load ptr, ptr %234, align 4
  tail call void @ieee80211_he_cap_ie_to_sta_he_cap(ptr noundef %5, ptr noundef nonnull %18, ptr noundef nonnull %229, i8 noundef zeroext %233, ptr noundef %235, ptr noundef %1) #12
  br label %236

236:                                              ; preds = %231, %227
  %237 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 25
  %238 = load i8, ptr %237, align 2, !range !11
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %246, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 24
  %242 = load i8, ptr %241, align 1
  %243 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %18, i32 0, i32 2
  %244 = load i32, ptr %243, align 4
  %245 = tail call i32 @__ieee80211_vht_handle_opmode(ptr noundef %5, ptr noundef %1, i8 noundef zeroext %242, i32 noundef %244) #12
  br label %246

246:                                              ; preds = %240, %236
  %247 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 26
  %248 = load i32, ptr %247, align 4
  %249 = icmp sgt i32 %248, -1
  br i1 %249, label %250, label %254

250:                                              ; preds = %246
  %251 = icmp ne i32 %248, 0
  %252 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 22
  %253 = zext i1 %251 to i8
  store i8 %253, ptr %252, align 2
  br label %254

254:                                              ; preds = %250, %246
  %255 = getelementptr inbounds %struct.station_parameters, ptr %2, i32 0, i32 29
  %256 = load i16, ptr %255, align 2
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %296, label %258

258:                                              ; preds = %293, %254
  %259 = phi i32 [ %294, %293 ], [ 0, %254 ]
  %260 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 4, i32 %259
  tail call void @_raw_spin_lock_bh(ptr noundef %260) #12
  %261 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 37, i32 %259, i32 9
  %262 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 37, i32 %259, i32 8
  br label %263

263:                                              ; preds = %290, %258
  %264 = phi i32 [ 0, %258 ], [ %291, %290 ]
  %265 = load i16, ptr %261, align 8
  %266 = load i16, ptr %255, align 2
  %267 = icmp eq i16 %265, %266
  br i1 %267, label %290, label %268

268:                                              ; preds = %263
  %269 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 46, i32 28, i32 %264
  %270 = load ptr, ptr %269, align 4
  %271 = icmp eq ptr %270, null
  br i1 %271, label %290, label %272

272:                                              ; preds = %268
  %273 = and i32 %264, 7
  %274 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %273
  %275 = load i32, ptr %274, align 4
  %276 = icmp eq i32 %275, %259
  br i1 %276, label %277, label %290

277:                                              ; preds = %272
  store i16 %266, ptr %261, align 8
  %278 = icmp eq i16 %266, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %277
  %280 = zext i16 %266 to i32
  %281 = udiv i32 524288, %280
  br label %282

282:                                              ; preds = %279, %277
  %283 = phi i32 [ %281, %279 ], [ 0, %277 ]
  store i32 %283, ptr %262, align 4
  %284 = load ptr, ptr %269, align 4
  %285 = getelementptr i8, ptr %284, i32 -32
  %286 = load i32, ptr %285, align 4
  %287 = ptrtoint ptr %285 to i32
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %290, label %289

289:                                              ; preds = %282
  tail call void @ieee80211_update_airtime_weight(ptr noundef %0, ptr noundef %260, i64 noundef 0, i1 noundef zeroext true) #12
  br label %290

290:                                              ; preds = %289, %282, %272, %268, %263
  %291 = add nuw nsw i32 %264, 1
  %292 = icmp eq i32 %291, 17
  br i1 %292, label %293, label %263

293:                                              ; preds = %290
  tail call void @_raw_spin_unlock_bh(ptr noundef %260) #12
  %294 = add nuw nsw i32 %259, 1
  %295 = icmp eq i32 %294, 4
  br i1 %295, label %296, label %258

296:                                              ; preds = %293, %254
  %297 = load volatile i32, ptr %25, align 4
  %298 = and i32 %297, 2048
  %299 = icmp eq i32 %298, 0
  %300 = and i32 %35, 128
  %301 = icmp eq i32 %300, 0
  %302 = select i1 %299, i1 %301, i1 false
  br i1 %302, label %306, label %303

303:                                              ; preds = %296
  %304 = tail call fastcc i32 @sta_apply_auth_flags(ptr noundef %1, i32 noundef %34, i32 noundef %35)
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %303, %296
  br label %307

307:                                              ; preds = %306, %303, %198, %57, %12, %11
  %308 = phi i32 [ 0, %306 ], [ -22, %12 ], [ %58, %57 ], [ %199, %198 ], [ %304, %303 ], [ -22, %11 ]
  ret i32 %308
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sta_info_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_rate_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_insert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sta_apply_auth_flags(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %1, 32
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 32
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %4, %2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = tail call i32 @sta_info_move_state(ptr noundef %0, i32 noundef 2) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %74

18:                                               ; preds = %15, %10, %3
  %19 = and i32 %1, 128
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %2, 128
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %19, %2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load volatile i32, ptr %26, align 4
  %32 = and i32 %31, 2097152
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void @rate_control_rate_init(ptr noundef %0) #12
  br label %35

35:                                               ; preds = %34, %30
  %36 = tail call i32 @sta_info_move_state(ptr noundef %0, i32 noundef 3) #12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %35, %25, %18
  %39 = and i32 %1, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = and i32 %2, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44, %41
  %50 = phi i32 [ 4, %41 ], [ 3, %44 ]
  %51 = tail call i32 @sta_info_move_state(ptr noundef %0, i32 noundef %50) #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %49, %44, %38
  %54 = and i1 %20, %22
  br i1 %54, label %55, label %63

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = tail call i32 @sta_info_move_state(ptr noundef %0, i32 noundef 2) #12
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60, %55, %53
  %64 = and i1 %5, %7
  br i1 %64, label %65, label %73

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = tail call i32 @sta_info_move_state(ptr noundef %0, i32 noundef 1) #12
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %65, %63
  br label %74

74:                                               ; preds = %73, %70, %60, %49, %35, %15
  %75 = phi i32 [ 0, %73 ], [ %16, %15 ], [ %36, %35 ], [ %51, %49 ], [ %61, %60 ], [ %71, %70 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_sta_set_txpwr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_parse_bitrates(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_ht_cap_ie_to_sta_ht_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vht_cap_ie_to_sta_vht_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_he_cap_ie_to_sta_he_cap(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ieee80211_vht_handle_opmode(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_move_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_update_airtime_weight(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_destroy_addr_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_check_station_change(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_check_fast_rx_iface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_clear_fast_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vif_dec_num_mcast(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_fast_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vif_inc_num_mcast(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_send_layer2_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_ps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_ps_vif(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sta_set_sinfo(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get_by_idx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_ocb_join(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_ocb_leave(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_rate_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_regulatory_limit_wmm_params(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_conf_tx(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_hw_config(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_request_scan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_mgd_auth(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_mgd_assoc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_mgd_deauth(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_mgd_disassoc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_ibss_join(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_ibss_leave(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_fast_xmit_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_txq_set_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_set_frag_threshold(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_set_coverage_class(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_set_rts_threshold(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_txpower(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_get_txpower(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_set_bitrate_mask(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_get_survey(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_config_iface_filter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_set_antenna(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_get_antenna(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_request_sched_scan_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_request_sched_scan_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_set_rekey_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_xmit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #11 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_fast_xmit_iface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_do_open(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sdata_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_vif_change_bandwidth(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_flush_queues(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_handle_tspec_ac_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_start_nan(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_stop_nan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_add_nan_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_del_nan_func(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_nan_change_conf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_get_ftm_responder_stats(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_start_pmsr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_abort_pmsr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

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
!8 = !{i64 2149579907}
!9 = !{i64 2149580124}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i8 0, i8 2}
!12 = !{i64 2159262405}
!13 = !{i64 2159262587}
!14 = !{i64 2157534542}
!15 = !{i64 2157534702}
!16 = !{!"auto-init"}
!17 = !{i64 2159248312}
!18 = !{i64 2159248514}
!19 = !{i64 2159233436}
!20 = !{i64 2159233640}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2155781217, i64 2155781705, i64 2155781254, i64 2155781310, i64 2155781344, i64 2155781368, i64 2155781409, i64 2155781430, i64 2155781458, i64 2155781492}
!23 = !{i64 2157670618}
!24 = !{i64 2157670786}
!25 = !{i64 2157521672}
!26 = !{i64 2157521824}
!27 = !{i64 790020, i64 790041}
!28 = !{i64 2157962711}
!29 = !{i64 2157962873}
!30 = !{i64 2158665954}
!31 = !{i64 2158666112}
!32 = !{i64 2159764405}
!33 = !{i64 2157975941}
!34 = !{i64 2157976121}
!35 = !{i64 2158007030}
!36 = !{i64 2158007210}
!37 = !{i64 2157993520}
!38 = !{i64 2157993698}
!39 = !{i64 2159310040}
!40 = !{i64 2159310226}
!41 = !{i64 2155786126, i64 2155786614, i64 2155786163, i64 2155786219, i64 2155786253, i64 2155786277, i64 2155786318, i64 2155786339, i64 2155786367, i64 2155786401}
!42 = !{i64 2158433716}
!43 = !{i64 2158433904}
!44 = !{i64 2158273251}
!45 = !{i64 2158273429}
!46 = !{i64 2157803003}
!47 = !{i64 2157803243}
!48 = !{i64 2158313780}
!49 = !{i64 2158313974}
!50 = !{i64 2158331272}
!51 = !{i64 2158331466}
!52 = !{i64 2158452136}
!53 = !{i64 2158452320}
!54 = !{i64 2149257232}
!55 = !{i64 2159849620}
!56 = !{i64 2158752810}
!57 = !{i64 2158752984}
!58 = !{i64 2158765991}
!59 = !{i64 2158766151}
!60 = !{i64 2158798545}
!61 = !{i64 2158798725}
!62 = !{i64 2158812399}
!63 = !{i64 2158812593}
!64 = !{i64 2158784290}
!65 = !{i64 2158784494}
!66 = !{i64 2159388531}
!67 = !{i64 2159388743}
!68 = !{i64 2158825808}
!69 = !{i64 2158825972}
!70 = !{i64 2158843160}
!71 = !{i64 2158843324}
!72 = !{i64 2159666566}
!73 = !{i64 2159702788}
!74 = !{i64 2159421322}
!75 = !{i64 2159421520}
!76 = !{i64 2159678428}
!77 = !{i64 2159690910}
!78 = !{i64 2158652857}
!79 = !{i64 2158653029}
