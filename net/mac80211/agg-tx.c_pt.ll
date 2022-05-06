; ModuleID = '/llk/IR/net/mac80211/agg-tx.c_pt.bc'
source_filename = "../net/mac80211/agg-tx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_send_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_send_bar\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_send_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_start_tx_ba_session:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_start_tx_ba_session\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_start_tx_ba_session:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_start_tx_ba_cb_irqsafe:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_start_tx_ba_cb_irqsafe\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_start_tx_ba_cb_irqsafe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_stop_tx_ba_session:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_stop_tx_ba_session\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_stop_tx_ba_session:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_stop_tx_ba_cb_irqsafe:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_stop_tx_ba_cb_irqsafe\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_stop_tx_ba_cb_irqsafe:\09\09\09\09\09"
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
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
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
%struct.ieee80211_bar = type { i16, i16, [6 x i8], [6 x i8], i16, i16 }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.133, [17 x i16], %struct.anon.134, %struct.anon.135, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
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
%struct.anon.133 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.134 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.135 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
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
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.tid_ampdu_tx = type { %struct.callback_head, %struct.timer_list, %struct.timer_list, %struct.sk_buff_head, ptr, i32, i32, i16, i8, i8, i8, i16, i16, i16, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
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
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.0] }
%struct.anon.0 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.145 }
%union.anon.145 = type { %struct.anon.151, [16 x i8] }
%struct.anon.151 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_if_ibss = type { %struct.timer_list, %struct.work_struct, i32, i32, i8, i8, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, ptr, %struct.cfg80211_chan_def, i32, ptr, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.spinlock, %struct.list_head, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.anon.158 = type { i8, %union.anon.159 }
%union.anon.159 = type <{ %struct.anon.164, [17 x i8] }>
%struct.anon.164 = type { i8, i8, i16, i16, i16, [0 x i8] }

@__kstrtab_ieee80211_send_bar = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_send_bar = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_send_bar = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_send_bar to i32), ptr @__kstrtab_ieee80211_send_bar, ptr @__kstrtabns_ieee80211_send_bar }, section "___ksymtab+ieee80211_send_bar", align 4
@___ieee80211_stop_tx_ba_session.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [22 x i8] c"net/mac80211/agg-tx.c\00", align 1
@___ieee80211_stop_tx_ba_session.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Requested to start BA session on reserved tid=%d\00", align 1
@ieee80211_start_tx_ba_session.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_ieee80211_start_tx_ba_session = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_start_tx_ba_session = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_start_tx_ba_session = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_start_tx_ba_session to i32), ptr @__kstrtab_ieee80211_start_tx_ba_session, ptr @__kstrtabns_ieee80211_start_tx_ba_session }, section "___ksymtab+ieee80211_start_tx_ba_session", align 4
@__kstrtab_ieee80211_start_tx_ba_cb_irqsafe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_start_tx_ba_cb_irqsafe = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_start_tx_ba_cb_irqsafe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_start_tx_ba_cb_irqsafe to i32), ptr @__kstrtab_ieee80211_start_tx_ba_cb_irqsafe, ptr @__kstrtabns_ieee80211_start_tx_ba_cb_irqsafe }, section "___ksymtab+ieee80211_start_tx_ba_cb_irqsafe", align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Requested to stop BA session on reserved tid=%d\00", align 1
@__kstrtab_ieee80211_stop_tx_ba_session = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_stop_tx_ba_session = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_stop_tx_ba_session = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_stop_tx_ba_session to i32), ptr @__kstrtab_ieee80211_stop_tx_ba_session, ptr @__kstrtabns_ieee80211_stop_tx_ba_session }, section "___ksymtab+ieee80211_stop_tx_ba_session", align 4
@__kstrtab_ieee80211_stop_tx_ba_cb_irqsafe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_stop_tx_ba_cb_irqsafe = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_stop_tx_ba_cb_irqsafe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_stop_tx_ba_cb_irqsafe to i32), ptr @__kstrtab_ieee80211_stop_tx_ba_cb_irqsafe, ptr @__kstrtabns_ieee80211_stop_tx_ba_cb_irqsafe }, section "___ksymtab+ieee80211_stop_tx_ba_cb_irqsafe", align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"net/mac80211/ieee80211_i.h\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"TID %d gone but expected when splicing aggregates from the pending queue\0A\00", align 1
@ieee802_1d_to_ac = external dso_local local_unnamed_addr constant [8 x i32], align 4
@drv_wake_tx_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@__tracepoint_drv_wake_tx_queue = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_api_start_tx_ba_session = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_api_start_tx_ba_cb = external dso_local global %struct.tracepoint, align 4
@__tracepoint_api_stop_tx_ba_session = external dso_local global %struct.tracepoint, align 4
@__tracepoint_api_stop_tx_ba_cb = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_ieee80211_send_bar, ptr @__ksymtab_ieee80211_start_tx_ba_cb_irqsafe, ptr @__ksymtab_ieee80211_start_tx_ba_session, ptr @__ksymtab_ieee80211_stop_tx_ba_cb_irqsafe, ptr @__ksymtab_ieee80211_stop_tx_ba_session], section "llvm.metadata"
@switch.table.___ieee80211_stop_tx_ba_session = private unnamed_addr constant [4 x i32] [i32 3, i32 3, i32 3, i32 4], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_send_bar(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -2264
  %6 = getelementptr i8, ptr %0, i32 -1908
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 20
  %11 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %10, i32 noundef 2592) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %4
  %14 = load i32, ptr %8, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %14
  store ptr %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 %14
  store ptr %20, ptr %18, align 8
  %21 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef 20) #9
  %22 = getelementptr inbounds i8, ptr %21, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %22, i8 0, i32 18, i1 false) #9
  store i16 132, ptr %21, align 1
  %23 = getelementptr inbounds %struct.ieee80211_bar, ptr %21, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %23, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false)
  %24 = getelementptr inbounds %struct.ieee80211_bar, ptr %21, i32 0, i32 3
  %25 = getelementptr i8, ptr %0, i32 800
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %24, ptr noundef align 8 dereferenceable(6) %25, i32 6, i1 false)
  %26 = shl i16 %2, 12
  %27 = or i16 %26, 4
  %28 = getelementptr inbounds %struct.ieee80211_bar, ptr %21, i32 0, i32 4
  store i16 %27, ptr %28, align 1
  %29 = getelementptr inbounds %struct.ieee80211_bar, ptr %21, i32 0, i32 5
  store i16 %3, ptr %29, align 1
  %30 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3
  %31 = load i32, ptr %30, align 8
  %32 = or i32 %31, 65537
  store i32 %32, ptr %30, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !8
  %33 = getelementptr i8, ptr %0, i32 820
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37, !prof !9

36:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2200, i32 noundef 9, ptr noundef null) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  tail call void @kfree_skb_reason(ptr noundef nonnull %11, i32 noundef 0) #9
  br label %41

37:                                               ; preds = %13
  %38 = zext i16 %2 to i32
  %39 = load ptr, ptr %34, align 4
  %40 = load i32, ptr %39, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %5, ptr noundef nonnull %11, i32 noundef %38, i32 noundef %40) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  br label %41

41:                                               ; preds = %37, %36, %4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_assign_tid_tx(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %4 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 38, i32 9, i32 %1
  store volatile ptr %2, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ieee80211_ampdu_params, align 4
  %5 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  %7 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %4, i32 0, i32 1
  %8 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  %9 = getelementptr inbounds i8, ptr %4, i32 12
  store i64 0, ptr %9, align 4
  store ptr %8, ptr %7, align 4
  %10 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %4, i32 0, i32 2
  store i16 %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %4, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(5) %11, i8 0, i64 5, i1 false)
  %12 = icmp ult i32 %2, 4
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i1, ptr @___ieee80211_stop_tx_ba_session.__already_done, align 1
  br i1 %14, label %79, label %15, !prof !12

15:                                               ; preds = %13
  store i1 true, ptr @___ieee80211_stop_tx_ba_session.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 326, i32 noundef 9, ptr noundef null) #9
  br label %79

16:                                               ; preds = %3
  %17 = getelementptr inbounds [4 x i32], ptr @switch.table.___ieee80211_stop_tx_ba_session, i32 0, i32 %2
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %4, align 4
  %19 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %19) #9
  %20 = zext i16 %1 to i32
  %21 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 38, i32 10, i32 %20
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #9
  store ptr null, ptr %21, align 4
  %23 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 38, i32 9, i32 %20
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  tail call void @_raw_spin_unlock_bh(ptr noundef %19) #9
  br label %79

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %24, i32 0, i32 5
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %27
  tail call void @_raw_spin_unlock_bh(ptr noundef %19) #9
  %33 = icmp eq i32 %2, 3
  br i1 %33, label %34, label %79

34:                                               ; preds = %32
  store i32 5, ptr %4, align 4
  %35 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 @drv_ampdu_action(ptr noundef %6, ptr noundef %36, ptr noundef nonnull %4) #9
  %38 = icmp ne i32 %37, 0
  %39 = load i1, ptr @___ieee80211_stop_tx_ba_session.__already_done.1, align 1
  %40 = xor i1 %39, true
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %79, !prof !9

42:                                               ; preds = %34
  store i1 true, ptr @___ieee80211_stop_tx_ba_session.__already_done.1, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 353, i32 noundef 9, ptr noundef null) #9
  br label %79

43:                                               ; preds = %27
  %44 = load volatile i32, ptr %28, align 4
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  store volatile ptr null, ptr %23, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %19) #9
  tail call void @kvfree_call_rcu(ptr noundef nonnull %24, ptr noundef null) #9
  br label %79

48:                                               ; preds = %43
  tail call void @_set_bit(i32 noundef 3, ptr noundef %28) #9
  %49 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 46, i32 28, i32 %20
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %50, align 4
  %54 = getelementptr i8, ptr %53, i32 -1908
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.ieee80211_local, ptr %55, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %56) #9
  %57 = getelementptr i8, ptr %50, i32 -4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %57) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %56) #9
  br label %58

58:                                               ; preds = %52, %48
  tail call void @_raw_spin_unlock_bh(ptr noundef %19) #9
  %59 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %24, i32 0, i32 2
  %60 = tail call i32 @del_timer_sync(ptr noundef %59) #9
  %61 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %24, i32 0, i32 1
  %62 = tail call i32 @del_timer_sync(ptr noundef %61) #9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %28) #9
  %63 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 36
  %64 = load i8, ptr %63, align 2, !range !13
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  tail call void @synchronize_net() #9
  br label %67

67:                                               ; preds = %66, %58
  %68 = icmp ne i32 %2, 2
  %69 = zext i1 %68 to i8
  %70 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %24, i32 0, i32 9
  store i8 %69, ptr %70, align 1
  %71 = icmp eq i32 %2, 1
  %72 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %24, i32 0, i32 10
  %73 = zext i1 %71 to i8
  store i8 %73, ptr %72, align 4
  %74 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 @drv_ampdu_action(ptr noundef %6, ptr noundef %75, ptr noundef nonnull %4) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78, !prof !12

