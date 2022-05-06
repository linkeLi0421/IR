; ModuleID = '/llk/IR/net/mac80211/tdls.c_pt.bc'
source_filename = "../net/mac80211/tdls.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_tdls_oper_request:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_tdls_oper_request\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_tdls_oper_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.151, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%union.anon.151 = type { %struct.ieee80211_if_mesh }
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
%struct.ieee80211_tdls_data = type { [6 x i8], [6 x i8], i16, i8, i8, i8, %union.anon.185 }
%union.anon.185 = type <{ %struct.anon.189, [3 x i8] }>
%struct.anon.189 = type { i16, [0 x i8] }
%struct.anon.191 = type { i8, i8, [0 x i8] }
%struct.ieee80211_tdls_ch_sw_params = type { ptr, ptr, i8, i32, i32, i16, i16, ptr, i32 }
%struct.ieee802_11_elems = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8 }
%struct.ieee80211_tdls_lnkie = type { i8, i8, [6 x i8], [6 x i8], [6 x i8] }
%struct.ieee80211_ch_switch_timing = type { i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.anon.186 = type <{ i8, i16, [0 x i8] }>
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.152 }
%union.anon.152 = type { %struct.anon.158, [16 x i8] }
%struct.anon.158 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.165 = type { i8, %union.anon.166 }
%union.anon.166 = type <{ %struct.anon.171, [17 x i8] }>
%struct.anon.171 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.ieee80211_wmm_param_ie = type { i8, i8, [3 x i8], i8, i8, i8, i8, i8, [4 x %struct.ieee80211_wmm_ac_param] }
%struct.ieee80211_wmm_ac_param = type { i8, i8, i16 }

@ieee80211_tdls_oper.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [20 x i8] c"net/mac80211/tdls.c\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"\013%s: Discarding TDLS oper %d - not STA or disconnected\0A\00", align 1
@__kstrtab_ieee80211_tdls_oper_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_tdls_oper_request = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_tdls_oper_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_tdls_oper_request to i32), ptr @__kstrtab_ieee80211_tdls_oper_request, ptr @__kstrtabns_ieee80211_tdls_oper_request }, section "___ksymtab+ieee80211_tdls_oper_request", align 4
@ieee80211_process_tdls_channel_switch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"\013%s: Failed sending TDLS teardown packet %d\0A\00", align 1
@drv_mgd_protect_tdls_discover.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@drv_mgd_protect_tdls_discover.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_mgd_protect_tdls_discover = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@ieee80211_tdls_add_setup_start_ies.before_ext_cap = internal constant [5 x i8] c"\01\072$0", align 1
@ieee80211_tdls_add_setup_start_ies.before_ht_cap = internal constant [10 x i8] c"\01\072$0\7F.78;", align 1
@ieee80211_tdls_add_setup_start_ies.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_tdls_add_setup_start_ies.before_vht_cap = internal constant [11 x i8] c"\01\072$0\7F.78;\9E", align 1
@ieee80211_tdls_add_setup_cfm_ies.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_tdls_add_setup_cfm_ies.before_qos = internal constant [1 x i8] c"0", align 1
@ieee80211_tdls_add_setup_cfm_ies.before_ht_op = internal constant [4 x i8] c"0.78", align 1
@ieee80211_tdls_add_chan_switch_req_ies.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_tdls_add_chan_switch_req_ies.before_lnkie = internal constant [1 x i8] c">", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"net/mac80211/ieee80211_i.h\00", align 1
@drv_tdls_channel_switch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_tdls_channel_switch = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@drv_tdls_cancel_channel_switch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_tdls_cancel_channel_switch = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_tdls_recv_channel_switch = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ieee80211_tdls_oper_request], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_tdls_peer_del_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -1440
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr i8, ptr %0, i32 -6
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -2
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = or i32 %6, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 -1796
  %14 = tail call i32 @sta_info_destroy_addr(ptr noundef %13, ptr noundef %5) #10
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false) #10
  br label %15

15:                                               ; preds = %12, %1
  tail call void @mutex_unlock(ptr noundef %4) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_destroy_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_tdls_mgmt(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i16 noundef zeroext %5, i32 noundef %6, i1 noundef zeroext %7, ptr noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = getelementptr i8, ptr %1, i32 1408
  %12 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 11
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 32768
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %142, label %16

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %1, i32 3672
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %142

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %1, i32 2976
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %142, label %24

24:                                               ; preds = %20
  switch i8 %3, label %142 [
    i8 0, label %25
    i8 1, label %25
    i8 3, label %63
    i8 10, label %77
    i8 2, label %140
    i8 14, label %140
  ]

25:                                               ; preds = %24, %24
  %26 = getelementptr i8, ptr %1, i32 1764
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %1, i32 3004
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, 1
  br i1 %30, label %142, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ieee80211_local, ptr %27, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %32) #10
  %33 = getelementptr i8, ptr %1, i32 3198
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %1, i32 3202
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = or i32 %34, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %31
  %41 = load i32, ptr %2, align 4
  %42 = xor i32 %41, %34
  %43 = getelementptr i8, ptr %2, i32 4
  %44 = load i16, ptr %43, align 2
  %45 = xor i16 %44, %36
  %46 = zext i16 %45 to i32
  %47 = or i32 %42, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %40, %31
  %50 = icmp eq i16 %5, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %52 = tail call ptr @sta_info_get(ptr noundef %11, ptr noundef %2) #10
  %53 = icmp eq ptr %52, null
  tail call void asm sideeffect "", "~{memory}"() #10
  br i1 %53, label %61, label %54

54:                                               ; preds = %51, %49
  tail call void @ieee80211_flush_queues(ptr noundef %27, ptr noundef %11, i1 noundef zeroext false) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %33, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #10
  tail call void @mutex_unlock(ptr noundef %32) #10
  %55 = tail call fastcc i32 @ieee80211_tdls_prep_mgmt_packet(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i16 noundef zeroext %5, i1 noundef zeroext %7, ptr noundef %8, i32 noundef %9) #10
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  tail call void @mutex_lock(ptr noundef %32) #10
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %33, i8 0, i32 6, i1 false) #10
  tail call void @mutex_unlock(ptr noundef %32) #10
  br label %142

58:                                               ; preds = %54
  %59 = load ptr, ptr %26, align 4
  %60 = getelementptr i8, ptr %1, i32 3204
  tail call void @ieee80211_queue_delayed_work(ptr noundef %59, ptr noundef %60, i32 noundef 1500) #10
  br label %142

61:                                               ; preds = %51, %40
  %62 = phi i32 [ -16, %40 ], [ -67, %51 ]
  tail call void @mutex_unlock(ptr noundef %32) #10
  br label %142

63:                                               ; preds = %24
  %64 = getelementptr i8, ptr %1, i32 1764
  %65 = load ptr, ptr %64, align 4
  tail call void @ieee80211_stop_vif_queues(ptr noundef %65, ptr noundef %11, i32 noundef 8) #10
  tail call void @ieee80211_flush_queues(ptr noundef %65, ptr noundef %11, i1 noundef zeroext false) #10
  %66 = tail call fastcc i32 @ieee80211_tdls_prep_mgmt_packet(ptr noundef %1, ptr noundef %2, i8 noundef zeroext 3, i8 noundef zeroext %4, i16 noundef zeroext %5, i1 noundef zeroext %7, ptr noundef %8, i32 noundef %9) #10
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = getelementptr i8, ptr %1, i32 1776
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %69, i32 noundef %66) #11
  br label %71

71:                                               ; preds = %68, %63
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %72 = tail call ptr @sta_info_get(ptr noundef %11, ptr noundef %2) #10
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.sta_info, ptr %72, i32 0, i32 23
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %75) #10
  br label %76

76:                                               ; preds = %74, %71
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  tail call void @ieee80211_wake_vif_queues(ptr noundef %65, ptr noundef %11, i32 noundef 8) #10
  br label %142

77:                                               ; preds = %24
  %78 = getelementptr i8, ptr %1, i32 1764
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %1, i32 1768
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 32
  %83 = icmp eq i32 %82, 0
  %84 = load i1, ptr @drv_mgd_protect_tdls_discover.__already_done, align 1
  %85 = xor i1 %84, true
  %86 = select i1 %83, i1 %85, i1 false
  br i1 %86, label %87, label %93, !prof !10

87:                                               ; preds = %77
  store i1 true, ptr @drv_mgd_protect_tdls_discover.__already_done, align 1
  %88 = getelementptr i8, ptr %1, i32 1760
  %89 = load ptr, ptr %88, align 8
  %90 = icmp eq ptr %89, null
  %91 = getelementptr i8, ptr %1, i32 1776
  %92 = select i1 %90, ptr %91, ptr %89
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 862, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %92, i32 noundef %81) #10
  br label %93

93:                                               ; preds = %87, %77
  br i1 %83, label %140, label %94

94:                                               ; preds = %93
  %95 = load i32, ptr %17, align 8
  %96 = icmp ne i32 %95, 2
  %97 = load i1, ptr @drv_mgd_protect_tdls_discover.__already_done.5, align 1
  %98 = xor i1 %97, true
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %100, label %101, !prof !10

100:                                              ; preds = %94
  store i1 true, ptr @drv_mgd_protect_tdls_discover.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 864, i32 noundef 9, ptr noundef null) #10
  br label %101

101:                                              ; preds = %100, %94
  %102 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_mgd_protect_tdls_discover, i32 0, i32 1), align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = tail call ptr @llvm.thread.pointer() #10
  %106 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %107 = load i32, ptr %106, align 8
  %108 = lshr i32 %107, 5
  %109 = getelementptr i32, ptr @__cpu_online_mask, i32 %108
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %107, 31
  %112 = shl nuw i32 1, %111
  %113 = and i32 %112, %110
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %104
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %116 = tail call i32 @__traceiter_drv_mgd_protect_tdls_discover(ptr noundef null, ptr noundef %79, ptr noundef %11) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %117

117:                                              ; preds = %115, %104, %101
  %118 = getelementptr inbounds %struct.ieee80211_local, ptr %79, i32 0, i32 8
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.ieee80211_ops, ptr %119, i32 0, i32 68
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %117
  tail call void %121(ptr noundef %79, ptr noundef %17) #10
  br label %124

124:                                              ; preds = %123, %117
  %125 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = tail call ptr @llvm.thread.pointer() #10
  %129 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 2
  %130 = load i32, ptr %129, align 8
  %131 = lshr i32 %130, 5
  %132 = getelementptr i32, ptr @__cpu_online_mask, i32 %131
  %133 = load volatile i32, ptr %132, align 4
  %134 = and i32 %130, 31
  %135 = shl nuw i32 1, %134
  %136 = and i32 %135, %133
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %127
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %139 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %79) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br label %140

140:                                              ; preds = %138, %127, %124, %93, %24, %24
  %141 = tail call fastcc i32 @ieee80211_tdls_prep_mgmt_packet(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i16 noundef zeroext %5, i1 noundef zeroext %7, ptr noundef %8, i32 noundef %9)
  br label %142

142:                                              ; preds = %140, %76, %61, %58, %57, %25, %24, %20, %16, %10
  %143 = phi i32 [ -524, %10 ], [ -22, %20 ], [ -22, %16 ], [ %141, %140 ], [ 0, %76 ], [ -95, %24 ], [ %55, %57 ], [ 0, %58 ], [ %62, %61 ], [ -524, %25 ]
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_tdls_prep_mgmt_packet(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = getelementptr i8, ptr %0, i32 1408
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %10 = tail call ptr @sta_info_get(ptr noundef %9, ptr noundef %1) #10
  switch i8 %2, label %23 [
    i8 0, label %11
    i8 2, label %16
    i8 10, label %16
    i8 1, label %17
    i8 14, label %22
    i8 3, label %24
    i8 5, label %24
    i8 6, label %24
  ]

11:                                               ; preds = %8
  %12 = icmp eq ptr %10, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 13, ptr noundef %14) #10
  %15 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 46, i32 18
  store i8 0, ptr %15, align 1
  br label %16

16:                                               ; preds = %13, %11, %8, %8
  br label %24

17:                                               ; preds = %8
  %18 = icmp eq ptr %10, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 23
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %20) #10
  %21 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 46, i32 18
  store i8 1, ptr %21, align 1
  br label %22

22:                                               ; preds = %19, %17, %8
  br label %24

23:                                               ; preds = %8
  br label %24

24:                                               ; preds = %23, %22, %16, %8, %8, %8
  %25 = phi i1 [ %5, %23 ], [ %5, %8 ], [ %5, %8 ], [ %5, %8 ], [ false, %22 ], [ true, %16 ]
  %26 = phi i1 [ true, %23 ], [ false, %8 ], [ false, %8 ], [ false, %8 ], [ false, %22 ], [ false, %16 ]
  %27 = phi i32 [ -524, %23 ], [ 0, %8 ], [ 0, %8 ], [ 0, %8 ], [ 0, %22 ], [ 0, %16 ]
  %28 = icmp eq ptr %10, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 23
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 8192
  %33 = icmp ne i32 %32, 0
  %34 = or i1 %25, %33
  br label %35

