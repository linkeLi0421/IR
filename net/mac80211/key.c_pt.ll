; ModuleID = '/llk/IR/net/mac80211/key.c_pt.bc'
source_filename = "../net/mac80211/key.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_iter_keys:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_iter_keys\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_iter_keys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_iter_keys_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_iter_keys_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_iter_keys_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_gtk_rekey_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_gtk_rekey_notify\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_gtk_rekey_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_key_rx_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_key_rx_seq\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_key_rx_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_set_key_rx_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_set_key_rx_seq\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_set_key_rx_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_remove_key:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_remove_key\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_remove_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_gtk_rekey_add:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_gtk_rekey_add\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_gtk_rekey_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_key_mic_failure:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_key_mic_failure\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_key_mic_failure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_key_replay:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_key_replay\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_key_replay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.ieee80211_key = type { ptr, ptr, ptr, %struct.list_head, i32, %union.anon.171, i32, %struct.ieee80211_key_conf }
%struct.list_head = type { ptr, ptr }
%union.anon.171 = type { %struct.anon.172 }
%struct.anon.172 = type { %struct.spinlock, %struct.tkip_ctx, [16 x %struct.tkip_ctx_rx], i32 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.tkip_ctx = type { [5 x i16], i32, i32 }
%struct.tkip_ctx_rx = type { %struct.tkip_ctx, i32, i16 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.135, [17 x i16], %struct.anon.136, %struct.anon.137, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.119, i32, %struct.spinlock }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { ptr, ptr }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.118, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.118 = type { i32, i16 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.134, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.134 = type { %struct.ieee80211_if_mesh }
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
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.anon.125 = type { i32, i16 }

@.str = private unnamed_addr constant [19 x i8] c"net/mac80211/key.c\00", align 1
@ieee80211_key_link.key_color = internal global %struct.atomic_t zeroinitializer, align 4
@__kstrtab_ieee80211_iter_keys = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_iter_keys = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_iter_keys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_iter_keys to i32), ptr @__kstrtab_ieee80211_iter_keys, ptr @__kstrtabns_ieee80211_iter_keys }, section "___ksymtab+ieee80211_iter_keys", align 4
@__kstrtab_ieee80211_iter_keys_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_iter_keys_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_iter_keys_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_iter_keys_rcu to i32), ptr @__kstrtab_ieee80211_iter_keys_rcu, ptr @__kstrtabns_ieee80211_iter_keys_rcu }, section "___ksymtab+ieee80211_iter_keys_rcu", align 4
@ieee80211_free_keys.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_free_keys.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_free_keys.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ieee80211_gtk_rekey_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_gtk_rekey_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_gtk_rekey_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_gtk_rekey_notify to i32), ptr @__kstrtab_ieee80211_gtk_rekey_notify, ptr @__kstrtabns_ieee80211_gtk_rekey_notify }, section "___ksymtab_gpl+ieee80211_gtk_rekey_notify", align 4
@__kstrtab_ieee80211_get_key_rx_seq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_key_rx_seq = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_key_rx_seq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_key_rx_seq to i32), ptr @__kstrtab_ieee80211_get_key_rx_seq, ptr @__kstrtabns_ieee80211_get_key_rx_seq }, section "___ksymtab+ieee80211_get_key_rx_seq", align 4
@__kstrtab_ieee80211_set_key_rx_seq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_set_key_rx_seq = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_set_key_rx_seq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_set_key_rx_seq to i32), ptr @__kstrtab_ieee80211_set_key_rx_seq, ptr @__kstrtabns_ieee80211_set_key_rx_seq }, section "___ksymtab_gpl+ieee80211_set_key_rx_seq", align 4
@__kstrtab_ieee80211_remove_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_remove_key = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_remove_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_remove_key to i32), ptr @__kstrtab_ieee80211_remove_key, ptr @__kstrtabns_ieee80211_remove_key }, section "___ksymtab_gpl+ieee80211_remove_key", align 4
@__kstrtab_ieee80211_gtk_rekey_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_gtk_rekey_add = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_gtk_rekey_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_gtk_rekey_add to i32), ptr @__kstrtab_ieee80211_gtk_rekey_add, ptr @__kstrtabns_ieee80211_gtk_rekey_add }, section "___ksymtab_gpl+ieee80211_gtk_rekey_add", align 4
@__kstrtab_ieee80211_key_mic_failure = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_key_mic_failure = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_key_mic_failure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_key_mic_failure to i32), ptr @__kstrtab_ieee80211_key_mic_failure, ptr @__kstrtabns_ieee80211_key_mic_failure }, section "___ksymtab_gpl+ieee80211_key_mic_failure", align 4
@__kstrtab_ieee80211_key_replay = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_key_replay = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_key_replay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_key_replay to i32), ptr @__kstrtab_ieee80211_key_replay, ptr @__kstrtabns_ieee80211_key_replay }, section "___ksymtab_gpl+ieee80211_key_replay", align 4
@drv_set_default_unicast_key.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@drv_set_default_unicast_key.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_set_default_unicast_key = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"ccm(aes)\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"gcm(aes)\00", align 1
@ieee80211_pairwise_rekey._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.ieee80211_pairwise_rekey = private unnamed_addr constant [25 x i8] c"ieee80211_pairwise_rekey\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"\014Rekeying PTK for STA %pM but driver can't safely do that.\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"\013%s: failed to remove key (%d, %pM) from hardware (%d)\0A\00", align 1
@bcast_addr = internal constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@drv_set_key.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_set_key = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@.str.12 = private unnamed_addr constant [52 x i8] c"\013%s: failed to set key (%d, %pM) to hardware (%d)\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@decrease_tailroom_need_count.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_api_gtk_rekey_notify = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_ieee80211_get_key_rx_seq, ptr @__ksymtab_ieee80211_gtk_rekey_add, ptr @__ksymtab_ieee80211_gtk_rekey_notify, ptr @__ksymtab_ieee80211_iter_keys, ptr @__ksymtab_ieee80211_iter_keys_rcu, ptr @__ksymtab_ieee80211_key_mic_failure, ptr @__ksymtab_ieee80211_key_replay, ptr @__ksymtab_ieee80211_remove_key, ptr @__ksymtab_ieee80211_set_key_rx_seq], section "llvm.metadata"
@switch.table.ieee80211_key_replay = private unnamed_addr constant [10 x i32] [i32 -372, i32 -372, i32 -468, i32 -372, i32 -372, i32 -372, i32 -372, i32 -468, i32 -468, i32 -468], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_set_tx_key(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 26, ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7, i32 5
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 9
  store i8 %7, ptr %8, align 8
  %9 = getelementptr %struct.ieee80211_hw, ptr %4, i32 0, i32 4, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %5) #10
  br label %14

14:                                               ; preds = %13, %1
  tail call void @ieee80211_check_fast_xmit(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_set_default_key(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 65
  tail call void @mutex_lock(ptr noundef %7) #10
  tail call fastcc void @__ieee80211_set_default_key(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3)
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %8, i32 0, i32 65
  tail call void @mutex_unlock(ptr noundef %9) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ieee80211_set_default_key(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = icmp ult i32 %1, 4
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 14, i32 %1
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ %9, %7 ], [ null, %4 ]
  br i1 %2, label %12, label %79

12:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 15
  store volatile ptr %11, ptr %13, align 8
  tail call void @ieee80211_check_fast_xmit_iface(ptr noundef %0) #10
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %79, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  %23 = load i1, ptr @drv_set_default_unicast_key.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %32, !prof !9

26:                                               ; preds = %17
  store i1 true, ptr @drv_set_default_unicast_key.__already_done, align 1
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %31 = select i1 %29, ptr %30, ptr %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1008, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %31, i32 noundef %20) #10
  br label %32

32:                                               ; preds = %26, %17
  br i1 %22, label %79, label %33

33:                                               ; preds = %32
  %34 = add i32 %1, -4
  %35 = icmp ult i32 %34, -5
  %36 = load i1, ptr @drv_set_default_unicast_key.__already_done.6, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !9

39:                                               ; preds = %33
  store i1 true, ptr @drv_set_default_unicast_key.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1011, i32 noundef 9, ptr noundef null) #10
  br label %40

40:                                               ; preds = %39, %33
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_set_default_unicast_key, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = tail call ptr @llvm.thread.pointer() #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %55 = tail call i32 @__traceiter_drv_set_default_unicast_key(ptr noundef null, ptr noundef %18, ptr noundef %0, i32 noundef %1) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %56

56:                                               ; preds = %54, %43, %40
  %57 = getelementptr inbounds %struct.ieee80211_local, ptr %18, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.ieee80211_ops, ptr %58, i32 0, i32 20
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  tail call void %60(ptr noundef %18, ptr noundef %14, i32 noundef %1) #10
  br label %63

63:                                               ; preds = %62, %56
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = tail call ptr @llvm.thread.pointer() #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %78 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %18) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %79

79:                                               ; preds = %77, %66, %63, %32, %12, %10
  br i1 %3, label %80, label %82

80:                                               ; preds = %79
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %81 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 16
  store volatile ptr %11, ptr %81, align 4
  br label %82