78:                                               ; preds = %67
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 407, i32 noundef 9, ptr noundef null) #9
  br label %79

79:                                               ; preds = %78, %67, %47, %42, %34, %32, %26, %15, %13
  %80 = phi i32 [ 0, %47 ], [ -2, %26 ], [ -22, %15 ], [ -22, %13 ], [ -114, %32 ], [ 0, %42 ], [ 0, %34 ], [ 0, %78 ], [ 0, %67 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  ret i32 %80
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_ampdu_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_tx_ba_session_handle_start(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ieee80211_ampdu_params, align 4
  %4 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  %8 = getelementptr inbounds i8, ptr %3, i32 12
  store i64 0, ptr %8, align 4, !annotation !14
  store i32 2, ptr %3, align 4
  %9 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  store ptr %10, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %3, i32 0, i32 2
  %12 = trunc i32 %1 to i16
  store i16 %12, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %3, i32 0, i32 3
  %14 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 38, i32 9, i32 %1
  %15 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %3, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(3) %15, i8 0, i64 3, i1 false)
  %16 = load ptr, ptr %14, align 4
  %17 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %16, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %17) #9
  %18 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 46, i32 28, i32 %1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr i8, ptr %22, i32 -1908
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ieee80211_local, ptr %24, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %25) #9
  %26 = getelementptr i8, ptr %19, i32 -4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %26) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %25) #9
  br label %27

27:                                               ; preds = %21, %2
  tail call void @synchronize_net() #9
  %28 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 36, i32 %1
  %29 = load i16, ptr %28, align 2
  %30 = lshr i16 %29, 4
  store i16 %30, ptr %13, align 2
  %31 = call i32 @drv_ampdu_action(ptr noundef %5, ptr noundef %7, ptr noundef nonnull %3) #9
  %32 = load i16, ptr %13, align 2
  %33 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %16, i32 0, i32 12
  store i16 %32, ptr %33, align 4
  switch i32 %31, label %35 [
    i32 2, label %55
    i32 1, label %34
    i32 0, label %54
  ]

34:                                               ; preds = %27
  call void @_set_bit(i32 noundef 0, ptr noundef %17) #9
  br label %54

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 13
  call void @_raw_spin_lock_bh(ptr noundef %36) #9
  call fastcc void @ieee80211_agg_splice_packets(ptr noundef %7, ptr noundef %16, i16 noundef zeroext %12)
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  store volatile ptr null, ptr %14, align 4
  %37 = and i32 %1, 7
  %38 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 58, i32 7, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr %struct.ieee80211_local, ptr %44, i32 0, i32 56, i32 %42
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #9, !srcloc !16
  %46 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #9, !srcloc !17
  %47 = extractvalue { i32, i32 } %46, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = load ptr, ptr %43, align 4
  call void @ieee80211_wake_queue_by_reason(ptr noundef %50, i32 noundef %42, i32 noundef 3, i1 noundef zeroext false) #9
  br label %51

51:                                               ; preds = %49, %35
  call void @_raw_spin_unlock_bh(ptr noundef %36) #9
  call fastcc void @ieee80211_agg_start_txq(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false)
  %52 = icmp eq ptr %16, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %51
  call void @kvfree_call_rcu(ptr noundef nonnull %16, ptr noundef null) #9
  br label %55

54:                                               ; preds = %34, %27
  call fastcc void @ieee80211_send_addba_with_timeout(ptr noundef %0, ptr noundef %16)
  br label %55

55:                                               ; preds = %54, %53, %51, %27
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_agg_splice_packets(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = zext i16 %2 to i32
  %7 = and i32 %6, 7
  %8 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 7, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr %struct.ieee80211_local, ptr %5, i32 0, i32 56, i32 %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #9, !srcloc !16
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #9, !srcloc !20
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load ptr, ptr %4, align 4
  tail call void @ieee80211_stop_queue_by_reason(ptr noundef %18, i32 noundef %12, i32 noundef 3, i1 noundef zeroext false) #9
  br label %19

19:                                               ; preds = %17, %3
  %20 = icmp eq ptr %1, null
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %6) #9
  br label %44

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %1, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %44, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 12
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #9
  %29 = load ptr, ptr %23, align 4
  %30 = icmp eq ptr %29, %23
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = getelementptr %struct.ieee80211_local, ptr %5, i32 0, i32 53, i32 %12
  %33 = getelementptr inbounds %struct.anon.123, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.anon.49, ptr %29, i32 0, i32 1
  store volatile ptr %34, ptr %37, align 4
  store volatile ptr %29, ptr %34, align 8
  store volatile ptr %32, ptr %36, align 8
  store volatile ptr %36, ptr %33, align 4
  %38 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %1, i32 0, i32 3, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.ieee80211_local, ptr %5, i32 0, i32 53, i32 %12, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %39
  store i32 %42, ptr %40, align 4
  store ptr %23, ptr %23, align 4
  store ptr %23, ptr %35, align 4
  store i32 0, ptr %38, align 4
  br label %43

43:                                               ; preds = %31, %26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #9
  br label %44

44:                                               ; preds = %43, %22, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_agg_start_txq(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 46, i32 28, i32 %1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %64, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -164
  %9 = getelementptr i8, ptr %5, i32 -4
  br i1 %2, label %10, label %11

10:                                               ; preds = %7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %9) #9
  br label %12

11:                                               ; preds = %7
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %9) #9
  br label %12