35:                                               ; preds = %29, %24
  %36 = phi i1 [ %25, %24 ], [ %34, %29 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br i1 %26, label %91, label %37

37:                                               ; preds = %35
  %38 = tail call fastcc ptr @ieee80211_tdls_build_mgmt_packet_data(ptr noundef %9, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i1 noundef zeroext %36, ptr noundef %6, i32 noundef %7, i8 noundef zeroext 0, ptr noundef null)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %91, label %40

40:                                               ; preds = %37
  switch i8 %2, label %53 [
    i8 14, label %41
    i8 0, label %49
    i8 1, label %49
  ]

41:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %42 = getelementptr i8, ptr %0, i32 4492
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46, !prof !10

45:                                               ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2200, i32 noundef 9, ptr noundef null) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  tail call void @kfree_skb_reason(ptr noundef nonnull %38, i32 noundef 0) #10
  br label %93

46:                                               ; preds = %41
  %47 = load ptr, ptr %43, align 4
  %48 = load i32, ptr %47, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %9, ptr noundef nonnull %38, i32 noundef 7, i32 noundef %48) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %93

49:                                               ; preds = %40, %40
  %50 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 13, i32 0, i32 5
  store i32 258, ptr %50, align 8
  %51 = tail call zeroext i16 @ieee80211_select_queue(ptr noundef %9, ptr noundef nonnull %38) #10
  %52 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 9
  store i16 %51, ptr %52, align 4
  br label %85

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 13, i32 0, i32 5
  store i32 261, ptr %54, align 8
  %55 = tail call zeroext i16 @ieee80211_select_queue(ptr noundef %9, ptr noundef nonnull %38) #10
  %56 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 9
  store i16 %55, ptr %56, align 4
  %57 = icmp eq i8 %2, 3
  br i1 %57, label %58, label %85

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %0, i32 1764
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.ieee80211_hw, ptr %60, i32 0, i32 4
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 65536
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %85, label %65

65:                                               ; preds = %58
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %66 = tail call ptr @sta_info_get(ptr noundef %9, ptr noundef %1) #10
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.sta_info, ptr %66, i32 0, i32 23
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 4096
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %68, %65
  %74 = phi i1 [ false, %65 ], [ %72, %68 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %75 = getelementptr i8, ptr %0, i32 3256
  tail call void @_raw_spin_lock_bh(ptr noundef %75) #10
  br i1 %74, label %76, label %83

76:                                               ; preds = %73
  %77 = getelementptr i8, ptr %0, i32 3252
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = tail call ptr @skb_copy(ptr noundef nonnull %38, i32 noundef 2592) #10
  store ptr %81, ptr %77, align 4
  %82 = getelementptr i8, ptr %0, i32 3248
  store ptr %38, ptr %82, align 8
  br label %83

83:                                               ; preds = %80, %76, %73
  %84 = phi i32 [ 0, %76 ], [ 1048577, %80 ], [ 0, %73 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %75) #10
  br label %85

85:                                               ; preds = %83, %58, %53, %49
  %86 = phi i32 [ %84, %83 ], [ 0, %58 ], [ 0, %53 ], [ 0, %49 ]
  %87 = tail call ptr @llvm.thread.pointer() #10
  %88 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %89 = load volatile i32, ptr %88, align 4
  %90 = add i32 %89, 512
  store volatile i32 %90, ptr %88, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  tail call void @__ieee80211_subif_start_xmit(ptr noundef nonnull %38, ptr noundef %0, i32 noundef %86, i32 noundef 0, ptr noundef null) #10
  tail call fastcc void @local_bh_enable()
  br label %93

91:                                               ; preds = %37, %35
  %92 = phi i32 [ %27, %35 ], [ -22, %37 ]
  tail call void @consume_skb(ptr noundef null) #10
  br label %93

93:                                               ; preds = %91, %85, %46, %45
  %94 = phi i32 [ %92, %91 ], [ 0, %85 ], [ 0, %45 ], [ 0, %46 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_tdls_oper(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = getelementptr i8, ptr %1, i32 1764
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 32768
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %135, label %12

12:                                               ; preds = %4
  %13 = getelementptr i8, ptr %1, i32 3672
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %135

16:                                               ; preds = %12
  %17 = icmp ult i32 %3, 3
  br i1 %17, label %135, label %18

18:                                               ; preds = %16
  %19 = getelementptr i8, ptr %1, i32 1452
  tail call void @mutex_lock(ptr noundef %19) #10
  %20 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %20) #10
  switch i32 %3, label %133 [
    i32 3, label %21
    i32 4, label %54
  ]

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %1, i32 4479
  %23 = load i8, ptr %22, align 1, !range !16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %133

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %26) #10
  %27 = tail call ptr @sta_info_get(ptr noundef %5, ptr noundef %2) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void @mutex_unlock(ptr noundef %26) #10
  br label %133

30:                                               ; preds = %25
  tail call fastcc void @iee80211_tdls_recalc_chanctx(ptr noundef %5, ptr noundef nonnull %27)
  tail call fastcc void @iee80211_tdls_recalc_ht_protection(ptr noundef %5, ptr noundef nonnull %27)
  %31 = getelementptr inbounds %struct.sta_info, ptr %27, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 12, ptr noundef %31) #10
  tail call void @mutex_unlock(ptr noundef %26) #10
  %32 = getelementptr i8, ptr %1, i32 3198
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %1, i32 3202
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = or i32 %33, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %30
  %40 = load i32, ptr %2, align 4
  %41 = xor i32 %40, %33
  %42 = getelementptr i8, ptr %2, i32 4
  %43 = load i16, ptr %42, align 2
  %44 = xor i16 %43, %35
  %45 = zext i16 %44 to i32
  %46 = or i32 %41, %45
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %39, %30
  %49 = phi i1 [ true, %30 ], [ %47, %39 ]
  %50 = load i1, ptr @ieee80211_tdls_oper.__already_done, align 1
  %51 = xor i1 %50, true
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %114, !prof !10

53:                                               ; preds = %48
  store i1 true, ptr @ieee80211_tdls_oper.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1396, i32 noundef 9, ptr noundef null) #10
  br label %114

54:                                               ; preds = %18
  %55 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 54
  tail call void @tasklet_kill(ptr noundef %55) #10
  tail call void @ieee80211_flush_queues(ptr noundef %7, ptr noundef %5, i1 noundef zeroext false) #10
  %56 = tail call i32 @sta_info_destroy_addr(ptr noundef %5, ptr noundef %2) #10
  %57 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %57) #10
  %58 = getelementptr i8, ptr %1, i32 3024
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %104, label %62

62:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %63 = load ptr, ptr %6, align 4
  %64 = getelementptr inbounds %struct.ieee80211_local, ptr %63, i32 0, i32 49
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %96, label %67

67:                                               ; preds = %93, %62
  %68 = phi ptr [ %94, %93 ], [ %65, %62 ]
  %69 = getelementptr inbounds %struct.sta_info, ptr %68, i32 0, i32 46, i32 17
  %70 = load i8, ptr %69, align 4, !range !16
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %93, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.sta_info, ptr %68, i32 0, i32 6
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %5
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.sta_info, ptr %68, i32 0, i32 21
  %78 = load i8, ptr %77, align 4, !range !16
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.sta_info, ptr %68, i32 0, i32 23
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %82, 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %80
  %86 = load volatile i32, ptr %81, align 4
  %87 = and i32 %86, 4096
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.sta_info, ptr %68, i32 0, i32 46, i32 3, i32 1
  %91 = load i8, ptr %90, align 2, !range !16
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89, %85, %80, %76, %72, %67
  %94 = load volatile ptr, ptr %68, align 4
  %95 = icmp eq ptr %94, %64
  br i1 %95, label %96, label %67

96:                                               ; preds = %93, %89, %62
  %97 = phi i16 [ 0, %62 ], [ 0, %93 ], [ 23, %89 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %98 = getelementptr i8, ptr %1, i32 3760
  %99 = load i16, ptr %98, align 8
  %100 = and i16 %99, -24
  %101 = or i16 %100, %97
  %102 = icmp eq i16 %101, %99
  br i1 %102, label %104, label %103

103:                                              ; preds = %96
  store i16 %101, ptr %98, align 8
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %5, i32 noundef 16) #10
  br label %104

104:                                              ; preds = %103, %96, %54
  tail call void @mutex_unlock(ptr noundef %57) #10
  %105 = load ptr, ptr %6, align 4
  %106 = getelementptr inbounds %struct.ieee80211_local, ptr %105, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %106) #10
  %107 = getelementptr i8, ptr %1, i32 4492
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %104
  %111 = getelementptr i8, ptr %108, i32 -48
  tail call void @ieee80211_recalc_chanctx_chantype(ptr noundef %105, ptr noundef %111) #10
  br label %112

112:                                              ; preds = %110, %104
  tail call void @mutex_unlock(ptr noundef %106) #10
  %113 = icmp eq i32 %56, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %112, %53, %48
  %115 = getelementptr i8, ptr %1, i32 3198
  %116 = load i32, ptr %115, align 4
  %117 = load i32, ptr %2, align 4
  %118 = xor i32 %117, %116
  %119 = getelementptr i8, ptr %1, i32 3202
  %120 = load i16, ptr %119, align 2
  %121 = getelementptr i8, ptr %2, i32 4
  %122 = load i16, ptr %121, align 2
  %123 = xor i16 %122, %120
  %124 = zext i16 %123 to i32
  %125 = or i32 %118, %124
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %114
  %128 = getelementptr i8, ptr %1, i32 3204
  %129 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %128) #10
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %115, i8 0, i32 6, i1 false) #10
  br label %130

130:                                              ; preds = %127, %114
  %131 = load ptr, ptr %6, align 4
  %132 = getelementptr i8, ptr %1, i32 3008
  tail call void @ieee80211_queue_work(ptr noundef %131, ptr noundef %132) #10
  br label %133

133:                                              ; preds = %130, %112, %29, %21, %18
  %134 = phi i32 [ %56, %112 ], [ 0, %130 ], [ -524, %18 ], [ -16, %21 ], [ -67, %29 ]
  tail call void @mutex_unlock(ptr noundef %20) #10
  tail call void @mutex_unlock(ptr noundef %19) #10
  br label %135