82:                                               ; preds = %80, %79
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_set_default_mgmt_key(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 65
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = and i32 %1, -2
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 14, i32 %1
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 17
  store volatile ptr %12, ptr %13, align 8
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.ieee80211_local, ptr %14, i32 0, i32 65
  tail call void @mutex_unlock(ptr noundef %15) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_set_default_beacon_key(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 65
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = and i32 %1, -2
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 14, i32 %1
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 18
  store volatile ptr %12, ptr %13, align 4
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.ieee80211_local, ptr %14, i32 0, i32 65
  tail call void @mutex_unlock(ptr noundef %15) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_key_alloc(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef readonly %5, ptr noundef readonly %6) local_unnamed_addr #0 {
  %8 = icmp ugt i32 %1, 7
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 542, i32 noundef 9, ptr noundef null) #10
  br label %272

10:                                               ; preds = %7
  %11 = add i32 %2, 528
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %272, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 6
  store i16 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 4
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 1
  store i32 %0, ptr %17, align 64
  %18 = trunc i32 %1 to i8
  %19 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 5
  store i8 %18, ptr %19, align 1
  %20 = trunc i32 %2 to i8
  %21 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 7
  store i8 %20, ptr %21, align 2
  switch i32 %0, label %233 [
    i32 1027073, label %22
    i32 1027077, label %22
    i32 1027074, label %25
    i32 1027076, label %81
    i32 1027082, label %113
    i32 1027078, label %145
    i32 1027085, label %145
    i32 1027083, label %174
    i32 1027084, label %174
    i32 1027080, label %201
    i32 1027081, label %201
  ]

22:                                               ; preds = %14, %14
  %23 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 3
  store i8 4, ptr %23, align 1
  %24 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 2
  store i8 4, ptr %24, align 4
  br label %268

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 3
  store i8 8, ptr %26, align 1
  %27 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 2
  store i8 4, ptr %27, align 4
  %28 = icmp eq ptr %5, null
  br i1 %28, label %79, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %5, i32 2
  %31 = load i32, ptr %30, align 1
  %32 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 0, i32 1
  store i32 %31, ptr %32, align 4
  %33 = load i16, ptr %5, align 1
  %34 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 0, i32 2
  store i16 %33, ptr %34, align 8
  %35 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 1, i32 1
  store i32 %31, ptr %35, align 32
  %36 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 1, i32 2
  store i16 %33, ptr %36, align 4
  %37 = load i32, ptr %30, align 1
  %38 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 2, i32 1
  store i32 %37, ptr %38, align 4
  %39 = load i16, ptr %5, align 1
  %40 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 2, i32 2
  store i16 %39, ptr %40, align 64
  %41 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 3, i32 1
  store i32 %37, ptr %41, align 8
  %42 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 3, i32 2
  store i16 %39, ptr %42, align 4
  %43 = load i32, ptr %30, align 1
  %44 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 4, i32 1
  store i32 %43, ptr %44, align 4
  %45 = load i16, ptr %5, align 1
  %46 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 4, i32 2
  store i16 %45, ptr %46, align 8
  %47 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 5, i32 1
  store i32 %43, ptr %47, align 16
  %48 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 5, i32 2
  store i16 %45, ptr %48, align 4
  %49 = load i32, ptr %30, align 1
  %50 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 6, i32 1
  store i32 %49, ptr %50, align 4
  %51 = load i16, ptr %5, align 1
  %52 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 6, i32 2
  store i16 %51, ptr %52, align 16
  %53 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 7, i32 1
  store i32 %49, ptr %53, align 8
  %54 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 7, i32 2
  store i16 %51, ptr %54, align 4
  %55 = load i32, ptr %30, align 1
  %56 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 8, i32 1
  store i32 %55, ptr %56, align 4
  %57 = load i16, ptr %5, align 1
  %58 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 8, i32 2
  store i16 %57, ptr %58, align 8
  %59 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 9, i32 1
  store i32 %55, ptr %59, align 64
  %60 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 9, i32 2
  store i16 %57, ptr %60, align 4
  %61 = load i32, ptr %30, align 1
  %62 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 10, i32 1
  store i32 %61, ptr %62, align 4
  %63 = load i16, ptr %5, align 1
  %64 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 10, i32 2
  store i16 %63, ptr %64, align 32
  %65 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 11, i32 1
  store i32 %61, ptr %65, align 8
  %66 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 11, i32 2
  store i16 %63, ptr %66, align 4
  %67 = load i32, ptr %30, align 1
  %68 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 12, i32 1
  store i32 %67, ptr %68, align 4
  %69 = load i16, ptr %5, align 1
  %70 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 12, i32 2
  store i16 %69, ptr %70, align 8
  %71 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 13, i32 1
  store i32 %67, ptr %71, align 16
  %72 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 13, i32 2
  store i16 %69, ptr %72, align 4
  %73 = load i32, ptr %30, align 1
  %74 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 14, i32 1
  store i32 %73, ptr %74, align 4
  %75 = load i16, ptr %5, align 1
  %76 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 14, i32 2
  store i16 %75, ptr %76, align 16
  %77 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 15, i32 1
  store i32 %73, ptr %77, align 8
  %78 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 15, i32 2
  store i16 %75, ptr %78, align 4
  br label %79

79:                                               ; preds = %29, %25
  %80 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 5
  store i32 0, ptr %80, align 8
  br label %268

81:                                               ; preds = %14
  %82 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 3
  store i8 8, ptr %82, align 1
  %83 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 2
  store i8 8, ptr %83, align 4
  %84 = icmp eq ptr %5, null
  br i1 %84, label %108, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 5
  %87 = getelementptr i8, ptr %5, i32 5
  %88 = getelementptr i8, ptr %5, i32 4
  %89 = getelementptr i8, ptr %5, i32 3
  %90 = getelementptr i8, ptr %5, i32 2
  %91 = getelementptr i8, ptr %5, i32 1
  %92 = load i8, ptr %87, align 1
  %93 = load i8, ptr %88, align 1
  %94 = load i8, ptr %89, align 1
  %95 = load i8, ptr %90, align 1
  %96 = load i8, ptr %91, align 1
  %97 = load i8, ptr %5, align 1
  br label %98

98:                                               ; preds = %98, %85
  %99 = phi i32 [ 0, %85 ], [ %106, %98 ]
  %100 = getelementptr [17 x [6 x i8]], ptr %86, i32 0, i32 %99, i32 0
  store i8 %92, ptr %100, align 2
  %101 = getelementptr [17 x [6 x i8]], ptr %86, i32 0, i32 %99, i32 1
  store i8 %93, ptr %101, align 1
  %102 = getelementptr [17 x [6 x i8]], ptr %86, i32 0, i32 %99, i32 2
  store i8 %94, ptr %102, align 2
  %103 = getelementptr [17 x [6 x i8]], ptr %86, i32 0, i32 %99, i32 3
  store i8 %95, ptr %103, align 1
  %104 = getelementptr [17 x [6 x i8]], ptr %86, i32 0, i32 %99, i32 4
  store i8 %96, ptr %104, align 2
  %105 = getelementptr [17 x [6 x i8]], ptr %86, i32 0, i32 %99, i32 5
  store i8 %97, ptr %105, align 1
  %106 = add nuw nsw i32 %99, 1
  %107 = icmp eq i32 %106, 17
  br i1 %107, label %108, label %98

108:                                              ; preds = %98, %81
  %109 = tail call ptr @aead_key_setup_encrypt(ptr noundef nonnull @.str.8, ptr noundef %3, i32 noundef %2, i32 noundef 8) #10
  %110 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 2, i32 2
  store ptr %109, ptr %110, align 64
  %111 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %111, label %112, label %268

112:                                              ; preds = %108
  tail call void @kfree(ptr noundef nonnull %12) #10
  br label %272

113:                                              ; preds = %14
  %114 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 3
  store i8 8, ptr %114, align 1
  %115 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 2
  store i8 16, ptr %115, align 4
  %116 = icmp eq ptr %5, null
  br i1 %116, label %140, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 5
  %119 = getelementptr i8, ptr %5, i32 5
  %120 = getelementptr i8, ptr %5, i32 4
  %121 = getelementptr i8, ptr %5, i32 3
  %122 = getelementptr i8, ptr %5, i32 2
  %123 = getelementptr i8, ptr %5, i32 1
  %124 = load i8, ptr %119, align 1
  %125 = load i8, ptr %120, align 1
  %126 = load i8, ptr %121, align 1
  %127 = load i8, ptr %122, align 1
  %128 = load i8, ptr %123, align 1
  %129 = load i8, ptr %5, align 1
  br label %130

130:                                              ; preds = %130, %117
  %131 = phi i32 [ 0, %117 ], [ %138, %130 ]
  %132 = getelementptr [17 x [6 x i8]], ptr %118, i32 0, i32 %131, i32 0
  store i8 %124, ptr %132, align 2
  %133 = getelementptr [17 x [6 x i8]], ptr %118, i32 0, i32 %131, i32 1
  store i8 %125, ptr %133, align 1
  %134 = getelementptr [17 x [6 x i8]], ptr %118, i32 0, i32 %131, i32 2
  store i8 %126, ptr %134, align 2
  %135 = getelementptr [17 x [6 x i8]], ptr %118, i32 0, i32 %131, i32 3
  store i8 %127, ptr %135, align 1
  %136 = getelementptr [17 x [6 x i8]], ptr %118, i32 0, i32 %131, i32 4
  store i8 %128, ptr %136, align 2
  %137 = getelementptr [17 x [6 x i8]], ptr %118, i32 0, i32 %131, i32 5
  store i8 %129, ptr %137, align 1
  %138 = add nuw nsw i32 %131, 1
  %139 = icmp ult i32 %131, 16
  br i1 %139, label %130, label %140

140:                                              ; preds = %130, %113
  %141 = tail call ptr @aead_key_setup_encrypt(ptr noundef nonnull @.str.8, ptr noundef %3, i32 noundef %2, i32 noundef 16) #10
  %142 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 2, i32 2
  store ptr %141, ptr %142, align 64
  %143 = icmp ugt ptr %141, inttoptr (i32 -4096 to ptr)
  br i1 %143, label %144, label %268

144:                                              ; preds = %140
  tail call void @kfree(ptr noundef nonnull %12) #10
  br label %272

145:                                              ; preds = %14, %14
  %146 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 3
  store i8 0, ptr %146, align 1
  %147 = icmp eq i32 %0, 1027078
  %148 = select i1 %147, i8 18, i8 26
  %149 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 2
  store i8 %148, ptr %149, align 4
  %150 = icmp eq ptr %5, null
  br i1 %150, label %169, label %151

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 5
  %153 = getelementptr i8, ptr %5, i32 5
  %154 = load i8, ptr %153, align 1
  store i8 %154, ptr %152, align 8
  %155 = getelementptr i8, ptr %5, i32 4
  %156 = load i8, ptr %155, align 1
  %157 = getelementptr [6 x i8], ptr %152, i32 0, i32 1
  store i8 %156, ptr %157, align 1
  %158 = getelementptr i8, ptr %5, i32 3
  %159 = load i8, ptr %158, align 1
  %160 = getelementptr [6 x i8], ptr %152, i32 0, i32 2
  store i8 %159, ptr %160, align 2
  %161 = getelementptr i8, ptr %5, i32 2
  %162 = load i8, ptr %161, align 1
  %163 = getelementptr [6 x i8], ptr %152, i32 0, i32 3
  store i8 %162, ptr %163, align 1
  %164 = getelementptr i8, ptr %5, i32 1
  %165 = load i8, ptr %164, align 1
  %166 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 1
  store i8 %165, ptr %166, align 4
  %167 = load i8, ptr %5, align 1
  %168 = getelementptr [6 x i8], ptr %152, i32 0, i32 5
  store i8 %167, ptr %168, align 1
  br label %169

169:                                              ; preds = %151, %145
  %170 = tail call ptr @ieee80211_aes_cmac_key_setup(ptr noundef %3, i32 noundef %2) #10
  %171 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 1, i32 0, i32 2
  store ptr %170, ptr %171, align 32
  %172 = icmp ugt ptr %170, inttoptr (i32 -4096 to ptr)
  br i1 %172, label %173, label %268

173:                                              ; preds = %169
  tail call void @kfree(ptr noundef nonnull %12) #10
  br label %272

174:                                              ; preds = %14, %14
  %175 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 3
  store i8 0, ptr %175, align 1
  %176 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 2
  store i8 26, ptr %176, align 4
  %177 = icmp eq ptr %5, null
  br i1 %177, label %196, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 5
  %180 = getelementptr i8, ptr %5, i32 5
  %181 = load i8, ptr %180, align 1
  store i8 %181, ptr %179, align 8
  %182 = getelementptr i8, ptr %5, i32 4
  %183 = load i8, ptr %182, align 1
  %184 = getelementptr [6 x i8], ptr %179, i32 0, i32 1
  store i8 %183, ptr %184, align 1
  %185 = getelementptr i8, ptr %5, i32 3
  %186 = load i8, ptr %185, align 1
  %187 = getelementptr [6 x i8], ptr %179, i32 0, i32 2
  store i8 %186, ptr %187, align 2
  %188 = getelementptr i8, ptr %5, i32 2
  %189 = load i8, ptr %188, align 1
  %190 = getelementptr [6 x i8], ptr %179, i32 0, i32 3
  store i8 %189, ptr %190, align 1
  %191 = getelementptr i8, ptr %5, i32 1
  %192 = load i8, ptr %191, align 1
  %193 = getelementptr %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 1
  store i8 %192, ptr %193, align 4
  %194 = load i8, ptr %5, align 1
  %195 = getelementptr [6 x i8], ptr %179, i32 0, i32 5
  store i8 %194, ptr %195, align 1
  br label %196

196:                                              ; preds = %178, %174
  %197 = tail call ptr @ieee80211_aes_gmac_key_setup(ptr noundef %3, i32 noundef %2) #10
  %198 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 1, i32 0, i32 2
  store ptr %197, ptr %198, align 32
  %199 = icmp ugt ptr %197, inttoptr (i32 -4096 to ptr)
  br i1 %199, label %200, label %268

200:                                              ; preds = %196
  tail call void @kfree(ptr noundef nonnull %12) #10
  br label %272

201:                                              ; preds = %14, %14
  %202 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 3
  store i8 8, ptr %202, align 1
  %203 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 2
  store i8 16, ptr %203, align 4
  %204 = icmp eq ptr %5, null
  br i1 %204, label %228, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 5
  %207 = getelementptr i8, ptr %5, i32 5
  %208 = getelementptr i8, ptr %5, i32 4
  %209 = getelementptr i8, ptr %5, i32 3
  %210 = getelementptr i8, ptr %5, i32 2
  %211 = getelementptr i8, ptr %5, i32 1
  %212 = load i8, ptr %207, align 1
  %213 = load i8, ptr %208, align 1
  %214 = load i8, ptr %209, align 1
  %215 = load i8, ptr %210, align 1
  %216 = load i8, ptr %211, align 1
  %217 = load i8, ptr %5, align 1
  br label %218

218:                                              ; preds = %218, %205
  %219 = phi i32 [ 0, %205 ], [ %226, %218 ]
  %220 = getelementptr [17 x [6 x i8]], ptr %206, i32 0, i32 %219, i32 0
  store i8 %212, ptr %220, align 2
  %221 = getelementptr [17 x [6 x i8]], ptr %206, i32 0, i32 %219, i32 1
  store i8 %213, ptr %221, align 1
  %222 = getelementptr [17 x [6 x i8]], ptr %206, i32 0, i32 %219, i32 2
  store i8 %214, ptr %222, align 2
  %223 = getelementptr [17 x [6 x i8]], ptr %206, i32 0, i32 %219, i32 3
  store i8 %215, ptr %223, align 1
  %224 = getelementptr [17 x [6 x i8]], ptr %206, i32 0, i32 %219, i32 4
  store i8 %216, ptr %224, align 2
  %225 = getelementptr [17 x [6 x i8]], ptr %206, i32 0, i32 %219, i32 5
  store i8 %217, ptr %225, align 1
  %226 = add nuw nsw i32 %219, 1
  %227 = icmp ult i32 %219, 16
  br i1 %227, label %218, label %228

228:                                              ; preds = %218, %201
  %229 = tail call ptr @aead_key_setup_encrypt(ptr noundef nonnull @.str.9, ptr noundef %3, i32 noundef %2, i32 noundef 16) #10
  %230 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 5, i32 0, i32 2, i32 2, i32 2
  store ptr %229, ptr %230, align 64
  %231 = icmp ugt ptr %229, inttoptr (i32 -4096 to ptr)
  br i1 %231, label %232, label %268

232:                                              ; preds = %228
  tail call void @kfree(ptr noundef nonnull %12) #10
  br label %272

233:                                              ; preds = %14
  %234 = icmp eq ptr %6, null
  br i1 %234, label %268, label %235

235:                                              ; preds = %233
  %236 = icmp eq i32 %4, 0
  br i1 %236, label %243, label %237

237:                                              ; preds = %235
  %238 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %6, i32 0, i32 3
  %239 = load i8, ptr %238, align 1
  %240 = zext i8 %239 to i32
  %241 = icmp eq i32 %240, %4
  br i1 %241, label %243, label %242

242:                                              ; preds = %237
  tail call void @kfree(ptr noundef nonnull %12) #10
  br label %272

243:                                              ; preds = %237, %235
  %244 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %6, i32 0, i32 2
  %245 = load i8, ptr %244, align 2
  %246 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 3
  store i8 %245, ptr %246, align 1
  %247 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %6, i32 0, i32 8
  %248 = load i8, ptr %247, align 4
  %249 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 2
  store i8 %248, ptr %249, align 4
  %250 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 5
  br label %251

251:                                              ; preds = %262, %243
  %252 = phi i32 [ 0, %243 ], [ %263, %262 ]
  br i1 %236, label %262, label %253

253:                                              ; preds = %253, %251
  %254 = phi i32 [ %260, %253 ], [ 0, %251 ]
  %255 = xor i32 %254, -1
  %256 = add i32 %255, %4
  %257 = getelementptr i8, ptr %5, i32 %256
  %258 = load i8, ptr %257, align 1
  %259 = getelementptr [17 x [16 x i8]], ptr %250, i32 0, i32 %252, i32 %254
  store i8 %258, ptr %259, align 1
  %260 = add nuw i32 %254, 1
  %261 = icmp eq i32 %260, %4
  br i1 %261, label %262, label %253

262:                                              ; preds = %253, %251
  %263 = add nuw nsw i32 %252, 1
  %264 = icmp eq i32 %263, 17
  br i1 %264, label %265, label %251

265:                                              ; preds = %262
  %266 = load i32, ptr %16, align 4
  %267 = or i32 %266, 4
  store i32 %267, ptr %16, align 4
  br label %268

268:                                              ; preds = %265, %233, %228, %196, %169, %140, %108, %79, %22
  %269 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 7, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %269, ptr align 1 %3, i32 %2, i1 false)
  %270 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 3
  store volatile ptr %270, ptr %270, align 4
  %271 = getelementptr inbounds %struct.ieee80211_key, ptr %12, i32 0, i32 3, i32 1
  store ptr %270, ptr %271, align 16
  br label %272