12:                                               ; preds = %11, %10
  %13 = getelementptr i8, ptr %5, i32 -4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %13) #9
  %14 = tail call ptr @llvm.thread.pointer() #9
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = add i32 %16, 512
  store volatile i32 %17, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !8
  %18 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  tail call void @ieee80211_schedule_txq(ptr noundef %21, ptr noundef nonnull %5) #9
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 -2264
  %24 = getelementptr inbounds %struct.ieee80211_local, ptr %21, i32 0, i32 36
  %25 = load i8, ptr %24, align 2, !range !13
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %12
  tail call void @_set_bit(i32 noundef 3, ptr noundef %13) #9
  br label %63

28:                                               ; preds = %12
  %29 = getelementptr i8, ptr %22, i32 -1904
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 32
  %32 = icmp eq i32 %31, 0
  %33 = load i1, ptr @drv_wake_tx_queue.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %42, !prof !9

36:                                               ; preds = %28
  store i1 true, ptr @drv_wake_tx_queue.__already_done, align 1
  %37 = getelementptr i8, ptr %22, i32 -1912
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  %40 = getelementptr i8, ptr %22, i32 -1896
  %41 = select i1 %39, ptr %40, ptr %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1228, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %41, i32 noundef %30) #9
  br label %42

42:                                               ; preds = %36, %28
  br i1 %32, label %63, label %43

43:                                               ; preds = %42
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_wake_tx_queue, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 5
  %50 = getelementptr i32, ptr @__cpu_online_mask, i32 %49
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %48, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %53, %51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %46
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %57 = tail call i32 @__traceiter_drv_wake_tx_queue(ptr noundef null, ptr noundef %21, ptr noundef %23, ptr noundef %8) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  br label %58

58:                                               ; preds = %56, %46, %43
  %59 = getelementptr inbounds %struct.ieee80211_local, ptr %21, i32 0, i32 8
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.ieee80211_ops, ptr %60, i32 0, i32 89
  %62 = load ptr, ptr %61, align 4
  tail call void %62(ptr noundef %21, ptr noundef nonnull %5) #9
  br label %63

63:                                               ; preds = %58, %42, %27
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  tail call fastcc void @local_bh_enable()
  br label %64

64:                                               ; preds = %63, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_send_addba_with_timeout(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %1, i32 0, i32 16
  %8 = load i8, ptr %7, align 2
  %9 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %1, i32 0, i32 2
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = add i32 %10, 100
  %12 = tail call i32 @mod_timer(ptr noundef %9, i32 noundef %11) #9
  %13 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %13) #9
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = zext i8 %8 to i32
  %16 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 38, i32 11, i32 %15
  store i32 %14, ptr %16, align 4
  %17 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 38, i32 12, i32 %15
  %18 = load i8, ptr %17, align 1
  %19 = add i8 %18, 1
  store i8 %19, ptr %17, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %13) #9
  %20 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 6
  %21 = load i8, ptr %20, align 8, !range !13
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 18
  %25 = load i16, ptr %24, align 2
  %26 = shl i16 %25, 6
  br label %27

27:                                               ; preds = %23, %2
  %28 = phi i16 [ %26, %23 ], [ 4096, %2 ]
  %29 = zext i8 %8 to i16
  %30 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %1, i32 0, i32 8
  %31 = load i8, ptr %30, align 2
  %32 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %1, i32 0, i32 12
  %33 = load i16, ptr %32, align 4
  %34 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %1, i32 0, i32 7
  %35 = load i16, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ieee80211_hw, ptr %37, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 50
  %41 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %40, i32 noundef 2592) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %87, label %43

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 1
  %45 = load i32, ptr %38, align 4
  %46 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 17
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 %45
  store ptr %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 14
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr i8, ptr %50, i32 %45
  store ptr %51, ptr %49, align 8
  %52 = tail call ptr @skb_put(ptr noundef nonnull %41, i32 noundef 24) #9
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(24) %52, i8 0, i32 24, i1 false) #9
  %53 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %52, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %53, ptr noundef align 1 dereferenceable(6) %44, i32 6, i1 false) #9
  %54 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %52, i32 0, i32 3
  %55 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 58
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 58, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %54, ptr noundef align 8 dereferenceable(6) %56, i32 6, i1 false) #9
  %57 = load i32, ptr %55, align 8
  switch i32 %57, label %67 [
    i32 3, label %58
    i32 4, label %58
    i32 7, label %58
    i32 2, label %60
    i32 1, label %63
  ]

58:                                               ; preds = %43, %43, %43
  %59 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %52, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %59, ptr noundef align 8 dereferenceable(6) %56, i32 6, i1 false) #9
  br label %67

60:                                               ; preds = %43
  %61 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %52, i32 0, i32 4
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 57, i32 0, i32 23, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %61, ptr noundef align 4 dereferenceable(6) %62, i32 6, i1 false) #9
  br label %67

63:                                               ; preds = %43
  %64 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %52, i32 0, i32 4
  %65 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 57
  %66 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %65, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %64, ptr noundef align 2 dereferenceable(6) %66, i32 6, i1 false) #9
  br label %67

67:                                               ; preds = %63, %60, %58, %43
  store i16 208, ptr %52, align 2
  %68 = tail call ptr @skb_put(ptr noundef nonnull %41, i32 noundef 9) #9
  %69 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %52, i32 0, i32 6
  store i8 3, ptr %69, align 2
  %70 = getelementptr inbounds %struct.anon.158, ptr %69, i32 0, i32 1
  store i8 0, ptr %70, align 1
  %71 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %52, i32 0, i32 6, i32 0, i32 1
  store i8 %31, ptr %71, align 1
  %72 = shl nuw nsw i16 %29, 2
  %73 = and i16 %72, 60
  %74 = or i16 %28, %73
  %75 = or i16 %74, 3
  %76 = getelementptr inbounds %struct.anon.158, ptr %69, i32 0, i32 1, i32 0, i32 2
  store i16 %75, ptr %76, align 1
  %77 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %52, i32 0, i32 6, i32 0, i32 2, i32 1
  store i16 %35, ptr %77, align 1
  %78 = shl i16 %33, 4
  %79 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %52, i32 0, i32 6, i32 0, i32 2, i32 3
  store i16 %78, ptr %79, align 1
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !8
  %80 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 58, i32 9
  %81 = load volatile ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %84, !prof !9