135:                                              ; preds = %133, %16, %12, %4
  %136 = phi i32 [ %134, %133 ], [ -524, %4 ], [ -22, %12 ], [ -524, %16 ]
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iee80211_tdls_recalc_chanctx(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %7, align 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.wiphy, ptr %13, i32 0, i32 53, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %7, i32 -48
  tail call void @ieee80211_recalc_chanctx_chantype(ptr noundef %4, ptr noundef %18) #10
  %19 = load i32, ptr %10, align 4
  %20 = icmp ne i32 %11, %19
  %21 = icmp ne ptr %1, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %36

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 65536
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @ieee80211_chan_width_to_rx_bw(i32 noundef %19) #10
  %30 = tail call i32 @ieee80211_sta_cap_rx_bw(ptr noundef nonnull %1) #10
  %31 = tail call i32 @llvm.umin.i32(i32 %29, i32 %30)
  %32 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 14
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 %31, ptr %32, align 8
  tail call void @rate_control_rate_update(ptr noundef %4, ptr noundef %17, ptr noundef nonnull %1, i32 noundef 1) #10
  tail call void @ieee80211_recalc_chanctx_chantype(ptr noundef %4, ptr noundef %18) #10
  br label %36

36:                                               ; preds = %35, %28, %23, %9, %2
  tail call void @mutex_unlock(ptr noundef %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iee80211_tdls_recalc_ht_protection(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %66, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 3, i32 1
  %11 = load i8, ptr %10, align 2, !range !16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 27
  %15 = load i16, ptr %14, align 8
  br label %56

16:                                               ; preds = %9, %7
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ieee80211_local, ptr %18, i32 0, i32 49
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %51, label %22

22:                                               ; preds = %48, %16
  %23 = phi ptr [ %49, %48 ], [ %20, %16 ]
  %24 = getelementptr inbounds %struct.sta_info, ptr %23, i32 0, i32 46, i32 17
  %25 = load i8, ptr %24, align 4, !range !16
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.sta_info, ptr %23, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.sta_info, ptr %23, i32 0, i32 21
  %33 = load i8, ptr %32, align 4, !range !16
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.sta_info, ptr %23, i32 0, i32 23
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load volatile i32, ptr %36, align 4
  %42 = and i32 %41, 4096
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.sta_info, ptr %23, i32 0, i32 46, i32 3, i32 1
  %46 = load i8, ptr %45, align 2, !range !16
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %40, %35, %31, %27, %22
  %49 = load volatile ptr, ptr %23, align 4
  %50 = icmp eq ptr %49, %19
  br i1 %50, label %51, label %22

51:                                               ; preds = %48, %44, %16
  %52 = phi i1 [ true, %16 ], [ false, %44 ], [ true, %48 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 27
  %54 = load i16, ptr %53, align 8
  %55 = and i16 %54, -24
  br i1 %52, label %60, label %56

56:                                               ; preds = %51, %13
  %57 = phi i16 [ %15, %13 ], [ %54, %51 ]
  %58 = phi ptr [ %14, %13 ], [ %53, %51 ]
  %59 = or i16 %57, 23
  br label %60

60:                                               ; preds = %56, %51
  %61 = phi i16 [ %57, %56 ], [ %54, %51 ]
  %62 = phi ptr [ %58, %56 ], [ %53, %51 ]
  %63 = phi i16 [ %59, %56 ], [ %55, %51 ]
  %64 = icmp eq i16 %63, %61
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store i16 %63, ptr %62, align 8
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 16) #10
  br label %66

66:                                               ; preds = %65, %60, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_flush_queues(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_tdls_oper_request(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = load i32, ptr %0, align 8
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ieee80211_vif, ptr %0, i32 0, i32 1, i32 10
  %10 = load i8, ptr %9, align 1, !range !16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %5
  %13 = getelementptr i8, ptr %0, i32 -1896
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %13, i32 noundef %2) #11
  br label %18

15:                                               ; preds = %8
  %16 = getelementptr i8, ptr %0, i32 -1912
  %17 = load ptr, ptr %16, align 8
  tail call void @cfg80211_tdls_oper_request(ptr noundef %17, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef %4) #10
  br label %18

18:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_tdls_oper_request(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_tdls_channel_switch(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [9 x i8], align 1
  %7 = getelementptr i8, ptr %1, i32 1408
  %8 = getelementptr i8, ptr %1, i32 1764
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.ieee80211_channel, ptr %10, i32 0, i32 2
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %152

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %15) #10
  %16 = tail call ptr @sta_info_get(ptr noundef %7, ptr noundef %2) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %149, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sta_info, ptr %16, i32 0, i32 23
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 16384
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %149, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.sta_info, ptr %16, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %6, i8 0, i32 9, i1 false) #10, !annotation !17
  %26 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %4, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 62, ptr %6, align 1
  %31 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 1, ptr %30, align 1
  %32 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %4, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr inbounds %struct.ieee80211_channel, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %33, %36
  %38 = select i1 %37, i8 1, i8 3
  store i8 %38, ptr %31, align 1
  %39 = getelementptr inbounds i8, ptr %6, i32 3
  br label %40

40:                                               ; preds = %29, %23
  %41 = phi i32 [ 9, %29 ], [ 6, %23 ]
  %42 = phi ptr [ %39, %29 ], [ %6, %23 ]
  %43 = getelementptr i8, ptr %42, i32 1
  store i8 104, ptr %42, align 1
  %44 = getelementptr i8, ptr %42, i32 2
  store i8 4, ptr %43, align 1
  store i16 0, ptr %44, align 1
  %45 = getelementptr i8, ptr %42, i32 4
  store i16 0, ptr %45, align 1
  %46 = getelementptr inbounds %struct.sta_info, ptr %16, i32 0, i32 46, i32 1
  %47 = getelementptr inbounds %struct.sta_info, ptr %16, i32 0, i32 46, i32 18
  %48 = load i8, ptr %47, align 1, !range !16
  %49 = icmp eq i8 %48, 0
  %50 = call fastcc ptr @ieee80211_tdls_build_mgmt_packet_data(ptr noundef %25, ptr noundef %46, i8 noundef zeroext 5, i8 noundef zeroext 0, i16 noundef zeroext 0, i1 noundef zeroext %49, ptr noundef nonnull %6, i32 noundef %41, i8 noundef zeroext %3, ptr noundef %4) #10
  %51 = icmp eq ptr %50, null
  br i1 %51, label %79, label %52

52:                                               ; preds = %40
  %53 = call ptr @ieee80211_build_data_template(ptr noundef %25, ptr noundef nonnull %50, i32 noundef 0) #10
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %79, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 17
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 16
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 13, i32 0, i32 18
  %61 = load i16, ptr %60, align 4
  %62 = zext i16 %61 to i32
  %63 = getelementptr i8, ptr %59, i32 %62
  %64 = ptrtoint ptr %63 to i32
  %65 = ptrtoint ptr %57 to i32
  %66 = sub i32 %64, %65
  %67 = getelementptr i8, ptr %57, i32 %66
  %68 = getelementptr i8, ptr %67, i32 -14
  %69 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.anon.191, ptr %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 5
  %72 = load i32, ptr %71, align 8
  %73 = ptrtoint ptr %70 to i32
  %74 = add i32 %72, %65
  %75 = sub i32 %74, %73
  %76 = call ptr @cfg80211_find_elem_match(i8 noundef zeroext 104, ptr noundef %70, i32 noundef %75, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %55
  call void @__dev_kfree_skb_any(ptr noundef %53, i32 noundef 1) #10
  br label %79

79:                                               ; preds = %78, %52, %40
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %6) #10
  br label %149

80:                                               ; preds = %55
  %81 = load ptr, ptr %56, align 4
  %82 = ptrtoint ptr %76 to i32
  %83 = ptrtoint ptr %81 to i32
  %84 = sub i32 %82, %83
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %6) #10
  %85 = icmp eq ptr %53, null
  br i1 %85, label %149, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.sta_info, ptr %16, i32 0, i32 46
  %88 = getelementptr i8, ptr %1, i32 1768
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 32
  %91 = icmp eq i32 %90, 0
  %92 = load i1, ptr @drv_tdls_channel_switch.__already_done, align 1
  %93 = xor i1 %92, true
  %94 = select i1 %91, i1 %93, i1 false
  br i1 %94, label %95, label %101, !prof !10

95:                                               ; preds = %86
  store i1 true, ptr @drv_tdls_channel_switch.__already_done, align 1
  %96 = getelementptr i8, ptr %1, i32 1760
  %97 = load ptr, ptr %96, align 8
  %98 = icmp eq ptr %97, null
  %99 = getelementptr i8, ptr %1, i32 1776
  %100 = select i1 %98, ptr %99, ptr %97
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1174, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %100, i32 noundef %89) #10
  br label %101

101:                                              ; preds = %95, %86
  br i1 %91, label %149, label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 8
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.ieee80211_ops, ptr %104, i32 0, i32 86
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %149, label %108

108:                                              ; preds = %102
  %109 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tdls_channel_switch, i32 0, i32 1), align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %108
  %112 = tail call ptr @llvm.thread.pointer() #10
  %113 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 2
  %114 = load i32, ptr %113, align 8
  %115 = lshr i32 %114, 5
  %116 = getelementptr i32, ptr @__cpu_online_mask, i32 %115
  %117 = load volatile i32, ptr %116, align 4
  %118 = and i32 %114, 31
  %119 = shl nuw i32 1, %118
  %120 = and i32 %119, %117
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %111
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  %123 = call i32 @__traceiter_drv_tdls_channel_switch(ptr noundef null, ptr noundef %9, ptr noundef %7, ptr noundef %87, i8 noundef zeroext %3, ptr noundef %4) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %124 = load ptr, ptr %103, align 4
  %125 = getelementptr inbounds %struct.ieee80211_ops, ptr %124, i32 0, i32 86
  %126 = load ptr, ptr %125, align 4
  br label %127

127:                                              ; preds = %122, %111, %108
  %128 = phi ptr [ %106, %108 ], [ %106, %111 ], [ %126, %122 ]
  %129 = getelementptr i8, ptr %1, i32 3672
  %130 = call i32 %128(ptr noundef %9, ptr noundef %129, ptr noundef %87, i8 noundef zeroext %3, ptr noundef %4, ptr noundef nonnull %53, i32 noundef %84) #10
  %131 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %127
  %134 = tail call ptr @llvm.thread.pointer() #10
  %135 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 2
  %136 = load i32, ptr %135, align 8
  %137 = lshr i32 %136, 5
  %138 = getelementptr i32, ptr @__cpu_online_mask, i32 %137
  %139 = load volatile i32, ptr %138, align 4
  %140 = and i32 %136, 31
  %141 = shl nuw i32 1, %140
  %142 = and i32 %141, %139
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %133
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %145 = call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %9, i32 noundef %130) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  br label %146

146:                                              ; preds = %144, %133, %127
  %147 = icmp eq i32 %130, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %146
  call void @_set_bit(i32 noundef 15, ptr noundef %19) #10
  br label %149

149:                                              ; preds = %148, %146, %102, %101, %80, %79, %18, %14
  %150 = phi ptr [ %53, %146 ], [ %53, %148 ], [ null, %14 ], [ null, %18 ], [ null, %80 ], [ null, %79 ], [ %53, %101 ], [ %53, %102 ]
  %151 = phi i32 [ %130, %146 ], [ 0, %148 ], [ -2, %14 ], [ -524, %18 ], [ -2, %80 ], [ -2, %79 ], [ -5, %101 ], [ -95, %102 ]
  call void @mutex_unlock(ptr noundef %15) #10
  call void @__dev_kfree_skb_any(ptr noundef %150, i32 noundef 1) #10
  br label %152

152:                                              ; preds = %149, %5
  %153 = phi i32 [ %151, %149 ], [ -95, %5 ]
  ret i32 %153
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_tdls_cancel_channel_switch(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = getelementptr i8, ptr %1, i32 1764
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = tail call ptr @sta_info_get(ptr noundef %4, ptr noundef %2) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %75, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sta_info, ptr %8, i32 0, i32 23
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 32768
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %75, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sta_info, ptr %8, i32 0, i32 46
  %17 = getelementptr i8, ptr %1, i32 1768
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  %21 = load i1, ptr @drv_tdls_cancel_channel_switch.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %30, !prof !10

24:                                               ; preds = %15
  store i1 true, ptr @drv_tdls_cancel_channel_switch.__already_done, align 1
  %25 = getelementptr i8, ptr %1, i32 1760
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  %28 = getelementptr i8, ptr %1, i32 1776
  %29 = select i1 %27, ptr %28, ptr %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1194, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %29, i32 noundef %18) #10
  br label %30

30:                                               ; preds = %24, %15
  br i1 %20, label %74, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ieee80211_ops, ptr %33, i32 0, i32 87
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %74, label %37

37:                                               ; preds = %31
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tdls_cancel_channel_switch, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = tail call ptr @llvm.thread.pointer() #10
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %52 = tail call i32 @__traceiter_drv_tdls_cancel_channel_switch(ptr noundef null, ptr noundef %6, ptr noundef %4, ptr noundef %16) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %53 = load ptr, ptr %32, align 4
  %54 = getelementptr inbounds %struct.ieee80211_ops, ptr %53, i32 0, i32 87
  %55 = load ptr, ptr %54, align 4
  br label %56

56:                                               ; preds = %51, %40, %37
  %57 = phi ptr [ %35, %37 ], [ %35, %40 ], [ %55, %51 ]
  %58 = getelementptr i8, ptr %1, i32 3672
  tail call void %57(ptr noundef %6, ptr noundef %58, ptr noundef %16) #10
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = tail call ptr @llvm.thread.pointer() #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %73 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %6) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br label %74

74:                                               ; preds = %72, %61, %56, %31, %30
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %11) #10
  br label %75

75:                                               ; preds = %74, %10, %3
  tail call void @mutex_unlock(ptr noundef %7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_process_tdls_channel_switch(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ieee80211_tdls_ch_sw_params, align 4
  %4 = alloca %struct.cfg80211_chan_def, align 4
  %5 = alloca %struct.ieee80211_tdls_ch_sw_params, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 13
  %13 = load i32, ptr %12, align 32
  %14 = and i32 %13, 268435456
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %267, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %18) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %267, label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %7, i32 0, i32 5
  %25 = load i8, ptr %24, align 1
  switch i8 %25, label %264 [
    i8 5, label %26
    i8 6, label %152
  ]

26:                                               ; preds = %23
  %27 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false) #10, !annotation !17
  %28 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false) #10
  %29 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %5, i32 0, i32 2
  store i8 5, ptr %29, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %5, i32 0, i32 4
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %34 = load i32, ptr %33, align 8
  %35 = icmp ult i32 %34, 19
  br i1 %35, label %151, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %28, i32 0, i32 6
  %38 = load i8, ptr %37, align 1
  %39 = getelementptr inbounds %struct.anon.191, ptr %37, i32 0, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 112
  %42 = and i8 %40, -2
  %43 = icmp eq i8 %42, 2
  %44 = or i1 %41, %43
  %45 = icmp eq i8 %42, 4
  %46 = or i1 %45, %44
  %47 = icmp eq i8 %40, 6
  %48 = select i1 %46, i1 true, i1 %47
  %49 = zext i8 %38 to i32
  %50 = icmp ult i8 %38, 14
  %51 = select i1 %48, i1 %50, i1 false
  %52 = xor i1 %50, true
  %53 = select i1 %51, i1 true, i1 %52
  %54 = zext i1 %53 to i32
  %55 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %49, i32 noundef %54) #10
  %56 = icmp ult i32 %55, 1000
  br i1 %56, label %151, label %57

57:                                               ; preds = %36
  %58 = load ptr, ptr %8, align 4
  %59 = getelementptr inbounds %struct.ieee80211_hw, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  %61 = urem i32 %55, 1000
  %62 = sub nuw i32 %55, %61
  %63 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %60, i32 noundef %62) #10
  %64 = icmp eq ptr %63, null
  br i1 %64, label %151, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %28, i32 0, i32 6, i32 1
  %67 = load i32, ptr %33, align 8
  %68 = add i32 %67, -19
  %69 = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %66, i32 noundef %68, i1 noundef zeroext false, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %70 = icmp eq ptr %69, null
  br i1 %70, label %151, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ieee802_11_elems, ptr %69, i32 0, i32 76
  %73 = load i8, ptr %72, align 2, !range !16
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %150

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ieee802_11_elems, ptr %69, i32 0, i32 4
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %150, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.ieee802_11_elems, ptr %69, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %150, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.ieee802_11_elems, ptr %69, i32 0, i32 44
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = load i8, ptr %85, align 1
  %89 = icmp eq i8 %88, 3
  %90 = select i1 %89, i32 2, i32 1
  %91 = icmp eq i8 %88, 1
  %92 = select i1 %91, i32 3, i32 %90
  br label %93