272:                                              ; preds = %268, %242, %232, %200, %173, %144, %112, %10, %9
  %273 = phi ptr [ inttoptr (i32 -22 to ptr), %9 ], [ inttoptr (i32 -22 to ptr), %242 ], [ %12, %268 ], [ %229, %232 ], [ %197, %200 ], [ %170, %173 ], [ %141, %144 ], [ %109, %112 ], [ inttoptr (i32 -12 to ptr), %10 ]
  ret ptr %273
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_aes_cmac_key_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_aes_gmac_key_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_key_free_unused(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !17

8:                                                ; preds = %5, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 761, i32 noundef 9, ptr noundef null) #10
  br label %9

9:                                                ; preds = %8, %5
  tail call fastcc void @ieee80211_key_free_common(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_key_free_common(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7, i32 1
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %16 [
    i32 1027076, label %4
    i32 1027082, label %4
    i32 1027078, label %7
    i32 1027085, label %7
    i32 1027083, label %10
    i32 1027084, label %10
    i32 1027080, label %13
    i32 1027081, label %13
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 5, i32 0, i32 2, i32 2, i32 2
  %6 = load ptr, ptr %5, align 8
  tail call void @aead_key_free(ptr noundef %6) #10
  br label %16

7:                                                ; preds = %1, %1
  %8 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 5, i32 0, i32 1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  tail call void @ieee80211_aes_cmac_key_free(ptr noundef %9) #10
  br label %16

10:                                               ; preds = %1, %1
  %11 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 5, i32 0, i32 1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  tail call void @ieee80211_aes_gmac_key_free(ptr noundef %12) #10
  br label %16

13:                                               ; preds = %1, %1
  %14 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 5, i32 0, i32 2, i32 2, i32 2
  %15 = load ptr, ptr %14, align 8
  tail call void @aead_key_free(ptr noundef %15) #10
  br label %16

16:                                               ; preds = %13, %10, %7, %4, %1
  tail call void @kfree_sensitive(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_key_link(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i8], align 1
  %5 = alloca [32 x i8], align 1
  %6 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7, i32 5
  %7 = load i8, ptr %6, align 1
  %8 = sext i8 %7 to i32
  %9 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7, i32 6
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 8
  %12 = icmp ne i16 %11, 0
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 2
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ieee80211_local, ptr %17, i32 0, i32 65
  tail call void @mutex_lock(ptr noundef %18) #10
  %19 = icmp eq ptr %2, null
  %20 = xor i1 %12, true
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %44, label %22

22:                                               ; preds = %3
  %23 = getelementptr %struct.sta_info, ptr %2, i32 0, i32 8, i32 %8
  %24 = load ptr, ptr %23, align 4
  %25 = xor i32 %8, 1
  %26 = getelementptr %struct.sta_info, ptr %2, i32 0, i32 8, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ieee80211_key, ptr %27, i32 0, i32 7, i32 1
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7, i32 1
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %150

35:                                               ; preds = %29, %22
  %36 = icmp eq ptr %24, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  br label %86

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.ieee80211_key, ptr %24, i32 0, i32 7, i32 1
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7, i32 1
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %49, label %150

44:                                               ; preds = %3
  %45 = getelementptr %struct.sta_info, ptr %2, i32 0, i32 7, i32 %8
  %46 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 14, i32 %8
  %47 = select i1 %19, ptr %46, ptr %45
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi ptr [ %24, %38 ], [ %48, %44 ]
  %51 = icmp ne ptr %50, null
  %52 = select i1 %20, i1 %51, i1 false
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ieee80211_key, ptr %50, i32 0, i32 7, i32 1
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7, i32 1
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %150

59:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false) #10, !annotation !18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false) #10, !annotation !18
  br label %62

60:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false) #10, !annotation !18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false) #10, !annotation !18
  %61 = icmp eq ptr %50, null
  br i1 %61, label %86, label %62

62:                                               ; preds = %60, %59
  %63 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7, i32 7
  %64 = load i8, ptr %63, align 2
  %65 = getelementptr inbounds %struct.ieee80211_key, ptr %50, i32 0, i32 7, i32 7
  %66 = load i8, ptr %65, align 2
  %67 = icmp eq i8 %64, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.ieee80211_key, ptr %50, i32 0, i32 7, i32 8
  %70 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7, i32 8
  %71 = load i32, ptr %13, align 8
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7, i32 1
  %75 = load i32, ptr %74, align 8
  %76 = icmp eq i32 %75, 1027074
  %77 = icmp eq i8 %64, 32
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load i16, ptr %9, align 8
  %81 = and i16 %80, 8
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, ptr noundef align 1 dereferenceable(32) %69, i32 32, i1 false) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, ptr noundef align 1 dereferenceable(32) %70, i32 32, i1 false) #10
  %84 = getelementptr inbounds i8, ptr %4, i32 16
  store i64 0, ptr %84, align 1
  %85 = getelementptr inbounds i8, ptr %5, i32 16
  store i64 0, ptr %85, align 1
  br label %89

86:                                               ; preds = %62, %60, %37
  %87 = phi i1 [ true, %37 ], [ true, %60 ], [ false, %62 ]
  %88 = phi ptr [ null, %37 ], [ null, %60 ], [ %50, %62 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  br label %104

89:                                               ; preds = %83, %79, %73, %68
  %90 = phi ptr [ %69, %79 ], [ %4, %83 ], [ %69, %73 ], [ %69, %68 ]
  %91 = phi ptr [ %70, %79 ], [ %5, %83 ], [ %70, %73 ], [ %70, %68 ]
  %92 = zext i8 %64 to i32
  %93 = call i32 @__crypto_memneq(ptr noundef %90, ptr noundef %91, i32 noundef %92) #10
  %94 = icmp eq i32 %93, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load ptr, ptr %0, align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102, !prof !17

102:                                              ; preds = %99, %95
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 761, i32 noundef 9, ptr noundef null) #10
  br label %103

103:                                              ; preds = %102, %99
  call fastcc void @ieee80211_key_free_common(ptr noundef %0) #10
  br label %150

104:                                              ; preds = %89, %86
  %105 = phi ptr [ %88, %86 ], [ %50, %89 ]
  %106 = phi i1 [ %87, %86 ], [ false, %89 ]
  %107 = load ptr, ptr %16, align 4
  store ptr %107, ptr %0, align 8
  %108 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 1
  store ptr %1, ptr %108, align 4
  %109 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 2
  store ptr %2, ptr %109, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ieee80211_key_link.key_color) #10, !srcloc !20
  %110 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ieee80211_key_link.key_color, ptr nonnull @ieee80211_key_link.key_color, i32 1, ptr nonnull elementtype(i32) @ieee80211_key_link.key_color) #10, !srcloc !21
  %111 = extractvalue { i32, i32 } %110, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !22
  %112 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 6
  store i32 %111, ptr %112, align 4
  %113 = load i32, ptr %13, align 8
  %114 = icmp eq i32 %113, 3
  br i1 %114, label %115, label %127

115:                                              ; preds = %104
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %116 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 1
  %117 = load volatile ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, %116
  br i1 %118, label %126, label %119

119:                                              ; preds = %119, %115
  %120 = phi ptr [ %124, %119 ], [ %117, %115 ]
  %121 = getelementptr i8, ptr %120, i32 -1108
  %122 = load i32, ptr %121, align 4
  %123 = add i32 %122, 1
  store i32 %123, ptr %121, align 4
  %124 = load volatile ptr, ptr %120, align 4
  %125 = icmp eq ptr %124, %116
  br i1 %125, label %126, label %119

126:                                              ; preds = %119, %115
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  br label %127