83:                                               ; preds = %67
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2200, i32 noundef 9, ptr noundef null) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  tail call void @kfree_skb_reason(ptr noundef nonnull %41, i32 noundef 0) #9
  br label %87

84:                                               ; preds = %67
  %85 = load ptr, ptr %81, align 4
  %86 = load i32, ptr %85, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %4, ptr noundef nonnull %41, i32 noundef %15, i32 noundef %86) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  br label %87

87:                                               ; preds = %84, %83, %27
  %88 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %1, i32 0, i32 5
  %89 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %88) #9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91, !prof !12

91:                                               ; preds = %87
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 487, i32 noundef 9, ptr noundef null) #9
  br label %92

92:                                               ; preds = %91, %87
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_start_tx_ba_session(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -1952
  %5 = getelementptr i8, ptr %0, i32 -1908
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_start_tx_ba_session, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = tail call ptr @llvm.thread.pointer() #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %23 = tail call i32 @__traceiter_api_start_tx_ba_session(ptr noundef null, ptr noundef %0, i16 noundef zeroext %1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  br label %24

24:                                               ; preds = %22, %11, %3
  %25 = getelementptr i8, ptr %0, i32 -196
  %26 = load i8, ptr %25, align 4
  %27 = zext i16 %1 to i32
  %28 = zext i8 %26 to i16
  %29 = icmp eq i16 %28, %1
  br i1 %29, label %30, label %31, !prof !9

30:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 594, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %27) #9
  br label %140

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.ieee80211_sta, ptr %0, i32 0, i32 3, i32 1
  %33 = load i8, ptr %32, align 2, !range !13
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %36, i32 0, i32 58, i32 1, i32 32
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %41, label %140

41:                                               ; preds = %35, %31
  %42 = getelementptr inbounds %struct.ieee80211_local, ptr %8, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ieee80211_ops, ptr %43, i32 0, i32 46
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  %47 = load i1, ptr @ieee80211_start_tx_ba_session.__already_done, align 1
  %48 = xor i1 %47, true
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %51, !prof !9

50:                                               ; preds = %41
  store i1 true, ptr @ieee80211_start_tx_ba_session.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 601, i32 noundef 9, ptr noundef null) #9
  br label %51

51:                                               ; preds = %50, %41
  %52 = icmp ugt i16 %1, 15
  %53 = or i1 %52, %46
  br i1 %53, label %140, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 4
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %56, 128
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %140, label %59

59:                                               ; preds = %54
  %60 = load volatile i32, ptr %55, align 4
  %61 = and i32 %60, 2097152
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %140

63:                                               ; preds = %59
  %64 = icmp ugt i16 %1, 7
  br i1 %64, label %65, label %66, !prof !9

65:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 609, i32 noundef 9, ptr noundef null) #9
  br label %140

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 58
  %68 = load i32, ptr %67, align 8
  switch i32 %68, label %140 [
    i32 2, label %69
    i32 7, label %69
    i32 4, label %69
    i32 3, label %69
    i32 1, label %69
  ]

69:                                               ; preds = %66, %66, %66, %66, %66
  %70 = getelementptr i8, ptr %0, i32 -1796
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 256
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %140

74:                                               ; preds = %69
  %75 = load volatile i32, ptr %70, align 4
  %76 = and i32 %75, 128
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load volatile i32, ptr %70, align 4
  %80 = and i32 %79, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %140, label %82

82:                                               ; preds = %78, %74
  %83 = load ptr, ptr %5, align 4
  %84 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %83, i32 0, i32 58
  %85 = load i32, ptr %84, align 8
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i8, ptr %32, align 2, !range !13
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %140, label %90

90:                                               ; preds = %87, %82
  %91 = getelementptr i8, ptr %0, i32 -1840
  tail call void @_raw_spin_lock_bh(ptr noundef %91) #9
  %92 = getelementptr i8, ptr %0, i32 -248
  %93 = getelementptr [16 x i8], ptr %92, i32 0, i32 %27
  %94 = load i8, ptr %93, align 1
  %95 = icmp ugt i8 %94, 15
  br i1 %95, label %138, label %96

96:                                               ; preds = %90
  %97 = icmp ugt i8 %94, 3
  br i1 %97, label %98, label %106

98:                                               ; preds = %96
  %99 = load volatile i32, ptr @jiffies, align 64
  %100 = getelementptr i8, ptr %0, i32 -312
  %101 = getelementptr [16 x i32], ptr %100, i32 0, i32 %27
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %99, -1500
  %104 = sub i32 %103, %102
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %138, label %106

106:                                              ; preds = %98, %96
  %107 = getelementptr %struct.sta_info, ptr %4, i32 0, i32 38, i32 9, i32 %27
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %138

110:                                              ; preds = %106
  %111 = getelementptr i8, ptr %0, i32 -376
  %112 = getelementptr [16 x ptr], ptr %111, i32 0, i32 %27
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %138