93:                                               ; preds = %87, %83
  %94 = phi i32 [ 1, %83 ], [ %92, %87 ]
  call void @cfg80211_chandef_create(ptr noundef nonnull %4, ptr noundef nonnull %63, i32 noundef %94) #10
  %95 = load ptr, ptr %8, align 4
  %96 = getelementptr inbounds %struct.ieee80211_hw, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = call zeroext i1 @cfg80211_reg_can_beacon_relax(ptr noundef %97, ptr noundef nonnull %4, i32 noundef %99) #10
  br i1 %100, label %101, label %150

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.ieee80211_local, ptr %27, i32 0, i32 46
  call void @mutex_lock(ptr noundef %102) #10
  %103 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %28, i32 0, i32 1
  %104 = call ptr @sta_info_get(ptr noundef %0, ptr noundef %103) #10
  %105 = icmp eq ptr %104, null
  br i1 %105, label %147, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.sta_info, ptr %104, i32 0, i32 23
  %108 = load volatile i32, ptr %107, align 4
  %109 = and i32 %108, 4096
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %147, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.sta_info, ptr %104, i32 0, i32 46
  store ptr %112, ptr %5, align 4
  %113 = load ptr, ptr %80, align 4
  %114 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  %116 = call i32 @bcmp(ptr noundef dereferenceable(6) %114, ptr noundef dereferenceable(6) %115, i32 6) #10
  %117 = icmp eq i32 %116, 0
  %118 = getelementptr inbounds %struct.sta_info, ptr %104, i32 0, i32 46, i32 18
  %119 = load i8, ptr %118, align 1, !range !16
  %120 = zext i1 %117 to i8
  %121 = icmp eq i8 %119, %120
  br i1 %121, label %147, label %122

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.sta_info, ptr %104, i32 0, i32 46, i32 3, i32 1
  %124 = load i8, ptr %123, align 2, !range !16
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load ptr, ptr %84, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i8, ptr %127, align 1
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %129, %126, %122
  %133 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %5, i32 0, i32 1
  store ptr %4, ptr %133, align 4
  %134 = load ptr, ptr %76, align 4
  %135 = load i16, ptr %134, align 1
  %136 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %5, i32 0, i32 5
  store i16 %135, ptr %136, align 4
  %137 = load ptr, ptr %76, align 4
  %138 = getelementptr inbounds %struct.ieee80211_ch_switch_timing, ptr %137, i32 0, i32 1
  %139 = load i16, ptr %138, align 1
  %140 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %5, i32 0, i32 6
  store i16 %139, ptr %140, align 2
  %141 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %5, i32 0, i32 8
  %142 = call fastcc ptr @ieee80211_tdls_ch_sw_resp_tmpl_get(ptr noundef nonnull %104, ptr noundef %141) #10
  %143 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %5, i32 0, i32 7
  store ptr %142, ptr %143, align 4
  %144 = icmp eq ptr %142, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %132
  %146 = load ptr, ptr %8, align 4
  call fastcc void @drv_tdls_recv_channel_switch(ptr noundef %146, ptr noundef %0, ptr noundef nonnull %5) #10
  br label %147

147:                                              ; preds = %145, %132, %129, %111, %106, %101
  call void @mutex_unlock(ptr noundef %102) #10
  %148 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %5, i32 0, i32 7
  %149 = load ptr, ptr %148, align 4
  call void @__dev_kfree_skb_any(ptr noundef %149, i32 noundef 1) #10
  br label %150

150:                                              ; preds = %147, %93, %79, %75, %71
  call void @kfree(ptr noundef nonnull %69) #10
  br label %151

151:                                              ; preds = %150, %65, %57, %36, %26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #10
  br label %267

152:                                              ; preds = %23
  %153 = load ptr, ptr %8, align 4
  %154 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #10
  %155 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %3, i32 0, i32 2
  store i8 6, ptr %155, align 4
  %156 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %157 = load i32, ptr %156, align 8
  %158 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %3, i32 0, i32 4
  store i32 %157, ptr %158, align 4
  %159 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %160 = load i32, ptr %159, align 8
  %161 = icmp ult i32 %160, 19
  br i1 %161, label %263, label %162

162:                                              ; preds = %152
  %163 = getelementptr inbounds %struct.ieee80211_local, ptr %153, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %163) #10
  %164 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %154, i32 0, i32 1
  %165 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef %164) #10
  %166 = icmp eq ptr %165, null
  br i1 %166, label %259, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.sta_info, ptr %165, i32 0, i32 23
  %169 = load volatile i32, ptr %168, align 4
  %170 = and i32 %169, 4096
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %259, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.sta_info, ptr %165, i32 0, i32 46
  store ptr %173, ptr %3, align 4
  %174 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %154, i32 0, i32 6
  %175 = load i16, ptr %174, align 1
  %176 = zext i16 %175 to i32
  %177 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %3, i32 0, i32 3
  store i32 %176, ptr %177, align 4
  %178 = icmp eq i16 %175, 0
  br i1 %178, label %179, label %217

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %154, i32 0, i32 6, i32 1
  %181 = load i32, ptr %159, align 8
  %182 = add i32 %181, -19
  %183 = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %180, i32 noundef %182, i1 noundef zeroext false, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %184 = icmp eq ptr %183, null
  br i1 %184, label %259, label %185

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.ieee802_11_elems, ptr %183, i32 0, i32 76
  %187 = load i8, ptr %186, align 2, !range !16
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %259

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.ieee802_11_elems, ptr %183, i32 0, i32 4
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %259, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.ieee802_11_elems, ptr %183, i32 0, i32 3
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %259, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %195, i32 0, i32 3
  %199 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  %200 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %198, ptr noundef dereferenceable(6) %199, i32 6) #10
  %201 = icmp eq i32 %200, 0
  %202 = getelementptr inbounds %struct.sta_info, ptr %165, i32 0, i32 46, i32 18
  %203 = load i8, ptr %202, align 1, !range !16
  %204 = zext i1 %201 to i8
  %205 = icmp eq i8 %203, %204
  br i1 %205, label %259, label %206

206:                                              ; preds = %197
  %207 = load i16, ptr %191, align 1
  %208 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %3, i32 0, i32 5
  store i16 %207, ptr %208, align 4
  %209 = load ptr, ptr %190, align 4
  %210 = getelementptr inbounds %struct.ieee80211_ch_switch_timing, ptr %209, i32 0, i32 1
  %211 = load i16, ptr %210, align 1
  %212 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %3, i32 0, i32 6
  store i16 %211, ptr %212, align 2
  %213 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %3, i32 0, i32 8
  %214 = call fastcc ptr @ieee80211_tdls_ch_sw_resp_tmpl_get(ptr noundef nonnull %165, ptr noundef %213) #10
  %215 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %3, i32 0, i32 7
  store ptr %214, ptr %215, align 4
  %216 = icmp eq ptr %214, null
  br i1 %216, label %259, label %217

217:                                              ; preds = %206, %172
  %218 = phi ptr [ null, %172 ], [ %183, %206 ]
  %219 = load ptr, ptr %8, align 4
  %220 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tdls_recv_channel_switch, i32 0, i32 1), align 4
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %217
  %223 = tail call ptr @llvm.thread.pointer() #10
  %224 = getelementptr inbounds %struct.thread_info, ptr %223, i32 0, i32 2
  %225 = load i32, ptr %224, align 8
  %226 = lshr i32 %225, 5
  %227 = getelementptr i32, ptr @__cpu_online_mask, i32 %226
  %228 = load volatile i32, ptr %227, align 4
  %229 = and i32 %225, 31
  %230 = shl nuw i32 1, %229
  %231 = and i32 %230, %228
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %222
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %234 = call i32 @__traceiter_drv_tdls_recv_channel_switch(ptr noundef null, ptr noundef %219, ptr noundef %0, ptr noundef nonnull %3) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  br label %235

235:                                              ; preds = %233, %222, %217
  %236 = getelementptr inbounds %struct.ieee80211_local, ptr %219, i32 0, i32 8
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr inbounds %struct.ieee80211_ops, ptr %237, i32 0, i32 88
  %239 = load ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %243, label %241

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  call void %239(ptr noundef %219, ptr noundef %242, ptr noundef nonnull %3) #10
  br label %243

243:                                              ; preds = %241, %235
  %244 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %259

246:                                              ; preds = %243
  %247 = tail call ptr @llvm.thread.pointer() #10
  %248 = getelementptr inbounds %struct.thread_info, ptr %247, i32 0, i32 2
  %249 = load i32, ptr %248, align 8
  %250 = lshr i32 %249, 5
  %251 = getelementptr i32, ptr @__cpu_online_mask, i32 %250
  %252 = load volatile i32, ptr %251, align 4
  %253 = and i32 %249, 31
  %254 = shl nuw i32 1, %253
  %255 = and i32 %254, %252
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %246
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %258 = call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %219) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br label %259

259:                                              ; preds = %257, %246, %243, %206, %197, %193, %189, %185, %179, %167, %162
  %260 = phi ptr [ null, %162 ], [ null, %167 ], [ null, %179 ], [ %183, %185 ], [ %183, %189 ], [ %183, %193 ], [ %183, %197 ], [ %183, %206 ], [ %218, %243 ], [ %218, %246 ], [ %218, %257 ]
  call void @mutex_unlock(ptr noundef %163) #10
  %261 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %3, i32 0, i32 7
  %262 = load ptr, ptr %261, align 4
  call void @__dev_kfree_skb_any(ptr noundef %262, i32 noundef 1) #10
  call void @kfree(ptr noundef %260) #10
  br label %263

263:                                              ; preds = %259, %152
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %267

264:                                              ; preds = %23
  %265 = load i1, ptr @ieee80211_process_tdls_channel_switch.__already_done, align 1
  br i1 %265, label %267, label %266, !prof !26

266:                                              ; preds = %264
  store i1 true, ptr @ieee80211_process_tdls_channel_switch.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1964, i32 noundef 9, ptr noundef null) #10
  br label %267

267:                                              ; preds = %266, %264, %263, %151, %20, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_teardown_tdls_peers(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 49
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %46, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 10
  %10 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %11 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  br label %12

12:                                               ; preds = %41, %7
  %13 = phi ptr [ %5, %7 ], [ %42, %41 ]
  %14 = getelementptr inbounds %struct.sta_info, ptr %13, i32 0, i32 46, i32 17
  %15 = load i8, ptr %14, align 4, !range !16
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sta_info, ptr %13, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sta_info, ptr %13, i32 0, i32 21
  %23 = load i8, ptr %22, align 4, !range !16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sta_info, ptr %13, i32 0, i32 23
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.sta_info, ptr %13, i32 0, i32 46, i32 1
  %32 = load i32, ptr %8, align 8
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8, ptr %9, align 1, !range !16
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %30
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %11, i32 noundef 2) #11
  br label %41

39:                                               ; preds = %34
  %40 = load ptr, ptr %10, align 8
  tail call void @cfg80211_tdls_oper_request(ptr noundef %40, ptr noundef %31, i32 noundef 2, i16 noundef zeroext 26, i32 noundef 2592) #10
  br label %41

41:                                               ; preds = %39, %37, %25, %21, %17, %12
  %42 = load volatile ptr, ptr %13, align 4
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr inbounds %struct.ieee80211_local, ptr %43, i32 0, i32 49
  %45 = icmp eq ptr %42, %44
  br i1 %45, label %46, label %12

46:                                               ; preds = %41, %1
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_tdls_handle_disconnect(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %5 = tail call ptr @ieee80211_find_sta(ptr noundef %4, ptr noundef %1) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 0, i32 17
  %9 = load i8, ptr %8, align 4, !range !16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %3
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %25

12:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %13 = load i32, ptr %4, align 8
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 10
  %17 = load i8, ptr %16, align 1, !range !16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %12
  %20 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %20, i32 noundef 2) #11
  br label %25

22:                                               ; preds = %15
  %23 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 8
  tail call void @cfg80211_tdls_oper_request(ptr noundef %24, ptr noundef %1, i32 noundef 2, i16 noundef zeroext 25, i32 noundef 2592) #10
  br label %25