127:                                              ; preds = %126, %104
  %128 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = add i32 %129, 1
  store i32 %130, ptr %128, align 4
  %131 = icmp eq i32 %129, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  call void @synchronize_net() #10
  br label %133

133:                                              ; preds = %132, %127
  %134 = call fastcc i32 @ieee80211_key_replace(ptr noundef %1, ptr noundef %2, i1 noundef zeroext %12, ptr noundef %105, ptr noundef %0)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  br i1 %106, label %150, label %137

137:                                              ; preds = %136
  call void @synchronize_net() #10
  call fastcc void @__ieee80211_key_destroy(ptr noundef nonnull %105, i1 noundef zeroext %15) #10
  br label %150

138:                                              ; preds = %133
  %139 = icmp eq ptr %0, null
  br i1 %139, label %150, label %140

140:                                              ; preds = %138
  %141 = load ptr, ptr %108, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %149, label %143

143:                                              ; preds = %140
  %144 = load ptr, ptr %109, align 8
  %145 = load i16, ptr %9, align 8
  %146 = and i16 %145, 8
  %147 = icmp ne i16 %146, 0
  %148 = call fastcc i32 @ieee80211_key_replace(ptr noundef nonnull %141, ptr noundef %144, i1 noundef zeroext %147, ptr noundef nonnull %0, ptr noundef null) #10
  br label %149

149:                                              ; preds = %143, %140
  call void @synchronize_net() #10
  call fastcc void @__ieee80211_key_destroy(ptr noundef nonnull %0, i1 noundef zeroext %15) #10
  br label %150

150:                                              ; preds = %149, %138, %137, %136, %103, %53, %38, %29
  %151 = phi i32 [ -95, %53 ], [ 0, %103 ], [ 0, %136 ], [ 0, %137 ], [ %134, %138 ], [ %134, %149 ], [ -95, %38 ], [ -95, %29 ]
  %152 = load ptr, ptr %16, align 4
  %153 = getelementptr inbounds %struct.ieee80211_local, ptr %152, i32 0, i32 65
  call void @mutex_unlock(ptr noundef %153) #10
  ret i32 %151
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_key_replace(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = icmp ne ptr %4, null
  %7 = icmp ne ptr %3, null
  %8 = or i1 %7, %6
  br i1 %8, label %10, label %9, !prof !17

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 438, i32 noundef 9, ptr noundef null) #10
  br label %294

10:                                               ; preds = %5
  br i1 %6, label %13, label %11

11:                                               ; preds = %10
  %12 = icmp ne ptr %1, null
  br label %95

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 3
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 2
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 2, i32 1
  %17 = load ptr, ptr %16, align 4
  store ptr %15, ptr %14, align 4
  %18 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 3, i32 1
  store ptr %17, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !25
  store volatile ptr %14, ptr %17, align 4
  store ptr %14, ptr %16, align 4
  br i1 %7, label %19, label %26

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 7, i32 5
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 7, i32 5
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %21, %23
  br i1 %24, label %26, label %25, !prof !17

25:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 444, i32 noundef 9, ptr noundef null) #10
  br label %26

26:                                               ; preds = %25, %19, %13
  %27 = icmp ne ptr %1, null
  %28 = and i1 %27, %2
  br i1 %28, label %29, label %95

29:                                               ; preds = %26
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 7, i32 6
  %34 = load i16, ptr %33, align 8
  %35 = and i16 %34, 512
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.sta_info, ptr %32, i32 0, i32 9
  %39 = load i8, ptr %38, align 8
  %40 = icmp eq i8 %39, 2
  br i1 %40, label %95, label %41

41:                                               ; preds = %37
  %42 = getelementptr %struct.ieee80211_hw, ptr %30, i32 0, i32 4, i32 1
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 65536
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %95

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.sta_info, ptr %32, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 8, ptr noundef %47) #10
  %48 = getelementptr inbounds %struct.sta_info, ptr %32, i32 0, i32 38
  tail call void @mutex_lock(ptr noundef %48) #10
  %49 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %32, i16 noundef zeroext 0, i32 noundef 1) #10
  %50 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %32, i16 noundef zeroext 1, i32 noundef 1) #10
  %51 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %32, i16 noundef zeroext 2, i32 noundef 1) #10
  %52 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %32, i16 noundef zeroext 3, i32 noundef 1) #10
  %53 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %32, i16 noundef zeroext 4, i32 noundef 1) #10
  %54 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %32, i16 noundef zeroext 5, i32 noundef 1) #10
  %55 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %32, i16 noundef zeroext 6, i32 noundef 1) #10
  %56 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %32, i16 noundef zeroext 7, i32 noundef 1) #10
  %57 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %32, i16 noundef zeroext 8, i32 noundef 1) #10
  %58 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %32, i16 noundef zeroext 9, i32 noundef 1) #10
  %59 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %32, i16 noundef zeroext 10, i32 noundef 1) #10
  %60 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %32, i16 noundef zeroext 11, i32 noundef 1) #10
  %61 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %32, i16 noundef zeroext 12, i32 noundef 1) #10
  %62 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %32, i16 noundef zeroext 13, i32 noundef 1) #10
  %63 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %32, i16 noundef zeroext 14, i32 noundef 1) #10
  %64 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %32, i16 noundef zeroext 15, i32 noundef 1) #10
  tail call void @mutex_unlock(ptr noundef %48) #10
  br label %95

65:                                               ; preds = %29
  %66 = icmp eq ptr %3, null
  br i1 %66, label %95, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %95, label %72

72:                                               ; preds = %67
  %73 = or i32 %69, 2
  store i32 %73, ptr %68, align 4
  tail call void @ieee80211_clear_fast_xmit(ptr noundef %32) #10
  %74 = getelementptr inbounds %struct.ieee80211_hw, ptr %30, i32 0, i32 4
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %75, 128
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.sta_info, ptr %32, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 8, ptr noundef %79) #10
  tail call void @ieee80211_sta_tear_down_BA_sessions(ptr noundef %32, i32 noundef 1) #10
  br label %80

80:                                               ; preds = %78, %72
  %81 = getelementptr inbounds %struct.ieee80211_hw, ptr %30, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr %struct.wiphy, ptr %82, i32 0, i32 14, i32 3
  %84 = load i8, ptr %83, align 1
  %85 = icmp slt i8 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %80
  %87 = tail call i32 @___ratelimit(ptr noundef nonnull @ieee80211_pairwise_rekey._rs, ptr noundef nonnull @__func__.ieee80211_pairwise_rekey) #10
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.sta_info, ptr %32, i32 0, i32 46, i32 1
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %90) #12
  br label %92

92:                                               ; preds = %89, %86
  %93 = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  tail call void @ieee80211_flush_queues(ptr noundef %30, ptr noundef %94, i1 noundef zeroext false) #10
  br label %95

95:                                               ; preds = %92, %80, %67, %65, %46, %41, %37, %26, %11
  %96 = phi i1 [ %12, %11 ], [ %27, %26 ], [ true, %37 ], [ true, %41 ], [ true, %46 ], [ true, %65 ], [ true, %67 ], [ true, %80 ], [ true, %92 ]
  br i1 %7, label %97, label %162

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 7, i32 5
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 4
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %178, label %104

104:                                              ; preds = %97
  %105 = load ptr, ptr %3, align 8
  %106 = getelementptr inbounds %struct.ieee80211_local, ptr %105, i32 0, i32 8
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.ieee80211_ops, ptr %107, i32 0, i32 17
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %159, label %111

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 2
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 7
  %117 = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 7, i32 6
  %118 = load i16, ptr %117, align 8
  %119 = and i16 %118, 388
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %115, i32 0, i32 58
  %123 = load i32, ptr %122, align 8
  %124 = icmp eq i32 %123, 3
  br i1 %124, label %125, label %137

125:                                              ; preds = %121
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %126 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %115, i32 0, i32 57, i32 0, i32 1
  %127 = load volatile ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, %126
  br i1 %128, label %136, label %129

129:                                              ; preds = %129, %125
  %130 = phi ptr [ %134, %129 ], [ %127, %125 ]
  %131 = getelementptr i8, ptr %130, i32 -1108
  %132 = load i32, ptr %131, align 4
  %133 = add i32 %132, 1
  store i32 %133, ptr %131, align 4
  %134 = load volatile ptr, ptr %130, align 4
  %135 = icmp eq ptr %134, %126
  br i1 %135, label %136, label %129

136:                                              ; preds = %129, %125
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  br label %137

137:                                              ; preds = %136, %121
  %138 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %115, i32 0, i32 3
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, 1
  store i32 %140, ptr %138, align 4
  %141 = icmp eq i32 %139, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  tail call void @synchronize_net() #10
  br label %143

143:                                              ; preds = %142, %137, %111
  %144 = load i32, ptr %100, align 4
  %145 = and i32 %144, -2
  store i32 %145, ptr %100, align 4
  %146 = load ptr, ptr %3, align 8
  %147 = icmp eq ptr %113, null
  %148 = getelementptr inbounds %struct.sta_info, ptr %113, i32 0, i32 46
  %149 = select i1 %147, ptr null, ptr %148
  %150 = tail call fastcc i32 @drv_set_key(ptr noundef %146, i32 noundef 1, ptr noundef %115, ptr noundef %149, ptr noundef %116) #10
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %143
  %153 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %115, i32 0, i32 10
  %154 = load i8, ptr %98, align 1
  %155 = sext i8 %154 to i32
  %156 = getelementptr inbounds %struct.sta_info, ptr %113, i32 0, i32 46, i32 1
  %157 = select i1 %147, ptr @bcast_addr, ptr %156
  %158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %153, i32 noundef %155, ptr noundef %157, i32 noundef %150) #12
  br label %159

159:                                              ; preds = %152, %143, %104
  br i1 %6, label %160, label %175

160:                                              ; preds = %159
  %161 = tail call fastcc i32 @ieee80211_key_enable_hw_accel(ptr noundef nonnull %4)
  br label %171

162:                                              ; preds = %95
  %163 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 7, i32 5
  %164 = load i8, ptr %163, align 1
  %165 = load ptr, ptr %4, align 8
  %166 = getelementptr inbounds %struct.ieee80211_local, ptr %165, i32 0, i32 37
  %167 = load i8, ptr %166, align 1, !range !26
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %162
  %170 = tail call fastcc i32 @ieee80211_key_enable_hw_accel(ptr noundef %4)
  br label %171

171:                                              ; preds = %169, %160
  %172 = phi i32 [ %161, %160 ], [ %170, %169 ]
  %173 = phi i8 [ %99, %160 ], [ %164, %169 ]
  %174 = icmp eq i32 %172, 0
  br i1 %174, label %175, label %294

175:                                              ; preds = %171, %159
  %176 = phi i8 [ %173, %171 ], [ %99, %159 ]
  %177 = sext i8 %176 to i32
  br i1 %96, label %182, label %204

178:                                              ; preds = %97
  %179 = sext i8 %99 to i32
  br i1 %96, label %182, label %205

180:                                              ; preds = %162
  %181 = sext i8 %164 to i32
  br i1 %96, label %182, label %234

182:                                              ; preds = %180, %178, %175
  %183 = phi i32 [ %181, %180 ], [ %177, %175 ], [ %179, %178 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10
  br i1 %2, label %184, label %198

184:                                              ; preds = %182
  %185 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 8, i32 %183
  store volatile ptr %4, ptr %185, align 4
  br i1 %6, label %186, label %287

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 7, i32 6
  %188 = load i16, ptr %187, align 8
  %189 = and i16 %188, 512
  %190 = icmp eq i16 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 2
  %193 = load ptr, ptr %192, align 8
  %194 = getelementptr inbounds %struct.sta_info, ptr %193, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 26, ptr noundef %194) #10
  %195 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 7, i32 5
  %196 = load i8, ptr %195, align 1
  %197 = getelementptr inbounds %struct.sta_info, ptr %193, i32 0, i32 9
  store i8 %196, ptr %197, align 8
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %194) #10
  tail call void @ieee80211_check_fast_xmit(ptr noundef %193) #10
  br label %200