115:                                              ; preds = %110
  %116 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %117 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %116, i32 noundef 2848, i32 noundef 92) #10
  %118 = icmp eq ptr %117, null
  br i1 %118, label %138, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %117, i32 0, i32 3
  %121 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %117, i32 0, i32 3, i32 2
  store i32 0, ptr %121, align 4
  store ptr %120, ptr %120, align 8
  %122 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %117, i32 0, i32 3, i32 0, i32 0, i32 1
  store ptr %120, ptr %122, align 4
  %123 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %117, i32 0, i32 3, i32 1
  store i32 0, ptr %123, align 8
  %124 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %117, i32 0, i32 5
  %125 = load i32, ptr %124, align 4
  %126 = or i32 %125, 16
  store i32 %126, ptr %124, align 4
  %127 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %117, i32 0, i32 7
  store i16 %2, ptr %127, align 4
  %128 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %117, i32 0, i32 4
  store ptr %4, ptr %128, align 8
  %129 = trunc i16 %1 to i8
  %130 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %117, i32 0, i32 16
  store i8 %129, ptr %130, align 2
  %131 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %117, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %131, ptr noundef nonnull @sta_addba_resp_timer_expired, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %132 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %117, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %132, ptr noundef nonnull @sta_tx_agg_session_timer_expired, i32 noundef 524288, ptr noundef null, ptr noundef null) #9
  %133 = getelementptr i8, ptr %0, i32 -232
  %134 = load i8, ptr %133, align 8
  %135 = add i8 %134, 1
  store i8 %135, ptr %133, align 8
  %136 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %117, i32 0, i32 8
  store i8 %135, ptr %136, align 2
  store ptr %117, ptr %112, align 4
  %137 = getelementptr i8, ptr %0, i32 -456
  tail call void @ieee80211_queue_work(ptr noundef %8, ptr noundef %137) #9
  br label %138

138:                                              ; preds = %119, %115, %110, %106, %98, %90
  %139 = phi i32 [ 0, %119 ], [ -16, %90 ], [ -16, %98 ], [ -11, %106 ], [ -11, %110 ], [ -12, %115 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %91) #9
  br label %140

140:                                              ; preds = %138, %87, %78, %69, %66, %65, %59, %54, %51, %35, %30
  %141 = phi i32 [ -22, %30 ], [ -22, %65 ], [ %139, %138 ], [ -22, %35 ], [ -22, %51 ], [ -22, %59 ], [ -22, %54 ], [ -22, %66 ], [ -22, %69 ], [ -22, %78 ], [ -22, %87 ]
  ret i32 %141
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sta_addba_resp_timer_expired(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 62
  %5 = load i8, ptr %4, align 2
  %6 = getelementptr i8, ptr %0, i32 40
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46
  %12 = zext i8 %5 to i16
  %13 = tail call i32 @ieee80211_stop_tx_ba_session(ptr noundef %11, i16 noundef zeroext %12)
  br label %14

14:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sta_tx_agg_session_timer_expired(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 56
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 82
  %5 = load i8, ptr %4, align 2
  %6 = getelementptr i8, ptr %0, i32 60
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 64
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 68
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = shl nuw nsw i32 %15, 10
  %17 = tail call i32 @__usecs_to_jiffies(i32 noundef %16) #9
  %18 = add i32 %17, %12
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = sub i32 %19, %18
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %18) #9
  br label %28

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46
  %26 = zext i8 %5 to i16
  %27 = tail call i32 @ieee80211_stop_tx_ba_session(ptr noundef %25, i16 noundef zeroext %26)
  br label %28

28:                                               ; preds = %24, %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_start_tx_ba_cb(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %2, i32 0, i32 5
  %9 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %8) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !12

11:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 779, i32 noundef 9, ptr noundef null) #9
  br label %23

12:                                               ; preds = %3
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call fastcc void @ieee80211_send_addba_with_timeout(ptr noundef %0, ptr noundef %2)
  br label %23

17:                                               ; preds = %12
  %18 = load volatile i32, ptr %8, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = trunc i32 %1 to i16
  tail call fastcc void @ieee80211_agg_tx_operational(ptr noundef %7, ptr noundef %0, i16 noundef zeroext %22)
  br label %23

23:                                               ; preds = %21, %17, %16, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_agg_tx_operational(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.ieee80211_ampdu_params, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  %5 = getelementptr inbounds i8, ptr %4, i32 12
  store i64 0, ptr %5, align 4, !annotation !14
  store i32 6, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %4, i32 0, i32 2
  store i16 %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %4, i32 0, i32 3
  %10 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %4, i32 0, i32 4
  %11 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %4, i32 0, i32 5
  %12 = zext i16 %2 to i32
  %13 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 38, i32 9, i32 %12
  store i16 0, ptr %9, align 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %14, i32 0, i32 11
  %16 = load i16, ptr %15, align 2
  store i16 %16, ptr %10, align 4
  %17 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %14, i32 0, i32 15
  %18 = load i8, ptr %17, align 1, !range !13
  store i8 %18, ptr %11, align 2
  %19 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @drv_ampdu_action(ptr noundef %0, ptr noundef %20, ptr noundef nonnull %4) #9
  %22 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 13
  call void @_raw_spin_lock_bh(ptr noundef %22) #9
  %23 = load ptr, ptr %19, align 4
  call fastcc void @ieee80211_agg_splice_packets(ptr noundef %23, ptr noundef %14, i16 noundef zeroext %2)
  %24 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %14, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %24) #9
  %25 = load ptr, ptr %19, align 4
  %26 = and i16 %2, 7
  %27 = zext i16 %26 to i32
  %28 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.ieee80211_sub_if_data, ptr %25, i32 0, i32 58, i32 7, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %25, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr %struct.ieee80211_local, ptr %34, i32 0, i32 56, i32 %32
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #9, !srcloc !16
  %36 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #9, !srcloc !17
  %37 = extractvalue { i32, i32 } %36, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load ptr, ptr %33, align 4
  call void @ieee80211_wake_queue_by_reason(ptr noundef %40, i32 noundef %32, i32 noundef 3, i1 noundef zeroext false) #9
  br label %41

