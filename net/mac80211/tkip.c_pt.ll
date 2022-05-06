; ModuleID = '/llk/IR/net/mac80211/tkip.c_pt.bc'
source_filename = "../net/mac80211/tkip.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_tkip_add_iv:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_tkip_add_iv\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_tkip_add_iv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_tkip_p1k_iv:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_tkip_p1k_iv\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_tkip_p1k_iv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_tkip_rx_p1k:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_tkip_rx_p1k\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_tkip_rx_p1k:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_tkip_p2k:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_tkip_p2k\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_tkip_p2k:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.134, %struct.ieee80211_vif }
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
%struct.tkip_ctx = type { [5 x i16], i32, i32 }
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
%struct.ieee80211_key = type { ptr, ptr, ptr, %struct.list_head, i32, %union.anon.171, i32, %struct.ieee80211_key_conf }
%union.anon.171 = type { %struct.anon.172 }
%struct.anon.172 = type { %struct.spinlock, %struct.tkip_ctx, [16 x %struct.tkip_ctx_rx], i32 }
%struct.tkip_ctx_rx = type { %struct.tkip_ctx, i32, i16 }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_ieee80211_tkip_add_iv = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_tkip_add_iv = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_tkip_add_iv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_tkip_add_iv to i32), ptr @__kstrtab_ieee80211_tkip_add_iv, ptr @__kstrtabns_ieee80211_tkip_add_iv }, section "___ksymtab_gpl+ieee80211_tkip_add_iv", align 4
@__kstrtab_ieee80211_get_tkip_p1k_iv = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_tkip_p1k_iv = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_tkip_p1k_iv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_tkip_p1k_iv to i32), ptr @__kstrtab_ieee80211_get_tkip_p1k_iv, ptr @__kstrtabns_ieee80211_get_tkip_p1k_iv }, section "___ksymtab+ieee80211_get_tkip_p1k_iv", align 4
@__kstrtab_ieee80211_get_tkip_rx_p1k = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_tkip_rx_p1k = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_tkip_rx_p1k = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_tkip_rx_p1k to i32), ptr @__kstrtab_ieee80211_get_tkip_rx_p1k, ptr @__kstrtabns_ieee80211_get_tkip_rx_p1k }, section "___ksymtab+ieee80211_get_tkip_rx_p1k", align 4
@__kstrtab_ieee80211_get_tkip_p2k = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_tkip_p2k = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_tkip_p2k = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_tkip_p2k to i32), ptr @__kstrtab_ieee80211_get_tkip_p2k, ptr @__kstrtabns_ieee80211_get_tkip_p2k }, section "___ksymtab+ieee80211_get_tkip_p2k", align 4
@tkip_sbox = internal unnamed_addr constant [256 x i16] [i16 -14683, i16 -1916, i16 -4455, i16 -2419, i16 -243, i16 -10563, i16 -8527, i16 -28332, i16 24656, i16 515, i16 -12631, i16 22141, i16 -6375, i16 -19102, i16 19942, i16 -4966, i16 -28859, i16 8093, i16 -30400, i16 -1401, i16 -4331, i16 -19733, i16 -28983, i16 -1269, i16 16876, i16 -19609, i16 24573, i16 17898, i16 9151, i16 21495, i16 -7018, i16 -25765, i16 30146, i16 -7908, i16 15790, i16 19562, i16 27738, i16 32321, i16 -2814, i16 -31921, i16 26716, i16 20980, i16 -11980, i16 -1784, i16 -7533, i16 -21645, i16 25171, i16 10815, i16 2060, i16 -27310, i16 18021, i16 -25250, i16 12328, i16 14241, i16 2575, i16 12213, i16 3593, i16 9270, i16 7067, i16 -8387, i16 -13018, i16 20073, i16 32717, i16 -5473, i16 4635, i16 7582, i16 22644, i16 13358, i16 13869, i16 -9038, i16 -19218, i16 23547, i16 -23306, i16 30285, i16 -18591, i16 32206, i16 21115, i16 -8898, i16 24177, i16 5015, i16 -22795, i16 -18072, i16 0, i16 -16084, i16 16480, i16 -7393, i16 31176, i16 -18707, i16 -11074, i16 -29370, i16 26585, i16 29259, i16 -27426, i16 -26412, i16 -20248, i16 -31414, i16 -17557, i16 -15062, i16 20453, i16 -4842, i16 -31035, i16 -25897, i16 26197, i16 4500, i16 -30001, i16 -5872, i16 1030, i16 -383, i16 -24336, i16 30788, i16 9658, i16 19427, i16 -23821, i16 24062, i16 -32576, i16 1418, i16 16301, i16 8636, i16 28744, i16 -3836, i16 25567, i16 30657, i16 -20619, i16 16995, i16 8240, i16 -6886, i16 -754, i16 -16531, i16 -32436, i16 6164, i16 9781, i16 -15569, i16 -16671, i16 13730, i16 -30516, i16 11833, i16 -27817, i16 22002, i16 -894, i16 31303, i16 -14164, i16 -17689, i16 12843, i16 -6507, i16 -16224, i16 6552, i16 -24879, i16 -23681, i16 17510, i16 21630, i16 15275, i16 2947, i16 -29494, i16 -14551, i16 27603, i16 10300, i16 -22663, i16 -17182, i16 5661, i16 -21130, i16 -9413, i16 25686, i16 29774, i16 5150, i16 -27941, i16 3082, i16 18540, i16 -18204, i16 -24739, i16 -17042, i16 17391, i16 -15194, i16 14760, i16 12708, i16 -11465, i16 -3445, i16 -10958, i16 -29885, i16 28249, i16 -9545, i16 396, i16 -20124, i16 -25390, i16 18912, i16 -10060, i16 -21254, i16 -3321, i16 -12507, i16 -13649, i16 -2930, i16 18409, i16 4120, i16 28629, i16 -3960, i16 19055, i16 23666, i16 14372, i16 22513, i16 29639, i16 -26799, i16 -13533, i16 -24196, i16 -5988, i16 15905, i16 -26915, i16 25052, i16 3462, i16 3973, i16 -8048, i16 31810, i16 29124, i16 -13142, i16 -28456, i16 1541, i16 -2303, i16 7186, i16 -15709, i16 27231, i16 -20743, i16 27088, i16 6033, i16 -26280, i16 14887, i16 10169, i16 -9928, i16 -5357, i16 11187, i16 8755, i16 -11589, i16 -22160, i16 1929, i16 13223, i16 11702, i16 15394, i16 5522, i16 -14048, i16 -30903, i16 -21761, i16 20600, i16 -23174, i16 911, i16 23032, i16 2432, i16 6679, i16 26074, i16 -10447, i16 -31546, i16 -12104, i16 -32061, i16 10672, i16 23159, i16 7697, i16 31691, i16 -22276, i16 28118, i16 11322], align 2
@drv_update_tkip_key.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@__tracepoint_drv_update_tkip_key = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_ieee80211_get_tkip_p1k_iv, ptr @__ksymtab_ieee80211_get_tkip_p2k, ptr @__ksymtab_ieee80211_get_tkip_rx_p1k, ptr @__ksymtab_ieee80211_tkip_add_iv], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @ieee80211_tkip_add_iv(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) #0 {
  %4 = lshr i64 %2, 8
  %5 = trunc i64 %4 to i8
  %6 = getelementptr i8, ptr %0, i32 1
  store i8 %5, ptr %0, align 1
  %7 = and i8 %5, 95
  %8 = or i8 %7, 32
  %9 = getelementptr i8, ptr %0, i32 2
  store i8 %8, ptr %6, align 1
  %10 = trunc i64 %2 to i8
  %11 = getelementptr i8, ptr %0, i32 3
  store i8 %10, ptr %9, align 1
  %12 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 5
  %13 = load i8, ptr %12, align 1
  %14 = shl i8 %13, 6
  %15 = or i8 %14, 32
  %16 = getelementptr i8, ptr %0, i32 4
  store i8 %15, ptr %11, align 1
  %17 = lshr i64 %2, 16
  %18 = trunc i64 %17 to i32
  store i32 %18, ptr %16, align 1
  %19 = getelementptr i8, ptr %0, i32 8
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_get_tkip_p1k_iv(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -480
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #11
  %5 = getelementptr i8, ptr %0, i32 -500
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -476
  %8 = getelementptr i8, ptr %0, i32 19
  %9 = getelementptr i8, ptr %0, i32 -464
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %0, i32 -460
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %3
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 58, i32 2
  tail call fastcc void @tkip_mixing_phase1(ptr noundef %8, ptr noundef %7, ptr noundef %17, i32 noundef %1) #11
  br label %18

18:                                               ; preds = %16, %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(10) %2, ptr noundef align 4 dereferenceable(10) %7, i32 10, i1 false)
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_get_tkip_rx_p1k(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = alloca %struct.tkip_ctx, align 4
  %6 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  call fastcc void @tkip_mixing_phase1(ptr noundef %6, ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(10) %3, ptr noundef nonnull align 4 dereferenceable(10) %5, i32 10, i1 false)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tkip_mixing_phase1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #4 {
  %5 = trunc i32 %3 to i16
  store i16 %5, ptr %1, align 2
  %6 = lshr i32 %3, 16
  %7 = trunc i32 %6 to i16
  %8 = getelementptr i16, ptr %1, i32 1
  store i16 %7, ptr %8, align 2
  %9 = load i16, ptr %2, align 1
  %10 = getelementptr i16, ptr %1, i32 2
  store i16 %9, ptr %10, align 2
  %11 = getelementptr i8, ptr %2, i32 2
  %12 = load i16, ptr %11, align 1
  %13 = getelementptr i16, ptr %1, i32 3
  store i16 %12, ptr %13, align 2
  %14 = getelementptr i8, ptr %2, i32 4
  %15 = load i16, ptr %14, align 1
  %16 = getelementptr i16, ptr %1, i32 4
  store i16 %15, ptr %16, align 2
  %17 = getelementptr i8, ptr %0, i32 4
  %18 = getelementptr i8, ptr %0, i32 8
  %19 = getelementptr i8, ptr %0, i32 12
  br label %20

20:                                               ; preds = %20, %4
  %21 = phi i16 [ %12, %4 ], [ %80, %20 ]
  %22 = phi i16 [ %9, %4 ], [ %67, %20 ]
  %23 = phi i16 [ %7, %4 ], [ %54, %20 ]
  %24 = phi i16 [ %5, %4 ], [ %41, %20 ]
  %25 = phi i16 [ %15, %4 ], [ %94, %20 ]
  %26 = phi i32 [ 0, %4 ], [ %95, %20 ]
  %27 = shl nuw i32 %26, 1
  %28 = and i32 %27, 2
  %29 = getelementptr i8, ptr %0, i32 %28
  %30 = load i16, ptr %29, align 1
  %31 = xor i16 %30, %25
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 255
  %34 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %33
  %35 = load i16, ptr %34, align 2
  %36 = lshr i32 %32, 8
  %37 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %36
  %38 = load i16, ptr %37, align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #11
  %40 = xor i16 %39, %35
  %41 = add i16 %40, %24
  store i16 %41, ptr %1, align 2
  %42 = getelementptr i8, ptr %17, i32 %28
  %43 = load i16, ptr %42, align 1
  %44 = xor i16 %41, %43
  %45 = zext i16 %44 to i32
  %46 = and i32 %45, 255
  %47 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %46
  %48 = load i16, ptr %47, align 2
  %49 = lshr i32 %45, 8
  %50 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %49
  %51 = load i16, ptr %50, align 2
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #11
  %53 = xor i16 %52, %48
  %54 = add i16 %53, %23
  store i16 %54, ptr %8, align 2
  %55 = getelementptr i8, ptr %18, i32 %28
  %56 = load i16, ptr %55, align 1
  %57 = xor i16 %54, %56
  %58 = zext i16 %57 to i32
  %59 = and i32 %58, 255
  %60 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %59
  %61 = load i16, ptr %60, align 2
  %62 = lshr i32 %58, 8
  %63 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %62
  %64 = load i16, ptr %63, align 2
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #11
  %66 = xor i16 %65, %61
  %67 = add i16 %66, %22
  store i16 %67, ptr %10, align 2
  %68 = getelementptr i8, ptr %19, i32 %28
  %69 = load i16, ptr %68, align 1
  %70 = xor i16 %67, %69
  %71 = zext i16 %70 to i32
  %72 = and i32 %71, 255
  %73 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %72
  %74 = load i16, ptr %73, align 2
  %75 = lshr i32 %71, 8
  %76 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %75
  %77 = load i16, ptr %76, align 2
  %78 = tail call i16 @llvm.bswap.i16(i16 %77) #11
  %79 = xor i16 %78, %74
  %80 = add i16 %79, %21
  store i16 %80, ptr %13, align 2
  %81 = load i16, ptr %29, align 1
  %82 = xor i16 %80, %81
  %83 = zext i16 %82 to i32
  %84 = and i32 %83, 255
  %85 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %84
  %86 = load i16, ptr %85, align 2
  %87 = lshr i32 %83, 8
  %88 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %87
  %89 = load i16, ptr %88, align 2
  %90 = tail call i16 @llvm.bswap.i16(i16 %89) #11
  %91 = xor i16 %90, %86
  %92 = trunc i32 %26 to i16
  %93 = add i16 %25, %92
  %94 = add i16 %93, %91
  store i16 %94, ptr %16, align 2
  %95 = add nuw nsw i32 %26, 1
  %96 = icmp eq i32 %95, 8
  br i1 %96, label %97, label %20

97:                                               ; preds = %20
  %98 = getelementptr inbounds %struct.tkip_ctx, ptr %1, i32 0, i32 2
  store i32 1, ptr %98, align 4
  %99 = getelementptr inbounds %struct.tkip_ctx, ptr %1, i32 0, i32 1
  store i32 %3, ptr %99, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_get_tkip_p2k(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -480
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = load i16, ptr %6, align 2
  %8 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %7) #12
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = load i32, ptr %10, align 1
  %12 = getelementptr i8, ptr %9, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = load i8, ptr %9, align 1
  tail call void @_raw_spin_lock(ptr noundef %4) #11
  %15 = getelementptr i8, ptr %0, i32 -500
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %0, i32 -476
  %18 = getelementptr i8, ptr %0, i32 19
  %19 = getelementptr i8, ptr %0, i32 -464
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %11
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = getelementptr i8, ptr %0, i32 -460
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %3
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %16, i32 0, i32 58, i32 2
  tail call fastcc void @tkip_mixing_phase1(ptr noundef %18, ptr noundef %17, ptr noundef %27, i32 noundef %11) #11
  br label %28

28:                                               ; preds = %26, %22
  %29 = zext i8 %14 to i16
  %30 = shl nuw i16 %29, 8
  %31 = zext i8 %13 to i16
  %32 = or i16 %30, %31
  tail call fastcc void @tkip_mixing_phase2(ptr noundef %18, ptr noundef %17, i16 noundef zeroext %32, ptr noundef %2)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %33 = load i16, ptr %4, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tkip_mixing_phase2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3) unnamed_addr #4 {
  %5 = load i16, ptr %1, align 2
  %6 = getelementptr i16, ptr %1, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = getelementptr i16, ptr %1, i32 2
  %9 = load i16, ptr %8, align 2
  %10 = getelementptr i16, ptr %1, i32 3
  %11 = load i16, ptr %10, align 2
  %12 = getelementptr i16, ptr %1, i32 4
  %13 = load i16, ptr %12, align 2
  %14 = add i16 %13, %2
  %15 = load i16, ptr %0, align 1
  %16 = xor i16 %15, %14
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 255
  %19 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %18
  %20 = load i16, ptr %19, align 2
  %21 = lshr i32 %17, 8
  %22 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %21
  %23 = load i16, ptr %22, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #11
  %25 = xor i16 %24, %20
  %26 = add i16 %25, %5
  %27 = getelementptr i8, ptr %0, i32 2
  %28 = load i16, ptr %27, align 1
  %29 = xor i16 %26, %28
  %30 = zext i16 %29 to i32
  %31 = and i32 %30, 255
  %32 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %31
  %33 = load i16, ptr %32, align 2
  %34 = lshr i32 %30, 8
  %35 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %34
  %36 = load i16, ptr %35, align 2
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #11
  %38 = xor i16 %37, %33
  %39 = add i16 %38, %7
  %40 = getelementptr i8, ptr %0, i32 4
  %41 = load i16, ptr %40, align 1
  %42 = xor i16 %39, %41
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, 255
  %45 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %44
  %46 = load i16, ptr %45, align 2
  %47 = lshr i32 %43, 8
  %48 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %47
  %49 = load i16, ptr %48, align 2
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #11
  %51 = xor i16 %50, %46
  %52 = add i16 %51, %9
  %53 = getelementptr i8, ptr %0, i32 6
  %54 = load i16, ptr %53, align 1
  %55 = xor i16 %52, %54
  %56 = zext i16 %55 to i32
  %57 = and i32 %56, 255
  %58 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %57
  %59 = load i16, ptr %58, align 2
  %60 = lshr i32 %56, 8
  %61 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %60
  %62 = load i16, ptr %61, align 2
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #11
  %64 = xor i16 %63, %59
  %65 = add i16 %64, %11
  %66 = getelementptr i8, ptr %0, i32 8
  %67 = load i16, ptr %66, align 1
  %68 = xor i16 %65, %67
  %69 = zext i16 %68 to i32
  %70 = and i32 %69, 255
  %71 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %70
  %72 = load i16, ptr %71, align 2
  %73 = lshr i32 %69, 8
  %74 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %73
  %75 = load i16, ptr %74, align 2
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #11
  %77 = xor i16 %76, %72
  %78 = add i16 %77, %13
  %79 = getelementptr i8, ptr %0, i32 10
  %80 = load i16, ptr %79, align 1
  %81 = xor i16 %78, %80
  %82 = zext i16 %81 to i32
  %83 = and i32 %82, 255
  %84 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %83
  %85 = load i16, ptr %84, align 2
  %86 = lshr i32 %82, 8
  %87 = getelementptr [256 x i16], ptr @tkip_sbox, i32 0, i32 %86
  %88 = load i16, ptr %87, align 2
  %89 = tail call i16 @llvm.bswap.i16(i16 %88) #11
  %90 = xor i16 %89, %85
  %91 = add i16 %90, %14
  %92 = getelementptr i8, ptr %0, i32 12
  %93 = load i16, ptr %92, align 1
  %94 = xor i16 %91, %93
  %95 = tail call i16 @llvm.fshl.i16(i16 %94, i16 %94, i16 15) #11
  %96 = add i16 %95, %26
  %97 = getelementptr i8, ptr %0, i32 14
  %98 = load i16, ptr %97, align 1
  %99 = xor i16 %96, %98
  %100 = tail call i16 @llvm.fshl.i16(i16 %99, i16 %99, i16 15) #11
  %101 = add i16 %100, %39
  %102 = tail call i16 @llvm.fshl.i16(i16 %101, i16 %101, i16 15) #11
  %103 = add i16 %102, %52
  %104 = tail call i16 @llvm.fshl.i16(i16 %103, i16 %103, i16 15) #11
  %105 = add i16 %104, %65
  %106 = tail call i16 @llvm.fshl.i16(i16 %105, i16 %105, i16 15) #11
  %107 = add i16 %106, %78
  %108 = tail call i16 @llvm.fshl.i16(i16 %107, i16 %107, i16 15) #11
  %109 = add i16 %108, %91
  %110 = lshr i16 %2, 8
  %111 = trunc i16 %110 to i8
  %112 = getelementptr i8, ptr %3, i32 1
  store i8 %111, ptr %3, align 1
  %113 = and i8 %111, 95
  %114 = or i8 %113, 32
  %115 = getelementptr i8, ptr %3, i32 2
  store i8 %114, ptr %112, align 1
  %116 = trunc i16 %2 to i8
  %117 = getelementptr i8, ptr %3, i32 3
  store i8 %116, ptr %115, align 1
  %118 = load i16, ptr %0, align 1
  %119 = xor i16 %109, %118
  %120 = lshr i16 %119, 1
  %121 = trunc i16 %120 to i8
  %122 = getelementptr i8, ptr %3, i32 4
  store i8 %121, ptr %117, align 1
  store i16 %96, ptr %122, align 1
  %123 = getelementptr i8, ptr %3, i32 6
  store i16 %101, ptr %123, align 1
  %124 = getelementptr i8, ptr %3, i32 8
  store i16 %103, ptr %124, align 1
  %125 = getelementptr i8, ptr %3, i32 10
  store i16 %105, ptr %125, align 1
  %126 = getelementptr i8, ptr %3, i32 12
  store i16 %107, ptr %126, align 1
  %127 = getelementptr i8, ptr %3, i32 14
  store i16 %109, ptr %127, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_tkip_encrypt_data(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 7
  call void @ieee80211_get_tkip_p2k(ptr noundef %7, ptr noundef %2, ptr noundef nonnull %6)
  %8 = call i32 @ieee80211_wep_encrypt_data(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 16, ptr noundef %3, i32 noundef %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wep_encrypt_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_tkip_decrypt_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readnone %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9) local_unnamed_addr #1 {
  %11 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %11, i8 0, i32 16, i1 false), !annotation !8
  %12 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 7
  %13 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 7, i32 8
  %14 = getelementptr %struct.ieee80211_key, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 %7
  %15 = icmp ult i32 %3, 12
  br i1 %15, label %106, label %16