25:                                               ; preds = %22, %19, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_vif_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_vif_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_mgd_protect_tdls_discover(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_tdls_build_mgmt_packet_data(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6, i32 noundef %7, i8 noundef zeroext %8, ptr noundef readonly %9) unnamed_addr #0 {
  %11 = alloca i8, align 1
  %12 = alloca %struct.ieee80211_sta_ht_cap, align 2
  %13 = alloca %struct.ieee80211_sta_vht_cap, align 4
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, ptr %15, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %7, 259
  %21 = add i32 %20, %19
  %22 = tail call ptr @__netdev_alloc_skb(ptr noundef %17, i32 noundef %21, i32 noundef 2592) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %686, label %24

24:                                               ; preds = %10
  %25 = load i32, ptr %18, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %25
  store ptr %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 14
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr i8, ptr %30, i32 %25
  store ptr %31, ptr %29, align 8
  switch i8 %2, label %685 [
    i8 0, label %32
    i8 1, label %32
    i8 2, label %32
    i8 3, label %32
    i8 10, label %32
    i8 5, label %32
    i8 6, label %32
    i8 14, label %117
  ]

32:                                               ; preds = %24, %24, %24, %24, %24, %24, %24
  %33 = load ptr, ptr %16, align 8
  %34 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 17) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %34, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #10
  %35 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 1
  %36 = getelementptr i8, ptr %33, i32 4472
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %35, ptr noundef align 8 dereferenceable(6) %36, i32 6, i1 false) #10
  %37 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 2
  store i16 3465, ptr %37, align 1
  %38 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 3
  store i8 2, ptr %38, align 1
  %39 = load ptr, ptr %26, align 4
  %40 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 16
  %41 = load ptr, ptr %40, align 8
  %42 = ptrtoint ptr %39 to i32
  %43 = ptrtoint ptr %41 to i32
  %44 = sub i32 %42, %43
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 13, i32 0, i32 18
  %47 = add i16 %45, 14
  store i16 %47, ptr %46, align 4
  switch i8 %2, label %685 [
    i8 0, label %48
    i8 1, label %77
    i8 2, label %382
    i8 3, label %107
    i8 10, label %112
    i8 5, label %626
    i8 6, label %665
  ]

48:                                               ; preds = %32
  %49 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 4
  store i8 12, ptr %49, align 1
  %50 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 5
  store i8 0, ptr %50, align 1
  %51 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 3) #10
  %52 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 6
  store i8 %3, ptr %52, align 1
  %53 = icmp eq i16 %4, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %48
  %55 = getelementptr i8, ptr %33, i32 1764
  %56 = load ptr, ptr %55, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %57 = getelementptr i8, ptr %33, i32 4492
  %58 = load volatile ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %73

61:                                               ; preds = %54
  %62 = load ptr, ptr %58, align 4
  %63 = load i32, ptr %62, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %64 = getelementptr inbounds %struct.ieee80211_hw, ptr %56, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr %struct.wiphy, ptr %65, i32 0, i32 53, i32 %63
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %67, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69, %61, %60
  br label %74

74:                                               ; preds = %73, %69, %48
  %75 = phi i16 [ 0, %73 ], [ 0, %48 ], [ 1056, %69 ]
  %76 = getelementptr inbounds %struct.anon.186, ptr %52, i32 0, i32 1
  store i16 %75, ptr %76, align 1
  br label %153

77:                                               ; preds = %32
  %78 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 4
  store i8 12, ptr %78, align 1
  %79 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 5
  store i8 1, ptr %79, align 1
  %80 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 5) #10
  %81 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 6
  store i16 %4, ptr %81, align 1
  %82 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 6, i32 1
  store i8 %3, ptr %82, align 1
  %83 = icmp eq i16 %4, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %77
  %85 = getelementptr i8, ptr %33, i32 1764
  %86 = load ptr, ptr %85, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %87 = getelementptr i8, ptr %33, i32 4492
  %88 = load volatile ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %103

91:                                               ; preds = %84
  %92 = load ptr, ptr %88, align 4
  %93 = load i32, ptr %92, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %94 = getelementptr inbounds %struct.ieee80211_hw, ptr %86, i32 0, i32 1
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr %struct.wiphy, ptr %95, i32 0, i32 53, i32 %93
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %97, i32 0, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99, %91, %90
  br label %104

104:                                              ; preds = %103, %99, %77
  %105 = phi i16 [ 0, %103 ], [ 0, %77 ], [ 1056, %99 ]
  %106 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 6, i32 1, i32 1
  store i16 %105, ptr %106, align 1
  br label %153

107:                                              ; preds = %32
  %108 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 4
  store i8 12, ptr %108, align 1
  %109 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 5
  store i8 3, ptr %109, align 1
  %110 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 2) #10
  %111 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 6
  store i16 %4, ptr %111, align 1
  br label %608

112:                                              ; preds = %32
  %113 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 4
  store i8 12, ptr %113, align 1
  %114 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 5
  store i8 10, ptr %114, align 1
  %115 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 1) #10
  %116 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 6
  store i8 %3, ptr %116, align 1
  br label %608

117:                                              ; preds = %24
  %118 = load ptr, ptr %16, align 8
  %119 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 24) #10
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(24) %119, i8 0, i32 24, i1 false) #10
  %120 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %119, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %120, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #10
  %121 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %119, i32 0, i32 3
  %122 = getelementptr i8, ptr %118, i32 4472
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %121, ptr noundef align 8 dereferenceable(6) %122, i32 6, i1 false) #10
  %123 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %119, i32 0, i32 4
  %124 = getelementptr i8, ptr %118, i32 2988
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %123, ptr noundef align 4 dereferenceable(6) %124, i32 6, i1 false) #10
  store i16 208, ptr %119, align 2
  %125 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 5) #10
  %126 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %119, i32 0, i32 6
  store i8 4, ptr %126, align 2
  %127 = getelementptr inbounds %struct.anon.165, ptr %126, i32 0, i32 1
  store i8 14, ptr %127, align 1
  %128 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %119, i32 0, i32 6, i32 0, i32 1
  store i8 %3, ptr %128, align 1
  %129 = icmp eq i16 %4, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %117
  %131 = getelementptr i8, ptr %118, i32 1764
  %132 = load ptr, ptr %131, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %133 = getelementptr i8, ptr %118, i32 4492
  %134 = load volatile ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %149

137:                                              ; preds = %130
  %138 = load ptr, ptr %134, align 4
  %139 = load i32, ptr %138, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %140 = getelementptr inbounds %struct.ieee80211_hw, ptr %132, i32 0, i32 1
  %141 = load ptr, ptr %140, align 8
  %142 = getelementptr %struct.wiphy, ptr %141, i32 0, i32 53, i32 %139
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %137
  %146 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %143, i32 0, i32 2
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %145, %137, %136
  br label %150

150:                                              ; preds = %149, %145, %117
  %151 = phi i16 [ 0, %149 ], [ 0, %117 ], [ 1056, %145 ]
  %152 = getelementptr inbounds %struct.anon.165, ptr %126, i32 0, i32 1, i32 0, i32 2
  store i16 %151, ptr %152, align 1
  br label %153

153:                                              ; preds = %150, %104, %74
  %154 = icmp eq i16 %4, 0
  br i1 %154, label %155, label %686

155:                                              ; preds = %153
  %156 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %157 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %158 = load volatile ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %381

161:                                              ; preds = %155
  %162 = load ptr, ptr %158, align 4
  %163 = load i32, ptr %162, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %164 = getelementptr inbounds %struct.ieee80211_hw, ptr %156, i32 0, i32 1
  %165 = load ptr, ptr %164, align 8
  %166 = getelementptr %struct.wiphy, ptr %165, i32 0, i32 53, i32 %163
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %381, label %169

169:                                              ; preds = %161
  %170 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %167, i32 0, i32 2
  %171 = load i32, ptr %170, align 4
  %172 = tail call i32 @ieee80211_add_srates_ie(ptr noundef %0, ptr noundef nonnull %22, i1 noundef zeroext false, i32 noundef %171) #10
  %173 = load i32, ptr %170, align 4
  %174 = tail call i32 @ieee80211_add_ext_srates_ie(ptr noundef %0, ptr noundef nonnull %22, i1 noundef zeroext false, i32 noundef %173) #10
  %175 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 2) #10
  %176 = getelementptr i8, ptr %175, i32 1
  store i8 36, ptr %175, align 1
  %177 = tail call fastcc zeroext i8 @ieee80211_tdls_add_subband(ptr noundef %0, ptr noundef nonnull %22, i16 noundef zeroext 2412, i16 noundef zeroext 2472, i16 noundef zeroext 5) #10
  %178 = tail call fastcc zeroext i8 @ieee80211_tdls_add_subband(ptr noundef %0, ptr noundef nonnull %22, i16 noundef zeroext 5000, i16 noundef zeroext 5825, i16 noundef zeroext 20) #10
  %179 = add i8 %178, %177
  %180 = shl i8 %179, 1
  store i8 %180, ptr %176, align 1
  %181 = icmp eq i32 %7, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %169
  %183 = tail call i32 @ieee80211_ie_split_ric(ptr noundef %6, i32 noundef %7, ptr noundef nonnull @ieee80211_tdls_add_setup_start_ies.before_ext_cap, i32 noundef 5, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %184 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef %183) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %184, ptr align 1 %6, i32 %183, i1 false) #10
  br label %185

185:                                              ; preds = %182, %169
  %186 = phi i32 [ %183, %182 ], [ 0, %169 ]
  %187 = load ptr, ptr %14, align 4
  %188 = getelementptr inbounds %struct.ieee80211_hw, ptr %187, i32 0, i32 1
  %189 = load ptr, ptr %188, align 8
  %190 = getelementptr inbounds %struct.wiphy, ptr %189, i32 0, i32 13
  %191 = load i32, ptr %190, align 32
  %192 = getelementptr inbounds %struct.ieee80211_hw, ptr %187, i32 0, i32 4
  %193 = load volatile i32, ptr %192, align 4
  %194 = and i32 %193, 536870912
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %185
  %197 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 109
  %198 = load i8, ptr %197, align 1, !range !16
  %199 = icmp eq i8 %198, 0
  br label %200

200:                                              ; preds = %196, %185
  %201 = phi i1 [ false, %185 ], [ %199, %196 ]
  %202 = getelementptr %struct.ieee80211_hw, ptr %187, i32 0, i32 4, i32 1
  %203 = load volatile i32, ptr %202, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %204 = load volatile ptr, ptr %157, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %220

207:                                              ; preds = %200
  %208 = load ptr, ptr %204, align 4
  %209 = load i32, ptr %208, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %210 = load ptr, ptr %188, align 8
  %211 = getelementptr %struct.wiphy, ptr %210, i32 0, i32 53, i32 %209
  %212 = load ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %220, label %214

214:                                              ; preds = %207
  %215 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %212, i32 0, i32 6
  %216 = load i8, ptr %215, align 4, !range !16
  %217 = icmp ne i8 %216, 0
  %218 = select i1 %217, i1 %201, i1 false
  %219 = select i1 %218, i8 32, i8 0
  br label %220

220:                                              ; preds = %214, %207, %206
  %221 = phi i8 [ 0, %207 ], [ %219, %214 ], [ 0, %206 ]
  %222 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 10) #10
  %223 = getelementptr i8, ptr %222, i32 1
  store i8 127, ptr %222, align 1
  %224 = getelementptr i8, ptr %222, i32 2
  store i8 8, ptr %223, align 1
  %225 = getelementptr i8, ptr %222, i32 3
  store i8 0, ptr %224, align 1
  %226 = getelementptr i8, ptr %222, i32 4
  store i8 0, ptr %225, align 1
  %227 = getelementptr i8, ptr %222, i32 5
  store i8 0, ptr %226, align 1
  %228 = lshr i32 %191, 22
  %229 = and i32 %228, 64
  %230 = lshr i32 %203, 3
  %231 = and i32 %230, 16
  %232 = or i32 %231, %229
  %233 = trunc i32 %232 to i8
  %234 = getelementptr i8, ptr %222, i32 6
  store i8 %233, ptr %227, align 1
  %235 = getelementptr i8, ptr %222, i32 7
  store i8 32, ptr %234, align 1
  %236 = getelementptr i8, ptr %222, i32 8
  store i8 0, ptr %235, align 1
  %237 = getelementptr i8, ptr %222, i32 9
  store i8 0, ptr %236, align 1
  store i8 %221, ptr %237, align 1
  %238 = getelementptr inbounds %struct.ieee80211_hw, ptr %156, i32 0, i32 11
  %239 = load i16, ptr %238, align 4
  %240 = icmp ugt i16 %239, 3
  %241 = icmp ne i8 %2, 14
  %242 = and i1 %241, %240
  br i1 %242, label %243, label %246

243:                                              ; preds = %220
  %244 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 9) #10
  %245 = tail call ptr @ieee80211_add_wmm_info_ie(ptr noundef %244, i8 noundef zeroext 0) #10
  br label %246

246:                                              ; preds = %243, %220
  br i1 %181, label %252, label %247

247:                                              ; preds = %246
  %248 = tail call i32 @ieee80211_ie_split_ric(ptr noundef %6, i32 noundef %7, ptr noundef nonnull @ieee80211_tdls_add_setup_start_ies.before_ht_cap, i32 noundef 10, ptr noundef null, i32 noundef 0, i32 noundef %186) #10
  %249 = getelementptr i8, ptr %6, i32 %186
  %250 = sub i32 %248, %186
  %251 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef %250) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %251, ptr align 1 %249, i32 %250, i1 false) #10
  br label %252

252:                                              ; preds = %247, %246
  %253 = phi i32 [ %248, %247 ], [ %186, %246 ]
  %254 = getelementptr inbounds %struct.ieee80211_local, ptr %156, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %254) #10
  %255 = icmp eq i8 %2, 1
  br i1 %255, label %256, label %268

256:                                              ; preds = %252
  %257 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef %1) #10
  %258 = icmp eq ptr %257, null
  %259 = load i1, ptr @ieee80211_tdls_add_setup_start_ies.__already_done, align 1
  %260 = xor i1 %259, true
  %261 = select i1 %258, i1 %260, i1 false
  br i1 %261, label %262, label %263, !prof !10

262:                                              ; preds = %256
  store i1 true, ptr @ieee80211_tdls_add_setup_start_ies.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 433, i32 noundef 9, ptr noundef null) #10
  br label %263