198:                                              ; preds = %182
  %199 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 7, i32 %183
  store volatile ptr %4, ptr %199, align 4
  br label %200

200:                                              ; preds = %198, %191, %186
  %201 = icmp eq ptr %4, null
  %202 = or i1 %7, %201
  br i1 %202, label %287, label %203

203:                                              ; preds = %200
  tail call void @ieee80211_check_fast_rx(ptr noundef nonnull %1) #10
  br label %287

204:                                              ; preds = %175
  br i1 %7, label %205, label %234

205:                                              ; preds = %204, %178
  %206 = phi i32 [ %177, %204 ], [ %179, %178 ]
  %207 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 15
  %208 = load ptr, ptr %207, align 8
  %209 = icmp eq ptr %208, %3
  %210 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 16
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, %3
  %213 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 17
  %214 = load ptr, ptr %213, align 8
  %215 = icmp eq ptr %214, %3
  %216 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 18
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, %3
  %219 = xor i1 %209, true
  %220 = or i1 %6, %219
  br i1 %220, label %222, label %221

221:                                              ; preds = %205
  tail call fastcc void @__ieee80211_set_default_key(ptr noundef %0, i32 noundef -1, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %222

222:                                              ; preds = %221, %205
  %223 = xor i1 %212, true
  %224 = or i1 %6, %223
  br i1 %224, label %226, label %225

225:                                              ; preds = %222
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  store volatile ptr null, ptr %210, align 4
  br label %226

226:                                              ; preds = %225, %222
  %227 = xor i1 %215, true
  %228 = or i1 %6, %227
  br i1 %228, label %230, label %229

229:                                              ; preds = %226
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  store volatile ptr null, ptr %213, align 8
  br label %230

230:                                              ; preds = %229, %226
  %231 = xor i1 %218, true
  %232 = or i1 %6, %231
  br i1 %232, label %234, label %233

233:                                              ; preds = %230
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  store volatile ptr null, ptr %216, align 4
  br label %234

234:                                              ; preds = %233, %230, %204, %180
  %235 = phi i32 [ %206, %230 ], [ %206, %233 ], [ %177, %204 ], [ %181, %180 ]
  %236 = phi i1 [ %215, %230 ], [ %215, %233 ], [ false, %204 ], [ false, %180 ]
  %237 = phi i1 [ %209, %230 ], [ %209, %233 ], [ false, %204 ], [ false, %180 ]
  %238 = phi i1 [ %212, %230 ], [ %212, %233 ], [ false, %204 ], [ false, %180 ]
  %239 = phi i1 [ %218, %230 ], [ %218, %233 ], [ false, %204 ], [ false, %180 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  %240 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 14, i32 %235
  store volatile ptr %4, ptr %240, align 4
  %241 = and i1 %6, %237
  br i1 %241, label %242, label %246

242:                                              ; preds = %234
  %243 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 7, i32 5
  %244 = load i8, ptr %243, align 1
  %245 = sext i8 %244 to i32
  tail call fastcc void @__ieee80211_set_default_key(ptr noundef %0, i32 noundef %245, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %246

246:                                              ; preds = %242, %234
  %247 = and i1 %6, %238
  br i1 %247, label %248, label %259

248:                                              ; preds = %246
  %249 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 7, i32 5
  %250 = load i8, ptr %249, align 1
  %251 = icmp ult i8 %250, 4
  br i1 %251, label %252, label %256

252:                                              ; preds = %248
  %253 = zext i8 %250 to i32
  %254 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 14, i32 %253
  %255 = load ptr, ptr %254, align 4
  br label %256

256:                                              ; preds = %252, %248
  %257 = phi ptr [ %255, %252 ], [ null, %248 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %258 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 16
  store volatile ptr %257, ptr %258, align 4
  br label %259

259:                                              ; preds = %256, %246
  %260 = and i1 %6, %236
  br i1 %260, label %261, label %273

261:                                              ; preds = %259
  %262 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 7, i32 5
  %263 = load i8, ptr %262, align 1
  %264 = sext i8 %263 to i32
  %265 = and i32 %264, -2
  %266 = icmp eq i32 %265, 4
  br i1 %266, label %267, label %270

267:                                              ; preds = %261
  %268 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 14, i32 %264
  %269 = load ptr, ptr %268, align 4
  br label %270

270:                                              ; preds = %267, %261
  %271 = phi ptr [ %269, %267 ], [ null, %261 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %272 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 17
  store volatile ptr %271, ptr %272, align 8
  br label %273

273:                                              ; preds = %270, %259
  %274 = and i1 %6, %239
  br i1 %274, label %275, label %287

275:                                              ; preds = %273
  %276 = getelementptr inbounds %struct.ieee80211_key, ptr %4, i32 0, i32 7, i32 5
  %277 = load i8, ptr %276, align 1
  %278 = sext i8 %277 to i32
  %279 = and i32 %278, -2
  %280 = icmp eq i32 %279, 6
  br i1 %280, label %281, label %284

281:                                              ; preds = %275
  %282 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 14, i32 %278
  %283 = load ptr, ptr %282, align 4
  br label %284

284:                                              ; preds = %281, %275
  %285 = phi ptr [ %283, %281 ], [ null, %275 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %286 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 18
  store volatile ptr %285, ptr %286, align 4
  br label %287

287:                                              ; preds = %284, %273, %203, %200, %184
  br i1 %7, label %288, label %294

288:                                              ; preds = %287
  %289 = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 3
  %290 = getelementptr inbounds %struct.ieee80211_key, ptr %3, i32 0, i32 3, i32 1
  %291 = load ptr, ptr %290, align 4
  %292 = load ptr, ptr %289, align 4
  %293 = getelementptr inbounds %struct.list_head, ptr %292, i32 0, i32 1
  store ptr %291, ptr %293, align 4
  store volatile ptr %292, ptr %291, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %290, align 4
  br label %294

294:                                              ; preds = %288, %287, %171, %9
  %295 = phi i32 [ 0, %9 ], [ %172, %171 ], [ 0, %288 ], [ 0, %287 ]
  ret i32 %295
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_key_free(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7, i32 6
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 8
  %14 = icmp ne i16 %13, 0
  %15 = tail call fastcc i32 @ieee80211_key_replace(ptr noundef nonnull %6, ptr noundef %10, i1 noundef zeroext %14, ptr noundef nonnull %0, ptr noundef null)
  br label %16

16:                                               ; preds = %8, %4
  tail call void @synchronize_net() #10
  tail call fastcc void @__ieee80211_key_destroy(ptr noundef nonnull %0, i1 noundef zeroext %1) #10
  br label %17

17:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_reenable_keys(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 65
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 3
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 4
  store i32 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %20, label %14

14:                                               ; preds = %14, %10
  %15 = phi ptr [ %18, %14 ], [ %12, %10 ]
  %16 = getelementptr i8, ptr %15, i32 -1108
  store i32 0, ptr %16, align 4
  %17 = getelementptr i8, ptr %15, i32 -1104
  store i32 0, ptr %17, align 8
  %18 = load ptr, ptr %15, align 4
  %19 = icmp eq ptr %18, %11
  br i1 %19, label %20, label %14

20:                                               ; preds = %14, %10, %1
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 9
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %56, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  br label %31

31:                                               ; preds = %52, %29
  %32 = phi ptr [ %27, %29 ], [ %54, %52 ]
  %33 = getelementptr i8, ptr %32, i32 -12
  %34 = load i32, ptr %7, align 8
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %37 = load volatile ptr, ptr %30, align 4
  %38 = icmp eq ptr %37, %30
  br i1 %38, label %46, label %39

39:                                               ; preds = %39, %36
  %40 = phi ptr [ %44, %39 ], [ %37, %36 ]
  %41 = getelementptr i8, ptr %40, i32 -1108
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  %44 = load volatile ptr, ptr %40, align 4
  %45 = icmp eq ptr %44, %30
  br i1 %45, label %46, label %39

46:                                               ; preds = %39, %36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  br label %47

47:                                               ; preds = %46, %31
  %48 = load i32, ptr %5, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %5, align 4
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  tail call void @synchronize_net() #10
  br label %52

52:                                               ; preds = %51, %47
  %53 = tail call fastcc i32 @ieee80211_key_enable_hw_accel(ptr noundef %33)
  %54 = load ptr, ptr %32, align 4
  %55 = icmp eq ptr %54, %26
  br i1 %55, label %56, label %31

56:                                               ; preds = %52, %25, %20
  %57 = load ptr, ptr %2, align 4
  %58 = getelementptr inbounds %struct.ieee80211_local, ptr %57, i32 0, i32 65
  tail call void @mutex_unlock(ptr noundef %58) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_key_enable_hw_accel(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %1
  %9 = and i32 %5, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7, i32 6
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 388
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 58
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 57, i32 0, i32 1
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %31, label %24

24:                                               ; preds = %24, %20
  %25 = phi ptr [ %29, %24 ], [ %22, %20 ]
  %26 = getelementptr i8, ptr %25, i32 -1108
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = load volatile ptr, ptr %25, align 4
  %30 = icmp eq ptr %29, %21
  br i1 %30, label %31, label %24

31:                                               ; preds = %24, %20
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  br label %32

32:                                               ; preds = %31, %16
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  tail call void @synchronize_net() #10
  br label %38

38:                                               ; preds = %37, %32, %11, %8
  %39 = load i32, ptr %4, align 4
  %40 = and i32 %39, -2
  store i32 %40, ptr %4, align 4
  br label %121

41:                                               ; preds = %1
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr inbounds %struct.ieee80211_local, ptr %42, i32 0, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ieee80211_ops, ptr %44, i32 0, i32 17
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %108, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7, i32 6
  %54 = load i16, ptr %53, align 8
  %55 = and i16 %54, 8
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.ieee80211_hw, ptr %42, i32 0, i32 4
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 524288
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %108, label %62

62:                                               ; preds = %57, %52
  %63 = getelementptr inbounds %struct.sta_info, ptr %50, i32 0, i32 21
  %64 = load i8, ptr %63, align 4, !range !26
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %108, label %66

66:                                               ; preds = %62, %48
  %67 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 58
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %68, 4
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7, i32 6
  %72 = load i16, ptr %71, align 8
  %73 = and i16 %72, 8
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %108, label %75

75:                                               ; preds = %70, %66
  %76 = getelementptr inbounds %struct.sta_info, ptr %50, i32 0, i32 46
  %77 = select i1 %51, ptr null, ptr %76
  %78 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7
  %79 = tail call fastcc i32 @drv_set_key(ptr noundef %42, i32 noundef 0, ptr noundef %3, ptr noundef %77, ptr noundef %78)
  switch i32 %79, label %100 [
    i32 0, label %80
    i32 -28, label %108
    i32 -95, label %108
    i32 1, label %108
  ]

80:                                               ; preds = %75
  %81 = load i32, ptr %4, align 4
  %82 = or i32 %81, 1
  store i32 %82, ptr %4, align 4
  %83 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7, i32 6
  %84 = load i16, ptr %83, align 8
  %85 = and i16 %84, 388
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  tail call fastcc void @decrease_tailroom_need_count(ptr noundef %3, i32 noundef 1)
  %88 = load i16, ptr %83, align 8
  br label %89

89:                                               ; preds = %87, %80
  %90 = phi i16 [ %88, %87 ], [ %84, %80 ]
  %91 = and i16 %90, 34
  %92 = icmp eq i16 %91, 34
  br i1 %92, label %93, label %95, !prof !9

93:                                               ; preds = %89
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 192, i32 noundef 9, ptr noundef null) #10
  %94 = load i16, ptr %83, align 8
  br label %95

95:                                               ; preds = %93, %89
  %96 = phi i16 [ %94, %93 ], [ %90, %89 ]
  %97 = and i16 %96, 260
  %98 = icmp eq i16 %97, 260
  br i1 %98, label %99, label %121, !prof !9

99:                                               ; preds = %95
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 195, i32 noundef 9, ptr noundef null) #10
  br label %121

100:                                              ; preds = %75
  %101 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 10
  %102 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7, i32 5
  %103 = load i8, ptr %102, align 1
  %104 = sext i8 %103 to i32
  %105 = getelementptr inbounds %struct.sta_info, ptr %50, i32 0, i32 46, i32 1
  %106 = select i1 %51, ptr @bcast_addr, ptr %105
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %101, i32 noundef %104, ptr noundef %106, i32 noundef %79) #12
  br label %108

108:                                              ; preds = %100, %75, %75, %75, %70, %62, %57, %41
  %109 = phi i32 [ %79, %100 ], [ -95, %62 ], [ -95, %57 ], [ -95, %41 ], [ 1, %70 ], [ %79, %75 ], [ %79, %75 ], [ %79, %75 ]
  %110 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 7, i32 1
  %111 = load i32, ptr %110, align 8
  switch i32 %111, label %121 [
    i32 1027073, label %112
    i32 1027077, label %112
    i32 1027074, label %112
    i32 1027076, label %112
    i32 1027082, label %112
    i32 1027080, label %112
    i32 1027081, label %112
    i32 1027078, label %112
    i32 1027085, label %112
    i32 1027083, label %112
    i32 1027084, label %112
  ]

112:                                              ; preds = %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108
  %113 = icmp eq i32 %109, 1
  br i1 %113, label %121, label %114

114:                                              ; preds = %112
  %115 = load ptr, ptr %0, align 8
  %116 = getelementptr inbounds %struct.ieee80211_hw, ptr %115, i32 0, i32 4
  %117 = load volatile i32, ptr %116, align 4
  %118 = and i32 %117, 16384
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, i32 0, i32 -22
  br label %121

121:                                              ; preds = %114, %112, %108, %99, %95, %38
  %122 = phi i32 [ -22, %38 ], [ 0, %99 ], [ 0, %95 ], [ 0, %112 ], [ %120, %114 ], [ -22, %108 ]
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_iter_keys(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 65
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = icmp eq ptr %1, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %1, i32 -1972
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %45, label %11

11:                                               ; preds = %11, %7
  %12 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %12, i32 -4
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.sta_info, ptr %15, i32 0, i32 46
  %18 = select i1 %16, ptr null, ptr %17
  %19 = getelementptr i8, ptr %12, i32 492
  tail call void %2(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %18, ptr noundef %19, ptr noundef %3) #10
  %20 = icmp eq ptr %13, %8
  br i1 %20, label %45, label %11

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %45, label %28

25:                                               ; preds = %35, %28
  %26 = load ptr, ptr %29, align 8
  %27 = icmp eq ptr %26, %22
  br i1 %27, label %45, label %28

28:                                               ; preds = %25, %21
  %29 = phi ptr [ %26, %25 ], [ %23, %21 ]
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %25, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %29, i32 0, i32 58
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi ptr [ %31, %33 ], [ %37, %35 ]
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %36, i32 -4
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  %41 = getelementptr inbounds %struct.sta_info, ptr %39, i32 0, i32 46
  %42 = select i1 %40, ptr null, ptr %41
  %43 = getelementptr i8, ptr %36, i32 492
  tail call void %2(ptr noundef %0, ptr noundef %34, ptr noundef %42, ptr noundef %43, ptr noundef %3) #10
  %44 = icmp eq ptr %37, %30
  br i1 %44, label %25, label %35

45:                                               ; preds = %25, %21, %11, %7
  tail call void @mutex_unlock(ptr noundef %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_iter_keys_rcu(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %4
  %7 = getelementptr i8, ptr %1, i32 -1972
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %66, label %10

10:                                               ; preds = %28, %6
  %11 = phi ptr [ %29, %28 ], [ %8, %6 ]
  %12 = getelementptr i8, ptr %11, i32 -4
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sta_info, ptr %13, i32 0, i32 20
  %17 = load i8, ptr %16, align 1, !range !26
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15, %10
  %20 = getelementptr i8, ptr %11, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.sta_info, ptr %13, i32 0, i32 46
  %26 = select i1 %14, ptr null, ptr %25
  %27 = getelementptr i8, ptr %11, i32 492
  tail call void %2(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %26, ptr noundef %27, ptr noundef %3) #10
  br label %28

28:                                               ; preds = %24, %19, %15
  %29 = load volatile ptr, ptr %11, align 4
  %30 = icmp eq ptr %29, %7
  br i1 %30, label %66, label %10

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %33 = load volatile ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %66, label %35

35:                                               ; preds = %63, %31
  %36 = phi ptr [ %64, %63 ], [ %33, %31 ]
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %36, i32 0, i32 2
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  br i1 %39, label %63, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %36, i32 0, i32 58
  br label %42

42:                                               ; preds = %60, %40
  %43 = phi ptr [ %38, %40 ], [ %61, %60 ]
  %44 = getelementptr i8, ptr %43, i32 -4
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.sta_info, ptr %45, i32 0, i32 20
  %49 = load i8, ptr %48, align 1, !range !26
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47, %42
  %52 = getelementptr i8, ptr %43, i32 8
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.sta_info, ptr %45, i32 0, i32 46
  %58 = select i1 %46, ptr null, ptr %57
  %59 = getelementptr i8, ptr %43, i32 492
  tail call void %2(ptr noundef %0, ptr noundef %41, ptr noundef %58, ptr noundef %59, ptr noundef %3) #10
  br label %60

60:                                               ; preds = %56, %51, %47
  %61 = load volatile ptr, ptr %43, align 4
  %62 = icmp eq ptr %61, %37
  br i1 %62, label %63, label %42

63:                                               ; preds = %60, %35
  %64 = load volatile ptr, ptr %36, align 8
  %65 = icmp eq ptr %64, %32
  br i1 %65, label %66, label %35

66:                                               ; preds = %63, %31, %28, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_free_keys(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr %3, ptr %3, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 5
  %8 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %7) #10
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 65
  call void @mutex_lock(ptr noundef %9) #10
  call fastcc void @ieee80211_free_keys_iface(ptr noundef %0, ptr noundef nonnull %3)
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %22, label %17

17:                                               ; preds = %17, %13
  %18 = phi ptr [ %20, %17 ], [ %15, %13 ]
  %19 = getelementptr i8, ptr %18, i32 -1408
  call fastcc void @ieee80211_free_keys_iface(ptr noundef %19, ptr noundef nonnull %3)
  %20 = load ptr, ptr %18, align 4
  %21 = icmp eq ptr %20, %14
  br i1 %21, label %22, label %17

22:                                               ; preds = %17, %13, %2
  %23 = load volatile ptr, ptr %3, align 8
  %24 = icmp ne ptr %23, %3
  %25 = or i1 %24, %1
  br i1 %25, label %26, label %66

26:                                               ; preds = %22
  call void @synchronize_net() #10
  %27 = load ptr, ptr %3, align 8
  %28 = icmp eq ptr %27, %3
  br i1 %28, label %66, label %29

29:                                               ; preds = %64, %26
  %30 = phi ptr [ %32, %64 ], [ %27, %26 ]
  %31 = getelementptr i8, ptr %30, i32 -12
  %32 = load ptr, ptr %30, align 4
  %33 = load ptr, ptr %31, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %64, label %35

35:                                               ; preds = %29
  %36 = getelementptr i8, ptr %30, i32 -8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %37, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp slt i32 %39, 1
  %41 = load i1, ptr @decrease_tailroom_need_count.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %45, !prof !9

44:                                               ; preds = %35
  store i1 true, ptr @decrease_tailroom_need_count.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 9, ptr noundef null) #10
  br label %45

45:                                               ; preds = %44, %35
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %37, i32 0, i32 58
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %37, i32 0, i32 57, i32 0, i32 1
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %60, label %53

53:                                               ; preds = %53, %49
  %54 = phi ptr [ %58, %53 ], [ %51, %49 ]
  %55 = getelementptr i8, ptr %54, i32 -1108
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, -1
  store i32 %57, ptr %55, align 4
  %58 = load volatile ptr, ptr %54, align 4
  %59 = icmp eq ptr %58, %50
  br i1 %59, label %60, label %53

60:                                               ; preds = %53, %49
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  br label %61

61:                                               ; preds = %60, %45
  %62 = load i32, ptr %38, align 4
  %63 = add i32 %62, -1
  store i32 %63, ptr %38, align 4
  br label %64

64:                                               ; preds = %61, %29
  call fastcc void @ieee80211_key_free_common(ptr noundef %31) #10
  %65 = icmp eq ptr %32, %3
  br i1 %65, label %66, label %29

66:                                               ; preds = %64, %26, %22
  %67 = load i32, ptr %10, align 8
  %68 = icmp eq i32 %67, 4
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 49
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %98, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr i8, ptr %71, i32 -1108
  %77 = load i32, ptr %76, align 4
  %78 = icmp ne i32 %75, %77
  %79 = load i1, ptr @ieee80211_free_keys.__already_done, align 1
  %80 = xor i1 %79, true
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %95, label %98, !prof !9

82:                                               ; preds = %66
  %83 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 4
  %88 = load i32, ptr %87, align 8
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i1 [ true, %82 ], [ %89, %86 ]
  %92 = load i1, ptr @ieee80211_free_keys.__already_done.1, align 1
  %93 = xor i1 %92, true
  %94 = select i1 %91, i1 %93, i1 false
  br i1 %94, label %95, label %98, !prof !9

95:                                               ; preds = %90, %73
  %96 = phi ptr [ @ieee80211_free_keys.__already_done, %73 ], [ @ieee80211_free_keys.__already_done.1, %90 ]
  %97 = phi i32 [ 1056, %73 ], [ 1060, %90 ]
  store i1 true, ptr %96, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %97, i32 noundef 9, ptr noundef null) #10
  br label %98

98:                                               ; preds = %95, %90, %73, %69
  %99 = load i32, ptr %10, align 8
  %100 = icmp eq i32 %99, 3
  br i1 %100, label %101, label %123

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, %102
  br i1 %104, label %123, label %105

105:                                              ; preds = %120, %101
  %106 = phi ptr [ %121, %120 ], [ %103, %101 ]
  %107 = getelementptr i8, ptr %106, i32 -1108
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = getelementptr i8, ptr %106, i32 -1104
  %112 = load i32, ptr %111, align 8
  %113 = icmp ne i32 %112, 0
  br label %114

114:                                              ; preds = %110, %105
  %115 = phi i1 [ true, %105 ], [ %113, %110 ]
  %116 = load i1, ptr @ieee80211_free_keys.__already_done.2, align 1
  %117 = xor i1 %116, true
  %118 = select i1 %115, i1 %117, i1 false
  br i1 %118, label %119, label %120, !prof !9

119:                                              ; preds = %114
  store i1 true, ptr @ieee80211_free_keys.__already_done.2, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1066, i32 noundef 9, ptr noundef null) #10
  br label %120

120:                                              ; preds = %119, %114
  %121 = load ptr, ptr %106, align 4
  %122 = icmp eq ptr %121, %102
  br i1 %122, label %123, label %105

123:                                              ; preds = %120, %101, %98
  call void @mutex_unlock(ptr noundef %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_free_keys_iface(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, %4
  %8 = load i1, ptr @decrease_tailroom_need_count.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @decrease_tailroom_need_count.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 9, ptr noundef null) #10
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %27, label %20

20:                                               ; preds = %20, %16
  %21 = phi ptr [ %25, %20 ], [ %18, %16 ]
  %22 = getelementptr i8, ptr %21, i32 -1108
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %23, %4
  store i32 %24, ptr %22, align 4
  %25 = load volatile ptr, ptr %21, align 4
  %26 = icmp eq ptr %25, %17
  br i1 %26, label %27, label %20

27:                                               ; preds = %20, %16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  br label %28

28:                                               ; preds = %27, %12
  %29 = load i32, ptr %5, align 4
  %30 = sub i32 %29, %4
  store i32 %30, ptr %5, align 4
  store i32 0, ptr %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi ptr [ %32, %34 ], [ %39, %36 ]
  %38 = getelementptr i8, ptr %37, i32 -12
  %39 = load ptr, ptr %37, align 4
  %40 = getelementptr i8, ptr %37, i32 -8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %37, i32 -4
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr i8, ptr %37, i32 508
  %45 = load i16, ptr %44, align 8
  %46 = and i16 %45, 8
  %47 = icmp ne i16 %46, 0
  %48 = tail call fastcc i32 @ieee80211_key_replace(ptr noundef %41, ptr noundef %43, i1 noundef zeroext %47, ptr noundef %38, ptr noundef null)
  %49 = load ptr, ptr %35, align 4
  store ptr %37, ptr %35, align 4
  store ptr %1, ptr %37, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  store volatile ptr %37, ptr %49, align 4
  %51 = icmp eq ptr %39, %31
  br i1 %51, label %52, label %36

52:                                               ; preds = %36, %28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ieee80211_key_destroy(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ieee80211_key, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  br i1 %1, label %8, label %15

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 5
  %13 = load ptr, ptr @system_wq, align 4
  %14 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %13, ptr noundef %12, i32 noundef 50) #10
  br label %42

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %17, 1
  %19 = load i1, ptr @decrease_tailroom_need_count.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %15
  store i1 true, ptr @decrease_tailroom_need_count.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 9, ptr noundef null) #10
  br label %23

23:                                               ; preds = %22, %15
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 58
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 57, i32 0, i32 1
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %38, label %31

31:                                               ; preds = %31, %27
  %32 = phi ptr [ %36, %31 ], [ %29, %27 ]
  %33 = getelementptr i8, ptr %32, i32 -1108
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -1
  store i32 %35, ptr %33, align 4
  %36 = load volatile ptr, ptr %32, align 4
  %37 = icmp eq ptr %36, %28
  br i1 %37, label %38, label %31

38:                                               ; preds = %31, %27
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  br label %39

39:                                               ; preds = %38, %23
  %40 = load i32, ptr %16, align 4
  %41 = add i32 %40, -1
  store i32 %41, ptr %16, align 4
  br label %42

42:                                               ; preds = %39, %8, %2
  tail call fastcc void @ieee80211_key_free_common(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_free_sta_keys(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 65
  tail call void @mutex_lock(ptr noundef %3) #10
  br label %4

4:                                                ; preds = %23, %2
  %5 = phi i32 [ 0, %2 ], [ %24, %23 ]
  %6 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 7, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ieee80211_key, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ieee80211_key, ptr %7, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ieee80211_key, ptr %7, i32 0, i32 7, i32 6
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 8
  %17 = icmp ne i16 %16, 0
  %18 = tail call fastcc i32 @ieee80211_key_replace(ptr noundef %11, ptr noundef %13, i1 noundef zeroext %17, ptr noundef nonnull %7, ptr noundef null)
  %19 = load ptr, ptr %10, align 4
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %19, i32 0, i32 58
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 2
  tail call fastcc void @__ieee80211_key_destroy(ptr noundef nonnull %7, i1 noundef zeroext %22)
  br label %23

23:                                               ; preds = %9, %4
  %24 = add nuw nsw i32 %5, 1
  %25 = icmp eq i32 %24, 8
  br i1 %25, label %26, label %4

26:                                               ; preds = %23
  %27 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 8, i32 0
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ieee80211_key, ptr %28, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ieee80211_key, ptr %28, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.ieee80211_key, ptr %28, i32 0, i32 7, i32 6
  %36 = load i16, ptr %35, align 8
  %37 = and i16 %36, 8
  %38 = icmp ne i16 %37, 0
  %39 = tail call fastcc i32 @ieee80211_key_replace(ptr noundef %32, ptr noundef %34, i1 noundef zeroext %38, ptr noundef nonnull %28, ptr noundef null)
  %40 = load ptr, ptr %31, align 4
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %40, i32 0, i32 58
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 2
  tail call fastcc void @__ieee80211_key_destroy(ptr noundef nonnull %28, i1 noundef zeroext %43)
  br label %44

44:                                               ; preds = %30, %26
  %45 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 8, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %62, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ieee80211_key, ptr %46, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ieee80211_key, ptr %46, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.ieee80211_key, ptr %46, i32 0, i32 7, i32 6
  %54 = load i16, ptr %53, align 8
  %55 = and i16 %54, 8
  %56 = icmp ne i16 %55, 0
  %57 = tail call fastcc i32 @ieee80211_key_replace(ptr noundef %50, ptr noundef %52, i1 noundef zeroext %56, ptr noundef nonnull %46, ptr noundef null)
  %58 = load ptr, ptr %49, align 4
  %59 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %58, i32 0, i32 58
  %60 = load i32, ptr %59, align 8
  %61 = icmp eq i32 %60, 2
  tail call fastcc void @__ieee80211_key_destroy(ptr noundef nonnull %46, i1 noundef zeroext %61)
  br label %62

62:                                               ; preds = %48, %44
  %63 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 8, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %80, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ieee80211_key, ptr %64, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ieee80211_key, ptr %64, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.ieee80211_key, ptr %64, i32 0, i32 7, i32 6
  %72 = load i16, ptr %71, align 8
  %73 = and i16 %72, 8
  %74 = icmp ne i16 %73, 0
  %75 = tail call fastcc i32 @ieee80211_key_replace(ptr noundef %68, ptr noundef %70, i1 noundef zeroext %74, ptr noundef nonnull %64, ptr noundef null)
  %76 = load ptr, ptr %67, align 4
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %76, i32 0, i32 58
  %78 = load i32, ptr %77, align 8
  %79 = icmp eq i32 %78, 2
  tail call fastcc void @__ieee80211_key_destroy(ptr noundef nonnull %64, i1 noundef zeroext %79)
  br label %80

80:                                               ; preds = %66, %62
  %81 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 8, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %98, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ieee80211_key, ptr %82, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.ieee80211_key, ptr %82, i32 0, i32 2
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.ieee80211_key, ptr %82, i32 0, i32 7, i32 6
  %90 = load i16, ptr %89, align 8
  %91 = and i16 %90, 8
  %92 = icmp ne i16 %91, 0
  %93 = tail call fastcc i32 @ieee80211_key_replace(ptr noundef %86, ptr noundef %88, i1 noundef zeroext %92, ptr noundef nonnull %82, ptr noundef null)
  %94 = load ptr, ptr %85, align 4
  %95 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %94, i32 0, i32 58
  %96 = load i32, ptr %95, align 8
  %97 = icmp eq i32 %96, 2
  tail call fastcc void @__ieee80211_key_destroy(ptr noundef nonnull %82, i1 noundef zeroext %97)
  br label %98

98:                                               ; preds = %84, %80
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_delayed_tailroom_dec(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 48
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 65
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, %6
  %10 = load i1, ptr @decrease_tailroom_need_count.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %1
  store i1 true, ptr @decrease_tailroom_need_count.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 9, ptr noundef null) #10
  br label %14

14:                                               ; preds = %13, %1
  %15 = getelementptr i8, ptr %0, i32 1956
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %19 = getelementptr i8, ptr %0, i32 1120
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %29, label %22

22:                                               ; preds = %22, %18
  %23 = phi ptr [ %27, %22 ], [ %20, %18 ]
  %24 = getelementptr i8, ptr %23, i32 -1108
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %25, %6
  store i32 %26, ptr %24, align 4
  %27 = load volatile ptr, ptr %23, align 4
  %28 = icmp eq ptr %27, %19
  br i1 %28, label %29, label %22

29:                                               ; preds = %22, %18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  br label %30

30:                                               ; preds = %29, %14
  %31 = load i32, ptr %7, align 4
  %32 = sub i32 %31, %6
  store i32 %32, ptr %7, align 4
  store i32 0, ptr %5, align 8
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr inbounds %struct.ieee80211_local, ptr %33, i32 0, i32 65
  tail call void @mutex_unlock(ptr noundef %34) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @decrease_tailroom_need_count(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, %1
  %6 = load i1, ptr @decrease_tailroom_need_count.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %2
  store i1 true, ptr @decrease_tailroom_need_count.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 9, ptr noundef null) #10
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %25, label %18

18:                                               ; preds = %18, %14
  %19 = phi ptr [ %23, %18 ], [ %16, %14 ]
  %20 = getelementptr i8, ptr %19, i32 -1108
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %21, %1
  store i32 %22, ptr %20, align 4
  %23 = load volatile ptr, ptr %19, align 4
  %24 = icmp eq ptr %23, %15
  br i1 %24, label %25, label %18

25:                                               ; preds = %18, %14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  br label %26

26:                                               ; preds = %25, %10
  %27 = load i32, ptr %3, align 4
  %28 = sub i32 %27, %1
  store i32 %28, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_gtk_rekey_notify(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -2264
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_gtk_rekey_notify, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = tail call ptr @llvm.thread.pointer() #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !28
  %20 = tail call i32 @__traceiter_api_gtk_rekey_notify(ptr noundef null, ptr noundef %5, ptr noundef %1, ptr noundef %2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  br label %21

21:                                               ; preds = %19, %8, %4
  %22 = getelementptr i8, ptr %0, i32 -1912
  %23 = load ptr, ptr %22, align 8
  tail call void @cfg80211_gtk_rekey_notify(ptr noundef %23, ptr noundef %1, ptr noundef %2, i32 noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_gtk_rekey_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_get_key_rx_seq(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %47 [
    i32 1027074, label %6
    i32 1027076, label %17
    i32 1027082, label %17
    i32 1027078, label %27
    i32 1027085, label %27
    i32 1027083, label %32
    i32 1027084, label %32
    i32 1027080, label %37
    i32 1027081, label %37
  ]

6:                                                ; preds = %3
  %7 = icmp ugt i32 %1, 15
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1155, i32 noundef 9, ptr noundef null) #10
  br label %47

9:                                                ; preds = %6
  %10 = getelementptr i8, ptr %0, i32 -456
  %11 = getelementptr [16 x %struct.tkip_ctx_rx], ptr %10, i32 0, i32 %1
  %12 = getelementptr inbounds %struct.tkip_ctx_rx, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %2, align 4
  %14 = getelementptr inbounds %struct.tkip_ctx_rx, ptr %11, i32 0, i32 2
  %15 = load i16, ptr %14, align 4
  %16 = getelementptr inbounds %struct.anon.125, ptr %2, i32 0, i32 1
  store i16 %15, ptr %16, align 4
  br label %47

17:                                               ; preds = %3, %3
  %18 = add i32 %1, -16
  %19 = icmp ult i32 %18, -17
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1162, i32 noundef 9, ptr noundef null) #10
  br label %47

21:                                               ; preds = %17
  %22 = icmp slt i32 %1, 0
  %23 = getelementptr i8, ptr %0, i32 -384
  %24 = getelementptr i8, ptr %0, i32 -480
  %25 = getelementptr [17 x [6 x i8]], ptr %24, i32 0, i32 %1
  %26 = select i1 %22, ptr %23, ptr %25
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %2, ptr noundef align 1 dereferenceable(6) %26, i32 6, i1 false)
  br label %47

27:                                               ; preds = %3, %3
  %28 = icmp eq i32 %1, 0
  br i1 %28, label %30, label %29, !prof !17

29:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1172, i32 noundef 9, ptr noundef null) #10
  br label %47

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %0, i32 -480
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %2, ptr noundef align 1 dereferenceable(6) %31, i32 6, i1 false)
  br label %47

32:                                               ; preds = %3, %3
  %33 = icmp eq i32 %1, 0
  br i1 %33, label %35, label %34, !prof !17

34:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1179, i32 noundef 9, ptr noundef null) #10
  br label %47

35:                                               ; preds = %32
  %36 = getelementptr i8, ptr %0, i32 -480
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %2, ptr noundef align 1 dereferenceable(6) %36, i32 6, i1 false)
  br label %47

37:                                               ; preds = %3, %3
  %38 = add i32 %1, -16
  %39 = icmp ult i32 %38, -17
  br i1 %39, label %40, label %41, !prof !9

40:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1186, i32 noundef 9, ptr noundef null) #10
  br label %47

41:                                               ; preds = %37
  %42 = icmp slt i32 %1, 0
  %43 = getelementptr i8, ptr %0, i32 -384
  %44 = getelementptr i8, ptr %0, i32 -480
  %45 = getelementptr [17 x [6 x i8]], ptr %44, i32 0, i32 %1
  %46 = select i1 %42, ptr %43, ptr %45
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %2, ptr noundef align 1 dereferenceable(6) %46, i32 6, i1 false)
  br label %47

47:                                               ; preds = %41, %40, %35, %34, %30, %29, %21, %20, %9, %8, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_set_key_rx_seq(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %47 [
    i32 1027074, label %6
    i32 1027076, label %17
    i32 1027082, label %17
    i32 1027078, label %27
    i32 1027085, label %27
    i32 1027083, label %32
    i32 1027084, label %32
    i32 1027080, label %37
    i32 1027081, label %37
  ]

6:                                                ; preds = %3
  %7 = icmp ugt i32 %1, 15
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1208, i32 noundef 9, ptr noundef null) #10
  br label %48

9:                                                ; preds = %6
  %10 = load i32, ptr %2, align 4
  %11 = getelementptr i8, ptr %0, i32 -456
  %12 = getelementptr [16 x %struct.tkip_ctx_rx], ptr %11, i32 0, i32 %1
  %13 = getelementptr inbounds %struct.tkip_ctx_rx, ptr %12, i32 0, i32 1
  store i32 %10, ptr %13, align 4
  %14 = getelementptr inbounds %struct.anon.125, ptr %2, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tkip_ctx_rx, ptr %12, i32 0, i32 2
  store i16 %15, ptr %16, align 4
  br label %48

17:                                               ; preds = %3, %3
  %18 = add i32 %1, -16
  %19 = icmp ult i32 %18, -17
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1215, i32 noundef 9, ptr noundef null) #10
  br label %48

21:                                               ; preds = %17
  %22 = icmp slt i32 %1, 0
  %23 = getelementptr i8, ptr %0, i32 -384
  %24 = getelementptr i8, ptr %0, i32 -480
  %25 = getelementptr [17 x [6 x i8]], ptr %24, i32 0, i32 %1
  %26 = select i1 %22, ptr %23, ptr %25
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %26, ptr noundef align 4 dereferenceable(6) %2, i32 6, i1 false)
  br label %48

27:                                               ; preds = %3, %3
  %28 = icmp eq i32 %1, 0
  br i1 %28, label %30, label %29, !prof !17

29:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1225, i32 noundef 9, ptr noundef null) #10
  br label %48

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %0, i32 -480
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %31, ptr noundef align 4 dereferenceable(6) %2, i32 6, i1 false)
  br label %48