16:                                               ; preds = %10
  %17 = load i8, ptr %2, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = getelementptr i8, ptr %2, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %19, %22
  %24 = getelementptr i8, ptr %2, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr i8, ptr %2, i32 4
  %27 = load i32, ptr %26, align 1
  %28 = getelementptr i8, ptr %2, i32 8
  %29 = zext i8 %25 to i32
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %106, label %32

32:                                               ; preds = %16
  %33 = lshr i32 %29, 6
  %34 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 7, i32 5
  %35 = load i8, ptr %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %106

38:                                               ; preds = %32
  %39 = getelementptr %struct.ieee80211_key, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 %7, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %27, %40
  br i1 %41, label %106, label %42

42:                                               ; preds = %38
  %43 = icmp eq i32 %27, %40
  br i1 %43, label %44, label %59

44:                                               ; preds = %42
  %45 = getelementptr %struct.ieee80211_key, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 %7, i32 2
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  %48 = icmp ult i32 %23, %47
  br i1 %48, label %106, label %49

49:                                               ; preds = %44
  %50 = icmp eq i32 %23, %47
  br i1 %50, label %51, label %59

51:                                               ; preds = %49
  %52 = icmp eq i32 %27, 0
  %53 = icmp eq i16 %46, 0
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %106

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.tkip_ctx, ptr %14, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %106