263:                                              ; preds = %262, %256
  br i1 %258, label %264, label %265

264:                                              ; preds = %263
  tail call void @mutex_unlock(ptr noundef %254) #10
  br label %381

265:                                              ; preds = %263
  %266 = getelementptr inbounds %struct.sta_info, ptr %257, i32 0, i32 44
  %267 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %266, ptr noundef align 4 dereferenceable(28) %267, i32 28, i1 false) #10
  br label %268

268:                                              ; preds = %265, %252
  %269 = phi ptr [ %257, %265 ], [ null, %252 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #10
  store i8 0, ptr %11, align 1, !annotation !17
  %270 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32
  %271 = call zeroext i1 @ieee80211_chandef_to_operating_class(ptr noundef %270, ptr noundef nonnull %11) #10
  br i1 %271, label %272, label %279

272:                                              ; preds = %268
  %273 = call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 4) #10
  %274 = getelementptr i8, ptr %273, i32 1
  store i8 59, ptr %273, align 1
  %275 = getelementptr i8, ptr %273, i32 2
  store i8 2, ptr %274, align 1
  %276 = load i8, ptr %11, align 1
  %277 = getelementptr i8, ptr %273, i32 3
  store i8 %276, ptr %275, align 1
  %278 = load i8, ptr %11, align 1
  store i8 %278, ptr %277, align 1
  br label %279

279:                                              ; preds = %272, %268
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #10
  %280 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %167, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(22) %12, ptr noundef align 4 dereferenceable(22) %280, i32 22, i1 false) #10
  %281 = icmp eq i8 %2, 0
  switch i8 %2, label %292 [
    i8 14, label %282
    i8 0, label %282
  ]

282:                                              ; preds = %279, %279
  %283 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %12, i32 0, i32 1
  %284 = load i8, ptr %283, align 2, !range !16
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %307, label %286

286:                                              ; preds = %282
  call void @ieee80211_apply_htcap_overrides(ptr noundef %0, ptr noundef nonnull %12) #10
  %287 = load i16, ptr %12, align 2
  %288 = or i16 %287, 12
  store i16 %288, ptr %12, align 2
  %289 = call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 28) #10
  %290 = load i16, ptr %12, align 2
  %291 = call ptr @ieee80211_ie_build_ht_cap(ptr noundef %289, ptr noundef nonnull %12, i16 noundef zeroext %290) #10
  br label %307

292:                                              ; preds = %279
  %293 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %12, i32 0, i32 1
  %294 = load i8, ptr %293, align 2
  %295 = icmp eq i8 %294, 0
  %296 = xor i1 %255, true
  %297 = select i1 %296, i1 true, i1 %295
  br i1 %297, label %307, label %298

298:                                              ; preds = %292
  %299 = getelementptr inbounds %struct.sta_info, ptr %269, i32 0, i32 46, i32 3, i32 1
  %300 = load i8, ptr %299, align 2, !range !16
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %307, label %302

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.sta_info, ptr %269, i32 0, i32 46, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(22) %12, ptr noundef align 8 dereferenceable(22) %303, i32 22, i1 false) #10
  %304 = call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 28) #10
  %305 = load i16, ptr %12, align 2
  %306 = call ptr @ieee80211_ie_build_ht_cap(ptr noundef %304, ptr noundef nonnull %12, i16 noundef zeroext %305) #10
  br label %307

307:                                              ; preds = %302, %298, %292, %286, %282
  %308 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %12, i32 0, i32 1
  %309 = load i8, ptr %308, align 2, !range !16
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %319, label %311

311:                                              ; preds = %307
  %312 = load i16, ptr %12, align 2
  %313 = and i16 %312, 2
  %314 = icmp eq i16 %313, 0
  br i1 %314, label %319, label %315

315:                                              ; preds = %311
  %316 = call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 3) #10
  %317 = getelementptr i8, ptr %316, i32 1
  store i8 72, ptr %316, align 1
  %318 = getelementptr i8, ptr %316, i32 2
  store i8 1, ptr %317, align 1
  store i8 1, ptr %318, align 1
  br label %319

319:                                              ; preds = %315, %311, %307
  %320 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  %321 = select i1 %5, ptr %320, ptr %1
  %322 = select i1 %5, ptr %1, ptr %320
  %323 = call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 20) #10
  store i8 101, ptr %323, align 1
  %324 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %323, i32 0, i32 1
  store i8 18, ptr %324, align 1
  %325 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %323, i32 0, i32 2
  %326 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %325, ptr noundef align 4 dereferenceable(6) %326, i32 6, i1 false) #10
  %327 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %323, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %327, ptr noundef align 1 dereferenceable(6) %321, i32 6, i1 false) #10
  %328 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %323, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %328, ptr noundef align 1 dereferenceable(6) %322, i32 6, i1 false) #10
  br i1 %181, label %334, label %329

329:                                              ; preds = %319
  %330 = call i32 @ieee80211_ie_split_ric(ptr noundef %6, i32 noundef %7, ptr noundef nonnull @ieee80211_tdls_add_setup_start_ies.before_vht_cap, i32 noundef 11, ptr noundef null, i32 noundef 0, i32 noundef %253) #10
  %331 = getelementptr i8, ptr %6, i32 %253
  %332 = sub i32 %330, %253
  %333 = call ptr @skb_put(ptr noundef nonnull %22, i32 noundef %332) #10
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %333, ptr align 1 %331, i32 %332, i1 false) #10
  br label %334

334:                                              ; preds = %329, %319
  %335 = phi i32 [ %330, %329 ], [ %253, %319 ]
  %336 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %167, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef align 4 dereferenceable(16) %336, i32 16, i1 false) #10
  switch i8 %2, label %352 [
    i8 14, label %337
    i8 0, label %337
  ]

337:                                              ; preds = %334, %334
  %338 = load i8, ptr %13, align 4, !range !16
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %376, label %340

340:                                              ; preds = %337
  call void @ieee80211_apply_vhtcap_overrides(ptr noundef %0, ptr noundef nonnull %13) #10
  br i1 %281, label %341, label %347

341:                                              ; preds = %340
  %342 = call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 4) #10
  %343 = getelementptr i8, ptr %342, i32 1
  store i8 -59, ptr %342, align 1
  %344 = getelementptr i8, ptr %342, i32 2
  store i8 2, ptr %343, align 1
  %345 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 13
  %346 = load i16, ptr %345, align 2
  store i16 %346, ptr %344, align 1
  br label %347

347:                                              ; preds = %341, %340
  %348 = call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 14) #10
  %349 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %13, i32 0, i32 1
  %350 = load i32, ptr %349, align 4
  %351 = call ptr @ieee80211_ie_build_vht_cap(ptr noundef %348, ptr noundef nonnull %13, i32 noundef %350) #10
  br label %376

352:                                              ; preds = %334
  %353 = load i8, ptr %13, align 4
  %354 = icmp eq i8 %353, 0
  %355 = xor i1 %255, true
  %356 = select i1 %355, i1 true, i1 %354
  br i1 %356, label %376, label %357

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct.sta_info, ptr %269, i32 0, i32 46, i32 5
  %359 = load i8, ptr %358, align 8, !range !16
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %376, label %361

361:                                              ; preds = %357
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef align 8 dereferenceable(16) %358, i32 16, i1 false) #10
  %362 = call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 4) #10
  %363 = getelementptr i8, ptr %362, i32 1
  store i8 -59, ptr %362, align 1
  %364 = getelementptr i8, ptr %362, i32 2
  store i8 2, ptr %363, align 1
  %365 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 13
  %366 = load i16, ptr %365, align 2
  store i16 %366, ptr %364, align 1
  %367 = call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 14) #10
  %368 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %13, i32 0, i32 1
  %369 = load i32, ptr %368, align 4
  %370 = call ptr @ieee80211_ie_build_vht_cap(ptr noundef %367, ptr noundef nonnull %13, i32 noundef %369) #10
  %371 = getelementptr inbounds %struct.sta_info, ptr %269, i32 0, i32 23
  %372 = load volatile i32, ptr %371, align 4
  %373 = and i32 %372, 65536
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %376, label %375

375:                                              ; preds = %361
  call fastcc void @ieee80211_tdls_chandef_vht_upgrade(ptr noundef %0, ptr noundef %269) #10
  br label %376

376:                                              ; preds = %375, %361, %357, %352, %347, %337
  call void @mutex_unlock(ptr noundef %254) #10
  br i1 %181, label %381, label %377

377:                                              ; preds = %376
  %378 = getelementptr i8, ptr %6, i32 %335
  %379 = sub i32 %7, %335
  %380 = call ptr @skb_put(ptr noundef nonnull %22, i32 noundef %379) #10
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %380, ptr align 1 %378, i32 %379, i1 false) #10
  br label %381

381:                                              ; preds = %377, %376, %264, %161, %160
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %12) #10
  br label %686

382:                                              ; preds = %32
  %383 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 4
  store i8 12, ptr %383, align 1
  %384 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 5
  store i8 2, ptr %384, align 1
  %385 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 3) #10
  %386 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 6
  store i16 %4, ptr %386, align 1
  %387 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 6, i32 1
  store i8 %3, ptr %387, align 1
  %388 = icmp eq i16 %4, 0
  br i1 %388, label %389, label %686

389:                                              ; preds = %382
  %390 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %391 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %392 = load volatile ptr, ptr %391, align 4
  %393 = icmp eq ptr %392, null
  br i1 %393, label %394, label %395

394:                                              ; preds = %389
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %686

395:                                              ; preds = %389
  %396 = load ptr, ptr %392, align 4
  %397 = load i32, ptr %396, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %398 = getelementptr inbounds %struct.ieee80211_hw, ptr %390, i32 0, i32 1
  %399 = load ptr, ptr %398, align 8
  %400 = getelementptr %struct.wiphy, ptr %399, i32 0, i32 53, i32 %397
  %401 = load ptr, ptr %400, align 4
  %402 = icmp eq ptr %401, null
  br i1 %402, label %686, label %403

403:                                              ; preds = %395
  %404 = getelementptr inbounds %struct.ieee80211_local, ptr %390, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %404) #10
  %405 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef %1) #10
  %406 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  %407 = tail call ptr @sta_info_get(ptr noundef %0, ptr noundef %406) #10
  %408 = icmp eq ptr %405, null
  %409 = icmp eq ptr %407, null
  %410 = select i1 %408, i1 true, i1 %409
  %411 = load i1, ptr @ieee80211_tdls_add_setup_cfm_ies.__already_done, align 1
  %412 = xor i1 %411, true
  %413 = select i1 %410, i1 %412, i1 false
  br i1 %413, label %414, label %415, !prof !10

414:                                              ; preds = %403
  store i1 true, ptr @ieee80211_tdls_add_setup_cfm_ies.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 562, i32 noundef 9, ptr noundef null) #10
  br label %415

415:                                              ; preds = %414, %403
  br i1 %410, label %416, label %417

416:                                              ; preds = %415
  tail call void @mutex_unlock(ptr noundef %404) #10
  br label %686

417:                                              ; preds = %415
  %418 = getelementptr inbounds %struct.sta_info, ptr %405, i32 0, i32 44
  %419 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %418, ptr noundef align 4 dereferenceable(28) %419, i32 28, i1 false) #10
  %420 = icmp eq i32 %7, 0
  br i1 %420, label %424, label %421

421:                                              ; preds = %417
  %422 = tail call i32 @ieee80211_ie_split_ric(ptr noundef %6, i32 noundef %7, ptr noundef nonnull @ieee80211_tdls_add_setup_cfm_ies.before_qos, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %423 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef %422) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %423, ptr align 1 %6, i32 %422, i1 false) #10
  br label %424

424:                                              ; preds = %421, %417
  %425 = phi i32 [ %422, %421 ], [ 0, %417 ]
  %426 = getelementptr inbounds %struct.ieee80211_hw, ptr %390, i32 0, i32 11
  %427 = load i16, ptr %426, align 4
  %428 = icmp ugt i16 %427, 3
  br i1 %428, label %429, label %559

429:                                              ; preds = %424
  %430 = getelementptr inbounds %struct.sta_info, ptr %405, i32 0, i32 46, i32 10
  %431 = load i8, ptr %430, align 4, !range !16
  %432 = icmp eq i8 %431, 0
  br i1 %432, label %559, label %433