41:                                               ; preds = %39, %3
  call void @_raw_spin_unlock_bh(ptr noundef %22) #9
  call fastcc void @ieee80211_agg_start_txq(ptr noundef %1, i32 noundef %12, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_start_tx_ba_cb_irqsafe(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -2264
  %5 = getelementptr i8, ptr %0, i32 -1908
  %6 = load ptr, ptr %5, align 4
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_start_tx_ba_cb, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = tail call ptr @llvm.thread.pointer() #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %21 = tail call i32 @__traceiter_api_start_tx_ba_cb(ptr noundef null, ptr noundef %4, ptr noundef %1, i16 noundef zeroext %2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  br label %22

22:                                               ; preds = %20, %9, %3
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !8
  %23 = zext i16 %2 to i32
  %24 = icmp ugt i16 %2, 15
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  %26 = tail call ptr @sta_info_get_bss(ptr noundef %4, ptr noundef %1) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = getelementptr %struct.sta_info, ptr %26, i32 0, i32 38, i32 9, i32 %23
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 812, i32 noundef 9, ptr noundef null) #9
  br label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %30, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 6, ptr noundef %34) #9
  %35 = getelementptr inbounds %struct.sta_info, ptr %26, i32 0, i32 38, i32 8
  tail call void @ieee80211_queue_work(ptr noundef %6, ptr noundef %35) #9
  br label %36

36:                                               ; preds = %33, %32, %25, %22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 38
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2)
  tail call void @mutex_unlock(ptr noundef %4) #9
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -1952
  %4 = getelementptr i8, ptr %0, i32 -1908
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_stop_tx_ba_session, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = tail call ptr @llvm.thread.pointer() #9
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %22 = tail call i32 @__traceiter_api_stop_tx_ba_session(ptr noundef null, ptr noundef %0, i16 noundef zeroext %1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  br label %23

23:                                               ; preds = %21, %10, %2
  %24 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ieee80211_ops, ptr %25, i32 0, i32 46
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %52, label %29

29:                                               ; preds = %23
  %30 = zext i16 %1 to i32
  %31 = icmp ugt i16 %1, 15
  br i1 %31, label %52, label %32

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %0, i32 -1840
  tail call void @_raw_spin_lock_bh(ptr noundef %33) #9
  %34 = getelementptr %struct.sta_info, ptr %3, i32 0, i32 38, i32 9, i32 %30
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %50, label %37

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %0, i32 -196
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i16
  %41 = icmp eq i16 %40, %1
  br i1 %41, label %42, label %43, !prof !9

42:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 879, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %30) #9
  br label %43

43:                                               ; preds = %42, %37
  %44 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %35, i32 0, i32 5
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  tail call void @_set_bit(i32 noundef 5, ptr noundef %44) #9
  %49 = getelementptr i8, ptr %0, i32 -456
  tail call void @ieee80211_queue_work(ptr noundef %7, ptr noundef %49) #9
  br label %50

50:                                               ; preds = %48, %43, %32
  %51 = phi i32 [ 0, %48 ], [ -2, %32 ], [ 0, %43 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %33) #9
  br label %52

52:                                               ; preds = %50, %29, %23
  %53 = phi i32 [ %51, %50 ], [ -22, %23 ], [ -22, %29 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_stop_tx_ba_cb(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %2, i32 0, i32 5
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %2, i32 0, i32 9
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %2, i32 0, i32 10
  %17 = load i8, ptr %16, align 4, !range !13
  %18 = icmp ne i8 %17, 0
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ false, %11 ], [ %18, %15 ]
  %21 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 38, i32 9, i32 %1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %4, align 4
  %24 = trunc i32 %1 to i16
  tail call fastcc void @ieee80211_agg_splice_packets(ptr noundef %23, ptr noundef %22, i16 noundef zeroext %24) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  store volatile ptr null, ptr %21, align 4
  %25 = load ptr, ptr %4, align 4
  %26 = and i32 %1, 7
  %27 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr %struct.ieee80211_sub_if_data, ptr %25, i32 0, i32 58, i32 7, i32 %28
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %25, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr %struct.ieee80211_local, ptr %33, i32 0, i32 56, i32 %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #9, !srcloc !16
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #9, !srcloc !17
  %36 = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %19
  %39 = load ptr, ptr %32, align 4
  tail call void @ieee80211_wake_queue_by_reason(ptr noundef %39, i32 noundef %31, i32 noundef 3, i1 noundef zeroext false) #9
  br label %40

40:                                               ; preds = %38, %19
  %41 = icmp eq ptr %22, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  tail call void @kvfree_call_rcu(ptr noundef nonnull %22, ptr noundef null) #9
  br label %44

43:                                               ; preds = %3
  tail call void @_raw_spin_unlock_bh(ptr noundef %6) #9
  br label %47

44:                                               ; preds = %42, %40
  tail call void @_raw_spin_unlock_bh(ptr noundef %6) #9
  tail call fastcc void @ieee80211_agg_start_txq(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false)
  br i1 %20, label %45, label %47

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 1
  tail call void @ieee80211_send_delba(ptr noundef %5, ptr noundef %46, i16 noundef zeroext %24, i16 noundef zeroext 1, i16 noundef zeroext 37) #9
  br label %47

47:                                               ; preds = %45, %44, %43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_delba(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -2264
  %5 = getelementptr i8, ptr %0, i32 -1908
  %6 = load ptr, ptr %5, align 4
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_stop_tx_ba_cb, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = tail call ptr @llvm.thread.pointer() #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %21 = tail call i32 @__traceiter_api_stop_tx_ba_cb(ptr noundef null, ptr noundef %4, ptr noundef %1, i16 noundef zeroext %2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !32
  br label %22

22:                                               ; preds = %20, %9, %3
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !8
  %23 = zext i16 %2 to i32
  %24 = icmp ugt i16 %2, 15
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  %26 = tail call ptr @sta_info_get_bss(ptr noundef %4, ptr noundef %1) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = getelementptr %struct.sta_info, ptr %26, i32 0, i32 38, i32 9, i32 %23
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 812, i32 noundef 9, ptr noundef null) #9
  br label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %30, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 7, ptr noundef %34) #9
  %35 = getelementptr inbounds %struct.sta_info, ptr %26, i32 0, i32 38, i32 8
  tail call void @ieee80211_queue_work(ptr noundef %6, ptr noundef %35) #9
  br label %36

