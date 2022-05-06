; ModuleID = '/llk/IR/net/mac80211/mlme.c_pt.bc'
source_filename = "../net/mac80211/mlme.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_chswitch_done:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_chswitch_done\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_chswitch_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_ap_probereq_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_ap_probereq_get\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_ap_probereq_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_beacon_loss:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_beacon_loss\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_beacon_loss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_connection_loss:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_connection_loss\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_connection_loss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_cqm_rssi_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_cqm_rssi_notify\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_cqm_rssi_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_cqm_beacon_loss_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_cqm_beacon_loss_notify\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_cqm_beacon_loss_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.90 }
%union.anon.90 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.151, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.118, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.118 = type { i32, i16 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.ieee80211_if_managed = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i8, i8, ptr, ptr, ptr, [6 x i8], i8, i8, i8, i8, i32, i32, %struct.work_struct, i32, i8, i8, i8, i32, i8, i8, i16, i32, i32, i32, i32, i32, i8, i16, %struct.ewma_beacon_signal, i32, i32, i32, i32, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_s1g_cap, %struct.ieee80211_s1g_cap, [6 x i8], %struct.delayed_work, ptr, ptr, %struct.spinlock, i8, i8, [4 x %struct.ieee80211_sta_tx_tspec], %struct.delayed_work, ptr, i32 }
%struct.ewma_beacon_signal = type { i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_s1g_cap = type { [10 x i8], [5 x i8] }
%struct.ieee80211_sta_tx_tspec = type { i32, i32, i8, i8, i32, i32, i8 }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.140, [17 x i16], %struct.anon.141, %struct.anon.142, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
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
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.element = type { i8, i8, [0 x i8] }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.152 }
%union.anon.152 = type { %struct.anon.158, [16 x i8] }
%struct.anon.158 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_ext = type { i16, i16, %union.anon.185 }
%union.anon.185 = type { %struct.anon.187 }
%struct.anon.187 = type <{ [6 x i8], i32, i8, [3 x i8], [0 x i8] }>
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_mgd_assoc_data = type { ptr, ptr, i32, i32, i16, [6 x i8], [32 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct.ieee80211_vht_cap, [32 x i8], [64 x i8], i32, i32, [0 x i8] }
%struct.ieee802_11_elems = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8 }
%struct.ieee80211_multiple_bssid_configuration = type { i8, i8 }
%struct.ieee80211_event = type { i32, %union.anon.131 }
%union.anon.131 = type { %struct.ieee80211_mlme_event }
%struct.ieee80211_mlme_event = type { i32, i32, i16 }
%struct.ieee80211_prep_tx_info = type { i16, i16, i8 }
%struct.ieee80211_bss = type { i32, i32, i8, i8, [32 x i8], i32, ptr, i32, i8, i8, i8, i8 }
%struct.ieee80211_mgd_auth_data = type { ptr, i32, i32, i16, i16, [13 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i32, [0 x i8] }
%struct.ieee80211_timeout_interval_ie = type <{ i8, i32 }>
%struct.anon.165 = type { i8, %union.anon.166 }
%union.anon.166 = type <{ %struct.anon.171, [17 x i8] }>
%struct.anon.171 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.anon.169 = type { i8, %struct.ieee80211_ext_chansw_ie, [0 x i8] }
%struct.ieee80211_ext_chansw_ie = type { i8, i8, i8, i8 }
%struct.ieee80211_csa_ie = type { %struct.cfg80211_chan_def, i8, i8, i8, i16, i16, i32 }
%struct.ieee80211_channel_switch = type { i64, i32, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.116, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.116 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.114 }>
%struct.anon.114 = type { ptr, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.cfg80211_deauth_request = type { ptr, ptr, i32, i16, i8 }
%struct.cfg80211_auth_request = type { ptr, ptr, i32, i32, ptr, i8, i8, ptr, i32 }
%struct.cfg80211_bss_ies = type { i64, %struct.callback_head, i32, i8, [0 x i8] }
%struct.ieee80211_he_operation = type <{ i32, i16, [0 x i8] }>
%struct.cfg80211_assoc_request = type { ptr, ptr, ptr, i32, %struct.cfg80211_crypto_settings, i8, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, ptr, i32, ptr, %struct.ieee80211_s1g_cap, %struct.ieee80211_s1g_cap }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_tim_ie = type { i8, i8, i8, [1 x i8] }
%struct.cfg80211_disassoc_request = type { ptr, ptr, i32, i16, i8 }
%struct.ieee80211_mu_edca_param_set = type { i8, %struct.ieee80211_he_mu_edca_param_ac_rec, %struct.ieee80211_he_mu_edca_param_ac_rec, %struct.ieee80211_he_mu_edca_param_ac_rec, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.anon.190 = type { i8, i8, i8 }
%struct.ieee80211_country_ie_triplet = type { %union.anon.189 }
%union.anon.189 = type { %struct.anon.190 }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.ieee80211_bss_max_idle_period_ie = type <{ i16, i8 }>

@__param_str_max_nullfunc_tries = internal constant [19 x i8] c"max_nullfunc_tries\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_nullfunc_tries = internal global i32 2, align 4
@__param_max_nullfunc_tries = internal constant %struct.kernel_param { ptr @__param_str_max_nullfunc_tries, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @max_nullfunc_tries } }, section "__param", align 4
@__UNIQUE_ID_max_nullfunc_triestype807 = internal constant [32 x i8] c"parmtype=max_nullfunc_tries:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_nullfunc_tries808 = internal constant [83 x i8] c"parm=max_nullfunc_tries:Maximum nullfunc tx tries before disconnecting (reason 4).\00", section ".modinfo", align 1
@__param_str_max_probe_tries = internal constant [16 x i8] c"max_probe_tries\00", align 1
@max_probe_tries = internal global i32 5, align 4
@__param_max_probe_tries = internal constant %struct.kernel_param { ptr @__param_str_max_probe_tries, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @max_probe_tries } }, section "__param", align 4
@__UNIQUE_ID_max_probe_triestype809 = internal constant [29 x i8] c"parmtype=max_probe_tries:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_probe_tries810 = internal constant [74 x i8] c"parm=max_probe_tries:Maximum probe tries before disconnecting (reason 4).\00", section ".modinfo", align 1
@__param_str_beacon_loss_count = internal constant [18 x i8] c"beacon_loss_count\00", align 1
@beacon_loss_count = internal global i32 7, align 4
@__param_beacon_loss_count = internal constant %struct.kernel_param { ptr @__param_str_beacon_loss_count, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @beacon_loss_count } }, section "__param", align 4
@__UNIQUE_ID_beacon_loss_counttype811 = internal constant [31 x i8] c"parmtype=beacon_loss_count:int\00", section ".modinfo", align 1
@__UNIQUE_ID_beacon_loss_count812 = internal constant [84 x i8] c"parm=beacon_loss_count:Number of beacon intervals before we decide beacon was lost.\00", section ".modinfo", align 1
@__param_str_probe_wait_ms = internal constant [14 x i8] c"probe_wait_ms\00", align 1
@probe_wait_ms = internal global i32 500, align 4
@__param_probe_wait_ms = internal constant %struct.kernel_param { ptr @__param_str_probe_wait_ms, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @probe_wait_ms } }, section "__param", align 4
@__UNIQUE_ID_probe_wait_mstype813 = internal constant [27 x i8] c"parmtype=probe_wait_ms:int\00", section ".modinfo", align 1
@__UNIQUE_ID_probe_wait_ms814 = internal constant [96 x i8] c"parm=probe_wait_ms:Maximum time(ms) to wait for probe response before disconnecting (reason 4).\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [20 x i8] c"net/mac80211/mlme.c\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"\016%s: driver channel switch failed, disconnecting\0A\00", align 1
@__kstrtab_ieee80211_chswitch_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_chswitch_done = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_chswitch_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_chswitch_done to i32), ptr @__kstrtab_ieee80211_chswitch_done, ptr @__kstrtabns_ieee80211_chswitch_done }, section "___ksymtab+ieee80211_chswitch_done", align 4
@ieee80211_ap_probereq_get.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid SSID element (len=%d)\00", align 1
@__kstrtab_ieee80211_ap_probereq_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_ap_probereq_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_ap_probereq_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_ap_probereq_get to i32), ptr @__kstrtab_ieee80211_ap_probereq_get, ptr @__kstrtabns_ieee80211_ap_probereq_get }, section "___ksymtab+ieee80211_ap_probereq_get", align 4
@__kstrtab_ieee80211_beacon_loss = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_beacon_loss = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_beacon_loss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_beacon_loss to i32), ptr @__kstrtab_ieee80211_beacon_loss, ptr @__kstrtabns_ieee80211_beacon_loss }, section "___ksymtab+ieee80211_beacon_loss", align 4
@__kstrtab_ieee80211_connection_loss = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_connection_loss = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_connection_loss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_connection_loss to i32), ptr @__kstrtab_ieee80211_connection_loss, ptr @__kstrtabns_ieee80211_connection_loss }, section "___ksymtab+ieee80211_connection_loss", align 4
@__kstrtab_ieee80211_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_disconnect to i32), ptr @__kstrtab_ieee80211_disconnect, ptr @__kstrtabns_ieee80211_disconnect }, section "___ksymtab+ieee80211_disconnect", align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"UNSPECIFIED\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"PREV_AUTH_NOT_VALID\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"DEAUTH_LEAVING\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"DISASSOC_DUE_TO_INACTIVITY\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"DISASSOC_AP_BUSY\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"CLASS2_FRAME_FROM_NONAUTH_STA\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"CLASS3_FRAME_FROM_NONASSOC_STA\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"DISASSOC_STA_HAS_LEFT\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"STA_REQ_ASSOC_WITHOUT_AUTH\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"DISASSOC_BAD_POWER\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"DISASSOC_BAD_SUPP_CHAN\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"INVALID_IE\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"MIC_FAILURE\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"4WAY_HANDSHAKE_TIMEOUT\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"GROUP_KEY_HANDSHAKE_TIMEOUT\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"IE_DIFFERENT\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"INVALID_GROUP_CIPHER\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"INVALID_PAIRWISE_CIPHER\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"INVALID_AKMP\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"UNSUPP_RSN_VERSION\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"INVALID_RSN_IE_CAP\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"IEEE8021X_FAILED\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"CIPHER_SUITE_REJECTED\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"DISASSOC_UNSPECIFIED_QOS\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"DISASSOC_QAP_NO_BANDWIDTH\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"DISASSOC_LOW_ACK\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"DISASSOC_QAP_EXCEED_TXOP\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"QSTA_LEAVE_QBSS\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"QSTA_NOT_USE\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"QSTA_REQUIRE_SETUP\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"QSTA_TIMEOUT\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"QSTA_CIPHER_NOT_SUPP\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"MESH_PEER_CANCELED\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"MESH_MAX_PEERS\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"MESH_CONFIG\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"MESH_CLOSE\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"MESH_MAX_RETRIES\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"MESH_CONFIRM_TIMEOUT\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"MESH_INVALID_GTK\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"MESH_INCONSISTENT_PARAM\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"MESH_INVALID_SECURITY\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"MESH_PATH_ERROR\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"MESH_PATH_NOFORWARD\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"MESH_PATH_DEST_UNREACHABLE\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"MAC_EXISTS_IN_MBSS\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"MESH_CHAN_REGULATORY\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"MESH_CHAN\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@__const.ieee80211_sta_work.event = private unnamed_addr constant { i32, { { i32, i32, i16, [2 x i8] } } } { i32 1, { { i32, i32, i16, [2 x i8] } } { { i32, i32, i16, [2 x i8] } { i32 0, i32 2, i16 0, [2 x i8] zeroinitializer } } }, align 4
@__const.ieee80211_sta_work.event.51 = private unnamed_addr constant { i32, { { i32, i32, i16, [2 x i8] } } } { i32 1, { { i32, i32, i16, [2 x i8] } } { { i32, i32, i16, [2 x i8] } { i32 1, i32 2, i16 0, [2 x i8] zeroinitializer } } }, align 4
@.str.52 = private unnamed_addr constant [50 x i8] c"\016%s: disconnect from AP %pM for new auth to %pM\0A\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"\016%s: authenticate with %pM\0A\00", align 1
@.str.54 = private unnamed_addr constant [51 x i8] c"\016%s: disconnect from AP %pM for new assoc to %pM\0A\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"disabling HT/VHT/HE due to WEP/TKIP use\0A\00", align 1
@.str.56 = private unnamed_addr constant [59 x i8] c"disabling HT/VHT/HE as WMM/QoS is not supported by the AP\0A\00", align 1
@.str.57 = private unnamed_addr constant [48 x i8] c"\016%s: VHT capa missing/short, disabling VHT/HE\0A\00", align 1
@.str.58 = private unnamed_addr constant [48 x i8] c"U-APSD not supported with HW_PS_NULLFUNC_STACK\0A\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"\016%s: waiting for beacon from %pM\0A\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"beacon and probe response\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"beacon\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"probe response\00", align 1
@.str.64 = private unnamed_addr constant [43 x i8] c"\016%s: associating with AP with corrupt %s\0A\00", align 1
@__const.ieee80211_mgd_deauth.info = private unnamed_addr constant { i16, i16, i8, [1 x i8] } { i16 0, i16 192, i8 0, [1 x i8] zeroinitializer }, align 2
@.str.65 = private unnamed_addr constant [72 x i8] c"\016%s: aborting authentication with %pM by local choice (Reason: %u=%s)\0A\00", align 1
@.str.66 = private unnamed_addr constant [69 x i8] c"\016%s: aborting association with %pM by local choice (Reason: %u=%s)\0A\00", align 1
@.str.67 = private unnamed_addr constant [65 x i8] c"\016%s: deauthenticating from %pM by local choice (Reason: %u=%s)\0A\00", align 1
@.str.68 = private unnamed_addr constant [63 x i8] c"\016%s: disassociating from %pM by local choice (Reason: %u=%s)\0A\00", align 1
@__kstrtab_ieee80211_cqm_rssi_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_cqm_rssi_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_cqm_rssi_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_cqm_rssi_notify to i32), ptr @__kstrtab_ieee80211_cqm_rssi_notify, ptr @__kstrtabns_ieee80211_cqm_rssi_notify }, section "___ksymtab+ieee80211_cqm_rssi_notify", align 4
@__kstrtab_ieee80211_cqm_beacon_loss_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_cqm_beacon_loss_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_cqm_beacon_loss_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_cqm_beacon_loss_notify to i32), ptr @__kstrtab_ieee80211_cqm_beacon_loss_notify, ptr @__kstrtabns_ieee80211_cqm_beacon_loss_notify }, section "___ksymtab+ieee80211_cqm_beacon_loss_notify", align 4
@.str.69 = private unnamed_addr constant [27 x i8] c"net/mac80211/ieee80211_i.h\00", align 1
@__tracepoint_api_chswitch_done = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_drv_tx_frames_pending = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_bool = external dso_local global %struct.tracepoint, align 4
@.str.71 = private unnamed_addr constant [54 x i8] c"\013%s: failed to set TX queue parameters for queue %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ieee802_1d_to_ac = external dso_local local_unnamed_addr constant [8 x i32], align 4
@__tracepoint_api_beacon_loss = external dso_local global %struct.tracepoint, align 4
@__tracepoint_api_connection_loss = external dso_local global %struct.tracepoint, align 4
@__tracepoint_api_disconnect = external dso_local global %struct.tracepoint, align 4
@.str.72 = private unnamed_addr constant [60 x i8] c"\016%s: failed to follow AP %pM bandwidth change, disconnect\0A\00", align 1
@.str.73 = private unnamed_addr constant [56 x i8] c"\016%s: driver post channel switch failed, disconnecting\0A\00", align 1
@drv_post_channel_switch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@.str.75 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@__tracepoint_drv_post_channel_switch = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@.str.76 = private unnamed_addr constant [67 x i8] c"\016%s: AP has invalid WMM params (AIFSN=%d for ACI %d), will use 2\0A\00", align 1
@.str.77 = private unnamed_addr constant [78 x i8] c"\016%s: AP has invalid WMM params (CWmin/max=%d/%d for ACI %d), using defaults\0A\00", align 1
@.str.78 = private unnamed_addr constant [65 x i8] c"\016%s: AP has invalid WMM params (missing AC %d), using defaults\0A\00", align 1
@.str.79 = private unnamed_addr constant [51 x i8] c"\013%s: failed to set TX queue parameters for AC %d\0A\00", align 1
@ieee80211_config_bw.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.80 = private unnamed_addr constant [86 x i8] c"\016%s: AP %pM changed bandwidth, new config is %d.%03d MHz, width %d (%d.%03d/%d MHz)\0A\00", align 1
@.str.81 = private unnamed_addr constant [81 x i8] c"\016%s: AP %pM changed caps/bw in a way we can't support (0x%x/0x%x) - disconnect\0A\00", align 1
@.str.82 = private unnamed_addr constant [65 x i8] c"\016%s: AP %pM changed bandwidth to incompatible one - disconnect\0A\00", align 1
@.str.83 = private unnamed_addr constant [23 x i8] c"include/net/cfg80211.h\00", align 1
@.str.84 = private unnamed_addr constant [66 x i8] c"\016%s: Missing S1G Operation Element? Trying operating == primary\0A\00", align 1
@.str.85 = private unnamed_addr constant [104 x i8] c"\016%s: Wrong control channel: center-freq: %d ht-cfreq: %d ht->primary_chan: %d band: %d - Disabling HT\0A\00", align 1
@.str.86 = private unnamed_addr constant [54 x i8] c"\016%s: HE AP VHT information is invalid, disabling HE\0A\00", align 1
@.str.87 = private unnamed_addr constant [52 x i8] c"\016%s: AP VHT information is invalid, disabling VHT\0A\00", align 1
@.str.88 = private unnamed_addr constant [58 x i8] c"\016%s: AP VHT information doesn't match HT, disabling VHT\0A\00", align 1
@.str.89 = private unnamed_addr constant [83 x i8] c"\016%s: capabilities/regulatory prevented using AP HT/VHT configuration, downgraded\0A\00", align 1
@ieee80211_determine_chantype.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.90 = private unnamed_addr constant [66 x i8] c"\017%s: Limiting TX power to %d (%d - %d) dBm as advertised by %pM\0A\00", align 1
@.str.91 = private unnamed_addr constant [56 x i8] c"\017%s: Limiting TX power to %d dBm as advertised by %pM\0A\00", align 1
@ieee80211_find_80211h_pwr_constr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__const.ieee80211_rx_mgmt_auth.event = private unnamed_addr constant { i32, { { i32, i32, i16, [2 x i8] } } } { i32 1, { { i32, i32, i16, [2 x i8] } } zeroinitializer }, align 4
@.str.92 = private unnamed_addr constant [91 x i8] c"\016%s: %pM unexpected authentication state: alg %d (expected %d) transact %d (expected %d)\0A\00", align 1
@.str.93 = private unnamed_addr constant [45 x i8] c"\016%s: %pM denied authentication (status %d)\0A\00", align 1
@ieee80211_rx_mgmt_auth.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.94 = private unnamed_addr constant [20 x i8] c"invalid auth alg %d\00", align 1
@.str.95 = private unnamed_addr constant [26 x i8] c"\016%s: SAE peer confirmed\0A\00", align 1
@.str.96 = private unnamed_addr constant [48 x i8] c"\016%s: deauthenticated from %pM (Reason: %u=%s)\0A\00", align 1
@.str.97 = private unnamed_addr constant [66 x i8] c"\016%s: deauthenticated from %pM while associating (Reason: %u=%s)\0A\00", align 1
@.str.98 = private unnamed_addr constant [46 x i8] c"\016%s: disassociated from %pM (Reason: %u=%s)\0A\00", align 1
@__const.ieee80211_rx_mgmt_assoc_resp.event = private unnamed_addr constant { i32, { { i32, i32, i16, [2 x i8] } } } { i32 1, { { i32, i32, i16, [2 x i8] } } { { i32, i32, i16, [2 x i8] } { i32 1, i32 0, i16 0, [2 x i8] zeroinitializer } } }, align 4
@.str.99 = private unnamed_addr constant [60 x i8] c"\016%s: RX %sssocResp from %pM (capab=0x%x status=%d aid=%d)\0A\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"Rea\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.102 = private unnamed_addr constant [77 x i8] c"\016%s: %pM rejected association temporarily; comeback duration %u TU (%u ms)\0A\00", align 1
@.str.103 = private unnamed_addr constant [40 x i8] c"\016%s: %pM denied association (code=%d)\0A\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"\016%s: associated\0A\00", align 1
@ieee80211_ac_to_qos_mask = external dso_local local_unnamed_addr constant [4 x i8], align 1
@.str.105 = private unnamed_addr constant [56 x i8] c"\016%s: invalid AID value %d (out of range), turn off PS\0A\00", align 1
@.str.106 = private unnamed_addr constant [41 x i8] c"\016%s: no SuppRates element in AssocResp\0A\00", align 1
@.str.107 = private unnamed_addr constant [48 x i8] c"\016%s: AP bug: WMM param missing from AssocResp\0A\00", align 1
@.str.108 = private unnamed_addr constant [52 x i8] c"\016%s: AP bug: HT capability missing from AssocResp\0A\00", align 1
@.str.109 = private unnamed_addr constant [51 x i8] c"\016%s: AP bug: HT operation missing from AssocResp\0A\00", align 1
@.str.110 = private unnamed_addr constant [47 x i8] c"\016%s: AP bug: VHT capa missing from AssocResp\0A\00", align 1
@.str.111 = private unnamed_addr constant [52 x i8] c"\016%s: AP bug: VHT operation missing from AssocResp\0A\00", align 1
@.str.112 = private unnamed_addr constant [62 x i8] c"\016%s: HT AP is missing WMM params or HT capability/operation\0A\00", align 1
@.str.113 = private unnamed_addr constant [50 x i8] c"\016%s: VHT AP is missing VHT capability/operation\0A\00", align 1
@.str.114 = private unnamed_addr constant [55 x i8] c"\016%s: HE 6 GHz AP is missing HE 6 GHz band capability\0A\00", align 1
@.str.115 = private unnamed_addr constant [48 x i8] c"\016%s: HE AP is missing HE capability/operation\0A\00", align 1
@.str.116 = private unnamed_addr constant [51 x i8] c"\016%s: failed to move station %pM to desired state\0A\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"net/mac80211/sta_info.h\00", align 1
@drv_sta_set_4addr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_sta_set_4addr = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@.str.118 = private unnamed_addr constant [93 x i8] c"\016%s: AP %pM switches to different band (%d MHz, width:%d, CF1/2: %d/%d MHz), disconnecting\0A\00", align 1
@.str.119 = private unnamed_addr constant [108 x i8] c"\016%s: AP %pM switches to unsupported channel (%d.%03d MHz, width:%d, CF1/2: %d.%03d/%d MHz), disconnecting\0A\00", align 1
@.str.120 = private unnamed_addr constant [58 x i8] c"\016%s: AP %pM tries to chanswitch to same channel, ignore\0A\00", align 1
@.str.121 = private unnamed_addr constant [58 x i8] c"\016%s: no channel context assigned to vif?, disconnecting\0A\00", align 1
@.str.122 = private unnamed_addr constant [64 x i8] c"\016%s: driver doesn't support chan-switch with channel contexts\0A\00", align 1
@.str.123 = private unnamed_addr constant [58 x i8] c"\016%s: preparing for channel switch failed, disconnecting\0A\00", align 1
@.str.124 = private unnamed_addr constant [84 x i8] c"\016%s: failed to reserve channel context for channel switch, disconnecting (err=%d)\0A\00", align 1
@drv_abort_channel_switch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_abort_channel_switch = external dso_local global %struct.tracepoint, align 4
@drv_channel_switch_rx_beacon.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_channel_switch_rx_beacon = external dso_local global %struct.tracepoint, align 4
@drv_pre_channel_switch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_pre_channel_switch = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_channel_switch = external dso_local global %struct.tracepoint, align 4
@ieee80211_set_disassoc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__const.ieee80211_auth.info = private unnamed_addr constant { i16, i16, i8, [1 x i8] } { i16 0, i16 176, i8 0, [1 x i8] zeroinitializer }, align 2
@ieee80211_auth.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.125 = private unnamed_addr constant [41 x i8] c"\016%s: authentication with %pM timed out\0A\00", align 1
@.str.126 = private unnamed_addr constant [36 x i8] c"\016%s: send auth to %pM (try %d/%d)\0A\00", align 1
@__tracepoint_drv_event_callback = external dso_local global %struct.tracepoint, align 4
@.str.127 = private unnamed_addr constant [38 x i8] c"\016%s: association with %pM timed out\0A\00", align 1
@.str.128 = private unnamed_addr constant [38 x i8] c"\016%s: associate with %pM (try %d/%d)\0A\00", align 1
@ieee80211_send_assoc.before_ht = internal constant [12 x i8] c"\00\012!$0.F679;", align 1
@ieee80211_send_assoc.after_ric = internal constant [9 x i8] c";-H\7FY^k\BF\C7", align 1
@ieee80211_send_assoc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_send_assoc.before_vht = internal constant [5 x i8] c"H\7FY^k", align 1
@ieee80211_send_assoc.before_he = internal constant [13 x i8] c"\C7\FF\0E\FF\04\FF\0C\FF\03\FF\05\FF\06", align 1
@ieee80211_add_he_ie.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_mgd_probe_ap_send.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.129 = private unnamed_addr constant [70 x i8] c"\016%s: failed to use reserved channel context, disconnecting (err=%d)\0A\00", align 1
@.str.130 = private unnamed_addr constant [56 x i8] c"\016%s: failed to finalize channel switch, disconnecting\0A\00", align 1
@.str.131 = private unnamed_addr constant [33 x i8] c"\016%s: Connection to AP %pM lost\0A\00", align 1
@.str.132 = private unnamed_addr constant [50 x i8] c"\016%s: Driver requested disconnection from AP %pM\0A\00", align 1
@.str.133 = private unnamed_addr constant [21 x i8] c"\016%s: authenticated\0A\00", align 1
@ieee80211_mark_sta_auth.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.134 = private unnamed_addr constant [22 x i8] c"%s: STA %pM not found\00", align 1
@.str.135 = private unnamed_addr constant [33 x i8] c"\016%s: failed moving %pM to auth\0A\00", align 1
@.str.136 = private unnamed_addr constant [47 x i8] c"\016%s: No legacy rates in association response\0A\00", align 1
@.str.137 = private unnamed_addr constant [46 x i8] c"\016%s: No basic rates, using min rate instead\0A\00", align 1
@.str.138 = private unnamed_addr constant [46 x i8] c"\016%s: No rates found, keeping mandatory only\0A\00", align 1
@.str.139 = private unnamed_addr constant [56 x i8] c"\016%s: failed to insert STA entry for the AP (error %d)\0A\00", align 1
@ieee80211_prep_connection.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.140 = private unnamed_addr constant [57 x i8] c"\016%s: AP advertised VHT without HT, disabling HT/VHT/HE\0A\00", align 1
@.str.141 = private unnamed_addr constant [43 x i8] c"\016%s: bad VHT capabilities, disabling VHT\0A\00", align 1
@.str.142 = private unnamed_addr constant [43 x i8] c"\016%s: 80 MHz not supported, disabling VHT\0A\00", align 1
@.str.143 = private unnamed_addr constant [41 x i8] c"\016%s: AP missing S1G operation element?\0A\00", align 1
@.str.144 = private unnamed_addr constant [42 x i8] c"\016%s: Rejecting non-HE 6/7 GHz connection\00", align 1
@sta_info_pre_move_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sta_info_pre_move_state.__already_done.145 = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_mgd_prepare_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_mgd_prepare_tx.__already_done.146 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_mgd_prepare_tx = external dso_local global %struct.tracepoint, align 4
@drv_mgd_complete_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_mgd_complete_tx.__already_done.147 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_mgd_complete_tx = external dso_local global %struct.tracepoint, align 4
@__tracepoint_api_cqm_rssi_notify = external dso_local global %struct.tracepoint, align 4
@__tracepoint_api_cqm_beacon_loss_notify = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_beacon_loss_count812, ptr @__UNIQUE_ID_beacon_loss_counttype811, ptr @__UNIQUE_ID_max_nullfunc_tries808, ptr @__UNIQUE_ID_max_nullfunc_triestype807, ptr @__UNIQUE_ID_max_probe_tries810, ptr @__UNIQUE_ID_max_probe_triestype809, ptr @__UNIQUE_ID_probe_wait_ms814, ptr @__UNIQUE_ID_probe_wait_mstype813, ptr @__ksymtab_ieee80211_ap_probereq_get, ptr @__ksymtab_ieee80211_beacon_loss, ptr @__ksymtab_ieee80211_chswitch_done, ptr @__ksymtab_ieee80211_connection_loss, ptr @__ksymtab_ieee80211_cqm_beacon_loss_notify, ptr @__ksymtab_ieee80211_cqm_rssi_notify, ptr @__ksymtab_ieee80211_disconnect, ptr @__param_beacon_loss_count, ptr @__param_max_nullfunc_tries, ptr @__param_max_probe_tries, ptr @__param_probe_wait_ms], section "llvm.metadata"
@switch.table.ieee80211_get_reason_code_string = private unnamed_addr constant [66 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.50, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.50, ptr @.str.50, ptr @.str.50, ptr @.str.50, ptr @.str.50, ptr @.str.50, ptr @.str.50, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.50, ptr @.str.50, ptr @.str.50, ptr @.str.50, ptr @.str.50, ptr @.str.34, ptr @.str.50, ptr @.str.50, ptr @.str.50, ptr @.str.50, ptr @.str.50, ptr @.str.50, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], align 4
@switch.table.ieee80211_mgd_auth = private unnamed_addr constant [8 x i16] [i16 0, i16 1, i16 2, i16 128, i16 3, i16 4, i16 5, i16 6], align 2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_reset_beacon_monitor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 10
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 4
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 131072
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 20
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, %15
  %19 = tail call i32 @round_jiffies_up(i32 noundef %18) #13
  %20 = tail call i32 @mod_timer(ptr noundef %14, i32 noundef %19) #13
  br label %21

21:                                               ; preds = %13, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_up(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_reset_conn_monitor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5, !prof !8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 4
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 131072
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = add i32 %19, 3000
  %21 = tail call i32 @round_jiffies_up(i32 noundef %20) #13
  %22 = tail call i32 @mod_timer(ptr noundef %18, i32 noundef %21) #13
  br label %23

23:                                               ; preds = %17, %10, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_send_pspoll(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %4 = tail call ptr @ieee80211_pspoll_get(ptr noundef %0, ptr noundef %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = load i16, ptr %8, align 2
  %10 = or i16 %9, 4096
  store i16 %10, ptr %8, align 2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = or i32 %12, 65536
  store i32 %13, ptr %11, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 9
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.69, i32 noundef 2200, i32 noundef 9, ptr noundef null) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  tail call void @kfree_skb_reason(ptr noundef nonnull %4, i32 noundef 0) #13
  br label %21

18:                                               ; preds = %6
  %19 = load ptr, ptr %15, align 4
  %20 = load i32, ptr %19, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 7, i32 noundef %20) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %21

21:                                               ; preds = %18, %17, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_pspoll_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_send_nullfunc(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %5 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %6 = getelementptr %struct.ieee80211_hw, ptr %0, i32 0, i32 4, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 512
  %9 = icmp eq i32 %8, 0
  %10 = tail call ptr @ieee80211_nullfunc_get(ptr noundef %0, ptr noundef %4, i1 noundef zeroext %9) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %3
  br i1 %2, label %13, label %18

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = load i16, ptr %15, align 2
  %17 = or i16 %16, 4096
  store i16 %17, ptr %15, align 2
  br label %18

18:                                               ; preds = %13, %12
  %19 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = or i32 %20, 73728
  store i32 %21, ptr %19, align 8
  %22 = load volatile i32, ptr %5, align 4
  %23 = and i32 %22, 65536
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = or i32 %20, 73729
  store i32 %26, ptr %19, align 8
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi i32 [ %26, %25 ], [ %21, %18 ]
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 9
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = or i32 %28, 536870912
  store i32 %34, ptr %19, align 8
  br label %35

35:                                               ; preds = %33, %27
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 9
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40, !prof !8

39:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.69, i32 noundef 2200, i32 noundef 9, ptr noundef null) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  tail call void @kfree_skb_reason(ptr noundef nonnull %10, i32 noundef 0) #13
  br label %43

40:                                               ; preds = %35
  %41 = load ptr, ptr %37, align 4
  %42 = load i32, ptr %41, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %1, ptr noundef nonnull %10, i32 noundef 7, i32 noundef %42) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %43

43:                                               ; preds = %40, %39, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_nullfunc_get(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_send_4addr_nullfunc(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %7, label %6, !prof !11

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1118, i32 noundef 9, ptr noundef null) #13
  br label %39

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 30
  %11 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %10, i32 noundef 2592) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %39, label %13

13:                                               ; preds = %7
  %14 = load i32, ptr %8, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %14
  store ptr %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 %14
  store ptr %20, ptr %18, align 8
  %21 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef 30) #13
  %22 = getelementptr inbounds i8, ptr %21, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(30) %22, i8 0, i32 28, i1 false) #13
  store i16 840, ptr %21, align 2
  %23 = getelementptr inbounds %struct.ieee80211_hdr, ptr %21, i32 0, i32 2
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 23, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %23, ptr noundef align 4 dereferenceable(6) %24, i32 6, i1 false)
  %25 = getelementptr inbounds %struct.ieee80211_hdr, ptr %21, i32 0, i32 3
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %25, ptr noundef align 8 dereferenceable(6) %26, i32 6, i1 false)
  %27 = getelementptr inbounds %struct.ieee80211_hdr, ptr %21, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %27, ptr noundef align 4 dereferenceable(6) %24, i32 6, i1 false)
  %28 = getelementptr inbounds %struct.ieee80211_hdr, ptr %21, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %28, ptr noundef align 8 dereferenceable(6) %26, i32 6, i1 false)
  %29 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  %31 = or i32 %30, 65536
  store i32 %31, ptr %29, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 9
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !8

35:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.69, i32 noundef 2200, i32 noundef 9, ptr noundef null) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  tail call void @kfree_skb_reason(ptr noundef nonnull %11, i32 noundef 0) #13
  br label %39

36:                                               ; preds = %13
  %37 = load ptr, ptr %33, align 4
  %38 = load i32, ptr %37, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %1, ptr noundef nonnull %11, i32 noundef 7, i32 noundef %38) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %39

39:                                               ; preds = %36, %35, %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_chswitch_done(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -2264
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_chswitch_done, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #13
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %18 = tail call i32 @__traceiter_api_chswitch_done(ptr noundef null, ptr noundef %3, i1 noundef zeroext %1) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %19

19:                                               ; preds = %17, %6, %2
  br i1 %1, label %23, label %20

20:                                               ; preds = %19
  %21 = getelementptr i8, ptr %0, i32 -1896
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %21) #14
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi i32 [ -728, %20 ], [ -760, %19 ]
  %25 = getelementptr i8, ptr %0, i32 -1908
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %0, i32 %24
  tail call void @ieee80211_queue_work(ptr noundef %26, ptr noundef %27) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_recalc_ps(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 256
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 92
  store ptr null, ptr %7, align 4
  br label %125

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %64, label %12

12:                                               ; preds = %25, %8
  %13 = phi ptr [ %28, %25 ], [ %10, %8 ]
  %14 = phi ptr [ %27, %25 ], [ null, %8 ]
  %15 = phi i32 [ %26, %25 ], [ 0, %8 ]
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 9
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 58
  %22 = load i32, ptr %21, align 8
  switch i32 %22, label %25 [
    i32 3, label %64
    i32 2, label %23
  ]

23:                                               ; preds = %20
  %24 = add i32 %15, 1
  br label %25

25:                                               ; preds = %23, %20, %12
  %26 = phi i32 [ %24, %23 ], [ %15, %12 ], [ %15, %20 ]
  %27 = phi ptr [ %13, %23 ], [ %14, %12 ], [ %14, %20 ]
  %28 = load ptr, ptr %13, align 8
  %29 = icmp eq ptr %28, %9
  br i1 %29, label %30, label %12

30:                                               ; preds = %25
  %31 = icmp eq i32 %26, 1
  br i1 %31, label %32, label %64

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %27, i32 0, i32 57
  %34 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %33, i32 0, i32 17
  %35 = load i8, ptr %34, align 2, !range !14
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %64, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %33, i32 0, i32 18
  %39 = load i8, ptr %38, align 1, !range !14
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %27, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %27, i32 0, i32 57, i32 0, i32 24, i32 9
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %27, i32 0, i32 57, i32 0, i32 23, i32 3
  %52 = load i8, ptr %51, align 4, !range !14
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %50
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %55 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %27, i32 0, i32 57, i32 0, i32 23, i32 1
  %56 = tail call ptr @sta_info_get(ptr noundef %27, ptr noundef %55) #13
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %64

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.sta_info, ptr %56, i32 0, i32 23
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br i1 %63, label %64, label %66

64:                                               ; preds = %59, %58, %50, %45, %41, %37, %32, %30, %20, %8
  %65 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 92
  store ptr null, ptr %65, align 4
  br label %114

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %33, i32 0, i32 20
  %68 = load i8, ptr %67, align 1
  %69 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 98
  %70 = load i32, ptr %69, align 4
  %71 = icmp slt i32 %70, 0
  %72 = select i1 %71, i32 100, i32 %70
  %73 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 2
  store i32 %72, ptr %73, align 8
  %74 = icmp eq i8 %68, 0
  %75 = select i1 %74, i8 1, i8 %68
  %76 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 4
  store i8 %75, ptr %76, align 2
  %77 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 92
  store ptr %27, ptr %77, align 4
  %78 = icmp eq ptr %27, null
  br i1 %78, label %114, label %79

79:                                               ; preds = %66
  %80 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 67
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %125

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load volatile i32, ptr %2, align 4
  %89 = and i32 %88, 1024
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 95
  %93 = load volatile i32, ptr @jiffies, align 64
  %94 = tail call i32 @__msecs_to_jiffies(i32 noundef %85) #13
  %95 = add i32 %94, %93
  %96 = tail call i32 @mod_timer(ptr noundef %92, i32 noundef %95) #13
  br label %125

97:                                               ; preds = %87, %83
  %98 = load volatile i32, ptr %2, align 4
  %99 = and i32 %98, 512
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  tail call void @ieee80211_send_nullfunc(ptr noundef %0, ptr noundef nonnull %27, i1 noundef zeroext true) #13
  br label %102

102:                                              ; preds = %101, %97
  %103 = load volatile i32, ptr %2, align 4
  %104 = and i32 %103, 512
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load volatile i32, ptr %2, align 4
  %108 = and i32 %107, 65536
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %106, %102
  %111 = load i32, ptr %0, align 4
  %112 = or i32 %111, 2
  store i32 %112, ptr %0, align 4
  %113 = tail call i32 @ieee80211_hw_config(ptr noundef %0, i32 noundef 16) #13
  br label %125

114:                                              ; preds = %66, %64
  %115 = load i32, ptr %0, align 4
  %116 = and i32 %115, 2
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %114
  %119 = and i32 %115, -3
  store i32 %119, ptr %0, align 4
  %120 = tail call i32 @ieee80211_hw_config(ptr noundef %0, i32 noundef 16) #13
  %121 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 95
  %122 = tail call i32 @del_timer_sync(ptr noundef %121) #13
  %123 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 93
  %124 = tail call zeroext i1 @cancel_work_sync(ptr noundef %123) #13
  br label %125

125:                                              ; preds = %118, %114, %110, %106, %91, %79, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_recalc_ps_vif(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %3 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %2, i32 0, i32 17
  %4 = load i8, ptr %3, align 2, !range !14
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %2, i32 0, i32 18
  %8 = load i8, ptr %7, align 1, !range !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 3
  %21 = load i8, ptr %20, align 4, !range !14
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  %25 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef %24) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sta_info, ptr %25, i32 0, i32 23
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 8
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i1 [ %31, %27 ], [ false, %23 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %34

34:                                               ; preds = %32, %19, %14, %10, %6, %1
  %35 = phi i1 [ %33, %32 ], [ false, %1 ], [ false, %6 ], [ false, %10 ], [ false, %14 ], [ false, %19 ]
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 38
  %37 = load i8, ptr %36, align 2, !range !14
  %38 = zext i1 %35 to i8
  %39 = icmp eq i8 %37, %38
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i8 %38, ptr %36, align 2
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 131072) #13
  br label %41

41:                                               ; preds = %40, %34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_dynamic_ps_disable_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -4448
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = and i32 %3, -3
  store i32 %7, ptr %2, align 8
  %8 = tail call i32 @ieee80211_hw_config(ptr noundef %2, i32 noundef 16) #13
  br label %9

9:                                                ; preds = %6, %1
  tail call void @ieee80211_wake_queues_by_reason(ptr noundef %2, i32 noundef 65535, i32 noundef 1, i1 noundef zeroext false) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_hw_config(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues_by_reason(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_dynamic_ps_enable_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -4432
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %168, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %168

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 -4424
  %12 = load i32, ptr %11, align 8
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %88

14:                                               ; preds = %10
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tx_frames_pending, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  %29 = tail call i32 @__traceiter_drv_tx_frames_pending(ptr noundef null, ptr noundef %2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  br label %30

30:                                               ; preds = %28, %17, %14
  %31 = getelementptr i8, ptr %0, i32 -3900
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ieee80211_ops, ptr %32, i32 0, i32 58
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = tail call zeroext i1 %34(ptr noundef %2) #13
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi i1 [ %37, %36 ], [ false, %30 ]
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_bool, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %54 = tail call i32 @__traceiter_drv_return_bool(ptr noundef null, ptr noundef %2, i1 noundef zeroext %39) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  br label %55

55:                                               ; preds = %53, %42, %38
  br i1 %39, label %56, label %63

56:                                               ; preds = %55
  %57 = getelementptr i8, ptr %0, i32 32
  %58 = load volatile i32, ptr @jiffies, align 64
  %59 = load i32, ptr %11, align 8
  %60 = tail call i32 @__msecs_to_jiffies(i32 noundef %59) #13
  %61 = add i32 %60, %58
  %62 = tail call i32 @mod_timer(ptr noundef %57, i32 noundef %61) #13
  br label %168

63:                                               ; preds = %55
  %64 = getelementptr i8, ptr %0, i32 -3124
  %65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %64) #13
  %66 = getelementptr i8, ptr %0, i32 -4332
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  %69 = icmp eq i16 %67, 0
  br i1 %69, label %87, label %70

70:                                               ; preds = %63
  %71 = getelementptr i8, ptr %0, i32 -3892
  br label %75

72:                                               ; preds = %75
  %73 = add nuw nsw i32 %76, 1
  %74 = icmp eq i32 %73, %68
  br i1 %74, label %87, label %75

75:                                               ; preds = %72, %70
  %76 = phi i32 [ 0, %70 ], [ %73, %72 ]
  %77 = getelementptr [16 x i32], ptr %71, i32 0, i32 %76
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %72, label %80

80:                                               ; preds = %75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %65) #13
  %81 = getelementptr i8, ptr %0, i32 32
  %82 = load volatile i32, ptr @jiffies, align 64
  %83 = load i32, ptr %11, align 8
  %84 = tail call i32 @__msecs_to_jiffies(i32 noundef %83) #13
  %85 = add i32 %84, %82
  %86 = tail call i32 @mod_timer(ptr noundef %81, i32 noundef %85) #13
  br label %168

87:                                               ; preds = %72, %63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %65) #13
  br label %88

88:                                               ; preds = %87, %10
  %89 = getelementptr i8, ptr %0, i32 -4364
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %90, 512
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %148, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 57, i32 0, i32 24, i32 9
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 256
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %148

98:                                               ; preds = %93
  %99 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tx_frames_pending, i32 0, i32 1), align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = tail call ptr @llvm.thread.pointer() #13
  %103 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %104 = load i32, ptr %103, align 8
  %105 = lshr i32 %104, 5
  %106 = getelementptr i32, ptr @__cpu_online_mask, i32 %105
  %107 = load volatile i32, ptr %106, align 4
  %108 = and i32 %104, 31
  %109 = shl nuw i32 1, %108
  %110 = and i32 %109, %107
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %101
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  %113 = tail call i32 @__traceiter_drv_tx_frames_pending(ptr noundef null, ptr noundef %2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  br label %114

114:                                              ; preds = %112, %101, %98
  %115 = getelementptr i8, ptr %0, i32 -3900
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.ieee80211_ops, ptr %116, i32 0, i32 58
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %114
  %121 = tail call zeroext i1 %118(ptr noundef %2) #13
  br label %122

122:                                              ; preds = %120, %114
  %123 = phi i1 [ %121, %120 ], [ false, %114 ]
  %124 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_bool, i32 0, i32 1), align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %122
  %127 = tail call ptr @llvm.thread.pointer() #13
  %128 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 2
  %129 = load i32, ptr %128, align 8
  %130 = lshr i32 %129, 5
  %131 = getelementptr i32, ptr @__cpu_online_mask, i32 %130
  %132 = load volatile i32, ptr %131, align 4
  %133 = and i32 %129, 31
  %134 = shl nuw i32 1, %133
  %135 = and i32 %134, %132
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %126
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %138 = tail call i32 @__traceiter_drv_return_bool(ptr noundef null, ptr noundef %2, i1 noundef zeroext %123) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  br label %139

139:                                              ; preds = %137, %126, %122
  br i1 %123, label %140, label %147

140:                                              ; preds = %139
  %141 = getelementptr i8, ptr %0, i32 32
  %142 = load volatile i32, ptr @jiffies, align 64
  %143 = load i32, ptr %11, align 8
  %144 = tail call i32 @__msecs_to_jiffies(i32 noundef %143) #13
  %145 = add i32 %144, %142
  %146 = tail call i32 @mod_timer(ptr noundef %141, i32 noundef %145) #13
  br label %148

147:                                              ; preds = %139
  tail call void @ieee80211_send_nullfunc(ptr noundef %2, ptr noundef nonnull %4, i1 noundef zeroext true)
  tail call void @ieee80211_flush_queues(ptr noundef %2, ptr noundef nonnull %4, i1 noundef zeroext false) #13
  br label %148

148:                                              ; preds = %147, %140, %93, %88
  %149 = load volatile i32, ptr %89, align 4
  %150 = and i32 %149, 65536
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %148
  %153 = load volatile i32, ptr %89, align 4
  %154 = and i32 %153, 512
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 57, i32 0, i32 24, i32 9
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, 256
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %156, %152, %148
  %162 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 57, i32 0, i32 24, i32 9
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, -257
  store i32 %164, ptr %162, align 4
  %165 = load i32, ptr %2, align 8
  %166 = or i32 %165, 2
  store i32 %166, ptr %2, align 8
  %167 = tail call i32 @ieee80211_hw_config(ptr noundef %2, i32 noundef 16) #13
  br label %168

168:                                              ; preds = %161, %156, %80, %56, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_flush_queues(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_dynamic_ps_timer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -4464
  %3 = getelementptr i8, ptr %0, i32 -32
  tail call void @ieee80211_queue_work(ptr noundef %2, ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_dfs_cac_timer_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.cfg80211_chan_def, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #13
  %3 = getelementptr i8, ptr %0, i32 1236
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef align 4 dereferenceable(28) %3, i32 28, i1 false)
  %4 = getelementptr i8, ptr %0, i32 -780
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %6) #13
  %7 = getelementptr i8, ptr %0, i32 -891
  %8 = load i8, ptr %7, align 1, !range !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -1136
  tail call void @ieee80211_vif_release_channel(ptr noundef %11) #13
  %12 = getelementptr i8, ptr %0, i32 -784
  %13 = load ptr, ptr %12, align 8
  call void @cfg80211_cac_event(ptr noundef %13, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 3264) #13
  br label %14

14:                                               ; preds = %10, %1
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.ieee80211_local, ptr %15, i32 0, i32 66
  call void @mutex_unlock(ptr noundef %16) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vif_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_cac_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_handle_tspec_ac_params(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 11
  %5 = load i16, ptr %4, align 4
  %6 = icmp ult i16 %5, 4
  br i1 %6, label %107, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 112
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 13
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 208
  br label %12

12:                                               ; preds = %101, %7
  %13 = phi i32 [ 0, %7 ], [ %103, %101 ]
  %14 = phi i1 [ false, %7 ], [ %102, %101 ]
  %15 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %8, i32 0, i32 %13
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %8, i32 0, i32 %13, i32 5
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %101 [
    i32 0, label %19
    i32 2, label %34
    i32 1, label %43
  ]

19:                                               ; preds = %12
  %20 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %8, i32 0, i32 %13, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %101, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %15, align 4
  %25 = sub i32 100, %16
  %26 = add i32 %25, %24
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %101

28:                                               ; preds = %23
  %29 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %8, i32 0, i32 %13, i32 4
  store i32 0, ptr %29, align 4
  store i32 %16, ptr %15, align 4
  %30 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %8, i32 0, i32 %13, i32 6
  %31 = load i8, ptr %30, align 4, !range !14
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %101, label %33

33:                                               ; preds = %28
  store i32 2, ptr %17, align 4
  br label %34

34:                                               ; preds = %33, %12
  %35 = trunc i32 %13 to i16
  %36 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 %13
  %37 = tail call i32 @drv_conf_tx(ptr noundef %3, ptr noundef %0, i16 noundef zeroext %35, ptr noundef %36) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %10, i32 noundef %13) #14
  br label %41

41:                                               ; preds = %39, %34
  store i32 0, ptr %17, align 4
  %42 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %8, i32 0, i32 %13, i32 6
  store i8 0, ptr %42, align 4
  br label %101

43:                                               ; preds = %12
  %44 = load i32, ptr %15, align 4
  %45 = sub i32 100, %16
  %46 = add i32 %45, %44
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, ptr %17, align 4
  br label %101

49:                                               ; preds = %43
  %50 = icmp eq i32 %13, 3
  br i1 %50, label %86, label %51

51:                                               ; preds = %49
  %52 = add nuw nsw i32 %13, 1
  %53 = load i8, ptr %9, align 2
  %54 = zext i8 %53 to i32
  %55 = mul nsw i32 %52, -2
  %56 = add nsw i32 %55, 7
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %54
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %86, label %60

60:                                               ; preds = %51
  %61 = icmp eq i32 %52, 3
  br i1 %61, label %86, label %62

62:                                               ; preds = %60
  %63 = add nuw nsw i32 %13, 2
  %64 = load i8, ptr %9, align 2
  %65 = zext i8 %64 to i32
  %66 = mul nsw i32 %63, -2
  %67 = add nsw i32 %66, 7
  %68 = shl nuw i32 1, %67
  %69 = and i32 %68, %65
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %62
  %72 = icmp eq i32 %63, 3
  br i1 %72, label %86, label %73

73:                                               ; preds = %71
  %74 = add nuw nsw i32 %13, 3
  %75 = load i8, ptr %9, align 2
  %76 = zext i8 %75 to i32
  %77 = mul nsw i32 %74, -2
  %78 = add nsw i32 %77, 7
  %79 = shl nuw i32 1, %78
  %80 = and i32 %79, %76
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %73
  %83 = icmp eq i32 %13, 0
  %84 = add nuw nsw i32 %13, 4
  %85 = select i1 %83, i32 4, i32 %84
  br label %86

86:                                               ; preds = %82, %73, %71, %62, %60, %51, %49
  %87 = phi i32 [ %52, %51 ], [ 4, %49 ], [ 4, %60 ], [ %63, %62 ], [ 4, %71 ], [ %74, %73 ], [ %85, %82 ]
  %88 = tail call i32 @llvm.smin.i32(i32 %87, i32 3) #13
  %89 = trunc i32 %13 to i16
  %90 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 %88
  %91 = tail call i32 @drv_conf_tx(ptr noundef %3, ptr noundef %0, i16 noundef zeroext %89, ptr noundef %90) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %86
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %10, i32 noundef %13) #14
  br label %95

95:                                               ; preds = %93, %86
  store i32 0, ptr %17, align 4
  %96 = load i32, ptr %15, align 4
  %97 = sub i32 101, %16
  %98 = add i32 %97, %96
  %99 = load ptr, ptr @system_wq, align 4
  %100 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %99, ptr noundef %11, i32 noundef %98) #13
  br label %101

101:                                              ; preds = %95, %48, %41, %28, %23, %19, %12
  %102 = phi i1 [ true, %48 ], [ true, %95 ], [ true, %41 ], [ %14, %28 ], [ %14, %23 ], [ %14, %19 ], [ %14, %12 ]
  %103 = add nuw nsw i32 %13, 1
  %104 = icmp eq i32 %103, 4
  br i1 %104, label %105, label %12

105:                                              ; preds = %101
  br i1 %102, label %106, label %107

106:                                              ; preds = %105
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 8192) #13
  br label %107

107:                                              ; preds = %106, %105, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_tx_notify(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = load i16, ptr %1, align 2
  %7 = and i16 %6, 140
  %8 = icmp eq i16 %7, 136
  br i1 %8, label %9, label %55

9:                                                ; preds = %4
  %10 = and i16 %6, 768
  %11 = icmp eq i16 %10, 768
  %12 = select i1 %11, i32 30, i32 24
  %13 = getelementptr i8, ptr %1, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 7
  %16 = zext i8 %15 to i32
  %17 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 112
  %20 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %19, i32 0, i32 %18
  %21 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %19, i32 0, i32 %18, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %55, label %24, !prof !11

24:                                               ; preds = %9
  %25 = load i32, ptr %20, align 4
  %26 = sub i32 100, %5
  %27 = add i32 %26, %25
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %19, i32 0, i32 %18, i32 4
  store i32 0, ptr %30, align 4
  store i32 %5, ptr %20, align 4
  %31 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %19, i32 0, i32 %18, i32 6
  %32 = load i8, ptr %31, align 4, !range !14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %19, i32 0, i32 %18, i32 5
  store i32 2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 208
  %37 = load ptr, ptr @system_wq, align 4
  %38 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %37, ptr noundef %36, i32 noundef 0) #13
  br label %39

39:                                               ; preds = %34, %29, %24
  %40 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %19, i32 0, i32 %18, i32 6
  %41 = load i8, ptr %40, align 4, !range !14
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = zext i16 %3 to i32
  %45 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %19, i32 0, i32 %18, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %44
  store i32 %47, ptr %45, align 4
  %48 = load i32, ptr %21, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  store i8 1, ptr %40, align 4
  %51 = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %19, i32 0, i32 %18, i32 5
  store i32 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 208
  %53 = load ptr, ptr @system_wq, align 4
  %54 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %53, ptr noundef %52, i32 noundef 0) #13
  br label %55

55:                                               ; preds = %50, %43, %39, %9, %4
  %56 = load i16, ptr %1, align 2
  %57 = and i16 %56, 124
  %58 = icmp eq i16 %57, 72
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 0, i32 1
  %61 = load i32, ptr %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  br i1 %2, label %64, label %65

64:                                               ; preds = %63
  store i32 0, ptr %60, align 8
  br label %67

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1
  store i8 1, ptr %66, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %69, ptr noundef %70) #13
  br label %71

71:                                               ; preds = %67, %59, %55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_ap_probereq_get(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -2264
  %4 = load i32, ptr %1, align 8
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %7, label %6, !prof !11

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2668, i32 noundef 9, ptr noundef null) #13
  br label %50

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %1, i32 -696
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %1, i32 -692
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %1, i32 -688
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %15, %11
  %20 = phi ptr [ %13, %11 ], [ %17, %15 ]
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %7
  %23 = phi ptr [ %9, %7 ], [ %21, %19 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %24 = tail call ptr @ieee80211_bss_get_elem(ptr noundef %23, i8 noundef zeroext 0) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i1, ptr @ieee80211_ap_probereq_get.__already_done, align 1
  br i1 %27, label %43, label %35, !prof !11

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.element, ptr %24, i32 0, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = icmp ugt i8 %30, 32
  %32 = load i1, ptr @ieee80211_ap_probereq_get.__already_done, align 1
  %33 = xor i1 %32, true
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %36, label %38, !prof !8

35:                                               ; preds = %26
  store i1 true, ptr @ieee80211_ap_probereq_get.__already_done, align 1
  br label %41

36:                                               ; preds = %28
  store i1 true, ptr @ieee80211_ap_probereq_get.__already_done, align 1
  %37 = zext i8 %30 to i32
  br label %41

38:                                               ; preds = %28
  %39 = select i1 %31, i8 0, i8 %30
  %40 = zext i8 %39 to i32
  br label %43

41:                                               ; preds = %36, %35
  %42 = phi i32 [ %37, %36 ], [ -1, %35 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2686, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %42) #13
  br label %43

43:                                               ; preds = %41, %38, %26
  %44 = phi i32 [ 0, %26 ], [ %40, %38 ], [ 0, %41 ]
  %45 = getelementptr i8, ptr %1, i32 800
  %46 = getelementptr inbounds %struct.cfg80211_bss, ptr %23, i32 0, i32 11
  %47 = load ptr, ptr %23, align 4
  %48 = getelementptr inbounds %struct.element, ptr %24, i32 0, i32 2
  %49 = tail call ptr @ieee80211_build_probe_req(ptr noundef %3, ptr noundef %45, ptr noundef %46, i32 noundef -1, ptr noundef %47, ptr noundef %48, i32 noundef %44, ptr noundef null, i32 noundef 0, i32 noundef 1) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %50

50:                                               ; preds = %43, %15, %6
  %51 = phi ptr [ null, %6 ], [ %49, %43 ], [ null, %15 ]
  ret ptr %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_bss_get_elem(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_build_probe_req(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_beacon_loss(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -2264
  %3 = getelementptr i8, ptr %0, i32 -1908
  %4 = load ptr, ptr %3, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_beacon_loss, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = tail call ptr @llvm.thread.pointer() #13
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  %19 = tail call i32 @__traceiter_api_beacon_loss(ptr noundef null, ptr noundef %2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  br label %20

20:                                               ; preds = %18, %7, %1
  %21 = getelementptr i8, ptr %0, i32 -699
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, -2
  store i8 %23, ptr %21, align 1
  %24 = getelementptr i8, ptr %0, i32 -744
  tail call void @ieee80211_queue_work(ptr noundef %4, ptr noundef %24) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_connection_loss(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -2264
  %3 = getelementptr i8, ptr %0, i32 -1908
  %4 = load ptr, ptr %3, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_connection_loss, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = tail call ptr @llvm.thread.pointer() #13
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %19 = tail call i32 @__traceiter_api_connection_loss(ptr noundef null, ptr noundef %2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  br label %20

20:                                               ; preds = %18, %7, %1
  %21 = getelementptr i8, ptr %0, i32 -699
  %22 = load i8, ptr %21, align 1
  %23 = or i8 %22, 1
  store i8 %23, ptr %21, align 1
  %24 = getelementptr i8, ptr %0, i32 -744
  tail call void @ieee80211_queue_work(ptr noundef %4, ptr noundef %24) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_disconnect(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -2264
  %4 = getelementptr i8, ptr %0, i32 -1908
  %5 = load ptr, ptr %4, align 4
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_disconnect, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #13
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !23
  %20 = tail call i32 @__traceiter_api_disconnect(ptr noundef null, ptr noundef %3, i1 noundef zeroext %1) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %21

21:                                               ; preds = %19, %8, %2
  %22 = load i32, ptr %0, align 8
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %25, label %24, !prof !11

24:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2831, i32 noundef 9, ptr noundef null) #13
  br label %32

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %0, i32 -699
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, -7
  %29 = select i1 %1, i8 6, i8 2
  %30 = or i8 %29, %28
  store i8 %30, ptr %26, align 1
  %31 = getelementptr i8, ptr %0, i32 -744
  tail call void @ieee80211_queue_work(ptr noundef %5, ptr noundef %31) #13
  br label %32

32:                                               ; preds = %25, %24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ieee80211_get_reason_code_string(i16 noundef zeroext %0) local_unnamed_addr #6 {
  %2 = add i16 %0, -1
  %3 = icmp ult i16 %2, 66
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = sext i16 %2 to i32
  %6 = getelementptr inbounds [66 x ptr], ptr @switch.table.ieee80211_get_reason_code_string, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi ptr [ %7, %4 ], [ @.str.50, %1 ]
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_rx_queued_ext(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 7
  tail call void @mutex_lock(ptr noundef %6) #13
  %7 = and i16 %5, 240
  %8 = icmp eq i16 %7, 16
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  tail call fastcc void @ieee80211_rx_mgmt_beacon(ptr noundef %0, ptr noundef %4, i32 noundef %12, ptr noundef %10)
  br label %13

13:                                               ; preds = %9, %2
  tail call void @mutex_unlock(ptr noundef %6) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_rx_mgmt_beacon(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca [26 x i8], align 1
  %7 = alloca %struct.ieee80211_p2p_noa_attr, align 1
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4
  %13 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6
  %14 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(26) %6, i8 0, i32 26, i1 false), !annotation !25
  %15 = load i32, ptr %9, align 8
  %16 = tail call ptr @ieee80211_get_bssid(ptr noundef %1, i32 noundef %2, i32 noundef %15) #13
  %17 = load i16, ptr %1, align 2
  %18 = and i16 %17, 252
  %19 = icmp eq i16 %18, 28
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = and i16 %17, 508
  %22 = icmp eq i16 %21, 284
  %23 = getelementptr inbounds %struct.ieee80211_ext, ptr %1, i32 1
  %24 = getelementptr inbounds %struct.ieee80211_ext, ptr %1, i32 0, i32 2, i32 0, i32 3
  %25 = select i1 %22, ptr %23, ptr %24
  br label %26

26:                                               ; preds = %20, %4
  %27 = phi ptr [ %25, %20 ], [ %14, %4 ]
  %28 = ptrtoint ptr %27 to i32
  %29 = ptrtoint ptr %1 to i32
  %30 = sub i32 %28, %29
  %31 = icmp ugt i32 %30, %2
  br i1 %31, label %456, label %32

32:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %456

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %3, i32 0, i32 5
  %39 = load i16, ptr %38, align 4
  %40 = and i16 %39, 8191
  %41 = zext i16 %40 to i32
  %42 = mul nuw nsw i32 %41, 1000
  %43 = and i16 %39, 8192
  %44 = icmp eq i16 %43, 0
  %45 = select i1 %44, i32 0, i32 500
  %46 = add nuw nsw i32 %42, %45
  %47 = load ptr, ptr %34, align 4
  %48 = getelementptr inbounds %struct.ieee80211_channel, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = mul i32 %49, 1000
  %51 = getelementptr inbounds %struct.ieee80211_channel, ptr %47, i32 0, i32 2
  %52 = load i16, ptr %51, align 4
  %53 = zext i16 %52 to i32
  %54 = add i32 %50, %53
  %55 = icmp eq i32 %46, %54
  tail call void asm sideeffect "", "~{memory}"() #13
  br i1 %55, label %56, label %456

56:                                               ; preds = %37
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %162, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %58, i32 0, i32 11
  %62 = load i8, ptr %61, align 4, !range !14
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %162, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %58, align 4
  %66 = getelementptr inbounds %struct.cfg80211_bss, ptr %65, i32 0, i32 11
  %67 = load i32, ptr %16, align 4
  %68 = load i32, ptr %66, align 4
  %69 = xor i32 %68, %67
  %70 = getelementptr i8, ptr %16, i32 4
  %71 = load i16, ptr %70, align 2
  %72 = getelementptr %struct.cfg80211_bss, ptr %65, i32 0, i32 11, i32 4
  %73 = load i16, ptr %72, align 2
  %74 = xor i16 %73, %71
  %75 = zext i16 %74 to i32
  %76 = or i32 %69, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %64
  %79 = getelementptr inbounds %struct.cfg80211_bss, ptr %65, i32 0, i32 6
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %162, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.cfg80211_bss, ptr %80, i32 0, i32 11
  %84 = load i32, ptr %83, align 4
  %85 = xor i32 %84, %67
  %86 = getelementptr %struct.cfg80211_bss, ptr %80, i32 0, i32 11, i32 4
  %87 = load i16, ptr %86, align 2
  %88 = xor i16 %87, %71
  %89 = zext i16 %88 to i32
  %90 = or i32 %85, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %162

92:                                               ; preds = %82, %64
  %93 = sub i32 %2, %30
  %94 = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %27, i32 noundef %93, i1 noundef zeroext false, i64 noundef 0, i32 noundef 0, ptr noundef %16, ptr noundef %66) #13
  %95 = icmp eq ptr %94, null
  br i1 %95, label %456, label %96

96:                                               ; preds = %92
  tail call fastcc void @ieee80211_rx_bss_info(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %97 = getelementptr inbounds %struct.ieee802_11_elems, ptr %94, i32 0, i32 51
  %98 = load i8, ptr %97, align 2
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %8, i32 0, i32 20
  store i8 %98, ptr %101, align 1
  br label %102

102:                                              ; preds = %100, %96
  %103 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 3
  store i8 1, ptr %103, align 4
  %104 = load ptr, ptr %57, align 4
  %105 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %104, i32 0, i32 11
  store i8 0, ptr %105, align 4
  %106 = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 4
  %107 = load volatile i32, ptr %106, align 4
  %108 = and i32 %107, 16777216
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %102
  %111 = load i64, ptr %13, align 2
  %112 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 21
  store i64 %111, ptr %112, align 8
  %113 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %3, i32 0, i32 2
  %114 = load i32, ptr %113, align 8
  %115 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 22
  store i32 %114, ptr %115, align 8
  %116 = getelementptr inbounds %struct.ieee802_11_elems, ptr %94, i32 0, i32 50
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 23
  store i8 %117, ptr %118, align 4
  br label %119

119:                                              ; preds = %110, %102
  %120 = getelementptr inbounds %struct.ieee802_11_elems, ptr %94, i32 0, i32 47
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.ieee80211_multiple_bssid_configuration, ptr %121, i32 0, i32 1
  %125 = load i8, ptr %124, align 1
  br label %126

126:                                              ; preds = %123, %119
  %127 = phi i8 [ %125, %123 ], [ 0, %119 ]
  %128 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 55
  store i8 %127, ptr %128, align 2
  %129 = getelementptr inbounds %struct.ieee802_11_elems, ptr %94, i32 0, i32 57
  %130 = load i8, ptr %129, align 4
  %131 = icmp ugt i8 %130, 10
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.ieee802_11_elems, ptr %94, i32 0, i32 5
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr i8, ptr %134, i32 10
  %136 = load i8, ptr %135, align 1
  %137 = and i8 %136, 8
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132, %126
  br label %140

140:                                              ; preds = %139, %132
  %141 = phi i8 [ 0, %139 ], [ 1, %132 ]
  %142 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 54
  store i8 %141, ptr %142, align 1
  %143 = load volatile i32, ptr @jiffies, align 64
  %144 = load ptr, ptr %57, align 4
  %145 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %144, i32 0, i32 2
  store i32 %143, ptr %145, align 4
  %146 = load ptr, ptr %57, align 4
  %147 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %146, i32 0, i32 13
  store i8 1, ptr %147, align 2
  %148 = load ptr, ptr %57, align 4
  %149 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %148, i32 0, i32 2
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %152 = load volatile ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %159, label %154

154:                                              ; preds = %140
  %155 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %156 = load i32, ptr %155, align 8
  %157 = sub i32 %150, %156
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154, %140
  %160 = tail call i32 @mod_timer(ptr noundef %8, i32 noundef %150) #13
  br label %161

161:                                              ; preds = %159, %154
  tail call void @kfree(ptr noundef nonnull %94) #13
  br label %456

162:                                              ; preds = %82, %78, %60, %56
  %163 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %456, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.cfg80211_bss, ptr %164, i32 0, i32 11
  %168 = load i32, ptr %16, align 4
  %169 = load i32, ptr %167, align 4
  %170 = xor i32 %169, %168
  %171 = getelementptr i8, ptr %16, i32 4
  %172 = load i16, ptr %171, align 2
  %173 = getelementptr %struct.cfg80211_bss, ptr %164, i32 0, i32 11, i32 4
  %174 = load i16, ptr %173, align 2
  %175 = xor i16 %174, %172
  %176 = zext i16 %175 to i32
  %177 = or i32 %170, %176
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %193, label %179

179:                                              ; preds = %166
  %180 = getelementptr inbounds %struct.cfg80211_bss, ptr %164, i32 0, i32 6
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %456, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.cfg80211_bss, ptr %181, i32 0, i32 11
  %185 = load i32, ptr %184, align 4
  %186 = xor i32 %185, %168
  %187 = getelementptr %struct.cfg80211_bss, ptr %181, i32 0, i32 11, i32 4
  %188 = load i16, ptr %187, align 2
  %189 = xor i16 %188, %172
  %190 = zext i16 %189 to i32
  %191 = or i32 %186, %190
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %456

193:                                              ; preds = %183, %166
  %194 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %3, i32 0, i32 4
  %195 = load i32, ptr %194, align 8
  %196 = and i32 %195, 256
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  tail call fastcc void @ieee80211_handle_beacon_sig(ptr noundef %0, ptr noundef %8, ptr noundef %10, ptr noundef %12, ptr noundef %3)
  br label %199

199:                                              ; preds = %198, %193
  %200 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %201 = load i32, ptr %200, align 4
  %202 = and i32 %201, 2
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %199
  tail call fastcc void @ieee80211_reset_ap_probe(ptr noundef %0)
  br label %205

205:                                              ; preds = %204, %199
  %206 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 10
  %207 = load i32, ptr %206, align 8
  %208 = and i32 %207, 1
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %205
  %211 = load ptr, ptr %11, align 4
  %212 = getelementptr inbounds %struct.ieee80211_hw, ptr %211, i32 0, i32 4
  %213 = load volatile i32, ptr %212, align 4
  %214 = and i32 %213, 131072
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2
  %218 = load volatile i32, ptr @jiffies, align 64
  %219 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 20
  %220 = load i32, ptr %219, align 8
  %221 = add i32 %220, %218
  %222 = tail call i32 @round_jiffies_up(i32 noundef %221) #13
  %223 = tail call i32 @mod_timer(ptr noundef %217, i32 noundef %222) #13
  br label %224

224:                                              ; preds = %216, %210, %205
  %225 = load i16, ptr %1, align 2
  %226 = and i16 %225, 252
  %227 = icmp eq i16 %226, 28
  br i1 %227, label %231, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 0, i32 2, i32 4
  %230 = tail call i32 @crc32_be(i32 noundef 0, ptr noundef %229, i32 noundef 4) #15
  br label %231

231:                                              ; preds = %228, %224
  %232 = phi i32 [ 0, %224 ], [ %230, %228 ]
  %233 = sub i32 %2, %30
  %234 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 4
  %235 = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %27, i32 noundef %233, i1 noundef zeroext false, i64 noundef 3458804237973061760, i32 noundef %232, ptr noundef %234, ptr noundef %167) #13
  %236 = icmp eq ptr %235, null
  br i1 %236, label %456, label %237

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 2
  %239 = load i32, ptr %238, align 4
  %240 = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 4
  %241 = load volatile i32, ptr %240, align 4
  %242 = and i32 %241, 512
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %273, label %244

244:                                              ; preds = %237
  %245 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 9
  %246 = load ptr, ptr %245, align 4
  %247 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 60
  %248 = load i8, ptr %247, align 1
  %249 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 13
  %250 = load i16, ptr %249, align 2
  %251 = tail call fastcc zeroext i1 @ieee80211_check_tim(ptr noundef %246, i8 noundef zeroext %248, i16 noundef zeroext %250)
  br i1 %251, label %252, label %273

252:                                              ; preds = %244
  %253 = getelementptr inbounds %struct.ieee80211_conf, ptr %12, i32 0, i32 2
  %254 = load i32, ptr %253, align 8
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %252
  %257 = load i32, ptr %12, align 8
  %258 = and i32 %257, 2
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %256
  %261 = and i32 %257, -3
  store i32 %261, ptr %12, align 8
  %262 = tail call i32 @ieee80211_hw_config(ptr noundef %12, i32 noundef 16) #13
  br label %263

263:                                              ; preds = %260, %256
  tail call void @ieee80211_send_nullfunc(ptr noundef %12, ptr noundef %0, i1 noundef zeroext false)
  br label %273

264:                                              ; preds = %252
  %265 = getelementptr inbounds %struct.ieee80211_local, ptr %12, i32 0, i32 91
  %266 = load i8, ptr %265, align 8, !range !14
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %8, i32 0, i32 17
  %270 = load i8, ptr %269, align 2, !range !14
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %268
  store i8 1, ptr %265, align 8
  tail call void @ieee80211_send_pspoll(ptr noundef %12, ptr noundef %0)
  br label %273

273:                                              ; preds = %272, %268, %264, %263, %244, %237
  %274 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 3
  %275 = load i8, ptr %274, align 2, !range !14
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %273
  %278 = load i32, ptr %206, align 8
  %279 = and i32 %278, 8
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %303, label %281

281:                                              ; preds = %277, %273
  call void @llvm.lifetime.start.p0(i64 54, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(54) %7, i8 0, i32 54, i1 false)
  %282 = call i32 @cfg80211_get_p2p_attr(ptr noundef %27, i32 noundef %233, i32 noundef 12, ptr noundef nonnull %7, i32 noundef 54) #13
  %283 = icmp sgt i32 %282, 1
  %284 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %8, i32 0, i32 38
  %285 = load i16, ptr %284, align 2
  br i1 %283, label %286, label %294

286:                                              ; preds = %281
  %287 = sext i16 %285 to i32
  %288 = load i8, ptr %7, align 1
  %289 = zext i8 %288 to i32
  %290 = icmp eq i32 %287, %289
  br i1 %290, label %302, label %291

291:                                              ; preds = %286
  %292 = zext i8 %288 to i16
  store i16 %292, ptr %284, align 2
  %293 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 44
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(54) %293, ptr noundef nonnull align 1 dereferenceable(54) %7, i32 54, i1 false)
  br label %298

294:                                              ; preds = %281
  %295 = icmp eq i16 %285, -1
  br i1 %295, label %302, label %296

296:                                              ; preds = %294
  store i16 -1, ptr %284, align 2
  %297 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 44
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(54) %297, i8 0, i32 54, i1 false)
  br label %298

298:                                              ; preds = %296, %291
  %299 = load i32, ptr %5, align 4
  %300 = or i32 %299, 524288
  store i32 %300, ptr %5, align 4
  %301 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %8, i32 0, i32 27
  store i8 0, ptr %301, align 2
  br label %302

302:                                              ; preds = %298, %294, %286
  call void @llvm.lifetime.end.p0(i64 54, ptr nonnull %7) #13
  br label %303

303:                                              ; preds = %302, %277
  %304 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 10
  %305 = load i8, ptr %304, align 4, !range !14
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %303
  call fastcc void @ieee80211_chswitch_post_beacon(ptr noundef %0)
  br label %308

308:                                              ; preds = %307, %303
  %309 = load volatile i32, ptr %240, align 4
  %310 = and i32 %309, 16777216
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %325, label %312

312:                                              ; preds = %308
  %313 = load i16, ptr %1, align 2
  %314 = and i16 %313, 252
  %315 = icmp eq i16 %314, 28
  br i1 %315, label %325, label %316

316:                                              ; preds = %312
  %317 = load i64, ptr %13, align 2
  %318 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 21
  store i64 %317, ptr %318, align 8
  %319 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %3, i32 0, i32 2
  %320 = load i32, ptr %319, align 8
  %321 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 22
  store i32 %320, ptr %321, align 8
  %322 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 50
  %323 = load i8, ptr %322, align 1
  %324 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 23
  store i8 %323, ptr %324, align 4
  br label %325

325:                                              ; preds = %316, %312, %308
  %326 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 11
  %327 = load i32, ptr %326, align 4
  %328 = icmp eq i32 %239, %327
  br i1 %328, label %329, label %333

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %8, i32 0, i32 27
  %331 = load i8, ptr %330, align 2, !range !14
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %333, label %455

333:                                              ; preds = %329, %325
  %334 = load i16, ptr %1, align 2
  %335 = and i16 %334, 508
  %336 = icmp eq i16 %335, 284
  br i1 %336, label %455, label %337

337:                                              ; preds = %333
  store i32 %239, ptr %326, align 4
  %338 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %8, i32 0, i32 27
  store i8 1, ptr %338, align 2
  call fastcc void @ieee80211_rx_bss_info(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %339 = load i64, ptr %3, align 8
  %340 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %3, i32 0, i32 2
  %341 = load i32, ptr %340, align 8
  call fastcc void @ieee80211_sta_process_chanswitch(ptr noundef %0, i64 noundef %339, i32 noundef %341, ptr noundef nonnull %235, i1 noundef zeroext true)
  %342 = load i32, ptr %200, align 4
  %343 = and i32 %342, 16384
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %357

345:                                              ; preds = %337
  %346 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 15
  %347 = load ptr, ptr %346, align 4
  %348 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 65
  %349 = load i8, ptr %348, align 4
  %350 = zext i8 %349 to i32
  %351 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 24
  %352 = load ptr, ptr %351, align 4
  %353 = call fastcc zeroext i1 @ieee80211_sta_wmm_params(ptr noundef %12, ptr noundef %0, ptr noundef %347, i32 noundef %350, ptr noundef %352)
  br i1 %353, label %354, label %357

354:                                              ; preds = %345
  %355 = load i32, ptr %5, align 4
  %356 = or i32 %355, 8192
  store i32 %356, ptr %5, align 4
  br label %357

357:                                              ; preds = %354, %345, %337
  %358 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 3
  %359 = load i8, ptr %358, align 4, !range !14
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %361, label %370

361:                                              ; preds = %357
  %362 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 51
  %363 = load i8, ptr %362, align 2
  %364 = icmp eq i8 %363, 0
  %365 = select i1 %364, i8 1, i8 %363
  %366 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 18
  store i8 %365, ptr %366, align 8
  %367 = load i32, ptr %5, align 4
  %368 = or i32 %367, 1048576
  store i32 %368, ptr %5, align 4
  store i8 1, ptr %358, align 4
  %369 = getelementptr inbounds %struct.ieee80211_local, ptr %12, i32 0, i32 64
  call void @mutex_lock(ptr noundef %369) #13
  call void @ieee80211_recalc_ps(ptr noundef %12)
  call void @mutex_unlock(ptr noundef %369) #13
  call void @ieee80211_recalc_ps_vif(ptr noundef %0)
  br label %370

370:                                              ; preds = %361, %357
  %371 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 12
  %372 = load ptr, ptr %371, align 4
  %373 = icmp eq ptr %372, null
  br i1 %373, label %376, label %374

374:                                              ; preds = %370
  %375 = load i8, ptr %372, align 1
  br label %376

376:                                              ; preds = %374, %370
  %377 = phi i8 [ %375, %374 ], [ 0, %370 ]
  %378 = load i16, ptr %1, align 2
  %379 = and i16 %378, 252
  %380 = icmp eq i16 %379, 28
  br i1 %380, label %388, label %381

381:                                              ; preds = %376
  %382 = xor i1 %373, true
  %383 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 1
  %384 = load i16, ptr %383, align 2
  %385 = call fastcc i32 @ieee80211_handle_bss_capability(ptr noundef %0, i16 noundef zeroext %384, i1 noundef zeroext %382, i8 noundef zeroext %377)
  %386 = load i32, ptr %5, align 4
  %387 = or i32 %386, %385
  store i32 %387, ptr %5, align 4
  br label %388

388:                                              ; preds = %381, %376
  %389 = getelementptr inbounds %struct.ieee80211_local, ptr %12, i32 0, i32 46
  call void @mutex_lock(ptr noundef %389) #13
  %390 = call ptr @sta_info_get(ptr noundef %0, ptr noundef %167) #13
  %391 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 57
  %392 = load i8, ptr %391, align 4
  %393 = icmp ult i8 %392, 10
  br i1 %393, label %406, label %394

394:                                              ; preds = %388
  %395 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 5
  %396 = load ptr, ptr %395, align 4
  %397 = getelementptr i8, ptr %396, i32 9
  %398 = load i8, ptr %397, align 1
  %399 = and i8 %398, 64
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %406, label %401

401:                                              ; preds = %394
  %402 = getelementptr inbounds %struct.sta_info, ptr %390, i32 0, i32 46, i32 6, i32 1
  %403 = load i8, ptr %402, align 1
  %404 = and i8 %403, 4
  %405 = icmp ne i8 %404, 0
  br label %406

406:                                              ; preds = %401, %394, %388
  %407 = phi i1 [ %405, %401 ], [ false, %388 ], [ false, %394 ]
  %408 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 6
  %409 = load i8, ptr %408, align 1, !range !14
  %410 = zext i1 %407 to i8
  %411 = icmp eq i8 %409, %410
  br i1 %411, label %413, label %412

412:                                              ; preds = %406
  store i8 %410, ptr %408, align 1
  br label %413

413:                                              ; preds = %412, %406
  %414 = phi i32 [ 134217728, %412 ], [ 0, %406 ]
  %415 = load i32, ptr %5, align 4
  %416 = or i32 %415, %414
  store i32 %416, ptr %5, align 4
  %417 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 18
  %418 = load ptr, ptr %417, align 4
  %419 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 17
  %420 = load ptr, ptr %419, align 4
  %421 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 19
  %422 = load ptr, ptr %421, align 4
  %423 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 22
  %424 = load ptr, ptr %423, align 4
  %425 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 54
  %426 = load ptr, ptr %425, align 4
  %427 = call fastcc i32 @ieee80211_config_bw(ptr noundef %0, ptr noundef %390, ptr noundef %418, ptr noundef %420, ptr noundef %422, ptr noundef %424, ptr noundef %426, ptr noundef nonnull %5)
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %432, label %429

429:                                              ; preds = %413
  call void @mutex_unlock(ptr noundef %389) #13
  %430 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %430, ptr noundef %167) #14
  call fastcc void @ieee80211_set_disassoc(ptr noundef %0, i16 noundef zeroext 192, i16 noundef zeroext 3, i1 noundef zeroext true, ptr noundef nonnull %6)
  call fastcc void @ieee80211_report_disconnect(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 26, i1 noundef zeroext true, i16 noundef zeroext 3, i1 noundef zeroext false)
  br label %455

432:                                              ; preds = %413
  %433 = icmp eq ptr %390, null
  br i1 %433, label %443, label %434

434:                                              ; preds = %432
  %435 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 43
  %436 = load ptr, ptr %435, align 4
  %437 = icmp eq ptr %436, null
  br i1 %437, label %443, label %438

438:                                              ; preds = %434
  %439 = load i8, ptr %436, align 1
  %440 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %3, i32 0, i32 11
  %441 = load i8, ptr %440, align 4
  %442 = zext i8 %441 to i32
  call void @ieee80211_vht_handle_opmode(ptr noundef %0, ptr noundef nonnull %390, i8 noundef zeroext %439, i32 noundef %442) #13
  br label %443

443:                                              ; preds = %438, %434, %432
  call void @mutex_unlock(ptr noundef %389) #13
  %444 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 39
  %445 = load ptr, ptr %444, align 4
  %446 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 72
  %447 = load i8, ptr %446, align 1
  %448 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 40
  %449 = load ptr, ptr %448, align 4
  %450 = getelementptr inbounds %struct.ieee802_11_elems, ptr %235, i32 0, i32 41
  %451 = load ptr, ptr %450, align 4
  %452 = call fastcc i32 @ieee80211_handle_pwr_constr(ptr noundef %0, ptr noundef %47, ptr noundef %1, ptr noundef %445, i8 noundef zeroext %447, ptr noundef %449, ptr noundef %451)
  %453 = load i32, ptr %5, align 4
  %454 = or i32 %453, %452
  store i32 %454, ptr %5, align 4
  call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef %454) #13
  br label %455

455:                                              ; preds = %443, %429, %333, %329
  call void @kfree(ptr noundef nonnull %235) #13
  br label %456

456:                                              ; preds = %455, %231, %183, %179, %162, %161, %92, %37, %36, %26
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_rx_queued_mgmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_event, align 4
  %5 = alloca %struct.ieee80211_prep_tx_info, align 2
  %6 = alloca [6 x i8], align 4
  %7 = alloca %struct.ieee80211_event, align 4
  %8 = alloca %struct.ieee80211_prep_tx_info, align 2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %11, align 2
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 7
  tail call void @mutex_lock(ptr noundef %13) #13
  %14 = and i16 %12, 240
  %15 = zext i16 %14 to i32
  %16 = add nsw i32 %15, -16
  %17 = lshr exact i32 %16, 4
  switch i32 %17, label %554 [
    i32 7, label %18
    i32 4, label %21
    i32 10, label %104
    i32 11, label %247
    i32 9, label %309
    i32 0, label %349
    i32 2, label %349
    i32 12, label %510
  ]

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  tail call fastcc void @ieee80211_rx_mgmt_beacon(ptr noundef %0, ptr noundef %11, i32 noundef %20, ptr noundef %9)
  br label %554

21:                                               ; preds = %2
  %22 = load ptr, ptr %10, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ieee80211_hw, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %30 = load i16, ptr %29, align 4
  %31 = and i16 %30, 8191
  %32 = zext i16 %31 to i32
  %33 = mul nuw nsw i32 %32, 1000
  %34 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %28, i32 noundef %33) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %554, label %36

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %22, i32 0, i32 2
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  %39 = load i32, ptr %37, align 4
  %40 = load i32, ptr %38, align 4
  %41 = xor i32 %40, %39
  %42 = getelementptr %struct.ieee80211_mgmt, ptr %22, i32 0, i32 2, i32 4
  %43 = load i16, ptr %42, align 2
  %44 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2, i32 4
  %45 = load i16, ptr %44, align 2
  %46 = xor i16 %45, %43
  %47 = zext i16 %46 to i32
  %48 = or i32 %41, %47
  %49 = icmp eq i32 %48, 0
  %50 = trunc i32 %39 to i16
  %51 = lshr i32 %39, 16
  %52 = trunc i32 %51 to i16
  br i1 %49, label %62, label %53

53:                                               ; preds = %36
  %54 = load i32, ptr %34, align 4
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %554

56:                                               ; preds = %53
  %57 = and i16 %43, %50
  %58 = and i16 %57, %52
  %59 = icmp ne i16 %58, -1
  %60 = icmp ult i32 %24, 36
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %554, label %64

62:                                               ; preds = %36
  %63 = icmp ult i32 %24, 36
  br i1 %63, label %554, label %64

64:                                               ; preds = %62, %56
  %65 = load ptr, ptr %25, align 4
  %66 = getelementptr inbounds %struct.ieee80211_hw, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 8
  %68 = load i16, ptr %29, align 4
  %69 = and i16 %68, 8191
  %70 = zext i16 %69 to i32
  %71 = mul nuw nsw i32 %70, 1000
  %72 = and i16 %68, 8192
  %73 = icmp eq i16 %72, 0
  %74 = select i1 %73, i32 0, i32 500
  %75 = add nuw nsw i32 %71, %74
  %76 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %67, i32 noundef %75) #13
  %77 = icmp eq ptr %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %64
  %79 = tail call ptr @ieee80211_bss_info_update(ptr noundef %65, ptr noundef %9, ptr noundef %22, i32 noundef %24, ptr noundef nonnull %76) #13
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.ieee80211_bss, ptr %79, i32 0, i32 6
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 25
  store ptr %83, ptr %84, align 4
  tail call void @ieee80211_rx_bss_put(ptr noundef %65, ptr noundef nonnull %79) #13
  br label %85

85:                                               ; preds = %81, %78, %64
  %86 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %554, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %22, i32 0, i32 4
  %91 = getelementptr inbounds %struct.cfg80211_bss, ptr %87, i32 0, i32 11
  %92 = load i32, ptr %90, align 4
  %93 = load i32, ptr %91, align 4
  %94 = xor i32 %93, %92
  %95 = getelementptr %struct.ieee80211_mgmt, ptr %22, i32 0, i32 4, i32 4
  %96 = load i16, ptr %95, align 2
  %97 = getelementptr %struct.cfg80211_bss, ptr %87, i32 0, i32 11, i32 4
  %98 = load i16, ptr %97, align 2
  %99 = xor i16 %98, %96
  %100 = zext i16 %99 to i32
  %101 = or i32 %94, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %554

103:                                              ; preds = %89
  tail call fastcc void @ieee80211_reset_ap_probe(ptr noundef %0) #13
  br label %554

104:                                              ; preds = %2
  %105 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %106 = load i32, ptr %105, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) @__const.ieee80211_rx_mgmt_auth.event, i32 16, i1 false) #13
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %8, ptr noundef nonnull align 2 dereferenceable(6) @__const.ieee80211_auth.info, i32 6, i1 false) #13
  %107 = icmp ult i32 %106, 30
  br i1 %107, label %246, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 22
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %246, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %110, i32 0, i32 8
  %114 = load i8, ptr %113, align 1, !range !14
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %246

116:                                              ; preds = %112
  %117 = load ptr, ptr %110, align 4
  %118 = getelementptr inbounds %struct.cfg80211_bss, ptr %117, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %6, ptr noundef align 4 dereferenceable(6) %118, i32 6, i1 false) #13
  %119 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 4
  %120 = load i32, ptr %6, align 4
  %121 = load i32, ptr %119, align 4
  %122 = xor i32 %121, %120
  %123 = getelementptr inbounds i8, ptr %6, i32 4
  %124 = load i16, ptr %123, align 4
  %125 = getelementptr %struct.ieee80211_mgmt, ptr %11, i32 0, i32 4, i32 4
  %126 = load i16, ptr %125, align 2
  %127 = xor i16 %126, %124
  %128 = zext i16 %127 to i32
  %129 = or i32 %122, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %246

131:                                              ; preds = %116
  %132 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 6
  %133 = load i16, ptr %132, align 2
  %134 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 6, i32 0, i32 1
  %135 = load i16, ptr %134, align 2
  %136 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 6, i32 0, i32 2
  %137 = load i16, ptr %136, align 2
  %138 = zext i16 %133 to i32
  %139 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %110, i32 0, i32 3
  %140 = load i16, ptr %139, align 4
  %141 = icmp eq i16 %133, %140
  br i1 %141, label %145, label %142

142:                                              ; preds = %131
  %143 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %110, i32 0, i32 4
  %144 = load i16, ptr %143, align 2
  br label %155

145:                                              ; preds = %131
  %146 = icmp eq i16 %133, 3
  %147 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %110, i32 0, i32 4
  %148 = load i16, ptr %147, align 2
  br i1 %146, label %151, label %149

149:                                              ; preds = %145
  %150 = icmp eq i16 %135, %148
  br i1 %150, label %165, label %155

151:                                              ; preds = %145
  %152 = icmp ult i16 %135, %148
  %153 = icmp ugt i16 %135, 2
  %154 = or i1 %153, %152
  br i1 %154, label %155, label %163

155:                                              ; preds = %151, %149, %142
  %156 = phi i16 [ %144, %142 ], [ %148, %151 ], [ %148, %149 ]
  %157 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %158 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 3
  %159 = zext i16 %140 to i32
  %160 = zext i16 %135 to i32
  %161 = zext i16 %156 to i32
  %162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %157, ptr noundef %158, i32 noundef %138, i32 noundef %159, i32 noundef %160, i32 noundef %161) #14
  br label %243

163:                                              ; preds = %151
  %164 = icmp eq i16 %137, 0
  br i1 %164, label %218, label %170

165:                                              ; preds = %149
  %166 = icmp eq i16 %137, 0
  br i1 %166, label %211, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %169 = load ptr, ptr %168, align 8
  tail call void @cfg80211_rx_mlme_mgmt(ptr noundef %169, ptr noundef %11, i32 noundef %106) #13
  br label %202

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %172 = load ptr, ptr %171, align 8
  tail call void @cfg80211_rx_mlme_mgmt(ptr noundef %172, ptr noundef %11, i32 noundef %106) #13
  %173 = icmp eq i16 %137, 76
  br i1 %173, label %179, label %174

174:                                              ; preds = %170
  %175 = icmp eq i16 %135, 1
  %176 = and i16 %137, -2
  %177 = icmp eq i16 %176, 126
  %178 = select i1 %175, i1 %177, i1 false
  br i1 %178, label %179, label %202

179:                                              ; preds = %174, %170
  %180 = load ptr, ptr %109, align 4
  %181 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %180, i32 0, i32 9
  store i8 1, ptr %181, align 4
  %182 = load volatile i32, ptr @jiffies, align 64
  %183 = add i32 %182, 200
  %184 = load ptr, ptr %109, align 4
  %185 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %184, i32 0, i32 1
  store i32 %183, ptr %185, align 4
  %186 = load ptr, ptr %109, align 4
  %187 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %186, i32 0, i32 11
  store i8 1, ptr %187, align 2
  %188 = load ptr, ptr %109, align 4
  %189 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %188, i32 0, i32 1
  %190 = load i32, ptr %189, align 4
  %191 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %192 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %193 = load volatile ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %200, label %195

195:                                              ; preds = %179
  %196 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %197 = load i32, ptr %196, align 8
  %198 = sub i32 %190, %197
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %243

200:                                              ; preds = %195, %179
  %201 = tail call i32 @mod_timer(ptr noundef %191, i32 noundef %190) #13
  br label %243

202:                                              ; preds = %174, %167
  %203 = zext i16 %137 to i32
  %204 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %205 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 3
  %206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %204, ptr noundef %205, i32 noundef %203) #14
  tail call fastcc void @ieee80211_destroy_auth_data(ptr noundef %0, i1 noundef zeroext false) #13
  %207 = getelementptr inbounds %struct.ieee80211_event, ptr %7, i32 0, i32 1, i32 0, i32 1
  store i32 1, ptr %207, align 4
  %208 = getelementptr inbounds %struct.ieee80211_event, ptr %7, i32 0, i32 1, i32 0, i32 2
  store i16 %137, ptr %208, align 4
  %209 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %210 = load ptr, ptr %209, align 4
  call fastcc void @drv_event_callback(ptr noundef %210, ptr noundef %0, ptr noundef nonnull %7) #13
  br label %243

211:                                              ; preds = %165
  switch i16 %133, label %215 [
    i16 0, label %218
    i16 128, label %218
    i16 2, label %218
    i16 1, label %212
    i16 4, label %218
    i16 5, label %218
    i16 6, label %218
  ]

212:                                              ; preds = %211
  %213 = icmp eq i16 %135, 4
  br i1 %213, label %218, label %214

214:                                              ; preds = %212
  tail call fastcc void @ieee80211_auth_challenge(ptr noundef %0, ptr noundef %11, i32 noundef %106) #13
  br label %246

215:                                              ; preds = %211
  %216 = load i1, ptr @ieee80211_rx_mgmt_auth.__already_done, align 1
  br i1 %216, label %243, label %217, !prof !11

217:                                              ; preds = %215
  store i1 true, ptr @ieee80211_rx_mgmt_auth.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3052, i32 noundef 9, ptr noundef nonnull @.str.94, i32 noundef %138) #13
  br label %243

218:                                              ; preds = %212, %211, %211, %211, %211, %211, %211, %163
  %219 = getelementptr inbounds %struct.ieee80211_event, ptr %7, i32 0, i32 1, i32 0, i32 1
  store i32 0, ptr %219, align 4
  %220 = getelementptr inbounds %struct.ieee80211_prep_tx_info, ptr %8, i32 0, i32 2
  store i8 1, ptr %220, align 2
  %221 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %222 = load ptr, ptr %221, align 4
  call fastcc void @drv_event_callback(ptr noundef %222, ptr noundef %0, ptr noundef nonnull %7) #13
  %223 = load ptr, ptr %109, align 4
  %224 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %223, i32 0, i32 3
  %225 = load i16, ptr %224, align 4
  %226 = icmp eq i16 %225, 3
  br i1 %226, label %227, label %233

227:                                              ; preds = %218
  %228 = icmp eq i16 %135, 2
  br i1 %228, label %229, label %240

229:                                              ; preds = %227
  %230 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %223, i32 0, i32 4
  %231 = load i16, ptr %230, align 2
  %232 = icmp eq i16 %231, 2
  br i1 %232, label %233, label %235

233:                                              ; preds = %229, %218
  %234 = call fastcc zeroext i1 @ieee80211_mark_sta_auth(ptr noundef %0, ptr noundef nonnull %6) #13
  br i1 %234, label %240, label %246

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %236) #14
  %238 = load ptr, ptr %109, align 4
  %239 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %238, i32 0, i32 10
  store i8 1, ptr %239, align 1
  br label %240

240:                                              ; preds = %235, %233, %227
  %241 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %242 = load ptr, ptr %241, align 8
  call void @cfg80211_rx_mlme_mgmt(ptr noundef %242, ptr noundef %11, i32 noundef %106) #13
  br label %243

243:                                              ; preds = %240, %217, %215, %202, %200, %195, %155
  %244 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %245 = load ptr, ptr %244, align 4
  call fastcc void @drv_mgd_complete_tx(ptr noundef %245, ptr noundef %0, ptr noundef nonnull %8) #13
  br label %246

246:                                              ; preds = %243, %233, %214, %116, %112, %108, %104
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #13
  br label %554

247:                                              ; preds = %2
  %248 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %249 = load i32, ptr %248, align 8
  %250 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 6
  %251 = load i16, ptr %250, align 2
  %252 = icmp ult i32 %249, 26
  br i1 %252, label %554, label %253

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 4
  %255 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 3
  %256 = load i32, ptr %254, align 4
  %257 = load i32, ptr %255, align 4
  %258 = xor i32 %257, %256
  %259 = getelementptr %struct.ieee80211_mgmt, ptr %11, i32 0, i32 4, i32 4
  %260 = load i16, ptr %259, align 2
  %261 = getelementptr %struct.ieee80211_mgmt, ptr %11, i32 0, i32 3, i32 4
  %262 = load i16, ptr %261, align 2
  %263 = xor i16 %262, %260
  %264 = zext i16 %263 to i32
  %265 = or i32 %258, %264
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %253
  tail call void @ieee80211_tdls_handle_disconnect(ptr noundef %0, ptr noundef %255, i16 noundef zeroext %251) #13
  br label %554

268:                                              ; preds = %253
  %269 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %270 = load ptr, ptr %269, align 4
  %271 = icmp eq ptr %270, null
  br i1 %271, label %287, label %272

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.cfg80211_bss, ptr %270, i32 0, i32 11
  %274 = load i32, ptr %273, align 4
  %275 = xor i32 %274, %256
  %276 = getelementptr %struct.cfg80211_bss, ptr %270, i32 0, i32 11, i32 4
  %277 = load i16, ptr %276, align 2
  %278 = xor i16 %277, %260
  %279 = zext i16 %278 to i32
  %280 = or i32 %275, %279
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %272
  %283 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %284 = zext i16 %251 to i32
  %285 = tail call ptr @ieee80211_get_reason_code_string(i16 noundef zeroext %251) #13
  %286 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %283, ptr noundef %273, i32 noundef %284, ptr noundef nonnull %285) #14
  tail call fastcc void @ieee80211_set_disassoc(ptr noundef %0, i16 noundef zeroext 0, i16 noundef zeroext 0, i1 noundef zeroext false, ptr noundef null) #13
  tail call fastcc void @ieee80211_report_disconnect(ptr noundef %0, ptr noundef %11, i32 noundef %249, i1 noundef zeroext false, i16 noundef zeroext %251, i1 noundef zeroext false) #13
  br label %554

287:                                              ; preds = %272, %268
  %288 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23
  %289 = load ptr, ptr %288, align 4
  %290 = icmp eq ptr %289, null
  br i1 %290, label %554, label %291

291:                                              ; preds = %287
  %292 = load ptr, ptr %289, align 4
  %293 = getelementptr inbounds %struct.cfg80211_bss, ptr %292, i32 0, i32 11
  %294 = load i32, ptr %293, align 4
  %295 = xor i32 %294, %256
  %296 = getelementptr %struct.cfg80211_bss, ptr %292, i32 0, i32 11, i32 4
  %297 = load i16, ptr %296, align 2
  %298 = xor i16 %297, %260
  %299 = zext i16 %298 to i32
  %300 = or i32 %295, %299
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %554

302:                                              ; preds = %291
  %303 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %304 = zext i16 %251 to i32
  %305 = tail call ptr @ieee80211_get_reason_code_string(i16 noundef zeroext %251) #13
  %306 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %303, ptr noundef %293, i32 noundef %304, ptr noundef nonnull %305) #14
  tail call fastcc void @ieee80211_destroy_assoc_data(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  %307 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %308 = load ptr, ptr %307, align 8
  tail call void @cfg80211_rx_mlme_mgmt(ptr noundef %308, ptr noundef %11, i32 noundef %249) #13
  br label %554

309:                                              ; preds = %2
  %310 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %311 = load i32, ptr %310, align 8
  %312 = icmp ult i32 %311, 26
  br i1 %312, label %554, label %313

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %315 = load ptr, ptr %314, align 4
  %316 = icmp eq ptr %315, null
  br i1 %316, label %554, label %317

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 4
  %319 = getelementptr inbounds %struct.cfg80211_bss, ptr %315, i32 0, i32 11
  %320 = load i32, ptr %318, align 4
  %321 = load i32, ptr %319, align 4
  %322 = xor i32 %321, %320
  %323 = getelementptr %struct.ieee80211_mgmt, ptr %11, i32 0, i32 4, i32 4
  %324 = load i16, ptr %323, align 2
  %325 = getelementptr %struct.cfg80211_bss, ptr %315, i32 0, i32 11, i32 4
  %326 = load i16, ptr %325, align 2
  %327 = xor i16 %326, %324
  %328 = zext i16 %327 to i32
  %329 = or i32 %322, %328
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %554

331:                                              ; preds = %317
  %332 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 6
  %333 = load i16, ptr %332, align 2
  %334 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 3
  %335 = load i32, ptr %334, align 4
  %336 = xor i32 %335, %320
  %337 = getelementptr %struct.ieee80211_mgmt, ptr %11, i32 0, i32 3, i32 4
  %338 = load i16, ptr %337, align 2
  %339 = xor i16 %338, %324
  %340 = zext i16 %339 to i32
  %341 = or i32 %336, %340
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %344, label %343

343:                                              ; preds = %331
  tail call void @ieee80211_tdls_handle_disconnect(ptr noundef %0, ptr noundef %334, i16 noundef zeroext %333) #13
  br label %554

344:                                              ; preds = %331
  %345 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %346 = zext i16 %333 to i32
  %347 = tail call ptr @ieee80211_get_reason_code_string(i16 noundef zeroext %333) #13
  %348 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %345, ptr noundef %334, i32 noundef %346, ptr noundef nonnull %347) #14
  tail call fastcc void @ieee80211_set_disassoc(ptr noundef %0, i16 noundef zeroext 0, i16 noundef zeroext 0, i1 noundef zeroext false, ptr noundef null) #13
  tail call fastcc void @ieee80211_report_disconnect(ptr noundef %0, ptr noundef %11, i32 noundef %311, i1 noundef zeroext false, i16 noundef zeroext %333, i1 noundef zeroext false) #13
  br label %554

349:                                              ; preds = %2, %2
  %350 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %351 = load i32, ptr %350, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %351, ptr %3, align 4
  %352 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23
  %353 = load ptr, ptr %352, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) @__const.ieee80211_rx_mgmt_assoc_resp.event, i32 16, i1 false) #13
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %5, i8 0, i32 6, i1 false) #13
  %354 = icmp eq ptr %353, null
  br i1 %354, label %509, label %355

355:                                              ; preds = %349
  %356 = load ptr, ptr %353, align 4
  %357 = getelementptr inbounds %struct.cfg80211_bss, ptr %356, i32 0, i32 11
  %358 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 4
  %359 = load i32, ptr %357, align 4
  %360 = load i32, ptr %358, align 4
  %361 = xor i32 %360, %359
  %362 = getelementptr %struct.cfg80211_bss, ptr %356, i32 0, i32 11, i32 4
  %363 = load i16, ptr %362, align 2
  %364 = getelementptr %struct.ieee80211_mgmt, ptr %11, i32 0, i32 4, i32 4
  %365 = load i16, ptr %364, align 2
  %366 = xor i16 %365, %363
  %367 = zext i16 %366 to i32
  %368 = or i32 %361, %367
  %369 = icmp ne i32 %368, 0
  %370 = icmp ult i32 %351, 30
  %371 = or i1 %370, %369
  br i1 %371, label %509, label %372

372:                                              ; preds = %355
  %373 = load i16, ptr %11, align 2
  %374 = and i16 %373, 252
  %375 = icmp eq i16 %374, 48
  %376 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 6
  %377 = load i16, ptr %376, align 2
  %378 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 6, i32 0, i32 1
  %379 = load i16, ptr %378, align 2
  %380 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 6, i32 0, i32 2, i32 2
  %381 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 6, i32 0, i32 2
  %382 = load i16, ptr %381, align 2
  %383 = load ptr, ptr %356, align 4
  %384 = load i32, ptr %383, align 4
  %385 = icmp eq i32 %384, 4
  %386 = select i1 %385, ptr %381, ptr %380
  %387 = select i1 %375, i16 32, i16 0
  %388 = getelementptr inbounds %struct.ieee80211_prep_tx_info, ptr %5, i32 0, i32 1
  store i16 %387, ptr %388, align 2
  %389 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %390 = select i1 %375, ptr @.str.100, ptr @.str.101
  %391 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 3
  %392 = zext i16 %377 to i32
  %393 = zext i16 %379 to i32
  %394 = and i16 %382, 16383
  %395 = zext i16 %394 to i32
  %396 = select i1 %385, i32 0, i32 %395
  %397 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %389, ptr noundef nonnull %390, ptr noundef %391, i32 noundef %392, i32 noundef %393, i32 noundef %396) #14
  %398 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %353, i32 0, i32 18
  %399 = load i32, ptr %398, align 4
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %406, label %401

401:                                              ; preds = %372
  %402 = call i32 @fils_decrypt_assoc_resp(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %3, ptr noundef nonnull %353) #13
  %403 = icmp slt i32 %402, 0
  br i1 %403, label %509, label %404

404:                                              ; preds = %401
  %405 = load i32, ptr %3, align 4
  br label %406

406:                                              ; preds = %404, %372
  %407 = phi i32 [ %405, %404 ], [ %351, %372 ]
  %408 = ptrtoint ptr %386 to i32
  %409 = ptrtoint ptr %11 to i32
  %410 = sub i32 %409, %408
  %411 = add i32 %410, %407
  %412 = load ptr, ptr %353, align 4
  %413 = getelementptr inbounds %struct.cfg80211_bss, ptr %412, i32 0, i32 11
  %414 = call ptr @ieee802_11_parse_elems_crc(ptr noundef %386, i32 noundef %411, i1 noundef zeroext false, i64 noundef 0, i32 noundef 0, ptr noundef %358, ptr noundef %413) #13
  %415 = icmp eq ptr %414, null
  br i1 %415, label %506, label %416

416:                                              ; preds = %406
  switch i16 %379, label %454 [
    i16 30, label %417
    i16 0, label %460
  ]

417:                                              ; preds = %416
  %418 = getelementptr inbounds %struct.ieee802_11_elems, ptr %414, i32 0, i32 42
  %419 = load ptr, ptr %418, align 4
  %420 = icmp eq ptr %419, null
  br i1 %420, label %454, label %421

421:                                              ; preds = %417
  %422 = load i8, ptr %419, align 1
  %423 = icmp eq i8 %422, 3
  br i1 %423, label %424, label %454

424:                                              ; preds = %421
  %425 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %426 = load ptr, ptr %425, align 8
  %427 = load ptr, ptr %353, align 4
  %428 = getelementptr inbounds %struct.ieee80211_timeout_interval_ie, ptr %419, i32 0, i32 1
  %429 = load i32, ptr %428, align 1
  call void @cfg80211_assoc_comeback(ptr noundef %426, ptr noundef %427, i32 noundef %429) #13
  %430 = load ptr, ptr %418, align 4
  %431 = getelementptr inbounds %struct.ieee80211_timeout_interval_ie, ptr %430, i32 0, i32 1
  %432 = load i32, ptr %431, align 1
  %433 = shl i32 %432, 10
  %434 = udiv i32 %433, 1000
  %435 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %389, ptr noundef %391, i32 noundef %432, i32 noundef %434) #14
  %436 = load volatile i32, ptr @jiffies, align 64
  %437 = call i32 @__msecs_to_jiffies(i32 noundef %434) #13
  %438 = add i32 %437, %436
  %439 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %353, i32 0, i32 2
  store i32 %438, ptr %439, align 4
  %440 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %353, i32 0, i32 13
  store i8 1, ptr %440, align 2
  %441 = icmp ugt i32 %433, 20999
  br i1 %441, label %442, label %506

442:                                              ; preds = %424
  %443 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %444 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %445 = load volatile ptr, ptr %444, align 4
  %446 = icmp eq ptr %445, null
  br i1 %446, label %452, label %447

447:                                              ; preds = %442
  %448 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %449 = load i32, ptr %448, align 8
  %450 = sub i32 %438, %449
  %451 = icmp slt i32 %450, 0
  br i1 %451, label %452, label %506

452:                                              ; preds = %447, %442
  %453 = call i32 @mod_timer(ptr noundef %443, i32 noundef %438) #13
  br label %506

454:                                              ; preds = %421, %417, %416
  %455 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %389, ptr noundef %391, i32 noundef %393) #14
  call fastcc void @ieee80211_destroy_assoc_data(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %456 = getelementptr inbounds %struct.ieee80211_event, ptr %4, i32 0, i32 1, i32 0, i32 1
  store i32 1, ptr %456, align 4
  %457 = getelementptr inbounds %struct.ieee80211_event, ptr %4, i32 0, i32 1, i32 0, i32 2
  store i16 %379, ptr %457, align 4
  %458 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %459 = load ptr, ptr %458, align 4
  call fastcc void @drv_event_callback(ptr noundef %459, ptr noundef %0, ptr noundef nonnull %4) #13
  br label %497

460:                                              ; preds = %416
  %461 = load i32, ptr %3, align 4
  %462 = call fastcc zeroext i1 @ieee80211_assoc_success(ptr noundef %0, ptr noundef %356, ptr noundef %11, i32 noundef %461) #13
  br i1 %462, label %466, label %463

463:                                              ; preds = %460
  call fastcc void @ieee80211_destroy_assoc_data(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %464 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %465 = load ptr, ptr %464, align 8
  call void @cfg80211_assoc_timeout(ptr noundef %465, ptr noundef %356) #13
  br label %506

466:                                              ; preds = %460
  %467 = getelementptr inbounds %struct.ieee80211_event, ptr %4, i32 0, i32 1, i32 0, i32 1
  store i32 0, ptr %467, align 4
  %468 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %469 = load ptr, ptr %468, align 4
  call fastcc void @drv_event_callback(ptr noundef %469, ptr noundef %0, ptr noundef nonnull %4) #13
  %470 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %389) #14
  %471 = load ptr, ptr %352, align 8
  call void @kfree(ptr noundef %471) #13
  store ptr null, ptr %352, align 8
  %472 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 0, i32 5
  %473 = load i8, ptr %472, align 2, !range !14
  %474 = icmp eq i8 %473, 0
  %475 = load i8, ptr @ieee80211_ac_to_qos_mask, align 1
  %476 = select i1 %474, i8 0, i8 %475
  %477 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 1, i32 5
  %478 = load i8, ptr %477, align 2, !range !14
  %479 = icmp eq i8 %478, 0
  %480 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 1), align 1
  %481 = select i1 %479, i8 0, i8 %480
  %482 = or i8 %481, %476
  %483 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 2, i32 5
  %484 = load i8, ptr %483, align 2, !range !14
  %485 = icmp eq i8 %484, 0
  %486 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 2), align 1
  %487 = select i1 %485, i8 0, i8 %486
  %488 = or i8 %482, %487
  %489 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 3, i32 5
  %490 = load i8, ptr %489, align 2, !range !14
  %491 = icmp eq i8 %490, 0
  %492 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 3), align 1
  %493 = select i1 %491, i8 0, i8 %492
  %494 = or i8 %488, %493
  %495 = zext i8 %494 to i32
  %496 = getelementptr inbounds %struct.ieee80211_prep_tx_info, ptr %5, i32 0, i32 2
  store i8 1, ptr %496, align 2
  br label %497

497:                                              ; preds = %466, %454
  %498 = phi i32 [ -1, %454 ], [ %495, %466 ]
  %499 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %500 = load ptr, ptr %499, align 8
  %501 = load i32, ptr %3, align 4
  %502 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 1
  %503 = load ptr, ptr %502, align 4
  %504 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 1, i32 0, i32 0, i32 1
  %505 = load i32, ptr %504, align 4
  call void @cfg80211_rx_assoc_resp(ptr noundef %500, ptr noundef %356, ptr noundef %11, i32 noundef %501, i32 noundef %498, ptr noundef %503, i32 noundef %505) #13
  br label %506

506:                                              ; preds = %497, %463, %452, %447, %424, %406
  %507 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %508 = load ptr, ptr %507, align 4
  call fastcc void @drv_mgd_complete_tx(ptr noundef %508, ptr noundef %0, ptr noundef nonnull %5) #13
  call void @kfree(ptr noundef %414) #13
  br label %509

509:                                              ; preds = %506, %401, %355, %349
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %554

510:                                              ; preds = %2
  %511 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 6
  %512 = load i8, ptr %511, align 2
  switch i8 %512, label %554 [
    i8 0, label %513
    i8 4, label %532
  ]

513:                                              ; preds = %510
  %514 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %515 = load i32, ptr %514, align 8
  %516 = add i32 %515, -26
  %517 = icmp slt i32 %516, 0
  br i1 %517, label %554, label %518

518:                                              ; preds = %513
  %519 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 6, i32 0, i32 1
  %520 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 4
  %521 = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %519, i32 noundef %516, i1 noundef zeroext true, i64 noundef 0, i32 noundef 0, ptr noundef %520, ptr noundef null) #13
  %522 = icmp eq ptr %521, null
  br i1 %522, label %531, label %523

523:                                              ; preds = %518
  %524 = getelementptr inbounds %struct.ieee802_11_elems, ptr %521, i32 0, i32 76
  %525 = load i8, ptr %524, align 2, !range !14
  %526 = icmp eq i8 %525, 0
  br i1 %526, label %527, label %531

527:                                              ; preds = %523
  %528 = load i64, ptr %9, align 8
  %529 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %530 = load i32, ptr %529, align 8
  tail call fastcc void @ieee80211_sta_process_chanswitch(ptr noundef %0, i64 noundef %528, i32 noundef %530, ptr noundef nonnull %521, i1 noundef zeroext false)
  br label %531

531:                                              ; preds = %527, %523, %518
  tail call void @kfree(ptr noundef %521) #13
  br label %554

532:                                              ; preds = %510
  %533 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %534 = load i32, ptr %533, align 8
  %535 = add i32 %534, -30
  %536 = icmp slt i32 %535, 0
  br i1 %536, label %554, label %537

537:                                              ; preds = %532
  %538 = getelementptr inbounds %struct.anon.165, ptr %511, i32 0, i32 1
  %539 = getelementptr inbounds %struct.anon.169, ptr %538, i32 0, i32 2
  %540 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 4
  %541 = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %539, i32 noundef %535, i1 noundef zeroext true, i64 noundef 0, i32 noundef 0, ptr noundef %540, ptr noundef null) #13
  %542 = icmp eq ptr %541, null
  br i1 %542, label %553, label %543

543:                                              ; preds = %537
  %544 = getelementptr inbounds %struct.ieee802_11_elems, ptr %541, i32 0, i32 76
  %545 = load i8, ptr %544, align 2, !range !14
  %546 = icmp eq i8 %545, 0
  br i1 %546, label %547, label %553

547:                                              ; preds = %543
  %548 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 6, i32 0, i32 1
  %549 = getelementptr inbounds %struct.ieee802_11_elems, ptr %541, i32 0, i32 36
  store ptr %548, ptr %549, align 4
  %550 = load i64, ptr %9, align 8
  %551 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %552 = load i32, ptr %551, align 8
  tail call fastcc void @ieee80211_sta_process_chanswitch(ptr noundef %0, i64 noundef %550, i32 noundef %552, ptr noundef nonnull %541, i1 noundef zeroext false)
  br label %553

553:                                              ; preds = %547, %543, %537
  tail call void @kfree(ptr noundef %541) #13
  br label %554

554:                                              ; preds = %553, %532, %531, %513, %510, %509, %344, %343, %317, %313, %309, %302, %291, %287, %282, %267, %247, %246, %103, %89, %85, %62, %56, %53, %21, %18, %2
  call void @mutex_unlock(ptr noundef %13) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_sta_process_chanswitch(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.ieee80211_csa_ie, align 4
  %7 = alloca %struct.ieee80211_channel_switch, align 8
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %6, i8 0, i32 40, i1 false), !annotation !25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i32 56, i1 false), !annotation !25
  %13 = icmp eq ptr %12, null
  br i1 %13, label %329, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 67
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %329

18:                                               ; preds = %14
  %19 = load ptr, ptr %12, align 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.cfg80211_bss, ptr %12, i32 1, i32 13, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.cfg80211_bss, ptr %12, i32 0, i32 11
  %26 = call i32 @ieee80211_parse_ch_switch_ie(ptr noundef %0, ptr noundef %3, i32 noundef %20, i32 noundef %22, i32 noundef %24, ptr noundef %25, ptr noundef nonnull %6) #13
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %18
  store i64 %1, ptr %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %7, i32 0, i32 1
  store i32 %2, ptr %29, align 8
  %30 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %6, i32 0, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = icmp ne i8 %31, 0
  %33 = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %7, i32 0, i32 2
  %34 = zext i1 %32 to i8
  store i8 %34, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %7, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %35, ptr noundef nonnull align 4 dereferenceable(28) %6, i32 28, i1 false)
  %36 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %6, i32 0, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %7, i32 0, i32 4
  store i8 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %6, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %7, i32 0, i32 5
  store i32 %40, ptr %41, align 8
  br label %44

42:                                               ; preds = %18
  %43 = icmp slt i32 %26, 0
  br i1 %43, label %316, label %44

44:                                               ; preds = %42, %28
  %45 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 4
  %46 = load i8, ptr %45, align 1, !range !14
  br i1 %4, label %47, label %56

47:                                               ; preds = %44
  %48 = icmp eq i8 %46, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 10
  %51 = load i8, ptr %50, align 4, !range !14
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %329

53:                                               ; preds = %49
  br i1 %27, label %54, label %55

54:                                               ; preds = %53
  call fastcc void @ieee80211_sta_abort_chanswitch(ptr noundef %0)
  br label %329

55:                                               ; preds = %53
  call fastcc void @drv_channel_switch_rx_beacon(ptr noundef %0, ptr noundef nonnull %7)
  br label %329

56:                                               ; preds = %47, %44
  %57 = phi i8 [ 0, %47 ], [ %46, %44 ]
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 4
  %59 = icmp ne i8 %57, 0
  %60 = select i1 %59, i1 true, i1 %27
  br i1 %60, label %329, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32
  %63 = load ptr, ptr %62, align 4
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %6, align 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %81, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %70 = load ptr, ptr %11, align 4
  %71 = getelementptr inbounds %struct.cfg80211_bss, ptr %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.ieee80211_channel, ptr %65, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %69, ptr noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79) #14
  br label %316

81:                                               ; preds = %61
  %82 = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8
  %84 = call zeroext i1 @cfg80211_chandef_usable(ptr noundef %83, ptr noundef nonnull %6, i32 noundef 1) #13
  br i1 %84, label %105, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %87 = load ptr, ptr %11, align 4
  %88 = getelementptr inbounds %struct.cfg80211_bss, ptr %87, i32 0, i32 11
  %89 = load ptr, ptr %6, align 4
  %90 = getelementptr inbounds %struct.ieee80211_channel, ptr %89, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.ieee80211_channel, ptr %89, i32 0, i32 2
  %93 = load i16, ptr %92, align 4
  %94 = zext i16 %93 to i32
  %95 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 5
  %100 = load i16, ptr %99, align 4
  %101 = zext i16 %100 to i32
  %102 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %86, ptr noundef %88, i32 noundef %91, i32 noundef %94, i32 noundef %96, i32 noundef %98, i32 noundef %101, i32 noundef %103) #14
  br label %316

105:                                              ; preds = %81
  %106 = load ptr, ptr %6, align 4
  %107 = load ptr, ptr %62, align 4
  %108 = icmp eq ptr %106, %107
  br i1 %108, label %109, label %147

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %147

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %147

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 5
  %123 = load i16, ptr %122, align 4
  %124 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 5
  %125 = load i16, ptr %124, align 4
  %126 = icmp eq i16 %123, %125
  br i1 %126, label %127, label %147

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 3
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %6, i32 0, i32 1
  %135 = load i8, ptr %134, align 4
  %136 = icmp ne i8 %135, 0
  %137 = and i1 %136, %4
  br i1 %137, label %147, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %10, i32 0, i32 26
  %140 = load i8, ptr %139, align 1, !range !14
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %329

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %144 = load ptr, ptr %11, align 4
  %145 = getelementptr inbounds %struct.cfg80211_bss, ptr %144, i32 0, i32 11
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %143, ptr noundef %145) #14
  store i8 1, ptr %139, align 1
  br label %329

147:                                              ; preds = %133, %127, %121, %115, %109, %105
  call void @ieee80211_teardown_tdls_peers(ptr noundef %0) #13
  %148 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 66
  call void @mutex_lock(ptr noundef %148) #13
  %149 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 89
  call void @mutex_lock(ptr noundef %149) #13
  %150 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %154) #14
  br label %319

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 26
  %158 = load i8, ptr %157, align 1, !range !14
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 4
  %162 = load volatile i32, ptr %161, align 4
  %163 = and i32 %162, 67108864
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %166) #14
  br label %319

168:                                              ; preds = %160, %156
  %169 = load ptr, ptr %8, align 4
  %170 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %171 = load i32, ptr %170, align 8
  %172 = and i32 %171, 32
  %173 = icmp eq i32 %172, 0
  %174 = load i1, ptr @drv_pre_channel_switch.__already_done, align 1
  %175 = xor i1 %174, true
  %176 = select i1 %173, i1 %175, i1 false
  br i1 %176, label %177, label %183, !prof !8

177:                                              ; preds = %168
  store i1 true, ptr @drv_pre_channel_switch.__already_done, align 1
  %178 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %179 = load ptr, ptr %178, align 8
  %180 = icmp eq ptr %179, null
  %181 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %182 = select i1 %180, ptr %181, ptr %179
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 1052, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef %182, i32 noundef %171) #13
  br label %183

183:                                              ; preds = %177, %168
  br i1 %173, label %228, label %184

184:                                              ; preds = %183
  %185 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_pre_channel_switch, i32 0, i32 1), align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %184
  %188 = tail call ptr @llvm.thread.pointer() #13
  %189 = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 2
  %190 = load i32, ptr %189, align 8
  %191 = lshr i32 %190, 5
  %192 = getelementptr i32, ptr @__cpu_online_mask, i32 %191
  %193 = load volatile i32, ptr %192, align 4
  %194 = and i32 %190, 31
  %195 = shl nuw i32 1, %194
  %196 = and i32 %195, %193
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %187
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  %199 = call i32 @__traceiter_drv_pre_channel_switch(ptr noundef null, ptr noundef %169, ptr noundef %0, ptr noundef nonnull %7) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  br label %200

200:                                              ; preds = %198, %187, %184
  %201 = getelementptr inbounds %struct.ieee80211_local, ptr %169, i32 0, i32 8
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.ieee80211_ops, ptr %202, i32 0, i32 78
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %209, label %206

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %208 = call i32 %204(ptr noundef %169, ptr noundef %207, ptr noundef nonnull %7) #13
  br label %209

209:                                              ; preds = %206, %200
  %210 = phi i32 [ %208, %206 ], [ 0, %200 ]
  %211 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %226

213:                                              ; preds = %209
  %214 = tail call ptr @llvm.thread.pointer() #13
  %215 = getelementptr inbounds %struct.thread_info, ptr %214, i32 0, i32 2
  %216 = load i32, ptr %215, align 8
  %217 = lshr i32 %216, 5
  %218 = getelementptr i32, ptr @__cpu_online_mask, i32 %217
  %219 = load volatile i32, ptr %218, align 4
  %220 = and i32 %216, 31
  %221 = shl nuw i32 1, %220
  %222 = and i32 %221, %219
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %213
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  %225 = call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %169, i32 noundef %210) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  br label %226

226:                                              ; preds = %224, %213, %209
  %227 = icmp eq i32 %210, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %226, %183
  %229 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %230 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %229) #14
  br label %319

231:                                              ; preds = %226
  %232 = getelementptr i8, ptr %151, i32 -8
  %233 = load i32, ptr %232, align 4
  %234 = call i32 @ieee80211_vif_reserve_chanctx(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %233, i1 noundef zeroext false) #13
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %237, i32 noundef %234) #14
  br label %319

239:                                              ; preds = %231
  call void @mutex_unlock(ptr noundef %149) #13
  store i8 1, ptr %58, align 1
  %240 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 31
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %240, ptr noundef nonnull align 4 dereferenceable(28) %6, i32 28, i1 false)
  %241 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %6, i32 0, i32 1
  %242 = load i8, ptr %241, align 4
  %243 = icmp ne i8 %242, 0
  %244 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 30
  %245 = zext i1 %243 to i8
  store i8 %245, ptr %244, align 8
  %246 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %10, i32 0, i32 26
  store i8 0, ptr %246, align 1
  %247 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %10, i32 0, i32 27
  store i8 0, ptr %247, align 2
  br i1 %243, label %248, label %249

248:                                              ; preds = %239
  call void @ieee80211_stop_vif_queues(ptr noundef %9, ptr noundef %0, i32 noundef 2) #13
  br label %249

249:                                              ; preds = %248, %239
  call void @mutex_unlock(ptr noundef %148) #13
  %250 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %251 = load ptr, ptr %250, align 8
  %252 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %6, i32 0, i32 2
  %253 = load i8, ptr %252, align 1
  %254 = load i8, ptr %241, align 4
  %255 = icmp ne i8 %254, 0
  call void @cfg80211_ch_switch_started_notify(ptr noundef %251, ptr noundef nonnull %6, i8 noundef zeroext %253, i1 noundef zeroext %255) #13
  %256 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 8
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr inbounds %struct.ieee80211_ops, ptr %257, i32 0, i32 51
  %259 = load ptr, ptr %258, align 4
  %260 = icmp eq ptr %259, null
  br i1 %260, label %298, label %261

261:                                              ; preds = %249
  %262 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_channel_switch, i32 0, i32 1), align 4
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %280

264:                                              ; preds = %261
  %265 = tail call ptr @llvm.thread.pointer() #13
  %266 = getelementptr inbounds %struct.thread_info, ptr %265, i32 0, i32 2
  %267 = load i32, ptr %266, align 8
  %268 = lshr i32 %267, 5
  %269 = getelementptr i32, ptr @__cpu_online_mask, i32 %268
  %270 = load volatile i32, ptr %269, align 4
  %271 = and i32 %267, 31
  %272 = shl nuw i32 1, %271
  %273 = and i32 %272, %270
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %264
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %276 = call i32 @__traceiter_drv_channel_switch(ptr noundef null, ptr noundef %9, ptr noundef %0, ptr noundef nonnull %7) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %277 = load ptr, ptr %256, align 4
  %278 = getelementptr inbounds %struct.ieee80211_ops, ptr %277, i32 0, i32 51
  %279 = load ptr, ptr %278, align 4
  br label %280

280:                                              ; preds = %275, %264, %261
  %281 = phi ptr [ %279, %275 ], [ %259, %264 ], [ %259, %261 ]
  %282 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  call void %281(ptr noundef %9, ptr noundef %282, ptr noundef nonnull %7) #13
  %283 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %329

285:                                              ; preds = %280
  %286 = tail call ptr @llvm.thread.pointer() #13
  %287 = getelementptr inbounds %struct.thread_info, ptr %286, i32 0, i32 2
  %288 = load i32, ptr %287, align 8
  %289 = lshr i32 %288, 5
  %290 = getelementptr i32, ptr @__cpu_online_mask, i32 %289
  %291 = load volatile i32, ptr %290, align 4
  %292 = and i32 %288, 31
  %293 = shl nuw i32 1, %292
  %294 = and i32 %293, %291
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %329, label %296

296:                                              ; preds = %285
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %297 = call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %9) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  br label %329

298:                                              ; preds = %249
  %299 = load i8, ptr %252, align 1
  %300 = icmp ult i8 %299, 2
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 27
  call void @ieee80211_queue_work(ptr noundef %9, ptr noundef %302) #13
  br label %329

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 3
  %305 = load volatile i32, ptr @jiffies, align 64
  %306 = zext i8 %299 to i32
  %307 = shl nuw nsw i32 %306, 10
  %308 = add nsw i32 %307, -1024
  %309 = getelementptr inbounds %struct.cfg80211_bss, ptr %12, i32 0, i32 9
  %310 = load i16, ptr %309, align 4
  %311 = zext i16 %310 to i32
  %312 = mul i32 %308, %311
  %313 = call i32 @__usecs_to_jiffies(i32 noundef %312) #13
  %314 = add i32 %313, %305
  %315 = call i32 @mod_timer(ptr noundef %304, i32 noundef %314) #13
  br label %329

316:                                              ; preds = %85, %68, %42
  %317 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 66
  call void @mutex_lock(ptr noundef %317) #13
  %318 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 89
  call void @mutex_lock(ptr noundef %318) #13
  br label %319

319:                                              ; preds = %316, %236, %228, %165, %153
  %320 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 4
  store i8 1, ptr %320, align 1
  %321 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %6, i32 0, i32 1
  %322 = load i8, ptr %321, align 4
  %323 = icmp ne i8 %322, 0
  %324 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 30
  %325 = zext i1 %323 to i8
  store i8 %325, ptr %324, align 8
  %326 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 16
  call void @ieee80211_queue_work(ptr noundef %9, ptr noundef %326) #13
  %327 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 89
  call void @mutex_unlock(ptr noundef %327) #13
  %328 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 66
  call void @mutex_unlock(ptr noundef %328) #13
  br label %329

329:                                              ; preds = %319, %303, %301, %296, %285, %280, %142, %138, %56, %55, %54, %49, %14, %5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_connection_lost(ptr noundef %0, ptr nocapture readnone %1, i8 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca [26 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(26) %5, i8 0, i32 26, i1 false), !annotation !25
  %6 = zext i8 %2 to i16
  call fastcc void @ieee80211_set_disassoc(ptr noundef %0, i16 noundef zeroext 192, i16 noundef zeroext %6, i1 noundef zeroext %3, ptr noundef nonnull %5)
  call fastcc void @ieee80211_report_disconnect(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 26, i1 noundef zeroext true, i16 noundef zeroext %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_set_disassoc(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ieee80211_prep_tx_info, align 2
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #13
  %10 = getelementptr inbounds %struct.ieee80211_prep_tx_info, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %6, i8 0, i64 6, i1 false)
  store i16 %1, ptr %10, align 2
  %11 = icmp eq ptr %4, null
  %12 = and i1 %11, %3
  %13 = load i1, ptr @ieee80211_set_disassoc.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %5
  store i1 true, ptr @ieee80211_set_disassoc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2283, i32 noundef 9, ptr noundef null) #13
  br label %17

17:                                               ; preds = %16, %5
  br i1 %12, label %143, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2286, i32 noundef 9, ptr noundef null) #13
  br label %143

23:                                               ; preds = %18
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr inbounds %struct.ieee80211_local, ptr %24, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %25) #13
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, -3
  store i32 %28, ptr %26, align 8
  %29 = load ptr, ptr %8, align 4
  tail call void @ieee80211_run_deferred_scan(ptr noundef %29) #13
  %30 = load ptr, ptr %8, align 4
  %31 = getelementptr inbounds %struct.ieee80211_local, ptr %30, i32 0, i32 66
  tail call void @mutex_unlock(ptr noundef %31) #13
  store ptr null, ptr %19, align 4
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %33 = load ptr, ptr %32, align 8
  tail call void @netif_carrier_off(ptr noundef %33) #13
  %34 = load i32, ptr %9, align 8
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = and i32 %34, -3
  store i32 %38, ptr %9, align 8
  %39 = tail call i32 @ieee80211_hw_config(ptr noundef %9, i32 noundef 16) #13
  br label %40

40:                                               ; preds = %37, %23
  %41 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 92
  store ptr null, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %7, i32 0, i32 17
  %43 = load i8, ptr %42, align 2, !range !14
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %71, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %7, i32 0, i32 18
  %47 = load i8, ptr %46, align 1, !range !14
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load ptr, ptr %19, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %71, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr %26, align 4
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 3
  %58 = load i8, ptr %57, align 4, !range !14
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %56
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %61 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  %62 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef %61) #13
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.sta_info, ptr %62, i32 0, i32 23
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 8
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %64, %60
  %70 = phi i1 [ %68, %64 ], [ false, %60 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %71

71:                                               ; preds = %69, %56, %52, %49, %45, %40
  %72 = phi i1 [ %70, %69 ], [ false, %40 ], [ false, %45 ], [ false, %49 ], [ false, %52 ], [ false, %56 ]
  %73 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 38
  %74 = load i8, ptr %73, align 2, !range !14
  %75 = zext i1 %72 to i8
  %76 = icmp eq i8 %74, %75
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  store i8 %75, ptr %73, align 2
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 131072) #13
  br label %78

78:                                               ; preds = %77, %71
  tail call void @synchronize_net() #13
  br i1 %3, label %79, label %80

79:                                               ; preds = %78
  tail call void @ieee80211_flush_queues(ptr noundef %9, ptr noundef %0, i1 noundef zeroext true) #13
  br label %81

80:                                               ; preds = %78
  br i1 %11, label %95, label %81

81:                                               ; preds = %80, %79
  %82 = getelementptr %struct.ieee80211_hw, ptr %9, i32 0, i32 4, i32 1
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %83, 256
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 3
  %88 = load i8, ptr %87, align 4, !range !14
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load ptr, ptr %8, align 4
  call fastcc void @drv_mgd_prepare_tx(ptr noundef %91, ptr noundef %0, ptr noundef nonnull %6)
  br label %92

92:                                               ; preds = %90, %86, %81
  %93 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  call void @ieee80211_send_deauth_disassoc(ptr noundef %0, ptr noundef %93, ptr noundef %93, i16 noundef zeroext %1, i16 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4) #13
  br i1 %3, label %94, label %95

94:                                               ; preds = %92
  call void @ieee80211_flush_queues(ptr noundef %9, ptr noundef %0, i1 noundef zeroext false) #13
  br label %95

95:                                               ; preds = %94, %92, %80
  %96 = load ptr, ptr %8, align 4
  call fastcc void @drv_mgd_complete_tx(ptr noundef %96, ptr noundef %0, ptr noundef nonnull %6)
  %97 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %97, i8 0, i32 6, i1 false) #13
  %98 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 40
  store i32 0, ptr %98, align 8
  %99 = call i32 @__sta_info_flush(ptr noundef %0, i1 noundef zeroext false) #13
  %100 = call i32 @ieee80211_reset_erp_info(ptr noundef %0) #13
  %101 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 10
  store i8 0, ptr %101, align 1
  %102 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %7, i32 0, i32 38
  store i16 -1, ptr %102, align 2
  %103 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 44
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(54) %103, i8 0, i32 54, i1 false)
  %104 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 26
  %105 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 33
  %106 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 5
  store i8 0, ptr %106, align 8
  %107 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 46
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(76) %104, i8 0, i64 76, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %105, i8 0, i64 24, i1 false)
  store i32 -2147483648, ptr %107, align 8
  %108 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 95
  %109 = call i32 @del_timer_sync(ptr noundef %108) #13
  %110 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 93
  %111 = call zeroext i1 @cancel_work_sync(ptr noundef %110) #13
  %112 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 35
  %113 = load i32, ptr %112, align 8
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i32 8388609, i32 8392705
  %116 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 36
  store i8 0, ptr %116, align 4
  %117 = or i32 %100, %115
  %118 = or i32 %117, 8336
  call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef %118) #13
  call void @ieee80211_set_wmm_default(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %119 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %120 = call i32 @del_timer_sync(ptr noundef %119) #13
  %121 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2
  %122 = call i32 @del_timer_sync(ptr noundef %121) #13
  %123 = call i32 @del_timer_sync(ptr noundef %7) #13
  %124 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 3
  %125 = call i32 @del_timer_sync(ptr noundef %124) #13
  %126 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 18
  store i8 0, ptr %126, align 8
  %127 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 25
  store ptr null, ptr %127, align 4
  %128 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 3
  store i8 0, ptr %128, align 4
  store i32 0, ptr %26, align 4
  %129 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 66
  call void @mutex_lock(ptr noundef %129) #13
  call void @ieee80211_vif_release_channel(ptr noundef %0) #13
  %130 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 4
  store i8 0, ptr %130, align 1
  %131 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 10
  store i8 0, ptr %131, align 4
  %132 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %7, i32 0, i32 26
  store i8 0, ptr %132, align 1
  %133 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 30
  %134 = load i8, ptr %133, align 8, !range !14
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %95
  call void @ieee80211_wake_vif_queues(ptr noundef %9, ptr noundef %0, i32 noundef 2) #13
  store i8 0, ptr %133, align 8
  br label %137

137:                                              ; preds = %136, %95
  call void @mutex_unlock(ptr noundef %129) #13
  %138 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 112
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(96) %138, i8 0, i32 96, i1 false)
  %139 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 208
  %140 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %139) #13
  %141 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 24
  store i32 8, ptr %141, align 8
  %142 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 64
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(74) %142, i8 0, i64 74, i1 false)
  br label %143

143:                                              ; preds = %137, %22, %17
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_report_disconnect(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i16 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca %struct.ieee80211_event, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  %8 = getelementptr inbounds i8, ptr %7, i32 12
  store i32 0, ptr %8, align 4, !annotation !25
  store i32 1, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_event, ptr %7, i32 0, i32 1
  %10 = select i1 %3, i32 3, i32 2
  store i32 %10, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ieee80211_event, ptr %7, i32 0, i32 1, i32 0, i32 1
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ieee80211_event, ptr %7, i32 0, i32 1, i32 0, i32 2
  store i16 %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  br i1 %3, label %15, label %16

15:                                               ; preds = %6
  tail call void @cfg80211_tx_mlme_mgmt(ptr noundef %14, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %5) #13
  br label %17

16:                                               ; preds = %6
  tail call void @cfg80211_rx_mlme_mgmt(ptr noundef %14, ptr noundef %1, i32 noundef %2) #13
  br label %17

17:                                               ; preds = %16, %15
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_event_callback, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  %34 = call i32 @__traceiter_drv_event_callback(ptr noundef null, ptr noundef %19, ptr noundef %0, ptr noundef nonnull %7) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  br label %35

35:                                               ; preds = %33, %22, %17
  %36 = getelementptr inbounds %struct.ieee80211_local, ptr %19, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ieee80211_ops, ptr %37, i32 0, i32 60
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  call void %39(ptr noundef %19, ptr noundef %42, ptr noundef nonnull %7) #13
  br label %43

43:                                               ; preds = %41, %35
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = tail call ptr @llvm.thread.pointer() #13
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
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %58 = call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %19) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  br label %59

59:                                               ; preds = %57, %46, %43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_mgd_conn_tx_status(ptr noundef %0, i16 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i1 %2 to i8
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %8 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %7, i32 0, i32 31
  store i16 %1, ptr %8, align 2
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 12
  store i8 %4, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %7, i32 0, i32 30
  store i8 1, ptr %10, align 1
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %6, ptr noundef %11) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [26 x i8], align 1
  %3 = alloca [26 x i8], align 1
  %4 = alloca %struct.ieee80211_sta_vht_cap, align 4
  %5 = alloca %struct.ieee80211_sta_ht_cap, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_prep_tx_info, align 2
  %8 = alloca [6 x i8], align 1
  %9 = alloca %struct.ieee80211_event, align 4
  %10 = alloca %struct.ieee80211_event, align 4
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 7
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %13, i32 0, i32 30
  %16 = load i8, ptr %15, align 1, !range !14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %92, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %13, i32 0, i32 31
  %20 = load i16, ptr %19, align 2
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 12
  %22 = load i8, ptr %21, align 4, !range !14
  %23 = icmp eq i8 %22, 0
  store i8 0, ptr %15, align 1
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 22
  %25 = load ptr, ptr %24, align 4
  %26 = icmp ne ptr %25, null
  %27 = and i16 %20, 252
  %28 = icmp eq i16 %27, 176
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %59

30:                                               ; preds = %18
  br i1 %23, label %52, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %25, i32 0, i32 3
  %33 = load i16, ptr %32, align 4
  %34 = icmp eq i16 %33, 3
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = select i1 %34, i32 200, i32 10
  %37 = add i32 %35, %36
  %38 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %25, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  %39 = load ptr, ptr %24, align 4
  %40 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %47 = load i32, ptr %46, align 8
  %48 = sub i32 %41, %47
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45, %31
  %51 = tail call i32 @mod_timer(ptr noundef %13, i32 noundef %41) #13
  br label %56

52:                                               ; preds = %30
  %53 = load volatile i32, ptr @jiffies, align 64
  %54 = add i32 %53, -1
  %55 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %25, i32 0, i32 1
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %52, %50, %45
  %57 = load ptr, ptr %24, align 4
  %58 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %57, i32 0, i32 11
  br label %90

59:                                               ; preds = %18
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %92, label %63

63:                                               ; preds = %59
  %64 = trunc i16 %20 to i8
  %65 = and i8 %64, -4
  switch i8 %65, label %92 [
    i8 0, label %66
    i8 32, label %66
  ]

66:                                               ; preds = %63, %63
  %67 = load volatile i32, ptr @jiffies, align 64
  br i1 %23, label %84, label %68

68:                                               ; preds = %66
  %69 = add i32 %67, 10
  %70 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %61, i32 0, i32 2
  store i32 %69, ptr %70, align 4
  %71 = load ptr, ptr %60, align 4
  %72 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %71, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %75 = load volatile ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %79 = load i32, ptr %78, align 8
  %80 = sub i32 %73, %79
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77, %68
  %83 = tail call i32 @mod_timer(ptr noundef %13, i32 noundef %73) #13
  br label %87

84:                                               ; preds = %66
  %85 = add i32 %67, -1
  %86 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %61, i32 0, i32 2
  store i32 %85, ptr %86, align 4
  br label %87

87:                                               ; preds = %84, %82, %77
  %88 = load ptr, ptr %60, align 4
  %89 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %88, i32 0, i32 13
  br label %90

90:                                               ; preds = %87, %56
  %91 = phi ptr [ %58, %56 ], [ %89, %87 ]
  store i8 1, ptr %91, align 2
  br label %92

92:                                               ; preds = %90, %63, %59, %1
  %93 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 22
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %152, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %94, i32 0, i32 11
  %98 = load i8, ptr %97, align 2, !range !14
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %152, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %94, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = load volatile i32, ptr @jiffies, align 64
  %104 = sub i32 %102, %103
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %139

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %94, i32 0, i32 8
  %108 = load i8, ptr %107, align 1, !range !14
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %94, i32 0, i32 9
  %112 = load i8, ptr %111, align 4, !range !14
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %129, label %114

114:                                              ; preds = %110, %106
  %115 = tail call i32 @del_timer_sync(ptr noundef %13) #13
  %116 = load ptr, ptr %94, align 4
  %117 = getelementptr inbounds %struct.cfg80211_bss, ptr %116, i32 0, i32 11
  %118 = tail call i32 @sta_info_destroy_addr(ptr noundef %0, ptr noundef %117) #13
  %119 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %119, i8 0, i32 6, i1 false) #13
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 128) #13
  %120 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  store i32 0, ptr %120, align 8
  %121 = load ptr, ptr %11, align 4
  %122 = getelementptr inbounds %struct.ieee80211_local, ptr %121, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %122) #13
  tail call void @ieee80211_vif_release_channel(ptr noundef %0) #13
  %123 = load ptr, ptr %11, align 4
  %124 = getelementptr inbounds %struct.ieee80211_local, ptr %123, i32 0, i32 66
  tail call void @mutex_unlock(ptr noundef %124) #13
  %125 = load ptr, ptr %11, align 4
  %126 = getelementptr inbounds %struct.ieee80211_hw, ptr %125, i32 0, i32 1
  %127 = load ptr, ptr %126, align 8
  %128 = load ptr, ptr %94, align 4
  tail call void @cfg80211_put_bss(ptr noundef %127, ptr noundef %128) #13
  tail call void @kfree(ptr noundef nonnull %94) #13
  store ptr null, ptr %93, align 4
  br label %152

129:                                              ; preds = %110
  %130 = tail call fastcc i32 @ieee80211_auth(ptr noundef %0)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %152, label %132

132:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 0, i32 6, i1 false), !annotation !25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) @__const.ieee80211_sta_work.event, i32 16, i1 false)
  %133 = load ptr, ptr %93, align 4
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.cfg80211_bss, ptr %134, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %8, ptr noundef align 4 dereferenceable(6) %135, i32 6, i1 false)
  tail call fastcc void @ieee80211_destroy_auth_data(ptr noundef %0, i1 noundef zeroext false)
  %136 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %137 = load ptr, ptr %136, align 8
  call void @cfg80211_auth_timeout(ptr noundef %137, ptr noundef nonnull %8) #13
  %138 = load ptr, ptr %11, align 4
  call fastcc void @drv_event_callback(ptr noundef %138, ptr noundef %0, ptr noundef nonnull %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #13
  br label %152

139:                                              ; preds = %100
  %140 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %94, i32 0, i32 1
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %143 = load volatile ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %147 = load i32, ptr %146, align 8
  %148 = sub i32 %141, %147
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145, %139
  %151 = tail call i32 @mod_timer(ptr noundef %13, i32 noundef %141) #13
  br label %152

152:                                              ; preds = %150, %145, %132, %129, %114, %96, %92
  %153 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %1017, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %154, i32 0, i32 13
  %158 = load i8, ptr %157, align 2, !range !14
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %1017, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %154, i32 0, i32 2
  %162 = load i32, ptr %161, align 4
  %163 = load volatile i32, ptr @jiffies, align 64
  %164 = sub i32 %162, %163
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %1004

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %154, i32 0, i32 11
  %168 = load i8, ptr %167, align 4, !range !14
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 3
  %172 = load i8, ptr %171, align 4, !range !14
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %947, label %174

174:                                              ; preds = %170, %166
  %175 = load ptr, ptr %11, align 4
  %176 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %154, i32 0, i32 3
  %177 = load i32, ptr %176, align 4
  %178 = add i32 %177, 1
  store i32 %178, ptr %176, align 4
  %179 = icmp sgt i32 %178, 3
  %180 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %181 = load ptr, ptr %154, align 4
  %182 = getelementptr inbounds %struct.cfg80211_bss, ptr %181, i32 0, i32 11
  br i1 %179, label %183, label %188

183:                                              ; preds = %174
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %180, ptr noundef %182) #14
  %185 = getelementptr inbounds %struct.ieee80211_hw, ptr %175, i32 0, i32 1
  %186 = load ptr, ptr %185, align 8
  %187 = load ptr, ptr %154, align 4
  call void @cfg80211_unlink_bss(ptr noundef %186, ptr noundef %187) #13
  br label %947

188:                                              ; preds = %174
  %189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %180, ptr noundef %182, i32 noundef %178, i32 noundef 3) #14
  %190 = load ptr, ptr %11, align 4
  %191 = load ptr, ptr %153, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4
  %192 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %193 = load i32, ptr %192, align 8
  %194 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 3
  %195 = load i8, ptr %194, align 2, !range !14
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %188
  switch i32 %193, label %199 [
    i32 2, label %200
    i32 3, label %198
  ]

198:                                              ; preds = %197
  br label %200

199:                                              ; preds = %197, %188
  br label %200

200:                                              ; preds = %199, %198, %197
  %201 = phi i32 [ %193, %199 ], [ 9, %198 ], [ 8, %197 ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %7, i8 0, i32 6, i1 false) #13
  %202 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 19
  %203 = load i32, ptr %202, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 20
  %207 = call ptr @cfg80211_find_elem_match(i8 noundef zeroext 127, ptr noundef %206, i32 noundef %203, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  br label %208

208:                                              ; preds = %205, %200
  %209 = phi ptr [ %207, %205 ], [ null, %200 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %210 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %211 = load volatile ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %214, !prof !8

213:                                              ; preds = %208
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 702, i32 noundef 9, ptr noundef null) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %915

214:                                              ; preds = %208
  %215 = load ptr, ptr %211, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %216 = getelementptr inbounds %struct.ieee80211_hw, ptr %190, i32 0, i32 1
  %217 = load ptr, ptr %216, align 8
  %218 = load i32, ptr %215, align 4
  %219 = getelementptr %struct.wiphy, ptr %217, i32 0, i32 53, i32 %218
  %220 = load ptr, ptr %219, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %221 = load volatile ptr, ptr %210, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %230, label %223

223:                                              ; preds = %214
  %224 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %221, i32 0, i32 1
  %225 = load i32, ptr %224, align 4
  %226 = icmp eq i32 %225, 7
  %227 = zext i1 %226 to i32
  %228 = icmp eq i32 %225, 6
  %229 = select i1 %228, i32 2, i32 %227
  br label %230

230:                                              ; preds = %223, %214
  %231 = phi i32 [ %229, %223 ], [ 0, %214 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %232 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 8
  %233 = load i8, ptr %232, align 1
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %220, i32 0, i32 4
  %237 = load i32, ptr %236, align 4
  %238 = icmp sgt i32 %237, 0
  br i1 %238, label %244, label %252

239:                                              ; preds = %230
  %240 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 1
  %241 = load ptr, ptr %240, align 4
  %242 = zext i8 %233 to i32
  %243 = call i32 @ieee80211_parse_bitrates(ptr noundef nonnull %211, ptr noundef %220, ptr noundef %241, i32 noundef %242, ptr noundef nonnull %6) #13
  br label %252

244:                                              ; preds = %244, %235
  %245 = phi i32 [ %249, %244 ], [ 0, %235 ]
  %246 = phi i32 [ %248, %244 ], [ 0, %235 ]
  %247 = shl nuw i32 1, %245
  %248 = or i32 %246, %247
  %249 = add nuw nsw i32 %245, 1
  %250 = icmp eq i32 %249, %237
  br i1 %250, label %251, label %244

251:                                              ; preds = %244
  store i32 %248, ptr %6, align 4
  br label %252

252:                                              ; preds = %251, %239, %235
  %253 = phi i32 [ %243, %239 ], [ %237, %251 ], [ 0, %235 ]
  %254 = trunc i32 %201 to i8
  %255 = and i32 %201, 255
  %256 = icmp ugt i8 %254, 11
  br i1 %256, label %266, label %257, !prof !8

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %220, i32 0, i32 9
  %259 = load i16, ptr %258, align 4
  %260 = zext i16 %259 to i32
  %261 = icmp eq i16 %259, 0
  br i1 %261, label %277, label %262

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %220, i32 0, i32 10
  %264 = load ptr, ptr %263, align 4
  %265 = shl nuw i32 1, %255
  br label %270

266:                                              ; preds = %252
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 510, i32 noundef 9, ptr noundef null) #13
  br label %277

267:                                              ; preds = %270
  %268 = add nuw nsw i32 %271, 1
  %269 = icmp eq i32 %268, %260
  br i1 %269, label %277, label %270

270:                                              ; preds = %267, %262
  %271 = phi i32 [ 0, %262 ], [ %268, %267 ]
  %272 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %264, i32 %271
  %273 = load i16, ptr %272, align 4
  %274 = zext i16 %273 to i32
  %275 = and i32 %265, %274
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %267, label %277

277:                                              ; preds = %270, %267, %266, %257
  %278 = phi ptr [ null, %266 ], [ null, %257 ], [ null, %267 ], [ %272, %270 ]
  %279 = getelementptr inbounds %struct.ieee80211_hw, ptr %190, i32 0, i32 5
  %280 = load i32, ptr %279, align 4
  %281 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 7
  %282 = load i8, ptr %281, align 4
  %283 = zext i8 %282 to i32
  %284 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %220, i32 0, i32 3
  %285 = load i32, ptr %284, align 4
  %286 = shl i32 %285, 1
  %287 = load i32, ptr %202, align 4
  %288 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 18
  %289 = load i32, ptr %288, align 4
  %290 = icmp eq i32 %289, 0
  %291 = select i1 %290, i32 0, i32 16
  %292 = icmp eq ptr %278, null
  br i1 %292, label %296, label %293

293:                                              ; preds = %277
  %294 = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %278, i32 0, i32 4, i32 1
  %295 = load i32, ptr %294, align 4
  br label %296

296:                                              ; preds = %293, %277
  %297 = phi i32 [ %295, %293 ], [ 0, %277 ]
  %298 = add i32 %253, 175
  %299 = add i32 %298, %280
  %300 = add i32 %299, %283
  %301 = add i32 %300, %286
  %302 = add i32 %301, %287
  %303 = add i32 %302, %291
  %304 = add i32 %303, %297
  %305 = call ptr @__alloc_skb(i32 noundef %304, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #13
  %306 = icmp eq ptr %305, null
  br i1 %306, label %915, label %307

307:                                              ; preds = %296
  %308 = load i32, ptr %279, align 4
  %309 = getelementptr inbounds %struct.sk_buff, ptr %305, i32 0, i32 17
  %310 = load ptr, ptr %309, align 4
  %311 = getelementptr i8, ptr %310, i32 %308
  store ptr %311, ptr %309, align 4
  %312 = getelementptr inbounds %struct.sk_buff, ptr %305, i32 0, i32 14
  %313 = load ptr, ptr %312, align 8
  %314 = getelementptr i8, ptr %313, i32 %308
  store ptr %314, ptr %312, align 8
  %315 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %220, i32 0, i32 2
  %316 = load i32, ptr %315, align 4
  %317 = icmp eq i32 %316, 0
  %318 = select i1 %317, i16 1057, i16 1
  %319 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 4
  %320 = load i16, ptr %319, align 4
  %321 = and i16 %320, 16
  %322 = or i16 %321, %318
  %323 = and i16 %320, 256
  %324 = icmp eq i16 %323, 0
  br i1 %324, label %332, label %325

325:                                              ; preds = %307
  %326 = getelementptr inbounds %struct.ieee80211_hw, ptr %190, i32 0, i32 4
  %327 = load volatile i32, ptr %326, align 4
  %328 = trunc i32 %327 to i16
  %329 = shl i16 %328, 2
  %330 = and i16 %329, 256
  %331 = or i16 %330, %322
  br label %332

332:                                              ; preds = %325, %307
  %333 = phi i16 [ %322, %307 ], [ %331, %325 ]
  %334 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %335 = load i32, ptr %334, align 4
  %336 = trunc i32 %335 to i16
  %337 = lshr i16 %336, 3
  %338 = and i16 %337, 4096
  %339 = or i16 %338, %333
  %340 = call ptr @skb_put(ptr noundef nonnull %305, i32 noundef 24) #13
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(24) %340, i8 0, i32 24, i1 false) #13
  %341 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %340, i32 0, i32 2
  %342 = load ptr, ptr %191, align 4
  %343 = getelementptr inbounds %struct.cfg80211_bss, ptr %342, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %341, ptr noundef align 4 dereferenceable(6) %343, i32 6, i1 false) #13
  %344 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %340, i32 0, i32 3
  %345 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %344, ptr noundef align 8 dereferenceable(6) %345, i32 6, i1 false) #13
  %346 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %340, i32 0, i32 4
  %347 = load ptr, ptr %191, align 4
  %348 = getelementptr inbounds %struct.cfg80211_bss, ptr %347, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %346, ptr noundef align 4 dereferenceable(6) %348, i32 6, i1 false) #13
  %349 = load i32, ptr %315, align 4
  %350 = icmp eq i32 %349, 4
  %351 = getelementptr inbounds %struct.ieee80211_conf, ptr %190, i32 0, i32 3
  %352 = load i16, ptr %351, align 4
  br i1 %350, label %353, label %356

353:                                              ; preds = %332
  %354 = zext i16 %352 to i32
  %355 = call zeroext i16 @ieee80211_encode_usf(i32 noundef %354) #13
  br label %356

356:                                              ; preds = %353, %332
  %357 = phi i16 [ %355, %353 ], [ %352, %332 ]
  %358 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 5
  %359 = load i32, ptr %358, align 4
  %360 = getelementptr %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 5, i32 4
  %361 = load i16, ptr %360, align 2
  %362 = zext i16 %361 to i32
  %363 = or i32 %359, %362
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %370, label %365

365:                                              ; preds = %356
  %366 = call ptr @skb_put(ptr noundef nonnull %305, i32 noundef 10) #13
  store i16 32, ptr %340, align 2
  %367 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %340, i32 0, i32 6
  store i16 %339, ptr %367, align 2
  %368 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %340, i32 0, i32 6, i32 0, i32 1
  store i16 %357, ptr %368, align 2
  %369 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %340, i32 0, i32 6, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %369, ptr noundef align 2 dereferenceable(6) %358, i32 6, i1 false) #13
  br label %374

370:                                              ; preds = %356
  %371 = call ptr @skb_put(ptr noundef nonnull %305, i32 noundef 4) #13
  store i16 0, ptr %340, align 2
  %372 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %340, i32 0, i32 6
  store i16 %339, ptr %372, align 2
  %373 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %340, i32 0, i32 6, i32 0, i32 1
  store i16 %357, ptr %373, align 2
  br label %374

374:                                              ; preds = %370, %365
  %375 = phi i16 [ 0, %370 ], [ 32, %365 ]
  %376 = getelementptr inbounds %struct.ieee80211_prep_tx_info, ptr %7, i32 0, i32 1
  store i16 %375, ptr %376, align 2
  %377 = load i8, ptr %281, align 4
  %378 = zext i8 %377 to i32
  %379 = add nuw nsw i32 %378, 2
  %380 = call ptr @skb_put(ptr noundef nonnull %305, i32 noundef %379) #13
  %381 = getelementptr i8, ptr %380, i32 1
  store i8 0, ptr %380, align 1
  %382 = load i8, ptr %281, align 4
  %383 = getelementptr i8, ptr %380, i32 2
  store i8 %382, ptr %381, align 1
  %384 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 6
  %385 = load i8, ptr %281, align 4
  %386 = zext i8 %385 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %383, ptr align 4 %384, i32 %386, i1 false) #13
  %387 = load i32, ptr %315, align 4
  %388 = icmp eq i32 %387, 4
  br i1 %388, label %471, label %389

389:                                              ; preds = %374
  %390 = call i32 @llvm.smin.i32(i32 %253, i32 8) #13
  %391 = add nsw i32 %390, 2
  %392 = call ptr @skb_put(ptr noundef nonnull %305, i32 noundef %391) #13
  %393 = getelementptr i8, ptr %392, i32 1
  store i8 1, ptr %392, align 1
  %394 = trunc i32 %390 to i8
  store i8 %394, ptr %393, align 1
  %395 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %220, i32 0, i32 1
  %396 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %220, i32 0, i32 4
  %397 = load i32, ptr %396, align 4
  %398 = icmp sgt i32 %397, 0
  br i1 %398, label %399, label %431

399:                                              ; preds = %389
  %400 = getelementptr i8, ptr %392, i32 2
  %401 = shl i32 5, %231
  %402 = add i32 %401, -1
  br label %403

403:                                              ; preds = %425, %399
  %404 = phi i32 [ %397, %399 ], [ %426, %425 ]
  %405 = phi ptr [ %400, %399 ], [ %428, %425 ]
  %406 = phi i32 [ 0, %399 ], [ %427, %425 ]
  %407 = phi i32 [ 0, %399 ], [ %429, %425 ]
  %408 = shl nuw i32 1, %407
  %409 = load i32, ptr %6, align 4
  %410 = and i32 %409, %408
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %425, label %412

412:                                              ; preds = %403
  %413 = load ptr, ptr %395, align 4
  %414 = getelementptr %struct.ieee80211_rate, ptr %413, i32 %407, i32 1
  %415 = load i16, ptr %414, align 4
  %416 = zext i16 %415 to i32
  %417 = add i32 %402, %416
  %418 = sdiv i32 %417, %401
  %419 = trunc i32 %418 to i8
  store i8 %419, ptr %405, align 1
  %420 = add i32 %406, 1
  %421 = icmp eq i32 %420, 8
  br i1 %421, label %431, label %422

422:                                              ; preds = %412
  %423 = getelementptr i8, ptr %405, i32 1
  %424 = load i32, ptr %396, align 4
  br label %425

425:                                              ; preds = %422, %403
  %426 = phi i32 [ %424, %422 ], [ %404, %403 ]
  %427 = phi i32 [ %420, %422 ], [ %406, %403 ]
  %428 = phi ptr [ %423, %422 ], [ %405, %403 ]
  %429 = add nuw nsw i32 %407, 1
  %430 = icmp slt i32 %429, %426
  br i1 %430, label %403, label %431

431:                                              ; preds = %425, %412, %389
  %432 = phi i32 [ 0, %389 ], [ %407, %412 ], [ %429, %425 ]
  %433 = phi i32 [ 0, %389 ], [ 8, %412 ], [ %427, %425 ]
  %434 = icmp sgt i32 %253, %433
  br i1 %434, label %435, label %471

435:                                              ; preds = %431
  %436 = sub i32 %253, %433
  %437 = add i32 %436, 2
  %438 = call ptr @skb_put(ptr noundef nonnull %305, i32 noundef %437) #13
  %439 = getelementptr i8, ptr %438, i32 1
  store i8 50, ptr %438, align 1
  %440 = trunc i32 %436 to i8
  store i8 %440, ptr %439, align 1
  %441 = add i32 %432, 1
  %442 = load i32, ptr %396, align 4
  %443 = icmp slt i32 %441, %442
  br i1 %443, label %444, label %471

444:                                              ; preds = %435
  %445 = getelementptr i8, ptr %438, i32 2
  %446 = shl i32 5, %231
  %447 = add i32 %446, -1
  br label %448

448:                                              ; preds = %466, %444
  %449 = phi i32 [ %442, %444 ], [ %467, %466 ]
  %450 = phi i32 [ %441, %444 ], [ %469, %466 ]
  %451 = phi ptr [ %445, %444 ], [ %468, %466 ]
  %452 = shl nuw i32 1, %450
  %453 = load i32, ptr %6, align 4
  %454 = and i32 %453, %452
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %466, label %456

456:                                              ; preds = %448
  %457 = load ptr, ptr %395, align 4
  %458 = getelementptr %struct.ieee80211_rate, ptr %457, i32 %450, i32 1
  %459 = load i16, ptr %458, align 4
  %460 = zext i16 %459 to i32
  %461 = add i32 %447, %460
  %462 = sdiv i32 %461, %446
  %463 = trunc i32 %462 to i8
  %464 = getelementptr i8, ptr %451, i32 1
  store i8 %463, ptr %451, align 1
  %465 = load i32, ptr %396, align 4
  br label %466

466:                                              ; preds = %456, %448
  %467 = phi i32 [ %465, %456 ], [ %449, %448 ]
  %468 = phi ptr [ %464, %456 ], [ %451, %448 ]
  %469 = add nsw i32 %450, 1
  %470 = icmp slt i32 %469, %467
  br i1 %470, label %448, label %471

471:                                              ; preds = %466, %435, %431, %374
  %472 = zext i16 %339 to i32
  %473 = and i32 %472, 256
  %474 = icmp eq i32 %473, 0
  %475 = and i32 %472, 4352
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %507, label %477

477:                                              ; preds = %471
  %478 = call ptr @skb_put(ptr noundef nonnull %305, i32 noundef 4) #13
  %479 = getelementptr i8, ptr %478, i32 1
  store i8 33, ptr %478, align 1
  %480 = getelementptr i8, ptr %478, i32 2
  store i8 2, ptr %479, align 1
  %481 = getelementptr i8, ptr %478, i32 3
  store i8 0, ptr %480, align 1
  %482 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %211, i32 0, i32 1
  %483 = load i32, ptr %482, align 4
  switch i32 %483, label %500 [
    i32 6, label %484
    i32 7, label %492
  ]

484:                                              ; preds = %477
  %485 = load ptr, ptr %211, align 4
  %486 = getelementptr inbounds %struct.ieee80211_channel, ptr %485, i32 0, i32 7
  %487 = load i32, ptr %486, align 4
  %488 = add i32 %487, -6
  %489 = getelementptr inbounds %struct.ieee80211_channel, ptr %485, i32 0, i32 6
  %490 = load i32, ptr %489, align 4
  %491 = call i32 @llvm.smin.i32(i32 %488, i32 %490) #13
  br label %504

492:                                              ; preds = %477
  %493 = load ptr, ptr %211, align 4
  %494 = getelementptr inbounds %struct.ieee80211_channel, ptr %493, i32 0, i32 7
  %495 = load i32, ptr %494, align 4
  %496 = add i32 %495, -3
  %497 = getelementptr inbounds %struct.ieee80211_channel, ptr %493, i32 0, i32 6
  %498 = load i32, ptr %497, align 4
  %499 = call i32 @llvm.smin.i32(i32 %496, i32 %498) #13
  br label %504

500:                                              ; preds = %477
  %501 = load ptr, ptr %211, align 4
  %502 = getelementptr inbounds %struct.ieee80211_channel, ptr %501, i32 0, i32 6
  %503 = load i32, ptr %502, align 4
  br label %504

504:                                              ; preds = %500, %492, %484
  %505 = phi i32 [ %503, %500 ], [ %499, %492 ], [ %491, %484 ]
  %506 = trunc i32 %505 to i8
  store i8 %506, ptr %481, align 1
  br label %507

507:                                              ; preds = %504, %471
  br i1 %474, label %547, label %508

508:                                              ; preds = %507
  %509 = load i32, ptr %315, align 4
  %510 = icmp eq i32 %509, 3
  %511 = icmp ne ptr %209, null
  %512 = select i1 %510, i1 %511, i1 false
  br i1 %512, label %513, label %522

513:                                              ; preds = %508
  %514 = getelementptr inbounds %struct.element, ptr %209, i32 0, i32 1
  %515 = load i8, ptr %514, align 1
  %516 = icmp eq i8 %515, 0
  br i1 %516, label %522, label %517

517:                                              ; preds = %513
  %518 = getelementptr inbounds %struct.element, ptr %209, i32 0, i32 2
  %519 = load i8, ptr %518, align 1
  %520 = and i8 %519, 4
  %521 = icmp eq i8 %520, 0
  br i1 %521, label %522, label %547

522:                                              ; preds = %517, %513, %508
  %523 = load i32, ptr %284, align 4
  %524 = shl i32 %523, 1
  %525 = add i32 %524, 2
  %526 = call ptr @skb_put(ptr noundef nonnull %305, i32 noundef %525) #13
  %527 = getelementptr i8, ptr %526, i32 1
  store i8 36, ptr %526, align 1
  %528 = load i32, ptr %284, align 4
  %529 = trunc i32 %528 to i8
  %530 = shl i8 %529, 1
  store i8 %530, ptr %527, align 1
  %531 = load i32, ptr %284, align 4
  %532 = icmp sgt i32 %531, 0
  br i1 %532, label %533, label %547

533:                                              ; preds = %533, %522
  %534 = phi ptr [ %536, %533 ], [ %526, %522 ]
  %535 = phi i32 [ %544, %533 ], [ 0, %522 ]
  %536 = getelementptr i8, ptr %534, i32 2
  %537 = load ptr, ptr %220, align 4
  %538 = getelementptr %struct.ieee80211_channel, ptr %537, i32 %535, i32 1
  %539 = load i32, ptr %538, align 4
  %540 = mul i32 %539, 1000
  %541 = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %540) #13
  %542 = trunc i32 %541 to i8
  %543 = getelementptr i8, ptr %534, i32 3
  store i8 %542, ptr %536, align 1
  store i8 1, ptr %543, align 1
  %544 = add nuw nsw i32 %535, 1
  %545 = load i32, ptr %284, align 4
  %546 = icmp slt i32 %544, %545
  br i1 %546, label %533, label %547

547:                                              ; preds = %533, %522, %517, %507
  %548 = getelementptr inbounds %struct.ieee80211_hw, ptr %190, i32 0, i32 4
  %549 = getelementptr %struct.ieee80211_hw, ptr %190, i32 0, i32 4, i32 1
  %550 = load volatile i32, ptr %549, align 4
  %551 = and i32 %550, 32768
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %570, label %553

553:                                              ; preds = %547
  %554 = load i32, ptr %334, align 4
  %555 = and i32 %554, 65536
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %570

557:                                              ; preds = %553
  %558 = load i32, ptr %202, align 4
  %559 = icmp ne i32 %558, 0
  %560 = icmp ne ptr %209, null
  %561 = select i1 %559, i1 %560, i1 false
  br i1 %561, label %562, label %572

562:                                              ; preds = %557
  %563 = getelementptr inbounds %struct.element, ptr %209, i32 0, i32 1
  %564 = load i8, ptr %563, align 1
  %565 = icmp ugt i8 %564, 2
  br i1 %565, label %566, label %570

566:                                              ; preds = %562
  %567 = getelementptr %struct.element, ptr %209, i32 2
  %568 = load i8, ptr %567, align 1
  %569 = or i8 %568, 64
  store i8 %569, ptr %567, align 1
  br label %570

570:                                              ; preds = %566, %562, %553, %547
  %571 = load i32, ptr %202, align 4
  br label %572

572:                                              ; preds = %570, %557
  %573 = phi i32 [ %571, %570 ], [ %558, %557 ]
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %579, label %575

575:                                              ; preds = %572
  %576 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 20
  %577 = call i32 @ieee80211_ie_split_ric(ptr noundef %576, i32 noundef %573, ptr noundef nonnull @ieee80211_send_assoc.before_ht, i32 noundef 12, ptr noundef nonnull @ieee80211_send_assoc.after_ric, i32 noundef 9, i32 noundef 0) #13
  %578 = call ptr @skb_put(ptr noundef %305, i32 noundef %577) #13
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %578, ptr align 1 %576, i32 %577, i1 false) #13
  br label %579

579:                                              ; preds = %575, %572
  %580 = phi i32 [ %577, %575 ], [ 0, %572 ]
  %581 = load i32, ptr %334, align 4
  %582 = and i32 %581, 2064
  %583 = icmp eq i32 %582, 16
  %584 = load i1, ptr @ieee80211_send_assoc.__already_done, align 1
  %585 = xor i1 %584, true
  %586 = select i1 %583, i1 %585, i1 false
  br i1 %586, label %587, label %588, !prof !8

587:                                              ; preds = %579
  store i1 true, ptr @ieee80211_send_assoc.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 926, i32 noundef 9, ptr noundef null) #13
  br label %588

588:                                              ; preds = %587, %579
  br i1 %583, label %589, label %592

589:                                              ; preds = %588
  %590 = load i32, ptr %334, align 4
  %591 = or i32 %590, 2048
  store i32 %591, ptr %334, align 4
  br label %592

592:                                              ; preds = %589, %588
  %593 = load i32, ptr %315, align 4
  %594 = icmp eq i32 %593, 3
  br i1 %594, label %637, label %595

595:                                              ; preds = %592
  %596 = load i32, ptr %334, align 4
  %597 = and i32 %596, 16
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %637

599:                                              ; preds = %595
  %600 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 14
  %601 = load i8, ptr %600, align 1
  %602 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 44
  %603 = load i32, ptr %602, align 8
  %604 = getelementptr inbounds %struct.ieee80211_channel, ptr %215, i32 0, i32 4
  %605 = load i32, ptr %604, align 4
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %5) #13
  %606 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %220, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(22) %5, ptr noundef align 4 dereferenceable(22) %606, i32 22, i1 false) #13
  call void @ieee80211_apply_htcap_overrides(ptr noundef %0, ptr noundef nonnull %5) #13
  %607 = load i16, ptr %5, align 2
  %608 = and i8 %601, 3
  %609 = zext i8 %608 to i32
  switch i32 %609, label %620 [
    i32 1, label %610
    i32 3, label %615
  ]

610:                                              ; preds = %599
  %611 = and i32 %605, 16
  %612 = icmp eq i32 %611, 0
  %613 = and i16 %607, -67
  %614 = select i1 %612, i16 %607, i16 %613
  br label %620

615:                                              ; preds = %599
  %616 = and i32 %605, 32
  %617 = icmp eq i32 %616, 0
  %618 = and i16 %607, -67
  %619 = select i1 %617, i16 %607, i16 %618
  br label %620

620:                                              ; preds = %615, %610, %599
  %621 = phi i16 [ %607, %599 ], [ %614, %610 ], [ %619, %615 ]
  %622 = load i32, ptr %334, align 8
  %623 = and i32 %622, 1024
  %624 = icmp eq i32 %623, 0
  %625 = and i16 %621, -67
  %626 = select i1 %624, i16 %621, i16 %625
  %627 = and i16 %626, -13
  switch i32 %603, label %633 [
    i32 0, label %628
    i32 4, label %628
    i32 1, label %629
    i32 3, label %631
  ]

628:                                              ; preds = %620, %620
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 524, i32 noundef 9, ptr noundef null) #13
  br label %629

629:                                              ; preds = %628, %620
  %630 = or i16 %626, 12
  br label %633

631:                                              ; preds = %620
  %632 = or i16 %627, 4
  br label %633

633:                                              ; preds = %631, %629, %620
  %634 = phi i16 [ %632, %631 ], [ %630, %629 ], [ %627, %620 ]
  %635 = call ptr @skb_put(ptr noundef %305, i32 noundef 28) #13
  %636 = call ptr @ieee80211_ie_build_ht_cap(ptr noundef %635, ptr noundef nonnull %5, i16 noundef zeroext %634) #13
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %5) #13
  br label %637

637:                                              ; preds = %633, %595, %592
  %638 = load i32, ptr %202, align 4
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %653, label %640

640:                                              ; preds = %637
  %641 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 20
  %642 = call i32 @ieee80211_ie_split_ric(ptr noundef %641, i32 noundef %638, ptr noundef nonnull @ieee80211_send_assoc.before_vht, i32 noundef 5, ptr noundef null, i32 noundef 0, i32 noundef %580) #13
  %643 = getelementptr i8, ptr %641, i32 %580
  %644 = sub i32 %642, %580
  %645 = call ptr @skb_put(ptr noundef %305, i32 noundef %644) #13
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %645, ptr align 1 %643, i32 %644, i1 false) #13
  %646 = load i32, ptr %202, align 4
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %653, label %648

648:                                              ; preds = %640
  %649 = call i32 @ieee80211_ie_split_ric(ptr noundef %641, i32 noundef %646, ptr noundef nonnull @ieee80211_send_assoc.before_he, i32 noundef 13, ptr noundef null, i32 noundef 0, i32 noundef %642) #13
  %650 = sub i32 %649, %642
  %651 = call ptr @skb_put(ptr noundef nonnull %305, i32 noundef %650) #13
  %652 = getelementptr i8, ptr %641, i32 %642
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %651, ptr align 1 %652, i32 %650, i1 false) #13
  br label %653

653:                                              ; preds = %648, %640, %637
  %654 = phi i32 [ %649, %648 ], [ %642, %640 ], [ %580, %637 ]
  %655 = load i32, ptr %315, align 4
  %656 = icmp eq i32 %655, 3
  br i1 %656, label %721, label %657

657:                                              ; preds = %653
  %658 = load i32, ptr %334, align 4
  %659 = and i32 %658, 2048
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %661, label %721

661:                                              ; preds = %657
  %662 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 15
  %663 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %664 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %220, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %664, i32 16, i1 false) #13
  call void @ieee80211_apply_vhtcap_overrides(ptr noundef %0, ptr noundef nonnull %4) #13
  %665 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %4, i32 0, i32 1
  %666 = load i32, ptr %665, align 4
  %667 = load i32, ptr %334, align 8
  %668 = and i32 %667, 4096
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %675, label %670

670:                                              ; preds = %661
  %671 = and i32 %666, 12
  %672 = and i32 %666, -13
  switch i32 %671, label %675 [
    i32 8, label %673
    i32 4, label %673
  ]

673:                                              ; preds = %670, %670
  %674 = or i32 %672, 4
  br label %675

675:                                              ; preds = %673, %670, %661
  %676 = phi i32 [ %666, %661 ], [ %674, %673 ], [ %672, %670 ]
  %677 = and i32 %667, 8192
  %678 = icmp eq i32 %677, 0
  %679 = and i32 %676, -77
  %680 = select i1 %678, i32 %676, i32 %679
  %681 = load i32, ptr %662, align 1
  %682 = and i32 %681, 2048
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %684, label %686

684:                                              ; preds = %675
  %685 = and i32 %680, -1052673
  br label %691

686:                                              ; preds = %675
  %687 = and i32 %681, 524288
  %688 = icmp eq i32 %687, 0
  %689 = and i32 %680, -1048577
  %690 = select i1 %688, i32 %689, i32 %680
  br label %691

691:                                              ; preds = %686, %684
  %692 = phi i32 [ %685, %684 ], [ %690, %686 ]
  %693 = and i32 %692, 1048576
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %710, label %695

695:                                              ; preds = %691
  %696 = getelementptr inbounds %struct.ieee80211_local, ptr %663, i32 0, i32 62
  br label %697

697:                                              ; preds = %701, %695
  %698 = phi ptr [ %696, %695 ], [ %699, %701 ]
  %699 = load volatile ptr, ptr %698, align 8
  %700 = icmp eq ptr %699, %696
  br i1 %700, label %707, label %701

701:                                              ; preds = %697
  %702 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %699, i32 0, i32 58, i32 5
  %703 = load i8, ptr %702, align 8, !range !14
  %704 = icmp eq i8 %703, 0
  br i1 %704, label %697, label %705

705:                                              ; preds = %701
  %706 = and i32 %692, -1048577
  br label %710

707:                                              ; preds = %697
  %708 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 5
  store i8 1, ptr %708, align 8
  %709 = load i32, ptr %662, align 1
  br label %710

710:                                              ; preds = %707, %705, %691
  %711 = phi i32 [ %681, %691 ], [ %681, %705 ], [ %709, %707 ]
  %712 = phi i32 [ %692, %691 ], [ %706, %705 ], [ %692, %707 ]
  %713 = and i32 %711, 57344
  %714 = and i32 %712, 57344
  %715 = icmp ult i32 %713, %714
  %716 = and i32 %712, -57345
  %717 = or i32 %716, %713
  %718 = select i1 %715, i32 %717, i32 %712
  %719 = call ptr @skb_put(ptr noundef %305, i32 noundef 14) #13
  %720 = call ptr @ieee80211_ie_build_vht_cap(ptr noundef %719, ptr noundef nonnull %4, i32 noundef %718) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %721

721:                                              ; preds = %710, %657, %653
  %722 = load i32, ptr %334, align 4
  %723 = and i32 %722, 16
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %731

725:                                              ; preds = %721
  %726 = load i32, ptr %315, align 4
  %727 = icmp ne i32 %726, 1
  %728 = and i32 %722, 2048
  %729 = icmp eq i32 %728, 0
  %730 = select i1 %727, i1 true, i1 %729
  br i1 %730, label %733, label %731

731:                                              ; preds = %725, %721
  %732 = or i32 %722, 65536
  store i32 %732, ptr %334, align 4
  br label %733

733:                                              ; preds = %731, %725
  %734 = phi i32 [ %732, %731 ], [ %722, %725 ]
  %735 = and i32 %734, 65536
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %737, label %827

737:                                              ; preds = %733
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %738 = load volatile ptr, ptr %210, align 4
  %739 = icmp eq ptr %738, null
  %740 = load i1, ptr @ieee80211_add_he_ie.__already_done, align 1
  %741 = xor i1 %740, true
  %742 = select i1 %739, i1 %741, i1 false
  br i1 %742, label %743, label %744, !prof !8

743:                                              ; preds = %737
  store i1 true, ptr @ieee80211_add_he_ie.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 647, i32 noundef 9, ptr noundef null) #13
  br label %744

744:                                              ; preds = %743, %737
  br i1 %739, label %750, label %745

745:                                              ; preds = %744
  %746 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1
  %747 = load ptr, ptr %746, align 8
  %748 = call zeroext i1 @cfg80211_chandef_usable(ptr noundef %747, ptr noundef nonnull %738, i32 noundef 8192) #13
  %749 = xor i1 %748, true
  br label %750

750:                                              ; preds = %745, %744
  %751 = phi i1 [ true, %744 ], [ %749, %745 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %752 = load i32, ptr %192, align 8
  %753 = load i8, ptr %194, align 2, !range !14
  %754 = icmp eq i8 %753, 0
  br i1 %754, label %757, label %755

755:                                              ; preds = %750
  switch i32 %752, label %757 [
    i32 2, label %761
    i32 3, label %756
  ]

756:                                              ; preds = %755
  br label %761

757:                                              ; preds = %755, %750
  %758 = trunc i32 %752 to i8
  %759 = and i32 %752, 255
  %760 = icmp ugt i8 %758, 11
  br i1 %760, label %771, label %761, !prof !8

761:                                              ; preds = %757, %756, %755
  %762 = phi i32 [ %759, %757 ], [ 8, %755 ], [ 9, %756 ]
  %763 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %220, i32 0, i32 9
  %764 = load i16, ptr %763, align 4
  %765 = zext i16 %764 to i32
  %766 = icmp eq i16 %764, 0
  br i1 %766, label %827, label %767

767:                                              ; preds = %761
  %768 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %220, i32 0, i32 10
  %769 = load ptr, ptr %768, align 4
  %770 = shl nuw i32 1, %762
  br label %775

771:                                              ; preds = %757
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 510, i32 noundef 9, ptr noundef null) #13
  br label %827

772:                                              ; preds = %775
  %773 = add nuw nsw i32 %776, 1
  %774 = icmp eq i32 %773, %765
  br i1 %774, label %827, label %775

775:                                              ; preds = %772, %767
  %776 = phi i32 [ 0, %767 ], [ %773, %772 ]
  %777 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %769, i32 %776
  %778 = load i16, ptr %777, align 4
  %779 = zext i16 %778 to i32
  %780 = and i32 %770, %779
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %772, label %782

782:                                              ; preds = %775
  %783 = icmp eq ptr %777, null
  br i1 %783, label %827, label %784

784:                                              ; preds = %782
  %785 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %769, i32 %776, i32 1
  %786 = load i8, ptr %785, align 2, !range !14
  %787 = icmp eq i8 %786, 0
  %788 = icmp eq ptr %785, null
  %789 = or i1 %788, %787
  %790 = select i1 %789, i1 true, i1 %751
  br i1 %790, label %827, label %791

791:                                              ; preds = %784
  %792 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %769, i32 %776, i32 1, i32 1, i32 1
  %793 = load i8, ptr %792, align 1
  %794 = and i8 %793, 8
  %795 = icmp eq i8 %794, 0
  %796 = select i1 %795, i8 4, i8 8
  %797 = and i8 %793, 16
  %798 = icmp eq i8 %797, 0
  %799 = add nuw nsw i8 %796, 4
  %800 = select i1 %798, i8 %796, i8 %799
  %801 = add nuw nsw i8 %800, 20
  %802 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %769, i32 %776, i32 1, i32 1, i32 1, i32 6
  %803 = load i8, ptr %802, align 1
  %804 = icmp sgt i8 %803, -1
  br i1 %804, label %820, label %805

805:                                              ; preds = %791
  %806 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %769, i32 %776, i32 1, i32 3
  %807 = load i8, ptr %806, align 1
  %808 = zext i8 %807 to i32
  %809 = and i32 %808, 120
  %810 = call i32 @__sw_hweight8(i32 noundef %809) #13
  %811 = and i32 %808, 7
  %812 = mul nuw nsw i32 %811, 6
  %813 = add nuw nsw i32 %812, 6
  %814 = mul i32 %810, %813
  %815 = add i32 %814, 7
  %816 = and i32 %815, 255
  %817 = add nuw nsw i32 %816, 7
  %818 = lshr i32 %817, 3
  %819 = trunc i32 %818 to i8
  br label %820

820:                                              ; preds = %805, %791
  %821 = phi i8 [ %819, %805 ], [ 0, %791 ]
  %822 = add nuw nsw i8 %801, %821
  %823 = zext i8 %822 to i32
  %824 = call ptr @skb_put(ptr noundef %305, i32 noundef %823) #13
  %825 = getelementptr i8, ptr %824, i32 %823
  %826 = call ptr @ieee80211_ie_build_he_cap(ptr noundef %824, ptr noundef nonnull %785, ptr noundef %825) #13
  call void @ieee80211_ie_build_he_6ghz_cap(ptr noundef %0, ptr noundef %305) #13
  br label %827

827:                                              ; preds = %820, %784, %782, %772, %771, %761, %733
  %828 = load i32, ptr %202, align 4
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %836, label %830

830:                                              ; preds = %827
  %831 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 20
  %832 = call i32 @ieee80211_ie_split_vendor(ptr noundef %831, i32 noundef %828, i32 noundef %654) #13
  %833 = getelementptr i8, ptr %831, i32 %654
  %834 = sub i32 %832, %654
  %835 = call ptr @skb_put(ptr noundef %305, i32 noundef %834) #13
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %835, ptr align 1 %833, i32 %834, i1 false) #13
  br label %836

836:                                              ; preds = %830, %827
  %837 = phi i32 [ %832, %830 ], [ %654, %827 ]
  %838 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 9
  %839 = load i8, ptr %838, align 2, !range !14
  %840 = icmp eq i8 %839, 0
  br i1 %840, label %857, label %841

841:                                              ; preds = %836
  %842 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 10
  %843 = load i8, ptr %842, align 1, !range !14
  %844 = icmp eq i8 %843, 0
  br i1 %844, label %853, label %845

845:                                              ; preds = %841
  %846 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 15
  %847 = load i32, ptr %846, align 4
  %848 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 18
  %849 = load i32, ptr %848, align 4
  %850 = shl i32 %849, 5
  %851 = or i32 %850, %847
  %852 = trunc i32 %851 to i8
  br label %853

853:                                              ; preds = %845, %841
  %854 = phi i8 [ %852, %845 ], [ 0, %841 ]
  %855 = call ptr @skb_put(ptr noundef nonnull %305, i32 noundef 9) #13
  %856 = call ptr @ieee80211_add_wmm_info_ie(ptr noundef %855, i8 noundef zeroext %854) #13
  br label %857

857:                                              ; preds = %853, %836
  %858 = load i32, ptr %315, align 4
  %859 = icmp eq i32 %858, 4
  br i1 %859, label %860, label %862

860:                                              ; preds = %857
  call void @ieee80211_add_aid_request_ie(ptr noundef %0, ptr noundef nonnull %305) #13
  %861 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %220, i32 0, i32 7
  call void @ieee80211_add_s1g_capab_ie(ptr noundef %0, ptr noundef %861, ptr noundef nonnull %305) #13
  br label %862

862:                                              ; preds = %860, %857
  br i1 %292, label %873, label %863

863:                                              ; preds = %862
  %864 = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %278, i32 0, i32 4
  %865 = load ptr, ptr %864, align 4
  %866 = icmp eq ptr %865, null
  br i1 %866, label %873, label %867

867:                                              ; preds = %863
  %868 = getelementptr inbounds %struct.ieee80211_sband_iftype_data, ptr %278, i32 0, i32 4, i32 1
  %869 = load i32, ptr %868, align 4
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %873, label %871

871:                                              ; preds = %867
  %872 = call ptr @skb_put(ptr noundef %305, i32 noundef %869) #13
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %872, ptr nonnull align 1 %865, i32 %869, i1 false) #13
  br label %873

873:                                              ; preds = %871, %867, %863, %862
  %874 = load i32, ptr %202, align 4
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %881, label %876

876:                                              ; preds = %873
  %877 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %191, i32 0, i32 20
  %878 = getelementptr i8, ptr %877, i32 %837
  %879 = sub i32 %874, %837
  %880 = call ptr @skb_put(ptr noundef %305, i32 noundef %879) #13
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %880, ptr align 1 %878, i32 %879, i1 false) #13
  br label %881

881:                                              ; preds = %876, %873
  %882 = load i32, ptr %288, align 4
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %888, label %884

884:                                              ; preds = %881
  %885 = call i32 @fils_encrypt_assoc_req(ptr noundef nonnull %305, ptr noundef %191) #13
  %886 = icmp slt i32 %885, 0
  br i1 %886, label %887, label %888

887:                                              ; preds = %884
  call void @consume_skb(ptr noundef nonnull %305) #13
  br label %915

888:                                              ; preds = %884, %881
  %889 = load ptr, ptr %312, align 8
  %890 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 1
  %891 = load ptr, ptr %890, align 4
  call void @kfree(ptr noundef %891) #13
  %892 = ptrtoint ptr %889 to i32
  %893 = ptrtoint ptr %380 to i32
  %894 = sub i32 %892, %893
  %895 = call ptr @kmemdup(ptr noundef %380, i32 noundef %894, i32 noundef 2592) #13
  store ptr %895, ptr %890, align 4
  %896 = icmp eq ptr %895, null
  br i1 %896, label %897, label %898

897:                                              ; preds = %888
  call void @consume_skb(ptr noundef nonnull %305) #13
  br label %915

898:                                              ; preds = %888
  %899 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 1, i32 0, i32 0, i32 1
  store i32 %894, ptr %899, align 4
  call fastcc void @drv_mgd_prepare_tx(ptr noundef %190, ptr noundef %0, ptr noundef nonnull %7) #13
  %900 = getelementptr inbounds %struct.sk_buff, ptr %305, i32 0, i32 3
  %901 = load i32, ptr %900, align 8
  %902 = or i32 %901, 65536
  store i32 %902, ptr %900, align 8
  %903 = load volatile i32, ptr %548, align 4
  %904 = and i32 %903, 65536
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %908, label %906

906:                                              ; preds = %898
  %907 = or i32 %901, 1114113
  store i32 %907, ptr %900, align 8
  br label %908

908:                                              ; preds = %906, %898
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %909 = load volatile ptr, ptr %210, align 4
  %910 = icmp eq ptr %909, null
  br i1 %910, label %911, label %912, !prof !8

911:                                              ; preds = %908
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.69, i32 noundef 2200, i32 noundef 9, ptr noundef null) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  call void @kfree_skb_reason(ptr noundef %305, i32 noundef 0) #13
  br label %916

912:                                              ; preds = %908
  %913 = load ptr, ptr %909, align 4
  %914 = load i32, ptr %913, align 4
  call void @__ieee80211_tx_skb_tid_band(ptr noundef %0, ptr noundef %305, i32 noundef 7, i32 noundef %914) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %916

915:                                              ; preds = %897, %887, %296, %213
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %947

916:                                              ; preds = %912, %911
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %917 = getelementptr inbounds %struct.ieee80211_hw, ptr %175, i32 0, i32 4
  %918 = load volatile i32, ptr %917, align 4
  %919 = and i32 %918, 65536
  %920 = icmp eq i32 %919, 0
  %921 = load volatile i32, ptr @jiffies, align 64
  br i1 %920, label %922, label %934

922:                                              ; preds = %916
  %923 = add i32 %921, 20
  store i32 %923, ptr %161, align 4
  store i8 1, ptr %157, align 2
  %924 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %925 = load volatile ptr, ptr %924, align 4
  %926 = icmp eq ptr %925, null
  br i1 %926, label %932, label %927

927:                                              ; preds = %922
  %928 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %929 = load i32, ptr %928, align 8
  %930 = sub i32 %923, %929
  %931 = icmp slt i32 %930, 0
  br i1 %931, label %932, label %1017

932:                                              ; preds = %927, %922
  %933 = call i32 @mod_timer(ptr noundef %13, i32 noundef %923) #13
  br label %1017

934:                                              ; preds = %916
  %935 = add i32 %921, 50
  %936 = call i32 @round_jiffies_up(i32 noundef %935) #13
  store i32 %936, ptr %161, align 4
  store i8 1, ptr %157, align 2
  %937 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %938 = load volatile ptr, ptr %937, align 4
  %939 = icmp eq ptr %938, null
  br i1 %939, label %945, label %940

940:                                              ; preds = %934
  %941 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %942 = load i32, ptr %941, align 8
  %943 = sub i32 %936, %942
  %944 = icmp slt i32 %943, 0
  br i1 %944, label %945, label %1017

945:                                              ; preds = %940, %934
  %946 = call i32 @mod_timer(ptr noundef %13, i32 noundef %936) #13
  br label %1017

947:                                              ; preds = %915, %183, %170
  %948 = load ptr, ptr %153, align 4
  %949 = load ptr, ptr %948, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) @__const.ieee80211_sta_work.event.51, i32 16, i1 false)
  %950 = call i32 @del_timer_sync(ptr noundef %13) #13
  %951 = load ptr, ptr %948, align 4
  %952 = getelementptr inbounds %struct.cfg80211_bss, ptr %951, i32 0, i32 11
  %953 = call i32 @sta_info_destroy_addr(ptr noundef %0, ptr noundef %952) #13
  %954 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %954, i8 0, i32 6, i1 false) #13
  call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 128) #13
  %955 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  store i32 0, ptr %955, align 8
  %956 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 5
  store i8 0, ptr %956, align 8
  %957 = load ptr, ptr %11, align 4
  %958 = getelementptr inbounds %struct.ieee80211_local, ptr %957, i32 0, i32 66
  call void @mutex_lock(ptr noundef %958) #13
  call void @ieee80211_vif_release_channel(ptr noundef %0) #13
  %959 = load ptr, ptr %11, align 4
  %960 = getelementptr inbounds %struct.ieee80211_local, ptr %959, i32 0, i32 66
  call void @mutex_unlock(ptr noundef %960) #13
  call void @kfree(ptr noundef %948) #13
  store ptr null, ptr %153, align 8
  %961 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %962 = load ptr, ptr %961, align 8
  call void @cfg80211_assoc_timeout(ptr noundef %962, ptr noundef %949) #13
  %963 = load ptr, ptr %11, align 4
  %964 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_event_callback, i32 0, i32 1), align 4
  %965 = icmp sgt i32 %964, 0
  br i1 %965, label %966, label %979

966:                                              ; preds = %947
  %967 = tail call ptr @llvm.thread.pointer() #13
  %968 = getelementptr inbounds %struct.thread_info, ptr %967, i32 0, i32 2
  %969 = load i32, ptr %968, align 8
  %970 = lshr i32 %969, 5
  %971 = getelementptr i32, ptr @__cpu_online_mask, i32 %970
  %972 = load volatile i32, ptr %971, align 4
  %973 = and i32 %969, 31
  %974 = shl nuw i32 1, %973
  %975 = and i32 %974, %972
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %979, label %977

977:                                              ; preds = %966
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  %978 = call i32 @__traceiter_drv_event_callback(ptr noundef null, ptr noundef %963, ptr noundef %0, ptr noundef nonnull %10) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  br label %979

979:                                              ; preds = %977, %966, %947
  %980 = getelementptr inbounds %struct.ieee80211_local, ptr %963, i32 0, i32 8
  %981 = load ptr, ptr %980, align 4
  %982 = getelementptr inbounds %struct.ieee80211_ops, ptr %981, i32 0, i32 60
  %983 = load ptr, ptr %982, align 4
  %984 = icmp eq ptr %983, null
  br i1 %984, label %987, label %985

985:                                              ; preds = %979
  %986 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  call void %983(ptr noundef %963, ptr noundef %986, ptr noundef nonnull %10) #13
  br label %987

987:                                              ; preds = %985, %979
  %988 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %989 = icmp sgt i32 %988, 0
  br i1 %989, label %990, label %1003

990:                                              ; preds = %987
  %991 = tail call ptr @llvm.thread.pointer() #13
  %992 = getelementptr inbounds %struct.thread_info, ptr %991, i32 0, i32 2
  %993 = load i32, ptr %992, align 8
  %994 = lshr i32 %993, 5
  %995 = getelementptr i32, ptr @__cpu_online_mask, i32 %994
  %996 = load volatile i32, ptr %995, align 4
  %997 = and i32 %993, 31
  %998 = shl nuw i32 1, %997
  %999 = and i32 %998, %996
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1003, label %1001

1001:                                             ; preds = %990
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %1002 = call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %963) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  br label %1003

1003:                                             ; preds = %1001, %990, %987
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  br label %1017

1004:                                             ; preds = %160
  %1005 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %154, i32 0, i32 2
  %1006 = load i32, ptr %1005, align 4
  %1007 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %1008 = load volatile ptr, ptr %1007, align 4
  %1009 = icmp eq ptr %1008, null
  br i1 %1009, label %1015, label %1010

1010:                                             ; preds = %1004
  %1011 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %1012 = load i32, ptr %1011, align 8
  %1013 = sub i32 %1006, %1012
  %1014 = icmp slt i32 %1013, 0
  br i1 %1014, label %1015, label %1017

1015:                                             ; preds = %1010, %1004
  %1016 = call i32 @mod_timer(ptr noundef %13, i32 noundef %1006) #13
  br label %1017

1017:                                             ; preds = %1015, %1010, %1003, %945, %940, %932, %927, %156, %152
  %1018 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %1019 = load i32, ptr %1018, align 4
  %1020 = and i32 %1019, 2
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1072, label %1022

1022:                                             ; preds = %1017
  %1023 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %1024 = load ptr, ptr %1023, align 4
  %1025 = icmp eq ptr %1024, null
  br i1 %1025, label %1072, label %1026

1026:                                             ; preds = %1022
  %1027 = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 4
  %1028 = load volatile i32, ptr %1027, align 4
  %1029 = and i32 %1028, 65536
  %1030 = icmp eq i32 %1029, 0
  %1031 = load i32, ptr @max_probe_tries, align 4
  %1032 = load i32, ptr @max_nullfunc_tries, align 4
  %1033 = select i1 %1030, i32 %1031, i32 %1032
  %1034 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 0, i32 1
  %1035 = load i32, ptr %1034, align 4
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1037, label %1038

1037:                                             ; preds = %1026
  call fastcc void @ieee80211_reset_ap_probe(ptr noundef %0)
  br label %1072

1038:                                             ; preds = %1026
  %1039 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1
  %1040 = load i8, ptr %1039, align 4, !range !14
  %1041 = icmp eq i8 %1040, 0
  br i1 %1041, label %1046, label %1042

1042:                                             ; preds = %1038
  %1043 = icmp slt i32 %1035, %1033
  br i1 %1043, label %1044, label %1045

1044:                                             ; preds = %1042
  call fastcc void @ieee80211_mgd_probe_ap_send(ptr noundef %0)
  br label %1072

1045:                                             ; preds = %1042
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(26) %3, i8 0, i32 26, i1 false) #13, !annotation !25
  call fastcc void @ieee80211_set_disassoc(ptr noundef %0, i16 noundef zeroext 192, i16 noundef zeroext 4, i1 noundef zeroext false, ptr noundef nonnull %3) #13
  call fastcc void @ieee80211_report_disconnect(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 26, i1 noundef zeroext true, i16 noundef zeroext 4, i1 noundef zeroext false) #13
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %3) #13
  br label %1072

1046:                                             ; preds = %1038
  %1047 = load volatile i32, ptr @jiffies, align 64
  %1048 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21
  %1049 = load i32, ptr %1048, align 4
  %1050 = sub i32 %1047, %1049
  %1051 = icmp slt i32 %1050, 0
  br i1 %1051, label %1052, label %1063

1052:                                             ; preds = %1046
  %1053 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %1054 = load volatile ptr, ptr %1053, align 4
  %1055 = icmp eq ptr %1054, null
  br i1 %1055, label %1061, label %1056

1056:                                             ; preds = %1052
  %1057 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %1058 = load i32, ptr %1057, align 8
  %1059 = sub i32 %1049, %1058
  %1060 = icmp slt i32 %1059, 0
  br i1 %1060, label %1061, label %1072

1061:                                             ; preds = %1056, %1052
  %1062 = call i32 @mod_timer(ptr noundef %13, i32 noundef %1049) #13
  br label %1072

1063:                                             ; preds = %1046
  %1064 = load volatile i32, ptr %1027, align 4
  %1065 = and i32 %1064, 65536
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1068, label %1067

1067:                                             ; preds = %1063
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(26) %2, i8 0, i32 26, i1 false) #13, !annotation !25
  call fastcc void @ieee80211_set_disassoc(ptr noundef %0, i16 noundef zeroext 192, i16 noundef zeroext 4, i1 noundef zeroext false, ptr noundef nonnull %2) #13
  call fastcc void @ieee80211_report_disconnect(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 26, i1 noundef zeroext true, i16 noundef zeroext 4, i1 noundef zeroext false) #13
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %2) #13
  br label %1072

1068:                                             ; preds = %1063
  %1069 = icmp slt i32 %1035, %1033
  br i1 %1069, label %1070, label %1071

1070:                                             ; preds = %1068
  call fastcc void @ieee80211_mgd_probe_ap_send(ptr noundef %0)
  br label %1072

1071:                                             ; preds = %1068
  call void @ieee80211_sta_connection_lost(ptr noundef %0, ptr undef, i8 noundef zeroext 4, i1 noundef zeroext false)
  br label %1072

1072:                                             ; preds = %1071, %1070, %1067, %1061, %1056, %1045, %1044, %1037, %1022, %1017
  call void @mutex_unlock(ptr noundef %14) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_destroy_auth_data(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  br i1 %1, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %7 = tail call i32 @del_timer_sync(ptr noundef %6) #13
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.cfg80211_bss, ptr %8, i32 0, i32 11
  %10 = tail call i32 @sta_info_destroy_addr(ptr noundef %0, ptr noundef %9) #13
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %11, i8 0, i32 6, i1 false) #13
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 128) #13
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ieee80211_local, ptr %14, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %15) #13
  tail call void @ieee80211_vif_release_channel(ptr noundef %0) #13
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.ieee80211_local, ptr %16, i32 0, i32 66
  tail call void @mutex_unlock(ptr noundef %17) #13
  br label %18

18:                                               ; preds = %5, %2
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ieee80211_hw, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %4, align 4
  tail call void @cfg80211_put_bss(ptr noundef %22, ptr noundef %23) #13
  tail call void @kfree(ptr noundef %4) #13
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_auth(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.ieee80211_prep_tx_info, align 2
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %2, ptr noundef nonnull align 2 dereferenceable(6) @__const.ieee80211_auth.info, i32 6, i1 false)
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @ieee80211_auth.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %1
  store i1 true, ptr @ieee80211_auth.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4452, i32 noundef 9, ptr noundef null) #13
  br label %12

12:                                               ; preds = %11, %1
  br i1 %7, label %87, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %6, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = icmp sgt i32 %16, 3
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.cfg80211_bss, ptr %20, i32 0, i32 11
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %19, ptr noundef %21) #14
  %23 = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %6, align 4
  tail call void @cfg80211_unlink_bss(ptr noundef %24, ptr noundef %25) #13
  br label %87

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %6, i32 0, i32 3
  %28 = load i16, ptr %27, align 4
  %29 = icmp eq i16 %28, 3
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = tail call i32 @jiffies_to_msecs(i32 noundef 200) #13
  %32 = trunc i32 %31 to i16
  store i16 %32, ptr %2, align 2
  br label %33

33:                                               ; preds = %30, %26
  call fastcc void @drv_mgd_prepare_tx(ptr noundef %4, ptr noundef %0, ptr noundef nonnull %2)
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr inbounds %struct.cfg80211_bss, ptr %35, i32 0, i32 11
  %37 = load i32, ptr %14, align 4
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %34, ptr noundef %36, i32 noundef %37, i32 noundef 3) #14
  %39 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %6, i32 0, i32 4
  store i16 2, ptr %39, align 2
  %40 = load i16, ptr %27, align 4
  %41 = icmp eq i16 %40, 3
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %6, i32 0, i32 12
  %44 = load i16, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %6, i32 0, i32 13
  %46 = load i16, ptr %45, align 2
  store i16 %44, ptr %39, align 2
  br label %47

47:                                               ; preds = %42, %33
  %48 = phi i16 [ %44, %42 ], [ 1, %33 ]
  %49 = phi i16 [ %46, %42 ], [ 0, %33 ]
  %50 = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 4
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 65536
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 0, i32 1048577
  %55 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %6, i32 0, i32 15
  %56 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %6, i32 0, i32 14
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %6, align 4
  %59 = getelementptr inbounds %struct.cfg80211_bss, ptr %58, i32 0, i32 11
  call void @ieee80211_send_auth(ptr noundef %0, i16 noundef zeroext %48, i16 noundef zeroext %40, i16 noundef zeroext %49, ptr noundef %55, i32 noundef %57, ptr noundef %59, ptr noundef %59, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef %54) #13
  br i1 %53, label %60, label %68

60:                                               ; preds = %47
  %61 = load i16, ptr %27, align 4
  %62 = icmp eq i16 %61, 3
  %63 = load volatile i32, ptr @jiffies, align 64
  br i1 %62, label %64, label %66

64:                                               ; preds = %60
  %65 = add i32 %63, 200
  br label %72

66:                                               ; preds = %60
  %67 = add i32 %63, 20
  br label %72

68:                                               ; preds = %47
  %69 = load volatile i32, ptr @jiffies, align 64
  %70 = add i32 %69, 50
  %71 = call i32 @round_jiffies_up(i32 noundef %70) #13
  br label %72

72:                                               ; preds = %68, %66, %64
  %73 = phi i32 [ %65, %64 ], [ %67, %66 ], [ %71, %68 ]
  %74 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %6, i32 0, i32 1
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %6, i32 0, i32 11
  store i8 1, ptr %75, align 2
  %76 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %78 = load volatile ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %82 = load i32, ptr %81, align 8
  %83 = sub i32 %73, %82
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80, %72
  %86 = call i32 @mod_timer(ptr noundef %76, i32 noundef %73) #13
  br label %87

87:                                               ; preds = %85, %80, %18, %12
  %88 = phi i32 [ -110, %18 ], [ -22, %12 ], [ 0, %80 ], [ 0, %85 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #13
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_auth_timeout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drv_event_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #7 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_event_callback, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #13
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  %18 = tail call i32 @__traceiter_drv_event_callback(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  br label %19

19:                                               ; preds = %17, %6, %3
  %20 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ieee80211_ops, ptr %21, i32 0, i32 60
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  tail call void %23(ptr noundef %0, ptr noundef %26, ptr noundef %2) #13
  br label %27

27:                                               ; preds = %25, %19
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %42 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  br label %43

43:                                               ; preds = %41, %30, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_destroy_assoc_data(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23
  %5 = load ptr, ptr %4, align 8
  br i1 %1, label %24, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %8 = tail call i32 @del_timer_sync(ptr noundef %7) #13
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.cfg80211_bss, ptr %9, i32 0, i32 11
  %11 = tail call i32 @sta_info_destroy_addr(ptr noundef %0, ptr noundef %10) #13
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %12, i8 0, i32 6, i1 false) #13
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 128) #13
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  store i32 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 5
  store i8 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ieee80211_local, ptr %16, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %17) #13
  tail call void @ieee80211_vif_release_channel(ptr noundef %0) #13
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.ieee80211_local, ptr %18, i32 0, i32 66
  tail call void @mutex_unlock(ptr noundef %19) #13
  br i1 %2, label %20, label %24

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %5, align 4
  tail call void @cfg80211_abandon_assoc(ptr noundef %22, ptr noundef %23) #13
  br label %24

24:                                               ; preds = %20, %6, %3
  tail call void @kfree(ptr noundef %5) #13
  store ptr null, ptr %4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_assoc_timeout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_reset_ap_probe(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %1
  %10 = and i32 %6, -3
  store i32 %10, ptr %5, align 8
  %11 = load ptr, ptr %2, align 4
  tail call void @ieee80211_run_deferred_scan(ptr noundef %11) #13
  %12 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %12) #13
  tail call void @ieee80211_recalc_ps(ptr noundef %3)
  tail call void @mutex_unlock(ptr noundef %12) #13
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 4
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 131072
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 10
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load volatile i32, ptr %14, align 4
  %25 = and i32 %24, 131072
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 20
  %31 = load i32, ptr %30, align 8
  %32 = add i32 %31, %29
  %33 = tail call i32 @round_jiffies_up(i32 noundef %32) #13
  %34 = tail call i32 @mod_timer(ptr noundef %28, i32 noundef %33) #13
  br label %35

35:                                               ; preds = %27, %23, %18
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = add i32 %37, 3000
  %39 = tail call i32 @round_jiffies_up(i32 noundef %38) #13
  %40 = tail call i32 @mod_timer(ptr noundef %36, i32 noundef %39) #13
  br label %41

41:                                               ; preds = %35, %9, %1
  tail call void @mutex_unlock(ptr noundef %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_mgd_probe_ap_send(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cfg80211_bss, ptr %3, i32 0, i32 11
  %5 = load i32, ptr @max_probe_tries, align 4
  %6 = add i32 %5, -3
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 1)
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, 255
  %11 = icmp slt i32 %9, %10
  %12 = select i1 %11, ptr %4, ptr null
  %13 = add i32 %9, 1
  store i32 %13, ptr %8, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ieee80211_local, ptr %17, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %18) #13
  %19 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef nonnull %12) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !8

21:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2563, i32 noundef 9, ptr noundef null) #13
  br label %23

22:                                               ; preds = %15
  tail call void @ieee80211_check_fast_rx(ptr noundef nonnull %19) #13
  br label %23

23:                                               ; preds = %22, %21
  %24 = load ptr, ptr %16, align 4
  %25 = getelementptr inbounds %struct.ieee80211_local, ptr %24, i32 0, i32 46
  tail call void @mutex_unlock(ptr noundef %25) #13
  br label %26

26:                                               ; preds = %23, %1
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 4
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 65536
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1
  store i8 0, ptr %34, align 4
  tail call void @ieee80211_send_nullfunc(ptr noundef %28, ptr noundef %0, i1 noundef zeroext false)
  br label %65

35:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %36 = load ptr, ptr %2, align 4
  %37 = tail call ptr @ieee80211_bss_get_elem(ptr noundef %36, i8 noundef zeroext 0) #13
  %38 = icmp eq ptr %37, null
  %39 = load i1, ptr @ieee80211_mgd_probe_ap_send.__already_done, align 1
  %40 = xor i1 %39, true
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %43, !prof !8

42:                                               ; preds = %35
  store i1 true, ptr @ieee80211_mgd_probe_ap_send.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2576, i32 noundef 9, ptr noundef null) #13
  br label %43

43:                                               ; preds = %42, %35
  br i1 %38, label %48, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.element, ptr %37, i32 0, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  br label %48

48:                                               ; preds = %44, %43
  %49 = phi i32 [ %47, %44 ], [ 0, %43 ]
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  %51 = getelementptr inbounds %struct.element, ptr %37, i32 0, i32 2
  %52 = load ptr, ptr %2, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = tail call ptr @ieee80211_build_probe_req(ptr noundef %0, ptr noundef %50, ptr noundef %12, i32 noundef -1, ptr noundef %53, ptr noundef %51, i32 noundef %49, ptr noundef null, i32 noundef 0, i32 noundef 1) #13
  %55 = icmp eq ptr %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %58 = load volatile ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61, !prof !8

60:                                               ; preds = %56
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.69, i32 noundef 2200, i32 noundef 9, ptr noundef null) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  tail call void @kfree_skb_reason(ptr noundef nonnull %54, i32 noundef 0) #13
  br label %64

61:                                               ; preds = %56
  %62 = load ptr, ptr %58, align 4
  %63 = load i32, ptr %62, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %0, ptr noundef nonnull %54, i32 noundef 7, i32 noundef %63) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %64

64:                                               ; preds = %61, %60, %48
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %65

65:                                               ; preds = %64, %33
  %66 = load volatile i32, ptr @jiffies, align 64
  %67 = load i32, ptr @probe_wait_ms, align 4
  %68 = tail call i32 @__msecs_to_jiffies(i32 noundef %67) #13
  %69 = add i32 %68, %66
  %70 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %72 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %73 = load volatile ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %77 = load i32, ptr %76, align 8
  %78 = sub i32 %69, %77
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75, %65
  %81 = tail call i32 @mod_timer(ptr noundef %71, i32 noundef %69) #13
  br label %82

82:                                               ; preds = %80, %75
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_mgd_quiesce(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [26 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca %struct.cfg80211_deauth_request, align 4
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(26) %2, i8 0, i32 26, i1 false), !annotation !25
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 7
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %60, label %13

13:                                               ; preds = %9, %1
  %14 = phi ptr [ %7, %1 ], [ %11, %9 ]
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.cfg80211_bss, ptr %15, i32 0, i32 11
  call void @ieee80211_send_deauth_disassoc(ptr noundef %0, ptr noundef %16, ptr noundef %16, i16 noundef zeroext 192, i16 noundef zeroext 3, i1 noundef zeroext false, ptr noundef nonnull %2) #13
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %22 = call i32 @del_timer_sync(ptr noundef %21) #13
  %23 = load ptr, ptr %18, align 4
  %24 = getelementptr inbounds %struct.cfg80211_bss, ptr %23, i32 0, i32 11
  %25 = call i32 @sta_info_destroy_addr(ptr noundef %0, ptr noundef %24) #13
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %26, i8 0, i32 6, i1 false) #13
  call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 128) #13
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  store i32 0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 5
  store i8 0, ptr %28, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ieee80211_local, ptr %30, i32 0, i32 66
  call void @mutex_lock(ptr noundef %31) #13
  call void @ieee80211_vif_release_channel(ptr noundef %0) #13
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr inbounds %struct.ieee80211_local, ptr %32, i32 0, i32 66
  call void @mutex_unlock(ptr noundef %33) #13
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %35 = load ptr, ptr %34, align 8
  %36 = load ptr, ptr %18, align 4
  call void @cfg80211_abandon_assoc(ptr noundef %35, ptr noundef %36) #13
  call void @kfree(ptr noundef nonnull %18) #13
  store ptr null, ptr %17, align 8
  br label %37

37:                                               ; preds = %20, %13
  %38 = load ptr, ptr %6, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %42 = call i32 @del_timer_sync(ptr noundef %41) #13
  %43 = load ptr, ptr %38, align 4
  %44 = getelementptr inbounds %struct.cfg80211_bss, ptr %43, i32 0, i32 11
  %45 = call i32 @sta_info_destroy_addr(ptr noundef %0, ptr noundef %44) #13
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %46, i8 0, i32 6, i1 false) #13
  call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 128) #13
  %47 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  store i32 0, ptr %47, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.ieee80211_local, ptr %49, i32 0, i32 66
  call void @mutex_lock(ptr noundef %50) #13
  call void @ieee80211_vif_release_channel(ptr noundef %0) #13
  %51 = load ptr, ptr %48, align 4
  %52 = getelementptr inbounds %struct.ieee80211_local, ptr %51, i32 0, i32 66
  call void @mutex_unlock(ptr noundef %52) #13
  %53 = load ptr, ptr %48, align 4
  %54 = getelementptr inbounds %struct.ieee80211_hw, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8
  %56 = load ptr, ptr %38, align 4
  call void @cfg80211_put_bss(ptr noundef %55, ptr noundef %56) #13
  call void @kfree(ptr noundef nonnull %38) #13
  store ptr null, ptr %6, align 4
  br label %57

57:                                               ; preds = %40, %37
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %59 = load ptr, ptr %58, align 8
  call void @cfg80211_tx_mlme_mgmt(ptr noundef %59, ptr noundef nonnull %2, i32 noundef 26, i1 noundef zeroext false) #13
  br label %60

60:                                               ; preds = %57, %9
  %61 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %77, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.ieee80211_local, ptr %66, i32 0, i32 37
  %68 = load i8, ptr %67, align 1, !range !14
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %71 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 0, ptr %71, align 4, !annotation !25
  store ptr %3, ptr %4, align 4
  %72 = getelementptr inbounds %struct.cfg80211_deauth_request, ptr %4, i32 0, i32 1
  store ptr null, ptr %72, align 4
  %73 = getelementptr inbounds %struct.cfg80211_deauth_request, ptr %4, i32 0, i32 2
  store i32 0, ptr %73, align 4
  %74 = getelementptr inbounds %struct.cfg80211_deauth_request, ptr %4, i32 0, i32 3
  store i16 3, ptr %74, align 4
  %75 = getelementptr inbounds %struct.cfg80211_bss, ptr %62, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef align 4 dereferenceable(6) %75, i32 6, i1 false)
  %76 = call i32 @ieee80211_mgd_deauth(ptr noundef %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #13
  br label %77

77:                                               ; preds = %70, %64, %60
  call void @mutex_unlock(ptr noundef %5) #13
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_deauth_disassoc(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_tx_mlme_mgmt(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_mgd_deauth(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [26 x i8], align 1
  %4 = alloca %struct.ieee80211_prep_tx_info, align 2
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(26) %3, i8 0, i32 26, i1 false), !annotation !25
  %5 = getelementptr inbounds %struct.cfg80211_deauth_request, ptr %1, i32 0, i32 4
  %6 = load i8, ptr %5, align 2, !range !14
  %7 = icmp eq i8 %6, 0
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %4, ptr noundef nonnull align 2 dereferenceable(6) @__const.ieee80211_mgd_deauth.info, i32 6, i1 false)
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 22
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %55, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.cfg80211_bss, ptr %12, i32 0, i32 11
  %14 = load ptr, ptr %1, align 4
  %15 = load i32, ptr %13, align 4
  %16 = load i32, ptr %14, align 4
  %17 = xor i32 %16, %15
  %18 = getelementptr %struct.cfg80211_bss, ptr %12, i32 0, i32 11, i32 4
  %19 = load i16, ptr %18, align 2
  %20 = getelementptr i8, ptr %14, i32 4
  %21 = load i16, ptr %20, align 2
  %22 = xor i16 %21, %19
  %23 = zext i16 %22 to i32
  %24 = or i32 %17, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %28 = getelementptr inbounds %struct.cfg80211_deauth_request, ptr %1, i32 0, i32 3
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = tail call ptr @ieee80211_get_reason_code_string(i16 noundef zeroext %29)
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %27, ptr noundef %14, i32 noundef %30, ptr noundef nonnull %31) #14
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  call fastcc void @drv_mgd_prepare_tx(ptr noundef %34, ptr noundef %0, ptr noundef nonnull %4)
  %35 = load ptr, ptr %1, align 4
  %36 = load i16, ptr %28, align 4
  call void @ieee80211_send_deauth_disassoc(ptr noundef %0, ptr noundef %35, ptr noundef %35, i16 noundef zeroext 192, i16 noundef zeroext %36, i1 noundef zeroext %7, ptr noundef nonnull %3) #13
  %37 = load ptr, ptr %8, align 4
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %39 = call i32 @del_timer_sync(ptr noundef %38) #13
  %40 = load ptr, ptr %37, align 4
  %41 = getelementptr inbounds %struct.cfg80211_bss, ptr %40, i32 0, i32 11
  %42 = call i32 @sta_info_destroy_addr(ptr noundef %0, ptr noundef %41) #13
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %43, i8 0, i32 6, i1 false) #13
  call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 128) #13
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  store i32 0, ptr %44, align 8
  %45 = load ptr, ptr %33, align 4
  %46 = getelementptr inbounds %struct.ieee80211_local, ptr %45, i32 0, i32 66
  call void @mutex_lock(ptr noundef %46) #13
  call void @ieee80211_vif_release_channel(ptr noundef %0) #13
  %47 = load ptr, ptr %33, align 4
  %48 = getelementptr inbounds %struct.ieee80211_local, ptr %47, i32 0, i32 66
  call void @mutex_unlock(ptr noundef %48) #13
  %49 = load ptr, ptr %33, align 4
  %50 = getelementptr inbounds %struct.ieee80211_hw, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = load ptr, ptr %37, align 4
  call void @cfg80211_put_bss(ptr noundef %51, ptr noundef %52) #13
  call void @kfree(ptr noundef %37) #13
  store ptr null, ptr %8, align 4
  %53 = load i16, ptr %28, align 4
  call fastcc void @ieee80211_report_disconnect(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 26, i1 noundef zeroext true, i16 noundef zeroext %53, i1 noundef zeroext false)
  %54 = load ptr, ptr %33, align 4
  call fastcc void @drv_mgd_complete_tx(ptr noundef %54, ptr noundef %0, ptr noundef nonnull %4)
  br label %131

55:                                               ; preds = %11, %2
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %102, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %57, align 4
  %61 = getelementptr inbounds %struct.cfg80211_bss, ptr %60, i32 0, i32 11
  %62 = load ptr, ptr %1, align 4
  %63 = load i32, ptr %61, align 4
  %64 = load i32, ptr %62, align 4
  %65 = xor i32 %64, %63
  %66 = getelementptr %struct.cfg80211_bss, ptr %60, i32 0, i32 11, i32 4
  %67 = load i16, ptr %66, align 2
  %68 = getelementptr i8, ptr %62, i32 4
  %69 = load i16, ptr %68, align 2
  %70 = xor i16 %69, %67
  %71 = zext i16 %70 to i32
  %72 = or i32 %65, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %76 = getelementptr inbounds %struct.cfg80211_deauth_request, ptr %1, i32 0, i32 3
  %77 = load i16, ptr %76, align 4
  %78 = zext i16 %77 to i32
  %79 = tail call ptr @ieee80211_get_reason_code_string(i16 noundef zeroext %77)
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %75, ptr noundef %62, i32 noundef %78, ptr noundef nonnull %79) #14
  %81 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %82 = load ptr, ptr %81, align 4
  call fastcc void @drv_mgd_prepare_tx(ptr noundef %82, ptr noundef %0, ptr noundef nonnull %4)
  %83 = load ptr, ptr %1, align 4
  %84 = load i16, ptr %76, align 4
  call void @ieee80211_send_deauth_disassoc(ptr noundef %0, ptr noundef %83, ptr noundef %83, i16 noundef zeroext 192, i16 noundef zeroext %84, i1 noundef zeroext %7, ptr noundef nonnull %3) #13
  %85 = load ptr, ptr %56, align 8
  %86 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %87 = call i32 @del_timer_sync(ptr noundef %86) #13
  %88 = load ptr, ptr %85, align 4
  %89 = getelementptr inbounds %struct.cfg80211_bss, ptr %88, i32 0, i32 11
  %90 = call i32 @sta_info_destroy_addr(ptr noundef %0, ptr noundef %89) #13
  %91 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %91, i8 0, i32 6, i1 false) #13
  call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 128) #13
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  store i32 0, ptr %92, align 8
  %93 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 5
  store i8 0, ptr %93, align 8
  %94 = load ptr, ptr %81, align 4
  %95 = getelementptr inbounds %struct.ieee80211_local, ptr %94, i32 0, i32 66
  call void @mutex_lock(ptr noundef %95) #13
  call void @ieee80211_vif_release_channel(ptr noundef %0) #13
  %96 = load ptr, ptr %81, align 4
  %97 = getelementptr inbounds %struct.ieee80211_local, ptr %96, i32 0, i32 66
  call void @mutex_unlock(ptr noundef %97) #13
  %98 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %99 = load ptr, ptr %98, align 8
  %100 = load ptr, ptr %85, align 4
  call void @cfg80211_abandon_assoc(ptr noundef %99, ptr noundef %100) #13
  call void @kfree(ptr noundef %85) #13
  store ptr null, ptr %56, align 8
  %101 = load i16, ptr %76, align 4
  call fastcc void @ieee80211_report_disconnect(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 26, i1 noundef zeroext true, i16 noundef zeroext %101, i1 noundef zeroext false)
  br label %131

102:                                              ; preds = %59, %55
  %103 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %131, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.cfg80211_bss, ptr %104, i32 0, i32 11
  %108 = load ptr, ptr %1, align 4
  %109 = load i32, ptr %107, align 4
  %110 = load i32, ptr %108, align 4
  %111 = xor i32 %110, %109
  %112 = getelementptr %struct.cfg80211_bss, ptr %104, i32 0, i32 11, i32 4
  %113 = load i16, ptr %112, align 2
  %114 = getelementptr i8, ptr %108, i32 4
  %115 = load i16, ptr %114, align 2
  %116 = xor i16 %115, %113
  %117 = zext i16 %116 to i32
  %118 = or i32 %111, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %106
  %121 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %122 = getelementptr inbounds %struct.cfg80211_deauth_request, ptr %1, i32 0, i32 3
  %123 = load i16, ptr %122, align 4
  %124 = zext i16 %123 to i32
  %125 = tail call ptr @ieee80211_get_reason_code_string(i16 noundef zeroext %123)
  %126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %121, ptr noundef %108, i32 noundef %124, ptr noundef nonnull %125) #14
  %127 = load i16, ptr %122, align 4
  call fastcc void @ieee80211_set_disassoc(ptr noundef %0, i16 noundef zeroext 192, i16 noundef zeroext %127, i1 noundef zeroext %7, ptr noundef nonnull %3)
  %128 = load i16, ptr %122, align 4
  call fastcc void @ieee80211_report_disconnect(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 26, i1 noundef zeroext true, i16 noundef zeroext %128, i1 noundef zeroext false)
  %129 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %130 = load ptr, ptr %129, align 4
  call fastcc void @drv_mgd_complete_tx(ptr noundef %130, ptr noundef %0, ptr noundef nonnull %4)
  br label %131

131:                                              ; preds = %120, %106, %102, %74, %26
  %132 = phi i32 [ 0, %26 ], [ 0, %74 ], [ 0, %120 ], [ -107, %106 ], [ -107, %102 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %3) #13
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_restart(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [26 x i8], align 1
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 7
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %3) #13
  br label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = and i32 %10, -17
  store i32 %14, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(26) %2, i8 0, i32 26, i1 false) #13, !annotation !25
  call fastcc void @ieee80211_set_disassoc(ptr noundef %0, i16 noundef zeroext 192, i16 noundef zeroext 1, i1 noundef zeroext true, ptr noundef nonnull %2) #13
  call fastcc void @ieee80211_report_disconnect(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 26, i1 noundef zeroext true, i16 noundef zeroext 1, i1 noundef zeroext false) #13
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %2) #13
  call void @mutex_unlock(ptr noundef %3) #13
  br label %16

15:                                               ; preds = %8
  tail call void @mutex_unlock(ptr noundef %3) #13
  br label %16

16:                                               ; preds = %15, %13, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_setup_sdata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 11
  store i32 -32, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 15
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 19
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 23
  store ptr @ieee80211_sta_monitor_work, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 27
  store i32 -32, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 31
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 7
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 8
  store ptr @ieee80211_chswitch_work, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 12
  store i32 -32, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 13
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 14
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 15
  store ptr @ieee80211_beacon_connection_loss_work, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 16
  store i32 -32, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 17
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 18
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 19
  store ptr @ieee80211_csa_connection_drop_work, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24
  store i32 -32, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 2
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 4
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 8
  store ptr @ieee80211_request_smps_mgd_work, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 52
  store i32 -32, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 56
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 60
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 64
  store ptr @ieee80211_tdls_peer_del_work, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 68
  tail call void @init_timer_key(ptr noundef %27, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #13
  tail call void @init_timer_key(ptr noundef %2, ptr noundef nonnull @ieee80211_sta_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %28, ptr noundef nonnull @ieee80211_sta_bcn_mon_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %29, ptr noundef nonnull @ieee80211_sta_conn_mon_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %30, ptr noundef nonnull @ieee80211_chswitch_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 208
  store i32 -32, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 212
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 216
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 220
  store ptr @ieee80211_sta_handle_tspec_ac_params_wk, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 224
  tail call void @init_timer_key(ptr noundef %35, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #13
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 30
  %38 = load i8, ptr %37, align 2, !range !14
  %39 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %2, i32 0, i32 17
  store i8 %38, ptr %39, align 2
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ieee80211_hw, ptr %41, i32 0, i32 25
  %43 = load i8, ptr %42, align 8
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 15
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.ieee80211_hw, ptr %41, i32 0, i32 26
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 18
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %2, i32 0, i32 38
  store i16 -1, ptr %50, align 2
  %51 = getelementptr inbounds %struct.ieee80211_hw, ptr %41, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.wiphy, ptr %52, i32 0, i32 13
  %54 = load i32, ptr %53, align 32
  %55 = lshr i32 %54, 25
  %56 = and i32 %55, 1
  %57 = xor i32 %56, 1
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 4
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 104
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 100
  store ptr null, ptr %60, align 4
  %61 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 96
  store ptr null, ptr %61, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_sta_monitor_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1488
  tail call fastcc void @ieee80211_mgd_probe_ap(ptr noundef %2, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_chswitch_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1504
  %3 = getelementptr i8, ptr %0, i32 -1148
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -1140
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %111, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -1460
  tail call void @mutex_lock(ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %11) #13
  %12 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr i8, ptr %0, i32 64
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %110, label %16

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %0, i32 1567
  %18 = load i8, ptr %17, align 1, !range !14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %110, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %0, i32 -488
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %0, i32 -455
  %26 = load i8, ptr %25, align 1, !range !14
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %110

28:                                               ; preds = %24
  %29 = tail call i32 @ieee80211_vif_use_reserved_context(ptr noundef %2) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %110, label %31

31:                                               ; preds = %28
  %32 = getelementptr i8, ptr %0, i32 -1136
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %32, i32 noundef %29) #14
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr i8, ptr %0, i32 32
  tail call void @ieee80211_queue_work(ptr noundef %34, ptr noundef %35) #13
  br label %110

36:                                               ; preds = %20
  %37 = getelementptr i8, ptr %0, i32 868
  %38 = getelementptr i8, ptr %0, i32 -548
  %39 = load ptr, ptr %37, align 4
  %40 = load ptr, ptr %38, align 4
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %36
  %43 = getelementptr i8, ptr %0, i32 872
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %0, i32 -544
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = getelementptr i8, ptr %0, i32 876
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i8, ptr %0, i32 -540
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = getelementptr i8, ptr %0, i32 892
  %56 = load i16, ptr %55, align 4
  %57 = getelementptr i8, ptr %0, i32 -524
  %58 = load i16, ptr %57, align 4
  %59 = icmp eq i16 %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = getelementptr i8, ptr %0, i32 880
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr i8, ptr %0, i32 -536
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %60, %54, %48, %42, %36
  %67 = getelementptr i8, ptr %0, i32 -1136
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %67) #14
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr i8, ptr %0, i32 32
  tail call void @ieee80211_queue_work(ptr noundef %69, ptr noundef %70) #13
  br label %110

71:                                               ; preds = %60
  %72 = getelementptr i8, ptr %0, i32 116
  store i8 1, ptr %72, align 4
  %73 = getelementptr i8, ptr %0, i32 1584
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %71
  %78 = load ptr, ptr %3, align 4
  %79 = getelementptr inbounds %struct.ieee80211_hw, ptr %78, i32 0, i32 4
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %80, 131072
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = getelementptr i8, ptr %0, i32 -56
  %85 = load volatile i32, ptr @jiffies, align 64
  %86 = getelementptr i8, ptr %0, i32 48
  %87 = load i32, ptr %86, align 8
  %88 = add i32 %87, %85
  %89 = tail call i32 @round_jiffies_up(i32 noundef %88) #13
  %90 = tail call i32 @mod_timer(ptr noundef %84, i32 noundef %89) #13
  %91 = load ptr, ptr %13, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %110, label %93, !prof !8

93:                                               ; preds = %83, %77, %71
  %94 = getelementptr i8, ptr %0, i32 56
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  store i32 0, ptr %94, align 4
  br label %98

98:                                               ; preds = %97, %93
  %99 = load ptr, ptr %3, align 4
  %100 = getelementptr inbounds %struct.ieee80211_hw, ptr %99, i32 0, i32 4
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %101, 131072
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = getelementptr i8, ptr %0, i32 -76
  %106 = load volatile i32, ptr @jiffies, align 64
  %107 = add i32 %106, 3000
  %108 = tail call i32 @round_jiffies_up(i32 noundef %107) #13
  %109 = tail call i32 @mod_timer(ptr noundef %105, i32 noundef %108) #13
  br label %110

110:                                              ; preds = %104, %98, %83, %66, %31, %28, %24, %16, %9
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %11) #13
  tail call void @mutex_unlock(ptr noundef %10) #13
  br label %111

111:                                              ; preds = %110, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_beacon_connection_loss_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1520
  %3 = getelementptr i8, ptr %0, i32 48
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 144
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  br label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr i8, ptr %0, i32 45
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %0, i32 -1152
  %17 = getelementptr i8, ptr %0, i32 60
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %16, ptr noundef %17) #14
  tail call fastcc void @__ieee80211_disconnect(ptr noundef %2)
  %19 = load i8, ptr %11, align 1
  %20 = and i8 %19, -2
  store i8 %20, ptr %11, align 1
  br label %31

21:                                               ; preds = %10
  %22 = and i8 %12, 2
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %0, i32 -1152
  %26 = getelementptr i8, ptr %0, i32 60
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %25, ptr noundef %26) #14
  tail call fastcc void @__ieee80211_disconnect(ptr noundef %2)
  %28 = load i8, ptr %11, align 1
  %29 = and i8 %28, -3
  store i8 %29, ptr %11, align 1
  br label %31

30:                                               ; preds = %21
  tail call fastcc void @ieee80211_mgd_probe_ap(ptr noundef %2, i1 noundef zeroext true)
  br label %31

31:                                               ; preds = %30, %24, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_csa_connection_drop_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1536
  tail call fastcc void @__ieee80211_disconnect(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_request_smps_mgd_work(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tdls_peer_del_work(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_sta_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1052
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -340
  tail call void @ieee80211_queue_work(ptr noundef %3, ptr noundef %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_sta_bcn_mon_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1623
  %3 = load i8, ptr %2, align 1, !range !14
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 172
  %7 = load i8, ptr %6, align 4, !range !14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr i8, ptr %0, i32 1640
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %0, i32 117
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, -2
  store i8 %17, ptr %15, align 1
  %18 = getelementptr i8, ptr %0, i32 -1092
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %0, i32 72
  tail call void @ieee80211_queue_work(ptr noundef %19, ptr noundef %20) #13
  br label %21

21:                                               ; preds = %14, %9, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_sta_conn_mon_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1428
  %3 = getelementptr i8, ptr %0, i32 -1072
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 1643
  %6 = load i8, ptr %5, align 1, !range !14
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 192
  %10 = load i8, ptr %9, align 4, !range !14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr i8, ptr %0, i32 152
  %14 = tail call ptr @sta_info_get(ptr noundef %2, ptr noundef %13) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sta_info, ptr %14, i32 0, i32 34, i32 7
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.sta_info, ptr %14, i32 0, i32 31, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 %18, %20
  %22 = icmp slt i32 %21, 0
  %23 = select i1 %22, i32 %20, i32 %18
  %24 = add i32 %23, 3000
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = sub i32 %25, %24
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = tail call i32 @round_jiffies_up(i32 noundef %24) #13
  %30 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %29) #13
  br label %33

31:                                               ; preds = %16
  %32 = getelementptr i8, ptr %0, i32 60
  tail call void @ieee80211_queue_work(ptr noundef %4, ptr noundef %32) #13
  br label %33

33:                                               ; preds = %31, %28, %12, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_chswitch_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1112
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 36
  tail call void @ieee80211_queue_work(ptr noundef %3, ptr noundef %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_sta_handle_tspec_ac_params_wk(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1952
  tail call void @ieee80211_sta_handle_tspec_ac_params(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_mlme_notify_scan_completed(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %3 = load volatile ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %31, label %5

5:                                                ; preds = %28, %1
  %6 = phi ptr [ %29, %28 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 9
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 58
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 7
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 57, i32 0, i32 24, i32 9
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, -3
  store i32 %19, ptr %17, align 8
  %20 = load ptr, ptr %16, align 4
  tail call void @ieee80211_run_deferred_scan(ptr noundef %20) #13
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 4
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 131072
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 57, i32 0, i32 6, i32 11
  tail call void @ieee80211_queue_work(ptr noundef %21, ptr noundef %27) #13
  br label %28

28:                                               ; preds = %26, %15, %11, %5
  %29 = load volatile ptr, ptr %6, align 8
  %30 = icmp eq ptr %29, %2
  br i1 %30, label %31, label %5

31:                                               ; preds = %28, %1
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_mgd_auth(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [26 x i8], align 1
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfg80211_auth_request, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 8
  br i1 %8, label %9, label %155

9:                                                ; preds = %2
  %10 = getelementptr inbounds [8 x i16], ptr @switch.table.ieee80211_mgd_auth, i32 0, i32 %7
  %11 = load i16, ptr %10, align 2
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %155

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.cfg80211_auth_request, ptr %1, i32 0, i32 8
  %17 = getelementptr inbounds %struct.cfg80211_auth_request, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %16, align 4
  %19 = add i32 %18, 44
  %20 = load i32, ptr %17, align 4
  %21 = add i32 %19, %20
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %155, label %24

24:                                               ; preds = %15
  %25 = load ptr, ptr %1, align 4
  store ptr %25, ptr %22, align 64
  %26 = load i32, ptr %16, align 4
  %27 = icmp ugt i32 %26, 3
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load i32, ptr %6, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.cfg80211_auth_request, ptr %1, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = load i16, ptr %33, align 2
  %35 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %22, i32 0, i32 12
  store i16 %34, ptr %35, align 4
  %36 = getelementptr i16, ptr %33, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %22, i32 0, i32 13
  store i16 %37, ptr %38, align 2
  %39 = load i32, ptr %16, align 4
  br label %40

40:                                               ; preds = %31, %28
  %41 = phi i32 [ %39, %31 ], [ %26, %28 ]
  %42 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %22, i32 0, i32 15
  %43 = getelementptr inbounds %struct.cfg80211_auth_request, ptr %1, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 4
  %46 = add i32 %41, -4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %42, ptr align 1 %45, i32 %46, i1 false)
  %47 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %22, i32 0, i32 14
  %48 = load i32, ptr %47, align 8
  %49 = add i32 %48, %46
  store i32 %49, ptr %47, align 8
  br label %50

50:                                               ; preds = %40, %24
  %51 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 22
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %1, align 4
  %56 = load ptr, ptr %52, align 4
  %57 = icmp eq ptr %55, %56
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i1 [ false, %50 ], [ %57, %54 ]
  %60 = getelementptr inbounds %struct.cfg80211_auth_request, ptr %1, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = load i32, ptr %17, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %22, i32 0, i32 14
  %68 = load i32, ptr %67, align 8
  %69 = getelementptr %struct.ieee80211_mgd_auth_data, ptr %22, i32 0, i32 15, i32 %68
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %69, ptr nonnull align 1 %61, i32 %64, i1 false)
  %70 = load i32, ptr %17, align 4
  %71 = load i32, ptr %67, align 8
  %72 = add i32 %71, %70
  store i32 %72, ptr %67, align 8
  br label %73

73:                                               ; preds = %66, %63, %58
  %74 = getelementptr inbounds %struct.cfg80211_auth_request, ptr %1, i32 0, i32 4
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %90, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.cfg80211_auth_request, ptr %1, i32 0, i32 5
  %79 = load i8, ptr %78, align 4
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %22, i32 0, i32 6
  store i8 %79, ptr %82, align 1
  %83 = getelementptr inbounds %struct.cfg80211_auth_request, ptr %1, i32 0, i32 6
  %84 = load i8, ptr %83, align 1
  %85 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %22, i32 0, i32 7
  store i8 %84, ptr %85, align 2
  %86 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %22, i32 0, i32 5
  %87 = load ptr, ptr %74, align 4
  %88 = load i8, ptr %78, align 4
  %89 = zext i8 %88 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 16 %86, ptr align 1 %87, i32 %89, i1 false)
  br label %90

90:                                               ; preds = %81, %77, %73
  %91 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %22, i32 0, i32 3
  store i16 %11, ptr %91, align 4
  %92 = load ptr, ptr %51, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %90
  br i1 %59, label %95, label %102

95:                                               ; preds = %94
  %96 = load i32, ptr %6, align 4
  %97 = icmp eq i32 %96, 4
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %92, i32 0, i32 10
  %100 = load i8, ptr %99, align 1, !range !14
  %101 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %22, i32 0, i32 10
  store i8 %100, ptr %101, align 1
  br label %102

102:                                              ; preds = %98, %95, %94
  tail call fastcc void @ieee80211_destroy_auth_data(ptr noundef %0, i1 noundef zeroext %59)
  br label %103

103:                                              ; preds = %102, %90
  store ptr %22, ptr %51, align 4
  br i1 %59, label %104, label %119

104:                                              ; preds = %103
  %105 = load i32, ptr %6, align 4
  %106 = icmp eq i32 %105, 4
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %22, i32 0, i32 10
  %109 = load i8, ptr %108, align 1, !range !14
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %22, i32 0, i32 12
  %113 = load i16, ptr %112, align 4
  %114 = icmp eq i16 %113, 2
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load ptr, ptr %1, align 4
  %117 = getelementptr inbounds %struct.cfg80211_bss, ptr %116, i32 0, i32 11
  %118 = tail call fastcc zeroext i1 @ieee80211_mark_sta_auth(ptr noundef %0, ptr noundef %117)
  br label %119

119:                                              ; preds = %115, %111, %107, %104, %103
  %120 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %129, label %123

123:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(26) %3, i8 0, i32 26, i1 false), !annotation !25
  %124 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %125 = getelementptr inbounds %struct.cfg80211_bss, ptr %121, i32 0, i32 11
  %126 = load ptr, ptr %1, align 4
  %127 = getelementptr inbounds %struct.cfg80211_bss, ptr %126, i32 0, i32 11
  %128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %124, ptr noundef %125, ptr noundef %127) #14
  call fastcc void @ieee80211_set_disassoc(ptr noundef %0, i16 noundef zeroext 192, i16 noundef zeroext 1, i1 noundef zeroext false, ptr noundef nonnull %3)
  call fastcc void @ieee80211_report_disconnect(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 26, i1 noundef zeroext true, i16 noundef zeroext 1, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %3) #13
  br label %129

129:                                              ; preds = %123, %119
  %130 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %131 = load ptr, ptr %1, align 4
  %132 = getelementptr inbounds %struct.cfg80211_bss, ptr %131, i32 0, i32 11
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %130, ptr noundef %132) #14
  %134 = load ptr, ptr %1, align 4
  %135 = call fastcc i32 @ieee80211_prep_connection(ptr noundef %0, ptr noundef %134, i1 noundef zeroext %59, i1 noundef zeroext false)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %129
  %138 = call fastcc i32 @ieee80211_auth(ptr noundef %0)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %1, align 4
  %142 = getelementptr inbounds %struct.cfg80211_bss, ptr %141, i32 0, i32 11
  %143 = call i32 @sta_info_destroy_addr(ptr noundef %0, ptr noundef %142) #13
  br label %148

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %146 = load ptr, ptr %145, align 8
  %147 = load ptr, ptr %22, align 64
  call void @cfg80211_ref_bss(ptr noundef %146, ptr noundef %147) #13
  br label %155

148:                                              ; preds = %140, %129
  %149 = phi i32 [ %135, %129 ], [ %138, %140 ]
  %150 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %150, i8 0, i32 6, i1 false) #13
  call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 128) #13
  store ptr null, ptr %51, align 4
  %151 = load ptr, ptr %4, align 4
  %152 = getelementptr inbounds %struct.ieee80211_local, ptr %151, i32 0, i32 66
  call void @mutex_lock(ptr noundef %152) #13
  call void @ieee80211_vif_release_channel(ptr noundef %0) #13
  %153 = load ptr, ptr %4, align 4
  %154 = getelementptr inbounds %struct.ieee80211_local, ptr %153, i32 0, i32 66
  call void @mutex_unlock(ptr noundef %154) #13
  call void @kfree(ptr noundef nonnull %22) #13
  br label %155

155:                                              ; preds = %148, %144, %15, %9, %2
  %156 = phi i32 [ %149, %148 ], [ 0, %144 ], [ -95, %2 ], [ -16, %9 ], [ -12, %15 ]
  ret i32 %156
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_mark_sta_auth(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %6, i32 0, i32 8
  store i8 1, ptr %7, align 1
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = add i32 %8, 500
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %10, i32 0, i32 1
  store i32 %9, ptr %11, align 4
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %12, i32 0, i32 11
  store i8 1, ptr %13, align 2
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = sub i32 %16, %23
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %2
  %27 = tail call i32 @mod_timer(ptr noundef %17, i32 noundef %16) #13
  br label %28

28:                                               ; preds = %26, %21
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ieee80211_local, ptr %30, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %31) #13
  %32 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef %1) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i1, ptr @ieee80211_mark_sta_auth.__already_done, align 1
  br i1 %35, label %42, label %36, !prof !11

36:                                               ; preds = %34
  store i1 true, ptr @ieee80211_mark_sta_auth.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2949, i32 noundef 9, ptr noundef nonnull @.str.134, ptr noundef %3, ptr noundef %1) #13
  br label %42

37:                                               ; preds = %28
  %38 = tail call i32 @sta_info_move_state(ptr noundef nonnull %32, i32 noundef 2) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %3, ptr noundef %1) #14
  br label %42

42:                                               ; preds = %40, %37, %36, %34
  %43 = phi i1 [ false, %40 ], [ true, %37 ], [ false, %36 ], [ false, %34 ]
  %44 = load ptr, ptr %29, align 4
  %45 = getelementptr inbounds %struct.ieee80211_local, ptr %44, i32 0, i32 46
  tail call void @mutex_unlock(ptr noundef %45) #13
  ret i1 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_prep_connection(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.cfg80211_chan_def, align 4
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 17
  %9 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %1, align 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.wiphy, ptr %10, i32 0, i32 53, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 22
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5269, i32 noundef 9, ptr noundef null) #13
  br label %752

23:                                               ; preds = %18, %4
  %24 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 36
  %25 = load i8, ptr %24, align 2, !range !14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %752

27:                                               ; preds = %23
  br i1 %2, label %28, label %32

28:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %29 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 11
  %30 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef %29) #13
  %31 = icmp eq ptr %30, null
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br i1 %31, label %32, label %212

32:                                               ; preds = %28, %27
  %33 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 11
  %34 = tail call ptr @sta_info_alloc(ptr noundef %0, ptr noundef %33, i32 noundef 3264) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %752, label %36

36:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %38, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 7
  %44 = zext i1 %43 to i32
  %45 = icmp eq i32 %42, 6
  %46 = select i1 %45, i32 2, i32 %44
  br label %47

47:                                               ; preds = %40, %36
  %48 = phi i32 [ %46, %40 ], [ 0, %36 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %49 = load ptr, ptr %1, align 4
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  tail call void @ieee80211_s1g_sta_rate_init(ptr noundef nonnull %34) #13
  br label %146

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.ieee80211_bss, ptr %8, i32 0, i32 4
  %55 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 1, i32 11
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %113, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %14, i32 0, i32 4
  %60 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %14, i32 0, i32 1
  %61 = shl nuw nsw i32 5, %48
  %62 = add nsw i32 %61, -1
  br label %63

63:                                               ; preds = %104, %58
  %64 = phi i32 [ 0, %58 ], [ %105, %104 ]
  %65 = phi i32 [ 0, %58 ], [ %106, %104 ]
  %66 = phi i8 [ 0, %58 ], [ %79, %104 ]
  %67 = phi i32 [ 2147483647, %58 ], [ %107, %104 ]
  %68 = phi i32 [ -1, %58 ], [ %108, %104 ]
  %69 = phi i32 [ 0, %58 ], [ %109, %104 ]
  %70 = getelementptr i8, ptr %54, i32 %69
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 127
  %74 = and i32 %72, 128
  %75 = icmp eq i32 %74, 0
  %76 = mul nuw nsw i32 %73, 5
  %77 = shl i32 %76, %48
  %78 = icmp sgt i32 %77, 110
  %79 = select i1 %78, i8 1, i8 %66
  switch i8 %71, label %80 [
    i8 -1, label %104
    i8 -2, label %104
    i8 -6, label %104
    i8 -5, label %104
  ]

80:                                               ; preds = %63
  %81 = load i32, ptr %59, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %80
  %84 = load ptr, ptr %60, align 4
  br label %85

85:                                               ; preds = %101, %83
  %86 = phi i32 [ 0, %83 ], [ %102, %101 ]
  %87 = getelementptr %struct.ieee80211_rate, ptr %84, i32 %86, i32 1
  %88 = load i16, ptr %87, align 4
  %89 = zext i16 %88 to i32
  %90 = add i32 %62, %89
  %91 = sdiv i32 %90, %61
  %92 = icmp eq i32 %91, %73
  br i1 %92, label %93, label %101

93:                                               ; preds = %85
  %94 = shl nuw i32 1, %86
  %95 = or i32 %94, %64
  %96 = select i1 %75, i32 0, i32 %94
  %97 = or i32 %96, %65
  %98 = icmp slt i32 %76, %67
  %99 = tail call i32 @llvm.smin.i32(i32 %76, i32 %67)
  %100 = select i1 %98, i32 %86, i32 %68
  br label %104

101:                                              ; preds = %85
  %102 = add nuw nsw i32 %86, 1
  %103 = icmp eq i32 %102, %81
  br i1 %103, label %104, label %85

104:                                              ; preds = %101, %93, %80, %63, %63, %63, %63
  %105 = phi i32 [ %64, %80 ], [ %64, %63 ], [ %64, %63 ], [ %64, %63 ], [ %64, %63 ], [ %95, %93 ], [ %64, %101 ]
  %106 = phi i32 [ %65, %80 ], [ %65, %63 ], [ %65, %63 ], [ %65, %63 ], [ %65, %63 ], [ %97, %93 ], [ %65, %101 ]
  %107 = phi i32 [ %67, %80 ], [ %67, %63 ], [ %67, %63 ], [ %67, %63 ], [ %67, %63 ], [ %99, %93 ], [ %67, %101 ]
  %108 = phi i32 [ %68, %80 ], [ %68, %63 ], [ %68, %63 ], [ %68, %63 ], [ %68, %63 ], [ %100, %93 ], [ %68, %101 ]
  %109 = add nuw i32 %69, 1
  %110 = icmp eq i32 %109, %56
  br i1 %110, label %111, label %63

111:                                              ; preds = %104
  %112 = icmp slt i32 %108, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %111, %53
  %114 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %114) #14
  tail call void @sta_info_free(ptr noundef %7, ptr noundef nonnull %34) #13
  br label %752

116:                                              ; preds = %111
  %117 = icmp eq i32 %106, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %119) #14
  %121 = shl nuw i32 1, %108
  br label %122

122:                                              ; preds = %118, %116
  %123 = phi i32 [ %121, %118 ], [ %106, %116 ]
  %124 = icmp eq i32 %105, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.sta_info, ptr %34, i32 0, i32 46
  %127 = load ptr, ptr %1, align 4
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr [6 x i32], ptr %126, i32 0, i32 %128
  store i32 %105, ptr %129, align 4
  br label %133

130:                                              ; preds = %122
  %131 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %131) #14
  br label %133

133:                                              ; preds = %130, %125
  %134 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 24
  store i32 %123, ptr %134, align 8
  %135 = load ptr, ptr %1, align 4
  %136 = load i32, ptr %135, align 4
  %137 = icmp ne i32 %136, 0
  %138 = icmp eq i8 %79, 0
  %139 = select i1 %137, i1 true, i1 %138
  %140 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %141 = load i32, ptr %140, align 8
  br i1 %139, label %144, label %142

142:                                              ; preds = %133
  %143 = or i32 %141, 4
  store i32 %143, ptr %140, align 8
  br label %146

144:                                              ; preds = %133
  %145 = and i32 %141, -5
  store i32 %145, ptr %140, align 8
  br label %146

146:                                              ; preds = %144, %142, %52
  %147 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %147, ptr noundef align 4 dereferenceable(6) %33, i32 6, i1 false)
  %148 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 9
  %149 = load i16, ptr %148, align 4
  %150 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 19
  store i16 %149, ptr %150, align 2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %151 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 3
  %152 = load volatile ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %192, label %154

154:                                              ; preds = %146
  %155 = load i64, ptr %152, align 8
  %156 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 21
  store i64 %155, ptr %156, align 8
  %157 = load i32, ptr %8, align 4
  %158 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 22
  store i32 %157, ptr %158, align 8
  %159 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 23
  %160 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %152, i32 0, i32 4
  %161 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %152, i32 0, i32 2
  %162 = load i32, ptr %161, align 8
  %163 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 5, ptr noundef %160, i32 noundef %162, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  %164 = load i32, ptr %161, align 8
  %165 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 85, ptr noundef %160, i32 noundef %164, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  %166 = icmp eq ptr %163, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %154
  %168 = getelementptr i8, ptr %163, i32 1
  %169 = load i8, ptr %168, align 1
  %170 = icmp ugt i8 %169, 1
  %171 = getelementptr i8, ptr %163, i32 2
  %172 = select i1 %170, ptr %171, ptr null
  %173 = icmp eq ptr %159, null
  br i1 %173, label %181, label %176

174:                                              ; preds = %154
  %175 = icmp eq ptr %159, null
  br i1 %175, label %181, label %179

176:                                              ; preds = %167
  br i1 %170, label %177, label %179

177:                                              ; preds = %176
  %178 = load i8, ptr %172, align 1
  br label %179

179:                                              ; preds = %177, %176, %174
  %180 = phi i8 [ %178, %177 ], [ 0, %176 ], [ 0, %174 ]
  store i8 %180, ptr %159, align 1
  br label %181

181:                                              ; preds = %179, %174, %167
  %182 = phi i1 [ false, %179 ], [ true, %167 ], [ true, %174 ]
  %183 = icmp eq ptr %165, null
  br i1 %183, label %211, label %184

184:                                              ; preds = %181
  %185 = getelementptr i8, ptr %165, i32 1
  %186 = load i8, ptr %185, align 1
  %187 = icmp ult i8 %186, 3
  %188 = or i1 %182, %187
  br i1 %188, label %211, label %189

189:                                              ; preds = %184
  %190 = getelementptr i8, ptr %165, i32 4
  %191 = load i8, ptr %190, align 1
  store i8 %191, ptr %159, align 1
  br label %211

192:                                              ; preds = %146
  %193 = load ptr, ptr %6, align 4
  %194 = getelementptr inbounds %struct.ieee80211_hw, ptr %193, i32 0, i32 4
  %195 = load volatile i32, ptr %194, align 4
  %196 = and i32 %195, 16777216
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 4
  %200 = load volatile ptr, ptr %199, align 4
  %201 = load i64, ptr %200, align 8
  %202 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 21
  store i64 %201, ptr %202, align 8
  %203 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 1, i32 1
  %204 = load i32, ptr %203, align 4
  %205 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 22
  store i32 %204, ptr %205, align 8
  %206 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 23
  store i8 0, ptr %206, align 4
  br label %211

207:                                              ; preds = %192
  %208 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 21
  store i64 0, ptr %208, align 8
  %209 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 22
  store i32 0, ptr %209, align 8
  %210 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 23
  store i8 0, ptr %210, align 4
  br label %211

211:                                              ; preds = %207, %198, %189, %184, %181
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %213

212:                                              ; preds = %28
  br i1 %3, label %213, label %730

213:                                              ; preds = %212, %211
  %214 = phi i1 [ false, %211 ], [ true, %212 ]
  %215 = phi ptr [ %34, %211 ], [ null, %212 ]
  %216 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false) #13, !annotation !25
  %217 = load ptr, ptr %1, align 4
  %218 = load i32, ptr %217, align 4
  %219 = icmp eq i32 %218, 3
  %220 = icmp ne i32 %218, 1
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %221 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 2
  %222 = load volatile ptr, ptr %221, align 4
  %223 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %222, i32 0, i32 2
  %225 = load i32, ptr %224, align 8
  %226 = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %223, i32 noundef %225, i1 noundef zeroext false, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %229

228:                                              ; preds = %213
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %700

229:                                              ; preds = %213
  %230 = getelementptr inbounds %struct.ieee80211_hw, ptr %216, i32 0, i32 1
  %231 = load ptr, ptr %230, align 8
  %232 = load ptr, ptr %1, align 4
  %233 = load i32, ptr %232, align 4
  %234 = getelementptr %struct.wiphy, ptr %231, i32 0, i32 53, i32 %233
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %237 = load i32, ptr %236, align 4
  %238 = and i32 %237, -13313
  store i32 %238, ptr %236, align 4
  %239 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %235, i32 0, i32 5, i32 1
  %240 = load i8, ptr %239, align 2, !range !14
  %241 = icmp ne i8 %240, 0
  %242 = select i1 %241, i1 true, i1 %219
  br i1 %242, label %245, label %243

243:                                              ; preds = %229
  %244 = or i32 %238, 67600
  store i32 %244, ptr %236, align 4
  br label %245

245:                                              ; preds = %243, %229
  %246 = phi i32 [ %238, %229 ], [ %244, %243 ]
  %247 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %235, i32 0, i32 6
  %248 = load i8, ptr %247, align 4, !range !14
  %249 = icmp ne i8 %248, 0
  %250 = select i1 %249, i1 true, i1 %220
  br i1 %250, label %253, label %251

251:                                              ; preds = %245
  %252 = or i32 %246, 67584
  store i32 %252, ptr %236, align 4
  br label %253

253:                                              ; preds = %251, %245
  %254 = phi i32 [ %246, %245 ], [ %252, %251 ]
  %255 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %256 = load i32, ptr %255, align 8
  %257 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 3
  %258 = load i8, ptr %257, align 2, !range !14
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %253
  switch i32 %256, label %262 [
    i32 2, label %266
    i32 3, label %261
  ]

261:                                              ; preds = %260
  br label %266

262:                                              ; preds = %260, %253
  %263 = trunc i32 %256 to i8
  %264 = and i32 %256, 255
  %265 = icmp ugt i8 %263, 11
  br i1 %265, label %276, label %266, !prof !8

266:                                              ; preds = %262, %261, %260
  %267 = phi i32 [ %264, %262 ], [ 8, %260 ], [ 9, %261 ]
  %268 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %235, i32 0, i32 9
  %269 = load i16, ptr %268, align 4
  %270 = zext i16 %269 to i32
  %271 = icmp eq i16 %269, 0
  br i1 %271, label %296, label %272

272:                                              ; preds = %266
  %273 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %235, i32 0, i32 10
  %274 = load ptr, ptr %273, align 4
  %275 = shl nuw i32 1, %267
  br label %281

276:                                              ; preds = %262
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 510, i32 noundef 9, ptr noundef null) #13
  %277 = load i32, ptr %236, align 4
  br label %296

278:                                              ; preds = %281
  %279 = add nuw nsw i32 %282, 1
  %280 = icmp eq i32 %279, %270
  br i1 %280, label %296, label %281

281:                                              ; preds = %278, %272
  %282 = phi i32 [ 0, %272 ], [ %279, %278 ]
  %283 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %274, i32 %282
  %284 = load i16, ptr %283, align 4
  %285 = zext i16 %284 to i32
  %286 = and i32 %275, %285
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %278, label %288

288:                                              ; preds = %281
  %289 = icmp eq ptr %283, null
  br i1 %289, label %296, label %290

290:                                              ; preds = %288
  %291 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %274, i32 %282, i32 1
  %292 = load i8, ptr %291, align 2, !range !14
  %293 = icmp eq i8 %292, 0
  %294 = icmp eq ptr %291, null
  %295 = or i1 %294, %293
  br i1 %295, label %296, label %299

296:                                              ; preds = %290, %288, %278, %276, %266
  %297 = phi i32 [ %254, %290 ], [ %254, %288 ], [ %277, %276 ], [ %254, %266 ], [ %254, %278 ]
  %298 = or i32 %297, 65536
  store i32 %298, ptr %236, align 4
  br label %299

299:                                              ; preds = %296, %290
  %300 = phi i32 [ %254, %290 ], [ %298, %296 ]
  %301 = and i32 %300, 16
  %302 = icmp ne i32 %301, 0
  %303 = select i1 %302, i1 true, i1 %219
  br i1 %303, label %312, label %304

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.ieee802_11_elems, ptr %226, i32 0, i32 17
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr inbounds %struct.ieee802_11_elems, ptr %226, i32 0, i32 16
  %308 = load ptr, ptr %307, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %312

310:                                              ; preds = %304
  %311 = or i32 %300, 16
  store i32 %311, ptr %236, align 4
  br label %312

312:                                              ; preds = %310, %304, %299
  %313 = phi i32 [ %300, %299 ], [ %300, %304 ], [ %311, %310 ]
  %314 = phi ptr [ null, %299 ], [ %306, %304 ], [ null, %310 ]
  %315 = and i32 %313, 2048
  %316 = icmp ne i32 %315, 0
  %317 = select i1 %316, i1 true, i1 %219
  br i1 %317, label %340, label %318

318:                                              ; preds = %312
  %319 = getelementptr inbounds %struct.ieee802_11_elems, ptr %226, i32 0, i32 19
  %320 = load ptr, ptr %319, align 4
  %321 = icmp eq ptr %320, null
  %322 = icmp ne ptr %314, null
  %323 = select i1 %321, i1 true, i1 %322
  br i1 %323, label %329, label %324

324:                                              ; preds = %318
  %325 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %326 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %325) #14
  %327 = load i32, ptr %236, align 4
  %328 = or i32 %327, 67600
  store i32 %328, ptr %236, align 4
  br label %329

329:                                              ; preds = %324, %318
  %330 = phi i32 [ %313, %318 ], [ %328, %324 ]
  %331 = phi ptr [ %320, %318 ], [ null, %324 ]
  %332 = getelementptr inbounds %struct.ieee802_11_elems, ptr %226, i32 0, i32 18
  %333 = load ptr, ptr %332, align 4
  %334 = icmp eq ptr %333, null
  br i1 %334, label %335, label %340

335:                                              ; preds = %329
  %336 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %337 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef %336) #14
  %338 = load i32, ptr %236, align 4
  %339 = or i32 %338, 2048
  store i32 %339, ptr %236, align 4
  br label %340

340:                                              ; preds = %335, %329, %312
  %341 = phi i32 [ %313, %312 ], [ %330, %329 ], [ %339, %335 ]
  %342 = phi ptr [ null, %312 ], [ %331, %329 ], [ null, %335 ]
  %343 = and i32 %341, 65536
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %570

345:                                              ; preds = %340
  %346 = getelementptr inbounds %struct.ieee802_11_elems, ptr %226, i32 0, i32 22
  %347 = load ptr, ptr %346, align 4
  br i1 %219, label %348, label %385

348:                                              ; preds = %345
  %349 = getelementptr inbounds %struct.ieee802_11_elems, ptr %226, i32 0, i32 40
  %350 = load ptr, ptr %349, align 4
  %351 = icmp eq ptr %350, null
  br i1 %351, label %355, label %352

352:                                              ; preds = %348
  %353 = load i8, ptr %350, align 1
  %354 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 66
  store i8 %353, ptr %354, align 1
  br label %355

355:                                              ; preds = %352, %348
  %356 = getelementptr inbounds %struct.ieee802_11_elems, ptr %226, i32 0, i32 75
  %357 = load i8, ptr %356, align 1
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %385, label %359

359:                                              ; preds = %355
  %360 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 65
  br label %361

361:                                              ; preds = %379, %359
  %362 = phi i8 [ %357, %359 ], [ %380, %379 ]
  %363 = phi i32 [ 0, %359 ], [ %382, %379 ]
  %364 = phi i8 [ 0, %359 ], [ %381, %379 ]
  %365 = getelementptr %struct.ieee802_11_elems, ptr %226, i32 0, i32 74, i32 %363
  %366 = load i8, ptr %365, align 1
  %367 = icmp ugt i8 %366, 9
  br i1 %367, label %379, label %368

368:                                              ; preds = %361
  %369 = load i8, ptr %360, align 8
  %370 = add i8 %369, 1
  store i8 %370, ptr %360, align 8
  %371 = zext i8 %364 to i32
  %372 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 64, i32 %371
  %373 = getelementptr %struct.ieee802_11_elems, ptr %226, i32 0, i32 26, i32 %363
  %374 = load ptr, ptr %373, align 4
  %375 = load i8, ptr %365, align 1
  %376 = zext i8 %375 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %372, ptr align 1 %374, i32 %376, i1 false) #13
  %377 = add i8 %364, 1
  %378 = load i8, ptr %356, align 1
  br label %379

379:                                              ; preds = %368, %361
  %380 = phi i8 [ %362, %361 ], [ %378, %368 ]
  %381 = phi i8 [ %364, %361 ], [ %377, %368 ]
  %382 = add nuw nsw i32 %363, 1
  %383 = zext i8 %380 to i32
  %384 = icmp ult i32 %382, %383
  br i1 %384, label %361, label %385

385:                                              ; preds = %379, %355, %345
  %386 = load i32, ptr %255, align 8
  %387 = load i8, ptr %257, align 2, !range !14
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %391, label %389

389:                                              ; preds = %385
  switch i32 %386, label %391 [
    i32 2, label %395
    i32 3, label %390
  ]

390:                                              ; preds = %389
  br label %395

391:                                              ; preds = %389, %385
  %392 = trunc i32 %386 to i8
  %393 = and i32 %386, 255
  %394 = icmp ugt i8 %392, 11
  br i1 %394, label %405, label %395, !prof !8

395:                                              ; preds = %391, %390, %389
  %396 = phi i32 [ %393, %391 ], [ 8, %389 ], [ 9, %390 ]
  %397 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %235, i32 0, i32 9
  %398 = load i16, ptr %397, align 4
  %399 = zext i16 %398 to i32
  %400 = icmp eq i16 %398, 0
  br i1 %400, label %567, label %401

401:                                              ; preds = %395
  %402 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %235, i32 0, i32 10
  %403 = load ptr, ptr %402, align 4
  %404 = shl nuw i32 1, %396
  br label %409

405:                                              ; preds = %391
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 510, i32 noundef 9, ptr noundef null) #13
  br label %567

406:                                              ; preds = %409
  %407 = add nuw nsw i32 %410, 1
  %408 = icmp eq i32 %407, %399
  br i1 %408, label %567, label %409

409:                                              ; preds = %406, %401
  %410 = phi i32 [ 0, %401 ], [ %407, %406 ]
  %411 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %403, i32 %410
  %412 = load i16, ptr %411, align 4
  %413 = zext i16 %412 to i32
  %414 = and i32 %404, %413
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %406, label %416

416:                                              ; preds = %409
  %417 = icmp eq ptr %411, null
  br i1 %417, label %567, label %418

418:                                              ; preds = %416
  %419 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %403, i32 %410, i32 1
  %420 = load i8, ptr %419, align 2, !range !14
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %567, label %422

422:                                              ; preds = %418
  %423 = icmp ne ptr %419, null
  %424 = icmp ne ptr %347, null
  %425 = and i1 %424, %423
  br i1 %425, label %426, label %567

426:                                              ; preds = %422
  %427 = getelementptr inbounds %struct.ieee80211_he_operation, ptr %347, i32 0, i32 1
  %428 = load i16, ptr %427, align 1
  %429 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %403, i32 %410, i32 1, i32 2
  %430 = zext i16 %428 to i32
  %431 = lshr i32 %430, 14
  %432 = icmp eq i32 %431, 3
  %433 = lshr i32 %430, 12
  %434 = and i32 %433, 3
  %435 = icmp eq i32 %434, 3
  %436 = lshr i32 %430, 10
  %437 = and i32 %436, 3
  %438 = icmp eq i32 %437, 3
  %439 = lshr i32 %430, 8
  %440 = and i32 %439, 3
  %441 = icmp eq i32 %440, 3
  %442 = lshr i32 %430, 6
  %443 = and i32 %442, 3
  %444 = icmp eq i32 %443, 3
  %445 = lshr i32 %430, 4
  %446 = and i32 %445, 3
  %447 = icmp eq i32 %446, 3
  %448 = lshr i32 %430, 2
  %449 = and i32 %448, 3
  %450 = icmp eq i32 %449, 3
  %451 = and i32 %430, 3
  %452 = icmp eq i32 %451, 3
  br label %456

453:                                              ; preds = %566, %556, %529, %516, %503, %490, %477, %466
  %454 = add nuw nsw i32 %457, 1
  %455 = icmp eq i32 %454, 3
  br i1 %455, label %567, label %456

456:                                              ; preds = %453, %426
  %457 = phi i32 [ 0, %426 ], [ %454, %453 ]
  %458 = shl nuw i32 %457, 1
  %459 = getelementptr i16, ptr %429, i32 %458
  %460 = load i16, ptr %459, align 2
  %461 = or i32 %458, 1
  %462 = getelementptr i16, ptr %429, i32 %461
  %463 = load i16, ptr %462, align 2
  %464 = zext i16 %463 to i32
  %465 = zext i16 %460 to i32
  br i1 %432, label %476, label %466

466:                                              ; preds = %456
  %467 = lshr i32 %464, 14
  %468 = lshr i32 %465, 14
  %469 = icmp eq i32 %468, 3
  %470 = icmp eq i32 %467, 3
  %471 = select i1 %469, i1 true, i1 %470
  %472 = icmp ugt i32 %431, %468
  %473 = select i1 %471, i1 true, i1 %472
  %474 = icmp ugt i32 %431, %467
  %475 = select i1 %473, i1 true, i1 %474
  br i1 %475, label %453, label %476

476:                                              ; preds = %466, %456
  br i1 %435, label %489, label %477

477:                                              ; preds = %476
  %478 = lshr i32 %464, 12
  %479 = and i32 %478, 3
  %480 = lshr i32 %465, 12
  %481 = and i32 %480, 3
  %482 = icmp eq i32 %481, 3
  %483 = icmp eq i32 %479, 3
  %484 = select i1 %482, i1 true, i1 %483
  %485 = icmp ugt i32 %434, %481
  %486 = select i1 %484, i1 true, i1 %485
  %487 = icmp ugt i32 %434, %479
  %488 = select i1 %486, i1 true, i1 %487
  br i1 %488, label %453, label %489

489:                                              ; preds = %477, %476
  br i1 %438, label %502, label %490

490:                                              ; preds = %489
  %491 = lshr i32 %464, 10
  %492 = and i32 %491, 3
  %493 = lshr i32 %465, 10
  %494 = and i32 %493, 3
  %495 = icmp eq i32 %494, 3
  %496 = icmp eq i32 %492, 3
  %497 = select i1 %495, i1 true, i1 %496
  %498 = icmp ugt i32 %437, %494
  %499 = select i1 %497, i1 true, i1 %498
  %500 = icmp ugt i32 %437, %492
  %501 = select i1 %499, i1 true, i1 %500
  br i1 %501, label %453, label %502

502:                                              ; preds = %490, %489
  br i1 %441, label %515, label %503

503:                                              ; preds = %502
  %504 = lshr i32 %464, 8
  %505 = and i32 %504, 3
  %506 = lshr i32 %465, 8
  %507 = and i32 %506, 3
  %508 = icmp eq i32 %507, 3
  %509 = icmp eq i32 %505, 3
  %510 = select i1 %508, i1 true, i1 %509
  %511 = icmp ugt i32 %440, %507
  %512 = select i1 %510, i1 true, i1 %511
  %513 = icmp ugt i32 %440, %505
  %514 = select i1 %512, i1 true, i1 %513
  br i1 %514, label %453, label %515

515:                                              ; preds = %503, %502
  br i1 %444, label %528, label %516

516:                                              ; preds = %515
  %517 = lshr i32 %464, 6
  %518 = and i32 %517, 3
  %519 = lshr i32 %465, 6
  %520 = and i32 %519, 3
  %521 = icmp eq i32 %520, 3
  %522 = icmp eq i32 %518, 3
  %523 = select i1 %521, i1 true, i1 %522
  %524 = icmp ugt i32 %443, %520
  %525 = select i1 %523, i1 true, i1 %524
  %526 = icmp ugt i32 %443, %518
  %527 = select i1 %525, i1 true, i1 %526
  br i1 %527, label %453, label %528

528:                                              ; preds = %516, %515
  br i1 %447, label %541, label %529

529:                                              ; preds = %528
  %530 = lshr i32 %464, 4
  %531 = and i32 %530, 3
  %532 = lshr i32 %465, 4
  %533 = and i32 %532, 3
  %534 = icmp eq i32 %533, 3
  %535 = icmp eq i32 %531, 3
  %536 = select i1 %534, i1 true, i1 %535
  %537 = icmp ugt i32 %446, %533
  %538 = select i1 %536, i1 true, i1 %537
  %539 = icmp ugt i32 %446, %531
  %540 = select i1 %538, i1 true, i1 %539
  br i1 %540, label %453, label %541

541:                                              ; preds = %529, %528
  br i1 %450, label %555, label %542

542:                                              ; preds = %541
  %543 = lshr i32 %464, 2
  %544 = and i32 %543, 3
  %545 = lshr i32 %465, 2
  %546 = and i32 %545, 3
  %547 = icmp eq i32 %546, 3
  %548 = icmp eq i32 %544, 3
  %549 = select i1 %547, i1 true, i1 %548
  %550 = icmp ugt i32 %449, %546
  %551 = select i1 %549, i1 true, i1 %550
  %552 = icmp ugt i32 %449, %544
  %553 = select i1 %551, i1 true, i1 %552
  %554 = select i1 %553, i1 true, i1 %452
  br i1 %554, label %566, label %556

555:                                              ; preds = %541
  br i1 %452, label %570, label %556

556:                                              ; preds = %555, %542
  %557 = and i32 %464, 3
  %558 = and i32 %465, 3
  %559 = icmp ne i32 %558, 3
  %560 = icmp ne i32 %557, 3
  %561 = select i1 %559, i1 %560, i1 false
  %562 = icmp ule i32 %451, %558
  %563 = select i1 %561, i1 %562, i1 false
  %564 = icmp ule i32 %451, %557
  %565 = select i1 %563, i1 %564, i1 false
  br i1 %565, label %570, label %453

566:                                              ; preds = %542
  br i1 %553, label %453, label %570

567:                                              ; preds = %453, %422, %418, %416, %406, %405, %395
  %568 = load i32, ptr %236, align 4
  %569 = or i32 %568, 65536
  store i32 %569, ptr %236, align 4
  br label %570

570:                                              ; preds = %567, %566, %556, %555, %340
  %571 = phi ptr [ null, %340 ], [ %347, %567 ], [ %347, %555 ], [ %347, %556 ], [ %347, %566 ]
  %572 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %235, i32 0, i32 3
  %573 = load i32, ptr %572, align 4
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %586, label %575

575:                                              ; preds = %570
  %576 = load ptr, ptr %235, align 4
  br label %580

577:                                              ; preds = %580
  %578 = add nuw i32 %581, 1
  %579 = icmp eq i32 %578, %573
  br i1 %579, label %586, label %580

580:                                              ; preds = %577, %575
  %581 = phi i32 [ 0, %575 ], [ %578, %577 ]
  %582 = getelementptr %struct.ieee80211_channel, ptr %576, i32 %581, i32 4
  %583 = load i32, ptr %582, align 4
  %584 = and i32 %583, 129
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %591, label %577

586:                                              ; preds = %577, %570
  %587 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %588 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %587) #14
  %589 = load i32, ptr %236, align 4
  %590 = or i32 %589, 2048
  store i32 %590, ptr %236, align 4
  br label %591

591:                                              ; preds = %586, %580
  %592 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %235, i32 0, i32 2
  %593 = load i32, ptr %592, align 4
  %594 = icmp eq i32 %593, 4
  br i1 %594, label %595, label %602

595:                                              ; preds = %591
  %596 = getelementptr inbounds %struct.ieee802_11_elems, ptr %226, i32 0, i32 54
  %597 = load ptr, ptr %596, align 4
  %598 = icmp eq ptr %597, null
  br i1 %598, label %599, label %602

599:                                              ; preds = %595
  %600 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %601 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %600) #14
  br label %602

602:                                              ; preds = %599, %595, %591
  %603 = phi ptr [ %597, %595 ], [ null, %599 ], [ null, %591 ]
  %604 = load ptr, ptr %1, align 4
  %605 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 1, i32 13, i32 1
  %606 = load i32, ptr %605, align 4
  %607 = call fastcc i32 @ieee80211_determine_chantype(ptr noundef %0, ptr noundef %235, ptr noundef %604, i32 noundef %606, ptr noundef %314, ptr noundef %342, ptr noundef %571, ptr noundef %603, ptr noundef nonnull %5, i1 noundef zeroext false) #13
  %608 = load i32, ptr %236, align 4
  %609 = or i32 %608, %607
  store i32 %609, ptr %236, align 4
  %610 = and i32 %609, 16
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %612, label %665

612:                                              ; preds = %602
  %613 = call ptr @ieee80211_bss_get_elem(ptr noundef %1, i8 noundef zeroext 45) #13
  %614 = icmp eq ptr %613, null
  br i1 %614, label %622, label %615

615:                                              ; preds = %612
  %616 = getelementptr inbounds %struct.element, ptr %613, i32 0, i32 1
  %617 = load i8, ptr %616, align 1
  %618 = icmp ugt i8 %617, 25
  br i1 %618, label %619, label %622

619:                                              ; preds = %615
  %620 = getelementptr inbounds %struct.element, ptr %613, i32 2, i32 1
  %621 = call zeroext i8 @ieee80211_mcs_to_chains(ptr noundef %620) #13
  br label %622

622:                                              ; preds = %619, %615, %612
  %623 = phi i8 [ %621, %619 ], [ 1, %615 ], [ 1, %612 ]
  %624 = load i32, ptr %236, align 4
  %625 = and i32 %624, 2048
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %627, label %665

627:                                              ; preds = %622
  %628 = call ptr @ieee80211_bss_get_elem(ptr noundef %1, i8 noundef zeroext -65) #13
  %629 = icmp eq ptr %628, null
  br i1 %629, label %665, label %630

630:                                              ; preds = %627
  %631 = getelementptr inbounds %struct.element, ptr %628, i32 0, i32 1
  %632 = load i8, ptr %631, align 1
  %633 = icmp ugt i8 %632, 11
  br i1 %633, label %634, label %665

634:                                              ; preds = %630
  %635 = getelementptr inbounds %struct.element, ptr %628, i32 5
  %636 = load i16, ptr %635, align 1
  %637 = zext i16 %636 to i32
  %638 = and i32 %637, 49152
  %639 = icmp eq i32 %638, 49152
  br i1 %639, label %640, label %662

640:                                              ; preds = %634
  %641 = and i32 %637, 12288
  %642 = icmp eq i32 %641, 12288
  br i1 %642, label %643, label %662

643:                                              ; preds = %640
  %644 = and i32 %637, 3072
  %645 = icmp eq i32 %644, 3072
  br i1 %645, label %646, label %662

646:                                              ; preds = %643
  %647 = and i32 %637, 768
  %648 = icmp eq i32 %647, 768
  br i1 %648, label %649, label %662

649:                                              ; preds = %646
  %650 = and i32 %637, 192
  %651 = icmp eq i32 %650, 192
  br i1 %651, label %652, label %662

652:                                              ; preds = %649
  %653 = and i32 %637, 48
  %654 = icmp eq i32 %653, 48
  br i1 %654, label %655, label %662

655:                                              ; preds = %652
  %656 = and i32 %637, 12
  %657 = icmp eq i32 %656, 12
  br i1 %657, label %658, label %662

658:                                              ; preds = %655
  %659 = and i32 %637, 3
  %660 = icmp ne i32 %659, 3
  %661 = zext i1 %660 to i8
  br label %662

662:                                              ; preds = %658, %655, %652, %649, %646, %643, %640, %634
  %663 = phi i8 [ 8, %634 ], [ 7, %640 ], [ 6, %643 ], [ 5, %646 ], [ 4, %649 ], [ 3, %652 ], [ 2, %655 ], [ %661, %658 ]
  %664 = call i8 @llvm.umax.i8(i8 %623, i8 %663) #13
  br label %665

665:                                              ; preds = %662, %630, %627, %622, %602
  %666 = phi i8 [ 1, %602 ], [ %623, %622 ], [ %664, %662 ], [ %623, %630 ], [ %623, %627 ]
  %667 = getelementptr inbounds %struct.ieee80211_local, ptr %216, i32 0, i32 39
  %668 = load i8, ptr %667, align 4
  %669 = call i8 @llvm.umin.i8(i8 %666, i8 %668) #13
  %670 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 43
  store i8 %669, ptr %670, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  call void @kfree(ptr noundef nonnull %226) #13
  %671 = load i32, ptr %236, align 4
  %672 = and i32 %671, 65536
  %673 = icmp eq i32 %672, 0
  %674 = xor i1 %219, true
  %675 = select i1 %673, i1 true, i1 %674
  br i1 %675, label %679, label %676

676:                                              ; preds = %665
  %677 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %678 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %677) #14
  br label %700

679:                                              ; preds = %665
  %680 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 44
  store i32 1, ptr %680, align 8
  %681 = getelementptr inbounds %struct.ieee80211_local, ptr %216, i32 0, i32 66
  call void @mutex_lock(ptr noundef %681) #13
  %682 = call i32 @ieee80211_vif_use_channel(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0) #13
  %683 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %5, i32 0, i32 1
  %684 = load i32, ptr %683, align 4
  %685 = and i32 %684, -2
  %686 = icmp eq i32 %685, 6
  br i1 %686, label %701, label %687

687:                                              ; preds = %679
  %688 = icmp ne i32 %682, 0
  %689 = icmp ne i32 %684, 0
  %690 = select i1 %688, i1 %689, i1 false
  br i1 %690, label %691, label %701

691:                                              ; preds = %691, %687
  %692 = call i32 @ieee80211_chandef_downgrade(ptr noundef nonnull %5) #13
  %693 = load i32, ptr %236, align 4
  %694 = or i32 %693, %692
  store i32 %694, ptr %236, align 4
  %695 = call i32 @ieee80211_vif_use_channel(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0) #13
  %696 = icmp ne i32 %695, 0
  %697 = load i32, ptr %683, align 4
  %698 = icmp ne i32 %697, 0
  %699 = select i1 %696, i1 %698, i1 false
  br i1 %699, label %691, label %701

700:                                              ; preds = %676, %228
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #13
  br label %704

701:                                              ; preds = %691, %687, %679
  %702 = phi i32 [ %682, %679 ], [ %682, %687 ], [ %695, %691 ]
  call void @mutex_unlock(ptr noundef %681) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #13
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %706, label %704

704:                                              ; preds = %701, %700
  br i1 %214, label %752, label %705

705:                                              ; preds = %704
  call void @sta_info_free(ptr noundef %7, ptr noundef nonnull %215) #13
  br label %752

706:                                              ; preds = %701
  br i1 %214, label %730, label %707

707:                                              ; preds = %706
  call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 224) #13
  br i1 %2, label %708, label %724

708:                                              ; preds = %707
  %709 = getelementptr inbounds %struct.sta_info, ptr %215, i32 0, i32 23
  %710 = load volatile i32, ptr %709, align 4
  %711 = and i32 %710, 1048576
  %712 = icmp ne i32 %711, 0
  %713 = load i1, ptr @sta_info_pre_move_state.__already_done, align 1
  %714 = xor i1 %713, true
  %715 = select i1 %712, i1 %714, i1 false
  br i1 %715, label %716, label %717, !prof !8

716:                                              ; preds = %708
  store i1 true, ptr @sta_info_pre_move_state.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.117, i32 noundef 742, i32 noundef 9, ptr noundef null) #13
  br label %717

717:                                              ; preds = %716, %708
  %718 = call i32 @sta_info_move_state(ptr noundef %215, i32 noundef 2) #13
  %719 = icmp ne i32 %718, 0
  %720 = load i1, ptr @sta_info_pre_move_state.__already_done.145, align 1
  %721 = xor i1 %720, true
  %722 = select i1 %719, i1 %721, i1 false
  br i1 %722, label %723, label %724, !prof !8

723:                                              ; preds = %717
  store i1 true, ptr @sta_info_pre_move_state.__already_done.145, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.117, i32 noundef 745, i32 noundef 9, ptr noundef null) #13
  br label %724

724:                                              ; preds = %723, %717, %707
  %725 = call i32 @sta_info_insert(ptr noundef nonnull %215) #13
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %747, label %727

727:                                              ; preds = %724
  %728 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %729 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %728, i32 noundef %725) #14
  br label %752

730:                                              ; preds = %706, %212
  %731 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  %732 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 11
  %733 = load i32, ptr %731, align 4
  %734 = load i32, ptr %732, align 4
  %735 = xor i32 %734, %733
  %736 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 2
  %737 = load i16, ptr %736, align 2
  %738 = getelementptr %struct.cfg80211_bss, ptr %1, i32 0, i32 11, i32 4
  %739 = load i16, ptr %738, align 2
  %740 = xor i16 %739, %737
  %741 = zext i16 %740 to i32
  %742 = or i32 %735, %741
  %743 = icmp eq i32 %742, 0
  %744 = load i1, ptr @ieee80211_prep_connection.__already_done, align 1
  %745 = select i1 %743, i1 true, i1 %744
  br i1 %745, label %747, label %746, !prof !11

746:                                              ; preds = %730
  store i1 true, ptr @ieee80211_prep_connection.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5419, i32 noundef 9, ptr noundef null) #13
  br label %747

747:                                              ; preds = %746, %730, %724
  %748 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 67
  %749 = load i32, ptr %748, align 4
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %752, label %751

751:                                              ; preds = %747
  call void @ieee80211_scan_cancel(ptr noundef %7) #13
  br label %752

752:                                              ; preds = %751, %747, %727, %705, %704, %113, %32, %23, %22
  %753 = phi i32 [ -22, %22 ], [ %725, %727 ], [ -22, %113 ], [ -16, %23 ], [ -12, %32 ], [ -22, %705 ], [ -22, %704 ], [ 0, %751 ], [ 0, %747 ]
  ret i32 %753
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_destroy_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ref_bss(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_mgd_assoc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca [26 x i8], align 1
  %5 = alloca %struct.ieee80211_sta_ht_cap, align 2
  %6 = alloca i8, align 1
  %7 = load ptr, ptr %1, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 3
  %11 = icmp eq i32 %9, 1
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %15 = getelementptr inbounds %struct.cfg80211_bss, ptr %7, i32 0, i32 17
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %17 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 180
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %486, label %22

22:                                               ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %23 = load ptr, ptr %1, align 4
  %24 = tail call ptr @ieee80211_bss_get_elem(ptr noundef %23, i8 noundef zeroext 0) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.element, ptr %24, i32 0, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = icmp ugt i8 %28, 32
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  tail call void @kfree(ptr noundef nonnull %20) #13
  br label %486

31:                                               ; preds = %26
  %32 = zext i8 %28 to i32
  %33 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 6
  %34 = getelementptr inbounds %struct.element, ptr %24, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %33, ptr align 1 %34, i32 %32, i1 false)
  %35 = load i8, ptr %27, align 1
  %36 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 7
  store i8 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 39
  %38 = zext i8 %35 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr align 8 %33, i32 %38, i1 false)
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 40
  store i32 %38, ptr %39, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(26) %4, i8 0, i32 26, i1 false), !annotation !25
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %45 = getelementptr inbounds %struct.cfg80211_bss, ptr %41, i32 0, i32 11
  %46 = load ptr, ptr %1, align 4
  %47 = getelementptr inbounds %struct.cfg80211_bss, ptr %46, i32 0, i32 11
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %44, ptr noundef %45, ptr noundef %47) #14
  call fastcc void @ieee80211_set_disassoc(ptr noundef %0, i16 noundef zeroext 192, i16 noundef zeroext 1, i1 noundef zeroext false, ptr noundef nonnull %4)
  call fastcc void @ieee80211_report_disconnect(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 26, i1 noundef zeroext true, i16 noundef zeroext 1, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %4) #13
  br label %49

49:                                               ; preds = %43, %31
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 22
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %51, i32 0, i32 8
  %55 = load i8, ptr %54, align 1, !range !14
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %484, label %61

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %80, label %484

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %484

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  %67 = load ptr, ptr %1, align 4
  %68 = getelementptr inbounds %struct.cfg80211_bss, ptr %67, i32 0, i32 11
  %69 = load i32, ptr %66, align 4
  %70 = load i32, ptr %68, align 4
  %71 = xor i32 %70, %69
  %72 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 2
  %73 = load i16, ptr %72, align 2
  %74 = getelementptr %struct.cfg80211_bss, ptr %67, i32 0, i32 11, i32 4
  %75 = load i16, ptr %74, align 2
  %76 = xor i16 %75, %73
  %77 = zext i16 %76 to i32
  %78 = or i32 %71, %77
  %79 = icmp eq i32 %78, 0
  call fastcc void @ieee80211_destroy_auth_data(ptr noundef %0, i1 noundef zeroext %79)
  br label %80

80:                                               ; preds = %65, %57
  %81 = phi ptr [ %62, %65 ], [ %58, %57 ]
  %82 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %14, i32 0, i32 27
  store i8 0, ptr %82, align 2
  %83 = getelementptr inbounds %struct.cfg80211_bss, ptr %7, i32 1, i32 2
  %84 = load i8, ptr %83, align 4, !range !14
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 11
  %88 = load i16, ptr %87, align 4
  %89 = icmp ugt i16 %88, 3
  br label %90

90:                                               ; preds = %86, %80
  %91 = phi i1 [ false, %80 ], [ %89, %86 ]
  %92 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 9
  %93 = zext i1 %91 to i8
  store i8 %93, ptr %92, align 2
  %94 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 4, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %99 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  br label %100

100:                                              ; preds = %110, %97
  %101 = phi i32 [ %95, %97 ], [ %111, %110 ]
  %102 = phi i32 [ 0, %97 ], [ %112, %110 ]
  %103 = getelementptr %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 4, i32 3, i32 %102
  %104 = load i32, ptr %103, align 4
  switch i32 %104, label %110 [
    i32 1027073, label %105
    i32 1027074, label %105
    i32 1027077, label %105
  ]

105:                                              ; preds = %100, %100, %100
  %106 = load i32, ptr %98, align 4
  %107 = or i32 %106, 67600
  store i32 %107, ptr %98, align 4
  %108 = load ptr, ptr %99, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %108, ptr noundef nonnull @.str.55) #14
  %109 = load i32, ptr %94, align 4
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi i32 [ %101, %100 ], [ %109, %105 ]
  %112 = add nuw nsw i32 %102, 1
  %113 = icmp slt i32 %112, %111
  br i1 %113, label %100, label %114

114:                                              ; preds = %110, %90
  %115 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 4
  %116 = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 1
  %117 = load ptr, ptr %116, align 8
  %118 = load ptr, ptr %1, align 4
  %119 = load ptr, ptr %118, align 4
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr %struct.wiphy, ptr %117, i32 0, i32 53, i32 %120
  %122 = load ptr, ptr %121, align 4
  %123 = load i8, ptr %83, align 4, !range !14
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %114
  %126 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %127 = load i32, ptr %126, align 4
  %128 = or i32 %127, 67600
  store i32 %128, ptr %126, align 4
  %129 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %130 = load ptr, ptr %129, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %130, ptr noundef nonnull @.str.56) #14
  br label %131

131:                                              ; preds = %125, %114
  %132 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 26
  %133 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(26) %132, ptr noundef align 4 dereferenceable(26) %133, i32 26, i1 false)
  %134 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %14, i32 0, i32 47
  %135 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(26) %134, ptr noundef align 2 dereferenceable(26) %135, i32 26, i1 false)
  %136 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 38
  %137 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %136, ptr noundef align 4 dereferenceable(12) %137, i32 12, i1 false)
  %138 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 4
  %139 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %138, ptr noundef align 4 dereferenceable(12) %139, i32 12, i1 false)
  %140 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 16
  %141 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(15) %140, ptr noundef align 4 dereferenceable(15) %141, i32 15, i1 false)
  %142 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 31
  %143 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(15) %142, ptr noundef align 1 dereferenceable(15) %143, i32 15, i1 false)
  %144 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %154, label %147

147:                                              ; preds = %131
  %148 = load i32, ptr %17, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 20
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %151, ptr nonnull align 1 %145, i32 %148, i1 false)
  %152 = load i32, ptr %17, align 4
  %153 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 19
  store i32 %152, ptr %153, align 16
  br label %154

154:                                              ; preds = %150, %147, %131
  %155 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 11
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %166, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 12
  %160 = load i32, ptr %159, align 4
  %161 = icmp ugt i32 %160, 64
  br i1 %161, label %162, label %163, !prof !8

162:                                              ; preds = %158
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5703, i32 noundef 9, ptr noundef null) #13
  br label %484

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 17
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %164, ptr nonnull align 1 %156, i32 %160, i1 false)
  %165 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 18
  store i32 %160, ptr %165, align 4
  br label %166

166:                                              ; preds = %163, %154
  %167 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 13
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %171, ptr noundef nonnull align 1 dereferenceable(32) %168, i32 32, i1 false)
  br label %172

172:                                              ; preds = %170, %166
  %173 = load ptr, ptr %1, align 4
  store ptr %173, ptr %20, align 64
  %174 = getelementptr inbounds %struct.cfg80211_bss, ptr %173, i32 0, i32 10
  %175 = load i16, ptr %174, align 2
  %176 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 4
  store i16 %175, ptr %176, align 16
  %177 = getelementptr inbounds %struct.ieee80211_bss, ptr %15, i32 0, i32 4
  %178 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 1
  store ptr %177, ptr %178, align 4
  %179 = getelementptr inbounds %struct.cfg80211_bss, ptr %7, i32 1, i32 11
  %180 = load i32, ptr %179, align 4
  %181 = trunc i32 %180 to i8
  %182 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 8
  store i8 %181, ptr %182, align 1
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %183 = load ptr, ptr %1, align 4
  %184 = call ptr @ieee80211_bss_get_elem(ptr noundef %183, i8 noundef zeroext 61) #13
  %185 = icmp eq ptr %184, null
  br i1 %185, label %194, label %186

186:                                              ; preds = %172
  %187 = getelementptr inbounds %struct.element, ptr %184, i32 0, i32 1
  %188 = load i8, ptr %187, align 1
  %189 = icmp ugt i8 %188, 21
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.element, ptr %184, i32 1, i32 1
  %192 = load i8, ptr %191, align 1
  %193 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 14
  store i8 %192, ptr %193, align 1
  br label %199

194:                                              ; preds = %186, %172
  br i1 %10, label %199, label %195

195:                                              ; preds = %194
  %196 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %197 = load i32, ptr %196, align 4
  %198 = or i32 %197, 16
  store i32 %198, ptr %196, align 4
  br label %199

199:                                              ; preds = %195, %194, %190
  %200 = load ptr, ptr %1, align 4
  %201 = call ptr @ieee80211_bss_get_elem(ptr noundef %200, i8 noundef zeroext -65) #13
  %202 = icmp eq ptr %201, null
  br i1 %202, label %210, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.element, ptr %201, i32 0, i32 1
  %205 = load i8, ptr %204, align 1
  %206 = icmp ugt i8 %205, 11
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 15
  %209 = getelementptr inbounds %struct.element, ptr %201, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(12) %208, ptr noundef align 1 dereferenceable(12) %209, i32 12, i1 false)
  br label %217

210:                                              ; preds = %203, %199
  br i1 %11, label %211, label %217

211:                                              ; preds = %210
  %212 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %212) #14
  %214 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %215 = load i32, ptr %214, align 4
  %216 = or i32 %215, 67584
  store i32 %216, ptr %214, align 4
  br label %217

217:                                              ; preds = %211, %210, %207
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %218 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 10
  %219 = load i32, ptr %218, align 8
  %220 = and i32 %219, 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %230, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 4
  %224 = load volatile i32, ptr %223, align 4
  %225 = and i32 %224, 512
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %230, label %227, !prof !11

227:                                              ; preds = %222
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5741, i32 noundef 9, ptr noundef nonnull @.str.58) #13
  %228 = load i32, ptr %218, align 8
  %229 = and i32 %228, -5
  store i32 %229, ptr %218, align 8
  br label %230

230:                                              ; preds = %227, %222, %217
  %231 = phi i32 [ %219, %217 ], [ %219, %222 ], [ %229, %227 ]
  %232 = load i8, ptr %83, align 4, !range !14
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %246, label %234

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.ieee80211_bss, ptr %15, i32 0, i32 3
  %236 = load i8, ptr %235, align 1, !range !14
  %237 = icmp eq i8 %236, 0
  %238 = and i32 %231, 4
  %239 = icmp eq i32 %238, 0
  %240 = select i1 %237, i1 true, i1 %239
  br i1 %240, label %246, label %241

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 10
  store i8 1, ptr %242, align 1
  %243 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %244 = load i32, ptr %243, align 4
  %245 = or i32 %244, 128
  store i32 %245, ptr %243, align 4
  br label %251

246:                                              ; preds = %234, %230
  %247 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 10
  store i8 0, ptr %247, align 1
  %248 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %249 = load i32, ptr %248, align 4
  %250 = and i32 %249, -129
  store i32 %250, ptr %248, align 4
  br label %251

251:                                              ; preds = %246, %241
  %252 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 2
  %253 = load ptr, ptr %252, align 4
  %254 = icmp eq ptr %253, null
  br i1 %254, label %257, label %255

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %256, ptr noundef nonnull align 1 dereferenceable(6) %253, i32 6, i1 false)
  br label %257

257:                                              ; preds = %255, %251
  %258 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 5
  %259 = load i8, ptr %258, align 4, !range !14
  %260 = icmp eq i8 %259, 0
  %261 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 13
  br i1 %260, label %266, label %262

262:                                              ; preds = %257
  store i32 2, ptr %261, align 4
  %263 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %264 = load i32, ptr %263, align 4
  %265 = or i32 %264, 64
  store i32 %265, ptr %263, align 4
  br label %270

266:                                              ; preds = %257
  store i32 0, ptr %261, align 4
  %267 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %268 = load i32, ptr %267, align 4
  %269 = and i32 %268, -65
  store i32 %269, ptr %267, align 4
  br label %270

270:                                              ; preds = %266, %262
  %271 = phi i32 [ %269, %266 ], [ %265, %262 ]
  %272 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 6
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %275 = and i32 %271, -32769
  %276 = shl i32 %273, 13
  %277 = and i32 %276, 32768
  %278 = or i32 %275, %277
  store i32 %278, ptr %274, align 4
  %279 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 4, i32 6
  %280 = load i8, ptr %279, align 4, !range !14
  %281 = icmp eq i8 %280, 0
  %282 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %283 = and i32 %278, -5
  %284 = select i1 %281, i32 0, i32 4
  %285 = or i32 %283, %284
  store i32 %285, ptr %282, align 4
  %286 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 4, i32 7
  %287 = load i16, ptr %286, align 2
  %288 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 20
  store i16 %287, ptr %288, align 2
  %289 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 4, i32 8
  %290 = load i8, ptr %289, align 4, !range !14
  %291 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 21
  store i8 %290, ptr %291, align 4
  %292 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 4, i32 9
  %293 = load i8, ptr %292, align 1, !range !14
  %294 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 23
  store i8 %293, ptr %294, align 2
  %295 = getelementptr inbounds %struct.cfg80211_assoc_request, ptr %1, i32 0, i32 4, i32 10
  %296 = load i8, ptr %295, align 2, !range !14
  %297 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 22
  store i8 %296, ptr %297, align 1
  %298 = load i32, ptr %16, align 8
  %299 = call i32 @ieee80211_cs_headroom(ptr noundef %13, ptr noundef %115, i32 noundef %298) #13
  %300 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 24
  store i32 %299, ptr %300, align 8
  store ptr %20, ptr %81, align 4
  %301 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %14, i32 0, i32 20
  store i8 0, ptr %301, align 1
  %302 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 3
  store i8 0, ptr %302, align 4
  %303 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %304 = load i32, ptr %303, align 4
  %305 = and i32 %304, 16
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %335

307:                                              ; preds = %270
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(22) %5, i8 0, i32 22, i1 false), !annotation !25
  %308 = load i32, ptr %272, align 4
  %309 = and i32 %308, 1
  %310 = icmp ne i32 %309, 0
  %311 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %122, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(22) %5, ptr noundef align 4 dereferenceable(22) %311, i32 22, i1 false)
  call void @ieee80211_apply_htcap_overrides(ptr noundef %0, ptr noundef nonnull %5) #13
  %312 = load i32, ptr %303, align 4
  %313 = and i32 %312, 1024
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %324

315:                                              ; preds = %307
  %316 = load i16, ptr %311, align 4
  %317 = and i16 %316, 2
  %318 = icmp eq i16 %317, 0
  br i1 %318, label %324, label %319

319:                                              ; preds = %315
  %320 = load i16, ptr %5, align 2
  %321 = and i16 %320, 2
  %322 = icmp eq i16 %321, 0
  %323 = select i1 %322, i1 true, i1 %310
  br label %324

324:                                              ; preds = %319, %315, %307
  %325 = phi i1 [ %310, %307 ], [ %310, %315 ], [ %323, %319 ]
  %326 = and i32 %312, 2048
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %324
  %329 = load i32, ptr %272, align 4
  %330 = and i32 %329, 2
  %331 = icmp ne i32 %330, 0
  %332 = select i1 %331, i1 true, i1 %325
  br label %333

333:                                              ; preds = %328, %324
  %334 = phi i1 [ %325, %324 ], [ %332, %328 ]
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %5) #13
  br label %335

335:                                              ; preds = %333, %270
  %336 = phi i32 [ %304, %270 ], [ %312, %333 ]
  %337 = phi i1 [ false, %270 ], [ %334, %333 ]
  %338 = load i32, ptr %272, align 4
  %339 = and i32 %338, 1
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %344, label %341

341:                                              ; preds = %335
  %342 = or i32 %336, 67600
  store i32 %342, ptr %303, align 4
  %343 = load i32, ptr %272, align 4
  br label %344

344:                                              ; preds = %341, %335
  %345 = phi i32 [ %342, %341 ], [ %336, %335 ]
  %346 = phi i32 [ %343, %341 ], [ %338, %335 ]
  %347 = and i32 %346, 2
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %352, label %349

349:                                              ; preds = %344
  %350 = or i32 %345, 2048
  store i32 %350, ptr %303, align 4
  %351 = load i32, ptr %272, align 4
  br label %352

352:                                              ; preds = %349, %344
  %353 = phi i32 [ %350, %349 ], [ %345, %344 ]
  %354 = phi i32 [ %351, %349 ], [ %346, %344 ]
  %355 = and i32 %354, 16
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %359, label %357

357:                                              ; preds = %352
  %358 = or i32 %353, 65536
  store i32 %358, ptr %303, align 4
  br label %359

359:                                              ; preds = %357, %352
  %360 = load ptr, ptr %1, align 4
  %361 = call fastcc i32 @ieee80211_prep_connection(ptr noundef %0, ptr noundef %360, i1 noundef zeroext true, i1 noundef zeroext %337)
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %482

363:                                              ; preds = %359
  %364 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 4
  %365 = load i32, ptr %364, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %374

367:                                              ; preds = %363
  %368 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %14, i32 0, i32 17
  %369 = load i8, ptr %368, align 2, !range !14
  %370 = icmp eq i8 %369, 0
  %371 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 44
  br i1 %370, label %373, label %372

372:                                              ; preds = %367
  store i32 3, ptr %371, align 8
  br label %376

373:                                              ; preds = %367
  store i32 1, ptr %371, align 8
  br label %376

374:                                              ; preds = %363
  %375 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 44
  store i32 %365, ptr %375, align 8
  br label %376

376:                                              ; preds = %374, %373, %372
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %377 = load ptr, ptr %1, align 4
  %378 = getelementptr inbounds %struct.cfg80211_bss, ptr %377, i32 0, i32 3
  %379 = load volatile ptr, ptr %378, align 4
  %380 = load ptr, ptr %12, align 4
  %381 = getelementptr inbounds %struct.ieee80211_hw, ptr %380, i32 0, i32 4
  %382 = load volatile i32, ptr %381, align 4
  %383 = and i32 %382, 32
  %384 = icmp eq i32 %383, 0
  %385 = icmp ne ptr %379, null
  %386 = select i1 %384, i1 true, i1 %385
  br i1 %386, label %402, label %387

387:                                              ; preds = %376
  %388 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %389 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  %390 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %388, ptr noundef %389) #14
  %391 = load volatile i32, ptr @jiffies, align 64
  %392 = load ptr, ptr %1, align 4
  %393 = getelementptr inbounds %struct.cfg80211_bss, ptr %392, i32 0, i32 9
  %394 = load i16, ptr %393, align 4
  %395 = zext i16 %394 to i32
  %396 = shl nuw nsw i32 %395, 10
  %397 = call i32 @__usecs_to_jiffies(i32 noundef %396) #13
  %398 = add i32 %397, %391
  %399 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 2
  store i32 %398, ptr %399, align 8
  %400 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 13
  store i8 1, ptr %400, align 2
  %401 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 11
  store i8 1, ptr %401, align 4
  br label %454

402:                                              ; preds = %376
  br i1 %385, label %403, label %450

403:                                              ; preds = %402
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1
  call fastcc void @ieee80211_get_dtim(ptr noundef nonnull %379, ptr noundef nonnull %6, ptr noundef %301)
  store i8 1, ptr %302, align 4
  %404 = load volatile i32, ptr @jiffies, align 64
  %405 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 2
  store i32 %404, ptr %405, align 8
  %406 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 13
  store i8 1, ptr %406, align 2
  %407 = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 4
  %408 = load volatile i32, ptr %407, align 4
  %409 = and i32 %408, 16777216
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %418, label %411

411:                                              ; preds = %403
  %412 = load i64, ptr %379, align 8
  %413 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 21
  store i64 %412, ptr %413, align 8
  %414 = load i32, ptr %15, align 4
  %415 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 22
  store i32 %414, ptr %415, align 8
  %416 = load i8, ptr %6, align 1
  %417 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 23
  store i8 %416, ptr %417, align 4
  br label %418

418:                                              ; preds = %411, %403
  %419 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %379, i32 0, i32 4
  %420 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %379, i32 0, i32 2
  %421 = load i32, ptr %420, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 55, ptr %3, align 1
  %422 = call ptr @cfg80211_find_elem_match(i8 noundef zeroext -1, ptr noundef %419, i32 noundef %421, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %423 = icmp eq ptr %422, null
  br i1 %423, label %431, label %424

424:                                              ; preds = %418
  %425 = getelementptr inbounds %struct.element, ptr %422, i32 0, i32 1
  %426 = load i8, ptr %425, align 1
  %427 = icmp ugt i8 %426, 2
  br i1 %427, label %428, label %431

428:                                              ; preds = %424
  %429 = getelementptr %struct.element, ptr %422, i32 2
  %430 = load i8, ptr %429, align 1
  br label %431

431:                                              ; preds = %428, %424, %418
  %432 = phi i8 [ %430, %428 ], [ 0, %424 ], [ 0, %418 ]
  %433 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 55
  store i8 %432, ptr %433, align 2
  %434 = load i32, ptr %420, align 8
  %435 = call ptr @cfg80211_find_elem_match(i8 noundef zeroext 127, ptr noundef %419, i32 noundef %434, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  %436 = icmp eq ptr %435, null
  br i1 %436, label %446, label %437

437:                                              ; preds = %431
  %438 = getelementptr inbounds %struct.element, ptr %435, i32 0, i32 1
  %439 = load i8, ptr %438, align 1
  %440 = icmp ugt i8 %439, 10
  br i1 %440, label %441, label %446

441:                                              ; preds = %437
  %442 = getelementptr %struct.element, ptr %435, i32 6
  %443 = load i8, ptr %442, align 1
  %444 = and i8 %443, 8
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %446, label %447

446:                                              ; preds = %441, %437, %431
  br label %447

447:                                              ; preds = %446, %441
  %448 = phi i8 [ 0, %446 ], [ 1, %441 ]
  %449 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 54
  store i8 %448, ptr %449, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  br label %454

450:                                              ; preds = %402
  %451 = load volatile i32, ptr @jiffies, align 64
  %452 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 2
  store i32 %451, ptr %452, align 8
  %453 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 13
  store i8 1, ptr %453, align 2
  br label %454

454:                                              ; preds = %450, %447, %387
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %455 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %20, i32 0, i32 2
  %456 = load i32, ptr %455, align 8
  %457 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %458 = load volatile ptr, ptr %457, align 4
  %459 = icmp eq ptr %458, null
  br i1 %459, label %465, label %460

460:                                              ; preds = %454
  %461 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 0, i32 1
  %462 = load i32, ptr %461, align 8
  %463 = sub i32 %456, %462
  %464 = icmp slt i32 %463, 0
  br i1 %464, label %465, label %467

465:                                              ; preds = %460, %454
  %466 = call i32 @mod_timer(ptr noundef %14, i32 noundef %456) #13
  br label %467

467:                                              ; preds = %465, %460
  %468 = getelementptr inbounds %struct.cfg80211_bss, ptr %7, i32 1, i32 16, i32 1
  %469 = load i8, ptr %468, align 2
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %486, label %471

471:                                              ; preds = %467
  %472 = zext i8 %469 to i32
  %473 = and i32 %472, 1
  %474 = icmp eq i32 %473, 0
  %475 = and i32 %472, 2
  %476 = icmp eq i32 %475, 0
  %477 = select i1 %476, ptr @.str.62, ptr @.str.61
  %478 = select i1 %476, ptr @.str.60, ptr @.str.63
  %479 = select i1 %474, ptr %478, ptr %477
  %480 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %481 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %480, ptr noundef nonnull %479) #14
  br label %486

482:                                              ; preds = %359
  %483 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %483, i8 0, i32 6, i1 false) #13
  call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 128) #13
  store ptr null, ptr %81, align 4
  br label %484

484:                                              ; preds = %482, %162, %61, %57, %53
  %485 = phi i32 [ -22, %162 ], [ %361, %482 ], [ -16, %53 ], [ -16, %57 ], [ -16, %61 ]
  call void @kfree(ptr noundef nonnull %20) #13
  br label %486

486:                                              ; preds = %484, %471, %467, %30, %2
  %487 = phi i32 [ -22, %30 ], [ %485, %484 ], [ -12, %2 ], [ 0, %471 ], [ 0, %467 ]
  ret i32 %487
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_cs_headroom(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_apply_htcap_overrides(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_get_dtim(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 5, ptr noundef %4, i32 noundef %6, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  %8 = load i32, ptr %5, align 8
  %9 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 85, ptr noundef %4, i32 noundef %8, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  %10 = icmp eq ptr %7, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %7, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp ugt i8 %13, 1
  %15 = getelementptr i8, ptr %7, i32 2
  %16 = select i1 %14, ptr %15, ptr null
  %17 = icmp eq ptr %1, null
  br i1 %17, label %27, label %20

18:                                               ; preds = %3
  %19 = icmp eq ptr %1, null
  br i1 %19, label %32, label %23

20:                                               ; preds = %11
  br i1 %14, label %21, label %23

21:                                               ; preds = %20
  %22 = load i8, ptr %16, align 1
  br label %23

23:                                               ; preds = %21, %20, %18
  %24 = phi i1 [ true, %21 ], [ false, %20 ], [ false, %18 ]
  %25 = phi ptr [ %15, %21 ], [ null, %20 ], [ null, %18 ]
  %26 = phi i8 [ %22, %21 ], [ 0, %20 ], [ 0, %18 ]
  store i8 %26, ptr %1, align 1
  br label %27

27:                                               ; preds = %23, %11
  %28 = phi i1 [ false, %23 ], [ true, %11 ]
  %29 = phi ptr [ %25, %23 ], [ %16, %11 ]
  %30 = phi i1 [ %24, %23 ], [ %14, %11 ]
  %31 = icmp eq ptr %2, null
  br i1 %31, label %41, label %34

32:                                               ; preds = %18
  %33 = icmp eq ptr %2, null
  br i1 %33, label %41, label %38

34:                                               ; preds = %27
  br i1 %30, label %35, label %38

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.ieee80211_tim_ie, ptr %29, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  br label %38

38:                                               ; preds = %35, %34, %32
  %39 = phi i1 [ %28, %35 ], [ %28, %34 ], [ true, %32 ]
  %40 = phi i8 [ %37, %35 ], [ 0, %34 ], [ 0, %32 ]
  store i8 %40, ptr %2, align 1
  br label %41

41:                                               ; preds = %38, %32, %27
  %42 = phi i1 [ true, %32 ], [ false, %38 ], [ true, %27 ]
  %43 = phi i1 [ true, %32 ], [ %39, %38 ], [ %28, %27 ]
  %44 = icmp eq ptr %9, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %9, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = icmp ult i8 %47, 3
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  br i1 %43, label %53, label %50

50:                                               ; preds = %49
  %51 = getelementptr i8, ptr %9, i32 4
  %52 = load i8, ptr %51, align 1
  store i8 %52, ptr %1, align 1
  br label %53

53:                                               ; preds = %50, %49
  br i1 %42, label %57, label %54

54:                                               ; preds = %53
  %55 = getelementptr i8, ptr %9, i32 3
  %56 = load i8, ptr %55, align 1
  store i8 %56, ptr %2, align 1
  br label %57

57:                                               ; preds = %54, %53, %45, %41
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drv_mgd_prepare_tx(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @drv_mgd_prepare_tx.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %17, !prof !8

11:                                               ; preds = %3
  store i1 true, ptr @drv_mgd_prepare_tx.__already_done, align 1
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %16 = select i1 %14, ptr %15, ptr %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 828, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef %16, i32 noundef %5) #13
  br label %17

17:                                               ; preds = %11, %3
  br i1 %7, label %72, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %20 = load i32, ptr %19, align 8
  %21 = icmp ne i32 %20, 2
  %22 = load i1, ptr @drv_mgd_prepare_tx.__already_done.146, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !8

25:                                               ; preds = %18
  store i1 true, ptr @drv_mgd_prepare_tx.__already_done.146, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 830, i32 noundef 9, ptr noundef null) #13
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i16, ptr %2, align 2
  %28 = getelementptr inbounds %struct.ieee80211_prep_tx_info, ptr %2, i32 0, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = getelementptr inbounds %struct.ieee80211_prep_tx_info, ptr %2, i32 0, i32 2
  %31 = load i8, ptr %30, align 2
  %32 = and i8 %31, 1
  %33 = icmp ne i8 %32, 0
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_mgd_prepare_tx, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %26
  %37 = tail call ptr @llvm.thread.pointer() #13
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 5
  %41 = getelementptr i32, ptr @__cpu_online_mask, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !36
  %48 = tail call i32 @__traceiter_drv_mgd_prepare_tx(ptr noundef null, ptr noundef %0, ptr noundef %1, i16 noundef zeroext %27, i16 noundef zeroext %29, i1 noundef zeroext %33) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  br label %49

49:                                               ; preds = %47, %36, %26
  %50 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ieee80211_ops, ptr %51, i32 0, i32 66
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  tail call void %53(ptr noundef %0, ptr noundef %19, ptr noundef %2) #13
  br label %56

56:                                               ; preds = %55, %49
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %71 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  br label %72

72:                                               ; preds = %70, %59, %56, %17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drv_mgd_complete_tx(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @drv_mgd_complete_tx.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %17, !prof !8

11:                                               ; preds = %3
  store i1 true, ptr @drv_mgd_complete_tx.__already_done, align 1
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %16 = select i1 %14, ptr %15, ptr %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 845, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef %16, i32 noundef %5) #13
  br label %17

17:                                               ; preds = %11, %3
  br i1 %7, label %72, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %20 = load i32, ptr %19, align 8
  %21 = icmp ne i32 %20, 2
  %22 = load i1, ptr @drv_mgd_complete_tx.__already_done.147, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !8

25:                                               ; preds = %18
  store i1 true, ptr @drv_mgd_complete_tx.__already_done.147, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 847, i32 noundef 9, ptr noundef null) #13
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i16, ptr %2, align 2
  %28 = getelementptr inbounds %struct.ieee80211_prep_tx_info, ptr %2, i32 0, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = getelementptr inbounds %struct.ieee80211_prep_tx_info, ptr %2, i32 0, i32 2
  %31 = load i8, ptr %30, align 2
  %32 = and i8 %31, 1
  %33 = icmp ne i8 %32, 0
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_mgd_complete_tx, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %26
  %37 = tail call ptr @llvm.thread.pointer() #13
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 5
  %41 = getelementptr i32, ptr @__cpu_online_mask, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !38
  %48 = tail call i32 @__traceiter_drv_mgd_complete_tx(ptr noundef null, ptr noundef %0, ptr noundef %1, i16 noundef zeroext %27, i16 noundef zeroext %29, i1 noundef zeroext %33) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !39
  br label %49

49:                                               ; preds = %47, %36, %26
  %50 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ieee80211_ops, ptr %51, i32 0, i32 67
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  tail call void %53(ptr noundef %0, ptr noundef %19, ptr noundef %2) #13
  br label %56

56:                                               ; preds = %55, %49
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %71 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  br label %72

72:                                               ; preds = %70, %59, %56, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_mgd_disassoc(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [26 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(26) %3, i8 0, i32 26, i1 false), !annotation !25
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %10 = getelementptr inbounds %struct.cfg80211_bss, ptr %5, i32 0, i32 11
  %11 = getelementptr inbounds %struct.cfg80211_disassoc_request, ptr %1, i32 0, i32 3
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = tail call ptr @ieee80211_get_reason_code_string(i16 noundef zeroext %12)
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %9, ptr noundef %10, i32 noundef %13, ptr noundef nonnull %14) #14
  %16 = load i16, ptr %11, align 4
  %17 = getelementptr inbounds %struct.cfg80211_disassoc_request, ptr %1, i32 0, i32 4
  %18 = load i8, ptr %17, align 2, !range !14
  %19 = icmp eq i8 %18, 0
  call fastcc void @ieee80211_set_disassoc(ptr noundef %0, i16 noundef zeroext 160, i16 noundef zeroext %16, i1 noundef zeroext %19, ptr noundef nonnull %3)
  %20 = load i16, ptr %11, align 4
  call fastcc void @ieee80211_report_disconnect(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 26, i1 noundef zeroext true, i16 noundef zeroext %20, i1 noundef zeroext false)
  br label %21

21:                                               ; preds = %8, %2
  %22 = phi i32 [ 0, %8 ], [ -67, %2 ]
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %3) #13
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_mgd_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 11
  %3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %2) #13
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 12
  %5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %4) #13
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24
  %7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %6) #13
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 16
  %9 = tail call zeroext i1 @cancel_work_sync(ptr noundef %8) #13
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 27
  %11 = tail call zeroext i1 @cancel_work_sync(ptr noundef %10) #13
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 52
  %13 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %12) #13
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 7
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %21 = tail call i32 @del_timer_sync(ptr noundef %20) #13
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr inbounds %struct.cfg80211_bss, ptr %22, i32 0, i32 11
  %24 = tail call i32 @sta_info_destroy_addr(ptr noundef %0, ptr noundef %23) #13
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %25, i8 0, i32 6, i1 false) #13
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 128) #13
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 5
  store i8 0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ieee80211_local, ptr %29, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %30) #13
  tail call void @ieee80211_vif_release_channel(ptr noundef %0) #13
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr inbounds %struct.ieee80211_local, ptr %31, i32 0, i32 66
  tail call void @mutex_unlock(ptr noundef %32) #13
  tail call void @kfree(ptr noundef nonnull %16) #13
  store ptr null, ptr %15, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %34 = load ptr, ptr %33, align 8
  tail call void @cfg80211_assoc_timeout(ptr noundef %34, ptr noundef %19) #13
  br label %35

35:                                               ; preds = %18, %1
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 22
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %56, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %41 = tail call i32 @del_timer_sync(ptr noundef %40) #13
  %42 = load ptr, ptr %37, align 4
  %43 = getelementptr inbounds %struct.cfg80211_bss, ptr %42, i32 0, i32 11
  %44 = tail call i32 @sta_info_destroy_addr(ptr noundef %0, ptr noundef %43) #13
  %45 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %45, i8 0, i32 6, i1 false) #13
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 128) #13
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  store i32 0, ptr %46, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ieee80211_local, ptr %48, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %49) #13
  tail call void @ieee80211_vif_release_channel(ptr noundef %0) #13
  %50 = load ptr, ptr %47, align 4
  %51 = getelementptr inbounds %struct.ieee80211_local, ptr %50, i32 0, i32 66
  tail call void @mutex_unlock(ptr noundef %51) #13
  %52 = load ptr, ptr %47, align 4
  %53 = getelementptr inbounds %struct.ieee80211_hw, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %37, align 4
  tail call void @cfg80211_put_bss(ptr noundef %54, ptr noundef %55) #13
  tail call void @kfree(ptr noundef nonnull %37) #13
  store ptr null, ptr %36, align 4
  br label %56

56:                                               ; preds = %39, %35
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 104
  tail call void @_raw_spin_lock_bh(ptr noundef %57) #13
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 100
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  tail call void @kfree_skb_reason(ptr noundef nonnull %59, i32 noundef 0) #13
  store ptr null, ptr %58, align 4
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 96
  store ptr null, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %65 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 1
  %66 = load ptr, ptr %65, align 4
  tail call void @kfree(ptr noundef %66) #13
  store ptr null, ptr %65, align 4
  %67 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 1, i32 0, i32 0, i32 1
  store i32 0, ptr %67, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %57) #13
  %68 = tail call i32 @del_timer_sync(ptr noundef %64) #13
  tail call void @mutex_unlock(ptr noundef %14) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_cqm_rssi_notify(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -2264
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_cqm_rssi_notify, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = tail call ptr @llvm.thread.pointer() #13
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  %20 = tail call i32 @__traceiter_api_cqm_rssi_notify(ptr noundef null, ptr noundef %5, i32 noundef %1, i32 noundef %2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !41
  br label %21

21:                                               ; preds = %19, %8, %4
  %22 = getelementptr i8, ptr %0, i32 -1912
  %23 = load ptr, ptr %22, align 8
  tail call void @cfg80211_cqm_rssi_notify(ptr noundef %23, i32 noundef %1, i32 noundef %2, i32 noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_cqm_rssi_notify(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_cqm_beacon_loss_notify(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -2264
  %4 = getelementptr i8, ptr %0, i32 -1908
  %5 = load ptr, ptr %4, align 4
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_cqm_beacon_loss_notify, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #13
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !42
  %20 = tail call i32 @__traceiter_api_cqm_beacon_loss_notify(ptr noundef null, ptr noundef %5, ptr noundef %3) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !43
  br label %21

21:                                               ; preds = %19, %8, %2
  %22 = getelementptr i8, ptr %0, i32 -1912
  %23 = load ptr, ptr %22, align 8
  tail call void @cfg80211_cqm_beacon_loss_notify(ptr noundef %23, i32 noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_cqm_beacon_loss_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_chswitch_done(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_tx_frames_pending(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_bool(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_conf_tx(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_beacon_loss(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_connection_loss(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_disconnect(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_bssid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_rx_bss_info(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %3, i32 0, i32 5
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 8191
  %12 = zext i16 %11 to i32
  %13 = mul nuw nsw i32 %12, 1000
  %14 = and i16 %10, 8192
  %15 = icmp eq i16 %14, 0
  %16 = select i1 %15, i32 0, i32 500
  %17 = add nuw nsw i32 %13, %16
  %18 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %8, i32 noundef %17) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = tail call ptr @ieee80211_bss_info_update(ptr noundef %6, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %18) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ieee80211_bss, ptr %21, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 25
  store ptr %25, ptr %26, align 4
  tail call void @ieee80211_rx_bss_put(ptr noundef %6, ptr noundef nonnull %21) #13
  br label %27

27:                                               ; preds = %23, %20, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_handle_beacon_sig(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca %struct.ieee80211_event, align 4
  %7 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %1, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = and i32 %8, -513
  store i32 %12, ptr %7, align 4
  %13 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %1, i32 0, i32 39
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %1, i32 0, i32 42
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %1, i32 0, i32 40
  store i32 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %1, i32 0, i32 45
  store i32 0, ptr %16, align 4
  br label %21

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %1, i32 0, i32 40
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i32 [ %20, %17 ], [ 1, %11 ]
  %23 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %1, i32 0, i32 39
  %24 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %4, i32 0, i32 13
  %25 = load i8, ptr %24, align 2
  %26 = sext i8 %25 to i32
  %27 = load volatile i32, ptr %23, align 4
  %28 = icmp eq i32 %27, 0
  %29 = mul i32 %27, 3
  %30 = mul nsw i32 %26, -16
  %31 = add i32 %29, %30
  %32 = lshr i32 %31, 2
  %33 = select i1 %28, i32 %30, i32 %32
  store volatile i32 %33, ptr %23, align 4
  %34 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %1, i32 0, i32 43
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %1, i32 0, i32 44
  %37 = load i32, ptr %36, align 4
  %38 = icmp ne i32 %35, %37
  %39 = icmp ugt i32 %22, 3
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %139

41:                                               ; preds = %21
  %42 = lshr i32 %33, 4
  %43 = sub nsw i32 0, %42
  %44 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %1, i32 0, i32 45
  %45 = load i32, ptr %44, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false)
  %46 = icmp slt i32 %37, %43
  br i1 %46, label %47, label %91

47:                                               ; preds = %41
  %48 = icmp sle i32 %45, %35
  %49 = icmp eq i32 %45, 0
  %50 = or i1 %48, %49
  br i1 %50, label %51, label %91

51:                                               ; preds = %47
  store i32 %43, ptr %44, align 4
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_event_callback, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = tail call ptr @llvm.thread.pointer() #13
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @__cpu_online_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  %66 = call i32 @__traceiter_drv_event_callback(ptr noundef null, ptr noundef %3, ptr noundef %0, ptr noundef nonnull %6) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  br label %67

67:                                               ; preds = %65, %54, %51
  %68 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 8
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.ieee80211_ops, ptr %69, i32 0, i32 60
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  call void %71(ptr noundef %3, ptr noundef %74, ptr noundef nonnull %6) #13
  br label %75

75:                                               ; preds = %73, %67
  %76 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %138

78:                                               ; preds = %75
  %79 = tail call ptr @llvm.thread.pointer() #13
  %80 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 2
  %81 = load i32, ptr %80, align 8
  %82 = lshr i32 %81, 5
  %83 = getelementptr i32, ptr @__cpu_online_mask, i32 %82
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %81, 31
  %86 = shl nuw i32 1, %85
  %87 = and i32 %86, %84
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %138, label %89

89:                                               ; preds = %78
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %90 = call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %3) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  br label %138

91:                                               ; preds = %47, %41
  %92 = icmp sgt i32 %35, %43
  br i1 %92, label %93, label %138

93:                                               ; preds = %91
  %94 = icmp sge i32 %45, %37
  %95 = icmp eq i32 %45, 0
  %96 = or i1 %94, %95
  br i1 %96, label %97, label %138

97:                                               ; preds = %93
  store i32 %43, ptr %44, align 4
  %98 = getelementptr inbounds %struct.ieee80211_event, ptr %6, i32 0, i32 1
  store i32 1, ptr %98, align 4
  %99 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_event_callback, i32 0, i32 1), align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = tail call ptr @llvm.thread.pointer() #13
  %103 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %104 = load i32, ptr %103, align 8
  %105 = lshr i32 %104, 5
  %106 = getelementptr i32, ptr @__cpu_online_mask, i32 %105
  %107 = load volatile i32, ptr %106, align 4
  %108 = and i32 %104, 31
  %109 = shl nuw i32 1, %108
  %110 = and i32 %109, %107
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %101
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  %113 = call i32 @__traceiter_drv_event_callback(ptr noundef null, ptr noundef %3, ptr noundef %0, ptr noundef nonnull %6) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  br label %114

114:                                              ; preds = %112, %101, %97
  %115 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 8
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.ieee80211_ops, ptr %116, i32 0, i32 60
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  call void %118(ptr noundef %3, ptr noundef %121, ptr noundef nonnull %6) #13
  br label %122

122:                                              ; preds = %120, %114
  %123 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %122
  %126 = tail call ptr @llvm.thread.pointer() #13
  %127 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %128 = load i32, ptr %127, align 8
  %129 = lshr i32 %128, 5
  %130 = getelementptr i32, ptr @__cpu_online_mask, i32 %129
  %131 = load volatile i32, ptr %130, align 4
  %132 = and i32 %128, 31
  %133 = shl nuw i32 1, %132
  %134 = and i32 %133, %131
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %125
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %137 = call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %3) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  br label %138

138:                                              ; preds = %136, %125, %122, %93, %91, %89, %78, %75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %139

139:                                              ; preds = %138, %21
  %140 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %2, i32 0, i32 28
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %209, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %1, i32 0, i32 40
  %145 = load i32, ptr %144, align 4
  %146 = icmp ugt i32 %145, 3
  br i1 %146, label %147, label %209

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 10
  %149 = load i32, ptr %148, align 8
  %150 = and i32 %149, 2
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %209

152:                                              ; preds = %147
  %153 = load i32, ptr %23, align 4
  %154 = lshr i32 %153, 4
  %155 = sub nsw i32 0, %154
  %156 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %1, i32 0, i32 42
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %2, i32 0, i32 29
  %159 = load i32, ptr %158, align 8
  %160 = icmp sgt i32 %141, %155
  br i1 %160, label %161, label %182

161:                                              ; preds = %152
  %162 = icmp eq i32 %157, 0
  %163 = sub i32 %157, %159
  %164 = icmp sgt i32 %163, %155
  %165 = select i1 %162, i1 true, i1 %164
  br i1 %165, label %166, label %182

166:                                              ; preds = %161
  store i32 %155, ptr %156, align 4
  %167 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_cqm_rssi_notify, i32 0, i32 1), align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %205

169:                                              ; preds = %166
  %170 = tail call ptr @llvm.thread.pointer() #13
  %171 = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 2
  %172 = load i32, ptr %171, align 8
  %173 = lshr i32 %172, 5
  %174 = getelementptr i32, ptr @__cpu_online_mask, i32 %173
  %175 = load volatile i32, ptr %174, align 4
  %176 = and i32 %172, 31
  %177 = shl nuw i32 1, %176
  %178 = and i32 %177, %175
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %205, label %180

180:                                              ; preds = %169
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  %181 = call i32 @__traceiter_api_cqm_rssi_notify(ptr noundef null, ptr noundef %0, i32 noundef 0, i32 noundef %155) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !41
  br label %205

182:                                              ; preds = %161, %152
  %183 = icmp slt i32 %141, %155
  br i1 %183, label %184, label %209

184:                                              ; preds = %182
  %185 = icmp eq i32 %157, 0
  %186 = add i32 %159, %157
  %187 = icmp slt i32 %186, %155
  %188 = select i1 %185, i1 true, i1 %187
  br i1 %188, label %189, label %209

189:                                              ; preds = %184
  store i32 %155, ptr %156, align 4
  %190 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_cqm_rssi_notify, i32 0, i32 1), align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %189
  %193 = tail call ptr @llvm.thread.pointer() #13
  %194 = getelementptr inbounds %struct.thread_info, ptr %193, i32 0, i32 2
  %195 = load i32, ptr %194, align 8
  %196 = lshr i32 %195, 5
  %197 = getelementptr i32, ptr @__cpu_online_mask, i32 %196
  %198 = load volatile i32, ptr %197, align 4
  %199 = and i32 %195, 31
  %200 = shl nuw i32 1, %199
  %201 = and i32 %200, %198
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %192
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  %204 = call i32 @__traceiter_api_cqm_rssi_notify(ptr noundef null, ptr noundef %0, i32 noundef 1, i32 noundef %155) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !41
  br label %205

205:                                              ; preds = %203, %192, %189, %180, %169, %166
  %206 = phi i32 [ 0, %166 ], [ 0, %169 ], [ 0, %180 ], [ 1, %189 ], [ 1, %192 ], [ 1, %203 ]
  %207 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %208 = load ptr, ptr %207, align 8
  call void @cfg80211_cqm_rssi_notify(ptr noundef %208, i32 noundef %206, i32 noundef %155, i32 noundef 3264) #13
  br label %209

209:                                              ; preds = %205, %184, %182, %147, %143, %139
  %210 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %2, i32 0, i32 30
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %272, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %1, i32 0, i32 40
  %215 = load i32, ptr %214, align 4
  %216 = icmp ugt i32 %215, 3
  br i1 %216, label %217, label %272

217:                                              ; preds = %213
  %218 = load i32, ptr %23, align 4
  %219 = lshr i32 %218, 4
  %220 = sub nsw i32 0, %219
  %221 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %1, i32 0, i32 42
  %222 = load i32, ptr %221, align 4
  %223 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %2, i32 0, i32 31
  %224 = load i32, ptr %223, align 8
  %225 = icmp sgt i32 %211, %220
  br i1 %225, label %226, label %246

226:                                              ; preds = %217
  %227 = icmp ne i32 %222, 0
  %228 = icmp slt i32 %222, %211
  %229 = select i1 %227, i1 %228, i1 false
  br i1 %229, label %246, label %230

230:                                              ; preds = %226
  store i32 %220, ptr %221, align 4
  %231 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_cqm_rssi_notify, i32 0, i32 1), align 4
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %233, label %268

233:                                              ; preds = %230
  %234 = tail call ptr @llvm.thread.pointer() #13
  %235 = getelementptr inbounds %struct.thread_info, ptr %234, i32 0, i32 2
  %236 = load i32, ptr %235, align 8
  %237 = lshr i32 %236, 5
  %238 = getelementptr i32, ptr @__cpu_online_mask, i32 %237
  %239 = load volatile i32, ptr %238, align 4
  %240 = and i32 %236, 31
  %241 = shl nuw i32 1, %240
  %242 = and i32 %241, %239
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %268, label %244

244:                                              ; preds = %233
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  %245 = call i32 @__traceiter_api_cqm_rssi_notify(ptr noundef null, ptr noundef %0, i32 noundef 0, i32 noundef %220) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !41
  br label %268

246:                                              ; preds = %226, %217
  %247 = icmp slt i32 %224, %220
  br i1 %247, label %248, label %272

248:                                              ; preds = %246
  %249 = icmp ne i32 %222, 0
  %250 = icmp sgt i32 %222, %224
  %251 = select i1 %249, i1 %250, i1 false
  br i1 %251, label %272, label %252

252:                                              ; preds = %248
  store i32 %220, ptr %221, align 4
  %253 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_cqm_rssi_notify, i32 0, i32 1), align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %268

255:                                              ; preds = %252
  %256 = tail call ptr @llvm.thread.pointer() #13
  %257 = getelementptr inbounds %struct.thread_info, ptr %256, i32 0, i32 2
  %258 = load i32, ptr %257, align 8
  %259 = lshr i32 %258, 5
  %260 = getelementptr i32, ptr @__cpu_online_mask, i32 %259
  %261 = load volatile i32, ptr %260, align 4
  %262 = and i32 %258, 31
  %263 = shl nuw i32 1, %262
  %264 = and i32 %263, %261
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %255
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  %267 = call i32 @__traceiter_api_cqm_rssi_notify(ptr noundef null, ptr noundef %0, i32 noundef 1, i32 noundef %220) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !41
  br label %268

268:                                              ; preds = %266, %255, %252, %244, %233, %230
  %269 = phi i32 [ 0, %230 ], [ 0, %233 ], [ 0, %244 ], [ 1, %252 ], [ 1, %255 ], [ 1, %266 ]
  %270 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %271 = load ptr, ptr %270, align 8
  call void @cfg80211_cqm_rssi_notify(ptr noundef %271, i32 noundef %269, i32 noundef %220, i32 noundef 3264) #13
  br label %272

272:                                              ; preds = %268, %248, %246, %213, %209
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802_11_parse_elems_crc(ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_check_tim(ptr noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #10 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ult i8 %1, 4
  %6 = or i1 %4, %5
  br i1 %6, label %31, label %7, !prof !8

7:                                                ; preds = %3
  %8 = lshr i16 %2, 3
  %9 = trunc i16 %2 to i8
  %10 = and i8 %9, 7
  %11 = shl nuw i8 1, %10
  %12 = getelementptr inbounds %struct.ieee80211_tim_ie, ptr %0, i32 0, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, -2
  %15 = and i16 %8, 255
  %16 = zext i8 %14 to i16
  %17 = icmp ult i16 %15, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %7
  %19 = add i8 %1, -4
  %20 = add i8 %19, %14
  %21 = zext i8 %20 to i16
  %22 = icmp ugt i16 %15, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = trunc i16 %8 to i8
  %25 = sub i8 %24, %14
  %26 = zext i8 %25 to i32
  %27 = getelementptr %struct.ieee80211_tim_ie, ptr %0, i32 0, i32 3, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, %11
  %30 = icmp ne i8 %29, 0
  br label %31

31:                                               ; preds = %23, %18, %7, %3
  %32 = phi i1 [ %30, %23 ], [ false, %3 ], [ false, %18 ], [ false, %7 ]
  ret i1 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_get_p2p_attr(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_chswitch_post_beacon(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 4
  %6 = load i8, ptr %5, align 1, !range !14
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1219, i32 noundef 9, ptr noundef null) #13
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 30
  %11 = load i8, ptr %10, align 8, !range !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @ieee80211_wake_vif_queues(ptr noundef %3, ptr noundef %0, i32 noundef 2) #13
  store i8 0, ptr %10, align 8
  br label %14

14:                                               ; preds = %13, %9
  store i8 0, ptr %5, align 1
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 10
  store i8 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %4, i32 0, i32 27
  store i8 0, ptr %16, align 2
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  %22 = load i1, ptr @drv_post_channel_switch.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %31, !prof !8

25:                                               ; preds = %14
  store i1 true, ptr @drv_post_channel_switch.__already_done, align 1
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %30 = select i1 %28, ptr %29, ptr %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 1069, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef %30, i32 noundef %19) #13
  br label %31

31:                                               ; preds = %25, %14
  br i1 %21, label %76, label %32

32:                                               ; preds = %31
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_post_channel_switch, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !44
  %47 = tail call i32 @__traceiter_drv_post_channel_switch(ptr noundef null, ptr noundef %17, ptr noundef %0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !45
  br label %48

48:                                               ; preds = %46, %35, %32
  %49 = getelementptr inbounds %struct.ieee80211_local, ptr %17, i32 0, i32 8
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ieee80211_ops, ptr %50, i32 0, i32 79
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %56 = tail call i32 %52(ptr noundef %17, ptr noundef %55) #13
  br label %57

57:                                               ; preds = %54, %48
  %58 = phi i32 [ %56, %54 ], [ 0, %48 ]
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = tail call ptr @llvm.thread.pointer() #13
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr @__cpu_online_mask, i32 %65
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %61
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  %73 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %17, i32 noundef %58) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  br label %74

74:                                               ; preds = %72, %61, %57
  %75 = icmp eq i32 %58, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %74, %31
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %77) #14
  %79 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 16
  tail call void @ieee80211_queue_work(ptr noundef %3, ptr noundef %79) #13
  br label %84

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 36
  tail call void @cfg80211_ch_switch_notify(ptr noundef %82, ptr noundef %83) #13
  br label %84

84:                                               ; preds = %80, %76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_sta_wmm_params(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, ptr noundef readonly %4) unnamed_addr #0 {
  %6 = alloca [4 x %struct.ieee80211_tx_queue_params], align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_ops, ptr %8, i32 0, i32 40
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %223, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %14 = load i16, ptr %13, align 4
  %15 = icmp ult i16 %14, 4
  %16 = icmp eq ptr %2, null
  %17 = or i1 %16, %15
  %18 = icmp ult i32 %3, 8
  %19 = or i1 %18, %17
  br i1 %19, label %223, label %20

20:                                               ; preds = %12
  %21 = getelementptr i8, ptr %2, i32 5
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %24, label %223

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 15
  %31 = load i32, ptr %30, align 4
  %32 = trunc i32 %31 to i8
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i8 [ %32, %29 ], [ 0, %24 ]
  %35 = getelementptr i8, ptr %2, i32 6
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, 15
  %38 = zext i8 %37 to i32
  %39 = icmp ne ptr %4, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i8, ptr %4, align 1
  %42 = and i8 %41, 15
  %43 = zext i8 %42 to i32
  br label %44

44:                                               ; preds = %40, %33
  %45 = phi i32 [ %43, %40 ], [ -1, %33 ]
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 20
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %38
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 22
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %45, %51
  br i1 %52, label %223, label %53

53:                                               ; preds = %49, %44
  store i32 %38, ptr %46, align 4
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 22
  store i32 %45, ptr %54, align 4
  %55 = add i32 %3, -8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(56) %6, i8 0, i32 56, i1 false)
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 13
  store i8 0, ptr %56, align 2
  %57 = icmp ugt i32 %55, 3
  br i1 %57, label %58, label %161

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %2, i32 8
  %60 = and i8 %34, 1
  %61 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %6, i32 0, i32 6
  %62 = zext i1 %39 to i8
  %63 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %6, i32 0, i32 7
  %64 = getelementptr inbounds %struct.ieee80211_mu_edca_param_set, ptr %4, i32 0, i32 4
  %65 = and i8 %34, 2
  %66 = getelementptr inbounds [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 1, i32 6
  %67 = getelementptr inbounds [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 1, i32 7
  %68 = getelementptr inbounds %struct.ieee80211_mu_edca_param_set, ptr %4, i32 0, i32 3
  %69 = and i8 %34, 4
  %70 = getelementptr inbounds [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 3, i32 6
  %71 = getelementptr inbounds [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 3, i32 7
  %72 = getelementptr inbounds %struct.ieee80211_mu_edca_param_set, ptr %4, i32 0, i32 2
  %73 = and i8 %34, 8
  %74 = getelementptr inbounds [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 2, i32 6
  %75 = getelementptr inbounds [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 2, i32 7
  %76 = getelementptr inbounds %struct.ieee80211_mu_edca_param_set, ptr %4, i32 0, i32 1
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  br label %82

78:                                               ; preds = %157
  %79 = getelementptr inbounds [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 0, i32 1
  %80 = load i16, ptr %79, align 2
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %161, label %165

82:                                               ; preds = %157, %58
  %83 = phi i32 [ %55, %58 ], [ %158, %157 ]
  %84 = phi ptr [ %59, %58 ], [ %159, %157 ]
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = lshr i32 %86, 5
  %88 = and i32 %87, 3
  %89 = lshr i32 %86, 4
  %90 = and i32 %89, 1
  switch i32 %88, label %112 [
    i32 1, label %91
    i32 2, label %98
    i32 3, label %105
  ]

91:                                               ; preds = %82
  %92 = icmp eq i32 %90, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %91
  %94 = load i8, ptr %56, align 2
  %95 = or i8 %94, 6
  store i8 %95, ptr %56, align 2
  br label %96

96:                                               ; preds = %93, %91
  store i8 %62, ptr %70, align 1
  br i1 %39, label %97, label %119

97:                                               ; preds = %96
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(3) %71, ptr noundef align 1 dereferenceable(3) %72, i32 3, i1 false)
  br label %119

98:                                               ; preds = %82
  %99 = icmp eq i32 %90, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %98
  %101 = load i8, ptr %56, align 2
  %102 = or i8 %101, 48
  store i8 %102, ptr %56, align 2
  br label %103

103:                                              ; preds = %100, %98
  store i8 %62, ptr %66, align 1
  br i1 %39, label %104, label %119

104:                                              ; preds = %103
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(3) %67, ptr noundef align 1 dereferenceable(3) %68, i32 3, i1 false)
  br label %119

105:                                              ; preds = %82
  %106 = icmp eq i32 %90, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %105
  %108 = load i8, ptr %56, align 2
  %109 = or i8 %108, -64
  store i8 %109, ptr %56, align 2
  br label %110

110:                                              ; preds = %107, %105
  store i8 %62, ptr %61, align 1
  br i1 %39, label %111, label %119

111:                                              ; preds = %110
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(3) %63, ptr noundef align 1 dereferenceable(3) %64, i32 3, i1 false)
  br label %119

112:                                              ; preds = %82
  %113 = icmp eq i32 %90, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %112
  %115 = load i8, ptr %56, align 2
  %116 = or i8 %115, 9
  store i8 %116, ptr %56, align 2
  br label %117

117:                                              ; preds = %114, %112
  store i8 %62, ptr %74, align 1
  br i1 %39, label %118, label %119

118:                                              ; preds = %117
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(3) %75, ptr noundef align 1 dereferenceable(3) %76, i32 3, i1 false)
  br label %119

119:                                              ; preds = %118, %117, %111, %110, %104, %103, %97, %96
  %120 = phi i32 [ 2, %118 ], [ 2, %117 ], [ 0, %111 ], [ 0, %110 ], [ 1, %104 ], [ 1, %103 ], [ 3, %97 ], [ 3, %96 ]
  %121 = phi i8 [ %73, %118 ], [ %73, %117 ], [ %60, %111 ], [ %60, %110 ], [ %65, %104 ], [ %65, %103 ], [ %69, %97 ], [ %69, %96 ]
  %122 = icmp ne i8 %121, 0
  %123 = load i8, ptr %84, align 1
  %124 = and i8 %123, 15
  %125 = getelementptr [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 %120
  %126 = getelementptr [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 %120, i32 3
  store i8 %124, ptr %126, align 2
  %127 = icmp ult i8 %124, 2
  br i1 %127, label %128, label %131

128:                                              ; preds = %119
  %129 = zext i8 %124 to i32
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %77, i32 noundef %129, i32 noundef %88) #14
  store i8 2, ptr %126, align 2
  br label %131

131:                                              ; preds = %128, %119
  %132 = getelementptr i8, ptr %84, i32 1
  %133 = load i8, ptr %132, align 1
  %134 = lshr i8 %133, 4
  %135 = zext i8 %134 to i16
  %136 = shl nsw i16 -1, %135
  %137 = xor i16 %136, -1
  %138 = getelementptr [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 %120, i32 2
  store i16 %137, ptr %138, align 2
  %139 = and i8 %133, 15
  %140 = zext i8 %139 to i16
  %141 = shl nsw i16 -1, %140
  %142 = xor i16 %141, -1
  %143 = getelementptr [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 %120, i32 1
  store i16 %142, ptr %143, align 2
  %144 = getelementptr i8, ptr %84, i32 2
  %145 = load i16, ptr %144, align 1
  store i16 %145, ptr %125, align 2
  %146 = getelementptr [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 %120, i32 4
  %147 = trunc i32 %90 to i8
  store i8 %147, ptr %146, align 1
  %148 = getelementptr [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 %120, i32 5
  %149 = zext i1 %122 to i8
  store i8 %149, ptr %148, align 2
  %150 = icmp eq i8 %139, 0
  %151 = icmp ugt i16 %136, %141
  %152 = select i1 %150, i1 true, i1 %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %131
  %154 = zext i16 %142 to i32
  %155 = zext i16 %137 to i32
  %156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %77, i32 noundef %154, i32 noundef %155, i32 noundef %88) #14
  br label %223

157:                                              ; preds = %131
  call void @ieee80211_regulatory_limit_wmm_params(ptr noundef %1, ptr noundef %125, i32 noundef %120) #13
  %158 = add i32 %83, -4
  %159 = getelementptr i8, ptr %84, i32 4
  %160 = icmp ugt i32 %158, 3
  br i1 %160, label %82, label %78

161:                                              ; preds = %173, %169, %165, %78, %53
  %162 = phi i32 [ 0, %78 ], [ 1, %165 ], [ 2, %169 ], [ 3, %173 ], [ 0, %53 ]
  %163 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %163, i32 noundef %162) #14
  br label %223

165:                                              ; preds = %78
  %166 = getelementptr inbounds [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 1, i32 1
  %167 = load i16, ptr %166, align 2
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %161, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 2, i32 1
  %171 = load i16, ptr %170, align 2
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %161, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 3, i32 1
  %175 = load i16, ptr %174, align 2
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %161, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %179 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 26, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(14) %179, ptr noundef nonnull align 2 dereferenceable(14) %6, i32 14, i1 false)
  %180 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 40, i32 0, i32 132
  %181 = load i8, ptr %180, align 4, !range !14
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = call i32 @drv_conf_tx(ptr noundef %0, ptr noundef %1, i16 noundef zeroext 0, ptr noundef nonnull %6) #13
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %183
  %187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %178, i32 noundef 0) #14
  br label %188

188:                                              ; preds = %186, %183, %177
  %189 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 26, i32 1
  %190 = getelementptr inbounds [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(14) %189, ptr noundef align 2 dereferenceable(14) %190, i32 14, i1 false)
  %191 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 40, i32 0, i32 156
  %192 = load i8, ptr %191, align 4, !range !14
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %188
  %195 = call i32 @drv_conf_tx(ptr noundef %0, ptr noundef %1, i16 noundef zeroext 1, ptr noundef %190) #13
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %194
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %178, i32 noundef 1) #14
  br label %199

199:                                              ; preds = %197, %194, %188
  %200 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 26, i32 2
  %201 = getelementptr inbounds [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(14) %200, ptr noundef align 2 dereferenceable(14) %201, i32 14, i1 false)
  %202 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 40, i32 0, i32 180
  %203 = load i8, ptr %202, align 4, !range !14
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %199
  %206 = call i32 @drv_conf_tx(ptr noundef %0, ptr noundef %1, i16 noundef zeroext 2, ptr noundef %201) #13
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %205
  %209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %178, i32 noundef 2) #14
  br label %210

210:                                              ; preds = %208, %205, %199
  %211 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 26, i32 3
  %212 = getelementptr inbounds [4 x %struct.ieee80211_tx_queue_params], ptr %6, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(14) %211, ptr noundef align 2 dereferenceable(14) %212, i32 14, i1 false)
  %213 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 40, i32 0, i32 204
  %214 = load i8, ptr %213, align 4, !range !14
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %210
  %217 = call i32 @drv_conf_tx(ptr noundef %0, ptr noundef %1, i16 noundef zeroext 3, ptr noundef %212) #13
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %178, i32 noundef 3) #14
  br label %221

221:                                              ; preds = %219, %216, %210
  %222 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 1, i32 36
  store i8 1, ptr %222, align 4
  br label %223

223:                                              ; preds = %221, %161, %153, %49, %20, %12, %5
  %224 = phi i1 [ false, %153 ], [ false, %161 ], [ true, %221 ], [ false, %5 ], [ false, %12 ], [ false, %20 ], [ false, %49 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #13
  ret i1 %224
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_handle_bss_capability(ptr noundef %0, i16 noundef zeroext %1, i1 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %63

11:                                               ; preds = %4
  %12 = load ptr, ptr %8, align 4
  %13 = load i32, ptr %12, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %14 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr %struct.wiphy, ptr %15, i32 0, i32 53, i32 %13
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %63, label %19

19:                                               ; preds = %11
  br i1 %2, label %20, label %26

20:                                               ; preds = %19
  %21 = zext i8 %3 to i32
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  %24 = and i32 %21, 4
  %25 = icmp eq i32 %24, 0
  br label %29

26:                                               ; preds = %19
  %27 = and i16 %1, 32
  %28 = icmp ne i16 %27, 0
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi i1 [ %23, %20 ], [ false, %26 ]
  %31 = phi i1 [ %25, %20 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %17, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = and i16 %1, 1024
  %37 = icmp ne i16 %36, 0
  %38 = icmp eq i32 %33, 3
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %29
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i1 [ true, %39 ], [ %37, %35 ]
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 14
  %43 = load i8, ptr %42, align 4, !range !14
  %44 = zext i1 %30 to i8
  %45 = icmp eq i8 %43, %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i8 %44, ptr %42, align 4
  br label %47

47:                                               ; preds = %46, %40
  %48 = phi i32 [ 2, %46 ], [ 0, %40 ]
  %49 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 15
  %50 = load i8, ptr %49, align 1, !range !14
  %51 = zext i1 %31 to i8
  %52 = icmp eq i8 %50, %51
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  store i8 %51, ptr %49, align 1
  %54 = or i32 %48, 4
  br label %55

55:                                               ; preds = %53, %47
  %56 = phi i32 [ %54, %53 ], [ %48, %47 ]
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 16
  %58 = load i8, ptr %57, align 2, !range !14
  %59 = zext i1 %41 to i8
  %60 = icmp eq i8 %58, %59
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  store i8 %59, ptr %57, align 2
  %62 = or i32 %56, 8
  br label %63

63:                                               ; preds = %61, %55, %11, %10
  %64 = phi i32 [ 0, %11 ], [ %62, %61 ], [ %56, %55 ], [ 0, %10 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_config_bw(ptr noundef %0, ptr noundef readnone %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca %struct.cfg80211_chan_def, align 4
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = load i32, ptr %14, align 4
  %18 = getelementptr %struct.wiphy, ptr %16, i32 0, i32 53, i32 %17
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 28, i1 false), !annotation !25
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 16
  %23 = icmp eq i32 %22, 0
  %24 = icmp ne ptr %3, null
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %192

26:                                               ; preds = %8
  %27 = and i32 %21, 2048
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, ptr %4, ptr null
  %30 = and i32 %21, 65536
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %26
  %33 = load i32, ptr %12, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 3
  %35 = load i8, ptr %34, align 2, !range !14
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  switch i32 %33, label %39 [
    i32 2, label %43
    i32 3, label %38
  ]

38:                                               ; preds = %37
  br label %43

39:                                               ; preds = %37, %32
  %40 = trunc i32 %33 to i8
  %41 = and i32 %33, 255
  %42 = icmp ugt i8 %40, 11
  br i1 %42, label %53, label %43, !prof !8

43:                                               ; preds = %39, %38, %37
  %44 = phi i32 [ %41, %39 ], [ 8, %37 ], [ 9, %38 ]
  %45 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %19, i32 0, i32 9
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  %48 = icmp eq i16 %46, 0
  br i1 %48, label %72, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %19, i32 0, i32 10
  %51 = load ptr, ptr %50, align 4
  %52 = shl nuw i32 1, %44
  br label %57

53:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 510, i32 noundef 9, ptr noundef null) #13
  br label %72

54:                                               ; preds = %57
  %55 = add nuw nsw i32 %58, 1
  %56 = icmp eq i32 %55, %47
  br i1 %56, label %72, label %57

57:                                               ; preds = %54, %49
  %58 = phi i32 [ 0, %49 ], [ %55, %54 ]
  %59 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %51, i32 %58
  %60 = load i16, ptr %59, align 4
  %61 = zext i16 %60 to i32
  %62 = and i32 %52, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %54, label %64

64:                                               ; preds = %57
  %65 = icmp eq ptr %59, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %64
  %67 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %51, i32 %58, i32 1
  %68 = load i8, ptr %67, align 2, !range !14
  %69 = icmp eq i8 %68, 0
  %70 = icmp eq ptr %67, null
  %71 = or i1 %70, %69
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %64, %54, %53, %43, %26
  br label %73

73:                                               ; preds = %72, %66
  %74 = phi ptr [ null, %72 ], [ %5, %66 ]
  %75 = icmp eq ptr %1, null
  %76 = load i1, ptr @ieee80211_config_bw.__already_done, align 1
  %77 = xor i1 %76, true
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %79, label %80, !prof !8

79:                                               ; preds = %73
  store i1 true, ptr @ieee80211_config_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 399, i32 noundef 9, ptr noundef null) #13
  br label %80

80:                                               ; preds = %79, %73
  br i1 %75, label %192, label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.ieee80211_ht_operation, ptr %3, i32 0, i32 2
  %83 = load i16, ptr %82, align 1
  %84 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 27
  %85 = load i16, ptr %84, align 8
  %86 = icmp eq i16 %85, %83
  br i1 %86, label %90, label %87

87:                                               ; preds = %81
  %88 = load i32, ptr %7, align 4
  %89 = or i32 %88, 16
  store i32 %89, ptr %7, align 4
  store i16 %83, ptr %84, align 8
  br label %90

90:                                               ; preds = %87, %81
  %91 = icmp eq ptr %2, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %90
  %93 = load i32, ptr %2, align 1
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %93, %92 ], [ 0, %90 ]
  %96 = call fastcc i32 @ieee80211_determine_chantype(ptr noundef %0, ptr noundef %19, ptr noundef %14, i32 noundef %95, ptr noundef nonnull %3, ptr noundef %29, ptr noundef %74, ptr noundef %6, ptr noundef nonnull %9, i1 noundef zeroext true)
  %97 = load i32, ptr %20, align 4
  %98 = and i32 %97, 4096
  %99 = icmp ne i32 %98, 0
  %100 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %9, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 4
  %103 = select i1 %99, i1 %102, i1 false
  br i1 %103, label %104, label %109

104:                                              ; preds = %94
  %105 = call i32 @ieee80211_chandef_downgrade(ptr noundef nonnull %9) #13
  %106 = or i32 %105, %96
  %107 = load i32, ptr %20, align 4
  %108 = load i32, ptr %100, align 4
  br label %109

109:                                              ; preds = %104, %94
  %110 = phi i32 [ %108, %104 ], [ %101, %94 ]
  %111 = phi i32 [ %107, %104 ], [ %97, %94 ]
  %112 = phi i32 [ %106, %104 ], [ %96, %94 ]
  %113 = and i32 %111, 8192
  %114 = icmp ne i32 %113, 0
  %115 = icmp eq i32 %110, 5
  %116 = select i1 %114, i1 %115, i1 false
  br i1 %116, label %117, label %122

117:                                              ; preds = %109
  %118 = call i32 @ieee80211_chandef_downgrade(ptr noundef nonnull %9) #13
  %119 = or i32 %118, %112
  %120 = load i32, ptr %20, align 4
  %121 = load i32, ptr %100, align 4
  br label %122

122:                                              ; preds = %117, %109
  %123 = phi i32 [ %121, %117 ], [ %110, %109 ]
  %124 = phi i32 [ %120, %117 ], [ %111, %109 ]
  %125 = phi i32 [ %119, %117 ], [ %112, %109 ]
  %126 = and i32 %124, 1024
  %127 = icmp ne i32 %126, 0
  %128 = icmp ugt i32 %123, 1
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = call i32 @ieee80211_chandef_downgrade(ptr noundef nonnull %9) #13
  %132 = or i32 %131, %125
  br label %133

133:                                              ; preds = %130, %122
  %134 = phi i32 [ %132, %130 ], [ %125, %122 ]
  %135 = load ptr, ptr %9, align 4
  %136 = load ptr, ptr %13, align 4
  %137 = icmp eq ptr %135, %136
  %138 = load i32, ptr %100, align 4
  br i1 %137, label %139, label %161

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 1
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %138, %141
  br i1 %142, label %143, label %161

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %9, i32 0, i32 2
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 2
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %9, i32 0, i32 5
  %151 = load i16, ptr %150, align 4
  %152 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 5
  %153 = load i16, ptr %152, align 4
  %154 = icmp eq i16 %151, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %9, i32 0, i32 3
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 3
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %192, label %161

161:                                              ; preds = %155, %149, %143, %139, %133
  %162 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %163 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  %164 = getelementptr inbounds %struct.ieee80211_channel, ptr %135, i32 0, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.ieee80211_channel, ptr %135, i32 0, i32 2
  %167 = load i16, ptr %166, align 4
  %168 = zext i16 %167 to i32
  %169 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %9, i32 0, i32 2
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %9, i32 0, i32 5
  %172 = load i16, ptr %171, align 4
  %173 = zext i16 %172 to i32
  %174 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %9, i32 0, i32 3
  %175 = load i32, ptr %174, align 4
  %176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %162, ptr noundef %163, i32 noundef %165, i32 noundef %168, i32 noundef %138, i32 noundef %170, i32 noundef %173, i32 noundef %175) #14
  %177 = load i32, ptr %20, align 4
  %178 = and i32 %177, 80912
  %179 = icmp eq i32 %134, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %161
  %181 = call zeroext i1 @cfg80211_chandef_valid(ptr noundef nonnull %9) #13
  br i1 %181, label %187, label %182

182:                                              ; preds = %180
  %183 = load i32, ptr %20, align 4
  br label %184

184:                                              ; preds = %182, %161
  %185 = phi i32 [ %183, %182 ], [ %177, %161 ]
  %186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %162, ptr noundef %163, i32 noundef %134, i32 noundef %185) #14
  br label %192

187:                                              ; preds = %180
  %188 = call i32 @ieee80211_vif_change_bandwidth(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %7) #13
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %187
  %191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %162, ptr noundef %163) #14
  br label %192

192:                                              ; preds = %190, %187, %184, %155, %80, %8
  %193 = phi i32 [ -22, %184 ], [ %188, %190 ], [ 0, %8 ], [ -22, %80 ], [ 0, %155 ], [ 0, %187 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #13
  ret i32 %193
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vht_handle_opmode(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_handle_pwr_constr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i8 noundef zeroext %4, ptr noundef readonly %5, ptr noundef readonly %6) unnamed_addr #0 {
  %8 = load i16, ptr %2, align 2
  %9 = and i16 %8, 252
  %10 = icmp eq i16 %9, 28
  br i1 %10, label %116, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq ptr %3, null
  %15 = and i16 %13, 4352
  %16 = icmp eq i16 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %75, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = mul i32 %20, 1000
  %22 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %21) #13
  %23 = and i8 %4, 1
  %24 = icmp ne i8 %23, 0
  %25 = icmp ult i8 %4, 6
  %26 = or i1 %25, %24
  br i1 %26, label %68, label %27

27:                                               ; preds = %18
  %28 = getelementptr i8, ptr %3, i32 3
  %29 = load i32, ptr %1, align 4
  switch i32 %29, label %30 [
    i32 0, label %34
    i32 2, label %34
    i32 5, label %34
    i32 1, label %33
    i32 3, label %68
  ]

30:                                               ; preds = %27
  %31 = load i1, ptr @ieee80211_find_80211h_pwr_constr.__already_done, align 1
  br i1 %31, label %34, label %32, !prof !11

32:                                               ; preds = %30
  store i1 true, ptr @ieee80211_find_80211h_pwr_constr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1502, i32 noundef 9, ptr noundef null) #13
  br label %34

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %32, %30, %27, %27, %27
  %35 = phi i32 [ 1, %27 ], [ 1, %27 ], [ 1, %27 ], [ 1, %32 ], [ 1, %30 ], [ 4, %33 ]
  %36 = add i8 %4, -3
  br label %37

37:                                               ; preds = %56, %34
  %38 = phi i8 [ %58, %56 ], [ %36, %34 ]
  %39 = phi ptr [ %57, %56 ], [ %28, %34 ]
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ugt i8 %40, -56
  br i1 %42, label %56, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.anon.190, ptr %39, i32 0, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i8 %45, 0
  br i1 %47, label %56, label %51

48:                                               ; preds = %51
  %49 = add nuw nsw i32 %52, 1
  %50 = icmp eq i32 %49, %46
  br i1 %50, label %56, label %51

51:                                               ; preds = %48, %43
  %52 = phi i32 [ %49, %48 ], [ 0, %43 ]
  %53 = mul nuw nsw i32 %52, %35
  %54 = add nuw nsw i32 %53, %41
  %55 = icmp eq i32 %54, %22
  br i1 %55, label %60, label %48

56:                                               ; preds = %48, %43, %37
  %57 = getelementptr %struct.ieee80211_country_ie_triplet, ptr %39, i32 1
  %58 = add i8 %38, -3
  %59 = icmp ugt i8 %58, 2
  br i1 %59, label %37, label %68

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.anon.190, ptr %39, i32 0, i32 2
  %62 = load i8, ptr %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq ptr %5, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i8, ptr %5, align 1
  %67 = zext i8 %66 to i32
  br label %68

68:                                               ; preds = %65, %60, %56, %27, %18
  %69 = phi i32 [ 0, %18 ], [ 0, %27 ], [ %63, %60 ], [ %63, %65 ], [ 0, %56 ]
  %70 = phi i32 [ 0, %18 ], [ 0, %27 ], [ 0, %60 ], [ %67, %65 ], [ 0, %56 ]
  %71 = phi i1 [ false, %18 ], [ false, %27 ], [ true, %60 ], [ true, %65 ], [ false, %56 ]
  %72 = sub nsw i32 %69, %70
  %73 = tail call i32 @llvm.smax.i32(i32 %72, i32 0)
  %74 = icmp eq ptr %6, null
  br i1 %74, label %85, label %77

75:                                               ; preds = %11
  %76 = icmp eq ptr %6, null
  br i1 %76, label %116, label %77

77:                                               ; preds = %75, %68
  %78 = phi i1 [ false, %75 ], [ %71, %68 ]
  %79 = phi i32 [ 0, %75 ], [ %73, %68 ]
  %80 = phi i32 [ 0, %75 ], [ %70, %68 ]
  %81 = phi i32 [ 0, %75 ], [ %69, %68 ]
  %82 = getelementptr i8, ptr %6, i32 4
  %83 = load i8, ptr %82, align 1
  %84 = sext i8 %83 to i32
  br label %86

85:                                               ; preds = %68
  br i1 %71, label %86, label %116

86:                                               ; preds = %85, %77
  %87 = phi i1 [ true, %77 ], [ false, %85 ]
  %88 = phi i1 [ %78, %77 ], [ true, %85 ]
  %89 = phi i32 [ %79, %77 ], [ %73, %85 ]
  %90 = phi i32 [ %80, %77 ], [ %70, %85 ]
  %91 = phi i32 [ %81, %77 ], [ %69, %85 ]
  %92 = phi i32 [ %84, %77 ], [ 0, %85 ]
  %93 = xor i1 %88, true
  %94 = icmp sgt i32 %89, %92
  %95 = select i1 %87, i1 %94, i1 false
  %96 = select i1 %93, i1 true, i1 %95
  %97 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 46
  %98 = load i32, ptr %97, align 8
  br i1 %96, label %105, label %99

99:                                               ; preds = %86
  %100 = icmp eq i32 %98, %89
  br i1 %100, label %116, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %103 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  %104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %102, i32 noundef %89, i32 noundef %91, i32 noundef %90, ptr noundef %103) #14
  br label %111

105:                                              ; preds = %86
  %106 = icmp eq i32 %98, %92
  br i1 %106, label %116, label %107

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %109 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  %110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %108, i32 noundef %92, ptr noundef %109) #14
  br label %111

111:                                              ; preds = %107, %101
  %112 = phi i32 [ %89, %101 ], [ %92, %107 ]
  %113 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 46
  store i32 %112, ptr %113, align 8
  %114 = tail call zeroext i1 @__ieee80211_recalc_txpower(ptr noundef %0) #13
  %115 = select i1 %114, i32 262144, i32 0
  br label %116

116:                                              ; preds = %111, %105, %99, %85, %75, %7
  %117 = phi i32 [ 0, %7 ], [ 0, %85 ], [ 0, %99 ], [ 0, %105 ], [ %115, %111 ], [ 0, %75 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_bss_info_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_bss_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_vif_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ch_switch_notify(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_post_channel_switch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_regulatory_limit_wmm_params(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_determine_chantype(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext %9) unnamed_addr #0 {
  %11 = alloca %struct.cfg80211_chan_def, align 4
  %12 = alloca %struct.ieee80211_sta_ht_cap, align 2
  %13 = alloca %struct.ieee80211_vht_operation, align 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %11, i8 0, i32 28, i1 false), !annotation !25
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %12) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(22) %12, i8 0, i32 22, i1 false), !annotation !25
  %14 = getelementptr inbounds i8, ptr %8, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %14, i8 0, i32 20, i1 false)
  store ptr %2, ptr %8, align 4
  %15 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %8, i32 0, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ieee80211_channel, ptr %2, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %8, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ieee80211_channel, ptr %2, i32 0, i32 2
  %20 = load i16, ptr %19, align 4
  %21 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %8, i32 0, i32 5
  store i16 %20, ptr %21, align 4
  %22 = load i32, ptr %2, align 4
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %27

24:                                               ; preds = %10
  %25 = tail call zeroext i1 @ieee80211_chandef_he_6ghz_oper(ptr noundef %0, ptr noundef %6, ptr noundef %8) #13
  %26 = select i1 %25, i32 0, i32 67600
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %11, ptr noundef align 4 dereferenceable(28) %8, i32 28, i1 false)
  br label %152

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = tail call zeroext i1 @ieee80211_chandef_s1g_oper(ptr noundef %7, ptr noundef %8) #13
  br i1 %32, label %152, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %34) #14
  %36 = tail call i32 @ieee80211_s1g_channel_width(ptr noundef %2) #13
  store i32 %36, ptr %15, align 4
  br label %152

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(22) %12, ptr noundef align 4 dereferenceable(22) %38, i32 22, i1 false)
  call void @ieee80211_apply_htcap_overrides(ptr noundef %0, ptr noundef nonnull %12) #13
  %39 = icmp eq ptr %4, null
  %40 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %12, i32 0, i32 1
  %41 = load i8, ptr %40, align 2
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %39, i1 true, i1 %42
  br i1 %43, label %152, label %44

44:                                               ; preds = %37
  store i32 1, ptr %15, align 4
  %45 = load i8, ptr %4, align 1
  %46 = zext i8 %45 to i32
  %47 = load i32, ptr %2, align 4
  %48 = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %46, i32 noundef %47) #13
  %49 = udiv i32 %48, 1000
  br i1 %9, label %59, label %50

50:                                               ; preds = %44
  %51 = load i32, ptr %16, align 4
  %52 = icmp eq i32 %51, %49
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %55 = load i8, ptr %4, align 1
  %56 = zext i8 %55 to i32
  %57 = load i32, ptr %2, align 4
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %54, i32 noundef %51, i32 noundef %49, i32 noundef %56, i32 noundef %57) #14
  br label %183

59:                                               ; preds = %50, %44
  %60 = load i16, ptr %12, align 2
  %61 = and i16 %60, 2
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %152, label %63

63:                                               ; preds = %59
  %64 = call zeroext i1 @ieee80211_chandef_ht_oper(ptr noundef nonnull %4, ptr noundef %8) #13
  %65 = icmp eq ptr %5, null
  br i1 %65, label %152, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 6
  %68 = load i8, ptr %67, align 4, !range !14
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %152, label %70

70:                                               ; preds = %66
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %11, ptr noundef align 4 dereferenceable(28) %8, i32 28, i1 false)
  %71 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 65536
  %74 = icmp eq i32 %73, 0
  %75 = icmp ne ptr %6, null
  %76 = and i1 %75, %74
  br i1 %76, label %77, label %96

77:                                               ; preds = %70
  %78 = load i32, ptr %6, align 1
  %79 = and i32 %78, 16384
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %13) #13
  %82 = getelementptr inbounds %struct.ieee80211_he_operation, ptr %6, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %13, ptr noundef align 1 dereferenceable(3) %82, i32 3, i1 false)
  %83 = getelementptr inbounds %struct.ieee80211_vht_operation, ptr %13, i32 0, i32 3
  store i16 0, ptr %83, align 1
  %84 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %85 = load ptr, ptr %84, align 4
  %86 = call zeroext i1 @ieee80211_chandef_vht_oper(ptr noundef %85, i32 noundef %3, ptr noundef nonnull %13, ptr noundef nonnull %4, ptr noundef nonnull %11) #13
  br i1 %86, label %95, label %87

87:                                               ; preds = %81
  %88 = load i32, ptr %71, align 4
  %89 = and i32 %88, 65536
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %92) #14
  br label %94

94:                                               ; preds = %91, %87
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %13) #13
  br label %152

95:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %13) #13
  br label %107

96:                                               ; preds = %77, %70
  %97 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %98 = load ptr, ptr %97, align 4
  %99 = call zeroext i1 @ieee80211_chandef_vht_oper(ptr noundef %98, i32 noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %11) #13
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = load i32, ptr %71, align 4
  %102 = and i32 %101, 2048
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %152

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %105) #14
  br label %152

107:                                              ; preds = %96, %95
  %108 = call zeroext i1 @cfg80211_chandef_valid(ptr noundef nonnull %11) #13
  br i1 %108, label %116, label %109

109:                                              ; preds = %107
  %110 = load i32, ptr %71, align 4
  %111 = and i32 %110, 2048
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %152

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %114) #14
  br label %152

116:                                              ; preds = %107
  %117 = load ptr, ptr %8, align 4
  %118 = load ptr, ptr %11, align 4
  %119 = icmp eq ptr %117, %118
  br i1 %119, label %120, label %141

120:                                              ; preds = %116
  %121 = load i32, ptr %15, align 4
  %122 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %11, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %120
  %126 = load i32, ptr %18, align 4
  %127 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %11, i32 0, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load i16, ptr %21, align 4
  %132 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %11, i32 0, i32 5
  %133 = load i16, ptr %132, align 4
  %134 = icmp eq i16 %131, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %8, i32 0, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %11, i32 0, i32 3
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %152, label %141

141:                                              ; preds = %135, %130, %125, %120, %116
  %142 = call ptr @cfg80211_chandef_compatible(ptr noundef %8, ptr noundef nonnull %11) #13
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = load i32, ptr %71, align 4
  %146 = and i32 %145, 2048
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %149) #14
  br label %152

151:                                              ; preds = %141
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %11, i32 28, i1 false)
  br label %152

152:                                              ; preds = %151, %148, %144, %135, %113, %109, %104, %100, %94, %66, %63, %59, %37, %33, %31, %24
  %153 = phi i32 [ %26, %24 ], [ 0, %151 ], [ 15376, %33 ], [ 15376, %31 ], [ 67600, %37 ], [ 3072, %59 ], [ 2048, %63 ], [ 2048, %66 ], [ 2048, %104 ], [ 2048, %100 ], [ 2048, %113 ], [ 2048, %109 ], [ 0, %135 ], [ 2048, %148 ], [ 2048, %144 ], [ 65536, %94 ]
  br i1 %9, label %154, label %180

154:                                              ; preds = %152
  %155 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32
  %156 = load ptr, ptr %8, align 4
  %157 = load ptr, ptr %155, align 4
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %159, label %180

159:                                              ; preds = %154
  %160 = load i32, ptr %15, align 4
  %161 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 1
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %160, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %159
  %165 = load i32, ptr %18, align 4
  %166 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 2
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %165, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %164
  %170 = load i16, ptr %21, align 4
  %171 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 5
  %172 = load i16, ptr %171, align 4
  %173 = icmp eq i16 %170, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %8, i32 0, i32 3
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 3
  %178 = load i32, ptr %177, align 4
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %230, label %180

180:                                              ; preds = %174, %169, %164, %159, %154, %152
  %181 = and i32 %153, 2048
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %180, %53
  %184 = phi i32 [ 67600, %53 ], [ %153, %180 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %11, ptr noundef align 4 dereferenceable(28) %8, i32 28, i1 false)
  br label %185

185:                                              ; preds = %183, %180
  %186 = phi i32 [ %184, %183 ], [ %153, %180 ]
  %187 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %188 = xor i1 %9, true
  %189 = zext i1 %188 to i32
  %190 = load ptr, ptr %187, align 4
  %191 = getelementptr inbounds %struct.ieee80211_hw, ptr %190, i32 0, i32 1
  %192 = load ptr, ptr %191, align 8
  %193 = call zeroext i1 @cfg80211_chandef_usable(ptr noundef %192, ptr noundef %8, i32 noundef %189) #13
  br i1 %193, label %206, label %194

194:                                              ; preds = %199, %185
  %195 = phi i32 [ %201, %199 ], [ %186, %185 ]
  %196 = load i32, ptr %15, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199, !prof !8

198:                                              ; preds = %194
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 341, i32 noundef 9, ptr noundef null) #13
  br label %206

199:                                              ; preds = %194
  %200 = call i32 @ieee80211_chandef_downgrade(ptr noundef %8) #13
  %201 = or i32 %200, %195
  %202 = load ptr, ptr %187, align 4
  %203 = getelementptr inbounds %struct.ieee80211_hw, ptr %202, i32 0, i32 1
  %204 = load ptr, ptr %203, align 8
  %205 = call zeroext i1 @cfg80211_chandef_usable(ptr noundef %204, ptr noundef %8, i32 noundef %189) #13
  br i1 %205, label %206, label %194

206:                                              ; preds = %199, %198, %185
  %207 = phi i32 [ 67600, %198 ], [ %186, %185 ], [ %201, %199 ]
  %208 = icmp eq ptr %6, null
  br i1 %208, label %213, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1
  %211 = load ptr, ptr %210, align 8
  %212 = call zeroext i1 @cfg80211_chandef_usable(ptr noundef %211, ptr noundef %8, i32 noundef 8192) #13
  br i1 %212, label %215, label %213

213:                                              ; preds = %209, %206
  %214 = or i32 %207, 65536
  br label %215

215:                                              ; preds = %213, %209
  %216 = phi i32 [ %207, %209 ], [ %214, %213 ]
  %217 = load i32, ptr %15, align 4
  %218 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %11, i32 0, i32 1
  %219 = load i32, ptr %218, align 4
  %220 = icmp eq i32 %217, %219
  %221 = or i1 %220, %9
  br i1 %221, label %225, label %222

222:                                              ; preds = %215
  %223 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %223) #14
  br label %225

225:                                              ; preds = %222, %215
  %226 = call zeroext i1 @cfg80211_chandef_valid(ptr noundef %8) #13
  %227 = load i1, ptr @ieee80211_determine_chantype.__already_done, align 1
  %228 = select i1 %226, i1 true, i1 %227
  br i1 %228, label %230, label %229, !prof !11

229:                                              ; preds = %225
  store i1 true, ptr @ieee80211_determine_chantype.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 359, i32 noundef 9, ptr noundef null) #13
  br label %230

230:                                              ; preds = %229, %225, %174
  %231 = phi i32 [ %153, %174 ], [ %216, %229 ], [ %216, %225 ]
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #13
  ret i32 %231
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_chandef_downgrade(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_vif_change_bandwidth(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_chandef_he_6ghz_oper(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_chandef_s1g_oper(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_s1g_channel_width(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_chandef_ht_oper(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_chandef_vht_oper(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_chandef_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_usable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__ieee80211_recalc_txpower(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_rx_mlme_mgmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_auth_challenge(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ieee80211_prep_tx_info, align 2
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 22
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %4, ptr noundef nonnull align 2 dereferenceable(6) @__const.ieee80211_auth.info, i32 6, i1 false)
  %9 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 0, i32 2, i32 2
  %10 = add i32 %2, -30
  %11 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 16, ptr noundef %9, i32 noundef %10, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %8, i32 0, i32 4
  store i16 4, ptr %14, align 2
  %15 = load ptr, ptr %5, align 4
  call fastcc void @drv_mgd_prepare_tx(ptr noundef %15, ptr noundef %0, ptr noundef nonnull %4)
  %16 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 4
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 65536
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 0, i32 1048577
  %21 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %8, i32 0, i32 3
  %22 = load i16, ptr %21, align 4
  %23 = getelementptr inbounds %struct.element, ptr %11, i32 0, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = add nuw nsw i32 %25, 2
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr inbounds %struct.cfg80211_bss, ptr %27, i32 0, i32 11
  %29 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %8, i32 0, i32 5
  %30 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %8, i32 0, i32 6
  %31 = load i8, ptr %30, align 1
  %32 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, ptr %8, i32 0, i32 7
  %33 = load i8, ptr %32, align 2
  call void @ieee80211_send_auth(ptr noundef %0, i16 noundef zeroext 3, i16 noundef zeroext %22, i16 noundef zeroext 0, ptr noundef nonnull %11, i32 noundef %26, ptr noundef %28, ptr noundef %28, ptr noundef %29, i8 noundef zeroext %31, i8 noundef zeroext %33, i32 noundef %20) #13
  br label %34

34:                                               ; preds = %13, %3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_auth(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tdls_handle_disconnect(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fils_decrypt_assoc_resp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_assoc_comeback(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_assoc_success(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %1, align 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 3
  %14 = icmp eq i32 %12, 4
  %15 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6
  %16 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 0, i32 2, i32 2
  %17 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 0, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = select i1 %14, ptr %17, ptr %16
  %20 = load i16, ptr %15, align 2
  %21 = ptrtoint ptr %19 to i32
  %22 = ptrtoint ptr %2 to i32
  %23 = add i32 %22, %3
  %24 = sub i32 %23, %21
  %25 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 4
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr inbounds %struct.cfg80211_bss, ptr %26, i32 0, i32 11
  %28 = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %19, i32 noundef %24, i1 noundef zeroext false, i64 noundef 0, i32 noundef 0, ptr noundef %25, ptr noundef %27) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %903, label %30

30:                                               ; preds = %4
  %31 = select i1 %14, i16 0, i16 %18
  %32 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 56
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i16, ptr %33, align 1
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi i16 [ %36, %35 ], [ %31, %30 ]
  %39 = and i16 %38, 2047
  %40 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %5, i32 0, i32 18
  store i8 0, ptr %40, align 1
  %41 = add nsw i16 %39, -2008
  %42 = icmp ult i16 %41, -2007
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = zext i16 %39 to i32
  %45 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %45, i32 noundef %44) #14
  store i8 1, ptr %40, align 1
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi i16 [ 0, %43 ], [ %39, %37 ]
  br i1 %14, label %56, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 7
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %54) #14
  br label %900

56:                                               ; preds = %49, %47
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 13
  store i16 %48, ptr %57, align 2
  %58 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 57
  %63 = load i8, ptr %62, align 4
  %64 = icmp ugt i8 %63, 4
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = getelementptr i8, ptr %59, i32 4
  %67 = load i8, ptr %66, align 1
  %68 = icmp slt i8 %67, 0
  br label %69

69:                                               ; preds = %65, %61, %56
  %70 = phi i1 [ false, %61 ], [ false, %56 ], [ %68, %65 ]
  %71 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 108
  %72 = zext i1 %70 to i8
  store i8 %72, ptr %71, align 4
  br i1 %13, label %239, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, ptr %10, i32 0, i32 9
  %75 = load i8, ptr %74, align 2, !range !14
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 15
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %105, label %81

81:                                               ; preds = %77, %73
  %82 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 16
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %105, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 17
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %105, label %94

94:                                               ; preds = %90, %81
  %95 = and i32 %83, 2048
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %205

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 18
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 19
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %205

105:                                              ; preds = %101, %97, %90, %86, %77
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %106 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 2
  %107 = load volatile ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %900

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %107, i32 0, i32 2
  %112 = load i32, ptr %111, align 8
  %113 = add i32 %112, 24
  %114 = tail call ptr @kmemdup(ptr noundef nonnull %107, i32 noundef %113, i32 noundef 2592) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %115 = icmp eq ptr %114, null
  br i1 %115, label %900, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %114, i32 0, i32 4
  %118 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %114, i32 0, i32 2
  %119 = load i32, ptr %118, align 8
  %120 = load ptr, ptr %10, align 4
  %121 = getelementptr inbounds %struct.cfg80211_bss, ptr %120, i32 0, i32 11
  %122 = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %117, i32 noundef %119, i1 noundef zeroext false, i64 noundef 0, i32 noundef 0, ptr noundef %25, ptr noundef %121) #13
  %123 = icmp eq ptr %122, null
  br i1 %123, label %900, label %124

124:                                              ; preds = %116
  %125 = load i8, ptr %74, align 2, !range !14
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 15
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.ieee802_11_elems, ptr %122, i32 0, i32 15
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  store ptr %133, ptr %128, align 4
  %136 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %136) #14
  br label %138

138:                                              ; preds = %135, %131, %127, %124
  %139 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 16
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %154

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.ieee802_11_elems, ptr %122, i32 0, i32 16
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %154, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, 16
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  store ptr %144, ptr %139, align 4
  %152 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %152) #14
  br label %154

154:                                              ; preds = %151, %146, %142, %138
  %155 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 17
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %170

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.ieee802_11_elems, ptr %122, i32 0, i32 17
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %170, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %164 = load i32, ptr %163, align 4
  %165 = and i32 %164, 16
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  store ptr %160, ptr %155, align 4
  %168 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %168) #14
  br label %170

170:                                              ; preds = %167, %162, %158, %154
  %171 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 18
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %186

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.ieee802_11_elems, ptr %122, i32 0, i32 18
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %186, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %180 = load i32, ptr %179, align 4
  %181 = and i32 %180, 2048
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  store ptr %176, ptr %171, align 4
  %184 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %184) #14
  br label %186

186:                                              ; preds = %183, %178, %174, %170
  %187 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 19
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %202

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.ieee802_11_elems, ptr %122, i32 0, i32 19
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %202, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %196 = load i32, ptr %195, align 4
  %197 = and i32 %196, 2048
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  store ptr %192, ptr %187, align 4
  %200 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %200) #14
  br label %202

202:                                              ; preds = %199, %194, %190, %186
  tail call void @kfree(ptr noundef nonnull %122) #13
  %203 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %204 = load i32, ptr %203, align 4
  br label %205

205:                                              ; preds = %202, %101, %94
  %206 = phi i32 [ %204, %202 ], [ %83, %101 ], [ %83, %94 ]
  %207 = phi ptr [ %114, %202 ], [ null, %101 ], [ null, %94 ]
  %208 = and i32 %206, 16
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %225

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 15
  %212 = load ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %222, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 16
  %216 = load ptr, ptr %215, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %222, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 17
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %218, %214, %210
  %223 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %224 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %223) #14
  br label %900

225:                                              ; preds = %218, %205
  %226 = and i32 %206, 2048
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %251

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 18
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %236, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 19
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %251

236:                                              ; preds = %232, %228
  %237 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %238 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %237) #14
  br label %900

239:                                              ; preds = %69
  %240 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %241 = load i32, ptr %240, align 4
  %242 = and i32 %241, 65536
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 25
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %249) #14
  br label %900

251:                                              ; preds = %244, %239, %232, %225
  %252 = phi ptr [ %207, %225 ], [ %207, %232 ], [ null, %244 ], [ null, %239 ]
  %253 = load ptr, ptr %6, align 4
  %254 = getelementptr inbounds %struct.ieee80211_local, ptr %253, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %254) #13
  %255 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 11
  %256 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef %255) #13
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %261, !prof !8

258:                                              ; preds = %251
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3478, i32 noundef 9, ptr noundef null) #13
  %259 = load ptr, ptr %6, align 4
  %260 = getelementptr inbounds %struct.ieee80211_local, ptr %259, i32 0, i32 46
  tail call void @mutex_unlock(ptr noundef %260) #13
  br label %900

261:                                              ; preds = %251
  %262 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %263 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %264 = load volatile ptr, ptr %263, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %267

266:                                              ; preds = %261
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %275

267:                                              ; preds = %261
  %268 = load ptr, ptr %264, align 4
  %269 = load i32, ptr %268, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %270 = getelementptr inbounds %struct.ieee80211_hw, ptr %262, i32 0, i32 1
  %271 = load ptr, ptr %270, align 8
  %272 = getelementptr %struct.wiphy, ptr %271, i32 0, i32 53, i32 %269
  %273 = load ptr, ptr %272, align 4
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %267, %266
  %276 = load ptr, ptr %6, align 4
  %277 = getelementptr inbounds %struct.ieee80211_local, ptr %276, i32 0, i32 46
  tail call void @mutex_unlock(ptr noundef %277) #13
  br label %900

278:                                              ; preds = %267
  %279 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %280 = load i32, ptr %279, align 4
  %281 = and i32 %280, 65536
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %296

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 21
  %285 = load ptr, ptr %284, align 4
  %286 = icmp eq ptr %285, null
  br i1 %286, label %291, label %287

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 22
  %289 = load ptr, ptr %288, align 4
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %296

291:                                              ; preds = %287, %283
  %292 = load ptr, ptr %6, align 4
  %293 = getelementptr inbounds %struct.ieee80211_local, ptr %292, i32 0, i32 46
  tail call void @mutex_unlock(ptr noundef %293) #13
  %294 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %295 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %294) #14
  br label %900

296:                                              ; preds = %287, %278
  %297 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 16
  %298 = load ptr, ptr %297, align 4
  %299 = icmp ne ptr %298, null
  %300 = and i32 %280, 16
  %301 = icmp eq i32 %300, 0
  %302 = select i1 %299, i1 %301, i1 false
  br i1 %302, label %303, label %305

303:                                              ; preds = %296
  %304 = tail call zeroext i1 @ieee80211_ht_cap_ie_to_sta_ht_cap(ptr noundef %0, ptr noundef nonnull %273, ptr noundef nonnull %298, ptr noundef nonnull %256) #13
  br label %305

305:                                              ; preds = %303, %296
  %306 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 18
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %314, label %309

309:                                              ; preds = %305
  %310 = load i32, ptr %279, align 4
  %311 = and i32 %310, 2048
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %309
  tail call void @ieee80211_vht_cap_ie_to_sta_vht_cap(ptr noundef %0, ptr noundef nonnull %273, ptr noundef nonnull %307, ptr noundef nonnull %256) #13
  br label %314

314:                                              ; preds = %313, %309, %305
  %315 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 22
  %316 = load ptr, ptr %315, align 4
  %317 = icmp eq ptr %316, null
  br i1 %317, label %377, label %318

318:                                              ; preds = %314
  %319 = load i32, ptr %279, align 4
  %320 = and i32 %319, 65536
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %377

322:                                              ; preds = %318
  %323 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 21
  %324 = load ptr, ptr %323, align 4
  %325 = icmp eq ptr %324, null
  br i1 %325, label %377, label %326

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 66
  %328 = load i8, ptr %327, align 1
  %329 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 25
  %330 = load ptr, ptr %329, align 4
  tail call void @ieee80211_he_cap_ie_to_sta_he_cap(ptr noundef %0, ptr noundef nonnull %273, ptr noundef nonnull %324, i8 noundef zeroext %328, ptr noundef %330, ptr noundef nonnull %256) #13
  %331 = getelementptr inbounds %struct.sta_info, ptr %256, i32 0, i32 46, i32 6
  %332 = load i8, ptr %331, align 8, !range !14
  %333 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 5
  store i8 %332, ptr %333, align 2
  %334 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 11
  %335 = load ptr, ptr %334, align 4
  %336 = icmp eq ptr %335, null
  br i1 %336, label %352, label %337

337:                                              ; preds = %326
  %338 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 62
  %339 = load i8, ptr %338, align 1
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %352, label %341

341:                                              ; preds = %337
  %342 = load i8, ptr %335, align 1
  %343 = and i8 %342, 16
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %352, label %345

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %347 = load ptr, ptr %346, align 8
  %348 = getelementptr %struct.wiphy, ptr %347, i32 0, i32 14, i32 5
  %349 = load i8, ptr %348, align 1
  %350 = and i8 %349, 8
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %345, %341, %337, %326
  br label %353

353:                                              ; preds = %352, %345
  %354 = phi i8 [ 0, %352 ], [ 1, %345 ]
  %355 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 8
  store i8 %354, ptr %355, align 1
  %356 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 57
  %357 = load i8, ptr %356, align 4
  %358 = icmp ult i8 %357, 10
  br i1 %358, label %370, label %359

359:                                              ; preds = %353
  %360 = load ptr, ptr %58, align 4
  %361 = getelementptr i8, ptr %360, i32 9
  %362 = load i8, ptr %361, align 1
  %363 = and i8 %362, 64
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %370, label %365

365:                                              ; preds = %359
  %366 = getelementptr inbounds %struct.sta_info, ptr %256, i32 0, i32 46, i32 6, i32 1
  %367 = load i8, ptr %366, align 1
  %368 = and i8 %367, 4
  %369 = icmp ne i8 %368, 0
  br label %370

370:                                              ; preds = %365, %359, %353
  %371 = phi i1 [ %369, %365 ], [ false, %353 ], [ false, %359 ]
  %372 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 6
  %373 = load i8, ptr %372, align 1, !range !14
  %374 = zext i1 %371 to i8
  %375 = icmp eq i8 %373, %374
  br i1 %375, label %381, label %376

376:                                              ; preds = %370
  store i8 %374, ptr %372, align 1
  br label %381

377:                                              ; preds = %322, %318, %314
  %378 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 5
  store i8 0, ptr %378, align 2
  %379 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 6
  store i8 0, ptr %379, align 1
  %380 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 8
  store i8 0, ptr %380, align 1
  br label %381

381:                                              ; preds = %377, %376, %370
  %382 = phi i8 [ 0, %377 ], [ %332, %376 ], [ %332, %370 ]
  %383 = phi i32 [ 0, %377 ], [ 134217728, %376 ], [ 0, %370 ]
  %384 = load i32, ptr %8, align 8
  %385 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 3
  %386 = load i8, ptr %385, align 2, !range !14
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %390, label %388

388:                                              ; preds = %381
  switch i32 %384, label %390 [
    i32 2, label %394
    i32 3, label %389
  ]

389:                                              ; preds = %388
  br label %394

390:                                              ; preds = %388, %381
  %391 = trunc i32 %384 to i8
  %392 = and i32 %384, 255
  %393 = icmp ugt i8 %391, 11
  br i1 %393, label %404, label %394, !prof !8

394:                                              ; preds = %390, %389, %388
  %395 = phi i32 [ %392, %390 ], [ 8, %388 ], [ 9, %389 ]
  %396 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %273, i32 0, i32 9
  %397 = load i16, ptr %396, align 4
  %398 = zext i16 %397 to i32
  %399 = icmp eq i16 %397, 0
  br i1 %399, label %423, label %400

400:                                              ; preds = %394
  %401 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %273, i32 0, i32 10
  %402 = load ptr, ptr %401, align 4
  %403 = shl nuw i32 1, %395
  br label %410

404:                                              ; preds = %390
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 510, i32 noundef 9, ptr noundef null) #13
  %405 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 5
  %406 = load i8, ptr %405, align 2, !range !14
  br label %423

407:                                              ; preds = %410
  %408 = add nuw nsw i32 %411, 1
  %409 = icmp eq i32 %408, %398
  br i1 %409, label %423, label %410

410:                                              ; preds = %407, %400
  %411 = phi i32 [ 0, %400 ], [ %408, %407 ]
  %412 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %402, i32 %411
  %413 = load i16, ptr %412, align 4
  %414 = zext i16 %413 to i32
  %415 = and i32 %403, %414
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %407, label %417

417:                                              ; preds = %410
  %418 = icmp eq ptr %412, null
  br i1 %418, label %423, label %419

419:                                              ; preds = %417
  %420 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %402, i32 %411, i32 1
  %421 = load i8, ptr %420, align 2, !range !14
  %422 = icmp eq i8 %421, 0
  br i1 %422, label %423, label %425

423:                                              ; preds = %419, %417, %407, %404, %394
  %424 = phi i8 [ %382, %419 ], [ %382, %417 ], [ %406, %404 ], [ %382, %394 ], [ %382, %407 ]
  br label %425

425:                                              ; preds = %423, %419
  %426 = phi i8 [ %424, %423 ], [ %382, %419 ]
  %427 = phi ptr [ null, %423 ], [ %420, %419 ]
  %428 = icmp eq i8 %426, 0
  br i1 %428, label %441, label %429

429:                                              ; preds = %425
  %430 = getelementptr %struct.sta_info, ptr %256, i32 0, i32 46, i32 6, i32 1, i32 0, i32 2
  %431 = load i8, ptr %430, align 1
  %432 = and i8 %431, 16
  %433 = icmp ne i8 %432, 0
  %434 = icmp ne ptr %427, null
  %435 = and i1 %434, %433
  br i1 %435, label %436, label %443

436:                                              ; preds = %429
  %437 = getelementptr %struct.ieee80211_sta_he_cap, ptr %427, i32 0, i32 1, i32 0, i32 2
  %438 = load i8, ptr %437, align 1
  %439 = and i8 %438, 16
  %440 = icmp ne i8 %439, 0
  br label %443

441:                                              ; preds = %425
  %442 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 9
  store i8 0, ptr %442, align 2
  br label %493

443:                                              ; preds = %436, %429
  %444 = phi i1 [ %440, %436 ], [ false, %429 ]
  %445 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 9
  %446 = zext i1 %444 to i8
  store i8 %446, ptr %445, align 2
  %447 = load ptr, ptr %315, align 4
  %448 = load i32, ptr %447, align 1
  %449 = lshr i32 %448, 24
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 63
  %452 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 58
  store i8 %451, ptr %452, align 1
  %453 = load ptr, ptr %315, align 4
  %454 = load i32, ptr %453, align 1
  %455 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 58, i32 2
  %456 = lshr i32 %454, 30
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  store i8 %458, ptr %455, align 1
  %459 = load ptr, ptr %315, align 4
  %460 = load i32, ptr %459, align 1
  %461 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 58, i32 1
  %462 = lshr i32 %460, 31
  %463 = trunc i32 %462 to i8
  %464 = xor i8 %463, 1
  store i8 %464, ptr %461, align 1
  %465 = or i32 %383, 536870912
  %466 = icmp slt i32 %460, 0
  %467 = select i1 %466, i32 %383, i32 %465
  %468 = load ptr, ptr %315, align 4
  %469 = load i32, ptr %468, align 1
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 7
  %472 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 1
  store i8 %471, ptr %472, align 4
  %473 = load ptr, ptr %315, align 4
  %474 = load i32, ptr %473, align 1
  %475 = trunc i32 %474 to i16
  %476 = lshr i16 %475, 4
  %477 = and i16 %476, 1023
  %478 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 4
  store i16 %477, ptr %478, align 8
  %479 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 27
  %480 = load ptr, ptr %479, align 4
  %481 = icmp ne ptr %480, null
  %482 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 2
  %483 = zext i1 %481 to i8
  store i8 %483, ptr %482, align 1
  %484 = load ptr, ptr %479, align 4
  %485 = icmp eq ptr %484, null
  br i1 %485, label %489, label %486

486:                                              ; preds = %443
  %487 = load i8, ptr %484, align 1
  %488 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 3
  store i8 %487, ptr %488, align 2
  br label %489

489:                                              ; preds = %486, %443
  %490 = load ptr, ptr %315, align 4
  tail call void @ieee80211_he_op_ie_to_bss_conf(ptr noundef %8, ptr noundef %490) #13
  %491 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 23
  %492 = load ptr, ptr %491, align 4
  tail call void @ieee80211_he_spr_ie_to_bss_conf(ptr noundef %8, ptr noundef %492) #13
  br label %493

493:                                              ; preds = %489, %441
  %494 = phi i32 [ %467, %489 ], [ %383, %441 ]
  %495 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 6
  %496 = load ptr, ptr %495, align 4
  %497 = icmp eq ptr %496, null
  br i1 %497, label %513, label %498

498:                                              ; preds = %493
  %499 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 50
  store i8 1, ptr %499, align 8
  %500 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 51
  %501 = load ptr, ptr %495, align 4
  %502 = getelementptr inbounds %struct.cfg80211_bss, ptr %501, i32 0, i32 11
  %503 = load i32, ptr %502, align 4
  store i32 %503, ptr %500, align 4
  %504 = getelementptr %struct.cfg80211_bss, ptr %501, i32 0, i32 11, i32 4
  %505 = load i16, ptr %504, align 2
  %506 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 51, i32 4
  store i16 %505, ptr %506, align 2
  %507 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 15
  %508 = load i8, ptr %507, align 4
  %509 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 53
  store i8 %508, ptr %509, align 8
  %510 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 14
  %511 = load i8, ptr %510, align 1
  %512 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 52
  store i8 %511, ptr %512, align 1
  br label %513

513:                                              ; preds = %498, %493
  %514 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 43
  %515 = load ptr, ptr %514, align 4
  %516 = icmp eq ptr %515, null
  br i1 %516, label %524, label %517

517:                                              ; preds = %513
  %518 = load i8, ptr %515, align 1
  %519 = icmp sgt i8 %518, -1
  br i1 %519, label %520, label %524

520:                                              ; preds = %517
  %521 = lshr i8 %518, 4
  %522 = add nuw nsw i8 %521, 1
  %523 = getelementptr inbounds %struct.sta_info, ptr %256, i32 0, i32 46, i32 13
  store i8 %522, ptr %523, align 1
  br label %524

524:                                              ; preds = %520, %517, %513
  tail call void @rate_control_rate_init(ptr noundef nonnull %256) #13
  %525 = load i32, ptr %279, align 4
  %526 = and i32 %525, 64
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %530, label %528

528:                                              ; preds = %524
  %529 = getelementptr inbounds %struct.sta_info, ptr %256, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 7, ptr noundef %529) #13
  br label %530

530:                                              ; preds = %528, %524
  %531 = phi i8 [ 1, %528 ], [ 0, %524 ]
  %532 = getelementptr inbounds %struct.sta_info, ptr %256, i32 0, i32 46, i32 19
  store i8 %531, ptr %532, align 2
  %533 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 15
  %534 = load ptr, ptr %533, align 4
  %535 = icmp eq ptr %534, null
  br i1 %535, label %536, label %540

536:                                              ; preds = %530
  %537 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 53
  %538 = load ptr, ptr %537, align 4
  %539 = icmp eq ptr %538, null
  br i1 %539, label %544, label %540

540:                                              ; preds = %536, %530
  %541 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 11
  %542 = load i16, ptr %541, align 4
  %543 = icmp ugt i16 %542, 3
  br label %544

544:                                              ; preds = %540, %536
  %545 = phi i1 [ false, %536 ], [ %543, %540 ]
  %546 = getelementptr inbounds %struct.sta_info, ptr %256, i32 0, i32 46
  %547 = getelementptr inbounds %struct.sta_info, ptr %256, i32 0, i32 46, i32 10
  %548 = zext i1 %545 to i8
  store i8 %548, ptr %547, align 4
  %549 = tail call i32 @sta_info_move_state(ptr noundef nonnull %256, i32 noundef 3) #13
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %558

551:                                              ; preds = %544
  %552 = load i32, ptr %279, align 4
  %553 = and i32 %552, 4
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %568

555:                                              ; preds = %551
  %556 = tail call i32 @sta_info_move_state(ptr noundef nonnull %256, i32 noundef 4) #13
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %568, label %558

558:                                              ; preds = %555, %544
  %559 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %560 = getelementptr inbounds %struct.sta_info, ptr %256, i32 0, i32 46, i32 1
  %561 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %559, ptr noundef %560) #14
  %562 = tail call i32 @__sta_info_destroy(ptr noundef nonnull %256) #13
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %565, label %564, !prof !11

564:                                              ; preds = %558
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3615, i32 noundef 9, ptr noundef null) #13
  br label %565

565:                                              ; preds = %564, %558
  %566 = load ptr, ptr %6, align 4
  %567 = getelementptr inbounds %struct.ieee80211_local, ptr %566, i32 0, i32 46
  tail call void @mutex_unlock(ptr noundef %567) #13
  br label %900

568:                                              ; preds = %555, %551
  %569 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 8
  %570 = load i8, ptr %569, align 8, !range !14
  %571 = icmp eq i8 %570, 0
  br i1 %571, label %635, label %572

572:                                              ; preds = %568
  %573 = load i32, ptr %8, align 8
  %574 = icmp eq i32 %573, 4
  br i1 %574, label %575, label %579

575:                                              ; preds = %572
  %576 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 49
  %577 = load ptr, ptr %576, align 4
  %578 = getelementptr i8, ptr %577, i32 -1408
  br label %579

579:                                              ; preds = %575, %572
  %580 = phi ptr [ %578, %575 ], [ %0, %572 ]
  %581 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %580, i32 0, i32 8
  %582 = load i32, ptr %581, align 8
  %583 = and i32 %582, 32
  %584 = icmp eq i32 %583, 0
  %585 = load i1, ptr @drv_sta_set_4addr.__already_done, align 1
  %586 = xor i1 %585, true
  %587 = select i1 %584, i1 %586, i1 false
  br i1 %587, label %588, label %594, !prof !8

588:                                              ; preds = %579
  store i1 true, ptr @drv_sta_set_4addr.__already_done, align 1
  %589 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %580, i32 0, i32 6
  %590 = load ptr, ptr %589, align 8
  %591 = icmp eq ptr %590, null
  %592 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %580, i32 0, i32 10
  %593 = select i1 %591, ptr %592, ptr %590
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 1428, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef %593, i32 noundef %582) #13
  br label %594

594:                                              ; preds = %588, %579
  br i1 %584, label %635, label %595

595:                                              ; preds = %594
  %596 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sta_set_4addr, i32 0, i32 1), align 4
  %597 = icmp sgt i32 %596, 0
  br i1 %597, label %598, label %611

598:                                              ; preds = %595
  %599 = tail call ptr @llvm.thread.pointer() #13
  %600 = getelementptr inbounds %struct.thread_info, ptr %599, i32 0, i32 2
  %601 = load i32, ptr %600, align 8
  %602 = lshr i32 %601, 5
  %603 = getelementptr i32, ptr @__cpu_online_mask, i32 %602
  %604 = load volatile i32, ptr %603, align 4
  %605 = and i32 %601, 31
  %606 = shl nuw i32 1, %605
  %607 = and i32 %606, %604
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %611, label %609

609:                                              ; preds = %598
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !46
  %610 = tail call i32 @__traceiter_drv_sta_set_4addr(ptr noundef null, ptr noundef %7, ptr noundef %580, ptr noundef %546, i1 noundef zeroext true) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !47
  br label %611

611:                                              ; preds = %609, %598, %595
  %612 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 8
  %613 = load ptr, ptr %612, align 4
  %614 = getelementptr inbounds %struct.ieee80211_ops, ptr %613, i32 0, i32 103
  %615 = load ptr, ptr %614, align 4
  %616 = icmp eq ptr %615, null
  br i1 %616, label %619, label %617

617:                                              ; preds = %611
  %618 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %580, i32 0, i32 58
  tail call void %615(ptr noundef %7, ptr noundef %618, ptr noundef %546, i1 noundef zeroext true) #13
  br label %619

619:                                              ; preds = %617, %611
  %620 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %621 = icmp sgt i32 %620, 0
  br i1 %621, label %622, label %635

622:                                              ; preds = %619
  %623 = tail call ptr @llvm.thread.pointer() #13
  %624 = getelementptr inbounds %struct.thread_info, ptr %623, i32 0, i32 2
  %625 = load i32, ptr %624, align 8
  %626 = lshr i32 %625, 5
  %627 = getelementptr i32, ptr @__cpu_online_mask, i32 %626
  %628 = load volatile i32, ptr %627, align 4
  %629 = and i32 %625, 31
  %630 = shl nuw i32 1, %629
  %631 = and i32 %630, %628
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %635, label %633

633:                                              ; preds = %622
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %634 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %7) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  br label %635

635:                                              ; preds = %633, %622, %619, %594, %568
  %636 = load ptr, ptr %6, align 4
  %637 = getelementptr inbounds %struct.ieee80211_local, ptr %636, i32 0, i32 46
  tail call void @mutex_unlock(ptr noundef %637) #13
  %638 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 20
  store i32 -1, ptr %638, align 4
  %639 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 22
  store i32 -1, ptr %639, align 4
  %640 = load i32, ptr %279, align 4
  %641 = and i32 %640, 16384
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %644, label %643

643:                                              ; preds = %635
  tail call void @ieee80211_set_wmm_default(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %655

644:                                              ; preds = %635
  %645 = load ptr, ptr %533, align 4
  %646 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 65
  %647 = load i8, ptr %646, align 4
  %648 = zext i8 %647 to i32
  %649 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 24
  %650 = load ptr, ptr %649, align 4
  %651 = tail call fastcc zeroext i1 @ieee80211_sta_wmm_params(ptr noundef %7, ptr noundef %0, ptr noundef %645, i32 noundef %648, ptr noundef %650)
  br i1 %651, label %655, label %652

652:                                              ; preds = %644
  tail call void @ieee80211_set_wmm_default(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true) #13
  %653 = load i32, ptr %279, align 4
  %654 = or i32 %653, 16384
  store i32 %654, ptr %279, align 4
  br label %655

655:                                              ; preds = %652, %644, %643
  %656 = getelementptr inbounds %struct.ieee802_11_elems, ptr %28, i32 0, i32 46
  %657 = load ptr, ptr %656, align 4
  %658 = icmp eq ptr %657, null
  br i1 %658, label %667, label %659

659:                                              ; preds = %655
  %660 = load i16, ptr %657, align 1
  %661 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 46
  store i16 %660, ptr %661, align 8
  %662 = load ptr, ptr %656, align 4
  %663 = getelementptr inbounds %struct.ieee80211_bss_max_idle_period_ie, ptr %662, i32 0, i32 1
  %664 = load i8, ptr %663, align 1
  %665 = and i8 %664, 1
  %666 = or i32 %494, 16785408
  br label %670

667:                                              ; preds = %655
  %668 = or i32 %494, 8192
  %669 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 46
  store i16 0, ptr %669, align 8
  br label %670

670:                                              ; preds = %667, %659
  %671 = phi i8 [ 0, %667 ], [ %665, %659 ]
  %672 = phi i32 [ %668, %667 ], [ %666, %659 ]
  %673 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 47
  store i8 %671, ptr %673, align 2
  %674 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 20
  store i16 %20, ptr %674, align 4
  %675 = load ptr, ptr %6, align 4
  %676 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 1, i32 15
  %677 = load i8, ptr %676, align 4, !range !14
  %678 = icmp eq i8 %677, 0
  %679 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 1, i32 16
  %680 = load i8, ptr %679, align 1
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %681 = load volatile ptr, ptr %263, align 4
  %682 = icmp eq ptr %681, null
  br i1 %682, label %683, label %684

683:                                              ; preds = %670
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %736

684:                                              ; preds = %670
  %685 = load ptr, ptr %681, align 4
  %686 = load i32, ptr %685, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %687 = getelementptr inbounds %struct.ieee80211_hw, ptr %675, i32 0, i32 1
  %688 = load ptr, ptr %687, align 8
  %689 = getelementptr %struct.wiphy, ptr %688, i32 0, i32 53, i32 %686
  %690 = load ptr, ptr %689, align 4
  %691 = icmp eq ptr %690, null
  br i1 %691, label %736, label %692

692:                                              ; preds = %684
  br i1 %678, label %699, label %693

693:                                              ; preds = %692
  %694 = zext i8 %680 to i32
  %695 = and i32 %694, 2
  %696 = icmp ne i32 %695, 0
  %697 = and i32 %694, 4
  %698 = icmp eq i32 %697, 0
  br label %702

699:                                              ; preds = %692
  %700 = and i16 %20, 32
  %701 = icmp ne i16 %700, 0
  br label %702

702:                                              ; preds = %699, %693
  %703 = phi i1 [ %696, %693 ], [ false, %699 ]
  %704 = phi i1 [ %698, %693 ], [ %701, %699 ]
  %705 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %690, i32 0, i32 2
  %706 = load i32, ptr %705, align 4
  %707 = icmp eq i32 %706, 1
  br i1 %707, label %712, label %708

708:                                              ; preds = %702
  %709 = and i16 %20, 1024
  %710 = icmp ne i16 %709, 0
  %711 = icmp eq i32 %706, 3
  br i1 %711, label %712, label %713

712:                                              ; preds = %708, %702
  br label %713

713:                                              ; preds = %712, %708
  %714 = phi i1 [ true, %712 ], [ %710, %708 ]
  %715 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 14
  %716 = load i8, ptr %715, align 4, !range !14
  %717 = zext i1 %703 to i8
  %718 = icmp eq i8 %716, %717
  br i1 %718, label %720, label %719

719:                                              ; preds = %713
  store i8 %717, ptr %715, align 4
  br label %720

720:                                              ; preds = %719, %713
  %721 = phi i32 [ 2, %719 ], [ 0, %713 ]
  %722 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 15
  %723 = load i8, ptr %722, align 1, !range !14
  %724 = zext i1 %704 to i8
  %725 = icmp eq i8 %723, %724
  br i1 %725, label %728, label %726

726:                                              ; preds = %720
  store i8 %724, ptr %722, align 1
  %727 = or i32 %721, 4
  br label %728

728:                                              ; preds = %726, %720
  %729 = phi i32 [ %727, %726 ], [ %721, %720 ]
  %730 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 16
  %731 = load i8, ptr %730, align 2, !range !14
  %732 = zext i1 %714 to i8
  %733 = icmp eq i8 %731, %732
  br i1 %733, label %736, label %734

734:                                              ; preds = %728
  store i8 %732, ptr %730, align 2
  %735 = or i32 %729, 8
  br label %736

736:                                              ; preds = %734, %728, %684, %683
  %737 = phi i32 [ 0, %684 ], [ %735, %734 ], [ %729, %728 ], [ 0, %683 ]
  %738 = or i32 %737, %672
  %739 = or i32 %738, 1
  %740 = load i32, ptr @beacon_loss_count, align 4
  %741 = shl i32 %740, 10
  %742 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 19
  %743 = load i16, ptr %742, align 2
  %744 = zext i16 %743 to i32
  %745 = mul i32 %741, %744
  %746 = tail call i32 @__usecs_to_jiffies(i32 noundef %745) #13
  %747 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 20
  store i32 %746, ptr %747, align 8
  %748 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  store ptr %1, ptr %748, align 8
  %749 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %749, ptr noundef align 4 dereferenceable(6) %255, i32 6, i1 false) #13
  tail call void @ieee80211_check_rate_mask(ptr noundef %0) #13
  %750 = load i32, ptr %279, align 8
  %751 = or i32 %750, 512
  store i32 %751, ptr %279, align 8
  %752 = load i8, ptr %385, align 2, !range !14
  %753 = icmp eq i8 %752, 0
  br i1 %753, label %754, label %759

754:                                              ; preds = %736
  %755 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 10
  %756 = load i32, ptr %755, align 8
  %757 = and i32 %756, 8
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %777, label %759

759:                                              ; preds = %754, %736
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %760 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 2
  %761 = load volatile ptr, ptr %760, align 4
  %762 = icmp eq ptr %761, null
  br i1 %762, label %775, label %763

763:                                              ; preds = %759
  %764 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %761, i32 0, i32 4
  %765 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %761, i32 0, i32 2
  %766 = load i32, ptr %765, align 8
  %767 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 44
  %768 = tail call i32 @cfg80211_get_p2p_attr(ptr noundef %764, i32 noundef %766, i32 noundef 12, ptr noundef %767, i32 noundef 54) #13
  %769 = icmp sgt i32 %768, 1
  br i1 %769, label %770, label %775

770:                                              ; preds = %763
  %771 = load i8, ptr %767, align 8
  %772 = zext i8 %771 to i16
  %773 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %5, i32 0, i32 38
  store i16 %772, ptr %773, align 2
  %774 = or i32 %738, 524289
  br label %775

775:                                              ; preds = %770, %763, %759
  %776 = phi i32 [ %739, %759 ], [ %774, %770 ], [ %739, %763 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %777

777:                                              ; preds = %775, %754
  %778 = phi i32 [ %776, %775 ], [ %739, %754 ]
  %779 = load ptr, ptr %6, align 4
  %780 = getelementptr inbounds %struct.ieee80211_local, ptr %779, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %780) #13
  %781 = load i32, ptr %279, align 8
  %782 = and i32 %781, -3
  store i32 %782, ptr %279, align 8
  %783 = load ptr, ptr %6, align 4
  tail call void @ieee80211_run_deferred_scan(ptr noundef %783) #13
  %784 = load ptr, ptr %6, align 4
  %785 = getelementptr inbounds %struct.ieee80211_local, ptr %784, i32 0, i32 66
  tail call void @mutex_unlock(ptr noundef %785) #13
  %786 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 3
  %787 = load i8, ptr %786, align 4, !range !14
  %788 = icmp eq i8 %787, 0
  br i1 %788, label %798, label %789

789:                                              ; preds = %777
  %790 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %5, i32 0, i32 20
  %791 = load i8, ptr %790, align 1
  %792 = icmp eq i8 %791, 0
  %793 = select i1 %792, i8 1, i8 %791
  %794 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 18
  store i8 %793, ptr %794, align 8
  %795 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 1, i32 11, i32 4
  %796 = load ptr, ptr %795, align 4
  %797 = or i32 %778, 1048576
  br label %800

798:                                              ; preds = %777
  %799 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 18
  store i8 0, ptr %799, align 8
  br label %800

800:                                              ; preds = %798, %789
  %801 = phi ptr [ null, %798 ], [ %796, %789 ]
  %802 = phi i32 [ %778, %798 ], [ %797, %789 ]
  %803 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 25
  store ptr %801, ptr %803, align 4
  %804 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 10
  store i8 1, ptr %804, align 1
  %805 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 10
  %806 = load i32, ptr %805, align 8
  %807 = and i32 %806, 2
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %815, label %809

809:                                              ; preds = %800
  %810 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 28
  %811 = load i32, ptr %810, align 4
  %812 = icmp eq i32 %811, 0
  %813 = or i32 %802, 1024
  %814 = select i1 %812, i32 %802, i32 %813
  br label %815

815:                                              ; preds = %809, %800
  %816 = phi i32 [ %802, %800 ], [ %814, %809 ]
  %817 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 35
  %818 = load i32, ptr %817, align 8
  %819 = icmp eq i32 %818, 0
  %820 = or i32 %816, 4096
  %821 = select i1 %819, i32 %816, i32 %820
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef %821) #13
  %822 = getelementptr inbounds %struct.ieee80211_local, ptr %675, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %822) #13
  tail call void @ieee80211_recalc_ps(ptr noundef %675) #13
  tail call void @mutex_unlock(ptr noundef %822) #13
  tail call void @ieee80211_recalc_smps(ptr noundef %0) #13
  %823 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %5, i32 0, i32 17
  %824 = load i8, ptr %823, align 2, !range !14
  %825 = icmp eq i8 %824, 0
  br i1 %825, label %849, label %826

826:                                              ; preds = %815
  %827 = load i8, ptr %40, align 1, !range !14
  %828 = icmp eq i8 %827, 0
  br i1 %828, label %829, label %849

829:                                              ; preds = %826
  %830 = load ptr, ptr %748, align 4
  %831 = icmp eq ptr %830, null
  br i1 %831, label %849, label %832

832:                                              ; preds = %829
  %833 = load i32, ptr %279, align 4
  %834 = and i32 %833, 2
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %836, label %849

836:                                              ; preds = %832
  %837 = load i8, ptr %786, align 4, !range !14
  %838 = icmp eq i8 %837, 0
  br i1 %838, label %849, label %839

839:                                              ; preds = %836
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %840 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef %749) #13
  %841 = icmp eq ptr %840, null
  br i1 %841, label %847, label %842

842:                                              ; preds = %839
  %843 = getelementptr inbounds %struct.sta_info, ptr %840, i32 0, i32 23
  %844 = load volatile i32, ptr %843, align 4
  %845 = and i32 %844, 8
  %846 = icmp ne i32 %845, 0
  br label %847

847:                                              ; preds = %842, %839
  %848 = phi i1 [ %846, %842 ], [ false, %839 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %849

849:                                              ; preds = %847, %836, %832, %829, %826, %815
  %850 = phi i1 [ %848, %847 ], [ false, %815 ], [ false, %826 ], [ false, %829 ], [ false, %832 ], [ false, %836 ]
  %851 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 38
  %852 = load i8, ptr %851, align 2, !range !14
  %853 = zext i1 %850 to i8
  %854 = icmp eq i8 %852, %853
  br i1 %854, label %856, label %855

855:                                              ; preds = %849
  store i8 %853, ptr %851, align 2
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 131072) #13
  br label %856

856:                                              ; preds = %855, %849
  %857 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %858 = load ptr, ptr %857, align 8
  tail call void @netif_carrier_on(ptr noundef %858) #13
  %859 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 23
  %860 = load i8, ptr %859, align 4
  %861 = icmp eq i8 %860, 0
  br i1 %861, label %863, label %862

862:                                              ; preds = %856
  tail call void @ieee80211_send_4addr_nullfunc(ptr noundef %7, ptr noundef %0)
  br label %863

863:                                              ; preds = %862, %856
  %864 = load i32, ptr %805, align 8
  %865 = and i32 %864, 1
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %867, label %880

867:                                              ; preds = %863
  %868 = load ptr, ptr %6, align 4
  %869 = getelementptr inbounds %struct.ieee80211_hw, ptr %868, i32 0, i32 4
  %870 = load volatile i32, ptr %869, align 4
  %871 = and i32 %870, 131072
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %873, label %880

873:                                              ; preds = %867
  %874 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 2
  %875 = load volatile i32, ptr @jiffies, align 64
  %876 = load i32, ptr %747, align 8
  %877 = add i32 %876, %875
  %878 = tail call i32 @round_jiffies_up(i32 noundef %877) #13
  %879 = tail call i32 @mod_timer(ptr noundef %874, i32 noundef %878) #13
  br label %880

880:                                              ; preds = %873, %867, %863
  %881 = load ptr, ptr %748, align 4
  %882 = icmp eq ptr %881, null
  br i1 %882, label %900, label %883, !prof !8

883:                                              ; preds = %880
  %884 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 0, i32 1
  %885 = load i32, ptr %884, align 4
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %888, label %887

887:                                              ; preds = %883
  store i32 0, ptr %884, align 4
  br label %888

888:                                              ; preds = %887, %883
  %889 = load ptr, ptr %6, align 4
  %890 = getelementptr inbounds %struct.ieee80211_hw, ptr %889, i32 0, i32 4
  %891 = load volatile i32, ptr %890, align 4
  %892 = and i32 %891, 131072
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %894, label %900

894:                                              ; preds = %888
  %895 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %896 = load volatile i32, ptr @jiffies, align 64
  %897 = add i32 %896, 3000
  %898 = tail call i32 @round_jiffies_up(i32 noundef %897) #13
  %899 = tail call i32 @mod_timer(ptr noundef %895, i32 noundef %898) #13
  br label %900

900:                                              ; preds = %894, %888, %880, %565, %291, %275, %258, %248, %236, %222, %116, %110, %109, %53
  %901 = phi i1 [ false, %258 ], [ false, %565 ], [ false, %291 ], [ false, %275 ], [ false, %248 ], [ false, %236 ], [ false, %222 ], [ false, %53 ], [ true, %880 ], [ true, %888 ], [ true, %894 ], [ false, %110 ], [ false, %116 ], [ false, %109 ]
  %902 = phi ptr [ %252, %258 ], [ %252, %565 ], [ %252, %291 ], [ %252, %275 ], [ null, %248 ], [ %207, %236 ], [ %207, %222 ], [ null, %53 ], [ %252, %880 ], [ %252, %888 ], [ %252, %894 ], [ null, %110 ], [ %114, %116 ], [ null, %109 ]
  tail call void @kfree(ptr noundef nonnull %28) #13
  tail call void @kfree(ptr noundef %902) #13
  br label %903

903:                                              ; preds = %900, %4
  %904 = phi i1 [ %901, %900 ], [ false, %4 ]
  ret i1 %904
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_rx_assoc_resp(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_ht_cap_ie_to_sta_ht_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vht_cap_ie_to_sta_vht_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_he_cap_ie_to_sta_he_cap(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_he_op_ie_to_bss_conf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_he_spr_ie_to_bss_conf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_rate_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_move_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sta_info_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_set_wmm_default(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sta_set_4addr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_rate_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_smps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_run_deferred_scan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_parse_ch_switch_ie(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_sta_abort_chanswitch(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_ops, ptr %5, i32 0, i32 80
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %58, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %11) #13
  %12 = tail call i32 @ieee80211_vif_unreserve_chanctx(ptr noundef %0) #13
  tail call void @mutex_unlock(ptr noundef %11) #13
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 30
  %14 = load i8, ptr %13, align 8, !range !14
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  tail call void @ieee80211_wake_vif_queues(ptr noundef %3, ptr noundef %0, i32 noundef 2) #13
  br label %17

17:                                               ; preds = %16, %9
  store i8 0, ptr %13, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 4
  store i8 0, ptr %18, align 1
  tail call void @mutex_unlock(ptr noundef %10) #13
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  %24 = load i1, ptr @drv_abort_channel_switch.__already_done, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %33, !prof !8

27:                                               ; preds = %17
  store i1 true, ptr @drv_abort_channel_switch.__already_done, align 1
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %32 = select i1 %30, ptr %31, ptr %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 1084, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef %32, i32 noundef %21) #13
  br label %33

33:                                               ; preds = %27, %17
  br i1 %23, label %58, label %34

34:                                               ; preds = %33
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_abort_channel_switch, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = tail call ptr @llvm.thread.pointer() #13
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !48
  %49 = tail call i32 @__traceiter_drv_abort_channel_switch(ptr noundef null, ptr noundef %19, ptr noundef %0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !49
  br label %50

50:                                               ; preds = %48, %37, %34
  %51 = getelementptr inbounds %struct.ieee80211_local, ptr %19, i32 0, i32 8
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.ieee80211_ops, ptr %52, i32 0, i32 80
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  tail call void %54(ptr noundef %19, ptr noundef %57) #13
  br label %58

58:                                               ; preds = %56, %50, %33, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drv_channel_switch_rx_beacon(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  %9 = load i1, ptr @drv_channel_switch_rx_beacon.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %18, !prof !8

12:                                               ; preds = %2
  store i1 true, ptr @drv_channel_switch_rx_beacon.__already_done, align 1
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %17 = select i1 %15, ptr %16, ptr %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 1099, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef %17, i32 noundef %6) #13
  br label %18

18:                                               ; preds = %12, %2
  br i1 %8, label %43, label %19

19:                                               ; preds = %18
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_channel_switch_rx_beacon, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !50
  %34 = tail call i32 @__traceiter_drv_channel_switch_rx_beacon(ptr noundef null, ptr noundef %4, ptr noundef %0, ptr noundef %1) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !51
  br label %35

35:                                               ; preds = %33, %22, %19
  %36 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ieee80211_ops, ptr %37, i32 0, i32 81
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  tail call void %39(ptr noundef %4, ptr noundef %42, ptr noundef %1) #13
  br label %43

43:                                               ; preds = %41, %35, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_teardown_tdls_peers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_vif_reserve_chanctx(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_vif_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ch_switch_started_notify(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_vif_unreserve_chanctx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_abort_channel_switch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_channel_switch_rx_beacon(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_pre_channel_switch(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_channel_switch(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_reset_erp_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sta_info_flush(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unlink_bss(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_event_callback(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_parse_bitrates(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_encode_usf(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_ie_split_ric(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_ie_split_vendor(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_add_wmm_info_ie(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_add_aid_request_ie(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_add_s1g_capab_ie(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fils_encrypt_assoc_req(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_ht_cap(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_apply_vhtcap_overrides(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_vht_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_he_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ie_build_he_6ghz_cap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_abandon_assoc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_fast_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_mgd_probe_ap(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 9
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %52, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 7
  tail call void @mutex_lock(ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %51, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ieee80211_local, ptr %14, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %15) #13
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.ieee80211_local, ptr %16, i32 0, i32 87
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.ieee80211_local, ptr %16, i32 0, i32 67
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %12
  %25 = getelementptr inbounds %struct.ieee80211_local, ptr %16, i32 0, i32 66
  tail call void @mutex_unlock(ptr noundef %25) #13
  br label %51

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ieee80211_local, ptr %16, i32 0, i32 32
  %28 = load i8, ptr %27, align 2, !range !14
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ieee80211_local, ptr %16, i32 0, i32 66
  tail call void @mutex_unlock(ptr noundef %31) #13
  tail call fastcc void @ieee80211_reset_ap_probe(ptr noundef %0)
  br label %51

32:                                               ; preds = %26
  br i1 %1, label %33, label %36

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  tail call void @ieee80211_cqm_beacon_loss_notify(ptr noundef %34, i32 noundef 3264)
  %35 = load ptr, ptr %13, align 4
  br label %36

36:                                               ; preds = %33, %32
  %37 = phi ptr [ %35, %33 ], [ %16, %32 ]
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  %42 = or i32 %39, 2
  store i32 %42, ptr %38, align 4
  %43 = getelementptr inbounds %struct.ieee80211_local, ptr %37, i32 0, i32 66
  tail call void @mutex_unlock(ptr noundef %43) #13
  br i1 %41, label %44, label %51

44:                                               ; preds = %36
  %45 = load ptr, ptr %13, align 4
  %46 = getelementptr inbounds %struct.ieee80211_local, ptr %45, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %46) #13
  %47 = load ptr, ptr %13, align 4
  tail call void @ieee80211_recalc_ps(ptr noundef %47)
  %48 = load ptr, ptr %13, align 4
  %49 = getelementptr inbounds %struct.ieee80211_local, ptr %48, i32 0, i32 64
  tail call void @mutex_unlock(ptr noundef %49) #13
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 0, i32 1
  store i32 0, ptr %50, align 4
  tail call fastcc void @ieee80211_mgd_probe_ap_send(ptr noundef %0)
  br label %51

51:                                               ; preds = %44, %36, %30, %24, %7
  tail call void @mutex_unlock(ptr noundef %8) #13
  br label %52

52:                                               ; preds = %51, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_vif_use_reserved_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ieee80211_disconnect(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [26 x i8], align 1
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(26) %2, i8 0, i32 26, i1 false), !annotation !25
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 7
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %5) #13
  br label %39

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 30
  %12 = load i8, ptr %11, align 8, !range !14
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  tail call void @cfg80211_unlink_bss(ptr noundef %20, ptr noundef nonnull %7) #13
  %21 = load i8, ptr %14, align 1
  %22 = and i8 %21, 2
  br label %23

23:                                               ; preds = %18, %10
  %24 = phi i8 [ %22, %18 ], [ %16, %10 ]
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i16 4, i16 3
  call fastcc void @ieee80211_set_disassoc(ptr noundef %0, i16 noundef zeroext 192, i16 noundef zeroext %26, i1 noundef zeroext %13, ptr noundef nonnull %2)
  %27 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 66
  call void @mutex_lock(ptr noundef %27) #13
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 4
  store i8 0, ptr %28, align 1
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 10
  store i8 0, ptr %29, align 4
  %30 = load i8, ptr %11, align 8, !range !14
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  call void @ieee80211_wake_vif_queues(ptr noundef %4, ptr noundef %0, i32 noundef 2) #13
  store i8 0, ptr %11, align 8
  br label %33

33:                                               ; preds = %32, %23
  call void @mutex_unlock(ptr noundef %27) #13
  %34 = load i8, ptr %14, align 1
  %35 = and i8 %34, 4
  %36 = icmp ne i8 %35, 0
  call fastcc void @ieee80211_report_disconnect(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 26, i1 noundef zeroext %13, i16 noundef zeroext 4, i1 noundef zeroext %36)
  %37 = load i8, ptr %14, align 1
  %38 = and i8 %37, -5
  store i8 %38, ptr %14, align 1
  call void @mutex_unlock(ptr noundef %5) #13
  br label %39

39:                                               ; preds = %33, %9
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_s1g_sta_rate_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sta_info_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_insert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_vif_use_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ieee80211_mcs_to_chains(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_mgd_prepare_tx(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_mgd_complete_tx(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_cqm_rssi_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_cqm_beacon_loss_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nounwind allocsize(0) }

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
!9 = !{i64 2149118630}
!10 = !{i64 2149118847}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2159122593}
!13 = !{i64 2159122767}
!14 = !{i8 0, i8 2}
!15 = !{i64 2158471373}
!16 = !{i64 2158471537}
!17 = !{i64 2157613510}
!18 = !{i64 2157613672}
!19 = !{i64 2158992595}
!20 = !{i64 2158992747}
!21 = !{i64 2159005569}
!22 = !{i64 2159005729}
!23 = !{i64 2159018860}
!24 = !{i64 2159019032}
!25 = !{!"auto-init"}
!26 = !{i64 2159314394}
!27 = !{i64 2159314596}
!28 = !{i64 2157600624}
!29 = !{i64 2157600784}
!30 = !{i64 2158366299}
!31 = !{i64 2158366493}
!32 = !{i64 2157587754}
!33 = !{i64 2157587906}
!34 = !{i64 2158532503}
!35 = !{i64 2158532691}
!36 = !{i64 2158582767}
!37 = !{i64 2158582995}
!38 = !{i64 2158597356}
!39 = !{i64 2158597586}
!40 = !{i64 2159037095}
!41 = !{i64 2159037303}
!42 = !{i64 2159051106}
!43 = !{i64 2159051294}
!44 = !{i64 2159328487}
!45 = !{i64 2159328669}
!46 = !{i64 2159487404}
!47 = !{i64 2159487602}
!48 = !{i64 2159346703}
!49 = !{i64 2159346887}
!50 = !{i64 2159361743}
!51 = !{i64 2159361957}