433:                                              ; preds = %429
  %434 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 26) #10
  %435 = getelementptr inbounds i8, ptr %434, i32 9
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(26) %435, i8 0, i32 17, i1 false) #10
  store i8 -35, ptr %434, align 1
  %436 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 1
  store i8 24, ptr %436, align 1
  %437 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 2
  store i8 0, ptr %437, align 1
  %438 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 2, i32 1
  store i8 80, ptr %438, align 1
  %439 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 2, i32 2
  store i8 -14, ptr %439, align 1
  %440 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 3
  store i8 2, ptr %440, align 1
  %441 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 4
  store i8 1, ptr %441, align 1
  %442 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 5
  store i8 1, ptr %442, align 1
  %443 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 6
  store i8 0, ptr %443, align 1
  %444 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 2
  %445 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 2, i32 3
  %446 = load i8, ptr %445, align 2
  %447 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 2, i32 4
  %448 = load i8, ptr %447, align 1, !range !16
  %449 = icmp eq i8 %448, 0
  %450 = and i8 %446, 15
  %451 = or i8 %450, 16
  %452 = select i1 %449, i8 %450, i8 %451
  %453 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 8, i32 0
  store i8 %452, ptr %453, align 1
  %454 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 2, i32 2
  %455 = load i16, ptr %454, align 2
  %456 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 2, i32 1
  %457 = load i16, ptr %456, align 2
  %458 = zext i16 %457 to i32
  %459 = add nuw nsw i32 %458, 1
  %460 = tail call i32 @llvm.ctlz.i32(i32 %459, i1 true) #10, !range !27
  %461 = zext i16 %455 to i32
  %462 = add nuw nsw i32 %461, 1
  %463 = tail call i32 @llvm.ctlz.i32(i32 %462, i1 true) #10, !range !27
  %464 = and i32 %460, 15
  %465 = shl nuw nsw i32 %463, 4
  %466 = or i32 %464, %465
  %467 = trunc i32 %466 to i8
  %468 = xor i8 %467, -1
  %469 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 8, i32 0, i32 1
  store i8 %468, ptr %469, align 1
  %470 = load i16, ptr %444, align 2
  %471 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 8, i32 0, i32 2
  store i16 %470, ptr %471, align 1
  %472 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 3
  %473 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 3, i32 3
  %474 = load i8, ptr %473, align 2
  %475 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 3, i32 4
  %476 = load i8, ptr %475, align 1, !range !16
  %477 = icmp eq i8 %476, 0
  %478 = and i8 %474, 15
  %479 = or i8 %478, 16
  %480 = select i1 %477, i8 %478, i8 %479
  %481 = or i8 %480, 32
  %482 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 8, i32 1
  store i8 %481, ptr %482, align 1
  %483 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 3, i32 2
  %484 = load i16, ptr %483, align 2
  %485 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 3, i32 1
  %486 = load i16, ptr %485, align 2
  %487 = zext i16 %486 to i32
  %488 = add nuw nsw i32 %487, 1
  %489 = tail call i32 @llvm.ctlz.i32(i32 %488, i1 true) #10, !range !27
  %490 = zext i16 %484 to i32
  %491 = add nuw nsw i32 %490, 1
  %492 = tail call i32 @llvm.ctlz.i32(i32 %491, i1 true) #10, !range !27
  %493 = and i32 %489, 15
  %494 = shl nuw nsw i32 %492, 4
  %495 = or i32 %493, %494
  %496 = trunc i32 %495 to i8
  %497 = xor i8 %496, -1
  %498 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 8, i32 1, i32 1
  store i8 %497, ptr %498, align 1
  %499 = load i16, ptr %472, align 2
  %500 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 8, i32 1, i32 2
  store i16 %499, ptr %500, align 1
  %501 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 1
  %502 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 1, i32 3
  %503 = load i8, ptr %502, align 2
  %504 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 1, i32 4
  %505 = load i8, ptr %504, align 1, !range !16
  %506 = icmp eq i8 %505, 0
  %507 = and i8 %503, 15
  %508 = or i8 %507, 16
  %509 = select i1 %506, i8 %507, i8 %508
  %510 = or i8 %509, 64
  %511 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 8, i32 2
  store i8 %510, ptr %511, align 1
  %512 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 1, i32 2
  %513 = load i16, ptr %512, align 2
  %514 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 1, i32 1
  %515 = load i16, ptr %514, align 2
  %516 = zext i16 %515 to i32
  %517 = add nuw nsw i32 %516, 1
  %518 = tail call i32 @llvm.ctlz.i32(i32 %517, i1 true) #10, !range !27
  %519 = zext i16 %513 to i32
  %520 = add nuw nsw i32 %519, 1
  %521 = tail call i32 @llvm.ctlz.i32(i32 %520, i1 true) #10, !range !27
  %522 = and i32 %518, 15
  %523 = shl nuw nsw i32 %521, 4
  %524 = or i32 %522, %523
  %525 = trunc i32 %524 to i8
  %526 = xor i8 %525, -1
  %527 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 8, i32 2, i32 1
  store i8 %526, ptr %527, align 1
  %528 = load i16, ptr %501, align 2
  %529 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 8, i32 2, i32 2
  store i16 %528, ptr %529, align 1
  %530 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 0, i32 3
  %531 = load i8, ptr %530, align 2
  %532 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 0, i32 4
  %533 = load i8, ptr %532, align 1, !range !16
  %534 = icmp eq i8 %533, 0
  %535 = and i8 %531, 15
  %536 = or i8 %535, 16
  %537 = select i1 %534, i8 %535, i8 %536
  %538 = or i8 %537, 96
  %539 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 8, i32 3
  store i8 %538, ptr %539, align 1
  %540 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 0, i32 2
  %541 = load i16, ptr %540, align 2
  %542 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 0, i32 1
  %543 = load i16, ptr %542, align 2
  %544 = zext i16 %543 to i32
  %545 = add nuw nsw i32 %544, 1
  %546 = tail call i32 @llvm.ctlz.i32(i32 %545, i1 true) #10, !range !27
  %547 = zext i16 %541 to i32
  %548 = add nuw nsw i32 %547, 1
  %549 = tail call i32 @llvm.ctlz.i32(i32 %548, i1 true) #10, !range !27
  %550 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 0
  %551 = and i32 %546, 15
  %552 = shl nuw nsw i32 %549, 4
  %553 = or i32 %551, %552
  %554 = trunc i32 %553 to i8
  %555 = xor i8 %554, -1
  %556 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 8, i32 3, i32 1
  store i8 %555, ptr %556, align 1
  %557 = load i16, ptr %550, align 2
  %558 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %434, i32 0, i32 8, i32 3, i32 2
  store i16 %557, ptr %558, align 1
  br label %559

559:                                              ; preds = %433, %429, %424
  br i1 %420, label %565, label %560

560:                                              ; preds = %559
  %561 = tail call i32 @ieee80211_ie_split_ric(ptr noundef %6, i32 noundef %7, ptr noundef nonnull @ieee80211_tdls_add_setup_cfm_ies.before_ht_op, i32 noundef 4, ptr noundef null, i32 noundef 0, i32 noundef %425) #10
  %562 = getelementptr i8, ptr %6, i32 %425
  %563 = sub i32 %561, %425
  %564 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef %563) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %564, ptr align 1 %562, i32 %563, i1 false) #10
  br label %565

565:                                              ; preds = %560, %559
  %566 = phi i32 [ %561, %560 ], [ %425, %559 ]
  %567 = getelementptr inbounds %struct.sta_info, ptr %407, i32 0, i32 46, i32 3, i32 1
  %568 = load i8, ptr %567, align 2, !range !16
  %569 = icmp eq i8 %568, 0
  br i1 %569, label %570, label %578

570:                                              ; preds = %565
  %571 = getelementptr inbounds %struct.sta_info, ptr %405, i32 0, i32 46, i32 3, i32 1
  %572 = load i8, ptr %571, align 2, !range !16
  %573 = icmp eq i8 %572, 0
  br i1 %573, label %578, label %574

574:                                              ; preds = %570
  %575 = getelementptr inbounds %struct.sta_info, ptr %405, i32 0, i32 46, i32 3
  %576 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 24) #10
  %577 = tail call ptr @ieee80211_ie_build_ht_oper(ptr noundef %576, ptr noundef %575, ptr noundef %419, i16 noundef zeroext 23, i1 noundef zeroext true) #10
  br label %578

578:                                              ; preds = %574, %570, %565
  %579 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  %580 = select i1 %5, ptr %579, ptr %1
  %581 = select i1 %5, ptr %1, ptr %579
  %582 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 20) #10
  store i8 101, ptr %582, align 1
  %583 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %582, i32 0, i32 1
  store i8 18, ptr %583, align 1
  %584 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %582, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %584, ptr noundef align 4 dereferenceable(6) %406, i32 6, i1 false) #10
  %585 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %582, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %585, ptr noundef align 1 dereferenceable(6) %580, i32 6, i1 false) #10
  %586 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %582, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %586, ptr noundef align 1 dereferenceable(6) %581, i32 6, i1 false) #10
  %587 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %401, i32 0, i32 2
  %588 = load i32, ptr %587, align 4
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %603, label %590

590:                                              ; preds = %578
  %591 = getelementptr inbounds %struct.sta_info, ptr %405, i32 0, i32 46, i32 5
  %592 = load i8, ptr %591, align 8, !range !16
  %593 = icmp eq i8 %592, 0
  br i1 %593, label %603, label %594

594:                                              ; preds = %590
  %595 = getelementptr inbounds %struct.sta_info, ptr %405, i32 0, i32 23
  %596 = load volatile i32, ptr %595, align 4
  %597 = and i32 %596, 65536
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %600, label %599

599:                                              ; preds = %594
  tail call fastcc void @ieee80211_tdls_chandef_vht_upgrade(ptr noundef %0, ptr noundef nonnull %405) #10
  br label %600

600:                                              ; preds = %599, %594
  %601 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 7) #10
  %602 = tail call ptr @ieee80211_ie_build_vht_oper(ptr noundef %601, ptr noundef %591, ptr noundef %418) #10
  br label %603

603:                                              ; preds = %600, %590, %578
  tail call void @mutex_unlock(ptr noundef %404) #10
  br i1 %420, label %686, label %604

604:                                              ; preds = %603
  %605 = getelementptr i8, ptr %6, i32 %566
  %606 = sub i32 %7, %566
  %607 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef %606) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %607, ptr align 1 %605, i32 %606, i1 false) #10
  br label %686

608:                                              ; preds = %112, %107
  %609 = icmp eq i32 %7, 0
  br i1 %609, label %612, label %610

610:                                              ; preds = %608
  %611 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef %7) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %611, ptr align 1 %6, i32 %7, i1 false) #10
  br label %612

612:                                              ; preds = %610, %608
  %613 = icmp eq i16 %4, 0
  %614 = icmp eq i8 %2, 3
  %615 = or i1 %614, %613
  br i1 %615, label %616, label %686

616:                                              ; preds = %612
  %617 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  %618 = select i1 %5, ptr %617, ptr %1
  %619 = select i1 %5, ptr %1, ptr %617
  %620 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 20) #10
  store i8 101, ptr %620, align 1
  %621 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %620, i32 0, i32 1
  store i8 18, ptr %621, align 1
  %622 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %620, i32 0, i32 2
  %623 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %622, ptr noundef align 4 dereferenceable(6) %623, i32 6, i1 false) #10
  %624 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %620, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %624, ptr noundef align 1 dereferenceable(6) %618, i32 6, i1 false) #10
  %625 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %620, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %625, ptr noundef align 1 dereferenceable(6) %619, i32 6, i1 false) #10
  br label %686

626:                                              ; preds = %32
  %627 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 4
  store i8 12, ptr %627, align 1
  %628 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 5
  store i8 5, ptr %628, align 1
  %629 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 2) #10
  %630 = icmp eq ptr %9, null
  %631 = load i1, ptr @ieee80211_tdls_add_chan_switch_req_ies.__already_done, align 1
  %632 = xor i1 %631, true
  %633 = select i1 %630, i1 %632, i1 false
  br i1 %633, label %634, label %635, !prof !10

634:                                              ; preds = %626
  store i1 true, ptr @ieee80211_tdls_add_chan_switch_req_ies.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 653, i32 noundef 9, ptr noundef null) #10
  br label %635

635:                                              ; preds = %634, %626
  br i1 %630, label %686, label %636

636:                                              ; preds = %635
  %637 = load ptr, ptr %26, align 4
  %638 = load ptr, ptr %9, align 4
  %639 = getelementptr inbounds %struct.ieee80211_channel, ptr %638, i32 0, i32 1
  %640 = load i32, ptr %639, align 4
  %641 = mul i32 %640, 1000
  %642 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %641) #10
  %643 = trunc i32 %642 to i8
  %644 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %637, i32 0, i32 6
  store i8 %643, ptr %644, align 1
  %645 = getelementptr inbounds %struct.anon.191, ptr %644, i32 0, i32 1
  store i8 %8, ptr %645, align 1
  %646 = icmp eq i32 %7, 0
  br i1 %646, label %650, label %647

647:                                              ; preds = %636
  %648 = tail call i32 @ieee80211_ie_split_ric(ptr noundef %6, i32 noundef %7, ptr noundef nonnull @ieee80211_tdls_add_chan_switch_req_ies.before_lnkie, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %649 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef %648) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %649, ptr align 1 %6, i32 %648, i1 false) #10
  br label %650

650:                                              ; preds = %647, %636
  %651 = phi i32 [ %648, %647 ], [ 0, %636 ]
  %652 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  %653 = select i1 %5, ptr %652, ptr %1
  %654 = select i1 %5, ptr %1, ptr %652
  %655 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 20) #10
  store i8 101, ptr %655, align 1
  %656 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %655, i32 0, i32 1
  store i8 18, ptr %656, align 1
  %657 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %655, i32 0, i32 2
  %658 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %657, ptr noundef align 4 dereferenceable(6) %658, i32 6, i1 false) #10
  %659 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %655, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %659, ptr noundef align 1 dereferenceable(6) %653, i32 6, i1 false) #10
  %660 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %655, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %660, ptr noundef align 1 dereferenceable(6) %654, i32 6, i1 false) #10
  br i1 %646, label %686, label %661