59:                                               ; preds = %55, %49, %42
  %60 = icmp eq i32 %6, 0
  %61 = getelementptr inbounds %struct.tkip_ctx, ptr %14, i32 0, i32 2
  br i1 %60, label %64, label %62

62:                                               ; preds = %59
  store i32 2, ptr %61, align 4
  %63 = trunc i32 %23 to i16
  br label %104

64:                                               ; preds = %59
  %65 = load i32, ptr %61, align 4
  %66 = icmp eq i32 %65, 0
  %67 = xor i1 %43, true
  %68 = select i1 %66, i1 true, i1 %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  tail call fastcc void @tkip_mixing_phase1(ptr noundef %13, ptr noundef %14, ptr noundef %4, i32 noundef %27)
  br label %70

70:                                               ; preds = %69, %64
  %71 = load ptr, ptr %1, align 8
  %72 = getelementptr inbounds %struct.ieee80211_local, ptr %71, i32 0, i32 8
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ieee80211_ops, ptr %73, i32 0, i32 18
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %99, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 4
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %99, label %82

82:                                               ; preds = %77
  %83 = load i32, ptr %61, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %99, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %87, i32 0, i32 58
  %89 = load i32, ptr %88, align 8
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %87, i32 0, i32 49
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %93, i32 -1408
  br label %95

