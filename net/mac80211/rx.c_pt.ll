; ModuleID = '/llk/IR/net/mac80211/rx.c_pt.bc'
source_filename = "../net/mac80211/rx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_sta_ps_transition:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_sta_ps_transition\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_sta_ps_transition:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_sta_pspoll:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_sta_pspoll\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_sta_pspoll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_sta_uapsd_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_sta_uapsd_trigger\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_sta_uapsd_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_mark_rx_ba_filtered_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_mark_rx_ba_filtered_frames\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_mark_rx_ba_filtered_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_rx_list:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_rx_list\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_rx_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_rx_napi:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_rx_napi\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_rx_napi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_rx_irqsafe:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_rx_irqsafe\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_rx_irqsafe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.121, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.121 = type { i32, i16 }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.182, [17 x i16], %struct.anon.183, %struct.anon.184, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.17 }
%union.anon.17 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.sk_buff_head = type { %union.anon.122, i32, %struct.spinlock }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { ptr, ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.anon.182 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.183 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.184 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
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
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.0, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.0 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.1] }
%struct.anon.1 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_if_ap = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ps_data, %struct.atomic_t, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%struct.ieee80211_rx_data = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %union.anon.185 }
%union.anon.185 = type { %struct.anon.186 }
%struct.anon.186 = type { i32, i16 }
%struct.ieee80211_event = type { i32, %union.anon.131 }
%union.anon.131 = type { %struct.ieee80211_mlme_event }
%struct.ieee80211_mlme_event = type { i32, i32, i16 }
%struct.tid_ampdu_rx = type { %struct.callback_head, %struct.spinlock, i64, ptr, ptr, ptr, %struct.timer_list, %struct.timer_list, i32, i16, i16, i16, i16, i16, i8, i8 }
%struct.ieee80211_ba_event = type { ptr, i16, i16 }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.196 = type { i16, i16 }
%struct.ieee80211_if_ibss = type { %struct.timer_list, %struct.work_struct, i32, i32, i8, i8, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, ptr, %struct.cfg80211_chan_def, i32, ptr, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.spinlock, %struct.list_head, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.149 }
%union.anon.149 = type { %struct.anon.155, [16 x i8] }
%struct.anon.155 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_key = type { ptr, ptr, ptr, %struct.list_head, i32, %union.anon.140, i32, %struct.ieee80211_key_conf }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { %struct.spinlock, %struct.tkip_ctx, [16 x %struct.tkip_ctx_rx], i32 }
%struct.tkip_ctx = type { [5 x i16], i32, i32 }
%struct.tkip_ctx_rx = type { %struct.tkip_ctx, i32, i16 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ieee80211_tdls_data = type { [6 x i8], [6 x i8], i16, i8, i8, i8, %union.anon.188 }
%union.anon.188 = type <{ %struct.anon.192, [3 x i8] }>
%struct.anon.192 = type { i16, [0 x i8] }
%struct.ieee80211_fast_rx = type { ptr, i32, [6 x i8], [6 x i8], i16, i16, i8, i8, i8, i8, %struct.callback_head }
%struct.ieee80211_if_managed = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i8, i8, ptr, ptr, ptr, [6 x i8], i8, i8, i8, i8, i32, i32, %struct.work_struct, i32, i8, i8, i8, i32, i8, i8, i16, i32, i32, i32, i32, i32, i8, i16, %struct.ewma_beacon_signal, i32, i32, i32, i32, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_s1g_cap, %struct.ieee80211_s1g_cap, [6 x i8], %struct.delayed_work, ptr, ptr, %struct.spinlock, i8, i8, [4 x %struct.ieee80211_sta_tx_tspec], %struct.delayed_work, ptr, i32 }
%struct.ewma_beacon_signal = type { i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_s1g_cap = type { [10 x i8], [5 x i8] }
%struct.ieee80211_sta_tx_tspec = type { i32, i32, i8, i8, i32, i32, i8 }
%struct.anon.200 = type { %struct.ieee80211_hdr_3addr, i8, i8 }
%struct.ieee80211_hdr_3addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.120, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.anon.120 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_vendor_radiotap = type { i32, i8, [3 x i8], i8, i8, i16, [0 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.47, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.84, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.47 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ref_tracker_dir = type {}
%union.anon.84 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync, [28 x i8] }
%struct.sta_opmode_info = type { i32, i32, i32, i8 }
%struct.anon.162 = type { i8, %union.anon.163 }
%union.anon.163 = type <{ %struct.anon.168, [17 x i8] }>
%struct.anon.168 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.ieee80211_mmie = type { i8, i8, i16, [6 x i8], [8 x i8] }
%struct.ieee80211_mmie_16 = type { i8, i8, i16, [6 x i8], [16 x i8] }
%struct.ieee80211_twt_setup = type { i8, i8, i8, i8, [0 x i8] }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.ieee80211_radiotap_he_mu = type { i16, i16, [4 x i8], [4 x i8] }
%struct.ieee80211_radiotap_header = type { i8, i8, i16, i32, [0 x i32] }
%struct.anon.201 = type { [6 x i8], i16 }

@.str = private unnamed_addr constant [18 x i8] c"net/mac80211/rx.c\00", align 1
@__kstrtab_ieee80211_sta_ps_transition = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_sta_ps_transition = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_sta_ps_transition = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_sta_ps_transition to i32), ptr @__kstrtab_ieee80211_sta_ps_transition, ptr @__kstrtabns_ieee80211_sta_ps_transition }, section "___ksymtab+ieee80211_sta_ps_transition", align 4
@__kstrtab_ieee80211_sta_pspoll = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_sta_pspoll = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_sta_pspoll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_sta_pspoll to i32), ptr @__kstrtab_ieee80211_sta_pspoll, ptr @__kstrtabns_ieee80211_sta_pspoll }, section "___ksymtab+ieee80211_sta_pspoll", align 4
@ieee80211_ac_to_qos_mask = external dso_local local_unnamed_addr constant [4 x i8], align 1
@__kstrtab_ieee80211_sta_uapsd_trigger = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_sta_uapsd_trigger = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_sta_uapsd_trigger = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_sta_uapsd_trigger to i32), ptr @__kstrtab_ieee80211_sta_uapsd_trigger, ptr @__kstrtabns_ieee80211_sta_uapsd_trigger }, section "___ksymtab+ieee80211_sta_uapsd_trigger", align 4
@__kstrtab_ieee80211_mark_rx_ba_filtered_frames = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_mark_rx_ba_filtered_frames = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_mark_rx_ba_filtered_frames = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_mark_rx_ba_filtered_frames to i32), ptr @__kstrtab_ieee80211_mark_rx_ba_filtered_frames, ptr @__kstrtabns_ieee80211_mark_rx_ba_filtered_frames }, section "___ksymtab+ieee80211_mark_rx_ba_filtered_frames", align 4
@rfc1042_header = external dso_local local_unnamed_addr constant [6 x i8], align 1
@ieee80211_rx_list.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"Rate marked as an HT rate but passed status->rate_idx is not an MCS index [0-76]: %d (0x%02x)\0A\00", align 1
@ieee80211_rx_list.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Rate marked as a VHT rate but data is invalid: MCS: %d, NSS: %d\0A\00", align 1
@ieee80211_rx_list.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"Rate marked as an HE rate but data is invalid: MCS: %d, NSS: %d\0A\00", align 1
@__kstrtab_ieee80211_rx_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_rx_list = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_rx_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_rx_list to i32), ptr @__kstrtab_ieee80211_rx_list, ptr @__kstrtabns_ieee80211_rx_list }, section "___ksymtab+ieee80211_rx_list", align 4
@__kstrtab_ieee80211_rx_napi = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_rx_napi = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_rx_napi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_rx_napi to i32), ptr @__kstrtab_ieee80211_rx_napi, ptr @__kstrtabns_ieee80211_rx_napi }, section "___ksymtab+ieee80211_rx_napi", align 4
@__kstrtab_ieee80211_rx_irqsafe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_rx_irqsafe = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_rx_irqsafe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_rx_irqsafe to i32), ptr @__kstrtab_ieee80211_rx_irqsafe, ptr @__kstrtabns_ieee80211_rx_irqsafe }, section "___ksymtab+ieee80211_rx_irqsafe", align 4
@drv_sta_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@__tracepoint_drv_sta_notify = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@ieee802_1d_to_ac = external dso_local local_unnamed_addr constant [8 x i32], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__tracepoint_drv_event_callback = external dso_local global %struct.tracepoint, align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"\016%s: failed to clone multicast frame\0A\00", align 1
@__const.ieee80211_rx_h_ctrl.event = private unnamed_addr constant { i32, { { i32, i32, i16, [2 x i8] } } } { i32 2, { { i32, i32, i16, [2 x i8] } } zeroinitializer }, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"net/mac80211/ieee80211_i.h\00", align 1
@ieee80211_have_rx_timestamp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_add_rx_radiotap_header.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_add_rx_radiotap_header.__already_done.13 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Invalid SU BW %d\0A\00", align 1
@drv_sta_set_decap_offload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_sta_set_decap_offload = external dso_local global %struct.tracepoint, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"failed to copy skb for %s\0A\00", align 1
@ieee80211_accept_frame.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_ieee80211_mark_rx_ba_filtered_frames, ptr @__ksymtab_ieee80211_rx_irqsafe, ptr @__ksymtab_ieee80211_rx_list, ptr @__ksymtab_ieee80211_rx_napi, ptr @__ksymtab_ieee80211_sta_ps_transition, ptr @__ksymtab_ieee80211_sta_pspoll, ptr @__ksymtab_ieee80211_sta_uapsd_trigger], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_sta_ps_transition(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -1952
  %4 = getelementptr i8, ptr %0, i32 -1912
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 4
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1048576
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1630, i32 noundef 9, ptr noundef null) #13
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr i8, ptr %0, i32 -1796
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  %16 = xor i1 %1, true
  %17 = select i1 %16, i1 true, i1 %15
  %18 = xor i1 %15, true
  %19 = select i1 %1, i1 true, i1 %18
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %29

21:                                               ; preds = %11
  br i1 %1, label %22, label %23

22:                                               ; preds = %21
  tail call fastcc void @sta_ps_start(ptr noundef %3)
  br label %29

23:                                               ; preds = %21
  %24 = load volatile i32, ptr %12, align 4
  %25 = and i32 %24, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %12) #13
  br label %29

28:                                               ; preds = %23
  tail call void @_set_bit(i32 noundef 25, ptr noundef %12) #13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %12) #13
  tail call void @ieee80211_sta_ps_deliver_wakeup(ptr noundef %3) #13
  br label %29

29:                                               ; preds = %28, %27, %22, %11
  %30 = phi i32 [ -22, %11 ], [ 0, %22 ], [ 0, %27 ], [ 0, %28 ]
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sta_ps_start(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 58
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, -3
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %105

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 49
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ieee80211_if_ap, ptr %12, i32 0, i32 6, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #13, !srcloc !10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #13, !srcloc !11
  %15 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 2, ptr noundef %15) #13
  %16 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 4
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1048576
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %83

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  %22 = load i32, ptr %6, align 8
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load ptr, ptr %11, align 4
  %26 = getelementptr i8, ptr %25, i32 -1408
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi ptr [ %26, %24 ], [ %3, %20 ]
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 8
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 32
  %32 = icmp eq i32 %31, 0
  %33 = load i1, ptr @drv_sta_notify.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %42, !prof !9

36:                                               ; preds = %27
  store i1 true, ptr @drv_sta_notify.__already_done, align 1
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 6
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 10
  %41 = select i1 %39, ptr %40, ptr %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 442, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %41, i32 noundef %30) #13
  br label %42

42:                                               ; preds = %36, %27
  br i1 %32, label %83, label %43

43:                                               ; preds = %42
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sta_notify, i32 0, i32 1), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %58 = tail call i32 @__traceiter_drv_sta_notify(ptr noundef null, ptr noundef %5, ptr noundef %28, i32 noundef 0, ptr noundef %21) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %59

59:                                               ; preds = %57, %46, %43
  %60 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 8
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.ieee80211_ops, ptr %61, i32 0, i32 33
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 58
  tail call void %63(ptr noundef %5, ptr noundef %66, i32 noundef 0, ptr noundef %21) #13
  br label %67

67:                                               ; preds = %65, %59
  %68 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = tail call ptr @llvm.thread.pointer() #13
  %72 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %73 = load i32, ptr %72, align 8
  %74 = lshr i32 %73, 5
  %75 = getelementptr i32, ptr @__cpu_online_mask, i32 %74
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %73, 31
  %78 = shl nuw i32 1, %77
  %79 = and i32 %78, %76
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %70
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %82 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %5) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %83

83:                                               ; preds = %81, %70, %67, %42, %10
  tail call void @ieee80211_clear_fast_xmit(ptr noundef %0) #13
  %84 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 28
  %85 = load ptr, ptr %84, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %105, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 28
  br label %89

89:                                               ; preds = %102, %87
  %90 = phi i32 [ 0, %87 ], [ %103, %102 ]
  %91 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 46, i32 28, i32 %90
  %92 = load ptr, ptr %91, align 4
  tail call void @ieee80211_unschedule_txq(ptr noundef %5, ptr noundef %92, i1 noundef zeroext false) #13
  %93 = getelementptr i8, ptr %92, i32 -20
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, %93
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = getelementptr i8, ptr %92, i32 -100
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96, %89
  tail call void @_set_bit(i32 noundef %90, ptr noundef %88) #13
  br label %102

101:                                              ; preds = %96
  tail call void @_clear_bit(i32 noundef %90, ptr noundef %88) #13
  br label %102

102:                                              ; preds = %101, %100
  %103 = add nuw nsw i32 %90, 1
  %104 = icmp eq i32 %103, 16
  br i1 %104, label %105, label %89

105:                                              ; preds = %102, %83, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_pspoll(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1952
  %3 = getelementptr i8, ptr %0, i32 -1796
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 262144
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load volatile i32, ptr %3, align 4
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @ieee80211_sta_ps_deliver_poll_response(ptr noundef %2) #13
  br label %13

12:                                               ; preds = %7
  tail call void @_set_bit(i32 noundef 10, ptr noundef %3) #13
  br label %13

13:                                               ; preds = %12, %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_ps_deliver_poll_response(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_uapsd_trigger(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -1952
  %4 = and i8 %1, 7
  %5 = zext i8 %4 to i32
  %6 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_sta, ptr %0, i32 0, i32 11
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr [4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 %7
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, %9
  %13 = icmp eq i8 %12, 0
  %14 = icmp ne i8 %1, 16
  %15 = and i1 %14, %13
  br i1 %15, label %27, label %16

16:                                               ; preds = %2
  %17 = getelementptr i8, ptr %0, i32 -1796
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 262144
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load volatile i32, ptr %17, align 4
  %23 = and i32 %22, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @ieee80211_sta_ps_deliver_uapsd(ptr noundef %3) #13
  br label %27

26:                                               ; preds = %21
  tail call void @_set_bit(i32 noundef 17, ptr noundef %17) #13
  br label %27

27:                                               ; preds = %26, %25, %16, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_ps_deliver_uapsd(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local void @ieee80211_init_frag_cache(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 2
  store i32 0, ptr %2, align 4
  store ptr %0, ptr %0, align 4
  %3 = getelementptr inbounds %struct.anon.123, ptr %0, i32 0, i32 1
  store ptr %0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 1
  %6 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 1, i32 0, i32 2
  store i32 0, ptr %6, align 4
  store ptr %5, ptr %5, align 4
  %7 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  %8 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 1, i32 0, i32 1
  store i32 0, ptr %8, align 4
  %9 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 2
  %10 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 2, i32 0, i32 2
  store i32 0, ptr %10, align 4
  store ptr %9, ptr %9, align 4
  %11 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  %12 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 2, i32 0, i32 1
  store i32 0, ptr %12, align 4
  %13 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 3
  %14 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 3, i32 0, i32 2
  store i32 0, ptr %14, align 4
  store ptr %13, ptr %13, align 4
  %15 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  %16 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 3, i32 0, i32 1
  store i32 0, ptr %16, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_destroy_frag_cache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  %4 = icmp eq ptr %2, null
  %5 = or i1 %3, %4
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %2, %6 ], [ %16, %8 ]
  %10 = load i32, ptr %7, align 4
  %11 = add i32 %10, -1
  store volatile i32 %11, ptr %7, align 4
  %12 = load ptr, ptr %9, align 8
  %13 = getelementptr inbounds %struct.anon.49, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr null, ptr %13, align 4
  store ptr null, ptr %9, align 8
  %15 = getelementptr inbounds %struct.anon.49, ptr %12, i32 0, i32 1
  store volatile ptr %14, ptr %15, align 4
  store volatile ptr %12, ptr %14, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %9, i32 noundef 0) #13
  %16 = load ptr, ptr %0, align 4
  %17 = icmp eq ptr %16, %0
  %18 = icmp eq ptr %16, null
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %8

20:                                               ; preds = %8, %1
  %21 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  %24 = icmp eq ptr %22, null
  %25 = or i1 %23, %24
  br i1 %25, label %40, label %26

26:                                               ; preds = %20
  %27 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 1, i32 0, i32 1
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi ptr [ %22, %26 ], [ %36, %28 ]
  %30 = load i32, ptr %27, align 4
  %31 = add i32 %30, -1
  store volatile i32 %31, ptr %27, align 4
  %32 = load ptr, ptr %29, align 8
  %33 = getelementptr inbounds %struct.anon.49, ptr %29, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  store ptr null, ptr %33, align 4
  store ptr null, ptr %29, align 8
  %35 = getelementptr inbounds %struct.anon.49, ptr %32, i32 0, i32 1
  store volatile ptr %34, ptr %35, align 4
  store volatile ptr %32, ptr %34, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %29, i32 noundef 0) #13
  %36 = load ptr, ptr %21, align 4
  %37 = icmp eq ptr %36, %21
  %38 = icmp eq ptr %36, null
  %39 = or i1 %37, %38
  br i1 %39, label %40, label %28

40:                                               ; preds = %28, %20
  %41 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  %44 = icmp eq ptr %42, null
  %45 = or i1 %43, %44
  br i1 %45, label %60, label %46

46:                                               ; preds = %40
  %47 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 2, i32 0, i32 1
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi ptr [ %42, %46 ], [ %56, %48 ]
  %50 = load i32, ptr %47, align 4
  %51 = add i32 %50, -1
  store volatile i32 %51, ptr %47, align 4
  %52 = load ptr, ptr %49, align 8
  %53 = getelementptr inbounds %struct.anon.49, ptr %49, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  store ptr null, ptr %53, align 4
  store ptr null, ptr %49, align 8
  %55 = getelementptr inbounds %struct.anon.49, ptr %52, i32 0, i32 1
  store volatile ptr %54, ptr %55, align 4
  store volatile ptr %52, ptr %54, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %49, i32 noundef 0) #13
  %56 = load ptr, ptr %41, align 4
  %57 = icmp eq ptr %56, %41
  %58 = icmp eq ptr %56, null
  %59 = or i1 %57, %58
  br i1 %59, label %60, label %48

60:                                               ; preds = %48, %40
  %61 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %61
  %64 = icmp eq ptr %62, null
  %65 = or i1 %63, %64
  br i1 %65, label %80, label %66

66:                                               ; preds = %60
  %67 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 3, i32 0, i32 1
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi ptr [ %62, %66 ], [ %76, %68 ]
  %70 = load i32, ptr %67, align 4
  %71 = add i32 %70, -1
  store volatile i32 %71, ptr %67, align 4
  %72 = load ptr, ptr %69, align 8
  %73 = getelementptr inbounds %struct.anon.49, ptr %69, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  store ptr null, ptr %73, align 4
  store ptr null, ptr %69, align 8
  %75 = getelementptr inbounds %struct.anon.49, ptr %72, i32 0, i32 1
  store volatile ptr %74, ptr %75, align 4
  store volatile ptr %72, ptr %74, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %69, i32 noundef 0) #13
  %76 = load ptr, ptr %61, align 4
  %77 = icmp eq ptr %76, %61
  %78 = icmp eq ptr %76, null
  %79 = or i1 %77, %78
  br i1 %79, label %80, label %68

80:                                               ; preds = %68, %60
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__skb_queue_purge(ptr noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  %4 = icmp eq ptr %2, null
  %5 = or i1 %3, %4
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %2, %6 ], [ %16, %8 ]
  %10 = load i32, ptr %7, align 4
  %11 = add i32 %10, -1
  store volatile i32 %11, ptr %7, align 4
  %12 = load ptr, ptr %9, align 8
  %13 = getelementptr inbounds %struct.anon.49, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr null, ptr %13, align 4
  store ptr null, ptr %9, align 8
  %15 = getelementptr inbounds %struct.anon.49, ptr %12, i32 0, i32 1
  store volatile ptr %14, ptr %15, align 4
  store volatile ptr %12, ptr %14, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %9, i32 noundef 0) #13
  %16 = load ptr, ptr %0, align 4
  %17 = icmp eq ptr %16, %0
  %18 = icmp eq ptr %16, null
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %8

20:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_release_reorder_timeout(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.sk_buff_head, align 4
  %4 = alloca %struct.ieee80211_rx_data, align 8
  %5 = alloca %struct.ieee80211_event, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %6 = getelementptr inbounds i8, ptr %3, i32 12
  store i32 0, ptr %6, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #13
  %7 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %4, i32 0, i32 2
  %8 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 5
  store i64 0, ptr %4, align 8
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %7, align 8
  %10 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %4, i32 0, i32 3
  %11 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  store ptr %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %4, i32 0, i32 4
  store ptr %0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %4, i32 0, i32 5
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %4, i32 0, i32 6
  store i32 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %4, i32 0, i32 7
  store i32 %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %4, i32 0, i32 8
  store i32 %1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %4, i32 0, i32 9
  store i64 0, ptr %18, align 4
  %19 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 38, i32 1, i32 %1
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %80, label %22

22:                                               ; preds = %2
  store ptr %3, ptr %3, align 4
  %23 = getelementptr inbounds %struct.anon.123, ptr %3, i32 0, i32 1
  store ptr %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sk_buff_head, ptr %3, i32 0, i32 1
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %20, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %25) #13
  call fastcc void @ieee80211_sta_reorder_release(ptr noundef nonnull %20, ptr noundef nonnull %3)
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  %26 = load i16, ptr %25, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %25, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  %28 = load ptr, ptr %3, align 4
  %29 = icmp eq ptr %28, %3
  br i1 %29, label %79, label %30

30:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %31 = getelementptr inbounds i8, ptr %5, i32 12
  store i32 0, ptr %31, align 4, !annotation !16
  store i32 3, ptr %5, align 4
  %32 = getelementptr inbounds %struct.ieee80211_event, ptr %5, i32 0, i32 1
  %33 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  store ptr %33, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ieee80211_event, ptr %5, i32 0, i32 1, i32 0, i32 1
  %35 = trunc i32 %1 to i16
  store i16 %35, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ieee80211_ba_event, ptr %32, i32 0, i32 2
  store i16 0, ptr %36, align 2
  %37 = load ptr, ptr %7, align 8
  %38 = load ptr, ptr %10, align 4
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_event_callback, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %30
  %42 = tail call ptr @llvm.thread.pointer() #13
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
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %53 = call i32 @__traceiter_drv_event_callback(ptr noundef null, ptr noundef %37, ptr noundef %38, ptr noundef nonnull %5) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  br label %54

54:                                               ; preds = %52, %41, %30
  %55 = getelementptr inbounds %struct.ieee80211_local, ptr %37, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.ieee80211_ops, ptr %56, i32 0, i32 60
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %38, i32 0, i32 58
  call void %58(ptr noundef %37, ptr noundef %61, ptr noundef nonnull %5) #13
  br label %62

62:                                               ; preds = %60, %54
  %63 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = tail call ptr @llvm.thread.pointer() #13
  %67 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = lshr i32 %68, 5
  %70 = getelementptr i32, ptr @__cpu_online_mask, i32 %69
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %68, 31
  %73 = shl nuw i32 1, %72
  %74 = and i32 %73, %71
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %65
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %77 = call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %37) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %78

78:                                               ; preds = %76, %65, %62
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %79

79:                                               ; preds = %78, %22
  call fastcc void @ieee80211_rx_handlers(ptr noundef nonnull %4, ptr noundef nonnull %3)
  br label %80

80:                                               ; preds = %79, %2
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_sta_reorder_release(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 9
  %4 = load i16, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 12
  %6 = load i16, ptr %5, align 2
  %7 = urem i16 %4, %6
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr %struct.sk_buff_head, ptr %10, i32 %8
  %12 = getelementptr inbounds %struct.anon.123, ptr %11, i32 0, i32 1
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %11
  %15 = select i1 %14, ptr null, ptr %13
  %16 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = zext i16 %7 to i64
  %19 = shl nuw i64 1, %18
  %20 = and i64 %17, %19
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = icmp eq ptr %15, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 24
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 524288
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %30, %24, %2
  br label %131

30:                                               ; preds = %24, %22
  %31 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 10
  %32 = load i16, ptr %31, align 2
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %29, label %34

34:                                               ; preds = %30
  %35 = add nuw nsw i32 %8, 1
  %36 = trunc i32 %35 to i16
  %37 = urem i16 %36, %6
  %38 = icmp eq i16 %37, %7
  br i1 %38, label %160, label %39

39:                                               ; preds = %34
  %40 = zext i16 %37 to i32
  %41 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 4
  br label %42

42:                                               ; preds = %128, %39
  %43 = phi i16 [ %4, %39 ], [ %121, %128 ]
  %44 = phi i16 [ %6, %39 ], [ %122, %128 ]
  %45 = phi i64 [ %17, %39 ], [ %130, %128 ]
  %46 = phi ptr [ %10, %39 ], [ %129, %128 ]
  %47 = phi i32 [ 1, %39 ], [ %123, %128 ]
  %48 = phi i32 [ %40, %39 ], [ %126, %128 ]
  %49 = getelementptr %struct.sk_buff_head, ptr %46, i32 %48
  %50 = getelementptr inbounds %struct.anon.123, ptr %49, i32 0, i32 1
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %49
  %53 = select i1 %52, ptr null, ptr %51
  %54 = zext i32 %48 to i64
  %55 = shl nuw i64 1, %54
  %56 = and i64 %45, %55
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %42
  %59 = icmp eq ptr %53, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 3, i32 24
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 524288
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60, %58
  %66 = add i32 %47, 1
  br label %120

67:                                               ; preds = %60, %42
  %68 = icmp eq i32 %47, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %67
  %70 = load ptr, ptr %41, align 4
  %71 = getelementptr i32, ptr %70, i32 %48
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, 10
  %74 = load volatile i32, ptr @jiffies, align 64
  %75 = sub i32 %73, %74
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %198

77:                                               ; preds = %69, %67
  %78 = zext i16 %44 to i32
  %79 = urem i32 %35, %78
  %80 = icmp eq i32 %79, %48
  br i1 %80, label %114, label %81

81:                                               ; preds = %112, %77
  %82 = phi i16 [ %107, %112 ], [ %44, %77 ]
  %83 = phi ptr [ %113, %112 ], [ %46, %77 ]
  %84 = phi i32 [ %110, %112 ], [ %79, %77 ]
  %85 = getelementptr %struct.sk_buff_head, ptr %83, i32 %84
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, %85
  %88 = icmp eq ptr %86, null
  %89 = or i1 %87, %88
  br i1 %89, label %106, label %90

90:                                               ; preds = %81
  %91 = getelementptr %struct.sk_buff_head, ptr %83, i32 %84, i32 1
  br label %92

92:                                               ; preds = %92, %90
  %93 = phi ptr [ %86, %90 ], [ %100, %92 ]
  %94 = load i32, ptr %91, align 4
  %95 = add i32 %94, -1
  store volatile i32 %95, ptr %91, align 4
  %96 = load ptr, ptr %93, align 8
  %97 = getelementptr inbounds %struct.anon.49, ptr %93, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  store ptr null, ptr %97, align 4
  store ptr null, ptr %93, align 8
  %99 = getelementptr inbounds %struct.anon.49, ptr %96, i32 0, i32 1
  store volatile ptr %98, ptr %99, align 4
  store volatile ptr %96, ptr %98, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %93, i32 noundef 0) #13
  %100 = load ptr, ptr %85, align 4
  %101 = icmp eq ptr %100, %85
  %102 = icmp eq ptr %100, null
  %103 = or i1 %101, %102
  br i1 %103, label %104, label %92

104:                                              ; preds = %92
  %105 = load i16, ptr %5, align 2
  br label %106

106:                                              ; preds = %104, %81
  %107 = phi i16 [ %105, %104 ], [ %82, %81 ]
  %108 = add i32 %84, 1
  %109 = zext i16 %107 to i32
  %110 = srem i32 %108, %109
  %111 = icmp eq i32 %110, %48
  br i1 %111, label %114, label %112

112:                                              ; preds = %106
  %113 = load ptr, ptr %9, align 8
  br label %81

114:                                              ; preds = %106, %77
  tail call fastcc void @ieee80211_release_reorder_frame(ptr noundef %0, i32 noundef %48, ptr noundef %1)
  %115 = load i16, ptr %3, align 8
  %116 = trunc i32 %47 to i16
  %117 = add i16 %115, %116
  %118 = and i16 %117, 4095
  store i16 %118, ptr %3, align 8
  %119 = load i16, ptr %5, align 2
  br label %120

120:                                              ; preds = %114, %65
  %121 = phi i16 [ %118, %114 ], [ %43, %65 ]
  %122 = phi i16 [ %119, %114 ], [ %44, %65 ]
  %123 = phi i32 [ 0, %114 ], [ %66, %65 ]
  %124 = add i32 %48, 1
  %125 = zext i16 %122 to i32
  %126 = srem i32 %124, %125
  %127 = icmp eq i32 %126, %8
  br i1 %127, label %160, label %128

128:                                              ; preds = %120
  %129 = load ptr, ptr %9, align 8
  %130 = load i64, ptr %16, align 8
  br label %42

131:                                              ; preds = %153, %29
  %132 = phi i16 [ %155, %153 ], [ %6, %29 ]
  %133 = phi i16 [ %154, %153 ], [ %4, %29 ]
  %134 = phi i64 [ %159, %153 ], [ %17, %29 ]
  %135 = phi ptr [ %158, %153 ], [ %10, %29 ]
  %136 = phi i32 [ %157, %153 ], [ %8, %29 ]
  %137 = getelementptr %struct.sk_buff_head, ptr %135, i32 %136
  %138 = getelementptr inbounds %struct.anon.123, ptr %137, i32 0, i32 1
  %139 = load volatile ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, %137
  %141 = select i1 %140, ptr null, ptr %139
  %142 = zext i32 %136 to i64
  %143 = shl nuw i64 1, %142
  %144 = and i64 %134, %143
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %131
  %147 = icmp eq ptr %141, null
  br i1 %147, label %160, label %148

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 3, i32 24
  %150 = load i32, ptr %149, align 8
  %151 = and i32 %150, 524288
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %148, %131
  tail call fastcc void @ieee80211_release_reorder_frame(ptr noundef %0, i32 noundef %136, ptr noundef %1)
  %154 = load i16, ptr %3, align 8
  %155 = load i16, ptr %5, align 2
  %156 = urem i16 %154, %155
  %157 = zext i16 %156 to i32
  %158 = load ptr, ptr %9, align 8
  %159 = load i64, ptr %16, align 8
  br label %131

160:                                              ; preds = %148, %146, %120, %34
  %161 = phi i16 [ %6, %34 ], [ %132, %148 ], [ %132, %146 ], [ %122, %120 ]
  %162 = phi i16 [ %4, %34 ], [ %133, %148 ], [ %133, %146 ], [ %121, %120 ]
  %163 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 10
  %164 = load i16, ptr %163, align 2
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %212, label %166

166:                                              ; preds = %160
  %167 = urem i16 %162, %161
  %168 = zext i16 %167 to i32
  %169 = add nsw i32 %168, -1
  %170 = zext i16 %161 to i32
  %171 = srem i32 %169, %170
  %172 = icmp eq i32 %171, %168
  br i1 %172, label %198, label %173

173:                                              ; preds = %166
  %174 = load ptr, ptr %9, align 8
  %175 = load i64, ptr %16, align 8
  br label %176

176:                                              ; preds = %194, %173
  %177 = phi i32 [ %168, %173 ], [ %196, %194 ]
  %178 = getelementptr %struct.sk_buff_head, ptr %174, i32 %177
  %179 = getelementptr inbounds %struct.anon.123, ptr %178, i32 0, i32 1
  %180 = load volatile ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, %178
  %182 = select i1 %181, ptr null, ptr %180
  %183 = zext i32 %177 to i64
  %184 = shl nuw i64 1, %183
  %185 = and i64 %175, %184
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %176
  %188 = icmp eq ptr %182, null
  br i1 %188, label %194, label %189

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.sk_buff, ptr %182, i32 0, i32 3, i32 24
  %191 = load i32, ptr %190, align 8
  %192 = and i32 %191, 524288
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %189, %187
  %195 = add i32 %177, 1
  %196 = srem i32 %195, %170
  %197 = icmp eq i32 %196, %171
  br i1 %197, label %198, label %176

198:                                              ; preds = %194, %189, %176, %166, %69
  %199 = phi i32 [ %168, %166 ], [ %177, %189 ], [ %171, %194 ], [ %177, %176 ], [ %48, %69 ]
  %200 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 15
  %201 = load i8, ptr %200, align 1
  %202 = and i8 %201, 2
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 7
  %206 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 4
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr i32, ptr %207, i32 %199
  %209 = load i32, ptr %208, align 4
  %210 = add i32 %209, 11
  %211 = tail call i32 @mod_timer(ptr noundef %205, i32 noundef %210) #13
  br label %215

212:                                              ; preds = %160
  %213 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 7
  %214 = tail call i32 @del_timer(ptr noundef %213) #13
  br label %215

215:                                              ; preds = %212, %204, %198
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drv_event_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %18 = tail call i32 @__traceiter_drv_event_callback(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %42 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %43

43:                                               ; preds = %41, %30, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_rx_handlers(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.anon.196, align 4
  %5 = alloca %struct.ieee80211_event, align 4
  %6 = alloca [6 x i8], align 1
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 45
  tail call void @_raw_spin_lock_bh(ptr noundef %10) #13
  %11 = load ptr, ptr %1, align 4
  %12 = icmp eq ptr %11, %1
  %13 = icmp eq ptr %11, null
  %14 = or i1 %12, %13
  br i1 %14, label %1501, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 1
  %17 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 3
  %19 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %20 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  %21 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 7
  %22 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 5
  %23 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 4
  %24 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 3
  %25 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  %26 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  %27 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 9
  %28 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 8
  %29 = getelementptr inbounds %struct.anon.196, ptr %4, i32 0, i32 1
  %30 = getelementptr inbounds %struct.ieee80211_event, ptr %5, i32 0, i32 1
  %31 = getelementptr inbounds %struct.ieee80211_event, ptr %5, i32 0, i32 1, i32 0, i32 1
  %32 = getelementptr inbounds %struct.ieee80211_ba_event, ptr %30, i32 0, i32 2
  br label %33

33:                                               ; preds = %1495, %15
  %34 = phi ptr [ %11, %15 ], [ %1497, %1495 ]
  %35 = load i32, ptr %16, align 4
  %36 = add i32 %35, -1
  store volatile i32 %36, ptr %16, align 4
  %37 = load ptr, ptr %34, align 8
  %38 = getelementptr inbounds %struct.anon.49, ptr %34, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  store ptr null, ptr %38, align 4
  store ptr null, ptr %34, align 8
  %40 = getelementptr inbounds %struct.anon.49, ptr %37, i32 0, i32 1
  store volatile ptr %39, ptr %40, align 4
  store volatile ptr %37, ptr %39, align 8
  store ptr %34, ptr %17, align 4
  %41 = load ptr, ptr %8, align 4
  %42 = getelementptr inbounds %struct.ieee80211_local, ptr %41, i32 0, i32 91
  %43 = load i8, ptr %42, align 8, !range !23
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 17
  %47 = load ptr, ptr %46, align 4
  %48 = load i16, ptr %47, align 2
  %49 = and i16 %48, 524
  %50 = icmp eq i16 %49, 520
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = and i16 %48, 8192
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i8 0, ptr %42, align 8
  br label %57

55:                                               ; preds = %51
  %56 = load ptr, ptr %18, align 4
  call void @ieee80211_send_pspoll(ptr noundef %41, ptr noundef %56) #13
  br label %57

57:                                               ; preds = %55, %54, %45, %33
  %58 = load ptr, ptr %18, align 4
  %59 = load ptr, ptr %17, align 4
  %60 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 17
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %19, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %545, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %58, i32 0, i32 58
  %66 = load i32, ptr %65, align 8
  %67 = add i32 %66, -3
  %68 = icmp ult i32 %67, 2
  br i1 %68, label %69, label %130

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %58, i32 0, i32 7
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ieee80211_hw, ptr %71, i32 0, i32 4
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %73, 1048576
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %130

76:                                               ; preds = %69
  %77 = getelementptr %struct.sta_info, ptr %62, i32 0, i32 23
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %130, label %81

81:                                               ; preds = %76
  %82 = load i16, ptr %61, align 2
  %83 = and i16 %82, 252
  %84 = icmp eq i16 %83, 164
  br i1 %84, label %127, label %85, !prof !9

85:                                               ; preds = %81
  %86 = and i16 %82, 1024
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %130

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 3, i32 35
  %90 = load i8, ptr %89, align 1
  %91 = and i8 %90, 32
  %92 = icmp eq i8 %91, 0
  %93 = and i16 %82, 4096
  %94 = icmp ne i16 %93, 0
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %130

96:                                               ; preds = %88
  %97 = and i16 %82, 140
  %98 = icmp eq i16 %97, 136
  %99 = icmp eq i16 %83, 200
  %100 = or i1 %98, %99
  br i1 %100, label %101, label %130

101:                                              ; preds = %96
  %102 = and i16 %82, 768
  %103 = icmp eq i16 %102, 768
  %104 = select i1 %103, i32 30, i32 24
  %105 = getelementptr i8, ptr %61, i32 %104
  %106 = load i8, ptr %105, align 1
  %107 = and i8 %106, 7
  %108 = zext i8 %107 to i32
  %109 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %108
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.sta_info, ptr %62, i32 0, i32 46, i32 11
  %112 = load i8, ptr %111, align 1
  %113 = getelementptr [4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 %110
  %114 = load i8, ptr %113, align 1
  %115 = and i8 %114, %112
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %130, label %117

117:                                              ; preds = %101
  %118 = load volatile i32, ptr %77, align 4
  %119 = and i32 %118, 262144
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load volatile i32, ptr %77, align 4
  %123 = and i32 %122, 512
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  call void @ieee80211_sta_ps_deliver_uapsd(ptr noundef nonnull %62) #13
  br label %130

126:                                              ; preds = %121
  call void @_set_bit(i32 noundef 17, ptr noundef %77) #13
  br label %130

127:                                              ; preds = %81
  %128 = getelementptr inbounds %struct.sta_info, ptr %62, i32 0, i32 46
  call void @ieee80211_sta_pspoll(ptr noundef %128) #13
  %129 = load ptr, ptr %17, align 4
  call void @consume_skb(ptr noundef %129) #13
  br label %1495

130:                                              ; preds = %126, %125, %117, %101, %96, %88, %85, %76, %69, %64
  %131 = load ptr, ptr %19, align 4
  %132 = load ptr, ptr %17, align 4
  %133 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 17
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %131, null
  br i1 %135, label %545, label %136

136:                                              ; preds = %130
  %137 = load ptr, ptr %18, align 4
  %138 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %137, i32 0, i32 58
  %139 = load i32, ptr %138, align 8
  switch i32 %139, label %255 [
    i32 1, label %140
    i32 11, label %252
  ]

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 5
  %142 = load i32, ptr %141, align 8
  %143 = call ptr @ieee80211_get_bssid(ptr noundef %134, i32 noundef %142, i32 noundef 1) #13
  %144 = load ptr, ptr %18, align 4
  %145 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %144, i32 0, i32 57
  %146 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %145, i32 0, i32 10
  %147 = load i32, ptr %143, align 4
  %148 = load i32, ptr %146, align 4
  %149 = xor i32 %148, %147
  %150 = getelementptr i8, ptr %143, i32 4
  %151 = load i16, ptr %150, align 2
  %152 = getelementptr %struct.ieee80211_if_ibss, ptr %145, i32 0, i32 10, i32 4
  %153 = load i16, ptr %152, align 2
  %154 = xor i16 %153, %151
  %155 = zext i16 %154 to i32
  %156 = or i32 %149, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %348

158:                                              ; preds = %140
  %159 = getelementptr inbounds %struct.sta_info, ptr %131, i32 0, i32 23
  %160 = load volatile i32, ptr %159, align 4
  %161 = and i32 %160, 8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %348, label %163

163:                                              ; preds = %158
  %164 = load volatile i32, ptr @jiffies, align 64
  %165 = getelementptr inbounds %struct.sta_info, ptr %131, i32 0, i32 31, i32 1
  store i32 %164, ptr %165, align 4
  %166 = load i16, ptr %134, align 2
  %167 = and i16 %166, 12
  %168 = icmp eq i16 %167, 8
  br i1 %168, label %169, label %348

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.ieee80211_hdr, ptr %134, i32 0, i32 2
  %171 = load i32, ptr %170, align 4
  %172 = and i32 %171, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %348

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 31
  %176 = load i16, ptr %175, align 1
  %177 = shl i16 %176, 6
  %178 = and i16 %177, 1792
  %179 = zext i16 %178 to i32
  %180 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 30
  %181 = load i8, ptr %180, align 2
  %182 = and i8 %181, 4
  %183 = zext i8 %182 to i32
  %184 = shl nuw nsw i32 %183, 10
  %185 = or i32 %184, %179
  %186 = and i16 %176, 3
  %187 = zext i16 %186 to i32
  switch i32 %187, label %248 [
    i32 2, label %188
    i32 1, label %201
    i32 0, label %207
    i32 3, label %220
  ]

188:                                              ; preds = %174
  %189 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 34
  %190 = load i8, ptr %189, align 2
  %191 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 33
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %190 to i32
  %194 = shl nuw nsw i32 %193, 4
  %195 = and i32 %194, 240
  %196 = and i8 %192, 15
  %197 = zext i8 %196 to i32
  %198 = or i32 %185, %195
  %199 = or i32 %198, %197
  %200 = or i32 %199, 24576
  br label %249

201:                                              ; preds = %174
  %202 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 33
  %203 = load i8, ptr %202, align 1
  %204 = zext i8 %203 to i32
  %205 = or i32 %185, %204
  %206 = or i32 %205, 16384
  br label %249

207:                                              ; preds = %174
  %208 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 36
  %209 = load i8, ptr %208, align 4
  %210 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 33
  %211 = load i8, ptr %210, align 1
  %212 = zext i8 %209 to i32
  %213 = shl nuw nsw i32 %212, 4
  %214 = and i32 %213, 240
  %215 = and i8 %211, 15
  %216 = zext i8 %215 to i32
  %217 = or i32 %185, %214
  %218 = or i32 %217, %216
  %219 = or i32 %218, 8192
  br label %249

220:                                              ; preds = %174
  %221 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 34
  %222 = load i8, ptr %221, align 2
  %223 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 33
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %222 to i32
  %226 = shl nuw nsw i32 %225, 4
  %227 = and i32 %226, 240
  %228 = and i8 %224, 15
  %229 = zext i8 %228 to i32
  %230 = lshr i16 %176, 8
  %231 = zext i16 %230 to i32
  %232 = shl nuw nsw i32 %231, 19
  %233 = and i32 %232, 1572864
  %234 = lshr i16 %176, 5
  %235 = zext i16 %234 to i32
  %236 = shl nuw nsw i32 %235, 16
  %237 = and i32 %236, 458752
  %238 = lshr i16 %176, 10
  %239 = zext i16 %238 to i32
  %240 = shl nuw nsw i32 %239, 21
  %241 = and i32 %240, 2097152
  %242 = or i32 %237, %233
  %243 = or i32 %242, %241
  %244 = or i32 %243, %185
  %245 = or i32 %244, %227
  %246 = or i32 %245, %229
  %247 = or i32 %246, 32768
  br label %249

248:                                              ; preds = %174
  unreachable

249:                                              ; preds = %220, %207, %201, %188
  %250 = phi i32 [ %247, %220 ], [ %219, %207 ], [ %206, %201 ], [ %200, %188 ]
  %251 = getelementptr inbounds %struct.sta_info, ptr %131, i32 0, i32 31, i32 8
  store i32 %250, ptr %251, align 8
  br label %348

252:                                              ; preds = %136
  %253 = load volatile i32, ptr @jiffies, align 64
  %254 = getelementptr inbounds %struct.sta_info, ptr %131, i32 0, i32 31, i32 1
  store i32 %253, ptr %254, align 4
  br label %348

255:                                              ; preds = %136
  %256 = load i16, ptr %134, align 2
  %257 = and i16 %256, 252
  %258 = icmp eq i16 %257, 28
  br i1 %258, label %348, label %259

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.ieee80211_hdr, ptr %134, i32 0, i32 2
  %261 = load i32, ptr %260, align 4
  %262 = and i32 %261, 1
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %348

264:                                              ; preds = %259
  %265 = load volatile i32, ptr @jiffies, align 64
  %266 = getelementptr inbounds %struct.sta_info, ptr %131, i32 0, i32 31, i32 1
  store i32 %265, ptr %266, align 4
  %267 = load i16, ptr %134, align 2
  %268 = and i16 %267, 12
  %269 = icmp eq i16 %268, 8
  br i1 %269, label %270, label %348

270:                                              ; preds = %264
  %271 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 31
  %272 = load i16, ptr %271, align 1
  %273 = shl i16 %272, 6
  %274 = and i16 %273, 1792
  %275 = zext i16 %274 to i32
  %276 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 30
  %277 = load i8, ptr %276, align 2
  %278 = and i8 %277, 4
  %279 = zext i8 %278 to i32
  %280 = shl nuw nsw i32 %279, 10
  %281 = or i32 %280, %275
  %282 = and i16 %272, 3
  %283 = zext i16 %282 to i32
  switch i32 %283, label %344 [
    i32 2, label %284
    i32 1, label %297
    i32 0, label %303
    i32 3, label %316
  ]

284:                                              ; preds = %270
  %285 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 34
  %286 = load i8, ptr %285, align 2
  %287 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 33
  %288 = load i8, ptr %287, align 1
  %289 = zext i8 %286 to i32
  %290 = shl nuw nsw i32 %289, 4
  %291 = and i32 %290, 240
  %292 = and i8 %288, 15
  %293 = zext i8 %292 to i32
  %294 = or i32 %281, %291
  %295 = or i32 %294, %293
  %296 = or i32 %295, 24576
  br label %345

297:                                              ; preds = %270
  %298 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 33
  %299 = load i8, ptr %298, align 1
  %300 = zext i8 %299 to i32
  %301 = or i32 %281, %300
  %302 = or i32 %301, 16384
  br label %345

303:                                              ; preds = %270
  %304 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 36
  %305 = load i8, ptr %304, align 4
  %306 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 33
  %307 = load i8, ptr %306, align 1
  %308 = zext i8 %305 to i32
  %309 = shl nuw nsw i32 %308, 4
  %310 = and i32 %309, 240
  %311 = and i8 %307, 15
  %312 = zext i8 %311 to i32
  %313 = or i32 %281, %310
  %314 = or i32 %313, %312
  %315 = or i32 %314, 8192
  br label %345

316:                                              ; preds = %270
  %317 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 34
  %318 = load i8, ptr %317, align 2
  %319 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 33
  %320 = load i8, ptr %319, align 1
  %321 = zext i8 %318 to i32
  %322 = shl nuw nsw i32 %321, 4
  %323 = and i32 %322, 240
  %324 = and i8 %320, 15
  %325 = zext i8 %324 to i32
  %326 = lshr i16 %272, 8
  %327 = zext i16 %326 to i32
  %328 = shl nuw nsw i32 %327, 19
  %329 = and i32 %328, 1572864
  %330 = lshr i16 %272, 5
  %331 = zext i16 %330 to i32
  %332 = shl nuw nsw i32 %331, 16
  %333 = and i32 %332, 458752
  %334 = lshr i16 %272, 10
  %335 = zext i16 %334 to i32
  %336 = shl nuw nsw i32 %335, 21
  %337 = and i32 %336, 2097152
  %338 = or i32 %329, %333
  %339 = or i32 %338, %337
  %340 = or i32 %339, %281
  %341 = or i32 %340, %323
  %342 = or i32 %341, %325
  %343 = or i32 %342, 32768
  br label %345

344:                                              ; preds = %270
  unreachable

345:                                              ; preds = %316, %303, %297, %284
  %346 = phi i32 [ %343, %316 ], [ %315, %303 ], [ %302, %297 ], [ %296, %284 ]
  %347 = getelementptr inbounds %struct.sta_info, ptr %131, i32 0, i32 31, i32 8
  store i32 %346, ptr %347, align 8
  br label %348

348:                                              ; preds = %345, %264, %259, %255, %252, %249, %169, %163, %158, %140
  %349 = getelementptr inbounds %struct.sta_info, ptr %131, i32 0, i32 31
  %350 = getelementptr inbounds %struct.sta_info, ptr %131, i32 0, i32 31, i32 3
  %351 = load i32, ptr %350, align 4
  %352 = add i32 %351, 1
  store i32 %352, ptr %350, align 4
  %353 = load ptr, ptr %19, align 4
  %354 = getelementptr inbounds %struct.sta_info, ptr %353, i32 0, i32 31, i32 9
  %355 = load i32, ptr %354, align 4
  %356 = add i32 %355, 1
  store i32 %356, ptr %354, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !24
  %357 = load ptr, ptr %17, align 4
  %358 = getelementptr inbounds %struct.sk_buff, ptr %357, i32 0, i32 5
  %359 = load i32, ptr %358, align 8
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds %struct.sta_info, ptr %131, i32 0, i32 31, i32 10
  %362 = load i64, ptr %361, align 8
  %363 = add i64 %362, %360
  store i64 %363, ptr %361, align 8
  %364 = load ptr, ptr %19, align 4
  %365 = getelementptr inbounds %struct.sta_info, ptr %364, i32 0, i32 31, i32 9
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !25
  %366 = load i32, ptr %365, align 4
  %367 = add i32 %366, 1
  store i32 %367, ptr %365, align 4
  %368 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 24
  %369 = load i32, ptr %368, align 8
  %370 = and i32 %369, 256
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %387

372:                                              ; preds = %348
  %373 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 38
  %374 = load i8, ptr %373, align 2
  %375 = sext i8 %374 to i32
  %376 = getelementptr inbounds %struct.sta_info, ptr %131, i32 0, i32 31, i32 5
  store i32 %375, ptr %376, align 4
  %377 = getelementptr inbounds %struct.sta_info, ptr %131, i32 0, i32 32
  %378 = load i8, ptr %373, align 2
  %379 = sext i8 %378 to i32
  %380 = load volatile i32, ptr %377, align 4
  %381 = icmp eq i32 %380, 0
  %382 = mul i32 %380, 7
  %383 = mul nsw i32 %379, -1024
  %384 = add i32 %382, %383
  %385 = lshr i32 %384, 3
  %386 = select i1 %381, i32 %383, i32 %385
  store volatile i32 %386, ptr %377, align 4
  br label %387

387:                                              ; preds = %372, %348
  %388 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 39
  %389 = load i8, ptr %388, align 1
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %467, label %391

391:                                              ; preds = %387
  %392 = getelementptr inbounds %struct.sta_info, ptr %131, i32 0, i32 31, i32 6
  store i8 %389, ptr %392, align 8
  %393 = load i8, ptr %388, align 1
  %394 = zext i8 %393 to i32
  %395 = and i32 %394, 1
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %412, label %397

397:                                              ; preds = %391
  %398 = getelementptr %struct.sk_buff, ptr %132, i32 0, i32 3, i32 40
  %399 = load i8, ptr %398, align 1
  %400 = sext i8 %399 to i32
  %401 = getelementptr %struct.sta_info, ptr %131, i32 0, i32 31, i32 7, i32 0
  store i8 %399, ptr %401, align 1
  %402 = getelementptr %struct.sta_info, ptr %131, i32 0, i32 32, i32 1, i32 0
  %403 = load volatile i32, ptr %402, align 4
  %404 = icmp eq i32 %403, 0
  %405 = mul i32 %403, 7
  %406 = mul nsw i32 %400, -1024
  %407 = add i32 %405, %406
  %408 = lshr i32 %407, 3
  %409 = select i1 %404, i32 %406, i32 %408
  store volatile i32 %409, ptr %402, align 4
  %410 = load i8, ptr %388, align 1
  %411 = zext i8 %410 to i32
  br label %412

412:                                              ; preds = %397, %391
  %413 = phi i32 [ %394, %391 ], [ %411, %397 ]
  %414 = and i32 %413, 2
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %431, label %416

416:                                              ; preds = %412
  %417 = getelementptr %struct.sk_buff, ptr %132, i32 0, i32 3, i32 41
  %418 = load i8, ptr %417, align 1
  %419 = sext i8 %418 to i32
  %420 = getelementptr %struct.sta_info, ptr %131, i32 0, i32 31, i32 7, i32 1
  store i8 %418, ptr %420, align 1
  %421 = getelementptr %struct.sta_info, ptr %131, i32 0, i32 32, i32 1, i32 1
  %422 = load volatile i32, ptr %421, align 4
  %423 = icmp eq i32 %422, 0
  %424 = mul i32 %422, 7
  %425 = mul nsw i32 %419, -1024
  %426 = add i32 %424, %425
  %427 = lshr i32 %426, 3
  %428 = select i1 %423, i32 %425, i32 %427
  store volatile i32 %428, ptr %421, align 4
  %429 = load i8, ptr %388, align 1
  %430 = zext i8 %429 to i32
  br label %431

431:                                              ; preds = %416, %412
  %432 = phi i32 [ %430, %416 ], [ %413, %412 ]
  %433 = and i32 %432, 4
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %450, label %435

435:                                              ; preds = %431
  %436 = getelementptr %struct.sk_buff, ptr %132, i32 0, i32 3, i32 42
  %437 = load i8, ptr %436, align 1
  %438 = sext i8 %437 to i32
  %439 = getelementptr %struct.sta_info, ptr %131, i32 0, i32 31, i32 7, i32 2
  store i8 %437, ptr %439, align 1
  %440 = getelementptr %struct.sta_info, ptr %131, i32 0, i32 32, i32 1, i32 2
  %441 = load volatile i32, ptr %440, align 4
  %442 = icmp eq i32 %441, 0
  %443 = mul i32 %441, 7
  %444 = mul nsw i32 %438, -1024
  %445 = add i32 %443, %444
  %446 = lshr i32 %445, 3
  %447 = select i1 %442, i32 %444, i32 %446
  store volatile i32 %447, ptr %440, align 4
  %448 = load i8, ptr %388, align 1
  %449 = zext i8 %448 to i32
  br label %450

450:                                              ; preds = %435, %431
  %451 = phi i32 [ %449, %435 ], [ %432, %431 ]
  %452 = and i32 %451, 8
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %467, label %454

454:                                              ; preds = %450
  %455 = getelementptr %struct.sk_buff, ptr %132, i32 0, i32 3, i32 43
  %456 = load i8, ptr %455, align 1
  %457 = sext i8 %456 to i32
  %458 = getelementptr %struct.sta_info, ptr %131, i32 0, i32 31, i32 7, i32 3
  store i8 %456, ptr %458, align 1
  %459 = getelementptr %struct.sta_info, ptr %131, i32 0, i32 32, i32 1, i32 3
  %460 = load volatile i32, ptr %459, align 4
  %461 = icmp eq i32 %460, 0
  %462 = mul i32 %460, 7
  %463 = mul nsw i32 %457, -1024
  %464 = add i32 %462, %463
  %465 = lshr i32 %464, 3
  %466 = select i1 %461, i32 %463, i32 %465
  store volatile i32 %466, ptr %459, align 4
  br label %467

467:                                              ; preds = %454, %450, %387
  %468 = load i16, ptr %134, align 2
  %469 = and i16 %468, 252
  %470 = icmp eq i16 %469, 28
  br i1 %470, label %545, label %471

471:                                              ; preds = %467
  %472 = getelementptr inbounds %struct.sta_info, ptr %131, i32 0, i32 5
  %473 = load ptr, ptr %472, align 8
  %474 = getelementptr inbounds %struct.ieee80211_hw, ptr %473, i32 0, i32 4
  %475 = load volatile i32, ptr %474, align 4
  %476 = and i32 %475, 1048576
  %477 = icmp ne i32 %476, 0
  %478 = and i16 %468, 1024
  %479 = icmp ne i16 %478, 0
  %480 = select i1 %477, i1 true, i1 %479
  br i1 %480, label %516, label %481

481:                                              ; preds = %471
  %482 = getelementptr inbounds %struct.ieee80211_hdr, ptr %134, i32 0, i32 2
  %483 = load i32, ptr %482, align 4
  %484 = and i32 %483, 1
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %516

486:                                              ; preds = %481
  %487 = trunc i16 %468 to i4
  %488 = and i4 %487, -4
  switch i4 %488, label %516 [
    i4 0, label %489
    i4 -8, label %489
  ]

489:                                              ; preds = %486, %486
  %490 = getelementptr inbounds %struct.sk_buff, ptr %132, i32 0, i32 3, i32 35
  %491 = load i8, ptr %490, align 1
  %492 = and i8 %491, 32
  %493 = icmp eq i8 %492, 0
  br i1 %493, label %494, label %516

494:                                              ; preds = %489
  %495 = load ptr, ptr %18, align 4
  %496 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %495, i32 0, i32 58
  %497 = load i32, ptr %496, align 8
  %498 = add i32 %497, -3
  %499 = icmp ult i32 %498, 2
  br i1 %499, label %500, label %516

500:                                              ; preds = %494
  %501 = getelementptr inbounds %struct.sta_info, ptr %131, i32 0, i32 23
  %502 = load volatile i32, ptr %501, align 4
  %503 = and i32 %502, 4
  %504 = icmp eq i32 %503, 0
  %505 = and i16 %468, 4096
  %506 = icmp eq i16 %505, 0
  br i1 %504, label %514, label %507

507:                                              ; preds = %500
  br i1 %506, label %508, label %516

508:                                              ; preds = %507
  %509 = load volatile i32, ptr %501, align 4
  %510 = and i32 %509, 512
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %513, label %512

512:                                              ; preds = %508
  call void @_clear_bit(i32 noundef 2, ptr noundef %501) #13
  br label %516

513:                                              ; preds = %508
  call void @_set_bit(i32 noundef 25, ptr noundef %501) #13
  call void @_clear_bit(i32 noundef 2, ptr noundef %501) #13
  call void @ieee80211_sta_ps_deliver_wakeup(ptr noundef nonnull %131) #13
  br label %516

514:                                              ; preds = %500
  br i1 %506, label %516, label %515

515:                                              ; preds = %514
  call fastcc void @sta_ps_start(ptr noundef nonnull %131) #13
  br label %516

516:                                              ; preds = %515, %514, %513, %512, %507, %494, %489, %486, %481, %471
  %517 = load i16, ptr %134, align 2
  %518 = and i16 %517, 124
  %519 = icmp eq i16 %518, 72
  br i1 %519, label %520, label %545

520:                                              ; preds = %516
  %521 = and i16 %517, 768
  %522 = icmp eq i16 %521, 768
  br i1 %522, label %523, label %541

523:                                              ; preds = %520
  %524 = load ptr, ptr %18, align 4
  %525 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %524, i32 0, i32 58
  %526 = load i32, ptr %525, align 8
  switch i32 %526, label %541 [
    i32 3, label %531
    i32 4, label %527
  ]

527:                                              ; preds = %523
  %528 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %524, i32 0, i32 57, i32 0, i32 0, i32 1
  %529 = load ptr, ptr %528, align 8
  %530 = icmp eq ptr %529, null
  br i1 %530, label %531, label %541

531:                                              ; preds = %527, %523
  %532 = getelementptr inbounds %struct.sta_info, ptr %131, i32 0, i32 23
  %533 = call i32 @_test_and_set_bit(i32 noundef 19, ptr noundef %532) #13
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %535, label %1495

535:                                              ; preds = %531
  %536 = load ptr, ptr %18, align 4
  %537 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %536, i32 0, i32 6
  %538 = load ptr, ptr %537, align 8
  %539 = getelementptr inbounds %struct.sta_info, ptr %131, i32 0, i32 46, i32 1
  %540 = call zeroext i1 @cfg80211_rx_unexpected_4addr_frame(ptr noundef %538, ptr noundef %539, i32 noundef 2592) #13
  br label %1495

541:                                              ; preds = %527, %523, %520
  %542 = load i32, ptr %349, align 8
  %543 = add i32 %542, 1
  store i32 %543, ptr %349, align 8
  %544 = load ptr, ptr %17, align 4
  call void @consume_skb(ptr noundef %544) #13
  br label %1495

545:                                              ; preds = %516, %467, %130, %57
  %546 = load ptr, ptr %17, align 4
  %547 = getelementptr inbounds %struct.sk_buff, ptr %546, i32 0, i32 17
  %548 = load ptr, ptr %547, align 4
  %549 = load i16, ptr %548, align 2
  %550 = and i16 %549, 12
  %551 = icmp eq i16 %550, 12
  br i1 %551, label %927, label %552

552:                                              ; preds = %545
  store ptr null, ptr %20, align 4
  %553 = load i16, ptr %548, align 2
  %554 = load ptr, ptr %19, align 4
  %555 = icmp eq ptr %554, null
  br i1 %555, label %615, label %556

556:                                              ; preds = %552
  %557 = getelementptr inbounds %struct.sta_info, ptr %554, i32 0, i32 9
  %558 = load i8, ptr %557, align 8
  %559 = zext i8 %558 to i32
  %560 = getelementptr %struct.sta_info, ptr %554, i32 0, i32 8, i32 %559
  %561 = load volatile ptr, ptr %560, align 4
  %562 = and i16 %553, 16384
  %563 = icmp eq i16 %562, 0
  br i1 %563, label %620, label %564

564:                                              ; preds = %556
  %565 = getelementptr inbounds %struct.sk_buff, ptr %546, i32 0, i32 3, i32 24
  %566 = load i32, ptr %565, align 8
  %567 = and i32 %566, 16
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %623

569:                                              ; preds = %564
  %570 = getelementptr inbounds %struct.sta_info, ptr %554, i32 0, i32 41
  %571 = load ptr, ptr %570, align 4
  %572 = load ptr, ptr %547, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  store i8 0, ptr %7, align 1, !annotation !16
  %573 = load i16, ptr %572, align 2
  %574 = call i32 @ieee80211_hdrlen(i16 noundef zeroext %573) #14
  %575 = icmp eq ptr %571, null
  br i1 %575, label %586, label %576

576:                                              ; preds = %569
  %577 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %571, i32 0, i32 2
  %578 = load i8, ptr %577, align 2
  %579 = zext i8 %578 to i32
  %580 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %571, i32 0, i32 5
  %581 = load i8, ptr %580, align 1
  %582 = zext i8 %581 to i32
  %583 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %571, i32 0, i32 7
  %584 = load i8, ptr %583, align 1
  %585 = zext i8 %584 to i32
  br label %586

586:                                              ; preds = %576, %569
  %587 = phi i32 [ %579, %576 ], [ 4, %569 ]
  %588 = phi i32 [ %582, %576 ], [ 3, %569 ]
  %589 = phi i32 [ %585, %576 ], [ 6, %569 ]
  %590 = add i32 %587, %574
  %591 = getelementptr inbounds %struct.sk_buff, ptr %546, i32 0, i32 5
  %592 = load i32, ptr %591, align 8
  %593 = icmp ult i32 %592, %590
  br i1 %593, label %614, label %594, !prof !9

594:                                              ; preds = %586
  %595 = add i32 %588, %574
  %596 = and i32 %595, 255
  %597 = call i32 @skb_copy_bits(ptr noundef %546, i32 noundef %596, ptr noundef nonnull %7, i32 noundef 1) #13
  br i1 %575, label %598, label %600

598:                                              ; preds = %594
  %599 = load i8, ptr %7, align 1
  br label %605

600:                                              ; preds = %594
  %601 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %571, i32 0, i32 6
  %602 = load i8, ptr %601, align 2
  %603 = load i8, ptr %7, align 1
  %604 = and i8 %603, %602
  br label %605

605:                                              ; preds = %600, %598
  %606 = phi i8 [ %599, %598 ], [ %604, %600 ]
  %607 = zext i8 %606 to i32
  %608 = lshr i32 %607, %589
  %609 = icmp ugt i32 %608, 3
  br i1 %609, label %614, label %610

610:                                              ; preds = %605
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  %611 = load ptr, ptr %19, align 4
  %612 = getelementptr %struct.sta_info, ptr %611, i32 0, i32 8, i32 %608
  %613 = load volatile ptr, ptr %612, align 4
  br label %623

614:                                              ; preds = %605, %586
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  br label %1495

615:                                              ; preds = %552
  %616 = and i16 %553, 16384
  %617 = icmp eq i16 %616, 0
  br i1 %617, label %620, label %618

618:                                              ; preds = %615
  %619 = getelementptr inbounds %struct.ieee80211_hdr, ptr %548, i32 0, i32 2
  br label %800

620:                                              ; preds = %615, %556
  %621 = phi ptr [ null, %615 ], [ %561, %556 ]
  %622 = call fastcc i32 @ieee80211_get_mmie_keyidx(ptr noundef %546) #13
  br label %623

623:                                              ; preds = %620, %610, %564
  %624 = phi i1 [ true, %620 ], [ false, %564 ], [ false, %610 ]
  %625 = phi ptr [ %621, %620 ], [ %561, %564 ], [ %561, %610 ]
  %626 = phi ptr [ null, %620 ], [ null, %564 ], [ %613, %610 ]
  %627 = phi ptr [ null, %620 ], [ null, %564 ], [ %571, %610 ]
  %628 = phi ptr [ %554, %620 ], [ %554, %564 ], [ %611, %610 ]
  %629 = phi i32 [ %622, %620 ], [ -1, %564 ], [ -1, %610 ]
  %630 = getelementptr inbounds %struct.ieee80211_hdr, ptr %548, i32 0, i32 2
  %631 = load i32, ptr %630, align 4
  %632 = and i32 %631, 1
  %633 = icmp eq i32 %632, 0
  %634 = icmp ne ptr %625, null
  %635 = select i1 %633, i1 %634, i1 false
  br i1 %635, label %636, label %644

636:                                              ; preds = %623
  %637 = icmp eq ptr %626, null
  %638 = select i1 %637, ptr %625, ptr %626
  store ptr %638, ptr %20, align 4
  %639 = getelementptr inbounds %struct.sk_buff, ptr %546, i32 0, i32 3, i32 24
  %640 = load i32, ptr %639, align 8
  %641 = and i32 %640, 18
  %642 = icmp eq i32 %641, 18
  %643 = or i1 %624, %642
  br i1 %643, label %927, label %882

644:                                              ; preds = %623
  %645 = icmp sgt i32 %629, -1
  br i1 %645, label %646, label %729

646:                                              ; preds = %644
  %647 = and i16 %553, 252
  %648 = icmp eq i16 %647, 128
  %649 = getelementptr inbounds %struct.sk_buff, ptr %546, i32 0, i32 3, i32 24
  %650 = load i32, ptr %649, align 8
  %651 = and i32 %650, 18
  %652 = icmp eq i32 %651, 18
  br i1 %648, label %653, label %691

653:                                              ; preds = %646
  br i1 %652, label %927, label %654

654:                                              ; preds = %653
  %655 = add nsw i32 %629, -8
  %656 = icmp ult i32 %655, -2
  %657 = load ptr, ptr %18, align 4
  br i1 %656, label %658, label %664

658:                                              ; preds = %654
  %659 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %657, i32 0, i32 6
  %660 = load ptr, ptr %659, align 8
  %661 = load ptr, ptr %547, align 4
  %662 = getelementptr inbounds %struct.sk_buff, ptr %546, i32 0, i32 5
  %663 = load i32, ptr %662, align 8
  call void @cfg80211_rx_unprot_mlme_mgmt(ptr noundef %660, ptr noundef %661, i32 noundef %663) #13
  br label %1495

664:                                              ; preds = %654
  %665 = icmp eq i32 %629, 6
  %666 = add nsw i32 %629, -1
  %667 = select i1 %665, i32 7, i32 %666
  %668 = icmp eq ptr %628, null
  br i1 %668, label %673, label %669

669:                                              ; preds = %664
  %670 = getelementptr %struct.sta_info, ptr %628, i32 0, i32 7, i32 %629
  %671 = load volatile ptr, ptr %670, align 4
  %672 = icmp eq ptr %671, null
  br i1 %672, label %677, label %685

673:                                              ; preds = %664
  %674 = getelementptr %struct.ieee80211_sub_if_data, ptr %657, i32 0, i32 14, i32 %629
  %675 = load volatile ptr, ptr %674, align 4
  %676 = icmp eq ptr %675, null
  br i1 %676, label %687, label %685

677:                                              ; preds = %669
  %678 = getelementptr %struct.ieee80211_sub_if_data, ptr %657, i32 0, i32 14, i32 %629
  %679 = load volatile ptr, ptr %678, align 4
  %680 = icmp eq ptr %679, null
  br i1 %680, label %681, label %685

681:                                              ; preds = %677
  %682 = getelementptr %struct.sta_info, ptr %628, i32 0, i32 7, i32 %667
  %683 = load volatile ptr, ptr %682, align 4
  %684 = icmp eq ptr %683, null
  br i1 %684, label %687, label %685

685:                                              ; preds = %681, %677, %673, %669
  %686 = phi ptr [ %671, %669 ], [ %675, %673 ], [ %679, %677 ], [ %683, %681 ]
  store ptr %686, ptr %20, align 4
  br label %882

687:                                              ; preds = %681, %673
  %688 = getelementptr %struct.ieee80211_sub_if_data, ptr %657, i32 0, i32 14, i32 %667
  %689 = load volatile ptr, ptr %688, align 4
  store ptr %689, ptr %20, align 4
  %690 = icmp eq ptr %689, null
  br i1 %690, label %927, label %882

691:                                              ; preds = %646
  br i1 %652, label %927, label %692

692:                                              ; preds = %691
  %693 = add nsw i32 %629, -6
  %694 = icmp ult i32 %693, -2
  br i1 %694, label %1495, label %695

695:                                              ; preds = %692
  %696 = icmp eq ptr %628, null
  br i1 %696, label %724, label %697

697:                                              ; preds = %695
  %698 = getelementptr inbounds %struct.sk_buff, ptr %546, i32 0, i32 5
  %699 = load i32, ptr %698, align 8
  %700 = icmp ult i32 %699, 25
  br i1 %700, label %721, label %701

701:                                              ; preds = %697
  %702 = load ptr, ptr %547, align 4
  %703 = load i16, ptr %702, align 2
  %704 = and i16 %703, 252
  %705 = icmp eq i16 %704, 208
  br i1 %705, label %706, label %721

706:                                              ; preds = %701
  %707 = getelementptr inbounds %struct.ieee80211_hdr, ptr %702, i32 0, i32 2
  %708 = load i32, ptr %707, align 4
  %709 = and i32 %708, 1
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %721, label %711

711:                                              ; preds = %706
  %712 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %702, i32 0, i32 6
  %713 = load i8, ptr %712, align 2
  %714 = add i8 %713, -13
  %715 = icmp ult i8 %714, 2
  br i1 %715, label %716, label %721

716:                                              ; preds = %711
  %717 = getelementptr inbounds %struct.sta_info, ptr %628, i32 0, i32 23
  %718 = load volatile i32, ptr %717, align 4
  %719 = and i32 %718, 128
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %721, label %1495

721:                                              ; preds = %716, %711, %706, %701, %697
  %722 = getelementptr %struct.sta_info, ptr %628, i32 0, i32 7, i32 %629
  %723 = load volatile ptr, ptr %722, align 4
  store ptr %723, ptr %20, align 4
  br label %726

724:                                              ; preds = %695
  %725 = load ptr, ptr %20, align 4
  br label %726

726:                                              ; preds = %724, %721
  %727 = phi ptr [ %725, %724 ], [ %723, %721 ]
  %728 = icmp eq ptr %727, null
  br i1 %728, label %877, label %882

729:                                              ; preds = %644
  br i1 %624, label %730, label %800

730:                                              ; preds = %729
  %731 = load ptr, ptr %18, align 4
  %732 = and i16 %553, 252
  %733 = icmp eq i16 %732, 128
  br i1 %733, label %734, label %754

734:                                              ; preds = %730
  %735 = icmp eq ptr %628, null
  br i1 %735, label %740, label %736

736:                                              ; preds = %734
  %737 = getelementptr %struct.sta_info, ptr %628, i32 0, i32 7, i32 6
  %738 = load volatile ptr, ptr %737, align 4
  %739 = icmp eq ptr %738, null
  br i1 %739, label %744, label %798

740:                                              ; preds = %734
  %741 = getelementptr %struct.ieee80211_sub_if_data, ptr %731, i32 0, i32 14, i32 6
  %742 = load volatile ptr, ptr %741, align 4
  %743 = icmp eq ptr %742, null
  br i1 %743, label %752, label %798

744:                                              ; preds = %736
  %745 = getelementptr %struct.ieee80211_sub_if_data, ptr %731, i32 0, i32 14, i32 6
  %746 = load volatile ptr, ptr %745, align 4
  %747 = icmp eq ptr %746, null
  br i1 %747, label %748, label %798

748:                                              ; preds = %744
  %749 = getelementptr %struct.sta_info, ptr %628, i32 0, i32 7, i32 7
  %750 = load volatile ptr, ptr %749, align 4
  %751 = icmp eq ptr %750, null
  br i1 %751, label %752, label %798

752:                                              ; preds = %748, %740
  %753 = getelementptr %struct.ieee80211_sub_if_data, ptr %731, i32 0, i32 14, i32 7
  br label %794

754:                                              ; preds = %730
  %755 = and i16 %553, 12
  %756 = icmp ne i16 %755, 0
  %757 = select i1 %756, i1 true, i1 %633
  br i1 %757, label %760, label %758

758:                                              ; preds = %754
  %759 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %731, i32 0, i32 17
  br label %794

760:                                              ; preds = %754
  %761 = icmp eq ptr %628, null
  br i1 %761, label %778, label %762

762:                                              ; preds = %760
  %763 = getelementptr %struct.sta_info, ptr %628, i32 0, i32 7, i32 0
  %764 = load volatile ptr, ptr %763, align 4
  %765 = icmp eq ptr %764, null
  br i1 %765, label %766, label %798

766:                                              ; preds = %762
  %767 = getelementptr %struct.sta_info, ptr %628, i32 0, i32 7, i32 1
  %768 = load volatile ptr, ptr %767, align 4
  %769 = icmp eq ptr %768, null
  br i1 %769, label %770, label %798

770:                                              ; preds = %766
  %771 = getelementptr %struct.sta_info, ptr %628, i32 0, i32 7, i32 2
  %772 = load volatile ptr, ptr %771, align 4
  %773 = icmp eq ptr %772, null
  br i1 %773, label %774, label %798

774:                                              ; preds = %770
  %775 = getelementptr %struct.sta_info, ptr %628, i32 0, i32 7, i32 3
  %776 = load volatile ptr, ptr %775, align 4
  %777 = icmp eq ptr %776, null
  br i1 %777, label %778, label %798

778:                                              ; preds = %774, %760
  %779 = getelementptr %struct.ieee80211_sub_if_data, ptr %731, i32 0, i32 14, i32 0
  %780 = load volatile ptr, ptr %779, align 4
  %781 = icmp eq ptr %780, null
  br i1 %781, label %782, label %798

782:                                              ; preds = %778
  %783 = getelementptr %struct.ieee80211_sub_if_data, ptr %731, i32 0, i32 14, i32 1
  %784 = load volatile ptr, ptr %783, align 4
  %785 = icmp eq ptr %784, null
  br i1 %785, label %786, label %798

786:                                              ; preds = %782
  %787 = getelementptr %struct.ieee80211_sub_if_data, ptr %731, i32 0, i32 14, i32 2
  %788 = load volatile ptr, ptr %787, align 4
  %789 = icmp eq ptr %788, null
  br i1 %789, label %790, label %798

790:                                              ; preds = %786
  %791 = getelementptr %struct.ieee80211_sub_if_data, ptr %731, i32 0, i32 14, i32 3
  %792 = load volatile ptr, ptr %791, align 4
  %793 = icmp eq ptr %792, null
  br i1 %793, label %927, label %798

794:                                              ; preds = %758, %752
  %795 = phi ptr [ %759, %758 ], [ %753, %752 ]
  %796 = load volatile ptr, ptr %795, align 4
  %797 = icmp eq ptr %796, null
  br i1 %797, label %927, label %798

798:                                              ; preds = %794, %790, %786, %782, %778, %774, %770, %766, %762, %748, %744, %740, %736
  %799 = phi ptr [ %796, %794 ], [ %780, %778 ], [ %784, %782 ], [ %788, %786 ], [ %792, %790 ], [ %764, %762 ], [ %768, %766 ], [ %772, %770 ], [ %776, %774 ], [ %738, %736 ], [ %742, %740 ], [ %746, %744 ], [ %750, %748 ]
  store ptr %799, ptr %20, align 4
  br label %927

800:                                              ; preds = %729, %618
  %801 = phi ptr [ %619, %618 ], [ %630, %729 ]
  %802 = phi ptr [ null, %618 ], [ %627, %729 ]
  %803 = getelementptr inbounds %struct.sk_buff, ptr %546, i32 0, i32 3, i32 24
  %804 = load i32, ptr %803, align 8
  %805 = and i32 %804, 18
  %806 = icmp eq i32 %805, 18
  br i1 %806, label %927, label %807

807:                                              ; preds = %800
  %808 = load ptr, ptr %17, align 4
  %809 = getelementptr inbounds %struct.sk_buff, ptr %808, i32 0, i32 17
  %810 = load ptr, ptr %809, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !annotation !16
  %811 = load i16, ptr %810, align 2
  %812 = call i32 @ieee80211_hdrlen(i16 noundef zeroext %811) #14
  %813 = icmp eq ptr %802, null
  br i1 %813, label %824, label %814

814:                                              ; preds = %807
  %815 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %802, i32 0, i32 2
  %816 = load i8, ptr %815, align 2
  %817 = zext i8 %816 to i32
  %818 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %802, i32 0, i32 5
  %819 = load i8, ptr %818, align 1
  %820 = zext i8 %819 to i32
  %821 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %802, i32 0, i32 7
  %822 = load i8, ptr %821, align 1
  %823 = zext i8 %822 to i32
  br label %824

824:                                              ; preds = %814, %807
  %825 = phi i32 [ %817, %814 ], [ 4, %807 ]
  %826 = phi i32 [ %820, %814 ], [ 3, %807 ]
  %827 = phi i32 [ %823, %814 ], [ 6, %807 ]
  %828 = add i32 %825, %812
  %829 = getelementptr inbounds %struct.sk_buff, ptr %808, i32 0, i32 5
  %830 = load i32, ptr %829, align 8
  %831 = icmp ult i32 %830, %828
  br i1 %831, label %848, label %832, !prof !9

832:                                              ; preds = %824
  %833 = add i32 %826, %812
  %834 = and i32 %833, 255
  %835 = call i32 @skb_copy_bits(ptr noundef %808, i32 noundef %834, ptr noundef nonnull %3, i32 noundef 1) #13
  br i1 %813, label %836, label %838

836:                                              ; preds = %832
  %837 = load i8, ptr %3, align 1
  br label %843

838:                                              ; preds = %832
  %839 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %802, i32 0, i32 6
  %840 = load i8, ptr %839, align 2
  %841 = load i8, ptr %3, align 1
  %842 = and i8 %841, %840
  br label %843

843:                                              ; preds = %838, %836
  %844 = phi i8 [ %837, %836 ], [ %842, %838 ]
  %845 = zext i8 %844 to i32
  %846 = lshr i32 %845, %827
  %847 = icmp ugt i32 %846, 3
  br i1 %847, label %848, label %849

848:                                              ; preds = %843, %824
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  br label %1495

849:                                              ; preds = %843
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  %850 = load i32, ptr %801, align 4
  %851 = and i32 %850, 1
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %859, label %853

853:                                              ; preds = %849
  %854 = load ptr, ptr %19, align 4
  %855 = icmp eq ptr %854, null
  br i1 %855, label %859, label %856

856:                                              ; preds = %853
  %857 = getelementptr %struct.sta_info, ptr %854, i32 0, i32 7, i32 %846
  %858 = load volatile ptr, ptr %857, align 4
  store ptr %858, ptr %20, align 4
  br label %861

859:                                              ; preds = %853, %849
  %860 = load ptr, ptr %20, align 4
  br label %861

861:                                              ; preds = %859, %856
  %862 = phi ptr [ %860, %859 ], [ %858, %856 ]
  %863 = icmp eq ptr %862, null
  br i1 %863, label %864, label %882

864:                                              ; preds = %861
  %865 = load ptr, ptr %18, align 4
  %866 = getelementptr %struct.ieee80211_sub_if_data, ptr %865, i32 0, i32 14, i32 %846
  %867 = load volatile ptr, ptr %866, align 4
  store ptr %867, ptr %20, align 4
  %868 = icmp eq ptr %867, null
  br i1 %868, label %1495, label %869

869:                                              ; preds = %864
  %870 = getelementptr inbounds %struct.ieee80211_key, ptr %867, i32 0, i32 7, i32 1
  %871 = load i32, ptr %870, align 8
  switch i32 %871, label %872 [
    i32 1027073, label %882
    i32 1027077, label %882
  ]

872:                                              ; preds = %869
  %873 = load i32, ptr %801, align 4
  %874 = and i32 %873, 1
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %876, label %882

876:                                              ; preds = %872
  store ptr null, ptr %20, align 4
  br label %1495

877:                                              ; preds = %726
  %878 = load ptr, ptr %18, align 4
  %879 = getelementptr %struct.ieee80211_sub_if_data, ptr %878, i32 0, i32 14, i32 %629
  %880 = load volatile ptr, ptr %879, align 4
  store ptr %880, ptr %20, align 4
  %881 = icmp eq ptr %880, null
  br i1 %881, label %1495, label %882

882:                                              ; preds = %877, %872, %869, %869, %861, %726, %687, %685, %636
  %883 = phi ptr [ %880, %877 ], [ %689, %687 ], [ %867, %869 ], [ %867, %869 ], [ %867, %872 ], [ %862, %861 ], [ %727, %726 ], [ %638, %636 ], [ %686, %685 ]
  %884 = getelementptr inbounds %struct.ieee80211_key, ptr %883, i32 0, i32 4
  %885 = load i32, ptr %884, align 4
  %886 = and i32 %885, 2
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %888, label %1495, !prof !26

888:                                              ; preds = %882
  %889 = getelementptr inbounds %struct.ieee80211_key, ptr %883, i32 0, i32 7, i32 1
  %890 = load i32, ptr %889, align 8
  switch i32 %890, label %907 [
    i32 1027073, label %891
    i32 1027077, label %891
    i32 1027074, label %893
    i32 1027076, label %895
    i32 1027082, label %897
    i32 1027078, label %899
    i32 1027085, label %901
    i32 1027083, label %903
    i32 1027084, label %903
    i32 1027080, label %905
    i32 1027081, label %905
  ]

891:                                              ; preds = %888, %888
  %892 = call i32 @ieee80211_crypto_wep_decrypt(ptr noundef %0) #13
  br label %909

893:                                              ; preds = %888
  %894 = call i32 @ieee80211_crypto_tkip_decrypt(ptr noundef %0) #13
  br label %909

895:                                              ; preds = %888
  %896 = call i32 @ieee80211_crypto_ccmp_decrypt(ptr noundef %0, i32 noundef 8) #13
  br label %909

897:                                              ; preds = %888
  %898 = call i32 @ieee80211_crypto_ccmp_decrypt(ptr noundef %0, i32 noundef 16) #13
  br label %909

899:                                              ; preds = %888
  %900 = call i32 @ieee80211_crypto_aes_cmac_decrypt(ptr noundef %0) #13
  br label %909

901:                                              ; preds = %888
  %902 = call i32 @ieee80211_crypto_aes_cmac_256_decrypt(ptr noundef %0) #13
  br label %909

903:                                              ; preds = %888, %888
  %904 = call i32 @ieee80211_crypto_aes_gmac_decrypt(ptr noundef %0) #13
  br label %909

905:                                              ; preds = %888, %888
  %906 = call i32 @ieee80211_crypto_gcmp_decrypt(ptr noundef %0) #13
  br label %909

907:                                              ; preds = %888
  %908 = call i32 @ieee80211_crypto_hw_decrypt(ptr noundef %0) #13
  br label %909

909:                                              ; preds = %907, %905, %903, %901, %899, %897, %895, %893, %891
  %910 = phi i32 [ %908, %907 ], [ %906, %905 ], [ %904, %903 ], [ %902, %901 ], [ %900, %899 ], [ %898, %897 ], [ %896, %895 ], [ %894, %893 ], [ %892, %891 ]
  %911 = getelementptr inbounds %struct.sk_buff, ptr %546, i32 0, i32 3, i32 24
  %912 = load i32, ptr %911, align 8
  %913 = or i32 %912, 2
  store i32 %913, ptr %911, align 8
  %914 = and i16 %553, 252
  %915 = icmp eq i16 %914, 128
  %916 = icmp eq i32 %910, 1
  %917 = select i1 %915, i1 %916, i1 false
  br i1 %917, label %918, label %925, !prof !9

918:                                              ; preds = %909
  %919 = load ptr, ptr %18, align 4
  %920 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %919, i32 0, i32 6
  %921 = load ptr, ptr %920, align 8
  %922 = load ptr, ptr %547, align 4
  %923 = getelementptr inbounds %struct.sk_buff, ptr %546, i32 0, i32 5
  %924 = load i32, ptr %923, align 8
  call void @cfg80211_rx_unprot_mlme_mgmt(ptr noundef %921, ptr noundef %922, i32 noundef %924) #13
  br label %1495

925:                                              ; preds = %909
  %926 = icmp eq i32 %910, 0
  br i1 %926, label %927, label %1495

927:                                              ; preds = %925, %800, %798, %794, %790, %691, %687, %653, %636, %545
  %928 = load ptr, ptr %17, align 4
  %929 = getelementptr inbounds %struct.sk_buff, ptr %928, i32 0, i32 17
  %930 = load ptr, ptr %929, align 4
  %931 = load i16, ptr %930, align 2
  %932 = trunc i16 %931 to i4
  %933 = and i4 %932, -4
  switch i4 %933, label %934 [
    i4 4, label %1161
    i4 -4, label %1161
  ]

934:                                              ; preds = %927
  %935 = load ptr, ptr %18, align 4
  %936 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %935, i32 0, i32 11
  %937 = getelementptr inbounds %struct.ieee80211_hdr, ptr %930, i32 0, i32 5
  %938 = load i16, ptr %937, align 2
  %939 = zext i16 %938 to i32
  %940 = and i32 %939, 15
  %941 = load ptr, ptr %19, align 4
  %942 = icmp eq ptr %941, null
  %943 = getelementptr inbounds %struct.sta_info, ptr %941, i32 0, i32 45
  %944 = select i1 %942, ptr %936, ptr %943
  %945 = and i16 %931, 1024
  %946 = icmp eq i16 %945, 0
  %947 = icmp eq i32 %940, 0
  %948 = select i1 %946, i1 %947, i1 false
  br i1 %948, label %1154, label %949, !prof !26

949:                                              ; preds = %934
  %950 = getelementptr inbounds %struct.ieee80211_hdr, ptr %930, i32 0, i32 2
  %951 = load i32, ptr %950, align 4
  %952 = and i32 %951, 1
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %954, label %1495

954:                                              ; preds = %949
  %955 = getelementptr inbounds %struct.sk_buff, ptr %928, i32 0, i32 6
  %956 = load i32, ptr %955, align 4
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %961, label %958

958:                                              ; preds = %954
  %959 = call ptr @__pskb_pull_tail(ptr noundef %928, i32 noundef %956) #13
  %960 = icmp eq ptr %959, null
  br i1 %960, label %1495, label %961

961:                                              ; preds = %958, %954
  %962 = lshr i32 %939, 4
  br i1 %947, label %963, label %1003

963:                                              ; preds = %961
  %964 = load i32, ptr %21, align 4
  %965 = call fastcc ptr @ieee80211_reassemble_add(ptr noundef %944, i32 noundef %962, i32 noundef %964, ptr noundef %17) #13
  %966 = load ptr, ptr %20, align 4
  %967 = icmp eq ptr %966, null
  br i1 %967, label %1495, label %968

968:                                              ; preds = %963
  %969 = getelementptr inbounds %struct.ieee80211_key, ptr %966, i32 0, i32 7, i32 1
  %970 = load i32, ptr %969, align 8
  switch i32 %970, label %987 [
    i32 1027076, label %971
    i32 1027082, label %971
    i32 1027080, label %971
    i32 1027081, label %971
  ]

971:                                              ; preds = %968, %968, %968, %968
  %972 = and i16 %931, 16384
  %973 = icmp eq i16 %972, 0
  br i1 %973, label %990, label %974

974:                                              ; preds = %971
  %975 = load i32, ptr %28, align 4
  %976 = getelementptr inbounds %struct.ieee80211_fragment_entry, ptr %965, i32 0, i32 6
  %977 = load i8, ptr %976, align 1
  %978 = or i8 %977, 3
  store i8 %978, ptr %976, align 1
  %979 = load ptr, ptr %20, align 4
  %980 = getelementptr inbounds %struct.ieee80211_key, ptr %979, i32 0, i32 6
  %981 = load i32, ptr %980, align 4
  %982 = getelementptr inbounds %struct.ieee80211_fragment_entry, ptr %965, i32 0, i32 8
  store i32 %981, ptr %982, align 4
  %983 = getelementptr inbounds %struct.ieee80211_fragment_entry, ptr %965, i32 0, i32 7
  %984 = load ptr, ptr %20, align 4
  %985 = getelementptr inbounds %struct.ieee80211_key, ptr %984, i32 0, i32 5
  %986 = getelementptr [17 x [6 x i8]], ptr %985, i32 0, i32 %975
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %983, ptr noundef align 2 dereferenceable(6) %986, i32 6, i1 false) #13
  br label %1495

987:                                              ; preds = %968
  %988 = and i16 %931, 16384
  %989 = icmp eq i16 %988, 0
  br i1 %989, label %990, label %995

990:                                              ; preds = %987, %971
  %991 = getelementptr inbounds %struct.sk_buff, ptr %928, i32 0, i32 3, i32 24
  %992 = load i32, ptr %991, align 8
  %993 = and i32 %992, 2
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1495, label %995

995:                                              ; preds = %990, %987
  %996 = getelementptr inbounds %struct.ieee80211_fragment_entry, ptr %965, i32 0, i32 6
  %997 = load i8, ptr %996, align 1
  %998 = or i8 %997, 2
  store i8 %998, ptr %996, align 1
  %999 = load ptr, ptr %20, align 4
  %1000 = getelementptr inbounds %struct.ieee80211_key, ptr %999, i32 0, i32 6
  %1001 = load i32, ptr %1000, align 4
  %1002 = getelementptr inbounds %struct.ieee80211_fragment_entry, ptr %965, i32 0, i32 8
  store i32 %1001, ptr %1002, align 4
  br label %1495

1003:                                             ; preds = %961
  %1004 = load ptr, ptr %17, align 4
  %1005 = getelementptr inbounds %struct.sk_buff, ptr %1004, i32 0, i32 17
  %1006 = load ptr, ptr %1005, align 4
  %1007 = load i32, ptr %21, align 4
  %1008 = call fastcc ptr @ieee80211_reassemble_find(ptr noundef %944, i32 noundef %940, i32 noundef %962, i32 noundef %1007, ptr noundef %1006) #13
  %1009 = icmp eq ptr %1008, null
  br i1 %1009, label %1495, label %1010

1010:                                             ; preds = %1003
  %1011 = getelementptr inbounds %struct.ieee80211_fragment_entry, ptr %1008, i32 0, i32 6
  %1012 = load i8, ptr %1011, align 1
  %1013 = and i8 %1012, 1
  %1014 = icmp eq i8 %1013, 0
  br i1 %1014, label %1059, label %1015

1015:                                             ; preds = %1010
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #13
  %1016 = load ptr, ptr %20, align 4
  %1017 = icmp eq ptr %1016, null
  br i1 %1017, label %1058, label %1018

1018:                                             ; preds = %1015
  %1019 = getelementptr inbounds %struct.ieee80211_key, ptr %1016, i32 0, i32 7, i32 1
  %1020 = load i32, ptr %1019, align 8
  switch i32 %1020, label %1058 [
    i32 1027076, label %1021
    i32 1027082, label %1021
    i32 1027080, label %1021
    i32 1027081, label %1021
  ]

1021:                                             ; preds = %1018, %1018, %1018, %1018
  %1022 = and i16 %931, 16384
  %1023 = icmp eq i16 %1022, 0
  br i1 %1023, label %1058, label %1024

1024:                                             ; preds = %1021
  %1025 = getelementptr inbounds %struct.ieee80211_fragment_entry, ptr %1008, i32 0, i32 8
  %1026 = load i32, ptr %1025, align 4
  %1027 = getelementptr inbounds %struct.ieee80211_key, ptr %1016, i32 0, i32 6
  %1028 = load i32, ptr %1027, align 4
  %1029 = icmp eq i32 %1026, %1028
  br i1 %1029, label %1030, label %1058

1030:                                             ; preds = %1024
  %1031 = getelementptr inbounds %struct.ieee80211_fragment_entry, ptr %1008, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, ptr noundef align 4 dereferenceable(6) %1031, i32 6, i1 false) #13
  %1032 = load i8, ptr %22, align 1
  %1033 = add i8 %1032, 1
  store i8 %1033, ptr %22, align 1
  %1034 = icmp eq i8 %1033, 0
  br i1 %1034, label %1035, label %1054

1035:                                             ; preds = %1030
  %1036 = load i8, ptr %23, align 1
  %1037 = add i8 %1036, 1
  store i8 %1037, ptr %23, align 1
  %1038 = icmp eq i8 %1037, 0
  br i1 %1038, label %1039, label %1054

1039:                                             ; preds = %1035
  %1040 = load i8, ptr %24, align 1
  %1041 = add i8 %1040, 1
  store i8 %1041, ptr %24, align 1
  %1042 = icmp eq i8 %1041, 0
  br i1 %1042, label %1043, label %1054

1043:                                             ; preds = %1039
  %1044 = load i8, ptr %25, align 1
  %1045 = add i8 %1044, 1
  store i8 %1045, ptr %25, align 1
  %1046 = icmp eq i8 %1045, 0
  br i1 %1046, label %1047, label %1054

1047:                                             ; preds = %1043
  %1048 = load i8, ptr %26, align 1
  %1049 = add i8 %1048, 1
  store i8 %1049, ptr %26, align 1
  %1050 = icmp eq i8 %1049, 0
  br i1 %1050, label %1051, label %1054

1051:                                             ; preds = %1047
  %1052 = load i8, ptr %6, align 1
  %1053 = add i8 %1052, 1
  store i8 %1053, ptr %6, align 1
  br label %1054

1054:                                             ; preds = %1051, %1047, %1043, %1039, %1035, %1030
  %1055 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef dereferenceable(6) %27, i32 6) #13
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1057, label %1058

1057:                                             ; preds = %1054
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %1031, ptr noundef nonnull align 1 dereferenceable(6) %6, i32 6, i1 false) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #13
  br label %1079

1058:                                             ; preds = %1054, %1024, %1021, %1018, %1015
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #13
  br label %1495

1059:                                             ; preds = %1010
  %1060 = and i8 %1012, 2
  %1061 = icmp eq i8 %1060, 0
  br i1 %1061, label %1079, label %1062

1062:                                             ; preds = %1059
  %1063 = load ptr, ptr %20, align 4
  %1064 = icmp eq ptr %1063, null
  br i1 %1064, label %1495, label %1065

1065:                                             ; preds = %1062
  %1066 = and i16 %931, 16384
  %1067 = icmp eq i16 %1066, 0
  br i1 %1067, label %1068, label %1073

1068:                                             ; preds = %1065
  %1069 = getelementptr inbounds %struct.sk_buff, ptr %928, i32 0, i32 3, i32 24
  %1070 = load i32, ptr %1069, align 8
  %1071 = and i32 %1070, 2
  %1072 = icmp eq i32 %1071, 0
  br i1 %1072, label %1495, label %1073

1073:                                             ; preds = %1068, %1065
  %1074 = getelementptr inbounds %struct.ieee80211_key, ptr %1063, i32 0, i32 6
  %1075 = load i32, ptr %1074, align 4
  %1076 = getelementptr inbounds %struct.ieee80211_fragment_entry, ptr %1008, i32 0, i32 8
  %1077 = load i32, ptr %1076, align 4
  %1078 = icmp eq i32 %1075, %1077
  br i1 %1078, label %1079, label %1495

1079:                                             ; preds = %1073, %1059, %1057
  %1080 = load ptr, ptr %17, align 4
  %1081 = call i32 @ieee80211_hdrlen(i16 noundef zeroext %931) #14
  %1082 = call ptr @skb_pull(ptr noundef %1080, i32 noundef %1081) #13
  %1083 = load ptr, ptr %17, align 4
  %1084 = getelementptr inbounds %struct.sk_buff_list, ptr %1008, i32 0, i32 1
  %1085 = load ptr, ptr %1084, align 4
  store volatile ptr %1008, ptr %1083, align 8
  %1086 = getelementptr inbounds %struct.anon.49, ptr %1083, i32 0, i32 1
  store volatile ptr %1085, ptr %1086, align 4
  store volatile ptr %1083, ptr %1084, align 4
  store volatile ptr %1083, ptr %1085, align 4
  %1087 = getelementptr inbounds %struct.sk_buff_head, ptr %1008, i32 0, i32 1
  %1088 = load i32, ptr %1087, align 4
  %1089 = add i32 %1088, 1
  store volatile i32 %1089, ptr %1087, align 4
  %1090 = trunc i32 %940 to i16
  %1091 = getelementptr inbounds %struct.ieee80211_fragment_entry, ptr %1008, i32 0, i32 4
  store i16 %1090, ptr %1091, align 4
  %1092 = load ptr, ptr %17, align 4
  %1093 = getelementptr inbounds %struct.sk_buff, ptr %1092, i32 0, i32 5
  %1094 = load i32, ptr %1093, align 8
  %1095 = getelementptr inbounds %struct.ieee80211_fragment_entry, ptr %1008, i32 0, i32 3
  %1096 = load i16, ptr %1095, align 2
  %1097 = trunc i32 %1094 to i16
  %1098 = add i16 %1096, %1097
  store i16 %1098, ptr %1095, align 2
  br i1 %946, label %1100, label %1099

1099:                                             ; preds = %1079
  store ptr null, ptr %17, align 4
  br label %1495

1100:                                             ; preds = %1079
  %1101 = load ptr, ptr %1008, align 4
  %1102 = icmp eq ptr %1101, %1008
  %1103 = select i1 %1102, ptr null, ptr %1101
  %1104 = icmp eq ptr %1103, null
  br i1 %1104, label %1110, label %1105

1105:                                             ; preds = %1100
  store volatile i32 %1088, ptr %1087, align 4
  %1106 = load ptr, ptr %1103, align 8
  %1107 = getelementptr inbounds %struct.anon.49, ptr %1103, i32 0, i32 1
  %1108 = load ptr, ptr %1107, align 4
  store ptr null, ptr %1107, align 4
  store ptr null, ptr %1103, align 8
  %1109 = getelementptr inbounds %struct.anon.49, ptr %1106, i32 0, i32 1
  store volatile ptr %1108, ptr %1109, align 4
  store volatile ptr %1106, ptr %1108, align 8
  br label %1110

1110:                                             ; preds = %1105, %1100
  store ptr %1103, ptr %17, align 4
  %1111 = getelementptr inbounds %struct.sk_buff, ptr %1103, i32 0, i32 6
  %1112 = load i32, ptr %1111, align 4
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1114, label %1122

1114:                                             ; preds = %1110
  %1115 = getelementptr inbounds %struct.sk_buff, ptr %1103, i32 0, i32 15
  %1116 = load ptr, ptr %1115, align 4
  %1117 = getelementptr inbounds %struct.sk_buff, ptr %1103, i32 0, i32 14
  %1118 = load ptr, ptr %1117, align 8
  %1119 = ptrtoint ptr %1116 to i32
  %1120 = ptrtoint ptr %1118 to i32
  %1121 = sub i32 %1119, %1120
  br label %1122

1122:                                             ; preds = %1114, %1110
  %1123 = phi i32 [ %1121, %1114 ], [ 0, %1110 ]
  %1124 = load i16, ptr %1095, align 2
  %1125 = zext i16 %1124 to i32
  %1126 = icmp slt i32 %1123, %1125
  br i1 %1126, label %1127, label %1131

1127:                                             ; preds = %1122
  %1128 = call i32 @pskb_expand_head(ptr noundef %1103, i32 noundef 0, i32 noundef %1125, i32 noundef 2592) #13
  %1129 = icmp eq i32 %1128, 0
  br i1 %1129, label %1131, label %1130, !prof !26

1130:                                             ; preds = %1127
  call fastcc void @__skb_queue_purge(ptr noundef nonnull %1008) #13
  br label %1495

1131:                                             ; preds = %1127, %1122
  %1132 = load ptr, ptr %1008, align 4
  %1133 = icmp eq ptr %1132, %1008
  %1134 = icmp eq ptr %1132, null
  %1135 = or i1 %1133, %1134
  br i1 %1135, label %1154, label %1136

1136:                                             ; preds = %1136, %1131
  %1137 = phi ptr [ %1150, %1136 ], [ %1132, %1131 ]
  %1138 = load i32, ptr %1087, align 4
  %1139 = add i32 %1138, -1
  store volatile i32 %1139, ptr %1087, align 4
  %1140 = load ptr, ptr %1137, align 8
  %1141 = getelementptr inbounds %struct.anon.49, ptr %1137, i32 0, i32 1
  %1142 = load ptr, ptr %1141, align 4
  store ptr null, ptr %1141, align 4
  store ptr null, ptr %1137, align 8
  %1143 = getelementptr inbounds %struct.anon.49, ptr %1140, i32 0, i32 1
  store volatile ptr %1142, ptr %1143, align 4
  store volatile ptr %1140, ptr %1142, align 8
  %1144 = load ptr, ptr %17, align 4
  %1145 = getelementptr inbounds %struct.sk_buff, ptr %1137, i32 0, i32 17
  %1146 = load ptr, ptr %1145, align 4
  %1147 = getelementptr inbounds %struct.sk_buff, ptr %1137, i32 0, i32 5
  %1148 = load i32, ptr %1147, align 8
  %1149 = call ptr @skb_put(ptr noundef %1144, i32 noundef %1148) #13
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1149, ptr align 1 %1146, i32 %1148, i1 false) #13
  call void @consume_skb(ptr noundef nonnull %1137) #13
  %1150 = load ptr, ptr %1008, align 4
  %1151 = icmp eq ptr %1150, %1008
  %1152 = icmp eq ptr %1150, null
  %1153 = or i1 %1151, %1152
  br i1 %1153, label %1154, label %1136

1154:                                             ; preds = %1136, %1131, %934
  %1155 = load ptr, ptr %19, align 4
  %1156 = icmp eq ptr %1155, null
  br i1 %1156, label %1161, label %1157

1157:                                             ; preds = %1154
  %1158 = getelementptr inbounds %struct.sta_info, ptr %1155, i32 0, i32 31
  %1159 = load i32, ptr %1158, align 8
  %1160 = add i32 %1159, 1
  store i32 %1160, ptr %1158, align 8
  br label %1161

1161:                                             ; preds = %1157, %1154, %927, %927
  %1162 = call i32 @ieee80211_rx_h_michael_mic_verify(ptr noundef %0) #13
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1164, label %1495

1164:                                             ; preds = %1161
  %1165 = load ptr, ptr %17, align 4
  %1166 = getelementptr inbounds %struct.sk_buff, ptr %1165, i32 0, i32 17
  %1167 = load ptr, ptr %1166, align 4
  %1168 = load i16, ptr %1167, align 2
  %1169 = getelementptr inbounds %struct.sk_buff, ptr %1165, i32 0, i32 3, i32 35
  %1170 = load i8, ptr %1169, align 1
  %1171 = and i8 %1170, 8
  %1172 = icmp ne i8 %1171, 0
  %1173 = and i16 %1168, 12
  %1174 = icmp eq i16 %1173, 8
  %1175 = select i1 %1172, i1 %1174, i1 false
  br i1 %1175, label %1176, label %1213, !prof !27

1176:                                             ; preds = %1164
  %1177 = and i16 %1168, 76
  %1178 = icmp eq i16 %1177, 8
  br i1 %1178, label %1179, label %1495, !prof !26

1179:                                             ; preds = %1176
  %1180 = and i16 %1168, 768
  %1181 = icmp eq i16 %1180, 768
  br i1 %1181, label %1182, label %1194, !prof !9

1182:                                             ; preds = %1179
  %1183 = load ptr, ptr %18, align 4
  %1184 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1183, i32 0, i32 58
  %1185 = load i32, ptr %1184, align 8
  switch i32 %1185, label %1495 [
    i32 4, label %1186
    i32 2, label %1190
  ]

1186:                                             ; preds = %1182
  %1187 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1183, i32 0, i32 57, i32 0, i32 0, i32 1
  %1188 = load ptr, ptr %1187, align 8
  %1189 = icmp eq ptr %1188, null
  br i1 %1189, label %1495, label %1194

1190:                                             ; preds = %1182
  %1191 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1183, i32 0, i32 57, i32 0, i32 24, i32 23
  %1192 = load i8, ptr %1191, align 4
  %1193 = icmp eq i8 %1192, 0
  br i1 %1193, label %1495, label %1194

1194:                                             ; preds = %1190, %1186, %1179
  %1195 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1167, i32 0, i32 2
  %1196 = load i32, ptr %1195, align 4
  %1197 = and i32 %1196, 1
  %1198 = icmp eq i32 %1197, 0
  br i1 %1198, label %1199, label %1495

1199:                                             ; preds = %1194
  %1200 = load ptr, ptr %20, align 4
  %1201 = icmp eq ptr %1200, null
  br i1 %1201, label %1205, label %1202

1202:                                             ; preds = %1199
  %1203 = getelementptr inbounds %struct.ieee80211_key, ptr %1200, i32 0, i32 7, i32 1
  %1204 = load i32, ptr %1203, align 8
  switch i32 %1204, label %1205 [
    i32 1027073, label %1495
    i32 1027077, label %1495
    i32 1027074, label %1495
  ]

1205:                                             ; preds = %1202, %1199
  %1206 = call fastcc i32 @__ieee80211_rx_h_amsdu(ptr noundef %0, i8 noundef zeroext 0) #13
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1208, label %1495

1208:                                             ; preds = %1205
  %1209 = load ptr, ptr %17, align 4
  %1210 = getelementptr inbounds %struct.sk_buff, ptr %1209, i32 0, i32 17
  %1211 = load ptr, ptr %1210, align 4
  %1212 = load i16, ptr %1211, align 2
  br label %1213

1213:                                             ; preds = %1208, %1164
  %1214 = phi i16 [ %1212, %1208 ], [ %1168, %1164 ]
  %1215 = phi ptr [ %1211, %1208 ], [ %1167, %1164 ]
  %1216 = phi ptr [ %1209, %1208 ], [ %1165, %1164 ]
  %1217 = load ptr, ptr %18, align 4
  %1218 = load ptr, ptr %8, align 4
  %1219 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1217, i32 0, i32 6
  %1220 = load ptr, ptr %1219, align 8
  %1221 = trunc i16 %1214 to i4
  %1222 = and i4 %1221, -4
  switch i4 %1222, label %1475 [
    i4 -8, label %1223
    i4 4, label %1420
  ], !prof !28

1223:                                             ; preds = %1213
  %1224 = and i16 %1214, 76
  %1225 = icmp eq i16 %1224, 8
  br i1 %1225, label %1226, label %1495, !prof !26

1226:                                             ; preds = %1223
  %1227 = and i16 %1214, 768
  %1228 = icmp eq i16 %1227, 768
  %1229 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1217, i32 0, i32 58
  %1230 = load i32, ptr %1229, align 8
  br i1 %1228, label %1231, label %1250

1231:                                             ; preds = %1226
  switch i32 %1230, label %1284 [
    i32 3, label %1232
    i32 4, label %1246
    i32 2, label %1252
  ]

1232:                                             ; preds = %1231
  %1233 = load ptr, ptr %19, align 4
  %1234 = icmp eq ptr %1233, null
  br i1 %1234, label %1495, label %1235

1235:                                             ; preds = %1232
  %1236 = getelementptr inbounds %struct.sta_info, ptr %1233, i32 0, i32 23
  %1237 = call i32 @_test_and_set_bit(i32 noundef 19, ptr noundef %1236) #13
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1239, label %1495

1239:                                             ; preds = %1235
  %1240 = load ptr, ptr %18, align 4
  %1241 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1240, i32 0, i32 6
  %1242 = load ptr, ptr %1241, align 8
  %1243 = load ptr, ptr %19, align 4
  %1244 = getelementptr inbounds %struct.sta_info, ptr %1243, i32 0, i32 46, i32 1
  %1245 = call zeroext i1 @cfg80211_rx_unexpected_4addr_frame(ptr noundef %1242, ptr noundef %1244, i32 noundef 2592) #13
  br label %1495

1246:                                             ; preds = %1231
  %1247 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1217, i32 0, i32 57, i32 0, i32 0, i32 1
  %1248 = load ptr, ptr %1247, align 8
  %1249 = icmp eq ptr %1248, null
  br i1 %1249, label %1495, label %1272

1250:                                             ; preds = %1226
  %1251 = icmp eq i32 %1230, 2
  br i1 %1251, label %1252, label %1272

1252:                                             ; preds = %1250, %1231
  %1253 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1217, i32 0, i32 57, i32 0, i32 24, i32 23
  %1254 = load i8, ptr %1253, align 4
  %1255 = icmp eq i8 %1254, 0
  %1256 = xor i1 %1228, %1255
  br i1 %1256, label %1284, label %1257

1257:                                             ; preds = %1252
  br i1 %1255, label %1495, label %1258

1258:                                             ; preds = %1257
  %1259 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1215, i32 0, i32 2
  %1260 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1217, i32 0, i32 58, i32 2
  %1261 = load i32, ptr %1259, align 4
  %1262 = load i32, ptr %1260, align 4
  %1263 = xor i32 %1262, %1261
  %1264 = getelementptr %struct.ieee80211_hdr, ptr %1215, i32 0, i32 2, i32 4
  %1265 = load i16, ptr %1264, align 2
  %1266 = getelementptr %struct.ieee80211_sub_if_data, ptr %1217, i32 0, i32 58, i32 2, i32 4
  %1267 = load i16, ptr %1266, align 2
  %1268 = xor i16 %1267, %1265
  %1269 = zext i16 %1268 to i32
  %1270 = or i32 %1263, %1269
  %1271 = icmp eq i32 %1270, 0
  br label %1284

1272:                                             ; preds = %1250, %1246
  %1273 = phi i32 [ %1230, %1250 ], [ 4, %1246 ]
  %1274 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1215, i32 0, i32 2
  %1275 = load i32, ptr %1274, align 4
  %1276 = and i32 %1275, 1
  %1277 = icmp ne i32 %1276, 0
  %1278 = icmp eq i32 %1273, 4
  %1279 = select i1 %1277, i1 %1278, i1 false
  br i1 %1279, label %1280, label %1284

1280:                                             ; preds = %1272
  %1281 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1217, i32 0, i32 57, i32 0, i32 0, i32 1
  %1282 = load ptr, ptr %1281, align 8
  %1283 = icmp eq ptr %1282, null
  br i1 %1283, label %1284, label %1495

1284:                                             ; preds = %1280, %1272, %1258, %1252, %1231
  %1285 = phi i1 [ true, %1280 ], [ true, %1272 ], [ %1271, %1258 ], [ true, %1252 ], [ true, %1231 ]
  %1286 = phi i32 [ 4, %1280 ], [ %1273, %1272 ], [ 2, %1258 ], [ 2, %1252 ], [ %1230, %1231 ]
  %1287 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1217, i32 0, i32 58, i32 2
  %1288 = call i32 @ieee80211_data_to_8023_exthdr(ptr noundef %1216, ptr noundef null, ptr noundef %1287, i32 noundef %1286, i8 noundef zeroext 0, i1 noundef zeroext false) #13
  %1289 = icmp slt i32 %1288, 0
  br i1 %1289, label %1495, label %1290

1290:                                             ; preds = %1284
  %1291 = load ptr, ptr %17, align 4
  %1292 = getelementptr inbounds %struct.sk_buff, ptr %1291, i32 0, i32 17
  %1293 = load ptr, ptr %1292, align 4
  %1294 = getelementptr inbounds %struct.ethhdr, ptr %1293, i32 0, i32 2
  %1295 = load i16, ptr %1294, align 1
  %1296 = load ptr, ptr %18, align 4
  %1297 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1296, i32 0, i32 20
  %1298 = load i16, ptr %1297, align 2
  %1299 = icmp eq i16 %1295, %1298
  %1300 = select i1 %1299, i1 true, i1 %1285
  br i1 %1300, label %1301, label %1495

1301:                                             ; preds = %1290
  br i1 %1299, label %1302, label %1321, !prof !9

1302:                                             ; preds = %1301
  %1303 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1296, i32 0, i32 58, i32 2
  %1304 = load i32, ptr %1293, align 4
  %1305 = load i32, ptr %1303, align 4
  %1306 = xor i32 %1305, %1304
  %1307 = getelementptr i8, ptr %1293, i32 4
  %1308 = load i16, ptr %1307, align 2
  %1309 = getelementptr %struct.ieee80211_sub_if_data, ptr %1296, i32 0, i32 58, i32 2, i32 4
  %1310 = load i16, ptr %1309, align 2
  %1311 = xor i16 %1310, %1308
  %1312 = zext i16 %1311 to i32
  %1313 = or i32 %1306, %1312
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1343, label %1315

1315:                                             ; preds = %1302
  %1316 = xor i32 %1304, 12746753
  %1317 = xor i16 %1308, 768
  %1318 = zext i16 %1317 to i32
  %1319 = or i32 %1316, %1318
  %1320 = icmp eq i32 %1319, 0
  br i1 %1320, label %1343, label %1495

1321:                                             ; preds = %1301
  %1322 = load ptr, ptr %19, align 4
  %1323 = icmp eq ptr %1322, null
  br i1 %1323, label %1495, label %1324, !prof !9

1324:                                             ; preds = %1321
  %1325 = getelementptr inbounds %struct.sta_info, ptr %1322, i32 0, i32 23
  %1326 = load volatile i32, ptr %1325, align 4
  %1327 = and i32 %1326, 8
  %1328 = icmp eq i32 %1327, 0
  br i1 %1328, label %1495, label %1329

1329:                                             ; preds = %1324
  %1330 = getelementptr inbounds %struct.sk_buff, ptr %1291, i32 0, i32 3, i32 24
  %1331 = load i32, ptr %1330, align 8
  %1332 = and i32 %1331, 2
  %1333 = icmp ne i32 %1332, 0
  %1334 = and i16 %1214, 16384
  %1335 = icmp ne i16 %1334, 0
  %1336 = or i1 %1335, %1333
  %1337 = and i16 %1214, 124
  %1338 = icmp eq i16 %1337, 72
  %1339 = or i1 %1338, %1336
  br i1 %1339, label %1343, label %1340

1340:                                             ; preds = %1329
  %1341 = load ptr, ptr %20, align 4
  %1342 = icmp eq ptr %1341, null
  br i1 %1342, label %1343, label %1495

1343:                                             ; preds = %1340, %1329, %1315, %1302
  %1344 = icmp eq i16 %1295, 3465
  br i1 %1344, label %1345, label %1365, !prof !9

1345:                                             ; preds = %1343
  %1346 = call fastcc zeroext i1 @pskb_may_pull(ptr noundef %1291, i32 noundef 17) #13
  br i1 %1346, label %1347, label %1365

1347:                                             ; preds = %1345
  %1348 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %1293, i32 0, i32 3
  %1349 = load i8, ptr %1348, align 1
  %1350 = icmp eq i8 %1349, 2
  br i1 %1350, label %1351, label %1365

1351:                                             ; preds = %1347
  %1352 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %1293, i32 0, i32 4
  %1353 = load i8, ptr %1352, align 1
  %1354 = icmp eq i8 %1353, 12
  br i1 %1354, label %1355, label %1365

1355:                                             ; preds = %1351
  %1356 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %1293, i32 0, i32 5
  %1357 = load i8, ptr %1356, align 1
  %1358 = add i8 %1357, -5
  %1359 = icmp ult i8 %1358, 2
  br i1 %1359, label %1360, label %1365

1360:                                             ; preds = %1355
  %1361 = load ptr, ptr %17, align 4
  %1362 = getelementptr inbounds %struct.sk_buff, ptr %1361, i32 0, i32 13, i32 0, i32 16
  store i16 3465, ptr %1362, align 8
  %1363 = load ptr, ptr %19, align 4
  %1364 = load ptr, ptr %17, align 4
  call fastcc void @__ieee80211_queue_skb_to_iface(ptr noundef %1217, ptr noundef %1363, ptr noundef %1364) #13
  br label %1495

1365:                                             ; preds = %1355, %1351, %1347, %1345, %1343
  %1366 = load ptr, ptr %18, align 4
  %1367 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1366, i32 0, i32 58
  %1368 = load i32, ptr %1367, align 8
  %1369 = icmp ne i32 %1368, 4
  %1370 = xor i1 %1299, true
  %1371 = select i1 %1369, i1 true, i1 %1370
  br i1 %1371, label %1380, label %1372, !prof !29

1372:                                             ; preds = %1365
  %1373 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1217, i32 0, i32 49
  %1374 = load ptr, ptr %1373, align 4
  %1375 = icmp eq ptr %1374, null
  br i1 %1375, label %1380, label %1376

1376:                                             ; preds = %1372
  %1377 = getelementptr i8, ptr %1374, i32 -1408
  %1378 = getelementptr i8, ptr %1374, i32 -1056
  %1379 = load ptr, ptr %1378, align 8
  store ptr %1377, ptr %18, align 4
  br label %1380

1380:                                             ; preds = %1376, %1372, %1365
  %1381 = phi ptr [ %1379, %1376 ], [ %1220, %1372 ], [ %1220, %1365 ]
  %1382 = phi ptr [ %1377, %1376 ], [ %1217, %1372 ], [ %1217, %1365 ]
  %1383 = load ptr, ptr %17, align 4
  %1384 = getelementptr inbounds %struct.anon.49, ptr %1383, i32 0, i32 2
  store ptr %1381, ptr %1384, align 8
  %1385 = getelementptr inbounds %struct.ieee80211_hw, ptr %1218, i32 0, i32 4
  %1386 = load volatile i32, ptr %1385, align 4
  %1387 = and i32 %1386, 1024
  %1388 = icmp eq i32 %1387, 0
  br i1 %1388, label %1389, label %1419

1389:                                             ; preds = %1380
  %1390 = getelementptr inbounds %struct.ieee80211_local, ptr %1218, i32 0, i32 92
  %1391 = load ptr, ptr %1390, align 4
  %1392 = icmp eq ptr %1391, null
  br i1 %1392, label %1419, label %1393

1393:                                             ; preds = %1389
  %1394 = getelementptr inbounds %struct.ieee80211_conf, ptr %1218, i32 0, i32 2
  %1395 = load i32, ptr %1394, align 8
  %1396 = icmp sgt i32 %1395, 0
  br i1 %1396, label %1397, label %1419

1397:                                             ; preds = %1393
  %1398 = load ptr, ptr %17, align 4
  %1399 = getelementptr inbounds %struct.sk_buff, ptr %1398, i32 0, i32 17
  %1400 = load ptr, ptr %1399, align 4
  %1401 = load i32, ptr %1400, align 4
  %1402 = and i32 %1401, 1
  %1403 = icmp eq i32 %1402, 0
  br i1 %1403, label %1404, label %1419

1404:                                             ; preds = %1397
  %1405 = getelementptr inbounds %struct.ieee80211_local, ptr %1218, i32 0, i32 67
  %1406 = load i32, ptr %1405, align 4
  %1407 = icmp eq i32 %1406, 0
  br i1 %1407, label %1408, label %1419

1408:                                             ; preds = %1404
  %1409 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1382, i32 0, i32 9
  %1410 = load volatile i32, ptr %1409, align 4
  %1411 = and i32 %1410, 2
  %1412 = icmp eq i32 %1411, 0
  br i1 %1412, label %1413, label %1419

1413:                                             ; preds = %1408
  %1414 = getelementptr inbounds %struct.ieee80211_local, ptr %1218, i32 0, i32 95
  %1415 = load volatile i32, ptr @jiffies, align 64
  %1416 = call i32 @__msecs_to_jiffies(i32 noundef %1395) #13
  %1417 = add i32 %1416, %1415
  %1418 = call i32 @mod_timer(ptr noundef %1414, i32 noundef %1417) #13
  br label %1419

1419:                                             ; preds = %1413, %1408, %1404, %1397, %1393, %1389, %1380
  call fastcc void @ieee80211_deliver_skb(ptr noundef %0) #13
  br label %1495

1420:                                             ; preds = %1213
  %1421 = and i16 %1214, 252
  %1422 = icmp eq i16 %1421, 132
  br i1 %1422, label %1423, label %1495

1423:                                             ; preds = %1420
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) @__const.ieee80211_rx_h_ctrl.event, i32 16, i1 false) #13
  %1424 = load ptr, ptr %19, align 4
  %1425 = icmp eq ptr %1424, null
  br i1 %1425, label %1473, label %1426

1426:                                             ; preds = %1423
  %1427 = call i32 @skb_copy_bits(ptr noundef %1216, i32 noundef 16, ptr noundef nonnull %4, i32 noundef 4) #13
  %1428 = icmp eq i32 %1427, 0
  br i1 %1428, label %1429, label %1473

1429:                                             ; preds = %1426
  %1430 = load i16, ptr %4, align 4
  %1431 = lshr i16 %1430, 12
  %1432 = zext i16 %1431 to i32
  %1433 = load ptr, ptr %19, align 4
  %1434 = getelementptr inbounds %struct.sta_info, ptr %1433, i32 0, i32 38, i32 6
  %1435 = load volatile i32, ptr %1434, align 4
  %1436 = shl nuw nsw i32 1, %1432
  %1437 = and i32 %1436, %1435
  %1438 = icmp eq i32 %1437, 0
  br i1 %1438, label %1439, label %1447

1439:                                             ; preds = %1429
  %1440 = getelementptr inbounds %struct.sta_info, ptr %1433, i32 0, i32 38, i32 7
  %1441 = call i32 @_test_and_set_bit(i32 noundef %1432, ptr noundef %1440) #13
  %1442 = icmp eq i32 %1441, 0
  br i1 %1442, label %1443, label %1447

1443:                                             ; preds = %1439
  %1444 = load ptr, ptr %18, align 4
  %1445 = load ptr, ptr %19, align 4
  %1446 = getelementptr inbounds %struct.sta_info, ptr %1445, i32 0, i32 46, i32 1
  call void @ieee80211_send_delba(ptr noundef %1444, ptr noundef %1446, i16 noundef zeroext %1431, i16 noundef zeroext 0, i16 noundef zeroext 38) #13
  br label %1447

1447:                                             ; preds = %1443, %1439, %1429
  %1448 = load ptr, ptr %19, align 4
  %1449 = getelementptr %struct.sta_info, ptr %1448, i32 0, i32 38, i32 1, i32 %1432
  %1450 = load volatile ptr, ptr %1449, align 4
  %1451 = icmp eq ptr %1450, null
  br i1 %1451, label %1473, label %1452

1452:                                             ; preds = %1447
  %1453 = load i16, ptr %29, align 2
  %1454 = lshr i16 %1453, 4
  store i16 %1431, ptr %31, align 4
  store i16 %1454, ptr %32, align 2
  %1455 = getelementptr inbounds %struct.sta_info, ptr %1448, i32 0, i32 46
  store ptr %1455, ptr %30, align 4
  %1456 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %1450, i32 0, i32 13
  %1457 = load i16, ptr %1456, align 8
  %1458 = icmp eq i16 %1457, 0
  br i1 %1458, label %1467, label %1459

1459:                                             ; preds = %1452
  %1460 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %1450, i32 0, i32 6
  %1461 = load volatile i32, ptr @jiffies, align 64
  %1462 = zext i16 %1457 to i32
  %1463 = shl nuw nsw i32 %1462, 10
  %1464 = call i32 @__usecs_to_jiffies(i32 noundef %1463) #13
  %1465 = add i32 %1464, %1461
  %1466 = call i32 @mod_timer(ptr noundef %1460, i32 noundef %1465) #13
  br label %1467

1467:                                             ; preds = %1459, %1452
  %1468 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %1450, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %1468) #13
  call fastcc void @ieee80211_release_reorder_frames(ptr noundef nonnull %1450, i16 noundef zeroext %1454, ptr noundef %1) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  %1469 = load i16, ptr %1468, align 4
  %1470 = add i16 %1469, 1
  store i16 %1470, ptr %1468, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  %1471 = load ptr, ptr %8, align 4
  %1472 = load ptr, ptr %18, align 4
  call fastcc void @drv_event_callback(ptr noundef %1471, ptr noundef %1472, ptr noundef nonnull %5) #13
  call void @kfree_skb_reason(ptr noundef %1216, i32 noundef 0) #13
  br label %1473

1473:                                             ; preds = %1467, %1447, %1426, %1423
  %1474 = phi i32 [ 3, %1467 ], [ 2, %1423 ], [ 2, %1426 ], [ 2, %1447 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %1495

1475:                                             ; preds = %1213
  %1476 = call fastcc i32 @ieee80211_rx_h_mgmt_check(ptr noundef %0)
  %1477 = icmp eq i32 %1476, 0
  br i1 %1477, label %1478, label %1495

1478:                                             ; preds = %1475
  %1479 = call fastcc i32 @ieee80211_rx_h_action(ptr noundef %0)
  %1480 = icmp eq i32 %1479, 0
  br i1 %1480, label %1481, label %1495

1481:                                             ; preds = %1478
  %1482 = call fastcc i32 @ieee80211_rx_h_userspace_mgmt(ptr noundef %0)
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1484, label %1495

1484:                                             ; preds = %1481
  %1485 = call fastcc i32 @ieee80211_rx_h_action_post_userspace(ptr noundef %0)
  %1486 = icmp eq i32 %1485, 0
  br i1 %1486, label %1487, label %1495

1487:                                             ; preds = %1484
  %1488 = call fastcc i32 @ieee80211_rx_h_action_return(ptr noundef %0)
  %1489 = icmp eq i32 %1488, 0
  br i1 %1489, label %1490, label %1495

1490:                                             ; preds = %1487
  %1491 = call fastcc i32 @ieee80211_rx_h_ext(ptr noundef %0)
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1493, label %1495

1493:                                             ; preds = %1490
  %1494 = call fastcc i32 @ieee80211_rx_h_mgmt(ptr noundef %0)
  br label %1495

1495:                                             ; preds = %1493, %1490, %1487, %1484, %1481, %1478, %1475, %1473, %1420, %1419, %1360, %1340, %1324, %1321, %1315, %1290, %1284, %1280, %1257, %1246, %1239, %1235, %1232, %1223, %1205, %1202, %1202, %1202, %1194, %1190, %1186, %1182, %1176, %1161, %1130, %1099, %1073, %1068, %1062, %1058, %1003, %995, %990, %974, %963, %958, %949, %925, %918, %882, %877, %876, %864, %848, %716, %692, %658, %614, %541, %535, %531, %127
  %1496 = phi i32 [ 3, %127 ], [ %910, %925 ], [ %1162, %1161 ], [ %1206, %1205 ], [ %1476, %1475 ], [ %1479, %1478 ], [ %1482, %1481 ], [ %1485, %1484 ], [ %1488, %1487 ], [ %1491, %1490 ], [ %1494, %1493 ], [ 3, %541 ], [ 2, %535 ], [ 2, %531 ], [ 1, %848 ], [ 2, %876 ], [ 2, %864 ], [ 1, %918 ], [ 2, %877 ], [ 2, %882 ], [ 2, %716 ], [ 2, %692 ], [ 1, %614 ], [ 2, %658 ], [ 3, %963 ], [ 1, %958 ], [ 1, %1062 ], [ 1, %1068 ], [ 1, %1073 ], [ 2, %1003 ], [ 3, %974 ], [ 3, %995 ], [ 3, %990 ], [ 2, %949 ], [ 1, %1058 ], [ 1, %1130 ], [ 3, %1099 ], [ 1, %1202 ], [ 1, %1202 ], [ 1, %1202 ], [ 1, %1194 ], [ 1, %1182 ], [ 1, %1190 ], [ 1, %1186 ], [ 2, %1176 ], [ 1, %1290 ], [ 2, %1324 ], [ 2, %1321 ], [ 1, %1284 ], [ 1, %1280 ], [ 1, %1257 ], [ 1, %1246 ], [ 2, %1315 ], [ 3, %1360 ], [ 2, %1340 ], [ 2, %1232 ], [ 2, %1235 ], [ 2, %1239 ], [ 2, %1223 ], [ 3, %1419 ], [ 2, %1420 ], [ %1474, %1473 ]
  call fastcc void @ieee80211_rx_handlers_result(ptr noundef %0, i32 noundef %1496)
  %1497 = load ptr, ptr %1, align 4
  %1498 = icmp eq ptr %1497, %1
  %1499 = icmp eq ptr %1497, null
  %1500 = or i1 %1498, %1499
  br i1 %1500, label %1501, label %33

1501:                                             ; preds = %1495, %2
  %1502 = load ptr, ptr %8, align 4
  %1503 = getelementptr inbounds %struct.ieee80211_local, ptr %1502, i32 0, i32 45
  call void @_raw_spin_unlock_bh(ptr noundef %1503) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_mark_rx_ba_filtered_frames(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i64 noundef %3, i16 noundef zeroext %4) #0 {
  %6 = alloca %struct.sk_buff_head, align 4
  %7 = alloca %struct.ieee80211_rx_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %8 = getelementptr inbounds i8, ptr %6, i32 12
  store i32 0, ptr %8, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %7) #13
  %9 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %7, i32 0, i32 7
  %10 = zext i8 %1 to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %7, i8 0, i64 44, i1 false)
  store i32 %10, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %7, i32 0, i32 8
  store i32 %10, ptr %11, align 4
  %12 = icmp eq ptr %0, null
  %13 = icmp ugt i8 %1, 15
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4042, i32 noundef 9, ptr noundef null) #13
  br label %123

16:                                               ; preds = %5
  store ptr %6, ptr %6, align 4
  %17 = getelementptr inbounds %struct.anon.123, ptr %6, i32 0, i32 1
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.sk_buff_head, ptr %6, i32 0, i32 1
  store i32 0, ptr %18, align 4
  %19 = getelementptr i8, ptr %0, i32 -1952
  %20 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %7, i32 0, i32 4
  store ptr %19, ptr %20, align 4
  %21 = getelementptr i8, ptr %0, i32 -1908
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %7, i32 0, i32 3
  store ptr %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %0, i32 -1912
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %7, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %27 = getelementptr i8, ptr %0, i32 -556
  %28 = getelementptr [16 x ptr], ptr %27, i32 0, i32 %10
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %122, label %31

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %29, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %32) #13
  %33 = icmp ugt i16 %4, 2047
  %34 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %29, i32 0, i32 9
  br i1 %33, label %35, label %65

35:                                               ; preds = %31
  %36 = load i16, ptr %34, align 8
  %37 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %29, i32 0, i32 12
  %38 = load i16, ptr %37, align 2
  %39 = add i16 %38, %36
  %40 = and i16 %39, 4095
  %41 = zext i16 %40 to i32
  %42 = zext i16 %36 to i32
  %43 = sub nsw i32 %42, %41
  %44 = and i32 %43, 4095
  %45 = icmp ugt i32 %44, 2048
  br i1 %45, label %46, label %64

46:                                               ; preds = %35
  %47 = urem i16 %36, %38
  %48 = zext i16 %47 to i32
  call fastcc void @ieee80211_release_reorder_frame(ptr noundef nonnull %29, i32 noundef %48, ptr noundef nonnull %6) #13
  %49 = load i16, ptr %34, align 8
  %50 = zext i16 %49 to i32
  %51 = sub nsw i32 %50, %41
  %52 = and i32 %51, 4095
  %53 = icmp ugt i32 %52, 2048
  br i1 %53, label %54, label %64

54:                                               ; preds = %54, %46
  %55 = phi i16 [ %59, %54 ], [ %49, %46 ]
  %56 = load i16, ptr %37, align 2
  %57 = urem i16 %55, %56
  %58 = zext i16 %57 to i32
  call fastcc void @ieee80211_release_reorder_frame(ptr noundef nonnull %29, i32 noundef %58, ptr noundef nonnull %6) #13
  %59 = load i16, ptr %34, align 8
  %60 = zext i16 %59 to i32
  %61 = sub nsw i32 %60, %41
  %62 = and i32 %61, 4095
  %63 = icmp ugt i32 %62, 2048
  br i1 %63, label %54, label %64

64:                                               ; preds = %54, %46, %35
  store i16 %2, ptr %34, align 8
  br label %84

65:                                               ; preds = %31
  %66 = zext i16 %2 to i32
  %67 = load i16, ptr %34, align 8
  %68 = zext i16 %67 to i32
  %69 = sub nsw i32 %68, %66
  %70 = and i32 %69, 4095
  %71 = icmp ugt i32 %70, 2048
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %29, i32 0, i32 12
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi i16 [ %67, %72 ], [ %79, %74 ]
  %76 = load i16, ptr %73, align 2
  %77 = urem i16 %75, %76
  %78 = zext i16 %77 to i32
  call fastcc void @ieee80211_release_reorder_frame(ptr noundef nonnull %29, i32 noundef %78, ptr noundef nonnull %6) #13
  %79 = load i16, ptr %34, align 8
  %80 = zext i16 %79 to i32
  %81 = sub nsw i32 %80, %66
  %82 = and i32 %81, 4095
  %83 = icmp ugt i32 %82, 2048
  br i1 %83, label %74, label %84

84:                                               ; preds = %74, %65, %64
  %85 = phi i32 [ %70, %65 ], [ 0, %64 ], [ %82, %74 ]
  %86 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %29, i32 0, i32 12
  %87 = load i16, ptr %86, align 2
  %88 = zext i16 %87 to i32
  %89 = icmp ult i32 %85, %88
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %29, i32 0, i32 2
  store i64 0, ptr %91, align 8
  br label %121

92:                                               ; preds = %84
  %93 = zext i32 %85 to i64
  %94 = lshr i64 %3, %93
  %95 = icmp eq i16 %87, 0
  br i1 %95, label %120, label %96

96:                                               ; preds = %92
  %97 = trunc i32 %85 to i16
  %98 = add i16 %97, %2
  %99 = zext i16 %98 to i32
  %100 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %29, i32 0, i32 2
  %101 = load i64, ptr %100, align 8
  br label %102

102:                                              ; preds = %102, %96
  %103 = phi i64 [ %101, %96 ], [ %116, %102 ]
  %104 = phi i32 [ 0, %96 ], [ %117, %102 ]
  %105 = add nuw nsw i32 %104, %99
  %106 = urem i32 %105, %88
  %107 = zext i32 %106 to i64
  %108 = shl nuw i64 1, %107
  %109 = xor i64 %108, -1
  %110 = and i64 %103, %109
  %111 = zext i32 %104 to i64
  %112 = shl nuw i64 1, %111
  %113 = and i64 %112, %94
  %114 = icmp eq i64 %113, 0
  %115 = or i64 %108, %103
  %116 = select i1 %114, i64 %110, i64 %115
  %117 = add nuw nsw i32 %104, 1
  %118 = icmp ult i32 %117, %88
  br i1 %118, label %102, label %119

119:                                              ; preds = %102
  store i64 %116, ptr %100, align 8
  br label %120

120:                                              ; preds = %119, %92
  call fastcc void @ieee80211_sta_reorder_release(ptr noundef nonnull %29, ptr noundef nonnull %6)
  br label %121

121:                                              ; preds = %120, %90
  call void @_raw_spin_unlock_bh(ptr noundef %32) #13
  call fastcc void @ieee80211_rx_handlers(ptr noundef nonnull %7, ptr noundef nonnull %6)
  br label %122

122:                                              ; preds = %121, %16
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  br label %123

123:                                              ; preds = %122, %15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_release_reorder_frames(ptr nocapture noundef %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 9
  %5 = zext i16 %1 to i32
  %6 = load i16, ptr %4, align 8
  %7 = zext i16 %6 to i32
  %8 = sub nsw i32 %7, %5
  %9 = and i32 %8, 4095
  %10 = icmp ugt i32 %9, 2048
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 12
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i16 [ %6, %11 ], [ %18, %13 ]
  %15 = load i16, ptr %12, align 2
  %16 = urem i16 %14, %15
  %17 = zext i16 %16 to i32
  tail call fastcc void @ieee80211_release_reorder_frame(ptr noundef %0, i32 noundef %17, ptr noundef %2)
  %18 = load i16, ptr %4, align 8
  %19 = zext i16 %18 to i32
  %20 = sub nsw i32 %19, %5
  %21 = and i32 %20, 4095
  %22 = icmp ugt i32 %21, 2048
  br i1 %22, label %13, label %23

23:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_check_fast_rx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ieee80211_fast_rx, align 4
  %3 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #13
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %2, align 4
  %9 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 58
  %11 = load i32, ptr %10, align 8
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %2, i32 0, i32 2
  %13 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %2, i32 0, i32 3
  %14 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %2, i32 0, i32 4
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 20
  %16 = load i16, ptr %15, align 2
  store i16 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %2, i32 0, i32 5
  %18 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %2, i32 0, i32 6
  %19 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %2, i32 0, i32 7
  %20 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %2, i32 0, i32 8
  %21 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %2, i32 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(14) %17, i8 0, i64 14, i1 false)
  %22 = load i32, ptr @rfc1042_header, align 4
  store i32 %22, ptr %13, align 4
  %23 = load i16, ptr getelementptr inbounds ([6 x i8], ptr @rfc1042_header, i32 0, i32 4), align 2
  %24 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %2, i32 0, i32 3, i32 4
  store i16 %23, ptr %24, align 2
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 58, i32 2
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %12, align 4
  %27 = getelementptr %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 58, i32 2, i32 4
  %28 = load i16, ptr %27, align 2
  %29 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %2, i32 0, i32 2, i32 4
  store i16 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 4
  %31 = getelementptr %struct.ieee80211_hw, ptr %6, i32 0, i32 4, i32 1
  %32 = load volatile i32, ptr %31, align 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 4
  store i8 %34, ptr %19, align 1
  %35 = load volatile i32, ptr %30, align 4
  %36 = and i32 %35, 128
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %1
  %39 = load volatile i32, ptr %31, align 4
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %139, label %42

42:                                               ; preds = %38, %1
  switch i32 %11, label %139 [
    i32 2, label %43
    i32 4, label %73
    i32 3, label %73
  ]

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 17
  %45 = load i8, ptr %44, align 4, !range !23
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, i8 16, i8 10
  %48 = select i1 %46, i16 512, i16 0
  store i8 4, ptr %20, align 2
  store i8 %47, ptr %21, align 1
  store i16 %48, ptr %17, align 2
  %49 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 57
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 57, i32 0, i32 24, i32 23
  %51 = load i8, ptr %50, align 4
  %52 = icmp eq i8 %51, 0
  %53 = xor i1 %46, true
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %57, label %55

55:                                               ; preds = %43
  %56 = or i16 %48, 256
  store i16 %56, ptr %17, align 2
  store i8 16, ptr %20, align 2
  store i8 24, ptr %21, align 1
  br label %57

57:                                               ; preds = %55, %43
  %58 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %49, i32 0, i32 17
  %59 = load i8, ptr %58, align 2, !range !23
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %104, label %61

61:                                               ; preds = %57
  %62 = load volatile i32, ptr %30, align 4
  %63 = and i32 %62, 512
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %139

65:                                               ; preds = %61
  %66 = load volatile i32, ptr %30, align 4
  %67 = and i32 %66, 256
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %104, label %69

69:                                               ; preds = %65
  %70 = load volatile i32, ptr %30, align 4
  %71 = and i32 %70, 1024
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %139, label %104

73:                                               ; preds = %42, %42
  %74 = load volatile i32, ptr %30, align 4
  %75 = and i32 %74, 1048576
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %139, label %77

77:                                               ; preds = %73
  store i8 16, ptr %20, align 2
  store i8 10, ptr %21, align 1
  store i16 256, ptr %17, align 2
  %78 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 8
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = icmp eq i32 %11, 4
  br i1 %83, label %86, label %84

84:                                               ; preds = %82
  %85 = or i8 %34, 2
  br label %102

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 57, i32 0, i32 0, i32 1
  %88 = load ptr, ptr %87, align 8
  %89 = icmp eq ptr %88, null
  %90 = select i1 %89, i8 2, i8 0
  %91 = or i8 %90, %34
  store i8 %91, ptr %19, align 1
  br label %97

92:                                               ; preds = %77
  store i8 %34, ptr %19, align 1
  %93 = icmp eq i32 %11, 4
  br i1 %93, label %94, label %104

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 57, i32 0, i32 0, i32 1
  %96 = load ptr, ptr %95, align 8
  br label %97

97:                                               ; preds = %94, %86
  %98 = phi i8 [ %34, %94 ], [ %91, %86 ]
  %99 = phi ptr [ %96, %94 ], [ %88, %86 ]
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  store i16 768, ptr %17, align 2
  store i8 24, ptr %21, align 1
  br label %102

102:                                              ; preds = %101, %84
  %103 = phi i8 [ %85, %84 ], [ %34, %101 ]
  store i8 %103, ptr %19, align 1
  br label %104

104:                                              ; preds = %102, %97, %92, %69, %65, %57
  %105 = phi i8 [ %34, %92 ], [ %98, %97 ], [ %34, %65 ], [ %34, %69 ], [ %34, %57 ], [ %103, %102 ]
  %106 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  %107 = load volatile i32, ptr %106, align 4
  %108 = and i32 %107, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %139, label %110

110:                                              ; preds = %104
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %111 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 9
  %112 = load i8, ptr %111, align 8
  %113 = zext i8 %112 to i32
  %114 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 8, i32 %113
  %115 = load volatile ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 15
  %119 = load volatile ptr, ptr %118, align 8
  %120 = icmp eq ptr %119, null
  br i1 %120, label %130, label %121

121:                                              ; preds = %117, %110
  %122 = phi ptr [ %119, %117 ], [ %115, %110 ]
  %123 = getelementptr inbounds %struct.ieee80211_key, ptr %122, i32 0, i32 7, i32 1
  %124 = load i32, ptr %123, align 8
  switch i32 %124, label %129 [
    i32 1027081, label %125
    i32 1027076, label %125
    i32 1027082, label %125
    i32 1027080, label %125
  ]

125:                                              ; preds = %121, %121, %121, %121
  %126 = or i8 %105, 1
  store i8 %126, ptr %19, align 1
  %127 = getelementptr inbounds %struct.ieee80211_key, ptr %122, i32 0, i32 7, i32 2
  %128 = load i8, ptr %127, align 4
  store i8 %128, ptr %18, align 4
  br label %130

129:                                              ; preds = %121
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  br label %139

130:                                              ; preds = %125, %117
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %131 = call ptr @kmemdup(ptr noundef nonnull %2, i32 noundef 36, i32 noundef 3264) #13
  %132 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 58, i32 11
  %133 = load i32, ptr %132, align 4
  %134 = and i32 %133, 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %130
  %137 = call i32 @_test_and_set_bit(i32 noundef 27, ptr noundef %106) #13
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %145, label %211

139:                                              ; preds = %130, %129, %104, %73, %69, %61, %42, %38
  %140 = phi ptr [ %131, %130 ], [ null, %129 ], [ null, %42 ], [ null, %104 ], [ null, %73 ], [ null, %61 ], [ null, %69 ], [ null, %38 ]
  %141 = phi i1 [ true, %130 ], [ false, %129 ], [ false, %42 ], [ false, %104 ], [ false, %73 ], [ false, %61 ], [ false, %69 ], [ false, %38 ]
  %142 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  %143 = call i32 @_test_and_clear_bit(i32 noundef 27, ptr noundef %142) #13
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %211, label %145

145:                                              ; preds = %139, %136
  %146 = phi i1 [ true, %136 ], [ %141, %139 ]
  %147 = phi ptr [ %131, %136 ], [ %140, %139 ]
  %148 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  %149 = load i32, ptr %10, align 8
  %150 = icmp eq i32 %149, 4
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 49
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr i8, ptr %153, i32 -1408
  br label %155

155:                                              ; preds = %151, %145
  %156 = phi ptr [ %154, %151 ], [ %4, %145 ]
  %157 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %156, i32 0, i32 8
  %158 = load i32, ptr %157, align 8
  %159 = and i32 %158, 32
  %160 = icmp eq i32 %159, 0
  %161 = load i1, ptr @drv_sta_set_decap_offload.__already_done, align 1
  %162 = xor i1 %161, true
  %163 = select i1 %160, i1 %162, i1 false
  br i1 %163, label %164, label %170, !prof !9

164:                                              ; preds = %155
  store i1 true, ptr @drv_sta_set_decap_offload.__already_done, align 1
  %165 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %156, i32 0, i32 6
  %166 = load ptr, ptr %165, align 8
  %167 = icmp eq ptr %166, null
  %168 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %156, i32 0, i32 10
  %169 = select i1 %167, ptr %168, ptr %166
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1443, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %169, i32 noundef %158) #13
  br label %170

170:                                              ; preds = %164, %155
  br i1 %160, label %211, label %171

171:                                              ; preds = %170
  %172 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sta_set_decap_offload, i32 0, i32 1), align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %171
  %175 = tail call ptr @llvm.thread.pointer() #13
  %176 = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 2
  %177 = load i32, ptr %176, align 8
  %178 = lshr i32 %177, 5
  %179 = getelementptr i32, ptr @__cpu_online_mask, i32 %178
  %180 = load volatile i32, ptr %179, align 4
  %181 = and i32 %177, 31
  %182 = shl nuw i32 1, %181
  %183 = and i32 %182, %180
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %174
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %186 = call i32 @__traceiter_drv_sta_set_decap_offload(ptr noundef null, ptr noundef %6, ptr noundef %156, ptr noundef %148, i1 noundef zeroext %146) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  br label %187

187:                                              ; preds = %185, %174, %171
  %188 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 8
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.ieee80211_ops, ptr %189, i32 0, i32 105
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %195, label %193

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %156, i32 0, i32 58
  call void %191(ptr noundef %6, ptr noundef %194, ptr noundef %148, i1 noundef zeroext %146) #13
  br label %195

195:                                              ; preds = %193, %187
  %196 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %195
  %199 = tail call ptr @llvm.thread.pointer() #13
  %200 = getelementptr inbounds %struct.thread_info, ptr %199, i32 0, i32 2
  %201 = load i32, ptr %200, align 8
  %202 = lshr i32 %201, 5
  %203 = getelementptr i32, ptr @__cpu_online_mask, i32 %202
  %204 = load volatile i32, ptr %203, align 4
  %205 = and i32 %201, 31
  %206 = shl nuw i32 1, %205
  %207 = and i32 %206, %204
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %198
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %210 = call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %6) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %211

211:                                              ; preds = %209, %198, %195, %170, %139, %136
  %212 = phi ptr [ %131, %136 ], [ %140, %139 ], [ %147, %170 ], [ %147, %195 ], [ %147, %198 ], [ %147, %209 ]
  %213 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 13
  call void @_raw_spin_lock_bh(ptr noundef %213) #13
  %214 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 15
  %215 = load ptr, ptr %214, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !34
  store volatile ptr %212, ptr %214, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %213) #13
  %216 = icmp eq ptr %215, null
  br i1 %216, label %219, label %217

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %215, i32 0, i32 10
  call void @kvfree_call_rcu(ptr noundef %218, ptr noundef nonnull inttoptr (i32 28 to ptr)) #13
  br label %219

219:                                              ; preds = %217, %211
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_clear_fast_rx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #13
  %3 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  store volatile ptr null, ptr %3, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %4, i32 0, i32 10
  tail call void @kvfree_call_rcu(ptr noundef %7, ptr noundef nonnull inttoptr (i32 28 to ptr)) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ieee80211_check_fast_rx_iface(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 49
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 49
  br label %9

9:                                                ; preds = %22, %7
  %10 = phi ptr [ %5, %7 ], [ %23, %22 ]
  %11 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 49
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %8, align 4
  %20 = icmp eq ptr %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %9
  tail call void @ieee80211_check_fast_rx(ptr noundef %10)
  br label %22

22:                                               ; preds = %21, %18, %14
  %23 = load ptr, ptr %10, align 4
  %24 = icmp eq ptr %23, %4
  br i1 %24, label %25, label %9

25:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_check_fast_rx_iface(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %4) #13
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 49
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 49
  br label %11

11:                                               ; preds = %24, %9
  %12 = phi ptr [ %7, %9 ], [ %25, %24 ]
  %13 = getelementptr inbounds %struct.sta_info, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 49
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %10, align 4
  %22 = icmp eq ptr %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %11
  tail call void @ieee80211_check_fast_rx(ptr noundef %12) #13
  br label %24

24:                                               ; preds = %23, %20, %16
  %25 = load ptr, ptr %12, align 4
  %26 = icmp eq ptr %25, %6
  br i1 %26, label %27, label %11

27:                                               ; preds = %24, %1
  tail call void @mutex_unlock(ptr noundef %4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_rx_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.ieee80211_rx_data, align 4
  %6 = alloca %struct.ieee80211_rx_data, align 4
  %7 = alloca %struct.anon.200, align 2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %9 = tail call ptr @llvm.thread.pointer() #13
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 65280
  %13 = icmp eq i32 %12, 0
  %14 = load i1, ptr @ieee80211_rx_list.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %4
  store i1 true, ptr @ieee80211_rx_list.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4871, i32 noundef 9, ptr noundef null) #13
  br label %18

18:                                               ; preds = %17, %4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 36
  %20 = load i8, ptr %19, align 4
  %21 = icmp ugt i8 %20, 5
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4873, i32 noundef 9, ptr noundef null) #13
  br label %542

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = zext i8 %20 to i32
  %27 = getelementptr %struct.wiphy, ptr %25, i32 0, i32 53, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !9

30:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4877, i32 noundef 9, ptr noundef null) #13
  br label %542

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 34
  %33 = load i8, ptr %32, align 8, !range !23
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %542, !prof !26

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 31
  %37 = load i8, ptr %36, align 1, !range !23
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %542, !prof !26

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 36
  %41 = load i8, ptr %40, align 2, !range !23
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %542, !prof !26

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 35
  %45 = load i8, ptr %44, align 1, !range !23
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48, !prof !9

47:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4898, i32 noundef 9, ptr noundef null) #13
  br label %542

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 24
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 64
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %117, !prof !26

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 31
  %55 = load i16, ptr %54, align 1
  %56 = and i16 %55, 3
  %57 = zext i16 %56 to i32
  switch i32 %57, label %104 [
    i32 1, label %58
    i32 2, label %64
    i32 3, label %84
    i32 0, label %105
  ]

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 33
  %60 = load i8, ptr %59, align 1
  %61 = icmp ugt i8 %60, 76
  br i1 %61, label %62, label %117, !prof !9

62:                                               ; preds = %58
  %63 = zext i8 %60 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4924, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %63, i32 noundef %63) #13
  br label %542

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 33
  %66 = load i8, ptr %65, align 1
  %67 = icmp ugt i8 %66, 11
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 34
  %70 = load i8, ptr %69, align 2
  %71 = add i8 %70, -9
  %72 = icmp ult i8 %71, -8
  br label %73

73:                                               ; preds = %68, %64
  %74 = phi i1 [ true, %64 ], [ %72, %68 ]
  %75 = load i1, ptr @ieee80211_rx_list.__already_done.2, align 1
  %76 = xor i1 %75, true
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %83, !prof !9

78:                                               ; preds = %73
  store i1 true, ptr @ieee80211_rx_list.__already_done.2, align 1
  %79 = zext i8 %66 to i32
  %80 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 34
  %81 = load i8, ptr %80, align 2
  %82 = zext i8 %81 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4932, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %79, i32 noundef %82) #13
  br label %83

83:                                               ; preds = %78, %73
  br i1 %74, label %542, label %117

84:                                               ; preds = %53
  %85 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 33
  %86 = load i8, ptr %85, align 1
  %87 = icmp ugt i8 %86, 11
  br i1 %87, label %93, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 34
  %90 = load i8, ptr %89, align 2
  %91 = add i8 %90, -9
  %92 = icmp ult i8 %91, -8
  br label %93

93:                                               ; preds = %88, %84
  %94 = phi i1 [ true, %84 ], [ %92, %88 ]
  %95 = load i1, ptr @ieee80211_rx_list.__already_done.4, align 1
  %96 = xor i1 %95, true
  %97 = select i1 %94, i1 %96, i1 false
  br i1 %97, label %98, label %103, !prof !9

98:                                               ; preds = %93
  store i1 true, ptr @ieee80211_rx_list.__already_done.4, align 1
  %99 = zext i8 %86 to i32
  %100 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 34
  %101 = load i8, ptr %100, align 2
  %102 = zext i8 %101 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4940, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %99, i32 noundef %102) #13
  br label %103

103:                                              ; preds = %98, %93
  br i1 %94, label %542, label %117

104:                                              ; preds = %53
  unreachable

105:                                              ; preds = %53
  %106 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 33
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %28, i32 0, i32 4
  %110 = load i32, ptr %109, align 4
  %111 = icmp sgt i32 %110, %108
  br i1 %111, label %113, label %112, !prof !26

112:                                              ; preds = %105
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4947, i32 noundef 9, ptr noundef null) #13
  br label %542

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %28, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr %struct.ieee80211_rate, ptr %115, i32 %108
  br label %117

117:                                              ; preds = %113, %103, %83, %58, %48
  %118 = phi ptr [ %116, %113 ], [ null, %103 ], [ null, %83 ], [ null, %48 ], [ null, %58 ]
  %119 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 35
  store i8 0, ptr %119, align 1
  %120 = load i32, ptr %49, align 8
  %121 = and i32 %120, 1073741824
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %373

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 111
  %125 = load volatile ptr, ptr %124, align 4
  %126 = and i32 %120, 67108864
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 0, i32 12
  %129 = and i32 %120, 134217728
  %130 = icmp eq i32 %129, 0
  %131 = add nuw nsw i32 %128, 12
  %132 = select i1 %130, i32 %128, i32 %131
  %133 = and i32 %120, 268435456
  %134 = icmp eq i32 %133, 0
  %135 = add nuw nsw i32 %132, 4
  %136 = select i1 %134, i32 %132, i32 %135
  %137 = and i32 %120, 1048576
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %151, label %139, !prof !26

139:                                              ; preds = %123
  %140 = load ptr, ptr %8, align 4
  %141 = getelementptr i8, ptr %140, i32 %136
  %142 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, ptr %141, i32 0, i32 5
  %143 = load i16, ptr %142, align 1
  %144 = zext i16 %143 to i32
  %145 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, ptr %141, i32 0, i32 4
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = add nuw nsw i32 %136, 12
  %149 = add nuw nsw i32 %148, %144
  %150 = add nuw nsw i32 %149, %147
  br label %151

151:                                              ; preds = %139, %123
  %152 = phi i32 [ %150, %139 ], [ %136, %123 ]
  %153 = and i32 %120, 536870912
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %157 = load volatile i32, ptr %156, align 4
  %158 = and i32 %157, 2
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %162 = load i32, ptr %161, align 8
  %163 = add nuw nsw i32 %152, 4
  %164 = icmp ugt i32 %162, %163
  br i1 %164, label %166, label %165, !prof !26

165:                                              ; preds = %160
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 811, i32 noundef 9, ptr noundef null) #13
  tail call void @consume_skb(ptr noundef %2) #13
  br label %543

166:                                              ; preds = %160, %155
  %167 = phi i32 [ 0, %155 ], [ 4, %160 ]
  %168 = add nuw nsw i32 %152, 2
  br label %169

169:                                              ; preds = %166, %151
  %170 = phi i32 [ %152, %151 ], [ %168, %166 ]
  %171 = phi i32 [ 0, %151 ], [ %167, %166 ]
  %172 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %173 = load i32, ptr %172, align 8
  %174 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  %175 = load i32, ptr %174, align 4
  %176 = sub i32 %173, %175
  %177 = icmp ugt i32 %170, %176
  br i1 %177, label %178, label %187, !prof !9

178:                                              ; preds = %169
  %179 = icmp ult i32 %173, %170
  br i1 %179, label %186, label %180, !prof !9

180:                                              ; preds = %178
  %181 = sub i32 %170, %176
  %182 = tail call ptr @__pskb_pull_tail(ptr noundef %2, i32 noundef %181) #13
  %183 = icmp eq ptr %182, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %180
  %185 = load i32, ptr %49, align 8
  br label %187

186:                                              ; preds = %180, %178
  tail call void @consume_skb(ptr noundef %2) #13
  br label %543

187:                                              ; preds = %184, %169
  %188 = phi i32 [ %185, %184 ], [ %120, %169 ]
  %189 = load ptr, ptr %8, align 4
  %190 = getelementptr i8, ptr %189, i32 %152
  %191 = and i32 %188, 537002080
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %187
  %194 = load i32, ptr %172, align 8
  %195 = add nuw nsw i32 %152, 16
  %196 = add nuw nsw i32 %195, %171
  %197 = icmp ult i32 %194, %196
  br i1 %197, label %207, label %198, !prof !9

198:                                              ; preds = %193
  %199 = load i16, ptr %190, align 2
  %200 = and i16 %199, 12
  %201 = icmp eq i16 %200, 4
  br i1 %201, label %202, label %215

202:                                              ; preds = %198
  %203 = and i16 %199, 252
  %204 = add nsw i16 %203, -132
  %205 = and i16 %204, -36
  %206 = icmp ne i16 %205, 0
  br label %207

207:                                              ; preds = %202, %193, %187
  %208 = phi i1 [ true, %187 ], [ true, %193 ], [ %206, %202 ]
  %209 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 14
  %210 = load i32, ptr %209, align 4
  %211 = icmp ne i32 %210, 0
  %212 = and i32 %188, 262144
  %213 = icmp eq i32 %212, 0
  %214 = select i1 %211, i1 %213, i1 false
  br i1 %214, label %226, label %222

215:                                              ; preds = %198
  %216 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 14
  %217 = load i32, ptr %216, align 4
  %218 = icmp ne i32 %217, 0
  %219 = and i32 %188, 262144
  %220 = icmp eq i32 %219, 0
  %221 = select i1 %218, i1 %220, i1 false
  br i1 %221, label %226, label %224

222:                                              ; preds = %207
  br i1 %208, label %223, label %224

223:                                              ; preds = %222
  tail call void @consume_skb(ptr noundef %2) #13
  br label %543

224:                                              ; preds = %222, %215
  %225 = tail call fastcc ptr @ieee80211_clean_skb(ptr noundef %2, i32 noundef %171, i32 noundef %152) #13
  br label %373

226:                                              ; preds = %215, %207
  %227 = phi i1 [ false, %215 ], [ %208, %207 ]
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(26) %7, i8 0, i32 26, i1 false) #13, !annotation !16
  %228 = icmp eq ptr %125, null
  br i1 %228, label %278, label %229

229:                                              ; preds = %226
  %230 = load i32, ptr %172, align 8
  %231 = add nuw nsw i32 %152, 50
  %232 = icmp ult i32 %230, %231
  br i1 %232, label %278, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %125, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  %235 = load i32, ptr %234, align 4
  %236 = and i32 %235, 1
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %278

238:                                              ; preds = %233
  %239 = getelementptr %struct.ieee80211_sub_if_data, ptr %125, i32 0, i32 57, i32 0, i32 0, i32 1
  %240 = load i16, ptr %239, align 2
  %241 = zext i16 %240 to i32
  %242 = or i32 %235, %241
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %278, label %244

244:                                              ; preds = %238
  %245 = call i32 @skb_copy_bits(ptr noundef %2, i32 noundef %152, ptr noundef nonnull %7, i32 noundef 26) #13
  %246 = load i16, ptr %7, align 2
  %247 = and i16 %246, 252
  %248 = icmp eq i16 %247, 208
  %249 = getelementptr inbounds %struct.anon.200, ptr %7, i32 0, i32 1
  %250 = load i8, ptr %249, align 2
  %251 = icmp eq i8 %250, 21
  %252 = select i1 %248, i1 %251, i1 false
  %253 = getelementptr inbounds %struct.anon.200, ptr %7, i32 0, i32 2
  %254 = load i8, ptr %253, align 1
  %255 = icmp eq i8 %254, 1
  %256 = select i1 %252, i1 %255, i1 false
  br i1 %256, label %257, label %278

257:                                              ; preds = %244
  %258 = getelementptr inbounds %struct.ieee80211_hdr_3addr, ptr %7, i32 0, i32 2
  %259 = load i32, ptr %258, align 4
  %260 = load i32, ptr %234, align 4
  %261 = xor i32 %260, %259
  %262 = getelementptr inbounds %struct.ieee80211_hdr_3addr, ptr %7, i32 0, i32 2, i32 4
  %263 = load i16, ptr %262, align 2
  %264 = load i16, ptr %239, align 2
  %265 = xor i16 %264, %263
  %266 = zext i16 %265 to i32
  %267 = or i32 %261, %266
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %278

269:                                              ; preds = %257
  %270 = call ptr @skb_copy(ptr noundef %2, i32 noundef 2592) #13
  %271 = icmp eq ptr %270, null
  br i1 %271, label %278, label %272

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.sk_buff, ptr %270, i32 0, i32 13, i32 0, i32 16
  store i16 0, ptr %273, align 8
  %274 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %125, i32 0, i32 41
  call void @skb_queue_tail(ptr noundef %274, ptr noundef nonnull %270) #13
  %275 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %125, i32 0, i32 7
  %276 = load ptr, ptr %275, align 4
  %277 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %125, i32 0, i32 40
  call void @ieee80211_queue_work(ptr noundef %276, ptr noundef %277) #13
  br label %278

278:                                              ; preds = %272, %269, %257, %244, %238, %233, %229, %226
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %7) #13
  %279 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 63
  br label %280

280:                                              ; preds = %364, %278
  %281 = phi ptr [ %2, %278 ], [ %365, %364 ]
  %282 = phi ptr [ null, %278 ], [ %366, %364 ]
  %283 = phi ptr [ %279, %278 ], [ %284, %364 ]
  %284 = load volatile ptr, ptr %283, align 4
  %285 = icmp eq ptr %284, %279
  br i1 %285, label %367, label %286

286:                                              ; preds = %280
  %287 = load ptr, ptr %284, align 4
  %288 = icmp eq ptr %287, %279
  %289 = icmp eq ptr %282, null
  br i1 %289, label %290, label %330

290:                                              ; preds = %286
  %291 = select i1 %227, i1 %288, i1 false
  %292 = getelementptr inbounds %struct.sk_buff, ptr %281, i32 0, i32 3
  %293 = call fastcc i32 @ieee80211_rx_radiotap_hdrlen(ptr noundef %0, ptr noundef %292, ptr noundef %281) #13
  %294 = sub i32 %293, %152
  br i1 %291, label %295, label %308

295:                                              ; preds = %290
  %296 = getelementptr inbounds %struct.sk_buff, ptr %281, i32 0, i32 17
  %297 = load ptr, ptr %296, align 4
  %298 = getelementptr inbounds %struct.sk_buff, ptr %281, i32 0, i32 16
  %299 = load ptr, ptr %298, align 8
  %300 = ptrtoint ptr %297 to i32
  %301 = ptrtoint ptr %299 to i32
  %302 = sub i32 %300, %301
  %303 = icmp ult i32 %302, %294
  br i1 %303, label %304, label %312

304:                                              ; preds = %295
  %305 = call i32 @pskb_expand_head(ptr noundef %281, i32 noundef %294, i32 noundef 0, i32 noundef 2592) #13
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %312, label %307

307:                                              ; preds = %304
  call void @consume_skb(ptr noundef %281) #13
  br label %364

308:                                              ; preds = %290
  %309 = add i32 %294, 64
  %310 = call ptr @skb_copy_expand(ptr noundef %281, i32 noundef %309, i32 noundef 0, i32 noundef 2592) #13
  %311 = icmp eq ptr %310, null
  br i1 %311, label %364, label %312

312:                                              ; preds = %308, %304, %295
  %313 = phi ptr [ null, %304 ], [ null, %295 ], [ %281, %308 ]
  %314 = phi ptr [ %281, %304 ], [ %281, %295 ], [ %310, %308 ]
  call fastcc void @ieee80211_add_rx_radiotap_header(ptr noundef %0, ptr noundef %314, ptr noundef %118, i32 noundef %293, i1 noundef zeroext true) #13
  %315 = getelementptr inbounds %struct.sk_buff, ptr %314, i32 0, i32 17
  %316 = load ptr, ptr %315, align 4
  %317 = getelementptr inbounds %struct.sk_buff, ptr %314, i32 0, i32 16
  %318 = load ptr, ptr %317, align 8
  %319 = ptrtoint ptr %316 to i32
  %320 = ptrtoint ptr %318 to i32
  %321 = sub i32 %319, %320
  %322 = trunc i32 %321 to i16
  %323 = getelementptr inbounds %struct.sk_buff, ptr %314, i32 0, i32 13, i32 0, i32 19
  store i16 %322, ptr %323, align 2
  %324 = getelementptr inbounds %struct.sk_buff, ptr %314, i32 0, i32 13
  %325 = load i16, ptr %324, align 8
  %326 = and i16 %325, -104
  %327 = or i16 %326, 35
  store i16 %327, ptr %324, align 8
  %328 = getelementptr inbounds %struct.sk_buff, ptr %314, i32 0, i32 13, i32 0, i32 16
  store i16 1024, ptr %328, align 8
  %329 = icmp eq ptr %314, null
  br i1 %329, label %364, label %330

330:                                              ; preds = %312, %286
  %331 = phi ptr [ %314, %312 ], [ %282, %286 ]
  %332 = phi ptr [ %313, %312 ], [ %281, %286 ]
  br i1 %288, label %336, label %333

333:                                              ; preds = %330
  %334 = call ptr @skb_clone(ptr noundef nonnull %331, i32 noundef 2592) #13
  %335 = icmp eq ptr %334, null
  br i1 %335, label %364, label %336

336:                                              ; preds = %333, %330
  %337 = phi ptr [ %334, %333 ], [ %331, %330 ]
  %338 = phi ptr [ %331, %333 ], [ null, %330 ]
  %339 = getelementptr i8, ptr %284, i32 -1068
  %340 = load ptr, ptr %339, align 8
  %341 = getelementptr inbounds %struct.anon.49, ptr %337, i32 0, i32 2
  store ptr %340, ptr %341, align 8
  %342 = getelementptr inbounds %struct.sk_buff, ptr %337, i32 0, i32 5
  %343 = load i32, ptr %342, align 8
  %344 = getelementptr inbounds %struct.net_device, ptr %340, i32 0, i32 110
  %345 = load ptr, ptr %344, align 8
  %346 = ptrtoint ptr %345 to i32
  %347 = call i32 @llvm.read_register.i32(metadata !0) #13
  %348 = inttoptr i32 %347 to ptr
  %349 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %348) #11, !srcloc !35
  %350 = add i32 %349, %346
  %351 = inttoptr i32 %350 to ptr
  %352 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %351, i32 0, i32 4
  %353 = load i32, ptr %352, align 4
  %354 = add i32 %353, 1
  store i32 %354, ptr %352, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !24
  %355 = zext i32 %343 to i64
  %356 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %351, i32 0, i32 1
  %357 = load i64, ptr %356, align 8
  %358 = add i64 %357, %355
  store i64 %358, ptr %356, align 8
  %359 = load i64, ptr %351, align 32
  %360 = add i64 %359, 1
  store i64 %360, ptr %351, align 32
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !25
  %361 = load i32, ptr %352, align 4
  %362 = add i32 %361, 1
  store i32 %362, ptr %352, align 4
  %363 = call i32 @netif_receive_skb(ptr noundef nonnull %337) #13
  br label %364

364:                                              ; preds = %336, %333, %312, %308, %307
  %365 = phi ptr [ %313, %312 ], [ %332, %336 ], [ %332, %333 ], [ %281, %308 ], [ null, %307 ]
  %366 = phi ptr [ null, %312 ], [ %338, %336 ], [ %331, %333 ], [ null, %308 ], [ null, %307 ]
  br i1 %288, label %367, label %280

367:                                              ; preds = %364, %280
  %368 = phi ptr [ %281, %280 ], [ %365, %364 ]
  %369 = phi ptr [ %282, %280 ], [ %366, %364 ]
  call void @consume_skb(ptr noundef %369) #13
  %370 = icmp eq ptr %368, null
  br i1 %370, label %543, label %371

371:                                              ; preds = %367
  %372 = call fastcc ptr @ieee80211_clean_skb(ptr noundef nonnull %368, i32 noundef %171, i32 noundef %152) #13
  br label %373

373:                                              ; preds = %371, %224, %117
  %374 = phi ptr [ %2, %117 ], [ %225, %224 ], [ %372, %371 ]
  %375 = icmp eq ptr %374, null
  br i1 %375, label %543, label %376

376:                                              ; preds = %373
  %377 = load i32, ptr %49, align 8
  %378 = and i32 %377, 1073741824
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %401, label %380

380:                                              ; preds = %376
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %6) #13
  %381 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %6, i32 0, i32 1
  %382 = getelementptr inbounds i8, ptr %6, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %382, i8 0, i64 24, i1 false) #13
  store ptr %374, ptr %381, align 4
  %383 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %6, i32 0, i32 2
  store ptr %0, ptr %383, align 4
  store ptr %3, ptr %6, align 4
  %384 = getelementptr inbounds %struct.sk_buff, ptr %374, i32 0, i32 5
  %385 = load i32, ptr %384, align 8
  %386 = icmp ugt i32 %385, 13
  %387 = icmp ne ptr %1, null
  %388 = and i1 %387, %386
  br i1 %388, label %389, label %399

389:                                              ; preds = %380
  %390 = getelementptr i8, ptr %1, i32 -1952
  %391 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %6, i32 0, i32 4
  store ptr %390, ptr %391, align 4
  %392 = getelementptr i8, ptr %1, i32 -1908
  %393 = load ptr, ptr %392, align 4
  %394 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %6, i32 0, i32 3
  store ptr %393, ptr %394, align 4
  %395 = getelementptr i8, ptr %1, i32 -1832
  %396 = load volatile ptr, ptr %395, align 8
  %397 = icmp eq ptr %396, null
  br i1 %397, label %399, label %398

398:                                              ; preds = %389
  call fastcc void @ieee80211_rx_8023(ptr noundef nonnull %6, ptr noundef nonnull %396, i32 noundef %385) #13
  br label %400

399:                                              ; preds = %389, %380
  call void @consume_skb(ptr noundef nonnull %374) #13
  br label %400

400:                                              ; preds = %399, %398
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %6) #13
  br label %543

401:                                              ; preds = %376
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #13
  %402 = getelementptr inbounds %struct.sk_buff, ptr %374, i32 0, i32 17
  %403 = load ptr, ptr %402, align 4
  %404 = load i16, ptr %403, align 2
  %405 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %405, i8 0, i32 32, i1 false) #13
  %406 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %5, i32 0, i32 1
  store ptr %374, ptr %406, align 4
  %407 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %5, i32 0, i32 2
  store ptr %0, ptr %407, align 4
  store ptr %3, ptr %5, align 4
  %408 = and i16 %404, 12
  %409 = icmp eq i16 %408, 8
  %410 = icmp eq i16 %408, 0
  br i1 %410, label %411, label %423

411:                                              ; preds = %401
  %412 = getelementptr inbounds %struct.sk_buff, ptr %374, i32 0, i32 5
  %413 = load i32, ptr %412, align 8
  %414 = call i32 @ieee80211_hdrlen(i16 noundef zeroext %404) #14
  %415 = icmp ult i32 %413, %414
  br i1 %415, label %437, label %416

416:                                              ; preds = %411
  %417 = getelementptr inbounds %struct.sk_buff, ptr %374, i32 0, i32 6
  %418 = load i32, ptr %417, align 4
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %438, label %420

420:                                              ; preds = %416
  %421 = call ptr @__pskb_pull_tail(ptr noundef nonnull %374, i32 noundef %418) #13
  %422 = icmp eq ptr %421, null
  br i1 %422, label %437, label %438

423:                                              ; preds = %401
  %424 = call i32 @ieee80211_hdrlen(i16 noundef zeroext %404) #14
  %425 = getelementptr inbounds %struct.sk_buff, ptr %374, i32 0, i32 5
  %426 = load i32, ptr %425, align 8
  %427 = getelementptr inbounds %struct.sk_buff, ptr %374, i32 0, i32 6
  %428 = load i32, ptr %427, align 4
  %429 = sub i32 %426, %428
  %430 = icmp ugt i32 %424, %429
  br i1 %430, label %431, label %438, !prof !9

431:                                              ; preds = %423
  %432 = icmp ult i32 %426, %424
  br i1 %432, label %437, label %433, !prof !9

433:                                              ; preds = %431
  %434 = sub i32 %424, %429
  %435 = call ptr @__pskb_pull_tail(ptr noundef nonnull %374, i32 noundef %434) #13
  %436 = icmp eq ptr %435, null
  br i1 %436, label %437, label %438

437:                                              ; preds = %433, %431, %420, %411
  call void @consume_skb(ptr noundef nonnull %374) #13
  br label %541

438:                                              ; preds = %433, %423, %420, %416
  %439 = load ptr, ptr %402, align 4
  %440 = load i16, ptr %439, align 2
  %441 = and i16 %440, 140
  %442 = icmp eq i16 %441, 136
  br i1 %442, label %443, label %457

443:                                              ; preds = %438
  %444 = and i16 %440, 768
  %445 = icmp eq i16 %444, 768
  %446 = select i1 %445, i32 30, i32 24
  %447 = getelementptr i8, ptr %439, i32 %446
  %448 = load i8, ptr %447, align 1
  %449 = zext i8 %448 to i32
  %450 = and i32 %449, 15
  %451 = and i32 %449, 128
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %463, label %453

453:                                              ; preds = %443
  %454 = getelementptr inbounds %struct.sk_buff, ptr %374, i32 0, i32 3, i32 35
  %455 = load i8, ptr %454, align 1
  %456 = or i8 %455, 8
  store i8 %456, ptr %454, align 1
  br label %463

457:                                              ; preds = %438
  %458 = and i16 %440, 12
  %459 = icmp eq i16 %458, 0
  %460 = select i1 %459, i32 16, i32 0
  %461 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %5, i32 0, i32 7
  store i32 16, ptr %461, align 4
  %462 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %5, i32 0, i32 8
  store i32 %460, ptr %462, align 4
  br label %468

463:                                              ; preds = %453, %443
  %464 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %5, i32 0, i32 7
  store i32 %450, ptr %464, align 4
  %465 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %5, i32 0, i32 8
  store i32 %450, ptr %465, align 4
  %466 = icmp ugt i32 %450, 7
  %467 = select i1 %466, i32 0, i32 %450
  br label %468

468:                                              ; preds = %463, %457
  %469 = phi i32 [ 0, %457 ], [ %467, %463 ]
  %470 = getelementptr inbounds %struct.sk_buff, ptr %374, i32 0, i32 13, i32 0, i32 5
  store i32 %469, ptr %470, align 8
  %471 = load i16, ptr %439, align 2
  %472 = trunc i16 %471 to i8
  %473 = and i8 %472, -4
  switch i8 %473, label %475 [
    i8 80, label %474
    i8 -128, label %474
    i8 28, label %474
  ], !prof !36

474:                                              ; preds = %468, %468, %468
  call void @ieee80211_scan_rx(ptr noundef %0, ptr noundef nonnull %374) #13
  br label %475

475:                                              ; preds = %474, %468
  br i1 %409, label %476, label %509

476:                                              ; preds = %475
  %477 = icmp eq ptr %1, null
  br i1 %477, label %484, label %478

478:                                              ; preds = %476
  %479 = getelementptr i8, ptr %1, i32 -1952
  %480 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %5, i32 0, i32 4
  store ptr %479, ptr %480, align 4
  %481 = getelementptr i8, ptr %1, i32 -1908
  %482 = load ptr, ptr %481, align 4
  store ptr %482, ptr %405, align 4
  %483 = call fastcc zeroext i1 @ieee80211_prepare_and_rx_handle(ptr noundef nonnull %5, ptr noundef nonnull %374, i1 noundef zeroext true) #13
  br i1 %483, label %541, label %540

484:                                              ; preds = %476
  %485 = getelementptr inbounds %struct.ieee80211_hdr, ptr %439, i32 0, i32 3
  %486 = call ptr @sta_info_hash_lookup(ptr noundef %0, ptr noundef %485) #13
  %487 = icmp eq ptr %486, null
  br i1 %487, label %509, label %488

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %5, i32 0, i32 4
  br label %490

490:                                              ; preds = %499, %488
  %491 = phi ptr [ %486, %488 ], [ %501, %499 ]
  %492 = phi ptr [ null, %488 ], [ %493, %499 ]
  %493 = getelementptr i8, ptr %491, i32 -24
  %494 = icmp eq ptr %492, null
  br i1 %494, label %499, label %495

495:                                              ; preds = %490
  store ptr %492, ptr %489, align 4
  %496 = getelementptr inbounds %struct.sta_info, ptr %492, i32 0, i32 6
  %497 = load ptr, ptr %496, align 4
  store ptr %497, ptr %405, align 4
  %498 = call fastcc zeroext i1 @ieee80211_prepare_and_rx_handle(ptr noundef nonnull %5, ptr noundef %374, i1 noundef zeroext false) #13
  br label %499

499:                                              ; preds = %495, %490
  %500 = getelementptr inbounds %struct.rhlist_head, ptr %491, i32 0, i32 1
  %501 = load volatile ptr, ptr %500, align 4
  %502 = icmp eq ptr %501, null
  br i1 %502, label %503, label %490

503:                                              ; preds = %499
  %504 = icmp eq ptr %493, null
  br i1 %504, label %509, label %505

505:                                              ; preds = %503
  store ptr %493, ptr %489, align 4
  %506 = getelementptr i8, ptr %491, i32 20
  %507 = load ptr, ptr %506, align 4
  store ptr %507, ptr %405, align 4
  %508 = call fastcc zeroext i1 @ieee80211_prepare_and_rx_handle(ptr noundef nonnull %5, ptr noundef %374, i1 noundef zeroext true) #13
  br i1 %508, label %541, label %540

509:                                              ; preds = %503, %484, %475
  %510 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %511 = load volatile ptr, ptr %510, align 8
  %512 = icmp eq ptr %511, %510
  br i1 %512, label %540, label %513

513:                                              ; preds = %509
  %514 = getelementptr inbounds %struct.ieee80211_hdr, ptr %439, i32 0, i32 3
  %515 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %5, i32 0, i32 4
  br label %516

516:                                              ; preds = %531, %513
  %517 = phi ptr [ %511, %513 ], [ %533, %531 ]
  %518 = phi ptr [ null, %513 ], [ %532, %531 ]
  %519 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %517, i32 0, i32 9
  %520 = load volatile i32, ptr %519, align 4
  %521 = and i32 %520, 1
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %531, label %523

523:                                              ; preds = %516
  %524 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %517, i32 0, i32 58
  %525 = load i32, ptr %524, align 8
  switch i32 %525, label %526 [
    i32 6, label %531
    i32 4, label %531
  ]

526:                                              ; preds = %523
  %527 = icmp eq ptr %518, null
  br i1 %527, label %531, label %528

528:                                              ; preds = %526
  %529 = call ptr @sta_info_get_bss(ptr noundef nonnull %518, ptr noundef %514) #13
  store ptr %529, ptr %515, align 4
  store ptr %518, ptr %405, align 4
  %530 = call fastcc zeroext i1 @ieee80211_prepare_and_rx_handle(ptr noundef nonnull %5, ptr noundef %374, i1 noundef zeroext false) #13
  br label %531

531:                                              ; preds = %528, %526, %523, %523, %516
  %532 = phi ptr [ %518, %523 ], [ %517, %528 ], [ %518, %516 ], [ %518, %523 ], [ %517, %526 ]
  %533 = load volatile ptr, ptr %517, align 8
  %534 = icmp eq ptr %533, %510
  br i1 %534, label %535, label %516

535:                                              ; preds = %531
  %536 = icmp eq ptr %532, null
  br i1 %536, label %540, label %537

537:                                              ; preds = %535
  %538 = call ptr @sta_info_get_bss(ptr noundef nonnull %532, ptr noundef %514) #13
  store ptr %538, ptr %515, align 4
  store ptr %532, ptr %405, align 4
  %539 = call fastcc zeroext i1 @ieee80211_prepare_and_rx_handle(ptr noundef nonnull %5, ptr noundef %374, i1 noundef zeroext true) #13
  br i1 %539, label %541, label %540

540:                                              ; preds = %537, %535, %509, %505, %478
  call void @consume_skb(ptr noundef %374) #13
  br label %541

541:                                              ; preds = %540, %537, %505, %478, %437
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #13
  br label %543

542:                                              ; preds = %112, %103, %83, %62, %47, %39, %35, %31, %30, %22
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #13
  br label %543

543:                                              ; preds = %542, %541, %400, %373, %367, %223, %186, %165
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_rx_napi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr %5, ptr %5, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  call void @ieee80211_rx_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5)
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %7 = icmp eq ptr %3, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  call void @netif_receive_skb_list(ptr noundef nonnull %5) #13
  br label %20

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %20, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %14, %12 ], [ %10, %9 ]
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %14, ptr %16, align 4
  store ptr null, ptr %13, align 8
  %18 = call i32 @napi_gro_receive(ptr noundef nonnull %3, ptr noundef %13) #13
  %19 = icmp eq ptr %14, %5
  br i1 %19, label %20, label %12

20:                                               ; preds = %12, %9, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_receive_skb_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_rx_irqsafe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, -8
  %6 = or i16 %5, 1
  store i16 %6, ptr %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 43
  tail call void @skb_queue_tail(ptr noundef %7, ptr noundef %1) #13
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 42, i32 1
  %9 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %8) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 42
  tail call void @__tasklet_schedule(ptr noundef %12) #13
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_clear_fast_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unschedule_txq(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sta_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_ps_deliver_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_release_reorder_frame(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.sk_buff_head, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = zext i32 %1 to i64
  %11 = shl nuw i64 1, %10
  br label %76

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.anon.123, ptr %6, i32 0, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %6
  %16 = select i1 %15, ptr null, ptr %14
  %17 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = zext i32 %1 to i64
  %20 = shl nuw i64 1, %19
  %21 = and i64 %18, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %12
  %24 = icmp eq ptr %16, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 24
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 524288
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %25, %23
  %31 = icmp eq ptr %7, null
  br i1 %31, label %76, label %32

32:                                               ; preds = %30
  %33 = getelementptr %struct.sk_buff_head, ptr %5, i32 %1, i32 1
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi ptr [ %7, %32 ], [ %42, %34 ]
  %36 = load i32, ptr %33, align 4
  %37 = add i32 %36, -1
  store volatile i32 %37, ptr %33, align 4
  %38 = load ptr, ptr %35, align 8
  %39 = getelementptr inbounds %struct.anon.49, ptr %35, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  store ptr null, ptr %39, align 4
  store ptr null, ptr %35, align 8
  %41 = getelementptr inbounds %struct.anon.49, ptr %38, i32 0, i32 1
  store volatile ptr %40, ptr %41, align 4
  store volatile ptr %38, ptr %40, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %35, i32 noundef 0) #13
  %42 = load ptr, ptr %6, align 4
  %43 = icmp eq ptr %42, %6
  %44 = icmp eq ptr %42, null
  %45 = or i1 %43, %44
  br i1 %45, label %76, label %34

46:                                               ; preds = %25, %12
  %47 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 10
  %48 = load i16, ptr %47, align 2
  %49 = add i16 %48, -1
  store i16 %49, ptr %47, align 2
  %50 = load ptr, ptr %6, align 4
  %51 = icmp eq ptr %50, %6
  %52 = icmp eq ptr %50, null
  %53 = or i1 %51, %52
  br i1 %53, label %76, label %54

54:                                               ; preds = %46
  %55 = getelementptr %struct.sk_buff_head, ptr %5, i32 %1, i32 1
  %56 = getelementptr inbounds %struct.sk_buff_list, ptr %2, i32 0, i32 1
  %57 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 1
  br label %58

58:                                               ; preds = %58, %54
  %59 = phi ptr [ %50, %54 ], [ %72, %58 ]
  %60 = load i32, ptr %55, align 4
  %61 = add i32 %60, -1
  store volatile i32 %61, ptr %55, align 4
  %62 = load ptr, ptr %59, align 8
  %63 = getelementptr inbounds %struct.anon.49, ptr %59, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  store ptr null, ptr %63, align 4
  store ptr null, ptr %59, align 8
  %65 = getelementptr inbounds %struct.anon.49, ptr %62, i32 0, i32 1
  store volatile ptr %64, ptr %65, align 4
  store volatile ptr %62, ptr %64, align 8
  %66 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 3, i32 35
  %67 = load i8, ptr %66, align 1
  %68 = or i8 %67, 32
  store i8 %68, ptr %66, align 1
  %69 = load ptr, ptr %56, align 4
  store volatile ptr %2, ptr %59, align 8
  store volatile ptr %69, ptr %63, align 4
  store volatile ptr %59, ptr %56, align 4
  store volatile ptr %59, ptr %69, align 4
  %70 = load i32, ptr %57, align 4
  %71 = add i32 %70, 1
  store volatile i32 %71, ptr %57, align 4
  %72 = load ptr, ptr %6, align 4
  %73 = icmp eq ptr %72, %6
  %74 = icmp eq ptr %72, null
  %75 = or i1 %73, %74
  br i1 %75, label %76, label %58

76:                                               ; preds = %58, %46, %34, %30, %9
  %77 = phi i64 [ %11, %9 ], [ %20, %46 ], [ %20, %30 ], [ %20, %34 ], [ %20, %58 ]
  %78 = xor i64 %77, -1
  %79 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 2
  %80 = load i64, ptr %79, align 8
  %81 = and i64 %80, %78
  store i64 %81, ptr %79, align 8
  %82 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 9
  %83 = load i16, ptr %82, align 8
  %84 = add i16 %83, 1
  %85 = and i16 %84, 4095
  store i16 %85, ptr %82, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_event_callback(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_rx_h_michael_mic_verify(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_rx_h_mgmt_check(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 252
  %8 = icmp eq i16 %7, 28
  br i1 %8, label %157, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 23
  %13 = and i16 %6, 12
  %14 = icmp eq i16 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %157

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %18, i32 0, i32 58
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 3
  %22 = icmp eq i16 %7, 128
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %64

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ieee80211_hw, ptr %31, i32 0, i32 4
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 24
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 256
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 38
  %43 = load i8, ptr %42, align 2
  %44 = sext i8 %43 to i32
  br label %45

45:                                               ; preds = %41, %36, %29
  %46 = phi i32 [ 0, %36 ], [ %44, %41 ], [ 0, %29 ]
  %47 = getelementptr inbounds %struct.ieee80211_hw, ptr %31, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 28
  %50 = load i16, ptr %49, align 4
  %51 = and i16 %50, 8191
  %52 = zext i16 %51 to i32
  %53 = mul nuw nsw i32 %52, 1000
  %54 = and i16 %50, 8192
  %55 = icmp eq i16 %54, 0
  %56 = select i1 %55, i32 0, i32 500
  %57 = add nuw nsw i32 %53, %56
  tail call void @cfg80211_report_obss_beacon_khz(ptr noundef %48, ptr noundef %5, i32 noundef %11, i32 noundef %57, i32 noundef %46) #13
  %58 = load i32, ptr %25, align 4
  %59 = or i32 %58, 2
  store i32 %59, ptr %25, align 4
  %60 = load ptr, ptr %2, align 4
  %61 = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 17
  %62 = load ptr, ptr %61, align 4
  %63 = load i16, ptr %62, align 2
  br label %64

64:                                               ; preds = %45, %24, %16
  %65 = phi i16 [ %63, %45 ], [ %6, %24 ], [ %6, %16 ]
  %66 = phi ptr [ %62, %45 ], [ %5, %24 ], [ %5, %16 ]
  %67 = phi ptr [ %60, %45 ], [ %3, %24 ], [ %3, %16 ]
  %68 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 3, i32 24
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 2
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %157

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %157, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.sta_info, ptr %74, i32 0, i32 23
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 128
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %157, label %81

81:                                               ; preds = %76
  %82 = and i16 %65, 16384
  %83 = icmp eq i16 %82, 0
  %84 = getelementptr inbounds %struct.ieee80211_hdr, ptr %66, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %83, label %88, label %108

88:                                               ; preds = %81
  br i1 %87, label %89, label %109

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 5
  %91 = load i32, ptr %90, align 8
  %92 = icmp ult i32 %91, 25
  br i1 %92, label %128, label %93

93:                                               ; preds = %89
  %94 = trunc i16 %65 to i8
  %95 = and i8 %94, -4
  switch i8 %95, label %128 [
    i8 -96, label %99
    i8 -64, label %99
    i8 -48, label %96
  ]

96:                                               ; preds = %93
  %97 = getelementptr i8, ptr %66, i32 24
  %98 = load i8, ptr %97, align 1
  switch i8 %98, label %99 [
    i8 4, label %128
    i8 7, label %128
    i8 11, label %128
    i8 15, label %128
    i8 20, label %128
    i8 21, label %128
    i8 127, label %128
  ]

99:                                               ; preds = %96, %93, %93
  %100 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %128, label %103, !prof !26

103:                                              ; preds = %99
  switch i8 %95, label %157 [
    i8 -64, label %104
    i8 -96, label %104
  ]

104:                                              ; preds = %103, %103
  %105 = load ptr, ptr %17, align 4
  %106 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %105, i32 0, i32 6
  %107 = load ptr, ptr %106, align 8
  tail call void @cfg80211_rx_unprot_mlme_mgmt(ptr noundef %107, ptr noundef %66, i32 noundef %91) #13
  br label %157

108:                                              ; preds = %81
  br i1 %87, label %128, label %109

109:                                              ; preds = %108, %88
  %110 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 5
  %111 = load i32, ptr %110, align 8
  %112 = icmp ult i32 %111, 25
  br i1 %112, label %128, label %113

113:                                              ; preds = %109
  %114 = trunc i16 %65 to i8
  %115 = and i8 %114, -4
  switch i8 %115, label %128 [
    i8 -96, label %120
    i8 -64, label %120
    i8 -48, label %116
  ]

116:                                              ; preds = %113
  br i1 %83, label %117, label %120

117:                                              ; preds = %116
  %118 = getelementptr i8, ptr %66, i32 24
  %119 = load i8, ptr %118, align 1
  switch i8 %119, label %120 [
    i8 4, label %128
    i8 7, label %128
    i8 11, label %128
    i8 15, label %128
    i8 20, label %128
    i8 21, label %128
    i8 127, label %128
  ]

120:                                              ; preds = %117, %116, %113, %113
  %121 = tail call fastcc i32 @ieee80211_get_mmie_keyidx(ptr noundef %67) #13
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %128, !prof !9

123:                                              ; preds = %120
  switch i8 %115, label %157 [
    i8 -64, label %124
    i8 -96, label %124
  ]

124:                                              ; preds = %123, %123
  %125 = load ptr, ptr %17, align 4
  %126 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %125, i32 0, i32 6
  %127 = load ptr, ptr %126, align 8
  tail call void @cfg80211_rx_unprot_mlme_mgmt(ptr noundef %127, ptr noundef %66, i32 noundef %111) #13
  br label %157

128:                                              ; preds = %120, %117, %117, %117, %117, %117, %117, %117, %113, %109, %108, %99, %96, %96, %96, %96, %96, %96, %96, %93, %89
  %129 = trunc i16 %65 to i8
  %130 = and i8 %129, -4
  switch i8 %130, label %157 [
    i8 -128, label %131
    i8 -48, label %144
  ]

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %157, label %135

135:                                              ; preds = %131
  %136 = tail call fastcc i32 @ieee80211_get_mmie_keyidx(ptr noundef %67) #13
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %157, !prof !9

138:                                              ; preds = %135
  %139 = load ptr, ptr %17, align 4
  %140 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %139, i32 0, i32 6
  %141 = load ptr, ptr %140, align 8
  %142 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 5
  %143 = load i32, ptr %142, align 8
  tail call void @cfg80211_rx_unprot_mlme_mgmt(ptr noundef %141, ptr noundef %66, i32 noundef %143) #13
  br label %157

144:                                              ; preds = %128
  %145 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 5
  %150 = load i32, ptr %149, align 8
  %151 = icmp ult i32 %150, 25
  br i1 %151, label %157, label %152, !prof !37

152:                                              ; preds = %148
  br i1 %83, label %153, label %156, !prof !37

153:                                              ; preds = %152
  %154 = getelementptr i8, ptr %66, i32 24
  %155 = load i8, ptr %154, align 1
  switch i8 %155, label %156 [
    i8 4, label %157
    i8 7, label %157
    i8 11, label %157
    i8 15, label %157
    i8 20, label %157
    i8 21, label %157
    i8 127, label %157
  ]

156:                                              ; preds = %153, %152
  br label %157

157:                                              ; preds = %156, %153, %153, %153, %153, %153, %153, %153, %148, %144, %138, %135, %131, %128, %124, %123, %104, %103, %76, %72, %64, %9, %1
  %158 = phi i32 [ 0, %1 ], [ 2, %9 ], [ 1, %103 ], [ 1, %104 ], [ 1, %123 ], [ 1, %124 ], [ 1, %138 ], [ 1, %156 ], [ 0, %64 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %148 ], [ 0, %144 ], [ 0, %76 ], [ 0, %72 ], [ 0, %131 ], [ 0, %135 ], [ 0, %128 ]
  ret i32 %158
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_rx_h_action(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.sta_opmode_info, align 4
  %3 = alloca %struct.sta_opmode_info, align 4
  %4 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = load i16, ptr %11, align 2
  %15 = and i16 %14, 252
  %16 = icmp eq i16 %15, 208
  br i1 %16, label %17, label %238

17:                                               ; preds = %1
  %18 = icmp ult i32 %13, 25
  br i1 %18, label %238, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 6
  %24 = load i8, ptr %23, align 2
  br i1 %22, label %25, label %26

25:                                               ; preds = %19
  switch i8 %24, label %238 [
    i8 4, label %26
    i8 15, label %26
    i8 0, label %26
  ]

26:                                               ; preds = %25, %25, %25, %19
  %27 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 6
  switch i8 %24, label %238 [
    i8 7, label %28
    i8 4, label %113
    i8 21, label %140
    i8 3, label %152
    i8 0, label %170
    i8 15, label %210
    i8 22, label %217
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.sta_info, ptr %21, i32 0, i32 46, i32 3, i32 1
  %30 = load i8, ptr %29, align 2, !range !23
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %224, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 58
  %34 = load i32, ptr %33, align 8
  switch i32 %34, label %238 [
    i32 2, label %35
    i32 7, label %35
    i32 4, label %35
    i32 3, label %35
    i32 1, label %35
  ]

35:                                               ; preds = %32, %32, %32, %32, %32
  %36 = icmp ult i32 %13, 27
  br i1 %36, label %224, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.anon.162, ptr %27, i32 0, i32 1
  %39 = load i8, ptr %38, align 1
  switch i8 %39, label %224 [
    i8 1, label %40
    i8 0, label %72
  ]

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  %41 = getelementptr inbounds i8, ptr %2, i32 8
  store i64 0, ptr %41, align 4
  %42 = add nsw i32 %34, -3
  %43 = icmp ult i32 %42, 2
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 6, i32 0, i32 1
  %46 = load i8, ptr %45, align 1
  switch i8 %46, label %71 [
    i8 0, label %49
    i8 1, label %47
    i8 3, label %48
  ]

47:                                               ; preds = %44
  br label %49

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %47, %44
  %50 = phi i32 [ 3, %48 ], [ 2, %47 ], [ 1, %44 ]
  %51 = getelementptr inbounds %struct.sta_info, ptr %21, i32 0, i32 46, i32 15
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, %50
  br i1 %53, label %70, label %54

54:                                               ; preds = %49
  store i32 %50, ptr %51, align 4
  %55 = tail call i32 @ieee80211_smps_mode_to_smps_mode(i32 noundef %50) #13
  %56 = getelementptr inbounds %struct.sta_opmode_info, ptr %2, i32 0, i32 1
  store i32 %55, ptr %56, align 4
  store i32 2, ptr %2, align 4
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr inbounds %struct.ieee80211_hw, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 36
  %61 = load i8, ptr %60, align 4
  %62 = zext i8 %61 to i32
  %63 = getelementptr %struct.wiphy, ptr %59, i32 0, i32 53, i32 %62
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %20, align 4
  tail call void @rate_control_rate_update(ptr noundef %5, ptr noundef %64, ptr noundef %65, i32 noundef 2) #13
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 6
  %67 = load ptr, ptr %66, align 8
  %68 = load ptr, ptr %20, align 4
  %69 = getelementptr inbounds %struct.sta_info, ptr %68, i32 0, i32 4
  call void @cfg80211_sta_opmode_change_notify(ptr noundef %67, ptr noundef %69, ptr noundef nonnull %2, i32 noundef 2592) #13
  br label %70

70:                                               ; preds = %54, %49, %40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  br label %228

71:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  br label %224

72:                                               ; preds = %37
  %73 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 6, i32 0, i32 1
  %74 = load i8, ptr %73, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %75 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %75, i8 0, i32 12, i1 false)
  %76 = getelementptr inbounds %struct.sta_info, ptr %21, i32 0, i32 46, i32 3
  %77 = load i16, ptr %76, align 8
  %78 = and i16 %77, 2
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %112, label %80

80:                                               ; preds = %72
  %81 = icmp eq i8 %74, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %80
  %83 = tail call i32 @ieee80211_sta_cap_rx_bw(ptr noundef %21) #13
  %84 = load ptr, ptr %20, align 4
  br label %85

85:                                               ; preds = %82, %80
  %86 = phi ptr [ %84, %82 ], [ %21, %80 ]
  %87 = phi i32 [ %83, %82 ], [ 0, %80 ]
  %88 = getelementptr inbounds %struct.sta_info, ptr %86, i32 0, i32 39
  store i32 %87, ptr %88, align 4
  %89 = load ptr, ptr %20, align 4
  %90 = tail call i32 @ieee80211_sta_cur_vht_bw(ptr noundef %89) #13
  %91 = load ptr, ptr %20, align 4
  %92 = getelementptr inbounds %struct.sta_info, ptr %91, i32 0, i32 46, i32 14
  %93 = load i32, ptr %92, align 8
  %94 = icmp eq i32 %93, %90
  br i1 %94, label %112, label %95

95:                                               ; preds = %85
  store i32 %90, ptr %92, align 8
  %96 = load ptr, ptr %4, align 4
  %97 = getelementptr inbounds %struct.ieee80211_hw, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 36
  %100 = load i8, ptr %99, align 4
  %101 = zext i8 %100 to i32
  %102 = getelementptr %struct.wiphy, ptr %98, i32 0, i32 53, i32 %101
  %103 = load ptr, ptr %102, align 4
  %104 = load ptr, ptr %20, align 4
  %105 = tail call i32 @ieee80211_sta_rx_bw_to_chan_width(ptr noundef %104) #13
  %106 = getelementptr inbounds %struct.sta_opmode_info, ptr %3, i32 0, i32 2
  store i32 %105, ptr %106, align 4
  store i32 1, ptr %3, align 4
  %107 = load ptr, ptr %20, align 4
  tail call void @rate_control_rate_update(ptr noundef %5, ptr noundef %103, ptr noundef %107, i32 noundef 1) #13
  %108 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 6
  %109 = load ptr, ptr %108, align 8
  %110 = load ptr, ptr %20, align 4
  %111 = getelementptr inbounds %struct.sta_info, ptr %110, i32 0, i32 4
  call void @cfg80211_sta_opmode_change_notify(ptr noundef %109, ptr noundef %111, ptr noundef nonnull %3, i32 noundef 2592) #13
  br label %112

112:                                              ; preds = %95, %85, %72
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br label %228

113:                                              ; preds = %26
  %114 = icmp ult i32 %13, 26
  br i1 %114, label %224, label %115

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 58
  %117 = load i32, ptr %116, align 8
  %118 = icmp ne i32 %117, 2
  %119 = select i1 %118, i1 true, i1 %22
  br i1 %119, label %238, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 4
  %122 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 57, i32 0, i32 23, i32 1
  %123 = load i32, ptr %121, align 4
  %124 = load i32, ptr %122, align 4
  %125 = xor i32 %124, %123
  %126 = getelementptr %struct.ieee80211_mgmt, ptr %11, i32 0, i32 4, i32 4
  %127 = load i16, ptr %126, align 2
  %128 = getelementptr %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 57, i32 0, i32 23, i32 2
  %129 = load i16, ptr %128, align 2
  %130 = xor i16 %129, %127
  %131 = zext i16 %130 to i32
  %132 = or i32 %125, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %238

134:                                              ; preds = %120
  %135 = getelementptr inbounds %struct.anon.162, ptr %27, i32 0, i32 1
  %136 = load i8, ptr %135, align 1
  %137 = icmp eq i8 %136, 4
  br i1 %137, label %138, label %238

138:                                              ; preds = %134
  %139 = icmp ult i32 %13, 30
  br i1 %139, label %224, label %237

140:                                              ; preds = %26
  %141 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 58
  %142 = load i32, ptr %141, align 8
  switch i32 %142, label %238 [
    i32 2, label %143
    i32 7, label %143
    i32 4, label %143
    i32 3, label %143
    i32 1, label %143
  ]

143:                                              ; preds = %140, %140, %140, %140, %140
  %144 = icmp ult i32 %13, 26
  br i1 %144, label %224, label %145

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.anon.162, ptr %27, i32 0, i32 1
  %147 = load i8, ptr %146, align 1
  switch i8 %147, label %238 [
    i8 2, label %148
    i8 1, label %150
  ]

148:                                              ; preds = %145
  %149 = icmp ult i32 %13, 27
  br i1 %149, label %224, label %237

150:                                              ; preds = %145
  %151 = icmp ult i32 %13, 50
  br i1 %151, label %224, label %237

152:                                              ; preds = %26
  %153 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 58
  %154 = load i32, ptr %153, align 8
  switch i32 %154, label %155 [
    i32 2, label %159
    i32 7, label %159
    i32 4, label %159
    i32 3, label %159
  ]

155:                                              ; preds = %152
  %156 = icmp ne i32 %154, 1
  %157 = icmp ult i32 %13, 26
  %158 = select i1 %156, i1 true, i1 %157
  br i1 %158, label %238, label %161

159:                                              ; preds = %152, %152, %152, %152
  %160 = icmp ult i32 %13, 26
  br i1 %160, label %238, label %161

161:                                              ; preds = %159, %155
  %162 = getelementptr inbounds %struct.anon.162, ptr %27, i32 0, i32 1
  %163 = load i8, ptr %162, align 1
  switch i8 %163, label %224 [
    i8 0, label %164
    i8 1, label %166
    i8 2, label %168
  ]

164:                                              ; preds = %161
  %165 = icmp ult i32 %13, 33
  br i1 %165, label %224, label %237

166:                                              ; preds = %161
  %167 = icmp ult i32 %13, 33
  br i1 %167, label %224, label %237

168:                                              ; preds = %161
  %169 = icmp ult i32 %13, 30
  br i1 %169, label %224, label %237

170:                                              ; preds = %26
  %171 = icmp ult i32 %13, 26
  br i1 %171, label %238, label %172

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.anon.162, ptr %27, i32 0, i32 1
  %174 = load i8, ptr %173, align 1
  switch i8 %174, label %238 [
    i8 0, label %175
    i8 4, label %186
  ]

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 36
  %177 = load i8, ptr %176, align 4
  %178 = icmp ne i8 %177, 1
  %179 = icmp ult i32 %13, 32
  %180 = select i1 %178, i1 true, i1 %179
  br i1 %180, label %238, label %181

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 58
  %183 = load i32, ptr %182, align 8
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %185, label %238

185:                                              ; preds = %181
  tail call void @ieee80211_process_measurement_req(ptr noundef %7, ptr noundef %11, i32 noundef %13) #13
  br label %228

186:                                              ; preds = %172
  %187 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 58
  %188 = load i32, ptr %187, align 8
  switch i32 %188, label %238 [
    i32 2, label %189
    i32 1, label %191
    i32 7, label %194
  ]

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 57, i32 0, i32 23, i32 1
  br label %196

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 57
  %193 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %192, i32 0, i32 10
  br label %196

194:                                              ; preds = %186
  %195 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 3
  br label %196

196:                                              ; preds = %194, %191, %189
  %197 = phi ptr [ %190, %189 ], [ %193, %191 ], [ %195, %194 ]
  %198 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 4
  %199 = load i32, ptr %198, align 4
  %200 = load i32, ptr %197, align 4
  %201 = xor i32 %200, %199
  %202 = getelementptr %struct.ieee80211_mgmt, ptr %11, i32 0, i32 4, i32 4
  %203 = load i16, ptr %202, align 2
  %204 = getelementptr i8, ptr %197, i32 4
  %205 = load i16, ptr %204, align 2
  %206 = xor i16 %205, %203
  %207 = zext i16 %206 to i32
  %208 = or i32 %201, %207
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %237, label %238

210:                                              ; preds = %26
  %211 = icmp ult i32 %13, 26
  br i1 %211, label %238, label %212

212:                                              ; preds = %210
  %213 = getelementptr inbounds %struct.anon.162, ptr %27, i32 0, i32 1
  %214 = load i8, ptr %213, align 1
  %215 = add i8 %214, -1
  %216 = icmp ult i8 %215, 5
  br i1 %216, label %224, label %238

217:                                              ; preds = %26
  %218 = getelementptr inbounds %struct.anon.162, ptr %27, i32 0, i32 1
  %219 = load i8, ptr %218, align 1
  %220 = and i8 %219, -2
  %221 = icmp eq i8 %220, 6
  br i1 %221, label %222, label %238

222:                                              ; preds = %217
  %223 = tail call fastcc zeroext i1 @ieee80211_process_rx_twt_action(ptr noundef %0)
  br i1 %223, label %237, label %238

224:                                              ; preds = %212, %168, %166, %164, %161, %150, %148, %143, %138, %113, %71, %37, %35, %28
  %225 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 35
  %226 = load i8, ptr %225, align 1
  %227 = or i8 %226, 16
  store i8 %227, ptr %225, align 1
  br label %238

228:                                              ; preds = %185, %112, %70
  %229 = load ptr, ptr %20, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %235, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.sta_info, ptr %229, i32 0, i32 31
  %233 = load i32, ptr %232, align 8
  %234 = add i32 %233, 1
  store i32 %234, ptr %232, align 8
  br label %235

235:                                              ; preds = %231, %228
  %236 = load ptr, ptr %8, align 4
  call void @consume_skb(ptr noundef %236) #13
  br label %238

237:                                              ; preds = %222, %196, %168, %166, %164, %150, %148, %138
  tail call fastcc void @ieee80211_queue_skb_to_iface(ptr noundef %7, ptr noundef %21, ptr noundef %9)
  br label %238

238:                                              ; preds = %237, %235, %224, %222, %217, %212, %210, %196, %186, %181, %175, %172, %170, %159, %155, %145, %140, %134, %120, %115, %32, %26, %25, %17, %1
  %239 = phi i32 [ 3, %237 ], [ 0, %224 ], [ 3, %235 ], [ 0, %1 ], [ 1, %17 ], [ 1, %25 ], [ 0, %217 ], [ 0, %140 ], [ 0, %32 ], [ 0, %222 ], [ 0, %212 ], [ 0, %210 ], [ 0, %172 ], [ 0, %175 ], [ 0, %181 ], [ 0, %170 ], [ 0, %159 ], [ 0, %155 ], [ 0, %145 ], [ 0, %134 ], [ 0, %120 ], [ 0, %115 ], [ 0, %186 ], [ 0, %196 ], [ 0, %26 ]
  ret i32 %239
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_rx_h_userspace_mgmt(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 35
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %53

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 4
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 24
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 38
  %22 = load i8, ptr %21, align 2
  %23 = sext i8 %22 to i32
  br label %24

24:                                               ; preds = %20, %15, %8
  %25 = phi i32 [ 0, %15 ], [ %23, %20 ], [ 0, %8 ]
  %26 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 28
  %30 = load i16, ptr %29, align 4
  %31 = and i16 %30, 8191
  %32 = zext i16 %31 to i32
  %33 = mul nuw nsw i32 %32, 1000
  %34 = and i16 %30, 8192
  %35 = icmp eq i16 %34, 0
  %36 = select i1 %35, i32 0, i32 500
  %37 = add nuw nsw i32 %33, %36
  %38 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %41 = load i32, ptr %40, align 8
  %42 = tail call zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef %28, i32 noundef %37, i32 noundef %25, ptr noundef %39, i32 noundef %41, i32 noundef 0) #13
  br i1 %42, label %43, label %53

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.sta_info, ptr %45, i32 0, i32 31
  %49 = load i32, ptr %48, align 8
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = load ptr, ptr %2, align 4
  tail call void @consume_skb(ptr noundef %52) #13
  br label %53

53:                                               ; preds = %51, %24, %1
  %54 = phi i32 [ 3, %51 ], [ 0, %1 ], [ 0, %24 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_rx_h_action_post_userspace(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 252
  %10 = icmp eq i16 %9, 208
  br i1 %10, label %11, label %108

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %7, i32 0, i32 6
  %15 = load i8, ptr %14, align 2
  %16 = icmp ne i8 %15, 8
  %17 = icmp ult i32 %13, 28
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %108, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.anon.162, ptr %14, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %108

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 58
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %108

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %7, i32 0, i32 2
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 58, i32 2
  %32 = load i32, ptr %30, align 4
  %33 = load i32, ptr %31, align 4
  %34 = xor i32 %33, %32
  %35 = getelementptr %struct.ieee80211_mgmt, ptr %7, i32 0, i32 2, i32 4
  %36 = load i16, ptr %35, align 2
  %37 = getelementptr %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 58, i32 2, i32 4
  %38 = load i16, ptr %37, align 2
  %39 = xor i16 %38, %36
  %40 = zext i16 %39 to i32
  %41 = or i32 %34, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %98

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %7, i32 0, i32 3
  %45 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 57, i32 0, i32 23, i32 1
  %46 = load i32, ptr %44, align 4
  %47 = load i32, ptr %45, align 4
  %48 = xor i32 %47, %46
  %49 = getelementptr %struct.ieee80211_mgmt, ptr %7, i32 0, i32 3, i32 4
  %50 = load i16, ptr %49, align 2
  %51 = getelementptr %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 57, i32 0, i32 23, i32 2
  %52 = load i16, ptr %51, align 2
  %53 = xor i16 %52, %50
  %54 = zext i16 %53 to i32
  %55 = or i32 %48, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %98

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %7, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = xor i32 %59, %47
  %61 = getelementptr %struct.ieee80211_mgmt, ptr %7, i32 0, i32 4, i32 4
  %62 = load i16, ptr %61, align 2
  %63 = xor i16 %62, %52
  %64 = zext i16 %63 to i32
  %65 = or i32 %60, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.ieee80211_hw, ptr %29, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, 50
  %71 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %70, i32 noundef 2592) #13
  %72 = icmp eq ptr %71, null
  br i1 %72, label %98, label %73

73:                                               ; preds = %67
  %74 = load i32, ptr %68, align 4
  %75 = getelementptr inbounds %struct.sk_buff, ptr %71, i32 0, i32 17
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 %74
  store ptr %77, ptr %75, align 4
  %78 = getelementptr inbounds %struct.sk_buff, ptr %71, i32 0, i32 14
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr i8, ptr %79, i32 %74
  store ptr %80, ptr %78, align 8
  %81 = tail call ptr @skb_put(ptr noundef nonnull %71, i32 noundef 24) #13
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(24) %81, i8 0, i32 24, i1 false) #13
  %82 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %81, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %82, ptr noundef align 2 dereferenceable(6) %44, i32 6, i1 false) #13
  %83 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %81, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %83, ptr noundef align 8 dereferenceable(6) %31, i32 6, i1 false) #13
  %84 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %81, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %84, ptr noundef align 4 dereferenceable(6) %45, i32 6, i1 false) #13
  store i16 208, ptr %81, align 2
  %85 = tail call ptr @skb_put(ptr noundef nonnull %71, i32 noundef 4) #13
  %86 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %81, i32 0, i32 6
  store i8 8, ptr %86, align 2
  %87 = getelementptr inbounds %struct.anon.162, ptr %86, i32 0, i32 1
  store i8 1, ptr %87, align 1
  %88 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %81, i32 0, i32 6, i32 0, i32 1
  %89 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %7, i32 0, i32 6, i32 0, i32 1
  %90 = load i16, ptr %89, align 1
  store i16 %90, ptr %88, align 1
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %91 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 58, i32 9
  %92 = load volatile ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %95, !prof !9

94:                                               ; preds = %73
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2200, i32 noundef 9, ptr noundef null) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  tail call void @kfree_skb_reason(ptr noundef nonnull %71, i32 noundef 0) #13
  br label %98

95:                                               ; preds = %73
  %96 = load ptr, ptr %92, align 4
  %97 = load i32, ptr %96, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %3, ptr noundef nonnull %71, i32 noundef 7, i32 noundef %97) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  br label %98

98:                                               ; preds = %95, %94, %67, %57, %43, %27
  %99 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.sta_info, ptr %100, i32 0, i32 31
  %104 = load i32, ptr %103, align 8
  %105 = add i32 %104, 1
  store i32 %105, ptr %103, align 8
  br label %106

106:                                              ; preds = %102, %98
  %107 = load ptr, ptr %4, align 4
  tail call void @consume_skb(ptr noundef %107) #13
  br label %108

108:                                              ; preds = %106, %23, %19, %11, %1
  %109 = phi i32 [ 3, %106 ], [ 0, %1 ], [ 0, %19 ], [ 0, %23 ], [ 0, %11 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_rx_h_action_return(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i16, ptr %7, align 2
  %11 = and i16 %10, 252
  %12 = icmp eq i16 %11, 208
  br i1 %12, label %13, label %71

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 35
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %9, i32 0, i32 58
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, -3
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %71, label %23

23:                                               ; preds = %18, %13
  %24 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %7, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %71

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %7, i32 0, i32 6
  %30 = load i8, ptr %29, align 2
  %31 = icmp sgt i8 %30, -1
  br i1 %31, label %32, label %71

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = tail call ptr @skb_copy_expand(ptr noundef %5, i32 noundef %34, i32 noundef 0, i32 noundef 2592) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %69, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 17
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %39, i32 0, i32 6
  %41 = load i8, ptr %40, align 2
  %42 = or i8 %41, -128
  store i8 %42, ptr %40, align 2
  %43 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %39, i32 0, i32 2
  %44 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %39, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %43, ptr noundef align 2 dereferenceable(6) %44, i32 6, i1 false)
  %45 = load ptr, ptr %8, align 4
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %45, i32 0, i32 58, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %44, ptr noundef align 8 dereferenceable(6) %46, i32 6, i1 false)
  %47 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %47, i8 0, i32 48, i1 false)
  %48 = load ptr, ptr %8, align 4
  %49 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %48, i32 0, i32 58
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %64

52:                                               ; preds = %37
  store i32 167780352, ptr %47, align 8
  %53 = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 4
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 262144
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 20
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 3, i32 4
  %61 = and i8 %59, 15
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 16
  store i32 %63, ptr %60, align 4
  br label %64

64:                                               ; preds = %57, %52, %37
  %65 = load ptr, ptr %8, align 4
  %66 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 36
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i32
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %65, ptr noundef nonnull %35, i32 noundef 7, i32 noundef %68) #13
  br label %69

69:                                               ; preds = %64, %32
  %70 = load ptr, ptr %4, align 4
  tail call void @consume_skb(ptr noundef %70) #13
  br label %71

71:                                               ; preds = %69, %28, %23, %18, %1
  %72 = phi i32 [ 3, %69 ], [ 0, %1 ], [ 2, %18 ], [ 2, %23 ], [ 1, %28 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_rx_h_ext(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 12
  %10 = icmp eq i16 %9, 12
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 58
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13, i32 0, i32 16
  store i16 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 41
  tail call void @skb_queue_tail(ptr noundef %19, ptr noundef %5) #13
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %21, ptr noundef %22) #13
  %23 = icmp eq ptr %17, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 31
  %26 = load i32, ptr %25, align 8
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 8
  br label %28

28:                                               ; preds = %24, %15, %11, %1
  %29 = phi i32 [ 0, %1 ], [ 2, %11 ], [ 3, %15 ], [ 3, %24 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_rx_h_mgmt(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 58
  %9 = load i32, ptr %8, align 8
  switch i32 %9, label %66 [
    i32 1, label %10
    i32 11, label %10
    i32 2, label %10
  ]

10:                                               ; preds = %1, %1, %1
  %11 = load i16, ptr %7, align 2
  %12 = and i16 %11, 240
  %13 = zext i16 %12 to i32
  %14 = add nsw i32 %13, -16
  %15 = lshr exact i32 %14, 4
  switch i32 %15, label %66 [
    i32 10, label %53
    i32 7, label %53
    i32 4, label %53
    i32 11, label %16
    i32 0, label %35
    i32 2, label %35
    i32 9, label %35
    i32 3, label %52
  ]

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %7, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  %22 = lshr i32 %18, 16
  %23 = and i32 %22, %18
  %24 = trunc i32 %23 to i16
  %25 = getelementptr %struct.ieee80211_mgmt, ptr %7, i32 0, i32 2, i32 4
  %26 = load i16, ptr %25, align 2
  %27 = and i16 %26, %24
  %28 = icmp eq i16 %27, -1
  %29 = add nsw i32 %9, -1
  %30 = icmp ult i32 %29, 2
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %53, label %66

32:                                               ; preds = %16
  %33 = add nsw i32 %9, -1
  %34 = icmp ult i32 %33, 2
  br i1 %34, label %53, label %66

35:                                               ; preds = %10, %10, %10
  %36 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %7, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = lshr i32 %37, 16
  %42 = and i32 %41, %37
  %43 = trunc i32 %42 to i16
  %44 = getelementptr %struct.ieee80211_mgmt, ptr %7, i32 0, i32 2, i32 4
  %45 = load i16, ptr %44, align 2
  %46 = and i16 %45, %43
  %47 = icmp eq i16 %46, -1
  %48 = icmp eq i32 %9, 2
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %53, label %66

50:                                               ; preds = %35
  %51 = icmp eq i32 %9, 2
  br i1 %51, label %53, label %66

52:                                               ; preds = %10
  switch i32 %9, label %66 [
    i32 1, label %53
    i32 7, label %53
  ]

53:                                               ; preds = %52, %52, %50, %40, %32, %21, %10, %10, %10
  %54 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13, i32 0, i32 16
  store i16 0, ptr %56, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 41
  tail call void @skb_queue_tail(ptr noundef %57, ptr noundef %5) #13
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 7
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %59, ptr noundef %60) #13
  %61 = icmp eq ptr %55, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.sta_info, ptr %55, i32 0, i32 31
  %64 = load i32, ptr %63, align 8
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 8
  br label %66

66:                                               ; preds = %62, %53, %52, %50, %40, %32, %21, %10, %1
  %67 = phi i32 [ 2, %1 ], [ 2, %21 ], [ 2, %32 ], [ 2, %40 ], [ 2, %50 ], [ 2, %52 ], [ 2, %10 ], [ 3, %53 ], [ 3, %62 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_rx_handlers_result(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  switch i32 %1, label %148 [
    i32 2, label %3
    i32 0, label %11
    i32 1, label %137
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 31, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 8
  br label %11

11:                                               ; preds = %7, %3, %2
  %12 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 31
  %16 = load i16, ptr %15, align 1
  %17 = and i16 %16, 3
  %18 = icmp eq i16 %17, 0
  %19 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  br i1 %18, label %21, label %35

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.ieee80211_hw, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 36
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  %27 = getelementptr %struct.wiphy, ptr %23, i32 0, i32 53, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 33
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr %struct.ieee80211_rate, ptr %30, i32 %33
  br label %35

35:                                               ; preds = %21, %11
  %36 = phi ptr [ %34, %21 ], [ null, %11 ]
  %37 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %136

41:                                               ; preds = %35
  %42 = or i32 %38, 1
  store i32 %42, ptr %37, align 4
  %43 = getelementptr inbounds %struct.ieee80211_local, ptr %20, i32 0, i32 15
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %136, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 24
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, -1048577
  store i32 %49, ptr %47, align 8
  %50 = tail call fastcc i32 @ieee80211_rx_radiotap_hdrlen(ptr noundef %20, ptr noundef %14, ptr noundef %13) #13
  %51 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 16
  %54 = load ptr, ptr %53, align 8
  %55 = ptrtoint ptr %52 to i32
  %56 = ptrtoint ptr %54 to i32
  %57 = sub i32 %55, %56
  %58 = icmp ult i32 %57, %50
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = tail call i32 @pskb_expand_head(ptr noundef %13, i32 noundef %50, i32 noundef 0, i32 noundef 2592) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %136

62:                                               ; preds = %59, %46
  tail call fastcc void @ieee80211_add_rx_radiotap_header(ptr noundef %20, ptr noundef %13, ptr noundef %36, i32 noundef %50, i1 noundef zeroext false) #13
  %63 = load ptr, ptr %51, align 4
  %64 = load ptr, ptr %53, align 8
  %65 = ptrtoint ptr %63 to i32
  %66 = ptrtoint ptr %64 to i32
  %67 = sub i32 %65, %66
  %68 = trunc i32 %67 to i16
  %69 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 13, i32 0, i32 19
  store i16 %68, ptr %69, align 2
  %70 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 13
  %71 = load i16, ptr %70, align 8
  %72 = and i16 %71, -104
  %73 = or i16 %72, 35
  store i16 %73, ptr %70, align 8
  %74 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 13, i32 0, i32 16
  store i16 1024, ptr %74, align 8
  %75 = getelementptr inbounds %struct.ieee80211_local, ptr %20, i32 0, i32 62
  %76 = load volatile ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, %75
  br i1 %77, label %136, label %78

78:                                               ; preds = %62
  %79 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 5
  br label %80

80:                                               ; preds = %127, %78
  %81 = phi ptr [ %76, %78 ], [ %129, %127 ]
  %82 = phi ptr [ null, %78 ], [ %128, %127 ]
  %83 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %81, i32 0, i32 9
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %127, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %81, i32 0, i32 58
  %89 = load i32, ptr %88, align 8
  %90 = icmp eq i32 %89, 6
  br i1 %90, label %91, label %127

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %81, i32 0, i32 57
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %127, label %96

96:                                               ; preds = %91
  %97 = icmp eq ptr %82, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %96
  %99 = tail call ptr @skb_clone(ptr noundef %13, i32 noundef 2592) #13
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.anon.49, ptr %99, i32 0, i32 2
  store ptr %82, ptr %102, align 8
  %103 = tail call i32 @netif_receive_skb(ptr noundef nonnull %99) #13
  br label %104

104:                                              ; preds = %101, %98, %96
  %105 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %81, i32 0, i32 6
  %106 = load ptr, ptr %105, align 8
  %107 = load i32, ptr %79, align 8
  %108 = getelementptr inbounds %struct.net_device, ptr %106, i32 0, i32 110
  %109 = load ptr, ptr %108, align 8
  %110 = ptrtoint ptr %109 to i32
  %111 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %112 = inttoptr i32 %111 to ptr
  %113 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %112) #11, !srcloc !35
  %114 = add i32 %113, %110
  %115 = inttoptr i32 %114 to ptr
  %116 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %115, i32 0, i32 4
  %117 = load i32, ptr %116, align 4
  %118 = add i32 %117, 1
  store i32 %118, ptr %116, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !24
  %119 = zext i32 %107 to i64
  %120 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %115, i32 0, i32 1
  %121 = load i64, ptr %120, align 8
  %122 = add i64 %121, %119
  store i64 %122, ptr %120, align 8
  %123 = load i64, ptr %115, align 32
  %124 = add i64 %123, 1
  store i64 %124, ptr %115, align 32
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !25
  %125 = load i32, ptr %116, align 4
  %126 = add i32 %125, 1
  store i32 %126, ptr %116, align 4
  br label %127

127:                                              ; preds = %104, %91, %87, %80
  %128 = phi ptr [ %82, %87 ], [ %106, %104 ], [ %82, %91 ], [ %82, %80 ]
  %129 = load volatile ptr, ptr %81, align 8
  %130 = icmp eq ptr %129, %75
  br i1 %130, label %131, label %80

131:                                              ; preds = %127
  %132 = icmp eq ptr %128, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.anon.49, ptr %13, i32 0, i32 2
  store ptr %128, ptr %134, align 8
  %135 = tail call i32 @netif_receive_skb(ptr noundef %13) #13
  br label %148

136:                                              ; preds = %131, %62, %59, %41, %35
  tail call void @consume_skb(ptr noundef %13) #13
  br label %148

137:                                              ; preds = %2
  %138 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.sta_info, ptr %139, i32 0, i32 31, i32 4
  %143 = load i32, ptr %142, align 8
  %144 = add i32 %143, 1
  store i32 %144, ptr %142, align 8
  br label %145

145:                                              ; preds = %141, %137
  %146 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  tail call void @consume_skb(ptr noundef %147) #13
  br label %148

148:                                              ; preds = %145, %136, %133, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_pspoll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_bssid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_rx_unexpected_4addr_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ieee80211_get_mmie_keyidx(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp ult i32 %5, 42
  br i1 %6, label %52, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %7
  %13 = load i16, ptr %3, align 2
  %14 = trunc i16 %13 to i8
  %15 = and i8 %14, -4
  switch i8 %15, label %22 [
    i8 -96, label %25
    i8 -64, label %25
    i8 -48, label %16
  ]

16:                                               ; preds = %12
  %17 = and i16 %13, 16384
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = getelementptr i8, ptr %3, i32 24
  %21 = load i8, ptr %20, align 1
  switch i8 %21, label %25 [
    i8 4, label %22
    i8 7, label %22
    i8 11, label %22
    i8 15, label %22
    i8 20, label %22
    i8 21, label %22
    i8 127, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %12
  %23 = and i16 %13, 252
  %24 = icmp eq i16 %23, 128
  br i1 %24, label %25, label %52

25:                                               ; preds = %22, %19, %16, %12, %12
  %26 = getelementptr i8, ptr %3, i32 %5
  %27 = getelementptr i8, ptr %26, i32 -18
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 76
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ieee80211_mmie, ptr %27, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 16
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ieee80211_mmie, ptr %27, i32 0, i32 2
  br label %48

36:                                               ; preds = %30, %25
  %37 = getelementptr i8, ptr %26, i32 -26
  %38 = icmp ugt i32 %5, 49
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i8, ptr %37, align 1
  %41 = icmp eq i8 %40, 76
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %37, i32 0, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 24
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ieee80211_mmie_16, ptr %37, i32 0, i32 2
  br label %48

48:                                               ; preds = %46, %34
  %49 = phi ptr [ %47, %46 ], [ %35, %34 ]
  %50 = load i16, ptr %49, align 1
  %51 = zext i16 %50 to i32
  br label %52

52:                                               ; preds = %48, %42, %39, %36, %22, %7, %1
  %53 = phi i32 [ -1, %7 ], [ -1, %1 ], [ -1, %22 ], [ -1, %42 ], [ -1, %39 ], [ -1, %36 ], [ %51, %48 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_rx_unprot_mlme_mgmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_crypto_wep_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_crypto_tkip_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_crypto_ccmp_decrypt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_crypto_aes_cmac_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_crypto_aes_cmac_256_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_crypto_aes_gmac_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_crypto_gcmp_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_crypto_hw_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_reassemble_add(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.ieee80211_fragment_cache, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  %8 = icmp ugt i32 %7, 3
  %9 = select i1 %8, i32 0, i32 %7
  store i32 %9, ptr %5, align 4
  %10 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 %6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  %13 = icmp eq ptr %11, null
  %14 = or i1 %12, %13
  br i1 %14, label %29, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.sk_buff_head, ptr %10, i32 0, i32 1
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi ptr [ %11, %15 ], [ %25, %17 ]
  %19 = load i32, ptr %16, align 4
  %20 = add i32 %19, -1
  store volatile i32 %20, ptr %16, align 4
  %21 = load ptr, ptr %18, align 8
  %22 = getelementptr inbounds %struct.anon.49, ptr %18, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr null, ptr %22, align 4
  store ptr null, ptr %18, align 8
  %24 = getelementptr inbounds %struct.anon.49, ptr %21, i32 0, i32 1
  store volatile ptr %23, ptr %24, align 4
  store volatile ptr %21, ptr %23, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %18, i32 noundef 0) #13
  %25 = load ptr, ptr %10, align 4
  %26 = icmp eq ptr %25, %10
  %27 = icmp eq ptr %25, null
  %28 = or i1 %26, %27
  br i1 %28, label %29, label %17

29:                                               ; preds = %17, %4
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr inbounds %struct.sk_buff_list, ptr %10, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  store volatile ptr %10, ptr %30, align 8
  %33 = getelementptr inbounds %struct.anon.49, ptr %30, i32 0, i32 1
  store volatile ptr %32, ptr %33, align 4
  store volatile ptr %30, ptr %31, align 4
  store volatile ptr %30, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sk_buff_head, ptr %10, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store volatile i32 %36, ptr %34, align 4
  store ptr null, ptr %3, align 4
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 %6, i32 1
  store i32 %37, ptr %38, align 4
  %39 = trunc i32 %1 to i16
  %40 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 %6, i32 2
  store i16 %39, ptr %40, align 4
  %41 = trunc i32 %2 to i8
  %42 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 %6, i32 5
  store i8 %41, ptr %42, align 2
  %43 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 %6, i32 4
  store i16 0, ptr %43, align 4
  %44 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 %6, i32 6
  %45 = load i8, ptr %44, align 1
  %46 = and i8 %45, -2
  store i8 %46, ptr %44, align 1
  %47 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 %6, i32 3
  store i16 0, ptr %47, align 2
  ret ptr %10
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_reassemble_find(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.ieee80211_fragment_cache, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_hdr, ptr %4, i32 0, i32 2
  %9 = getelementptr %struct.ieee80211_hdr, ptr %4, i32 0, i32 2, i32 4
  %10 = getelementptr inbounds %struct.ieee80211_hdr, ptr %4, i32 0, i32 3
  %11 = getelementptr %struct.ieee80211_hdr, ptr %4, i32 0, i32 3, i32 4
  br label %12

12:                                               ; preds = %92, %5
  %13 = phi i32 [ %7, %5 ], [ %17, %92 ]
  %14 = phi i32 [ 0, %5 ], [ %93, %92 ]
  %15 = add i32 %13, -1
  %16 = icmp slt i32 %15, 0
  %17 = select i1 %16, i32 3, i32 %15
  %18 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %92, label %21

21:                                               ; preds = %12
  %22 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 %17, i32 2
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %26, label %92

26:                                               ; preds = %21
  %27 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 %17, i32 5
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, %3
  br i1 %30, label %31, label %92

31:                                               ; preds = %26
  %32 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 %17, i32 4
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = add nuw nsw i32 %34, 1
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %37, label %92

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 17
  %39 = load ptr, ptr %38, align 4
  %40 = load i16, ptr %4, align 2
  %41 = load i16, ptr %39, align 2
  %42 = xor i16 %41, %40
  %43 = and i16 %42, 12
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %92

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.ieee80211_hdr, ptr %39, i32 0, i32 2
  %47 = load i32, ptr %8, align 4
  %48 = load i32, ptr %46, align 4
  %49 = xor i32 %48, %47
  %50 = load i16, ptr %9, align 2
  %51 = getelementptr %struct.ieee80211_hdr, ptr %39, i32 0, i32 2, i32 4
  %52 = load i16, ptr %51, align 2
  %53 = xor i16 %52, %50
  %54 = zext i16 %53 to i32
  %55 = or i32 %49, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %92

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.ieee80211_hdr, ptr %39, i32 0, i32 3
  %59 = load i32, ptr %10, align 4
  %60 = load i32, ptr %58, align 4
  %61 = xor i32 %60, %59
  %62 = load i16, ptr %11, align 2
  %63 = getelementptr %struct.ieee80211_hdr, ptr %39, i32 0, i32 3, i32 4
  %64 = load i16, ptr %63, align 2
  %65 = xor i16 %64, %62
  %66 = zext i16 %65 to i32
  %67 = or i32 %61, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %57
  %70 = getelementptr [4 x %struct.ieee80211_fragment_entry], ptr %0, i32 0, i32 %17, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 200
  %73 = load volatile i32, ptr @jiffies, align 64
  %74 = sub i32 %72, %73
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %69
  %77 = icmp eq ptr %19, null
  br i1 %77, label %92, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.sk_buff_head, ptr %18, i32 0, i32 1
  br label %80

80:                                               ; preds = %80, %78
  %81 = phi ptr [ %19, %78 ], [ %88, %80 ]
  %82 = load i32, ptr %79, align 4
  %83 = add i32 %82, -1
  store volatile i32 %83, ptr %79, align 4
  %84 = load ptr, ptr %81, align 8
  %85 = getelementptr inbounds %struct.anon.49, ptr %81, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  store ptr null, ptr %85, align 4
  store ptr null, ptr %81, align 8
  %87 = getelementptr inbounds %struct.anon.49, ptr %84, i32 0, i32 1
  store volatile ptr %86, ptr %87, align 4
  store volatile ptr %84, ptr %86, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %81, i32 noundef 0) #13
  %88 = load ptr, ptr %18, align 4
  %89 = icmp eq ptr %88, %18
  %90 = icmp eq ptr %88, null
  %91 = or i1 %89, %90
  br i1 %91, label %92, label %80

92:                                               ; preds = %80, %76, %57, %45, %37, %31, %26, %21, %12
  %93 = add nuw nsw i32 %14, 1
  %94 = icmp eq i32 %93, 4
  br i1 %94, label %95, label %12

95:                                               ; preds = %92, %69
  %96 = phi ptr [ null, %92 ], [ %18, %69 ]
  ret ptr %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ieee80211_rx_h_amsdu(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.sk_buff_head, align 4
  %4 = alloca %struct.ethhdr, align 1
  %5 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = load i16, ptr %12, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %14 = getelementptr inbounds i8, ptr %3, i32 12
  store i32 0, ptr %14, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %4, i8 0, i32 14, i1 false), !annotation !16
  %15 = getelementptr inbounds %struct.ethhdr, ptr %4, i32 0, i32 1
  %16 = load i16, ptr %12, align 2
  %17 = and i16 %16, 768
  %18 = icmp eq i16 %17, 768
  br i1 %18, label %34, label %19, !prof !9

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 58
  %21 = load i32, ptr %20, align 8
  switch i32 %21, label %34 [
    i32 3, label %22
    i32 4, label %22
    i32 2, label %23
    i32 7, label %33
  ]

22:                                               ; preds = %19, %19
  br label %34

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sta_info, ptr %25, i32 0, i32 23
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 2048
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %23
  br label %34

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33, %32, %27, %22, %19, %2
  %35 = phi ptr [ %4, %19 ], [ %4, %33 ], [ %4, %27 ], [ %4, %32 ], [ null, %22 ], [ null, %2 ]
  %36 = phi ptr [ %15, %19 ], [ null, %33 ], [ %15, %27 ], [ null, %32 ], [ %15, %22 ], [ null, %2 ]
  %37 = getelementptr inbounds %struct.anon.49, ptr %10, i32 0, i32 2
  store ptr %8, ptr %37, align 8
  store ptr %3, ptr %3, align 4
  %38 = getelementptr inbounds %struct.anon.123, ptr %3, i32 0, i32 1
  store ptr %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.sk_buff_head, ptr %3, i32 0, i32 1
  store i32 0, ptr %39, align 4
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %40, i32 0, i32 58
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %40, i32 0, i32 58, i32 2
  %43 = load i32, ptr %41, align 8
  %44 = call i32 @ieee80211_data_to_8023_exthdr(ptr noundef %10, ptr noundef nonnull %4, ptr noundef %42, i32 noundef %43, i8 noundef zeroext %1, i1 noundef zeroext true) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %129

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 72
  %48 = load ptr, ptr %47, align 32
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %49, i32 0, i32 58
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ieee80211_hw, ptr %53, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  call void @ieee80211_amsdu_to_8023s(ptr noundef %10, ptr noundef nonnull %3, ptr noundef %48, i32 noundef %51, i32 noundef %55, ptr noundef %35, ptr noundef %36) #13
  %56 = load ptr, ptr %3, align 4
  %57 = icmp eq ptr %56, %3
  br i1 %57, label %129, label %58

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %60 = and i16 %13, 16384
  %61 = icmp ne i16 %60, 0
  %62 = and i16 %13, 124
  %63 = icmp eq i16 %62, 72
  %64 = and i16 %13, 12
  %65 = icmp ne i16 %64, 8
  %66 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  br label %67

67:                                               ; preds = %125, %58
  %68 = phi ptr [ %56, %58 ], [ %126, %125 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %39, align 4
  %72 = add i32 %71, -1
  store volatile i32 %72, ptr %39, align 4
  %73 = load ptr, ptr %68, align 8
  %74 = getelementptr inbounds %struct.anon.49, ptr %68, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  store ptr null, ptr %74, align 4
  store ptr null, ptr %68, align 8
  %76 = getelementptr inbounds %struct.anon.49, ptr %73, i32 0, i32 1
  store volatile ptr %75, ptr %76, align 4
  store volatile ptr %73, ptr %75, align 8
  br label %77

77:                                               ; preds = %70, %67
  store ptr %68, ptr %9, align 4
  %78 = getelementptr inbounds %struct.sk_buff, ptr %68, i32 0, i32 17
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.ethhdr, ptr %79, i32 0, i32 2
  %81 = load i16, ptr %80, align 1
  %82 = load ptr, ptr %5, align 4
  %83 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %82, i32 0, i32 20
  %84 = load i16, ptr %83, align 2
  %85 = icmp eq i16 %81, %84
  br i1 %85, label %86, label %105, !prof !9

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %82, i32 0, i32 58, i32 2
  %88 = load i32, ptr %79, align 4
  %89 = load i32, ptr %87, align 4
  %90 = xor i32 %89, %88
  %91 = getelementptr i8, ptr %79, i32 4
  %92 = load i16, ptr %91, align 2
  %93 = getelementptr %struct.ieee80211_sub_if_data, ptr %82, i32 0, i32 58, i32 2, i32 4
  %94 = load i16, ptr %93, align 2
  %95 = xor i16 %94, %92
  %96 = zext i16 %95 to i32
  %97 = or i32 %90, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %128, label %99

99:                                               ; preds = %86
  %100 = xor i32 %88, 12746753
  %101 = xor i16 %92, 768
  %102 = zext i16 %101 to i32
  %103 = or i32 %100, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %128, label %124

105:                                              ; preds = %77
  %106 = load ptr, ptr %59, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %124, label %108, !prof !9

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.sta_info, ptr %106, i32 0, i32 23
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %110, 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.sk_buff, ptr %68, i32 0, i32 3, i32 24
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 2
  %117 = icmp ne i32 %116, 0
  %118 = or i1 %61, %117
  %119 = or i1 %63, %118
  %120 = or i1 %65, %119
  br i1 %120, label %128, label %121

121:                                              ; preds = %113
  %122 = load ptr, ptr %66, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %121, %108, %105, %99
  call void @consume_skb(ptr noundef %68) #13
  br label %125

125:                                              ; preds = %128, %124
  %126 = load ptr, ptr %3, align 4
  %127 = icmp eq ptr %126, %3
  br i1 %127, label %129, label %67

128:                                              ; preds = %121, %113, %99, %86
  call fastcc void @ieee80211_deliver_skb(ptr noundef %0)
  br label %125

129:                                              ; preds = %125, %46, %34
  %130 = phi i32 [ 1, %34 ], [ 3, %46 ], [ 3, %125 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret i32 %130
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_data_to_8023_exthdr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_amsdu_to_8023s(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_deliver_skb(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 110
  %13 = load ptr, ptr %12, align 8
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #11, !srcloc !35
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !24
  %23 = zext i32 %11 to i64
  %24 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %19, i32 0, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = add i64 %25, %23
  store i64 %26, ptr %24, align 8
  %27 = load i64, ptr %19, align 32
  %28 = add i64 %27, 1
  store i64 %28, ptr %19, align 32
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !25
  %29 = load i32, ptr %20, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %20, align 4
  %31 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.sta_info, ptr %32, i32 0, i32 31, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !24
  %38 = load ptr, ptr %31, align 4
  %39 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.sta_info, ptr %38, i32 0, i32 31, i32 11, i32 %40
  %42 = load i64, ptr %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, ptr %41, align 8
  %44 = load ptr, ptr %31, align 4
  %45 = getelementptr inbounds %struct.sta_info, ptr %44, i32 0, i32 31, i32 9
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !25
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %34, %1
  %49 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 58
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %50, -3
  %52 = icmp ult i32 %51, 2
  br i1 %52, label %53, label %111

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 8
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %111

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ethhdr, ptr %9, i32 0, i32 2
  %60 = load i16, ptr %59, align 1
  %61 = load ptr, ptr %2, align 4
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %61, i32 0, i32 20
  %63 = load i16, ptr %62, align 2
  %64 = icmp eq i16 %60, %63
  br i1 %64, label %111, label %65

65:                                               ; preds = %58
  %66 = icmp eq i32 %50, 4
  br i1 %66, label %67, label %71

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 57, i32 0, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %111

71:                                               ; preds = %67, %65
  %72 = load i32, ptr %9, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %71
  switch i32 %50, label %88 [
    i32 3, label %76
    i32 4, label %78
  ]

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 57, i32 0, i32 34
  br label %84

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 57, i32 0, i32 0, i32 1
  %80 = load ptr, ptr %79, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 57, i32 0, i32 0, i32 2
  br label %84

84:                                               ; preds = %82, %76
  %85 = phi ptr [ %83, %82 ], [ %77, %76 ]
  %86 = load volatile i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %111, label %88

88:                                               ; preds = %84, %78, %75
  %89 = tail call ptr @skb_copy(ptr noundef %7, i32 noundef 2592) #13
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %111

91:                                               ; preds = %88
  %92 = tail call i32 @net_ratelimit() #13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %91
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %5) #15
  br label %111

96:                                               ; preds = %71
  %97 = getelementptr inbounds %struct.ethhdr, ptr %9, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = xor i32 %98, %72
  %100 = getelementptr i8, ptr %9, i32 4
  %101 = load i16, ptr %100, align 2
  %102 = getelementptr %struct.ethhdr, ptr %9, i32 0, i32 1, i32 4
  %103 = load i16, ptr %102, align 2
  %104 = xor i16 %103, %101
  %105 = zext i16 %104 to i32
  %106 = or i32 %99, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %96
  %109 = tail call ptr @sta_info_get(ptr noundef %3, ptr noundef %9) #13
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %108, %96, %94, %91, %88, %84, %67, %58, %53, %48
  %112 = phi ptr [ null, %53 ], [ %89, %88 ], [ null, %94 ], [ null, %91 ], [ null, %96 ], [ null, %67 ], [ null, %58 ], [ null, %48 ], [ null, %84 ], [ null, %108 ]
  %113 = icmp eq ptr %7, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %7, ptr noundef %5) #13
  %116 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 13, i32 0, i32 16
  store i16 %115, ptr %116, align 8
  tail call fastcc void @ieee80211_deliver_skb_to_local_stack(ptr noundef nonnull %7, ptr noundef %0)
  br label %117

117:                                              ; preds = %114, %111, %108
  %118 = phi ptr [ %112, %114 ], [ %112, %111 ], [ %7, %108 ]
  %119 = icmp eq ptr %118, null
  br i1 %119, label %136, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 13, i32 0, i32 5
  %122 = load i32, ptr %121, align 8
  %123 = add i32 %122, 256
  store i32 %123, ptr %121, align 8
  %124 = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 13, i32 0, i32 16
  store i16 256, ptr %124, align 8
  %125 = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 17
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 16
  %128 = load ptr, ptr %127, align 8
  %129 = ptrtoint ptr %126 to i32
  %130 = ptrtoint ptr %128 to i32
  %131 = sub i32 %129, %130
  %132 = trunc i32 %131 to i16
  %133 = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 13, i32 0, i32 18
  store i16 %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 13, i32 0, i32 19
  store i16 %132, ptr %134, align 2
  %135 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %118) #13
  br label %136

136:                                              ; preds = %120, %117
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %9, label %15, !prof !9

9:                                                ; preds = %2
  %10 = icmp ult i32 %4, %1
  br i1 %10, label %15, label %11, !prof !9

11:                                               ; preds = %9
  %12 = sub i32 %1, %7
  %13 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %12) #13
  %14 = icmp ne ptr %13, null
  br label %15

15:                                               ; preds = %11, %9, %2
  %16 = phi i1 [ %14, %11 ], [ true, %2 ], [ false, %9 ]
  ret i1 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_deliver_skb_to_local_stack(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %8 = load i16, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 20
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %8, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = icmp eq i16 %8, -14456
  br i1 %13, label %14, label %28

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 22
  %16 = load i8, ptr %15, align 1, !range !23
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 23
  %20 = load i8, ptr %19, align 2, !range !23
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22, !prof !26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  %27 = tail call zeroext i1 @cfg80211_rx_control_port(ptr noundef %6, ptr noundef %0, i1 noundef zeroext %26) #13
  tail call void @consume_skb(ptr noundef %0) #13
  br label %62

28:                                               ; preds = %18, %14, %12
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr i8, ptr %30, i32 %33
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %35, i8 0, i32 48, i1 false)
  %36 = load i16, ptr %9, align 2
  %37 = icmp eq i16 %8, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 58, i32 2
  %40 = load i32, ptr %34, align 4
  %41 = load i32, ptr %39, align 4
  %42 = xor i32 %41, %40
  %43 = getelementptr i8, ptr %34, i32 4
  %44 = load i16, ptr %43, align 2
  %45 = getelementptr %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 58, i32 2, i32 4
  %46 = load i16, ptr %45, align 2
  %47 = xor i16 %46, %44
  %48 = zext i16 %47 to i32
  %49 = or i32 %42, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51, !prof !26

51:                                               ; preds = %38
  store i32 %41, ptr %34, align 4
  %52 = load i16, ptr %45, align 2
  store i16 %52, ptr %43, align 2
  br label %53

53:                                               ; preds = %51, %38, %28
  %54 = load ptr, ptr %1, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  store ptr %0, ptr %57, align 4
  store ptr %54, ptr %0, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %58, ptr %59, align 4
  store volatile ptr %0, ptr %58, align 4
  br label %62

60:                                               ; preds = %53
  %61 = tail call i32 @netif_receive_skb(ptr noundef %0) #13
  br label %62

62:                                               ; preds = %60, %56, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_rx_control_port(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ieee80211_queue_skb_to_iface(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 41
  tail call void @skb_queue_tail(ptr noundef %4, ptr noundef %2) #13
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %6, ptr noundef %7) #13
  %8 = icmp eq ptr %1, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 31
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8
  br label %13

13:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_delba(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_report_obss_beacon_khz(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_smps_mode_to_smps_mode(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_rate_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sta_opmode_change_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_cap_rx_bw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_cur_vht_bw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_rx_bw_to_chan_width(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_process_measurement_req(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_process_rx_twt_action(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 58
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %51

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ieee80211_local, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ieee80211_ops, ptr %15, i32 0, i32 106
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %51, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 58, i32 1, i32 7
  %21 = load i8, ptr %20, align 4, !range !23
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %5, i32 0, i32 6
  %29 = getelementptr inbounds %struct.anon.162, ptr %28, i32 0, i32 1
  %30 = load i8, ptr %29, align 1
  switch i8 %30, label %50 [
    i8 6, label %31
    i8 7, label %46
  ]

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = icmp ult i32 %33, 32
  br i1 %34, label %50, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %5, i32 0, i32 6, i32 0, i32 1
  %37 = getelementptr inbounds %struct.ieee80211_twt_setup, ptr %36, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, -40
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %5, i32 0, i32 6, i32 0, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = add nuw nsw i32 %43, 29
  %45 = icmp ult i32 %33, %44
  br i1 %45, label %50, label %51

46:                                               ; preds = %27
  %47 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %48 = load i32, ptr %47, align 8
  %49 = icmp ult i32 %48, 27
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %40, %35, %31, %27
  br label %51

51:                                               ; preds = %50, %46, %40, %23, %19, %11, %1
  %52 = phi i1 [ false, %50 ], [ true, %40 ], [ false, %1 ], [ false, %11 ], [ false, %19 ], [ false, %23 ], [ true, %46 ]
  ret i1 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_queue_skb_to_iface(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 16
  store i16 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 41
  tail call void @skb_queue_tail(ptr noundef %5, ptr noundef %2) #13
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %7, ptr noundef %8) #13
  %9 = icmp eq ptr %1, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 31
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 8
  br label %14

14:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_rx_radiotap_hdrlen(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 14
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = tail call i32 @__sw_hweight8(i32 noundef %8) #13
  %10 = shl i32 %9, 2
  %11 = add i32 %10, 16
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ 16, %3 ]
  %14 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 1048576
  %17 = icmp eq i32 %16, 0
  %18 = add i32 %13, 4
  %19 = select i1 %17, i32 %13, i32 %18
  %20 = and i32 %15, 65664
  %21 = icmp eq i32 %20, 65664
  %22 = load i1, ptr @ieee80211_have_rx_timestamp.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %27, !prof !9

25:                                               ; preds = %12
  store i1 true, ptr @ieee80211_have_rx_timestamp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1763, i32 noundef 9, ptr noundef null) #13
  %26 = load i32, ptr %14, align 8
  br label %27

27:                                               ; preds = %25, %12
  %28 = phi i32 [ %26, %25 ], [ %15, %12 ]
  %29 = and i32 %28, 65668
  %30 = icmp eq i32 %29, 0
  %31 = add i32 %19, 15
  %32 = and i32 %31, -8
  %33 = select i1 %30, i32 %19, i32 %32
  %34 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %35 = load volatile i32, ptr %34, align 4
  %36 = lshr i32 %35, 4
  %37 = and i32 %36, 1
  %38 = load i8, ptr %4, align 1
  %39 = icmp eq i8 %38, 0
  %40 = zext i1 %39 to i32
  %41 = add nuw nsw i32 %37, 1
  %42 = add i32 %41, %33
  %43 = add i32 %42, %40
  %44 = and i32 %43, -2
  %45 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 7
  %46 = load i16, ptr %45, align 1
  %47 = and i16 %46, 3
  %48 = icmp eq i16 %47, 1
  %49 = add i32 %44, 3
  %50 = select i1 %48, i32 %49, i32 %44
  %51 = and i32 %28, 512
  %52 = icmp eq i32 %51, 0
  %53 = add i32 %50, 11
  %54 = and i32 %53, -4
  %55 = select i1 %52, i32 %50, i32 %54
  %56 = icmp eq i16 %47, 2
  %57 = add i32 %55, 13
  %58 = and i32 %57, -2
  %59 = select i1 %56, i32 %58, i32 %55
  %60 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 23
  %61 = load i32, ptr %60, align 8
  %62 = add i32 %59, 7
  %63 = and i32 %62, -8
  %64 = add i32 %63, 12
  %65 = icmp slt i32 %61, 0
  %66 = select i1 %65, i32 %59, i32 %64
  %67 = icmp eq i16 %47, 3
  br i1 %67, label %68, label %79

68:                                               ; preds = %27
  %69 = and i32 %28, 67108864
  %70 = icmp eq i32 %69, 0
  %71 = add i32 %66, 13
  %72 = and i32 %71, -2
  %73 = select i1 %70, i32 %66, i32 %72
  %74 = and i32 %28, 134217728
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %68
  %77 = add i32 %73, 13
  %78 = and i32 %77, -2
  br label %79

79:                                               ; preds = %76, %68, %27
  %80 = phi i32 [ %78, %76 ], [ %73, %68 ], [ %66, %27 ]
  %81 = lshr i32 %28, 29
  %82 = and i32 %81, 1
  %83 = add i32 %80, %82
  %84 = and i32 %28, 268435456
  %85 = icmp eq i32 %84, 0
  %86 = add i32 %83, 5
  %87 = and i32 %86, -2
  %88 = select i1 %85, i32 %83, i32 %87
  br i1 %39, label %95, label %89

89:                                               ; preds = %79
  %90 = zext i8 %38 to i32
  %91 = tail call i32 @__sw_hweight8(i32 noundef %90) #13
  %92 = load i32, ptr %14, align 8
  %93 = shl i32 %91, 1
  %94 = add i32 %93, %88
  br label %95

95:                                               ; preds = %89, %79
  %96 = phi i32 [ %92, %89 ], [ %28, %79 ]
  %97 = phi i32 [ %94, %89 ], [ %88, %79 ]
  %98 = and i32 %96, 1048576
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %136, label %100

100:                                              ; preds = %95
  %101 = and i32 %96, 67108864
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, i32 0, i32 12
  %104 = and i32 %96, 134217728
  %105 = icmp eq i32 %104, 0
  %106 = add nuw nsw i32 %103, 12
  %107 = select i1 %105, i32 %103, i32 %106
  %108 = and i32 %96, 268435456
  %109 = icmp eq i32 %108, 0
  %110 = add nuw nsw i32 %107, 4
  %111 = select i1 %109, i32 %107, i32 %110
  %112 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr i8, ptr %113, i32 %111
  %115 = add i32 %97, 7
  %116 = and i32 %115, -2
  %117 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, ptr %114, i32 0, i32 1
  %118 = load i8, ptr %117, align 1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %121, !prof !9

120:                                              ; preds = %100
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 208, i32 noundef 9, ptr noundef null) #13
  store i8 1, ptr %117, align 1
  br label %121

121:                                              ; preds = %120, %100
  %122 = phi i8 [ %118, %100 ], [ 1, %120 ]
  %123 = zext i8 %122 to i32
  %124 = add i32 %116, -1
  %125 = add i32 %124, %123
  %126 = sub nsw i32 0, %123
  %127 = and i32 %125, %126
  %128 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, ptr %114, i32 0, i32 5
  %129 = load i16, ptr %128, align 1
  %130 = zext i16 %129 to i32
  %131 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, ptr %114, i32 0, i32 4
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = add nuw nsw i32 %133, %130
  %135 = add i32 %134, %127
  br label %136

136:                                              ; preds = %121, %95
  %137 = phi i32 [ %135, %121 ], [ %97, %95 ]
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_add_rx_radiotap_header(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_radiotap_he_mu, align 2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 39
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  store i32 %11, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(12) %7, i8 0, i32 12, i1 false)
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 67108864
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 2
  %20 = getelementptr inbounds i8, ptr %18, i32 4
  %21 = load i16, ptr %20, align 2
  %22 = getelementptr inbounds i8, ptr %18, i32 6
  %23 = load i16, ptr %22, align 2
  %24 = getelementptr inbounds i8, ptr %18, i32 8
  %25 = load i16, ptr %24, align 2
  %26 = getelementptr inbounds i8, ptr %18, i32 10
  %27 = load i16, ptr %26, align 2
  %28 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 12) #13
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 31
  %30 = load i16, ptr %29, align 1
  %31 = and i16 %30, 3
  %32 = icmp ne i16 %31, 3
  %33 = load i1, ptr @ieee80211_add_rx_radiotap_header.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37, !prof !9

36:                                               ; preds = %16
  store i1 true, ptr @ieee80211_add_rx_radiotap_header.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 306, i32 noundef 9, ptr noundef null) #13
  br label %37

37:                                               ; preds = %36, %16, %5
  %38 = phi i32 [ 0, %5 ], [ %19, %36 ], [ %19, %16 ]
  %39 = phi i16 [ 0, %5 ], [ %21, %36 ], [ %21, %16 ]
  %40 = phi i16 [ 0, %5 ], [ %23, %36 ], [ %23, %16 ]
  %41 = phi i16 [ 0, %5 ], [ %25, %36 ], [ %25, %16 ]
  %42 = phi i16 [ 0, %5 ], [ %27, %36 ], [ %27, %16 ]
  %43 = load i32, ptr %12, align 8
  %44 = and i32 %43, 134217728
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %48 = load ptr, ptr %47, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(12) %7, ptr noundef align 2 dereferenceable(12) %48, i32 12, i1 false)
  %49 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 12) #13
  %50 = load i32, ptr %12, align 8
  br label %51

51:                                               ; preds = %46, %37
  %52 = phi i32 [ %50, %46 ], [ %43, %37 ]
  %53 = and i32 %52, 268435456
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %57, align 2
  %59 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 4) #13
  %60 = load i32, ptr %12, align 8
  br label %61

61:                                               ; preds = %55, %51
  %62 = phi i32 [ %52, %51 ], [ %60, %55 ]
  %63 = phi i32 [ 0, %51 ], [ %58, %55 ]
  %64 = and i32 %62, 1048576
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %91, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %68 = load ptr, ptr %67, align 4
  %69 = load i32, ptr %68, align 1
  %70 = getelementptr inbounds i8, ptr %68, i32 4
  %71 = load i8, ptr %70, align 1
  %72 = getelementptr inbounds i8, ptr %68, i32 5
  %73 = load i8, ptr %72, align 1
  %74 = getelementptr inbounds i8, ptr %68, i32 6
  %75 = load i8, ptr %74, align 1
  %76 = getelementptr inbounds i8, ptr %68, i32 7
  %77 = load i8, ptr %76, align 1
  %78 = getelementptr inbounds i8, ptr %68, i32 8
  %79 = load i8, ptr %78, align 1
  %80 = getelementptr inbounds i8, ptr %68, i32 9
  %81 = load i8, ptr %80, align 1
  %82 = getelementptr inbounds i8, ptr %68, i32 10
  %83 = load i16, ptr %82, align 1
  %84 = zext i16 %83 to i32
  %85 = zext i8 %81 to i32
  %86 = add nuw nsw i32 %85, 12
  %87 = add nuw nsw i32 %86, %84
  %88 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %87) #13
  %89 = zext i8 %71 to i32
  %90 = add nsw i32 %89, -1
  br label %91

91:                                               ; preds = %66, %61
  %92 = phi i32 [ %69, %66 ], [ 0, %61 ]
  %93 = phi i32 [ %90, %66 ], [ -1, %61 ]
  %94 = phi i8 [ %73, %66 ], [ 0, %61 ]
  %95 = phi i8 [ %75, %66 ], [ 0, %61 ]
  %96 = phi i8 [ %77, %66 ], [ 0, %61 ]
  %97 = phi i8 [ %79, %66 ], [ 0, %61 ]
  %98 = phi i8 [ %81, %66 ], [ 0, %61 ]
  %99 = phi i16 [ %83, %66 ], [ 0, %61 ]
  %100 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %101 = load i32, ptr %100, align 8
  br i1 %4, label %102, label %107

102:                                              ; preds = %91
  %103 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %104, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102, %91
  %108 = add i32 %101, 4
  br label %109

109:                                              ; preds = %107, %102
  %110 = phi i32 [ %101, %102 ], [ %108, %107 ]
  %111 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %3) #13
  %112 = zext i16 %99 to i32
  %113 = zext i8 %98 to i32
  %114 = add nuw nsw i32 %113, %112
  %115 = sub i32 %3, %114
  tail call void @llvm.memset.p0.i32(ptr align 1 %111, i8 0, i32 %115, i1 false)
  %116 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %111, i32 0, i32 3
  %117 = trunc i32 %3 to i16
  %118 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %111, i32 0, i32 2
  store i16 %117, ptr %118, align 1
  %119 = load i8, ptr %9, align 1
  %120 = icmp eq i8 %119, 0
  %121 = select i1 %120, i32 18442, i32 16394
  %122 = call i32 @_find_next_bit_le(ptr noundef nonnull %6, i32 noundef 4, i32 noundef 0) #13
  %123 = icmp slt i32 %122, 4
  br i1 %123, label %124, label %137

124:                                              ; preds = %109
  %125 = or i32 %121, -1610612736
  store i32 %125, ptr %116, align 1
  %126 = getelementptr %struct.ieee80211_radiotap_header, ptr %111, i32 1
  %127 = add nsw i32 %122, 1
  %128 = call i32 @_find_next_bit_le(ptr noundef nonnull %6, i32 noundef 4, i32 noundef %127) #13
  %129 = icmp slt i32 %128, 4
  br i1 %129, label %130, label %137

130:                                              ; preds = %130, %124
  %131 = phi ptr [ %133, %130 ], [ %126, %124 ]
  %132 = phi i32 [ %135, %130 ], [ %128, %124 ]
  store i32 -1610610656, ptr %131, align 1
  %133 = getelementptr i32, ptr %131, i32 1
  %134 = add nsw i32 %132, 1
  %135 = call i32 @_find_next_bit_le(ptr noundef nonnull %6, i32 noundef 4, i32 noundef %134) #13
  %136 = icmp slt i32 %135, 4
  br i1 %136, label %130, label %137, !llvm.loop !38

137:                                              ; preds = %130, %124, %109
  %138 = phi i32 [ %121, %109 ], [ 2080, %124 ], [ 2080, %130 ]
  %139 = phi ptr [ %116, %109 ], [ %126, %124 ], [ %133, %130 ]
  %140 = load i32, ptr %12, align 8
  %141 = and i32 %140, 1048576
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %137
  %144 = or i32 %138, -1073741824
  store i32 %144, ptr %139, align 1
  %145 = getelementptr i32, ptr %139, i32 1
  br label %146

146:                                              ; preds = %143, %137
  %147 = phi i32 [ %92, %143 ], [ %138, %137 ]
  %148 = phi ptr [ %145, %143 ], [ %139, %137 ]
  store i32 %147, ptr %148, align 1
  %149 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %111, i32 0, i32 4
  %150 = getelementptr i32, ptr %148, i32 1
  %151 = ptrtoint ptr %150 to i32
  %152 = ptrtoint ptr %149 to i32
  %153 = sub i32 %151, %152
  %154 = ashr i32 %153, 2
  %155 = getelementptr %struct.ieee80211_radiotap_header, ptr %111, i32 0, i32 4, i32 %154
  %156 = load i32, ptr %12, align 8
  %157 = and i32 %156, 65664
  %158 = icmp eq i32 %157, 65664
  %159 = load i1, ptr @ieee80211_have_rx_timestamp.__already_done, align 1
  %160 = xor i1 %159, true
  %161 = select i1 %158, i1 %160, i1 false
  br i1 %161, label %162, label %164, !prof !9

162:                                              ; preds = %146
  store i1 true, ptr @ieee80211_have_rx_timestamp.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1763, i32 noundef 9, ptr noundef null) #13
  %163 = load i32, ptr %12, align 8
  br label %164

164:                                              ; preds = %162, %146
  %165 = phi i32 [ %163, %162 ], [ %156, %146 ]
  %166 = and i32 %165, 65668
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %185, label %168

168:                                              ; preds = %164
  %169 = and i32 %153, 7
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %179, label %171

171:                                              ; preds = %168
  %172 = and i32 %153, 4
  %173 = xor i32 %172, 4
  %174 = add nuw nsw i32 %173, 4
  call void @llvm.memset.p0.i32(ptr noundef align 1 %155, i8 0, i32 %174, i1 false)
  %175 = and i32 %153, -4
  %176 = add i32 %175, %173
  %177 = add i32 %176, 12
  %178 = getelementptr i8, ptr %111, i32 %177
  br label %179

179:                                              ; preds = %171, %168
  %180 = phi ptr [ %155, %168 ], [ %178, %171 ]
  %181 = call i64 @ieee80211_calculate_rx_timestamp(ptr noundef %0, ptr noundef %8, i32 noundef %110, i32 noundef 0) #13
  store i64 %181, ptr %180, align 1
  %182 = load i32, ptr %116, align 1
  %183 = or i32 %182, 1
  store i32 %183, ptr %116, align 1
  %184 = getelementptr i8, ptr %180, i32 8
  br label %185

185:                                              ; preds = %179, %164
  %186 = phi ptr [ %184, %179 ], [ %155, %164 ]
  br i1 %4, label %187, label %195

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %189 = load volatile i32, ptr %188, align 4
  %190 = and i32 %189, 2
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %187
  %193 = load i8, ptr %186, align 1
  %194 = or i8 %193, 16
  store i8 %194, ptr %186, align 1
  br label %195

195:                                              ; preds = %192, %187, %185
  %196 = load i32, ptr %12, align 8
  %197 = and i32 %196, 96
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %195
  %200 = load i8, ptr %186, align 1
  %201 = or i8 %200, 64
  store i8 %201, ptr %186, align 1
  br label %202

202:                                              ; preds = %199, %195
  %203 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 30
  %204 = load i8, ptr %203, align 2
  %205 = and i8 %204, 1
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %202
  %208 = load i8, ptr %186, align 1
  %209 = or i8 %208, 2
  store i8 %209, ptr %186, align 1
  br label %210

210:                                              ; preds = %207, %202
  %211 = getelementptr i8, ptr %186, i32 1
  %212 = icmp eq ptr %2, null
  br i1 %212, label %235, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 31
  %215 = load i16, ptr %214, align 1
  %216 = and i16 %215, 3
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %218, label %235

218:                                              ; preds = %213
  %219 = load i32, ptr %116, align 1
  %220 = or i32 %219, 4
  store i32 %220, ptr %116, align 1
  %221 = load i16, ptr %214, align 1
  %222 = lshr i16 %221, 2
  %223 = and i16 %222, 7
  %224 = icmp eq i16 %223, 1
  %225 = icmp eq i16 %223, 2
  %226 = getelementptr inbounds %struct.ieee80211_rate, ptr %2, i32 0, i32 1
  %227 = load i16, ptr %226, align 4
  %228 = zext i16 %227 to i32
  %229 = select i1 %224, i32 20, i32 5
  %230 = select i1 %225, i32 10, i32 %229
  %231 = add nsw i32 %228, -1
  %232 = add nsw i32 %231, %230
  %233 = udiv i32 %232, %230
  %234 = trunc i32 %233 to i8
  br label %235

235:                                              ; preds = %218, %213, %210
  %236 = phi i8 [ %234, %218 ], [ 0, %213 ], [ 0, %210 ]
  store i8 %236, ptr %211, align 1
  %237 = getelementptr i8, ptr %186, i32 2
  %238 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %239 = load i16, ptr %238, align 4
  %240 = and i16 %239, 8191
  store i16 %240, ptr %237, align 1
  %241 = getelementptr i8, ptr %186, i32 4
  %242 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 31
  %243 = load i16, ptr %242, align 1
  %244 = lshr i16 %243, 2
  %245 = and i16 %244, 7
  %246 = icmp eq i16 %245, 1
  %247 = select i1 %246, i16 -32768, i16 0
  %248 = icmp eq i16 %245, 2
  %249 = select i1 %248, i16 16384, i16 %247
  %250 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  %251 = load i8, ptr %250, align 4
  switch i8 %251, label %252 [
    i8 1, label %262
    i8 3, label %262
  ]

252:                                              ; preds = %235
  %253 = and i16 %243, 3
  %254 = icmp ne i16 %253, 0
  %255 = or i1 %254, %212
  %256 = select i1 %254, i16 1152, i16 128
  br i1 %255, label %262, label %257

257:                                              ; preds = %252
  %258 = load i32, ptr %2, align 4
  %259 = and i32 %258, 16
  %260 = icmp eq i32 %259, 0
  %261 = select i1 %260, i16 160, i16 192
  br label %262

262:                                              ; preds = %257, %252, %235, %235
  %263 = phi i16 [ 320, %235 ], [ 320, %235 ], [ %256, %252 ], [ %261, %257 ]
  %264 = or i16 %249, %263
  store i16 %264, ptr %241, align 1
  %265 = getelementptr i8, ptr %186, i32 6
  %266 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %267 = load volatile i32, ptr %266, align 4
  %268 = and i32 %267, 16
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %280, label %270

270:                                              ; preds = %262
  %271 = load i32, ptr %12, align 8
  %272 = and i32 %271, 256
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 38
  %276 = load i8, ptr %275, align 2
  store i8 %276, ptr %265, align 1
  %277 = load i32, ptr %116, align 1
  %278 = or i32 %277, 32
  store i32 %278, ptr %116, align 1
  %279 = getelementptr i8, ptr %186, i32 7
  br label %280

280:                                              ; preds = %274, %270, %262
  %281 = phi ptr [ %265, %270 ], [ %279, %274 ], [ %265, %262 ]
  %282 = load i8, ptr %9, align 1
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 37
  %286 = load i8, ptr %285, align 1
  store i8 %286, ptr %281, align 1
  %287 = getelementptr i8, ptr %281, i32 1
  br label %288

288:                                              ; preds = %284, %280
  %289 = phi ptr [ %281, %280 ], [ %287, %284 ]
  %290 = ptrtoint ptr %289 to i32
  %291 = ptrtoint ptr %111 to i32
  %292 = sub i32 %290, %291
  %293 = and i32 %292, 1
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %288
  %296 = getelementptr i8, ptr %289, i32 1
  store i8 0, ptr %289, align 1
  br label %297

297:                                              ; preds = %295, %288
  %298 = phi ptr [ %296, %295 ], [ %289, %288 ]
  %299 = load i32, ptr %12, align 8
  %300 = trunc i32 %299 to i16
  %301 = lshr i16 %300, 5
  %302 = and i16 %301, 2
  store i16 %302, ptr %298, align 1
  %303 = getelementptr i8, ptr %298, i32 2
  %304 = load i16, ptr %242, align 1
  %305 = and i16 %304, 3
  %306 = icmp eq i16 %305, 1
  br i1 %306, label %307, label %360

307:                                              ; preds = %297
  %308 = load i32, ptr %116, align 1
  %309 = or i32 %308, 524288
  store i32 %309, ptr %116, align 1
  %310 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 21
  %311 = load i8, ptr %310, align 2
  store i8 %311, ptr %303, align 1
  %312 = load i8, ptr %203, align 2
  %313 = and i8 %312, 8
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %318, label %315

315:                                              ; preds = %307
  %316 = or i8 %311, 8
  store i8 %316, ptr %303, align 1
  %317 = load i8, ptr %203, align 2
  br label %318

318:                                              ; preds = %315, %307
  %319 = phi i8 [ %316, %315 ], [ %311, %307 ]
  %320 = phi i8 [ %317, %315 ], [ %312, %307 ]
  %321 = and i8 %320, 64
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %325, label %323

323:                                              ; preds = %318
  %324 = or i8 %319, 16
  store i8 %324, ptr %303, align 1
  br label %325

325:                                              ; preds = %323, %318
  %326 = getelementptr i8, ptr %298, i32 3
  store i8 0, ptr %326, align 1
  %327 = load i8, ptr %203, align 2
  %328 = and i8 %327, 4
  store i8 %328, ptr %326, align 1
  %329 = load i16, ptr %242, align 1
  %330 = and i16 %329, 28
  %331 = icmp eq i16 %330, 12
  br i1 %331, label %332, label %334

332:                                              ; preds = %325
  %333 = or i8 %328, 1
  store i8 %333, ptr %326, align 1
  br label %334

334:                                              ; preds = %332, %325
  %335 = phi i8 [ %333, %332 ], [ %328, %325 ]
  %336 = load i8, ptr %203, align 2
  %337 = and i8 %336, 8
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %342, label %339

339:                                              ; preds = %334
  %340 = or i8 %335, 8
  store i8 %340, ptr %326, align 1
  %341 = load i8, ptr %203, align 2
  br label %342

342:                                              ; preds = %339, %334
  %343 = phi i8 [ %340, %339 ], [ %335, %334 ]
  %344 = phi i8 [ %341, %339 ], [ %336, %334 ]
  %345 = and i8 %344, 64
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %350, label %347

347:                                              ; preds = %342
  %348 = or i8 %343, 16
  store i8 %348, ptr %326, align 1
  %349 = load i8, ptr %203, align 2
  br label %350

350:                                              ; preds = %347, %342
  %351 = phi i8 [ %348, %347 ], [ %343, %342 ]
  %352 = phi i8 [ %349, %347 ], [ %344, %342 ]
  %353 = shl i8 %352, 1
  %354 = and i8 %353, 96
  %355 = or i8 %354, %351
  store i8 %355, ptr %326, align 1
  %356 = getelementptr i8, ptr %298, i32 4
  %357 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 33
  %358 = load i8, ptr %357, align 1
  %359 = getelementptr i8, ptr %298, i32 5
  store i8 %358, ptr %356, align 1
  br label %360

360:                                              ; preds = %350, %297
  %361 = phi ptr [ %359, %350 ], [ %303, %297 ]
  %362 = load i32, ptr %12, align 8
  %363 = and i32 %362, 512
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %396, label %365

365:                                              ; preds = %360
  %366 = ptrtoint ptr %361 to i32
  %367 = sub i32 %291, %366
  %368 = and i32 %367, 3
  %369 = getelementptr i8, ptr %361, i32 %368
  %370 = load i32, ptr %116, align 1
  %371 = or i32 %370, 1048576
  store i32 %371, ptr %116, align 1
  %372 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  %373 = load i32, ptr %372, align 4
  store i32 %373, ptr %369, align 1
  %374 = getelementptr i8, ptr %369, i32 4
  %375 = load i32, ptr %12, align 8
  %376 = trunc i32 %375 to i16
  %377 = lshr i16 %376, 10
  %378 = and i16 %377, 60
  %379 = lshr i32 %375, 18
  %380 = trunc i32 %379 to i16
  %381 = and i16 %380, 128
  %382 = or i16 %378, %381
  %383 = and i16 %380, 64
  %384 = or i16 %382, %383
  store i16 %384, ptr %374, align 1
  %385 = getelementptr i8, ptr %369, i32 6
  %386 = load i32, ptr %12, align 8
  %387 = and i32 %386, 32768
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %392, label %389

389:                                              ; preds = %365
  %390 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 44
  %391 = load i8, ptr %390, align 4
  br label %392

392:                                              ; preds = %389, %365
  %393 = phi i8 [ %391, %389 ], [ 0, %365 ]
  %394 = getelementptr i8, ptr %369, i32 7
  store i8 %393, ptr %385, align 1
  %395 = getelementptr i8, ptr %369, i32 8
  store i8 0, ptr %394, align 1
  br label %396

396:                                              ; preds = %392, %360
  %397 = phi ptr [ %395, %392 ], [ %361, %360 ]
  %398 = load i16, ptr %242, align 1
  %399 = and i16 %398, 3
  %400 = icmp eq i16 %399, 2
  br i1 %400, label %401, label %457

401:                                              ; preds = %396
  %402 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 22
  %403 = load i16, ptr %402, align 4
  %404 = load i32, ptr %116, align 1
  %405 = or i32 %404, 2097152
  store i32 %405, ptr %116, align 1
  store i16 %403, ptr %397, align 1
  %406 = getelementptr i8, ptr %397, i32 2
  %407 = load i8, ptr %203, align 2
  %408 = and i8 %407, 4
  %409 = icmp eq i8 %408, 0
  br i1 %409, label %414, label %410

410:                                              ; preds = %401
  %411 = load i8, ptr %406, align 1
  %412 = or i8 %411, 4
  store i8 %412, ptr %406, align 1
  %413 = load i8, ptr %203, align 2
  br label %414

414:                                              ; preds = %410, %401
  %415 = phi i8 [ %413, %410 ], [ %407, %401 ]
  %416 = and i8 %415, 48
  %417 = icmp eq i8 %416, 0
  br i1 %417, label %422, label %418

418:                                              ; preds = %414
  %419 = load i8, ptr %406, align 1
  %420 = or i8 %419, 1
  store i8 %420, ptr %406, align 1
  %421 = load i8, ptr %203, align 2
  br label %422

422:                                              ; preds = %418, %414
  %423 = phi i8 [ %421, %418 ], [ %415, %414 ]
  %424 = icmp sgt i8 %423, -1
  br i1 %424, label %428, label %425

425:                                              ; preds = %422
  %426 = load i8, ptr %406, align 1
  %427 = or i8 %426, 32
  store i8 %427, ptr %406, align 1
  br label %428

428:                                              ; preds = %425, %422
  %429 = getelementptr i8, ptr %397, i32 3
  %430 = load i16, ptr %242, align 1
  %431 = lshr i16 %430, 2
  %432 = and i16 %431, 7
  %433 = zext i16 %432 to i32
  %434 = add nsw i32 %433, -3
  %435 = icmp ult i32 %434, 3
  %436 = trunc i32 %434 to i24
  %437 = shl i24 %436, 3
  %438 = lshr i24 721921, %437
  %439 = trunc i24 %438 to i8
  %440 = select i1 %435, i8 %439, i8 0
  store i8 %440, ptr %429, align 1
  %441 = getelementptr i8, ptr %397, i32 4
  %442 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 33
  %443 = load i8, ptr %442, align 1
  %444 = shl i8 %443, 4
  %445 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 34
  %446 = load i8, ptr %445, align 2
  %447 = or i8 %444, %446
  store i8 %447, ptr %441, align 1
  %448 = load i8, ptr %203, align 2
  %449 = and i8 %448, 64
  %450 = icmp eq i8 %449, 0
  br i1 %450, label %455, label %451

451:                                              ; preds = %428
  %452 = getelementptr i8, ptr %397, i32 8
  %453 = load i8, ptr %452, align 1
  %454 = or i8 %453, 1
  store i8 %454, ptr %452, align 1
  br label %455

455:                                              ; preds = %451, %428
  %456 = getelementptr i8, ptr %397, i32 12
  br label %457

457:                                              ; preds = %455, %396
  %458 = phi ptr [ %456, %455 ], [ %397, %396 ]
  %459 = ptrtoint ptr %458 to i32
  %460 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 23
  %461 = load i32, ptr %460, align 8
  %462 = icmp sgt i32 %461, -1
  br i1 %462, label %463, label %484

463:                                              ; preds = %457
  %464 = load i32, ptr %116, align 1
  %465 = or i32 %464, 4194304
  store i32 %465, ptr %116, align 1
  %466 = sub i32 %291, %459
  %467 = and i32 %466, 7
  %468 = getelementptr i8, ptr %458, i32 %467
  %469 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %470 = load i32, ptr %469, align 8
  %471 = zext i32 %470 to i64
  store i64 %471, ptr %468, align 1
  %472 = getelementptr i8, ptr %468, i32 8
  %473 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 23, i32 1
  %474 = load i16, ptr %473, align 4
  %475 = icmp sgt i16 %474, -1
  %476 = select i1 %475, i16 %474, i16 0
  %477 = select i1 %475, i8 3, i8 1
  store i16 %476, ptr %472, align 1
  %478 = getelementptr i8, ptr %468, i32 10
  %479 = load i32, ptr %460, align 8
  %480 = trunc i32 %479 to i8
  %481 = getelementptr i8, ptr %468, i32 11
  store i8 %480, ptr %478, align 1
  %482 = getelementptr i8, ptr %468, i32 12
  store i8 %477, ptr %481, align 1
  %483 = ptrtoint ptr %482 to i32
  br label %484

484:                                              ; preds = %463, %457
  %485 = phi i32 [ %483, %463 ], [ %459, %457 ]
  %486 = phi ptr [ %482, %463 ], [ %458, %457 ]
  %487 = load i16, ptr %242, align 1
  %488 = and i16 %487, 3
  %489 = icmp eq i16 %488, 3
  br i1 %489, label %490, label %560

490:                                              ; preds = %484
  %491 = load i32, ptr %12, align 8
  %492 = and i32 %491, 67108864
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %560, label %494

494:                                              ; preds = %490
  %495 = load i8, ptr %203, align 2
  %496 = and i8 %495, 48
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %501, label %498

498:                                              ; preds = %494
  %499 = lshr exact i8 %496, 4
  %500 = or i16 %39, -32768
  br label %505

501:                                              ; preds = %494
  %502 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 34
  %503 = load i8, ptr %502, align 2
  %504 = and i8 %503, 15
  br label %505

505:                                              ; preds = %501, %498
  %506 = phi i16 [ %500, %498 ], [ %39, %501 ]
  %507 = phi i8 [ %499, %498 ], [ %504, %501 ]
  %508 = zext i8 %507 to i16
  %509 = or i16 %42, %508
  %510 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 33
  %511 = load i8, ptr %510, align 1
  %512 = and i8 %511, 15
  %513 = zext i8 %512 to i16
  %514 = shl nuw nsw i16 %513, 8
  %515 = or i16 %514, %506
  %516 = load i16, ptr %242, align 1
  %517 = shl i16 %516, 2
  %518 = and i16 %517, 4096
  %519 = or i16 %515, %518
  %520 = load i8, ptr %203, align 2
  %521 = lshr i8 %520, 6
  %522 = and i8 %521, 1
  %523 = zext i8 %522 to i16
  %524 = shl nuw nsw i16 %523, 13
  %525 = or i16 %519, %524
  %526 = lshr i16 %516, 4
  %527 = and i16 %526, 48
  %528 = or i16 %527, %41
  %529 = lshr i16 %516, 2
  %530 = and i16 %529, 7
  %531 = zext i16 %530 to i32
  switch i32 %531, label %543 [
    i32 0, label %546
    i32 3, label %532
    i32 4, label %534
    i32 5, label %536
    i32 6, label %538
  ]

532:                                              ; preds = %505
  %533 = or i16 %528, 1
  br label %546

534:                                              ; preds = %505
  %535 = or i16 %528, 2
  br label %546

536:                                              ; preds = %505
  %537 = or i16 %528, 3
  br label %546

538:                                              ; preds = %505
  %539 = lshr i16 %516, 5
  %540 = and i16 %539, 7
  %541 = add nuw nsw i16 %540, 4
  %542 = or i16 %541, %528
  br label %546

543:                                              ; preds = %505
  %544 = load i1, ptr @ieee80211_add_rx_radiotap_header.__already_done.13, align 1
  br i1 %544, label %546, label %545, !prof !26

545:                                              ; preds = %543
  store i1 true, ptr @ieee80211_add_rx_radiotap_header.__already_done.13, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 649, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %531) #13
  br label %546

546:                                              ; preds = %545, %543, %538, %536, %534, %532, %505
  %547 = phi i16 [ %542, %538 ], [ %537, %536 ], [ %535, %534 ], [ %533, %532 ], [ %528, %545 ], [ %528, %543 ], [ %528, %505 ]
  %548 = sub i32 %485, %291
  %549 = and i32 %548, 1
  %550 = getelementptr i8, ptr %486, i32 %549
  %551 = load i32, ptr %116, align 1
  %552 = or i32 %551, 8388608
  store i32 %552, ptr %116, align 1
  store i32 %38, ptr %550, align 1
  %553 = getelementptr inbounds i8, ptr %550, i32 4
  store i16 %525, ptr %553, align 1
  %554 = getelementptr inbounds i8, ptr %550, i32 6
  store i16 %40, ptr %554, align 1
  %555 = getelementptr inbounds i8, ptr %550, i32 8
  store i16 %547, ptr %555, align 1
  %556 = getelementptr inbounds i8, ptr %550, i32 10
  store i16 %509, ptr %556, align 1
  %557 = getelementptr i8, ptr %550, i32 12
  %558 = load i16, ptr %242, align 1
  %559 = ptrtoint ptr %557 to i32
  br label %560

560:                                              ; preds = %546, %490, %484
  %561 = phi i32 [ %559, %546 ], [ %485, %490 ], [ %485, %484 ]
  %562 = phi i16 [ %558, %546 ], [ %487, %490 ], [ %487, %484 ]
  %563 = phi ptr [ %557, %546 ], [ %486, %490 ], [ %486, %484 ]
  %564 = and i16 %562, 3
  %565 = icmp eq i16 %564, 3
  br i1 %565, label %566, label %577

566:                                              ; preds = %560
  %567 = load i32, ptr %12, align 8
  %568 = and i32 %567, 134217728
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %577, label %570

570:                                              ; preds = %566
  %571 = sub i32 %561, %291
  %572 = and i32 %571, 1
  %573 = getelementptr i8, ptr %563, i32 %572
  %574 = load i32, ptr %116, align 1
  %575 = or i32 %574, 16777216
  store i32 %575, ptr %116, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %573, ptr noundef nonnull align 2 dereferenceable(12) %7, i32 12, i1 false)
  %576 = getelementptr i8, ptr %573, i32 12
  br label %577

577:                                              ; preds = %570, %566, %560
  %578 = phi ptr [ %576, %570 ], [ %563, %566 ], [ %563, %560 ]
  %579 = load i32, ptr %12, align 8
  %580 = and i32 %579, 536870912
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %589, label %582

582:                                              ; preds = %577
  %583 = load i32, ptr %116, align 1
  %584 = or i32 %583, 67108864
  store i32 %584, ptr %116, align 1
  %585 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 45
  %586 = load i8, ptr %585, align 1
  %587 = getelementptr i8, ptr %578, i32 1
  store i8 %586, ptr %578, align 1
  %588 = load i32, ptr %12, align 8
  br label %589

589:                                              ; preds = %582, %577
  %590 = phi i32 [ %588, %582 ], [ %579, %577 ]
  %591 = phi ptr [ %587, %582 ], [ %578, %577 ]
  %592 = and i32 %590, 268435456
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %602, label %594

594:                                              ; preds = %589
  %595 = ptrtoint ptr %591 to i32
  %596 = sub i32 %595, %291
  %597 = and i32 %596, 1
  %598 = getelementptr i8, ptr %591, i32 %597
  %599 = load i32, ptr %116, align 1
  %600 = or i32 %599, 134217728
  store i32 %600, ptr %116, align 1
  store i32 %63, ptr %598, align 1
  %601 = getelementptr i8, ptr %598, i32 4
  br label %602

602:                                              ; preds = %594, %589
  %603 = phi ptr [ %601, %594 ], [ %591, %589 ]
  %604 = call i32 @_find_next_bit_le(ptr noundef nonnull %6, i32 noundef 4, i32 noundef 0) #13
  %605 = icmp slt i32 %604, 4
  br i1 %605, label %606, label %617

606:                                              ; preds = %606, %602
  %607 = phi ptr [ %613, %606 ], [ %603, %602 ]
  %608 = phi i32 [ %615, %606 ], [ %604, %602 ]
  %609 = getelementptr %struct.ieee80211_rx_status, ptr %8, i32 0, i32 15, i32 %608
  %610 = load i8, ptr %609, align 1
  %611 = getelementptr i8, ptr %607, i32 1
  store i8 %610, ptr %607, align 1
  %612 = trunc i32 %608 to i8
  %613 = getelementptr i8, ptr %607, i32 2
  store i8 %612, ptr %611, align 1
  %614 = add nsw i32 %608, 1
  %615 = call i32 @_find_next_bit_le(ptr noundef nonnull %6, i32 noundef 4, i32 noundef %614) #13
  %616 = icmp slt i32 %615, 4
  br i1 %616, label %606, label %617

617:                                              ; preds = %606, %602
  %618 = phi ptr [ %603, %602 ], [ %613, %606 ]
  %619 = load i32, ptr %12, align 8
  %620 = and i32 %619, 1048576
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %647, label %622

622:                                              ; preds = %617
  %623 = ptrtoint ptr %618 to i32
  %624 = sub i32 %623, %291
  %625 = and i32 %624, 1
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %629, label %627

627:                                              ; preds = %622
  %628 = getelementptr i8, ptr %618, i32 1
  store i8 0, ptr %618, align 1
  br label %629

629:                                              ; preds = %627, %622
  %630 = phi ptr [ %628, %627 ], [ %618, %622 ]
  %631 = getelementptr i8, ptr %630, i32 1
  store i8 %94, ptr %630, align 1
  %632 = getelementptr i8, ptr %630, i32 2
  store i8 %95, ptr %631, align 1
  %633 = getelementptr i8, ptr %630, i32 3
  store i8 %96, ptr %632, align 1
  %634 = getelementptr i8, ptr %630, i32 4
  store i8 %97, ptr %633, align 1
  store i16 %99, ptr %634, align 1
  %635 = getelementptr i8, ptr %630, i32 6
  %636 = ptrtoint ptr %635 to i32
  %637 = sub i32 %636, %291
  %638 = and i32 %637, %93
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %647, label %640

640:                                              ; preds = %640, %629
  %641 = phi ptr [ %642, %640 ], [ %635, %629 ]
  %642 = getelementptr i8, ptr %641, i32 1
  store i8 0, ptr %641, align 1
  %643 = ptrtoint ptr %642 to i32
  %644 = sub i32 %643, %291
  %645 = and i32 %644, %93
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %640

647:                                              ; preds = %640, %629, %617
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ieee80211_calculate_rx_timestamp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sta_set_decap_offload(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_clean_skb(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = sub i32 %7, %1
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = tail call i32 @___pskb_trim(ptr noundef %0, i32 noundef %8) #13
  br label %19

14:                                               ; preds = %5
  store i32 %8, ptr %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  store ptr %17, ptr %18, align 8
  br label %19

19:                                               ; preds = %14, %12, %3
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %21, %23
  %25 = icmp ult i32 %24, %2
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = sub i32 %2, %24
  %28 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %27) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  br label %41

33:                                               ; preds = %26
  %34 = load i32, ptr %20, align 8
  br label %35

35:                                               ; preds = %33, %19
  %36 = phi i32 [ %34, %33 ], [ %21, %19 ]
  %37 = sub i32 %36, %2
  store i32 %37, ptr %20, align 8
  %38 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 %2
  store ptr %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi ptr [ %32, %30 ], [ %40, %35 ]
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %44 = load i16, ptr %42, align 2
  %45 = and i16 %44, -32756
  %46 = icmp eq i16 %45, -32768
  br i1 %46, label %47, label %56, !prof !40

47:                                               ; preds = %41
  %48 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %44) #14
  %49 = and i16 %44, 32767
  store i16 %49, ptr %42, align 2
  %50 = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef %0, i32 noundef %48)
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void @consume_skb(ptr noundef %0) #13
  br label %56

52:                                               ; preds = %47
  %53 = load ptr, ptr %43, align 4
  %54 = getelementptr i8, ptr %53, i32 4
  %55 = add i32 %48, -4
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %54, ptr align 1 %53, i32 %55, i1 false)
  tail call fastcc void @__pskb_pull(ptr noundef %0, i32 noundef 4)
  br label %56

56:                                               ; preds = %52, %51, %41
  %57 = phi ptr [ %0, %52 ], [ null, %51 ], [ %0, %41 ]
  ret ptr %57
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__pskb_pull(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = sub i32 %1, %7
  %11 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %10) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %3, align 8
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi i32 [ %14, %13 ], [ %4, %2 ]
  %17 = sub i32 %16, %1
  store i32 %17, ptr %3, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %1
  store ptr %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %15, %9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_rx_8023(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 6
  %11 = getelementptr inbounds %struct.sta_info, ptr %7, i32 0, i32 31
  %12 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %1, i32 0, i32 7
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.sta_info, ptr %7, i32 0, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #11, !srcloc !35
  %23 = add i32 %22, %19
  %24 = inttoptr i32 %23 to ptr
  br label %25

25:                                               ; preds = %16, %3
  %26 = phi ptr [ %24, %16 ], [ %11, %3 ]
  %27 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 24
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 256
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 38
  %33 = load i8, ptr %32, align 2
  %34 = sext i8 %33 to i32
  %35 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %26, i32 0, i32 5
  store i32 %34, ptr %35, align 4
  %36 = load i8, ptr %12, align 1
  %37 = and i8 %36, 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.sta_info, ptr %7, i32 0, i32 32
  %41 = load i8, ptr %32, align 2
  %42 = sext i8 %41 to i32
  %43 = load volatile i32, ptr %40, align 4
  %44 = icmp eq i32 %43, 0
  %45 = mul i32 %43, 7
  %46 = mul nsw i32 %42, -1024
  %47 = add i32 %45, %46
  %48 = lshr i32 %47, 3
  %49 = select i1 %44, i32 %46, i32 %48
  store volatile i32 %49, ptr %40, align 4
  br label %50

50:                                               ; preds = %39, %31, %25
  %51 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 39
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %139, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %26, i32 0, i32 6
  store i8 %52, ptr %55, align 8
  %56 = getelementptr %struct.sk_buff, ptr %5, i32 0, i32 3, i32 40
  %57 = load i8, ptr %56, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8, ptr %51, align 1
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %54
  %63 = getelementptr %struct.ieee80211_sta_rx_stats, ptr %26, i32 0, i32 7, i32 0
  store i8 %57, ptr %63, align 1
  %64 = load i8, ptr %12, align 1
  %65 = and i8 %64, 4
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = getelementptr %struct.sta_info, ptr %7, i32 0, i32 32, i32 1, i32 0
  %69 = load volatile i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  %71 = mul i32 %69, 7
  %72 = mul nsw i32 %58, -1024
  %73 = add i32 %71, %72
  %74 = lshr i32 %73, 3
  %75 = select i1 %70, i32 %72, i32 %74
  store volatile i32 %75, ptr %68, align 4
  br label %76

76:                                               ; preds = %67, %62, %54
  %77 = getelementptr %struct.sk_buff, ptr %5, i32 0, i32 3, i32 41
  %78 = load i8, ptr %77, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8, ptr %51, align 1
  %81 = and i8 %80, 2
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %76
  %84 = getelementptr %struct.ieee80211_sta_rx_stats, ptr %26, i32 0, i32 7, i32 1
  store i8 %78, ptr %84, align 1
  %85 = load i8, ptr %12, align 1
  %86 = and i8 %85, 4
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = getelementptr %struct.sta_info, ptr %7, i32 0, i32 32, i32 1, i32 1
  %90 = load volatile i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  %92 = mul i32 %90, 7
  %93 = mul nsw i32 %79, -1024
  %94 = add i32 %92, %93
  %95 = lshr i32 %94, 3
  %96 = select i1 %91, i32 %93, i32 %95
  store volatile i32 %96, ptr %89, align 4
  br label %97

97:                                               ; preds = %88, %83, %76
  %98 = getelementptr %struct.sk_buff, ptr %5, i32 0, i32 3, i32 42
  %99 = load i8, ptr %98, align 1
  %100 = sext i8 %99 to i32
  %101 = load i8, ptr %51, align 1
  %102 = and i8 %101, 4
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %118, label %104

104:                                              ; preds = %97
  %105 = getelementptr %struct.ieee80211_sta_rx_stats, ptr %26, i32 0, i32 7, i32 2
  store i8 %99, ptr %105, align 1
  %106 = load i8, ptr %12, align 1
  %107 = and i8 %106, 4
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = getelementptr %struct.sta_info, ptr %7, i32 0, i32 32, i32 1, i32 2
  %111 = load volatile i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  %113 = mul i32 %111, 7
  %114 = mul nsw i32 %100, -1024
  %115 = add i32 %113, %114
  %116 = lshr i32 %115, 3
  %117 = select i1 %112, i32 %114, i32 %116
  store volatile i32 %117, ptr %110, align 4
  br label %118

118:                                              ; preds = %109, %104, %97
  %119 = getelementptr %struct.sk_buff, ptr %5, i32 0, i32 3, i32 43
  %120 = load i8, ptr %119, align 1
  %121 = sext i8 %120 to i32
  %122 = load i8, ptr %51, align 1
  %123 = and i8 %122, 8
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %118
  %126 = getelementptr %struct.ieee80211_sta_rx_stats, ptr %26, i32 0, i32 7, i32 3
  store i8 %120, ptr %126, align 1
  %127 = load i8, ptr %12, align 1
  %128 = and i8 %127, 4
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = getelementptr %struct.sta_info, ptr %7, i32 0, i32 32, i32 1, i32 3
  %132 = load volatile i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  %134 = mul i32 %132, 7
  %135 = mul nsw i32 %121, -1024
  %136 = add i32 %134, %135
  %137 = lshr i32 %136, 3
  %138 = select i1 %133, i32 %135, i32 %137
  store volatile i32 %138, ptr %131, align 4
  br label %139

139:                                              ; preds = %130, %125, %118, %50
  %140 = load volatile i32, ptr @jiffies, align 64
  %141 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %26, i32 0, i32 1
  store i32 %140, ptr %141, align 4
  %142 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 31
  %143 = load i16, ptr %142, align 1
  %144 = shl i16 %143, 6
  %145 = and i16 %144, 1792
  %146 = zext i16 %145 to i32
  %147 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 30
  %148 = load i8, ptr %147, align 2
  %149 = and i8 %148, 4
  %150 = zext i8 %149 to i32
  %151 = shl nuw nsw i32 %150, 10
  %152 = or i32 %151, %146
  %153 = and i16 %143, 3
  %154 = zext i16 %153 to i32
  switch i32 %154, label %215 [
    i32 2, label %155
    i32 1, label %168
    i32 0, label %174
    i32 3, label %187
  ]

155:                                              ; preds = %139
  %156 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 34
  %157 = load i8, ptr %156, align 2
  %158 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 33
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %157 to i32
  %161 = shl nuw nsw i32 %160, 4
  %162 = and i32 %161, 240
  %163 = and i8 %159, 15
  %164 = zext i8 %163 to i32
  %165 = or i32 %152, %162
  %166 = or i32 %165, %164
  %167 = or i32 %166, 24576
  br label %216

168:                                              ; preds = %139
  %169 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 33
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i32
  %172 = or i32 %152, %171
  %173 = or i32 %172, 16384
  br label %216

174:                                              ; preds = %139
  %175 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 36
  %176 = load i8, ptr %175, align 4
  %177 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 33
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %176 to i32
  %180 = shl nuw nsw i32 %179, 4
  %181 = and i32 %180, 240
  %182 = and i8 %178, 15
  %183 = zext i8 %182 to i32
  %184 = or i32 %152, %181
  %185 = or i32 %184, %183
  %186 = or i32 %185, 8192
  br label %216

187:                                              ; preds = %139
  %188 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 34
  %189 = load i8, ptr %188, align 2
  %190 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 33
  %191 = load i8, ptr %190, align 1
  %192 = zext i8 %189 to i32
  %193 = shl nuw nsw i32 %192, 4
  %194 = and i32 %193, 240
  %195 = and i8 %191, 15
  %196 = zext i8 %195 to i32
  %197 = lshr i16 %143, 8
  %198 = zext i16 %197 to i32
  %199 = shl nuw nsw i32 %198, 19
  %200 = and i32 %199, 1572864
  %201 = lshr i16 %143, 5
  %202 = zext i16 %201 to i32
  %203 = shl nuw nsw i32 %202, 16
  %204 = and i32 %203, 458752
  %205 = lshr i16 %143, 10
  %206 = zext i16 %205 to i32
  %207 = shl nuw nsw i32 %206, 21
  %208 = and i32 %207, 2097152
  %209 = or i32 %204, %200
  %210 = or i32 %209, %208
  %211 = or i32 %210, %152
  %212 = or i32 %211, %194
  %213 = or i32 %212, %196
  %214 = or i32 %213, 32768
  br label %216

215:                                              ; preds = %139
  unreachable

216:                                              ; preds = %187, %174, %168, %155
  %217 = phi i32 [ %214, %187 ], [ %186, %174 ], [ %173, %168 ], [ %167, %155 ]
  %218 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %26, i32 0, i32 8
  store i32 %217, ptr %218, align 8
  %219 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %26, i32 0, i32 3
  %220 = load i32, ptr %219, align 4
  %221 = add i32 %220, 1
  store i32 %221, ptr %219, align 4
  %222 = load i32, ptr %26, align 8
  %223 = add i32 %222, 1
  store i32 %223, ptr %26, align 8
  %224 = load ptr, ptr %1, align 4
  %225 = getelementptr inbounds %struct.anon.49, ptr %5, i32 0, i32 2
  store ptr %224, ptr %225, align 8
  %226 = load ptr, ptr %1, align 4
  %227 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 5
  %228 = load i32, ptr %227, align 8
  %229 = getelementptr inbounds %struct.net_device, ptr %226, i32 0, i32 110
  %230 = load ptr, ptr %229, align 8
  %231 = ptrtoint ptr %230 to i32
  %232 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %233 = inttoptr i32 %232 to ptr
  %234 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %233) #11, !srcloc !35
  %235 = add i32 %234, %231
  %236 = inttoptr i32 %235 to ptr
  %237 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %236, i32 0, i32 4
  %238 = load i32, ptr %237, align 4
  %239 = add i32 %238, 1
  store i32 %239, ptr %237, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !24
  %240 = zext i32 %228 to i64
  %241 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %236, i32 0, i32 1
  %242 = load i64, ptr %241, align 8
  %243 = add i64 %242, %240
  store i64 %243, ptr %241, align 8
  %244 = load i64, ptr %236, align 32
  %245 = add i64 %244, 1
  store i64 %245, ptr %236, align 32
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !25
  %246 = load i32, ptr %237, align 4
  %247 = add i32 %246, 1
  store i32 %247, ptr %237, align 4
  %248 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %26, i32 0, i32 9
  %249 = load i32, ptr %248, align 4
  %250 = add i32 %249, 1
  store i32 %250, ptr %248, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !24
  %251 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 7
  %252 = load i32, ptr %251, align 4
  %253 = getelementptr %struct.ieee80211_sta_rx_stats, ptr %26, i32 0, i32 11, i32 %252
  %254 = load i64, ptr %253, align 8
  %255 = add i64 %254, 1
  store i64 %255, ptr %253, align 8
  %256 = sext i32 %2 to i64
  %257 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %26, i32 0, i32 10
  %258 = load i64, ptr %257, align 8
  %259 = add i64 %258, %256
  store i64 %259, ptr %257, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !25
  %260 = load i32, ptr %248, align 4
  %261 = add i32 %260, 1
  store i32 %261, ptr %248, align 4
  %262 = load i8, ptr %12, align 1
  %263 = and i8 %262, 2
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %310, label %265

265:                                              ; preds = %216
  %266 = load i32, ptr %9, align 4
  %267 = and i32 %266, 1
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %271, label %269

269:                                              ; preds = %265
  %270 = tail call ptr @skb_copy(ptr noundef %5, i32 noundef 2592) #13
  br label %287

271:                                              ; preds = %265
  %272 = load i32, ptr %10, align 4
  %273 = xor i32 %272, %266
  %274 = getelementptr i8, ptr %9, i32 4
  %275 = load i16, ptr %274, align 2
  %276 = getelementptr i8, ptr %9, i32 10
  %277 = load i16, ptr %276, align 2
  %278 = xor i16 %277, %275
  %279 = zext i16 %278 to i32
  %280 = or i32 %273, %279
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %307, label %282

282:                                              ; preds = %271
  %283 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 3
  %284 = load ptr, ptr %283, align 4
  %285 = tail call ptr @sta_info_get(ptr noundef %284, ptr noundef %9) #13
  %286 = icmp eq ptr %285, null
  br i1 %286, label %307, label %287

287:                                              ; preds = %282, %269
  %288 = phi ptr [ %5, %269 ], [ null, %282 ]
  %289 = phi ptr [ %270, %269 ], [ %5, %282 ]
  %290 = icmp eq ptr %289, null
  br i1 %290, label %307, label %291

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.sk_buff, ptr %289, i32 0, i32 13, i32 0, i32 5
  %293 = load i32, ptr %292, align 8
  %294 = add i32 %293, 256
  store i32 %294, ptr %292, align 8
  %295 = getelementptr inbounds %struct.sk_buff, ptr %289, i32 0, i32 13, i32 0, i32 16
  store i16 256, ptr %295, align 8
  %296 = getelementptr inbounds %struct.sk_buff, ptr %289, i32 0, i32 17
  %297 = load ptr, ptr %296, align 4
  %298 = getelementptr inbounds %struct.sk_buff, ptr %289, i32 0, i32 16
  %299 = load ptr, ptr %298, align 8
  %300 = ptrtoint ptr %297 to i32
  %301 = ptrtoint ptr %299 to i32
  %302 = sub i32 %300, %301
  %303 = trunc i32 %302 to i16
  %304 = getelementptr inbounds %struct.sk_buff, ptr %289, i32 0, i32 13, i32 0, i32 18
  store i16 %303, ptr %304, align 4
  %305 = getelementptr inbounds %struct.sk_buff, ptr %289, i32 0, i32 13, i32 0, i32 19
  store i16 %303, ptr %305, align 2
  %306 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %289) #13
  br label %307

307:                                              ; preds = %291, %287, %282, %271
  %308 = phi ptr [ %288, %291 ], [ %288, %287 ], [ %5, %271 ], [ %5, %282 ]
  %309 = icmp eq ptr %308, null
  br i1 %309, label %315, label %310

310:                                              ; preds = %307, %216
  %311 = phi ptr [ %308, %307 ], [ %5, %216 ]
  %312 = load ptr, ptr %1, align 4
  %313 = tail call zeroext i16 @eth_type_trans(ptr noundef %311, ptr noundef %312) #13
  %314 = getelementptr inbounds %struct.sk_buff, ptr %311, i32 0, i32 13, i32 0, i32 16
  store i16 %313, ptr %314, align 8
  tail call fastcc void @ieee80211_deliver_skb_to_local_stack(ptr noundef %311, ptr noundef %0)
  br label %315

315:                                              ; preds = %310, %307
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_rx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_prepare_and_rx_handle(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.sk_buff_head, align 4
  %6 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 1
  store ptr %1, ptr %10, align 4
  br i1 %2, label %11, label %185

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %185, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sta_info, ptr %13, i32 0, i32 15
  %17 = load volatile ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %185, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = load i16, ptr %21, align 2
  %25 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %24) #14
  %26 = getelementptr inbounds %struct.sta_info, ptr %13, i32 0, i32 31
  %27 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %185, label %31

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %17, i32 0, i32 7
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  %36 = and i32 %28, 1026
  %37 = icmp eq i32 %36, 1026
  %38 = select i1 %35, i1 true, i1 %37
  %39 = and i16 %24, 1100
  %40 = icmp eq i16 %39, 8
  %41 = and i1 %40, %38
  br i1 %41, label %42, label %185, !prof !41

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.ieee80211_hdr, ptr %21, i32 0, i32 5
  %44 = load i16, ptr %43, align 2
  %45 = and i16 %44, 15
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %185, !prof !26

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %17, i32 0, i32 2
  %49 = getelementptr inbounds %struct.ieee80211_hdr, ptr %21, i32 0, i32 2
  %50 = load i32, ptr %48, align 4
  %51 = load i32, ptr %49, align 4
  %52 = xor i32 %51, %50
  %53 = getelementptr %struct.ieee80211_fast_rx, ptr %17, i32 0, i32 2, i32 4
  %54 = load i16, ptr %53, align 2
  %55 = getelementptr %struct.ieee80211_hdr, ptr %21, i32 0, i32 2, i32 4
  %56 = load i16, ptr %55, align 2
  %57 = xor i16 %56, %54
  %58 = zext i16 %57 to i32
  %59 = or i32 %52, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %185

61:                                               ; preds = %47
  %62 = and i16 %24, 768
  %63 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %17, i32 0, i32 5
  %64 = load i16, ptr %63, align 2
  %65 = icmp eq i16 %62, %64
  br i1 %65, label %66, label %185

66:                                               ; preds = %61
  %67 = and i32 %28, 16
  %68 = icmp eq i32 %67, 0
  %69 = add i32 %25, 8
  %70 = select i1 %68, i32 %69, i32 %25
  %71 = select i1 %35, i32 %25, i32 %70
  %72 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 35
  %73 = load i8, ptr %72, align 1
  %74 = and i8 %73, 8
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %113

76:                                               ; preds = %66
  %77 = add i32 %71, 8
  %78 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = sub i32 %23, %79
  %81 = icmp ugt i32 %77, %80
  br i1 %81, label %82, label %90, !prof !9

82:                                               ; preds = %76
  %83 = icmp ult i32 %23, %77
  br i1 %83, label %167, label %84, !prof !9

84:                                               ; preds = %82
  %85 = sub i32 %77, %80
  %86 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %85) #13
  %87 = icmp eq ptr %86, null
  br i1 %87, label %167, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %20, align 4
  br label %90

90:                                               ; preds = %88, %76
  %91 = phi ptr [ %89, %88 ], [ %21, %76 ]
  %92 = getelementptr i8, ptr %91, i32 %71
  %93 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %17, i32 0, i32 3
  %94 = load i32, ptr %92, align 4
  %95 = load i32, ptr %93, align 4
  %96 = xor i32 %95, %94
  %97 = getelementptr i8, ptr %92, i32 4
  %98 = load i16, ptr %97, align 2
  %99 = getelementptr %struct.ieee80211_fast_rx, ptr %17, i32 0, i32 3, i32 4
  %100 = load i16, ptr %99, align 2
  %101 = xor i16 %100, %98
  %102 = zext i16 %101 to i32
  %103 = or i32 %96, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %185

105:                                              ; preds = %90
  %106 = getelementptr inbounds %struct.anon.201, ptr %92, i32 0, i32 1
  %107 = load i16, ptr %106, align 2
  %108 = icmp eq i16 %107, 3465
  br i1 %108, label %185, label %109, !prof !9

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %17, i32 0, i32 4
  %111 = load i16, ptr %110, align 4
  %112 = icmp eq i16 %107, %111
  br i1 %112, label %185, label %113, !prof !9

113:                                              ; preds = %109, %66
  %114 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %136, label %117

117:                                              ; preds = %113
  %118 = load i32, ptr %27, align 8
  %119 = and i32 %118, 2097152
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = load i32, ptr %22, align 8
  %123 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %17, i32 0, i32 6
  %124 = load i8, ptr %123, align 4
  %125 = zext i8 %124 to i32
  %126 = sub i32 %122, %125
  %127 = tail call fastcc i32 @pskb_trim(ptr noundef %1, i32 noundef %126) #13
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %167

129:                                              ; preds = %121
  %130 = load ptr, ptr %114, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %129, %117
  %133 = load i16, ptr %21, align 2
  %134 = and i16 %133, 16384
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %167, label %136

136:                                              ; preds = %132, %129, %113
  %137 = load i8, ptr %72, align 1
  %138 = and i8 %137, 8
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %136
  %141 = sub i32 %71, %25
  %142 = trunc i32 %141 to i8
  %143 = tail call fastcc i32 @__ieee80211_rx_h_amsdu(ptr noundef %0, i8 noundef zeroext %142) #13
  %144 = icmp eq i32 %143, 3
  br i1 %144, label %848, label %167

145:                                              ; preds = %136
  %146 = load ptr, ptr %20, align 4
  %147 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %17, i32 0, i32 8
  %148 = load i8, ptr %147, align 2
  %149 = zext i8 %148 to i32
  %150 = getelementptr i8, ptr %146, i32 %149
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr i8, ptr %150, i32 4
  %153 = load i16, ptr %152, align 2
  %154 = getelementptr inbounds %struct.ieee80211_fast_rx, ptr %17, i32 0, i32 9
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = getelementptr i8, ptr %146, i32 %156
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr i8, ptr %157, i32 4
  %160 = load i16, ptr %159, align 2
  %161 = add i32 %71, 6
  %162 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %161) #13
  %163 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 12) #13
  store i32 %151, ptr %163, align 1
  %164 = getelementptr inbounds i8, ptr %163, i32 4
  store i16 %153, ptr %164, align 1
  %165 = getelementptr inbounds i8, ptr %163, i32 6
  store i32 %158, ptr %165, align 1
  %166 = getelementptr inbounds i8, ptr %163, i32 10
  store i16 %160, ptr %166, align 1
  tail call fastcc void @ieee80211_rx_8023(ptr noundef %0, ptr noundef nonnull %17, i32 noundef %23) #13
  br label %848

167:                                              ; preds = %140, %132, %121, %84, %82
  tail call void @consume_skb(ptr noundef %1) #13
  %168 = load i8, ptr %32, align 1
  %169 = and i8 %168, 4
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.sta_info, ptr %13, i32 0, i32 16
  %173 = load ptr, ptr %172, align 4
  %174 = ptrtoint ptr %173 to i32
  %175 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %176 = inttoptr i32 %175 to ptr
  %177 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %176) #11, !srcloc !35
  %178 = add i32 %177, %174
  %179 = inttoptr i32 %178 to ptr
  br label %180

180:                                              ; preds = %171, %167
  %181 = phi ptr [ %179, %171 ], [ %26, %167 ]
  %182 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %181, i32 0, i32 4
  %183 = load i32, ptr %182, align 8
  %184 = add i32 %183, 1
  store i32 %184, ptr %182, align 8
  br label %848

185:                                              ; preds = %109, %105, %90, %61, %47, %42, %31, %19, %15, %11, %3
  %186 = load ptr, ptr %8, align 4
  %187 = load ptr, ptr %10, align 4
  %188 = getelementptr inbounds %struct.sk_buff, ptr %187, i32 0, i32 17
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.sk_buff, ptr %187, i32 0, i32 5
  %191 = load i32, ptr %190, align 8
  %192 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %186, i32 0, i32 58
  %193 = load i32, ptr %192, align 8
  %194 = tail call ptr @ieee80211_get_bssid(ptr noundef %189, i32 noundef %191, i32 noundef %193) #13
  %195 = getelementptr inbounds %struct.ieee80211_hdr, ptr %189, i32 0, i32 2
  %196 = load i32, ptr %195, align 4
  %197 = and i32 %196, 1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %185
  %200 = load i16, ptr %189, align 2
  %201 = and i16 %200, 252
  %202 = icmp eq i16 %201, 28
  br label %203

203:                                              ; preds = %199, %185
  %204 = phi i1 [ true, %185 ], [ %202, %199 ]
  %205 = load i32, ptr %192, align 8
  switch i32 %205, label %492 [
    i32 2, label %206
    i32 1, label %244
    i32 11, label %323
    i32 7, label %371
    i32 4, label %394
    i32 3, label %394
    i32 10, label %475
    i32 12, label %848
  ]

206:                                              ; preds = %203
  %207 = icmp eq ptr %194, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %206
  %209 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %186, i32 0, i32 57, i32 0, i32 24, i32 23
  %210 = load i8, ptr %209, align 4
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %848, label %212

212:                                              ; preds = %208, %206
  %213 = load i32, ptr %190, align 8
  %214 = icmp ult i32 %213, 25
  br i1 %214, label %231, label %215

215:                                              ; preds = %212
  %216 = load ptr, ptr %188, align 4
  %217 = load i16, ptr %216, align 2
  %218 = trunc i16 %217 to i8
  %219 = and i8 %218, -4
  switch i8 %219, label %231 [
    i8 -96, label %226
    i8 -64, label %226
    i8 -48, label %220
  ]

220:                                              ; preds = %215
  %221 = and i16 %217, 16384
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = getelementptr i8, ptr %216, i32 24
  %225 = load i8, ptr %224, align 1
  switch i8 %225, label %226 [
    i8 4, label %231
    i8 7, label %231
    i8 11, label %231
    i8 15, label %231
    i8 20, label %231
    i8 21, label %231
    i8 127, label %231
  ]

226:                                              ; preds = %223, %220, %215, %215
  %227 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  %230 = select i1 %229, i1 true, i1 %204
  br i1 %230, label %495, label %232

231:                                              ; preds = %223, %223, %223, %223, %223, %223, %223, %215, %212
  br i1 %204, label %497, label %232

232:                                              ; preds = %231, %226
  %233 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %186, i32 0, i32 58, i32 2
  %234 = load i32, ptr %233, align 4
  %235 = xor i32 %234, %196
  %236 = getelementptr %struct.ieee80211_sub_if_data, ptr %186, i32 0, i32 58, i32 2, i32 4
  %237 = load i16, ptr %236, align 2
  %238 = getelementptr %struct.ieee80211_hdr, ptr %189, i32 0, i32 2, i32 4
  %239 = load i16, ptr %238, align 2
  %240 = xor i16 %239, %237
  %241 = zext i16 %240 to i32
  %242 = or i32 %235, %241
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %497, label %848

244:                                              ; preds = %203
  %245 = icmp eq ptr %194, null
  br i1 %245, label %848, label %246

246:                                              ; preds = %244
  %247 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %186, i32 0, i32 58, i32 2
  %248 = getelementptr inbounds %struct.ieee80211_hdr, ptr %189, i32 0, i32 3
  %249 = load i32, ptr %247, align 4
  %250 = load i32, ptr %248, align 4
  %251 = xor i32 %250, %249
  %252 = getelementptr %struct.ieee80211_sub_if_data, ptr %186, i32 0, i32 58, i32 2, i32 4
  %253 = load i16, ptr %252, align 2
  %254 = getelementptr %struct.ieee80211_hdr, ptr %189, i32 0, i32 3, i32 4
  %255 = load i16, ptr %254, align 2
  %256 = xor i16 %255, %253
  %257 = zext i16 %256 to i32
  %258 = or i32 %251, %257
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %848, label %260

260:                                              ; preds = %246
  %261 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %186, i32 0, i32 57
  %262 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %261, i32 0, i32 10
  %263 = load i32, ptr %262, align 4
  %264 = xor i32 %263, %250
  %265 = getelementptr %struct.ieee80211_if_ibss, ptr %261, i32 0, i32 10, i32 4
  %266 = load i16, ptr %265, align 2
  %267 = xor i16 %266, %255
  %268 = zext i16 %267 to i32
  %269 = or i32 %264, %268
  %270 = icmp ne i32 %269, 0
  %271 = and i32 %250, 1
  %272 = icmp eq i32 %271, 0
  %273 = select i1 %270, i1 %272, i1 false
  %274 = zext i16 %255 to i32
  %275 = or i32 %250, %274
  %276 = icmp ne i32 %275, 0
  %277 = select i1 %273, i1 %276, i1 false
  br i1 %277, label %278, label %848

278:                                              ; preds = %260
  %279 = load i16, ptr %189, align 2
  %280 = and i16 %279, 252
  %281 = icmp eq i16 %280, 128
  br i1 %281, label %497, label %282

282:                                              ; preds = %278
  %283 = load i32, ptr %194, align 4
  %284 = xor i32 %283, %263
  %285 = getelementptr i8, ptr %194, i32 4
  %286 = load i16, ptr %285, align 2
  %287 = xor i16 %286, %266
  %288 = zext i16 %287 to i32
  %289 = or i32 %284, %288
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %298, label %291

291:                                              ; preds = %282
  %292 = lshr i32 %283, 16
  %293 = trunc i32 %292 to i16
  %294 = trunc i32 %283 to i16
  %295 = and i16 %286, %294
  %296 = and i16 %295, %293
  %297 = icmp eq i16 %296, -1
  br i1 %297, label %298, label %848

298:                                              ; preds = %291, %282
  br i1 %204, label %307, label %299

299:                                              ; preds = %298
  %300 = xor i32 %249, %196
  %301 = getelementptr %struct.ieee80211_hdr, ptr %189, i32 0, i32 2, i32 4
  %302 = load i16, ptr %301, align 2
  %303 = xor i16 %302, %253
  %304 = zext i16 %303 to i32
  %305 = or i32 %300, %304
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %848

307:                                              ; preds = %299, %298
  %308 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %309 = load ptr, ptr %308, align 4
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %497

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.sk_buff, ptr %187, i32 0, i32 3, i32 31
  %313 = load i16, ptr %312, align 1
  %314 = and i16 %313, 3
  %315 = icmp eq i16 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %311
  %317 = getelementptr inbounds %struct.sk_buff, ptr %187, i32 0, i32 3, i32 33
  %318 = load i8, ptr %317, align 1
  %319 = zext i8 %318 to i32
  br label %320

320:                                              ; preds = %316, %311
  %321 = phi i32 [ %319, %316 ], [ 0, %311 ]
  %322 = shl nuw i32 1, %321
  tail call void @ieee80211_ibss_rx_no_sta(ptr noundef %186, ptr noundef nonnull %194, ptr noundef %248, i32 noundef %322) #13
  br label %497

323:                                              ; preds = %203
  %324 = icmp eq ptr %194, null
  br i1 %324, label %848, label %325

325:                                              ; preds = %323
  %326 = load i16, ptr %189, align 2
  %327 = and i16 %326, 76
  %328 = icmp eq i16 %327, 8
  br i1 %328, label %329, label %848

329:                                              ; preds = %325
  %330 = load i16, ptr %194, align 2
  %331 = getelementptr i8, ptr %194, i32 2
  %332 = load i16, ptr %331, align 2
  %333 = and i16 %332, %330
  %334 = getelementptr i8, ptr %194, i32 4
  %335 = load i16, ptr %334, align 2
  %336 = and i16 %333, %335
  %337 = icmp eq i16 %336, -1
  br i1 %337, label %338, label %848

338:                                              ; preds = %329
  br i1 %204, label %354, label %339

339:                                              ; preds = %338
  %340 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %186, i32 0, i32 6
  %341 = load ptr, ptr %340, align 8
  %342 = getelementptr inbounds %struct.net_device, ptr %341, i32 0, i32 72
  %343 = load ptr, ptr %342, align 32
  %344 = load i32, ptr %343, align 4
  %345 = xor i32 %344, %196
  %346 = getelementptr i8, ptr %343, i32 4
  %347 = load i16, ptr %346, align 2
  %348 = getelementptr %struct.ieee80211_hdr, ptr %189, i32 0, i32 2, i32 4
  %349 = load i16, ptr %348, align 2
  %350 = xor i16 %349, %347
  %351 = zext i16 %350 to i32
  %352 = or i32 %345, %351
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %848

354:                                              ; preds = %339, %338
  %355 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %356 = load ptr, ptr %355, align 4
  %357 = icmp eq ptr %356, null
  br i1 %357, label %358, label %497

358:                                              ; preds = %354
  %359 = getelementptr inbounds %struct.sk_buff, ptr %187, i32 0, i32 3, i32 31
  %360 = load i16, ptr %359, align 1
  %361 = and i16 %360, 3
  %362 = icmp eq i16 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %358
  %364 = getelementptr inbounds %struct.sk_buff, ptr %187, i32 0, i32 3, i32 33
  %365 = load i8, ptr %364, align 1
  %366 = zext i8 %365 to i32
  br label %367

367:                                              ; preds = %363, %358
  %368 = phi i32 [ %366, %363 ], [ 0, %358 ]
  %369 = getelementptr inbounds %struct.ieee80211_hdr, ptr %189, i32 0, i32 3
  %370 = shl nuw i32 1, %368
  tail call void @ieee80211_ocb_rx_no_sta(ptr noundef %186, ptr noundef nonnull %194, ptr noundef %369, i32 noundef %370) #13
  br label %497

371:                                              ; preds = %203
  %372 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %186, i32 0, i32 58, i32 2
  %373 = getelementptr inbounds %struct.ieee80211_hdr, ptr %189, i32 0, i32 3
  %374 = load i32, ptr %372, align 4
  %375 = load i32, ptr %373, align 4
  %376 = xor i32 %375, %374
  %377 = getelementptr %struct.ieee80211_sub_if_data, ptr %186, i32 0, i32 58, i32 2, i32 4
  %378 = load i16, ptr %377, align 2
  %379 = getelementptr %struct.ieee80211_hdr, ptr %189, i32 0, i32 3, i32 4
  %380 = load i16, ptr %379, align 2
  %381 = xor i16 %380, %378
  %382 = zext i16 %381 to i32
  %383 = or i32 %376, %382
  %384 = icmp eq i32 %383, 0
  %385 = select i1 %384, i1 true, i1 %204
  br i1 %385, label %495, label %386

386:                                              ; preds = %371
  %387 = xor i32 %374, %196
  %388 = getelementptr %struct.ieee80211_hdr, ptr %189, i32 0, i32 2, i32 4
  %389 = load i16, ptr %388, align 2
  %390 = xor i16 %389, %378
  %391 = zext i16 %390 to i32
  %392 = or i32 %387, %391
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %497, label %848

394:                                              ; preds = %203, %203
  %395 = icmp eq ptr %194, null
  %396 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %186, i32 0, i32 58, i32 2
  br i1 %395, label %397, label %408

397:                                              ; preds = %394
  %398 = load i32, ptr %396, align 4
  %399 = xor i32 %398, %196
  %400 = getelementptr %struct.ieee80211_sub_if_data, ptr %186, i32 0, i32 58, i32 2, i32 4
  %401 = load i16, ptr %400, align 2
  %402 = getelementptr %struct.ieee80211_hdr, ptr %189, i32 0, i32 2, i32 4
  %403 = load i16, ptr %402, align 2
  %404 = xor i16 %403, %401
  %405 = zext i16 %404 to i32
  %406 = or i32 %399, %405
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %497, label %848

408:                                              ; preds = %394
  %409 = load i32, ptr %194, align 4
  %410 = load i32, ptr %396, align 4
  %411 = xor i32 %410, %409
  %412 = getelementptr i8, ptr %194, i32 4
  %413 = load i16, ptr %412, align 2
  %414 = getelementptr %struct.ieee80211_sub_if_data, ptr %186, i32 0, i32 58, i32 2, i32 4
  %415 = load i16, ptr %414, align 2
  %416 = xor i16 %415, %413
  %417 = zext i16 %416 to i32
  %418 = or i32 %411, %417
  %419 = icmp eq i32 %418, 0
  %420 = trunc i32 %409 to i16
  %421 = lshr i32 %409, 16
  %422 = trunc i32 %421 to i16
  br i1 %419, label %449, label %423

423:                                              ; preds = %408
  %424 = and i16 %413, %422
  %425 = and i16 %424, %420
  %426 = icmp eq i16 %425, -1
  br i1 %426, label %449, label %427

427:                                              ; preds = %423
  br i1 %204, label %436, label %428

428:                                              ; preds = %427
  %429 = xor i32 %410, %196
  %430 = getelementptr %struct.ieee80211_hdr, ptr %189, i32 0, i32 2, i32 4
  %431 = load i16, ptr %430, align 2
  %432 = xor i16 %431, %415
  %433 = zext i16 %432 to i32
  %434 = or i32 %429, %433
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %848

436:                                              ; preds = %428, %427
  %437 = load i32, ptr %190, align 8
  %438 = icmp ugt i32 %437, 24
  %439 = load i16, ptr %189, align 2
  %440 = and i16 %439, 252
  %441 = icmp eq i16 %440, 208
  %442 = select i1 %438, i1 %441, i1 false
  br i1 %442, label %443, label %447

443:                                              ; preds = %436
  %444 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %189, i32 0, i32 6
  %445 = load i8, ptr %444, align 2
  %446 = icmp eq i8 %445, 4
  br i1 %446, label %497, label %848

447:                                              ; preds = %436
  %448 = icmp eq i16 %440, 128
  br i1 %448, label %497, label %848

449:                                              ; preds = %423, %408
  %450 = load i16, ptr %189, align 2
  %451 = and i16 %450, 256
  %452 = icmp eq i16 %451, 0
  %453 = and i16 %450, 12
  br i1 %452, label %454, label %471

454:                                              ; preds = %449
  %455 = icmp eq i16 %453, 8
  br i1 %455, label %848, label %456

456:                                              ; preds = %454
  %457 = and i16 %450, 252
  %458 = icmp eq i16 %457, 208
  br i1 %458, label %459, label %471

459:                                              ; preds = %456
  %460 = and i16 %413, %422
  %461 = and i16 %460, %420
  %462 = icmp eq i16 %461, -1
  br i1 %462, label %471, label %463

463:                                              ; preds = %459
  %464 = xor i32 %409, %196
  %465 = getelementptr %struct.ieee80211_hdr, ptr %189, i32 0, i32 2, i32 4
  %466 = load i16, ptr %465, align 2
  %467 = xor i16 %466, %413
  %468 = zext i16 %467 to i32
  %469 = or i32 %464, %468
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %848

471:                                              ; preds = %463, %459, %456, %449
  %472 = icmp ne i16 %453, 8
  %473 = xor i1 %204, true
  %474 = select i1 %472, i1 true, i1 %473
  br i1 %474, label %497, label %848

475:                                              ; preds = %203
  %476 = load i32, ptr %190, align 8
  %477 = icmp ult i32 %476, 25
  %478 = load i16, ptr %189, align 2
  br i1 %477, label %479, label %481

479:                                              ; preds = %475
  %480 = trunc i16 %478 to i8
  br label %489

481:                                              ; preds = %475
  %482 = and i16 %478, 252
  %483 = icmp eq i16 %482, 208
  %484 = trunc i16 %478 to i8
  br i1 %483, label %485, label %489

485:                                              ; preds = %481
  %486 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %189, i32 0, i32 6
  %487 = load i8, ptr %486, align 2
  %488 = icmp eq i8 %487, 4
  br i1 %488, label %497, label %489

489:                                              ; preds = %485, %481, %479
  %490 = phi i8 [ %480, %479 ], [ %484, %481 ], [ %484, %485 ]
  %491 = and i8 %490, -4
  switch i8 %491, label %848 [
    i8 64, label %497
    i8 80, label %497
    i8 -128, label %497
  ]

492:                                              ; preds = %203
  %493 = load i1, ptr @ieee80211_accept_frame.__already_done, align 1
  br i1 %493, label %848, label %494, !prof !26

494:                                              ; preds = %492
  store i1 true, ptr @ieee80211_accept_frame.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4242, i32 noundef 9, ptr noundef null) #13
  br label %848

495:                                              ; preds = %371, %226
  %496 = phi i1 [ %229, %226 ], [ %384, %371 ]
  br i1 %496, label %848, label %497

497:                                              ; preds = %495, %489, %489, %489, %485, %471, %447, %443, %397, %386, %367, %354, %320, %307, %278, %232, %231
  br i1 %2, label %498, label %500

498:                                              ; preds = %497
  %499 = load ptr, ptr %10, align 4
  br label %512

500:                                              ; preds = %497
  %501 = tail call ptr @skb_copy(ptr noundef %1, i32 noundef 2592) #13
  %502 = icmp eq ptr %501, null
  br i1 %502, label %503, label %511

503:                                              ; preds = %500
  %504 = tail call i32 @net_ratelimit() #13
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %848, label %506

506:                                              ; preds = %503
  %507 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %508 = load ptr, ptr %507, align 8
  %509 = getelementptr inbounds %struct.wiphy, ptr %508, i32 0, i32 56
  %510 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %9, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %509, ptr noundef nonnull @.str.17, ptr noundef %510) #15
  br label %848

511:                                              ; preds = %500
  store ptr %501, ptr %10, align 4
  br label %512

512:                                              ; preds = %511, %498
  %513 = phi ptr [ %499, %498 ], [ %501, %511 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %514 = getelementptr inbounds i8, ptr %5, i32 12
  store i32 0, ptr %514, align 4, !annotation !16
  store ptr %5, ptr %5, align 4
  %515 = getelementptr inbounds %struct.anon.123, ptr %5, i32 0, i32 1
  store ptr %5, ptr %515, align 4
  %516 = getelementptr inbounds %struct.sk_buff_head, ptr %5, i32 0, i32 1
  store i32 0, ptr %516, align 4
  %517 = getelementptr inbounds %struct.sk_buff, ptr %513, i32 0, i32 17
  %518 = load ptr, ptr %517, align 4
  %519 = getelementptr inbounds %struct.sk_buff, ptr %513, i32 0, i32 3, i32 24
  %520 = load i32, ptr %519, align 8
  %521 = and i32 %520, 2048
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %570

523:                                              ; preds = %512
  %524 = getelementptr inbounds %struct.sk_buff, ptr %513, i32 0, i32 5
  %525 = load i32, ptr %524, align 8
  %526 = icmp ult i32 %525, 24
  br i1 %526, label %570, label %527

527:                                              ; preds = %523
  %528 = load i16, ptr %518, align 2
  %529 = and i16 %528, 12
  %530 = icmp eq i16 %529, 4
  %531 = and i16 %528, 124
  %532 = icmp eq i16 %531, 72
  %533 = or i1 %530, %532
  br i1 %533, label %570, label %534

534:                                              ; preds = %527
  %535 = getelementptr inbounds %struct.ieee80211_hdr, ptr %518, i32 0, i32 2
  %536 = load i32, ptr %535, align 4
  %537 = and i32 %536, 1
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %570

539:                                              ; preds = %534
  %540 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %541 = load ptr, ptr %540, align 4
  %542 = icmp eq ptr %541, null
  br i1 %542, label %570, label %543

543:                                              ; preds = %539
  %544 = and i16 %528, 2048
  %545 = icmp eq i16 %544, 0
  br i1 %545, label %554, label %546

546:                                              ; preds = %543
  %547 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 7
  %548 = load i32, ptr %547, align 4
  %549 = getelementptr %struct.sta_info, ptr %541, i32 0, i32 33, i32 %548
  %550 = load i16, ptr %549, align 2
  %551 = getelementptr inbounds %struct.ieee80211_hdr, ptr %518, i32 0, i32 5
  %552 = load i16, ptr %551, align 2
  %553 = icmp eq i16 %550, %552
  br i1 %553, label %566, label %554, !prof !9

554:                                              ; preds = %546, %543
  %555 = and i32 %520, 524288
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %570

557:                                              ; preds = %554
  %558 = getelementptr inbounds %struct.ieee80211_hdr, ptr %518, i32 0, i32 5
  %559 = load i16, ptr %558, align 2
  %560 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 7
  %561 = load i32, ptr %560, align 4
  %562 = getelementptr %struct.sta_info, ptr %541, i32 0, i32 33, i32 %561
  store i16 %559, ptr %562, align 2
  %563 = load ptr, ptr %10, align 4
  %564 = getelementptr inbounds %struct.sk_buff, ptr %563, i32 0, i32 17
  %565 = load ptr, ptr %564, align 4
  br label %570

566:                                              ; preds = %546
  %567 = getelementptr inbounds %struct.sta_info, ptr %541, i32 0, i32 31, i32 2
  %568 = load i32, ptr %567, align 8
  %569 = add i32 %568, 1
  store i32 %569, ptr %567, align 8
  br label %845

570:                                              ; preds = %557, %554, %539, %534, %527, %523, %512
  %571 = phi ptr [ %518, %512 ], [ %518, %523 ], [ %518, %534 ], [ %518, %527 ], [ %518, %539 ], [ %518, %554 ], [ %565, %557 ]
  %572 = phi ptr [ %513, %512 ], [ %513, %523 ], [ %513, %534 ], [ %513, %527 ], [ %513, %539 ], [ %513, %554 ], [ %563, %557 ]
  %573 = load i16, ptr %571, align 2
  %574 = and i16 %573, 12
  %575 = icmp eq i16 %574, 8
  %576 = and i16 %573, 252
  %577 = icmp eq i16 %576, 164
  %578 = or i1 %575, %577
  br i1 %578, label %579, label %631

579:                                              ; preds = %570
  %580 = load ptr, ptr %8, align 4
  %581 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %580, i32 0, i32 58
  %582 = load i32, ptr %581, align 8
  switch i32 %582, label %583 [
    i32 1, label %631
    i32 11, label %631
  ]

583:                                              ; preds = %579
  %584 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %585 = load ptr, ptr %584, align 4
  %586 = icmp eq ptr %585, null
  br i1 %586, label %621, label %587

587:                                              ; preds = %583
  %588 = getelementptr inbounds %struct.sta_info, ptr %585, i32 0, i32 23
  %589 = load volatile i32, ptr %588, align 4
  %590 = and i32 %589, 2
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %592, label %631, !prof !9

592:                                              ; preds = %587
  %593 = icmp eq i32 %582, 2
  %594 = and i16 %573, 76
  %595 = icmp eq i16 %594, 8
  %596 = select i1 %593, i1 %595, i1 false
  br i1 %596, label %597, label %621

597:                                              ; preds = %592
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2, !annotation !16
  %598 = load i16, ptr %571, align 2
  %599 = call i32 @ieee80211_hdrlen(i16 noundef zeroext %598) #14
  %600 = getelementptr inbounds %struct.sk_buff, ptr %572, i32 0, i32 5
  %601 = load i32, ptr %600, align 8
  %602 = add i32 %599, 8
  %603 = icmp ult i32 %601, %602
  br i1 %603, label %604, label %605

604:                                              ; preds = %597
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  br label %845

605:                                              ; preds = %597
  %606 = add i32 %599, 6
  %607 = call i32 @skb_copy_bits(ptr noundef %572, i32 noundef %606, ptr noundef nonnull %4, i32 noundef 2) #13
  %608 = load i16, ptr %4, align 2
  %609 = load ptr, ptr %8, align 4
  %610 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %609, i32 0, i32 20
  %611 = load i16, ptr %610, align 2
  %612 = icmp eq i16 %608, %611
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  br i1 %612, label %613, label %618

613:                                              ; preds = %605
  %614 = load ptr, ptr %10, align 4
  %615 = getelementptr inbounds %struct.sk_buff, ptr %614, i32 0, i32 17
  %616 = load ptr, ptr %615, align 4
  %617 = load i16, ptr %616, align 2
  br label %631

618:                                              ; preds = %605
  %619 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %609, i32 0, i32 58
  %620 = load i32, ptr %619, align 8
  br label %621

621:                                              ; preds = %618, %592, %583
  %622 = phi i32 [ %582, %583 ], [ %620, %618 ], [ %582, %592 ]
  %623 = phi ptr [ %580, %583 ], [ %609, %618 ], [ %580, %592 ]
  %624 = icmp eq i32 %622, 3
  br i1 %624, label %625, label %630

625:                                              ; preds = %621
  %626 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %623, i32 0, i32 6
  %627 = load ptr, ptr %626, align 8
  %628 = getelementptr inbounds %struct.ieee80211_hdr, ptr %571, i32 0, i32 3
  %629 = call zeroext i1 @cfg80211_rx_spurious_frame(ptr noundef %627, ptr noundef %628, i32 noundef 2592) #13
  br i1 %629, label %845, label %630

630:                                              ; preds = %625, %621
  br label %845

631:                                              ; preds = %613, %587, %579, %579, %570
  %632 = phi i16 [ %617, %613 ], [ %573, %579 ], [ %573, %579 ], [ %573, %587 ], [ %573, %570 ]
  %633 = phi ptr [ %616, %613 ], [ %571, %579 ], [ %571, %579 ], [ %571, %587 ], [ %571, %570 ]
  %634 = phi ptr [ %614, %613 ], [ %572, %579 ], [ %572, %579 ], [ %572, %587 ], [ %572, %570 ]
  %635 = getelementptr inbounds %struct.sk_buff, ptr %634, i32 0, i32 17
  %636 = getelementptr inbounds %struct.ieee80211_rx_data, ptr %0, i32 0, i32 4
  %637 = load ptr, ptr %636, align 4
  %638 = and i16 %632, 140
  %639 = icmp eq i16 %638, 136
  br i1 %639, label %640, label %836

640:                                              ; preds = %631
  %641 = getelementptr inbounds %struct.ieee80211_hdr, ptr %633, i32 0, i32 2
  %642 = load i32, ptr %641, align 4
  %643 = and i32 %642, 1
  %644 = icmp eq i32 %643, 0
  %645 = icmp ne ptr %637, null
  %646 = select i1 %644, i1 %645, i1 false
  br i1 %646, label %647, label %836

647:                                              ; preds = %640
  %648 = and i16 %632, 768
  %649 = icmp eq i16 %648, 768
  %650 = select i1 %649, i32 30, i32 24
  %651 = getelementptr i8, ptr %633, i32 %650
  %652 = load i8, ptr %651, align 1
  %653 = and i8 %652, 96
  %654 = and i8 %652, 15
  %655 = zext i8 %654 to i32
  %656 = getelementptr %struct.sta_info, ptr %637, i32 0, i32 38, i32 1, i32 %655
  %657 = load volatile ptr, ptr %656, align 4
  %658 = icmp eq ptr %657, null
  br i1 %658, label %659, label %676

659:                                              ; preds = %647
  %660 = icmp eq i8 %653, 96
  br i1 %660, label %661, label %836

661:                                              ; preds = %659
  %662 = getelementptr inbounds %struct.sta_info, ptr %637, i32 0, i32 38, i32 6
  %663 = load volatile i32, ptr %662, align 4
  %664 = shl nuw nsw i32 1, %655
  %665 = and i32 %663, %664
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %667, label %836

667:                                              ; preds = %661
  %668 = getelementptr inbounds %struct.sta_info, ptr %637, i32 0, i32 38, i32 7
  %669 = call i32 @_test_and_set_bit(i32 noundef %655, ptr noundef %668) #13
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %671, label %836

671:                                              ; preds = %667
  %672 = load ptr, ptr %8, align 4
  %673 = load ptr, ptr %636, align 4
  %674 = getelementptr inbounds %struct.sta_info, ptr %673, i32 0, i32 46, i32 1
  %675 = zext i8 %654 to i16
  call void @ieee80211_send_delba(ptr noundef %672, ptr noundef %674, i16 noundef zeroext %675, i16 noundef zeroext 0, i16 noundef zeroext 38) #13
  br label %836

676:                                              ; preds = %647
  %677 = and i16 %632, 64
  %678 = icmp eq i16 %677, 0
  br i1 %678, label %679, label %836, !prof !26

679:                                              ; preds = %676
  %680 = trunc i8 %653 to i7
  switch i7 %680, label %836 [
    i7 -32, label %681
    i7 0, label %681
  ]

681:                                              ; preds = %679, %679
  %682 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %657, i32 0, i32 13
  %683 = load i16, ptr %682, align 8
  %684 = icmp eq i16 %683, 0
  br i1 %684, label %688, label %685

685:                                              ; preds = %681
  %686 = load volatile i32, ptr @jiffies, align 64
  %687 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %657, i32 0, i32 8
  store i32 %686, ptr %687, align 4
  br label %688

688:                                              ; preds = %685, %681
  %689 = getelementptr inbounds %struct.ieee80211_hdr, ptr %633, i32 0, i32 5
  %690 = load i16, ptr %689, align 2
  %691 = and i16 %690, 15
  %692 = icmp eq i16 %691, 0
  br i1 %692, label %700, label %693

693:                                              ; preds = %688
  %694 = load ptr, ptr %8, align 4
  %695 = getelementptr inbounds %struct.sk_buff, ptr %634, i32 0, i32 13, i32 0, i32 16
  store i16 0, ptr %695, align 8
  %696 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %694, i32 0, i32 41
  call void @skb_queue_tail(ptr noundef %696, ptr noundef %634) #13
  %697 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %694, i32 0, i32 7
  %698 = load ptr, ptr %697, align 4
  %699 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %694, i32 0, i32 40
  call void @ieee80211_queue_work(ptr noundef %698, ptr noundef %699) #13
  br label %844

700:                                              ; preds = %688
  %701 = load ptr, ptr %635, align 4
  %702 = getelementptr inbounds %struct.ieee80211_hdr, ptr %701, i32 0, i32 5
  %703 = load i16, ptr %702, align 2
  %704 = lshr i16 %703, 4
  %705 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %657, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %705) #13
  %706 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %657, i32 0, i32 15
  %707 = load i8, ptr %706, align 1
  %708 = and i8 %707, 1
  %709 = icmp eq i8 %708, 0
  br i1 %709, label %710, label %713, !prof !26

710:                                              ; preds = %700
  %711 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %657, i32 0, i32 9
  %712 = load i16, ptr %711, align 8
  br label %717

713:                                              ; preds = %700
  %714 = and i8 %707, -2
  store i8 %714, ptr %706, align 1
  %715 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %657, i32 0, i32 11
  store i16 %704, ptr %715, align 4
  %716 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %657, i32 0, i32 9
  store i16 %704, ptr %716, align 8
  br label %717

717:                                              ; preds = %713, %710
  %718 = phi i8 [ %707, %710 ], [ %714, %713 ]
  %719 = phi i16 [ %712, %710 ], [ %704, %713 ]
  %720 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %657, i32 0, i32 12
  %721 = load i16, ptr %720, align 2
  %722 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %657, i32 0, i32 9
  %723 = and i8 %718, 4
  %724 = icmp eq i8 %723, 0
  %725 = zext i16 %704 to i32
  %726 = zext i16 %719 to i32
  %727 = sub nsw i32 %725, %726
  %728 = and i32 %727, 4095
  %729 = icmp ugt i32 %728, 2048
  br i1 %724, label %730, label %733, !prof !9

730:                                              ; preds = %717
  br i1 %729, label %833, label %731

731:                                              ; preds = %730
  %732 = or i8 %718, 4
  store i8 %732, ptr %706, align 1
  br label %737

733:                                              ; preds = %717
  br i1 %729, label %734, label %737

734:                                              ; preds = %733
  call void @consume_skb(ptr noundef %634) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  %735 = load i16, ptr %705, align 4
  %736 = add i16 %735, 1
  store i16 %736, ptr %705, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  br label %844

737:                                              ; preds = %733, %731
  %738 = add i16 %721, %719
  %739 = zext i16 %738 to i32
  %740 = sub nsw i32 %725, %739
  %741 = and i32 %740, 4095
  %742 = icmp ugt i32 %741, 2048
  br i1 %742, label %772, label %743

743:                                              ; preds = %737
  %744 = add nuw nsw i16 %704, 1
  %745 = sub i16 %744, %721
  %746 = and i16 %745, 4095
  %747 = zext i16 %746 to i32
  %748 = sub nsw i32 %726, %747
  %749 = and i32 %748, 4095
  %750 = icmp ugt i32 %749, 2048
  br i1 %750, label %751, label %772

751:                                              ; preds = %743
  %752 = urem i16 %719, %721
  %753 = zext i16 %752 to i32
  call fastcc void @ieee80211_release_reorder_frame(ptr noundef nonnull %657, i32 noundef %753, ptr noundef nonnull %5) #13
  %754 = load i16, ptr %722, align 8
  %755 = zext i16 %754 to i32
  %756 = sub nsw i32 %755, %747
  %757 = and i32 %756, 4095
  %758 = icmp ugt i32 %757, 2048
  br i1 %758, label %759, label %769

759:                                              ; preds = %759, %751
  %760 = phi i16 [ %764, %759 ], [ %754, %751 ]
  %761 = load i16, ptr %720, align 2
  %762 = urem i16 %760, %761
  %763 = zext i16 %762 to i32
  call fastcc void @ieee80211_release_reorder_frame(ptr noundef nonnull %657, i32 noundef %763, ptr noundef nonnull %5) #13
  %764 = load i16, ptr %722, align 8
  %765 = zext i16 %764 to i32
  %766 = sub nsw i32 %765, %747
  %767 = and i32 %766, 4095
  %768 = icmp ugt i32 %767, 2048
  br i1 %768, label %759, label %769

769:                                              ; preds = %759, %751
  %770 = phi i16 [ %754, %751 ], [ %764, %759 ]
  %771 = load i16, ptr %720, align 2
  br label %772

772:                                              ; preds = %769, %743, %737
  %773 = phi i16 [ %770, %769 ], [ %719, %743 ], [ %719, %737 ]
  %774 = phi i16 [ %771, %769 ], [ %721, %743 ], [ %721, %737 ]
  %775 = urem i16 %704, %774
  %776 = zext i16 %775 to i32
  %777 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %657, i32 0, i32 3
  %778 = load ptr, ptr %777, align 8
  %779 = getelementptr %struct.sk_buff_head, ptr %778, i32 %776
  %780 = getelementptr inbounds %struct.anon.123, ptr %779, i32 0, i32 1
  %781 = load volatile ptr, ptr %780, align 4
  %782 = icmp eq ptr %781, %779
  %783 = select i1 %782, ptr null, ptr %781
  %784 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %657, i32 0, i32 2
  %785 = load i64, ptr %784, align 8
  %786 = zext i16 %775 to i64
  %787 = shl nuw i64 1, %786
  %788 = and i64 %785, %787
  %789 = icmp eq i64 %788, 0
  br i1 %789, label %790, label %797

790:                                              ; preds = %772
  %791 = icmp eq ptr %783, null
  br i1 %791, label %800, label %792

792:                                              ; preds = %790
  %793 = getelementptr inbounds %struct.sk_buff, ptr %783, i32 0, i32 3, i32 24
  %794 = load i32, ptr %793, align 8
  %795 = and i32 %794, 524288
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %797, label %800

797:                                              ; preds = %792, %772
  call void @consume_skb(ptr noundef %634) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  %798 = load i16, ptr %705, align 4
  %799 = add i16 %798, 1
  store i16 %799, ptr %705, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  br label %844

800:                                              ; preds = %792, %790
  %801 = icmp eq i16 %704, %773
  br i1 %801, label %802, label %814

802:                                              ; preds = %800
  %803 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %657, i32 0, i32 10
  %804 = load i16, ptr %803, align 2
  %805 = icmp eq i16 %804, 0
  br i1 %805, label %806, label %814

806:                                              ; preds = %802
  %807 = getelementptr inbounds %struct.sk_buff, ptr %634, i32 0, i32 3, i32 24
  %808 = load i32, ptr %807, align 8
  %809 = and i32 %808, 524288
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %811, label %833

811:                                              ; preds = %806
  %812 = add nuw nsw i16 %704, 1
  %813 = and i16 %812, 4095
  store i16 %813, ptr %722, align 8
  br label %833

814:                                              ; preds = %802, %800
  store volatile ptr %779, ptr %634, align 8
  %815 = getelementptr inbounds %struct.anon.49, ptr %634, i32 0, i32 1
  store volatile ptr %781, ptr %815, align 4
  store volatile ptr %634, ptr %780, align 4
  store volatile ptr %634, ptr %781, align 4
  %816 = getelementptr %struct.sk_buff_head, ptr %778, i32 %776, i32 1
  %817 = load i32, ptr %816, align 4
  %818 = add i32 %817, 1
  store volatile i32 %818, ptr %816, align 4
  %819 = getelementptr inbounds %struct.sk_buff, ptr %634, i32 0, i32 3, i32 24
  %820 = load i32, ptr %819, align 8
  %821 = and i32 %820, 524288
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %823, label %841

823:                                              ; preds = %814
  %824 = load volatile i32, ptr @jiffies, align 64
  %825 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %657, i32 0, i32 4
  %826 = load ptr, ptr %825, align 4
  %827 = getelementptr i32, ptr %826, i32 %776
  store i32 %824, ptr %827, align 4
  %828 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %657, i32 0, i32 10
  %829 = load i16, ptr %828, align 2
  %830 = add i16 %829, 1
  store i16 %830, ptr %828, align 2
  call fastcc void @ieee80211_sta_reorder_release(ptr noundef nonnull %657, ptr noundef nonnull %5) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  %831 = load i16, ptr %705, align 4
  %832 = add i16 %831, 1
  store i16 %832, ptr %705, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  br label %844

833:                                              ; preds = %811, %806, %730
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  %834 = load i16, ptr %705, align 4
  %835 = add i16 %834, 1
  store i16 %835, ptr %705, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  br label %836

836:                                              ; preds = %833, %679, %676, %671, %667, %661, %659, %640, %631
  %837 = load ptr, ptr %515, align 4
  store volatile ptr %5, ptr %634, align 8
  %838 = getelementptr inbounds %struct.anon.49, ptr %634, i32 0, i32 1
  store volatile ptr %837, ptr %838, align 4
  store volatile ptr %634, ptr %515, align 4
  store volatile ptr %634, ptr %837, align 4
  %839 = load i32, ptr %516, align 4
  %840 = add i32 %839, 1
  store volatile i32 %840, ptr %516, align 4
  br label %844

841:                                              ; preds = %814
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  %842 = load i16, ptr %705, align 4
  %843 = add i16 %842, 1
  store i16 %843, ptr %705, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  br label %844

844:                                              ; preds = %841, %836, %823, %797, %734, %693
  call fastcc void @ieee80211_rx_handlers(ptr noundef %0, ptr noundef nonnull %5) #13
  br label %847

845:                                              ; preds = %630, %625, %604, %566
  %846 = phi i32 [ 1, %566 ], [ 2, %630 ], [ 1, %625 ], [ 2, %604 ]
  call fastcc void @ieee80211_rx_handlers_result(ptr noundef %0, i32 noundef %846) #13
  br label %847

847:                                              ; preds = %845, %844
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %848

848:                                              ; preds = %847, %506, %503, %495, %494, %492, %489, %471, %463, %454, %447, %443, %428, %397, %386, %339, %329, %325, %323, %299, %291, %260, %246, %244, %232, %208, %203, %180, %145, %140
  %849 = phi i1 [ true, %847 ], [ false, %495 ], [ true, %506 ], [ true, %503 ], [ true, %140 ], [ true, %145 ], [ true, %180 ], [ false, %447 ], [ false, %397 ], [ false, %386 ], [ false, %232 ], [ false, %471 ], [ false, %208 ], [ false, %244 ], [ false, %260 ], [ false, %246 ], [ false, %291 ], [ false, %299 ], [ false, %323 ], [ false, %325 ], [ false, %329 ], [ false, %339 ], [ false, %428 ], [ false, %454 ], [ false, %463 ], [ false, %203 ], [ false, %494 ], [ false, %492 ], [ false, %489 ], [ false, %443 ]
  ret i1 %849
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_hash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pskb_trim(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @___pskb_trim(ptr noundef %0, i32 noundef %1) #13
  br label %17

12:                                               ; preds = %6
  store i32 %1, ptr %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %1
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  store ptr %15, ptr %16, align 8
  br label %17

17:                                               ; preds = %12, %10, %2
  %18 = phi i32 [ 0, %2 ], [ %11, %10 ], [ 0, %12 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ibss_rx_no_sta(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ocb_rx_no_sta(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_rx_spurious_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { cold nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 556109, i64 2148046080, i64 2148046106, i64 2148046153, i64 2148046175, i64 2148046203, i64 2148046223}
!11 = !{i64 2148057495, i64 2148057521, i64 2148057550, i64 2148057584, i64 2148057615, i64 2148057638}
!12 = !{i64 2158014123}
!13 = !{i64 2158014307}
!14 = !{i64 2157514205}
!15 = !{i64 2157514357}
!16 = !{!"auto-init"}
!17 = !{i64 2149109170}
!18 = !{i64 2149104994}
!19 = !{i64 2149105069, i64 2149105096, i64 2149105143, i64 2149105165, i64 2149105193, i64 2149105213}
!20 = !{i64 2149132173}
!21 = !{i64 2158458954}
!22 = !{i64 2158459142}
!23 = !{i8 0, i8 2}
!24 = !{i64 2149352274}
!25 = !{i64 2149352575}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{!"branch_weights", i32 2000, i32 2002}
!28 = !{!"branch_weights", i32 2000, i32 4002000, i32 1}
!29 = !{!"branch_weights", i32 4001, i32 1}
!30 = !{i64 2149507942}
!31 = !{i64 2149508159}
!32 = !{i64 2159428472}
!33 = !{i64 2159428686}
!34 = !{i64 2159911955}
!35 = !{i64 470048}
!36 = !{!"branch_weights", i32 -294967296, i32 2002000, i32 2001000, i32 2000000}
!37 = !{!"branch_weights", i32 2146410443, i32 1073205}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.peeled.count", i32 1}
!40 = !{!"branch_weights", i32 1, i32 4001}
!41 = !{!"branch_weights", i32 -102759400, i32 -94372889}