661:                                              ; preds = %650
  %662 = getelementptr i8, ptr %6, i32 %651
  %663 = sub i32 %7, %651
  %664 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef %663) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %664, ptr align 1 %662, i32 %663, i1 false) #10
  br label %686

665:                                              ; preds = %32
  %666 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 4
  store i8 12, ptr %666, align 1
  %667 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 5
  store i8 6, ptr %667, align 1
  %668 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 2) #10
  %669 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %34, i32 0, i32 6
  store i16 %4, ptr %669, align 1
  %670 = icmp eq i16 %4, 0
  br i1 %670, label %671, label %681

671:                                              ; preds = %665
  %672 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  %673 = select i1 %5, ptr %672, ptr %1
  %674 = select i1 %5, ptr %1, ptr %672
  %675 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 20) #10
  store i8 101, ptr %675, align 1
  %676 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %675, i32 0, i32 1
  store i8 18, ptr %676, align 1
  %677 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %675, i32 0, i32 2
  %678 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %677, ptr noundef align 4 dereferenceable(6) %678, i32 6, i1 false) #10
  %679 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %675, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %679, ptr noundef align 1 dereferenceable(6) %673, i32 6, i1 false) #10
  %680 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %675, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %680, ptr noundef align 1 dereferenceable(6) %674, i32 6, i1 false) #10
  br label %681

681:                                              ; preds = %671, %665
  %682 = icmp eq i32 %7, 0
  br i1 %682, label %686, label %683

683:                                              ; preds = %681
  %684 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef %7) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %684, ptr align 1 %6, i32 %7, i1 false) #10
  br label %686

685:                                              ; preds = %32, %24
  tail call void @consume_skb(ptr noundef nonnull %22) #10
  br label %686

686:                                              ; preds = %685, %683, %681, %661, %650, %635, %616, %612, %604, %603, %416, %395, %394, %382, %381, %153, %10
  %687 = phi ptr [ null, %685 ], [ null, %10 ], [ %22, %153 ], [ %22, %381 ], [ %22, %382 ], [ %22, %394 ], [ %22, %395 ], [ %22, %416 ], [ %22, %603 ], [ %22, %604 ], [ %22, %612 ], [ %22, %616 ], [ %22, %635 ], [ %22, %650 ], [ %22, %661 ], [ %22, %681 ], [ %22, %683 ]
  ret ptr %687
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_select_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_subif_start_xmit(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_add_srates_ie(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_add_ext_srates_ie(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_add_wmm_info_ie(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_apply_htcap_overrides(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_ht_cap(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_apply_vhtcap_overrides(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_vht_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_tdls_chandef_vht_upgrade(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.cfg80211_chan_def, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 44
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef align 8 dereferenceable(28) %4, i32 28, i1 false)
  %5 = tail call i32 @ieee80211_sta_cap_chan_bw(ptr noundef %1) #10
  %6 = and i32 %5, -2
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %97, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @llvm.umin.i32(i32 %5, i32 3)
  %10 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, %9
  br i1 %12, label %13, label %97

13:                                               ; preds = %8
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.ieee80211_channel, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -5210
  %18 = tail call i32 @llvm.abs.i32(i32 %17, i1 false)
  %19 = icmp slt i32 %18, 31
  br i1 %19, label %40, label %20

20:                                               ; preds = %13
  %21 = add i32 %16, -5290
  %22 = tail call i32 @llvm.abs.i32(i32 %21, i1 false)
  %23 = icmp slt i32 %22, 31
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = add i32 %16, -5530
  %26 = tail call i32 @llvm.abs.i32(i32 %25, i1 false)
  %27 = icmp slt i32 %26, 31
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = add i32 %16, -5610
  %30 = tail call i32 @llvm.abs.i32(i32 %29, i1 false)
  %31 = icmp slt i32 %30, 31
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = add i32 %16, -5690
  %34 = tail call i32 @llvm.abs.i32(i32 %33, i1 false)
  %35 = icmp slt i32 %34, 31
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = add i32 %16, -5775
  %38 = tail call i32 @llvm.abs.i32(i32 %37, i1 false)
  %39 = icmp slt i32 %38, 31
  br i1 %39, label %40, label %45

40:                                               ; preds = %36, %32, %28, %24, %20, %13
  %41 = phi i32 [ 5210, %13 ], [ 5290, %20 ], [ 5530, %24 ], [ 5610, %28 ], [ 5690, %32 ], [ 5775, %36 ]
  %42 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 3
  store i32 0, ptr %43, align 4
  store i32 3, ptr %10, align 4
  %44 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 2
  br label %50

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 2
  br i1 %48, label %97, label %50

50:                                               ; preds = %45, %40
  %51 = phi ptr [ %44, %40 ], [ %49, %45 ]
  %52 = phi i32 [ 3, %40 ], [ %11, %45 ]
  %53 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 44, i32 1
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %55 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 1
  br label %56

56:                                               ; preds = %68, %50
  %57 = phi i32 [ %52, %50 ], [ %70, %68 ]
  %58 = icmp ugt i32 %57, %9
  br i1 %58, label %68, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %53, align 4
  %61 = icmp ugt i32 %57, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load ptr, ptr %54, align 4
  %64 = getelementptr inbounds %struct.ieee80211_hw, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8
  %66 = load i32, ptr %55, align 4
  %67 = call zeroext i1 @cfg80211_reg_can_beacon_relax(ptr noundef %65, ptr noundef nonnull %3, i32 noundef %66) #10
  br i1 %67, label %71, label %68

68:                                               ; preds = %62, %56
  %69 = call i32 @ieee80211_chandef_downgrade(ptr noundef nonnull %3) #10
  %70 = load i32, ptr %10, align 4
  br label %56

71:                                               ; preds = %62, %59
  %72 = load ptr, ptr %3, align 4
  %73 = load ptr, ptr %4, align 4
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = load i32, ptr %10, align 4
  %77 = load i32, ptr %53, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = load i32, ptr %51, align 4
  %81 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 44, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 5
  %86 = load i16, ptr %85, align 4
  %87 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 44, i32 5
  %88 = load i16, ptr %87, align 4
  %89 = icmp eq i16 %86, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 44, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %97, label %96

96:                                               ; preds = %90, %84, %79, %75, %71
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %3, i32 28, i1 false)
  br label %97

97:                                               ; preds = %96, %90, %45, %8, %2
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ieee80211_tdls_add_subband(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.cfg80211_chan_def, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false), !annotation !17
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = zext i16 %3 to i32
  %12 = icmp ugt i16 %2, %3
  br i1 %12, label %59, label %13

13:                                               ; preds = %5
  %14 = zext i16 %2 to i32
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 1
  %16 = zext i16 %4 to i32
  br label %17

17:                                               ; preds = %46, %13
  %18 = phi ptr [ %10, %13 ], [ %49, %46 ]
  %19 = phi i8 [ 0, %13 ], [ %43, %46 ]
  %20 = phi i8 [ 0, %13 ], [ %42, %46 ]
  %21 = phi i32 [ 0, %13 ], [ %24, %46 ]
  %22 = phi i32 [ %14, %13 ], [ %44, %46 ]
  %23 = icmp eq i8 %20, 0
  %24 = select i1 %23, i32 %22, i32 %21
  %25 = mul i32 %22, 1000
  %26 = call ptr @ieee80211_get_channel_khz(ptr noundef %18, i32 noundef %25) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %17
  call void @cfg80211_chandef_create(ptr noundef nonnull %6, ptr noundef nonnull %26, i32 noundef 0) #10
  %29 = load i32, ptr %15, align 4
  %30 = call zeroext i1 @cfg80211_reg_can_beacon_relax(ptr noundef %10, ptr noundef nonnull %6, i32 noundef %29) #10
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = add i8 %20, 1
  br label %41

33:                                               ; preds = %28, %17
  br i1 %23, label %41, label %34

34:                                               ; preds = %33
  %35 = call ptr @skb_put(ptr noundef %1, i32 noundef 2) #10
  %36 = mul i32 %24, 1000
  %37 = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %36) #10
  %38 = trunc i32 %37 to i8
  %39 = getelementptr i8, ptr %35, i32 1
  store i8 %38, ptr %35, align 1
  store i8 %20, ptr %39, align 1
  %40 = add i8 %19, 1
  br label %41

41:                                               ; preds = %34, %33, %31
  %42 = phi i8 [ %32, %31 ], [ 0, %34 ], [ 0, %33 ]
  %43 = phi i8 [ %19, %31 ], [ %40, %34 ], [ %19, %33 ]
  %44 = add i32 %22, %16
  %45 = icmp sgt i32 %44, %11
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %7, align 4
  %48 = getelementptr inbounds %struct.ieee80211_hw, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  br label %17

50:                                               ; preds = %41
  %51 = icmp eq i8 %42, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %50
  %53 = mul i32 %24, 1000
  %54 = call ptr @skb_put(ptr noundef %1, i32 noundef 2) #10
  %55 = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %53) #10
  %56 = trunc i32 %55 to i8
  %57 = getelementptr i8, ptr %54, i32 1
  store i8 %56, ptr %54, align 1
  store i8 %42, ptr %57, align 1
  %58 = add i8 %43, 1
  br label %59

59:                                               ; preds = %52, %50, %5
  %60 = phi i8 [ %58, %52 ], [ %43, %50 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #10
  ret i8 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_reg_can_beacon_relax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_ie_split_ric(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_chandef_to_operating_class(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_cap_chan_bw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_chandef_downgrade(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_ht_oper(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_vht_oper(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_chanctx_chantype(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_chan_width_to_rx_bw(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_cap_rx_bw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_rate_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_build_data_template(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_tdls_channel_switch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_tdls_cancel_channel_switch(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_tdls_ch_sw_resp_tmpl_get(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #10
  %6 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 104, ptr %3, align 1
  %7 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 4, ptr %6, align 1
  store i16 0, ptr %7, align 1
  %8 = getelementptr inbounds i8, ptr %3, i32 4
  store i16 0, ptr %8, align 1
  %9 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 1
  %10 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 18
  %11 = load i8, ptr %10, align 1, !range !16
  %12 = icmp eq i8 %11, 0
  %13 = call fastcc ptr @ieee80211_tdls_build_mgmt_packet_data(ptr noundef %5, ptr noundef %9, i8 noundef zeroext 6, i8 noundef zeroext 0, i16 noundef zeroext 0, i1 noundef zeroext %12, ptr noundef nonnull %3, i32 noundef 6, i8 noundef zeroext 0, ptr noundef null)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %2
  %16 = call ptr @ieee80211_build_data_template(ptr noundef %5, ptr noundef nonnull %13, i32 noundef 0) #10
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %49, label %18

18:                                               ; preds = %15
  %19 = icmp eq ptr %1, null
  br i1 %19, label %49, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 16
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 13, i32 0, i32 18
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %24, i32 %27
  %29 = ptrtoint ptr %28 to i32
  %30 = ptrtoint ptr %22 to i32
  %31 = sub i32 %29, %30
  %32 = getelementptr i8, ptr %22, i32 %31
  %33 = getelementptr i8, ptr %32, i32 -14
  %34 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.anon.191, ptr %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 5
  %37 = load i32, ptr %36, align 8
  %38 = ptrtoint ptr %35 to i32
  %39 = add i32 %37, %30
  %40 = sub i32 %39, %38
  %41 = call ptr @cfg80211_find_elem_match(i8 noundef zeroext 104, ptr noundef %35, i32 noundef %40, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %20
  call void @__dev_kfree_skb_any(ptr noundef %16, i32 noundef 1) #10
  br label %49

44:                                               ; preds = %20
  %45 = load ptr, ptr %21, align 4
  %46 = ptrtoint ptr %41 to i32
  %47 = ptrtoint ptr %45 to i32
  %48 = sub i32 %46, %47
  store i32 %48, ptr %1, align 4
  br label %49

49:                                               ; preds = %44, %43, %18, %15, %2
  %50 = phi ptr [ null, %2 ], [ null, %15 ], [ null, %43 ], [ %16, %44 ], [ %16, %18 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #10
  ret ptr %50
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drv_tdls_recv_channel_switch(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #7 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tdls_recv_channel_switch, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %18 = tail call i32 @__traceiter_drv_tdls_recv_channel_switch(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  br label %19

19:                                               ; preds = %17, %6, %3
  %20 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ieee80211_ops, ptr %21, i32 0, i32 88
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  tail call void %23(ptr noundef %0, ptr noundef %26, ptr noundef %2) #10
  br label %27

27:                                               ; preds = %25, %19
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = tail call ptr @llvm.thread.pointer() #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %42 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br label %43

43:                                               ; preds = %41, %30, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802_11_parse_elems_crc(ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_tdls_recv_channel_switch(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!8 = !{i64 2149512864}
!9 = !{i64 2149513081}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2158477905}
!12 = !{i64 2158478099}
!13 = !{i64 2157454156}
!14 = !{i64 2157454308}
!15 = !{i64 2149190189}
!16 = !{i8 0, i8 2}
!17 = !{!"auto-init"}
!18 = !{i64 2159257619}
!19 = !{i64 2159257853}
!20 = !{i64 2157467026}
!21 = !{i64 2157467186}
!22 = !{i64 2159276510}
!23 = !{i64 2159276716}
!24 = !{i64 2159291809}
!25 = !{i64 2159292017}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i32 0, i32 33}