95:                                               ; preds = %91, %85
  %96 = phi ptr [ %94, %91 ], [ %87, %85 ]
  %97 = getelementptr inbounds %struct.ieee80211_key, ptr %1, i32 0, i32 2
  %98 = load ptr, ptr %97, align 8
  tail call fastcc void @drv_update_tkip_key(ptr noundef %71, ptr noundef %96, ptr noundef %12, ptr noundef %98, i32 noundef %27, ptr noundef %14)
  store i32 2, ptr %61, align 4
  br label %99

99:                                               ; preds = %95, %82, %77, %70
  %100 = trunc i32 %23 to i16
  call fastcc void @tkip_mixing_phase2(ptr noundef %13, ptr noundef %14, i16 noundef zeroext %100, ptr noundef nonnull %11)
  %101 = add i32 %3, -12
  %102 = call i32 @ieee80211_wep_decrypt_data(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 16, ptr noundef %28, i32 noundef %101) #11
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99, %62
  %105 = phi i16 [ %63, %62 ], [ %100, %99 ]
  store i32 %27, ptr %8, align 4
  store i16 %105, ptr %9, align 2
  br label %106

106:                                              ; preds = %104, %99, %55, %51, %44, %38, %32, %16, %10
  %107 = phi i32 [ -1, %10 ], [ -1, %16 ], [ -2, %32 ], [ -3, %55 ], [ -3, %51 ], [ -3, %44 ], [ -3, %38 ], [ 0, %104 ], [ %102, %99 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  ret i32 %107
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drv_update_tkip_key(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #8 {
  %7 = icmp eq ptr %3, null
  %8 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46
  %9 = select i1 %7, ptr null, ptr %8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 49
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 -1408
  br label %17

17:                                               ; preds = %13, %6
  %18 = phi ptr [ %16, %13 ], [ %1, %6 ]
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %18, i32 0, i32 8
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  %23 = load i1, ptr @drv_update_tkip_key.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %32, !prof !13

26:                                               ; preds = %17
  store i1 true, ptr @drv_update_tkip_key.__already_done, align 1
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %18, i32 0, i32 6
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %18, i32 0, i32 10
  %31 = select i1 %29, ptr %30, ptr %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %31, i32 noundef %20) #11
  br label %32

32:                                               ; preds = %26, %17
  br i1 %22, label %73, label %33

33:                                               ; preds = %32
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_update_tkip_key, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %48 = tail call i32 @__traceiter_drv_update_tkip_key(ptr noundef null, ptr noundef %0, ptr noundef %18, ptr noundef %2, ptr noundef %9, i32 noundef %4) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %49

49:                                               ; preds = %47, %36, %33
  %50 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ieee80211_ops, ptr %51, i32 0, i32 18
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %18, i32 0, i32 58
  tail call void %53(ptr noundef %0, ptr noundef %56, ptr noundef %2, ptr noundef %9, i32 noundef %4, ptr noundef %5) #11
  br label %57

57:                                               ; preds = %55, %49
  %58 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = tail call ptr @llvm.thread.pointer() #11
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %63 = load i32, ptr %62, align 8
  %64 = lshr i32 %63, 5
  %65 = getelementptr i32, ptr @__cpu_online_mask, i32 %64
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %63, 31
  %68 = shl nuw i32 1, %67
  %69 = and i32 %68, %66
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %60
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %72 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %73

73:                                               ; preds = %71, %60, %57, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wep_decrypt_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_update_tkip_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #9

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone willreturn }

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
!8 = !{!"auto-init"}
!9 = !{i64 2149077706}
!10 = !{i64 2149073530}
!11 = !{i64 2149073605, i64 2149073632, i64 2149073679, i64 2149073701, i64 2149073729, i64 2149073749}
!12 = !{i64 2149100709}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2157700672}
!15 = !{i64 2157700880}
!16 = !{i64 2157376680}
!17 = !{i64 2157376832}