32:                                               ; preds = %3, %3
  %33 = icmp eq i32 %1, 0
  br i1 %33, label %35, label %34, !prof !17

34:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1232, i32 noundef 9, ptr noundef null) #10
  br label %48

35:                                               ; preds = %32
  %36 = getelementptr i8, ptr %0, i32 -480
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %36, ptr noundef align 4 dereferenceable(6) %2, i32 6, i1 false)
  br label %48

37:                                               ; preds = %3, %3
  %38 = add i32 %1, -16
  %39 = icmp ult i32 %38, -17
  br i1 %39, label %40, label %41, !prof !9

40:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1239, i32 noundef 9, ptr noundef null) #10
  br label %48

41:                                               ; preds = %37
  %42 = icmp slt i32 %1, 0
  %43 = getelementptr i8, ptr %0, i32 -384
  %44 = getelementptr i8, ptr %0, i32 -480
  %45 = getelementptr [17 x [6 x i8]], ptr %44, i32 0, i32 %1
  %46 = select i1 %42, ptr %43, ptr %45
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %46, ptr noundef align 4 dereferenceable(6) %2, i32 6, i1 false)
  br label %48

47:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1248, i32 noundef 9, ptr noundef null) #10
  br label %48

48:                                               ; preds = %47, %41, %40, %35, %34, %30, %29, %21, %20, %9, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_remove_key(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -484
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %1
  %7 = and i32 %3, -2
  store i32 %7, ptr %2, align 4
  %8 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %0, i32 0, i32 6
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 388
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %0, i32 -500
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 58
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 57, i32 0, i32 1
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %29, label %22

22:                                               ; preds = %22, %18
  %23 = phi ptr [ %27, %22 ], [ %20, %18 ]
  %24 = getelementptr i8, ptr %23, i32 -1108
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  %27 = load volatile ptr, ptr %23, align 4
  %28 = icmp eq ptr %27, %19
  br i1 %28, label %29, label %22

29:                                               ; preds = %22, %18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  br label %30

30:                                               ; preds = %29, %12
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void @synchronize_net() #10
  br label %36

36:                                               ; preds = %35, %30, %6, %1
  %37 = getelementptr i8, ptr %0, i32 -504
  %38 = icmp eq ptr %37, null
  br i1 %38, label %83, label %39

39:                                               ; preds = %36
  %40 = getelementptr i8, ptr %0, i32 -500
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %0, i32 -496
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr i8, ptr %0, i32 16
  %47 = load i16, ptr %46, align 8
  %48 = and i16 %47, 8
  %49 = icmp ne i16 %48, 0
  %50 = tail call fastcc i32 @ieee80211_key_replace(ptr noundef nonnull %41, ptr noundef %45, i1 noundef zeroext %49, ptr noundef nonnull %37, ptr noundef null) #10
  br label %51

51:                                               ; preds = %43, %39
  tail call void @synchronize_net() #10
  %52 = load ptr, ptr %37, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %82, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %40, align 4
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %55, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = icmp slt i32 %57, 1
  %59 = load i1, ptr @decrease_tailroom_need_count.__already_done, align 1
  %60 = xor i1 %59, true
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %63, !prof !9

62:                                               ; preds = %54
  store i1 true, ptr @decrease_tailroom_need_count.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 9, ptr noundef null) #10
  br label %63