36:                                               ; preds = %33, %32, %25, %22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_process_addba_resp(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6
  %6 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 0, i32 2, i32 1
  %7 = load i16, ptr %6, align 1
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  %10 = trunc i16 %8 to i8
  %11 = trunc i16 %7 to i8
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 15
  %14 = zext i8 %13 to i16
  %15 = lshr i16 %7, 6
  %16 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 18
  %17 = load i16, ptr %16, align 2
  %18 = tail call i16 @llvm.umin.i16(i16 %15, i16 %17)
  %19 = zext i8 %13 to i32
  %20 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 46, i32 28, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ne ptr %21, null
  %23 = select i1 %9, i1 %22, i1 false
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = getelementptr i8, ptr %21, i32 -4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %25) #9
  br label %26

26:                                               ; preds = %24, %4
  %27 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 38
  tail call void @mutex_lock(ptr noundef %27) #9
  %28 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 38, i32 9, i32 %19
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %82, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 0, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %29, i32 0, i32 8
  %35 = load i8, ptr %34, align 2
  %36 = icmp eq i8 %33, %35
  br i1 %36, label %37, label %82

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %29, i32 0, i32 2
  %39 = tail call i32 @del_timer_sync(ptr noundef %38) #9
  %40 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %29, i32 0, i32 5
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %82

44:                                               ; preds = %37
  %45 = load volatile i32, ptr %40, align 4
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.anon.158, ptr %5, i32 0, i32 1, i32 0, i32 2
  %50 = load i16, ptr %49, align 1
  %51 = icmp eq i16 %50, 0
  %52 = icmp ne i16 %18, 0
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %80

54:                                               ; preds = %48
  %55 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %40) #9
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %29, i32 0, i32 11
  store i16 %18, ptr %58, align 2
  %59 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %29, i32 0, i32 15
  store i8 %10, ptr %59, align 1
  %60 = load volatile i32, ptr %40, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  tail call fastcc void @ieee80211_agg_tx_operational(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %14)
  br label %64

64:                                               ; preds = %63, %57
  %65 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 38, i32 12, i32 %19
  store i8 0, ptr %65, align 1
  %66 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 0, i32 2, i32 3
  %67 = load i16, ptr %66, align 1
  %68 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %29, i32 0, i32 7
  store i16 %67, ptr %68, align 4
  %69 = icmp eq i16 %67, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %29, i32 0, i32 1
  %72 = load volatile i32, ptr @jiffies, align 64
  %73 = zext i16 %67 to i32
  %74 = shl nuw nsw i32 %73, 10
  %75 = tail call i32 @__usecs_to_jiffies(i32 noundef %74) #9
  %76 = add i32 %75, %72
  %77 = tail call i32 @mod_timer(ptr noundef %71, i32 noundef %76) #9
  %78 = load volatile i32, ptr @jiffies, align 64
  %79 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %29, i32 0, i32 6
  store i32 %78, ptr %79, align 4
  br label %82

80:                                               ; preds = %48
  %81 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %1, i16 noundef zeroext %14, i32 noundef 0)
  br label %82

82:                                               ; preds = %80, %70, %64, %54, %44, %37, %31, %26
  tail call void @mutex_unlock(ptr noundef %27) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue_by_reason(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue_by_reason(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_schedule_txq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_wake_tx_queue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_start_tx_ba_session(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_start_tx_ba_cb(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get_bss(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_stop_tx_ba_session(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_stop_tx_ba_cb(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{i64 2149486899}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149487116}
!11 = !{i64 2159493447}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i8 0, i8 2}
!14 = !{!"auto-init"}
!15 = !{i64 2148310236}
!16 = !{i64 707398, i64 2148197369, i64 2148197395, i64 2148197442, i64 2148197464, i64 2148197492, i64 2148197512}
!17 = !{i64 2148212622, i64 2148212654, i64 2148212683, i64 2148212717, i64 2148212748, i64 2148212771}
!18 = !{i64 2148310439}
!19 = !{i64 2148307403}
!20 = !{i64 2148210265, i64 2148210297, i64 2148210326, i64 2148210360, i64 2148210391, i64 2148210414}
!21 = !{i64 2148307606}
!22 = !{i64 2149164224}
!23 = !{i64 2159248027}
!24 = !{i64 2159248207}
!25 = !{i64 2158730509}
!26 = !{i64 2158730683}
!27 = !{i64 2158744222}
!28 = !{i64 2158744398}
!29 = !{i64 2158757479}
!30 = !{i64 2158757651}
!31 = !{i64 2158771108}
!32 = !{i64 2158771282}