63:                                               ; preds = %62, %54
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %55, i32 0, i32 58
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %68 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %55, i32 0, i32 57, i32 0, i32 1
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %78, label %71

71:                                               ; preds = %71, %67
  %72 = phi ptr [ %76, %71 ], [ %69, %67 ]
  %73 = getelementptr i8, ptr %72, i32 -1108
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, -1
  store i32 %75, ptr %73, align 4
  %76 = load volatile ptr, ptr %72, align 4
  %77 = icmp eq ptr %76, %68
  br i1 %77, label %78, label %71

78:                                               ; preds = %71, %67
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  br label %79

79:                                               ; preds = %78, %63
  %80 = load i32, ptr %56, align 4
  %81 = add i32 %80, -1
  store i32 %81, ptr %56, align 4
  br label %82

82:                                               ; preds = %79, %51
  tail call fastcc void @ieee80211_key_free_common(ptr noundef nonnull %37) #10
  br label %83

83:                                               ; preds = %82, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_gtk_rekey_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -2264
  %4 = getelementptr i8, ptr %0, i32 -1908
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 37
  %7 = load i8, ptr %6, align 1, !range !26
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1288, i32 noundef 9, ptr noundef null) #10
  br label %41

10:                                               ; preds = %2
  %11 = load i32, ptr %0, align 8
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %14, label %13, !prof !17

13:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1291, i32 noundef 9, ptr noundef null) #10
  br label %41

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 5
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 7
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 8
  %24 = tail call ptr @ieee80211_key_alloc(i32 noundef %16, i32 noundef %19, i32 noundef %22, ptr noundef %23, i32 noundef 0, ptr noundef null, ptr noundef null)
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %41, label %26

26:                                               ; preds = %14
  %27 = getelementptr i8, ptr %0, i32 -632
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ieee80211_key, ptr %24, i32 0, i32 7, i32 6
  %32 = load i16, ptr %31, align 8
  %33 = or i16 %32, 64
  store i16 %33, ptr %31, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = tail call i32 @ieee80211_key_link(ptr noundef %24, ptr noundef %3, ptr noundef null)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = inttoptr i32 %35 to ptr
  br label %41

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.ieee80211_key, ptr %24, i32 0, i32 7
  br label %41

41:                                               ; preds = %39, %37, %14, %13, %9
  %42 = phi ptr [ inttoptr (i32 -22 to ptr), %9 ], [ inttoptr (i32 -22 to ptr), %13 ], [ %38, %37 ], [ %40, %39 ], [ %24, %14 ]
  ret ptr %42
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ieee80211_key_mic_failure(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %8 [
    i32 1027078, label %4
    i32 1027085, label %4
    i32 1027083, label %4
    i32 1027084, label %4
  ]

4:                                                ; preds = %1, %1, %1, %1
  %5 = getelementptr i8, ptr %0, i32 -464
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ieee80211_key_replay(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, -1027076
  %5 = icmp ult i32 %4, 10
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = trunc i32 %4 to i16
  %8 = lshr i16 1013, %7
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds [10 x i32], ptr @switch.table.ieee80211_key_replay, i32 0, i32 %4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %11, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_fast_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_fast_xmit_iface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_set_default_unicast_key(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aead_key_setup_encrypt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_aes_cmac_key_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_aes_gmac_key_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aead_key_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_fast_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ieee80211_stop_tx_ba_session(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_clear_fast_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_tear_down_BA_sessions(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_flush_queues(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drv_set_key(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #9 {
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %2, i32 0, i32 58
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %2, i32 0, i32 49
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -1408
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %12, %9 ], [ %2, %5 ]
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  %19 = load i1, ptr @drv_set_key.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %28, !prof !9

22:                                               ; preds = %13
  store i1 true, ptr @drv_set_key.__already_done, align 1
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 10
  %27 = select i1 %25, ptr %26, ptr %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 248, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %27, i32 noundef %16) #10
  br label %28

28:                                               ; preds = %22, %13
  br i1 %18, label %67, label %29

29:                                               ; preds = %28
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_set_key, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = tail call ptr @llvm.thread.pointer() #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  %44 = tail call i32 @__traceiter_drv_set_key(ptr noundef null, ptr noundef %0, i32 noundef %1, ptr noundef %14, ptr noundef %3, ptr noundef %4) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  br label %45

45:                                               ; preds = %43, %32, %29
  %46 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.ieee80211_ops, ptr %47, i32 0, i32 17
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 58
  %51 = tail call i32 %49(ptr noundef %0, i32 noundef %1, ptr noundef %50, ptr noundef %3, ptr noundef %4) #10
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %45
  %55 = tail call ptr @llvm.thread.pointer() #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  %66 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %51) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  br label %67

67:                                               ; preds = %65, %54, %45, %28
  %68 = phi i32 [ -5, %28 ], [ %51, %45 ], [ %51, %54 ], [ %51, %65 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_set_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_gtk_rekey_notify(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

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
!8 = !{i64 2159671389}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2159129808}
!11 = !{i64 2159130016}
!12 = !{i64 2157450033}
!13 = !{i64 2157450185}
!14 = !{i64 2159680175}
!15 = !{i64 2159689321}
!16 = !{i64 2159698442}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{!"auto-init"}
!19 = !{i64 2148187132}
!20 = !{i64 587127, i64 2148077098, i64 2148077124, i64 2148077171, i64 2148077193, i64 2148077221, i64 2148077241}
!21 = !{i64 2148089994, i64 2148090026, i64 2148090055, i64 2148090089, i64 2148090120, i64 2148090143}
!22 = !{i64 2148187335}
!23 = !{i64 2149366628}
!24 = !{i64 2149366845}
!25 = !{i64 2149391869}
!26 = !{i8 0, i8 2}
!27 = !{i64 2159725093}
!28 = !{i64 2159029886}
!29 = !{i64 2159030086}
!30 = !{i64 2157759436}
!31 = !{i64 2157759624}
!32 = !{i64 2157462903}
!33 = !{i64 2157463063}
