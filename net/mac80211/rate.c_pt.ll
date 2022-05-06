; ModuleID = '/llk/IR/net/mac80211/rate.c_pt.bc'
source_filename = "../net/mac80211/rate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_rate_control_register:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_rate_control_register\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_rate_control_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_rate_control_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_rate_control_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_rate_control_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_tx_rates:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_tx_rates\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_tx_rates:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rate_control_set_rates:\09\09\09\09\09"
module asm "\09.asciz \09\22rate_control_set_rates\22\09\09\09\09\09"
module asm "__kstrtabns_rate_control_set_rates:\09\09\09\09\09"
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
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.182, [17 x i16], %struct.anon.183, %struct.anon.184, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
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
%struct.rate_control_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rate_control_ref = type { ptr, ptr }
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
%struct.ieee80211_tx_status = type { ptr, ptr, ptr, ptr, ptr }
%struct.rate_control_alg = type { %struct.list_head, ptr }
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
%struct.ieee80211_sta_rates = type { %struct.callback_head, [4 x %struct.anon.121] }
%struct.anon.121 = type { i8, i8, i8, i8, i16 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.133 }
%union.anon.133 = type { %struct.anon.137, [32 x i8] }
%struct.anon.137 = type { i64 }
%struct.ieee80211_tx_rate_control = type { ptr, ptr, ptr, ptr, %struct.ieee80211_tx_rate, i8, i8, i32, ptr, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_ieee80211_default_rc_algo = internal constant [26 x i8] c"ieee80211_default_rc_algo\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@ieee80211_default_rc_algo = internal global ptr @.str.6, align 4
@__param_ieee80211_default_rc_algo = internal constant %struct.kernel_param { ptr @__param_str_ieee80211_default_rc_algo, ptr @__this_module, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @ieee80211_default_rc_algo } }, section "__param", align 4
@__UNIQUE_ID_ieee80211_default_rc_algotype807 = internal constant [41 x i8] c"parmtype=ieee80211_default_rc_algo:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_ieee80211_default_rc_algo808 = internal constant [82 x i8] c"parm=ieee80211_default_rc_algo:Default rate control algorithm for mac80211 to use\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [20 x i8] c"net/mac80211/rate.c\00", align 1
@rate_control_tx_status.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rate_ctrl_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rate_ctrl_mutex, i64 12), ptr getelementptr (i8, ptr @rate_ctrl_mutex, i64 12) } }, align 4
@rate_ctrl_algs = internal global %struct.list_head { ptr @rate_ctrl_algs, ptr @rate_ctrl_algs }, align 4
@__kstrtab_ieee80211_rate_control_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_rate_control_register = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_rate_control_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_rate_control_register to i32), ptr @__kstrtab_ieee80211_rate_control_register, ptr @__kstrtabns_ieee80211_rate_control_register }, section "___ksymtab+ieee80211_rate_control_register", align 4
@__kstrtab_ieee80211_rate_control_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_rate_control_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_rate_control_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_rate_control_unregister to i32), ptr @__kstrtab_ieee80211_rate_control_unregister, ptr @__kstrtabns_ieee80211_rate_control_unregister }, section "___ksymtab+ieee80211_rate_control_unregister", align 4
@ieee80211_check_rate_mask.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"\017%s: no overlap between basic rates (0x%x) and user mask (0x%x on band %d) - clearing the latter\00", align 1
@__kstrtab_ieee80211_get_tx_rates = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_tx_rates = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_tx_rates = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_tx_rates to i32), ptr @__kstrtab_ieee80211_get_tx_rates, ptr @__kstrtabns_ieee80211_get_tx_rates }, section "___ksymtab+ieee80211_get_tx_rates", align 4
@__kstrtab_rate_control_set_rates = external dso_local constant [0 x i8], align 1
@__kstrtabns_rate_control_set_rates = external dso_local constant [0 x i8], align 1
@__ksymtab_rate_control_set_rates = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rate_control_set_rates to i32), ptr @__kstrtab_rate_control_set_rates, ptr @__kstrtabns_rate_control_set_rates }, section "___ksymtab+rate_control_set_rates", align 4
@ieee80211_init_rate_ctrl_alg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to select rate control algorithm\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Selected rate control algorithm '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"minstrel_ht\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__rate_control_send_low.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"no supported rates for sta %pM (0x%x, band %d) in rate_mask 0x%x with flags 0x%x\0A\00", align 1
@rate_fixup_ratelist.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_sta_rate_tbl_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@__tracepoint_drv_sta_rate_tbl_update = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_ieee80211_default_rc_algo808, ptr @__UNIQUE_ID_ieee80211_default_rc_algotype807, ptr @__ksymtab_ieee80211_get_tx_rates, ptr @__ksymtab_ieee80211_rate_control_register, ptr @__ksymtab_ieee80211_rate_control_unregister, ptr @__ksymtab_rate_control_set_rates, ptr @__param_ieee80211_default_rc_algo], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rate_control_rate_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  %9 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 8
  tail call void @ieee80211_sta_set_rx_nss(ptr noundef %0) #11
  %11 = icmp eq ptr %7, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 58, i32 9
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef null) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %37

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %15, align 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.wiphy, ptr %20, i32 0, i32 53, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  tail call void @ieee80211_s1g_sta_rate_init(ptr noundef %0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %37

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %30) #11
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr inbounds %struct.rate_control_ops, ptr %31, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.rate_control_ref, ptr %7, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void %33(ptr noundef %35, ptr noundef %24, ptr noundef nonnull %15, ptr noundef %8, ptr noundef %10) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %30) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  %36 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 21, ptr noundef %36) #11
  br label %37

37:                                               ; preds = %29, %28, %17, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_set_rx_nss(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_s1g_sta_rate_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rate_control_tx_status(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 58
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 -1848
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %5, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %6, i32 -1796
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 2097152
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %6, i32 -1844
  tail call void @_raw_spin_lock_bh(ptr noundef %16) #11
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.rate_control_ops, ptr %17, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.rate_control_ref, ptr %5, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void %19(ptr noundef %23, ptr noundef %1, ptr noundef %8, ptr noundef %2) #11
  br label %37

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %2, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rate_control_ops, ptr %17, i32 0, i32 10
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.rate_control_ref, ptr %5, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %2, align 4
  tail call void %30(ptr noundef %32, ptr noundef %1, ptr noundef %33, ptr noundef %8, ptr noundef nonnull %26) #11
  br label %37

34:                                               ; preds = %24
  %35 = load i1, ptr @rate_control_tx_status.__already_done, align 1
  br i1 %35, label %37, label %36, !prof !11

36:                                               ; preds = %34
  store i1 true, ptr @rate_control_tx_status.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 9, ptr noundef null) #11
  br label %37

37:                                               ; preds = %36, %34, %28, %21
  tail call void @_raw_spin_unlock_bh(ptr noundef %16) #11
  br label %38

38:                                               ; preds = %37, %10, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rate_control_rate_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 58
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sta_info, ptr %2, i32 0, i32 46
  %8 = getelementptr inbounds %struct.sta_info, ptr %2, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %6, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.rate_control_ops, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %17 = getelementptr inbounds %struct.sta_info, ptr %2, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %18, i32 0, i32 58, i32 9
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 104, i32 noundef 9, ptr noundef null) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %33

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.sta_info, ptr %2, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %24) #11
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr inbounds %struct.rate_control_ops, ptr %25, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.rate_control_ref, ptr %6, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void %27(ptr noundef %29, ptr noundef %1, ptr noundef nonnull %20, ptr noundef %7, ptr noundef %9, i32 noundef %3) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %24) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %30

30:                                               ; preds = %23, %11, %4
  %31 = getelementptr inbounds %struct.sta_info, ptr %2, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  tail call void @drv_sta_rc_update(ptr noundef %0, ptr noundef %32, ptr noundef %7, i32 noundef %3) #11
  br label %33

33:                                               ; preds = %30, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_sta_rc_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_rate_control_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rate_control_ops, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @rate_ctrl_mutex) #11
  br label %6

6:                                                ; preds = %10, %5
  %7 = phi ptr [ @rate_ctrl_algs, %5 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @rate_ctrl_algs
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rate_control_alg, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rate_control_ops, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %2, align 4
  %16 = tail call i32 @strcmp(ptr noundef %14, ptr noundef %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %6

18:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 129, i32 noundef 9, ptr noundef null) #11
  br label %27

19:                                               ; preds = %6
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 12) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rate_control_alg, ptr %21, i32 0, i32 1
  store ptr %0, ptr %24, align 8
  %25 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rate_ctrl_algs, i32 0, i32 1), align 4
  store ptr %21, ptr getelementptr inbounds (%struct.list_head, ptr @rate_ctrl_algs, i32 0, i32 1), align 4
  store ptr @rate_ctrl_algs, ptr %21, align 8
  %26 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  store volatile ptr %21, ptr %25, align 4
  br label %27

27:                                               ; preds = %23, %19, %18
  %28 = phi i32 [ 0, %23 ], [ -114, %18 ], [ -12, %19 ]
  tail call void @mutex_unlock(ptr noundef nonnull @rate_ctrl_mutex) #11
  br label %29

29:                                               ; preds = %27, %1
  %30 = phi i32 [ -22, %1 ], [ %28, %27 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_rate_control_unregister(ptr noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @rate_ctrl_mutex) #11
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @rate_ctrl_algs, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @rate_ctrl_algs
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rate_control_alg, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void @kfree(ptr noundef %4) #11
  br label %15

15:                                               ; preds = %10, %2
  tail call void @mutex_unlock(ptr noundef nonnull @rate_ctrl_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_check_rate_mask(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 24
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 9, ptr noundef null) #11
  br label %36

10:                                               ; preds = %1
  %11 = load i32, ptr %7, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %36, label %13

13:                                               ; preds = %10
  %14 = icmp eq i32 %5, 0
  %15 = load i1, ptr @ieee80211_check_rate_mask.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !9

18:                                               ; preds = %13
  store i1 true, ptr @ieee80211_check_rate_mask.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 282, i32 noundef 9, ptr noundef null) #11
  br label %19

19:                                               ; preds = %18, %13
  br i1 %14, label %36, label %20

20:                                               ; preds = %19
  %21 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 50, i32 %11
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr %struct.wiphy, ptr %27, i32 0, i32 53, i32 %11
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %30, i32 noundef %5, i32 noundef %22, i32 noundef %11) #13
  %32 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %29, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = shl nsw i32 -1, %33
  %35 = xor i32 %34, -1
  store i32 %35, ptr %21, align 4
  br label %36

36:                                               ; preds = %25, %20, %19, %10, %9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_get_tx_rates(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca [8 x i16], align 2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %11 = icmp eq ptr %1, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 21
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 16
  %19 = load volatile ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %12, %5
  %21 = phi ptr [ null, %12 ], [ %19, %17 ], [ null, %5 ]
  %22 = icmp sgt i32 %4, 0
  br i1 %22, label %23, label %95

23:                                               ; preds = %20
  %24 = tail call i32 @llvm.smin.i32(i32 %4, i32 4) #11
  %25 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 8
  %26 = icmp eq ptr %25, %3
  %27 = icmp eq ptr %21, null
  %28 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 21
  br label %29

29:                                               ; preds = %87, %23
  %30 = phi i32 [ 0, %23 ], [ %92, %87 ]
  %31 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %25, i32 0, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = icmp sgt i8 %32, -1
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %25, i32 0, i32 %30, i32 1
  %36 = load i16, ptr %35, align 1
  %37 = and i16 %36, 31
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  br i1 %26, label %83, label %40

40:                                               ; preds = %39
  %41 = getelementptr %struct.ieee80211_tx_rate, ptr %3, i32 %30
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %41, ptr noundef align 1 dereferenceable(3) %31, i32 3, i1 false) #11
  br label %83

42:                                               ; preds = %34, %29
  br i1 %27, label %78, label %43

43:                                               ; preds = %42
  %44 = getelementptr %struct.ieee80211_sta_rates, ptr %21, i32 0, i32 1, i32 %30
  %45 = load i8, ptr %44, align 2
  %46 = getelementptr %struct.ieee80211_tx_rate, ptr %3, i32 %30
  store i8 %45, ptr %46, align 1
  %47 = getelementptr %struct.ieee80211_sta_rates, ptr %21, i32 0, i32 1, i32 %30, i32 4
  %48 = load i16, ptr %47, align 2
  %49 = getelementptr %struct.ieee80211_tx_rate, ptr %3, i32 %30, i32 1
  %50 = load i16, ptr %49, align 1
  %51 = shl i16 %48, 5
  %52 = and i16 %50, 31
  %53 = or i16 %52, %51
  store i16 %53, ptr %49, align 1
  %54 = load i8, ptr %28, align 1
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %43
  %58 = getelementptr %struct.ieee80211_sta_rates, ptr %21, i32 0, i32 1, i32 %30, i32 3
  %59 = load i8, ptr %58, align 1
  %60 = and i8 %59, 31
  %61 = zext i8 %60 to i16
  %62 = or i16 %51, %61
  store i16 %62, ptr %49, align 1
  br label %83

63:                                               ; preds = %43
  %64 = and i8 %54, 2
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = getelementptr %struct.ieee80211_sta_rates, ptr %21, i32 0, i32 1, i32 %30, i32 2
  %68 = load i8, ptr %67, align 2
  %69 = and i8 %68, 31
  %70 = zext i8 %69 to i16
  %71 = or i16 %51, %70
  store i16 %71, ptr %49, align 1
  br label %83

72:                                               ; preds = %63
  %73 = getelementptr %struct.ieee80211_sta_rates, ptr %21, i32 0, i32 1, i32 %30, i32 1
  %74 = load i8, ptr %73, align 1
  %75 = and i8 %74, 31
  %76 = zext i8 %75 to i16
  %77 = or i16 %51, %76
  store i16 %77, ptr %49, align 1
  br label %83

78:                                               ; preds = %42
  %79 = getelementptr %struct.ieee80211_tx_rate, ptr %3, i32 %30
  store i8 -1, ptr %79, align 1
  %80 = getelementptr %struct.ieee80211_tx_rate, ptr %3, i32 %30, i32 1
  %81 = load i16, ptr %80, align 1
  %82 = and i16 %81, -32
  store i16 %82, ptr %80, align 1
  br label %83

83:                                               ; preds = %78, %72, %66, %57, %40, %39
  %84 = getelementptr %struct.ieee80211_tx_rate, ptr %3, i32 %30
  %85 = load i8, ptr %84, align 1
  %86 = icmp slt i8 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = getelementptr %struct.ieee80211_tx_rate, ptr %3, i32 %30, i32 1
  %89 = load i16, ptr %88, align 1
  %90 = and i16 %89, 31
  %91 = icmp eq i16 %90, 0
  %92 = add nuw nsw i32 %30, 1
  %93 = icmp eq i32 %92, %24
  %94 = select i1 %91, i1 true, i1 %93
  br i1 %94, label %95, label %29

95:                                               ; preds = %87, %83, %20
  %96 = icmp eq ptr %0, null
  br i1 %96, label %291, label %97

97:                                               ; preds = %95
  %98 = getelementptr i8, ptr %0, i32 -2264
  %99 = getelementptr i8, ptr %0, i32 -1908
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.ieee80211_hw, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 4
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 7
  %106 = getelementptr %struct.wiphy, ptr %102, i32 0, i32 53, i32 %105
  %107 = load ptr, ptr %106, align 4
  %108 = load i32, ptr %10, align 8
  %109 = and i32 %108, 16384
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %97
  %112 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %113 = load ptr, ptr %112, align 4
  %114 = load i16, ptr %113, align 2
  %115 = and i16 %114, 12
  %116 = icmp eq i16 %115, 8
  br i1 %116, label %117, label %141

117:                                              ; preds = %111, %97
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %6, i8 0, i32 10, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(16) %9, i8 0, i32 16, i1 false) #11, !annotation !12
  %118 = call fastcc zeroext i1 @rate_control_cap_mask(ptr noundef %98, ptr noundef %107, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %9) #11
  br i1 %118, label %119, label %140

119:                                              ; preds = %117
  %120 = getelementptr i8, ptr %0, i32 112
  %121 = load i32, ptr %120, align 4
  br i1 %22, label %122, label %140

122:                                              ; preds = %119
  %123 = load i32, ptr %7, align 4
  br label %124

124:                                              ; preds = %129, %122
  %125 = phi i32 [ 0, %122 ], [ %138, %129 ]
  %126 = getelementptr %struct.ieee80211_tx_rate, ptr %3, i32 %125
  %127 = load i8, ptr %126, align 1
  %128 = icmp slt i8 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %124
  %130 = getelementptr %struct.ieee80211_tx_rate, ptr %3, i32 %125, i32 1
  %131 = load i16, ptr %130, align 1
  %132 = lshr i16 %131, 5
  store i16 %132, ptr %8, align 2
  call fastcc void @rate_idx_match_mask(ptr noundef %126, ptr noundef nonnull %8, ptr noundef %107, i32 noundef %121, i32 noundef %123, ptr noundef nonnull %6, ptr noundef nonnull %9) #11
  %133 = load i16, ptr %8, align 2
  %134 = load i16, ptr %130, align 1
  %135 = shl i16 %133, 5
  %136 = and i16 %134, 31
  %137 = or i16 %136, %135
  store i16 %137, ptr %130, align 1
  %138 = add nuw nsw i32 %125, 1
  %139 = icmp eq i32 %138, %4
  br i1 %139, label %140, label %124

140:                                              ; preds = %129, %124, %119, %117
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %6) #11
  br label %141

141:                                              ; preds = %140, %111
  %142 = load i8, ptr %3, align 1
  %143 = icmp slt i8 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load ptr, ptr %99, align 4
  %146 = load i32, ptr %103, align 4
  %147 = and i32 %146, 7
  %148 = getelementptr %struct.ieee80211_sub_if_data, ptr %98, i32 0, i32 50, i32 %147
  %149 = load i32, ptr %148, align 4
  tail call fastcc void @__rate_control_send_low(ptr noundef %145, ptr noundef %107, ptr noundef %1, ptr noundef %10, i32 noundef %149)
  br label %150

150:                                              ; preds = %144, %141
  br i1 %11, label %291, label %151

151:                                              ; preds = %150
  %152 = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %3, i32 0, i32 1
  %153 = load i16, ptr %152, align 1
  %154 = and i16 %153, 8448
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %156, label %197

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.ieee80211_vif, ptr %0, i32 0, i32 1, i32 24
  %158 = load i32, ptr %157, align 8
  %159 = icmp eq i32 %158, 0
  %160 = tail call i32 @llvm.cttz.i32(i32 %158, i1 true) #11, !range !13
  %161 = trunc i32 %160 to i8
  %162 = select i1 %159, i8 0, i8 %161
  %163 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %107, i32 0, i32 1
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %107, i32 0, i32 4
  %166 = load i32, ptr %165, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %194

168:                                              ; preds = %156
  %169 = load i8, ptr %3, align 1
  %170 = sext i8 %169 to i32
  %171 = getelementptr %struct.ieee80211_rate, ptr %164, i32 %170, i32 1
  br label %172

172:                                              ; preds = %190, %168
  %173 = phi i32 [ 0, %168 ], [ %192, %190 ]
  %174 = phi i8 [ %162, %168 ], [ %191, %190 ]
  %175 = shl nuw i32 1, %173
  %176 = and i32 %175, %158
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %190, label %178

178:                                              ; preds = %172
  %179 = getelementptr %struct.ieee80211_rate, ptr %164, i32 %173, i32 1
  %180 = load i16, ptr %179, align 4
  %181 = load i16, ptr %171, align 4
  %182 = icmp ugt i16 %180, %181
  br i1 %182, label %190, label %183

183:                                              ; preds = %178
  %184 = sext i8 %174 to i32
  %185 = getelementptr %struct.ieee80211_rate, ptr %164, i32 %184, i32 1
  %186 = load i16, ptr %185, align 4
  %187 = icmp ult i16 %186, %180
  %188 = trunc i32 %173 to i8
  %189 = select i1 %187, i8 %188, i8 %174
  br label %190

190:                                              ; preds = %183, %178, %172
  %191 = phi i8 [ %174, %178 ], [ %174, %172 ], [ %189, %183 ]
  %192 = add nuw nsw i32 %173, 1
  %193 = icmp eq i32 %192, %166
  br i1 %193, label %194, label %172

194:                                              ; preds = %190, %156
  %195 = phi i8 [ %162, %156 ], [ %191, %190 ]
  %196 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 20
  store i8 %195, ptr %196, align 4
  br label %197

197:                                              ; preds = %194, %151
  br i1 %22, label %198, label %291

198:                                              ; preds = %197
  %199 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 21
  %200 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %107, i32 0, i32 4
  %201 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %107, i32 0, i32 1
  br label %202

202:                                              ; preds = %287, %198
  %203 = phi i1 [ false, %198 ], [ %288, %287 ]
  %204 = phi i32 [ 0, %198 ], [ %289, %287 ]
  %205 = getelementptr %struct.ieee80211_tx_rate, ptr %3, i32 %204
  br i1 %203, label %206, label %207

206:                                              ; preds = %202
  store i8 -1, ptr %205, align 1
  br label %287

207:                                              ; preds = %202
  %208 = load i8, ptr %205, align 1
  %209 = icmp slt i8 %208, 0
  br i1 %209, label %287, label %210

210:                                              ; preds = %207
  %211 = getelementptr %struct.ieee80211_tx_rate, ptr %3, i32 %204, i32 1
  %212 = load i16, ptr %211, align 1
  %213 = lshr i16 %212, 5
  %214 = zext i16 %213 to i32
  %215 = and i32 %214, 8
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %231, label %217

217:                                              ; preds = %210
  %218 = icmp ugt i8 %208, 76
  br i1 %218, label %219, label %221, !prof !9

219:                                              ; preds = %217
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #11
  %220 = load i16, ptr %211, align 1
  br label %221

221:                                              ; preds = %219, %217
  %222 = phi i16 [ %220, %219 ], [ %212, %217 ]
  %223 = and i16 %222, 32
  %224 = icmp eq i16 %223, 0
  br i1 %224, label %225, label %287

225:                                              ; preds = %221
  %226 = load i8, ptr %199, align 1
  %227 = and i8 %226, 2
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %287, label %229

229:                                              ; preds = %225
  %230 = or i16 %222, 64
  store i16 %230, ptr %211, align 1
  br label %287

231:                                              ; preds = %210
  %232 = and i32 %214, 256
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %231
  %235 = and i8 %208, 14
  %236 = icmp ugt i8 %235, 9
  br i1 %236, label %237, label %287, !prof !9

237:                                              ; preds = %234
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 677, i32 noundef 9, ptr noundef null) #11
  br label %287

238:                                              ; preds = %231
  %239 = load i8, ptr %199, align 1
  %240 = and i8 %239, 1
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %238
  %243 = or i16 %212, 32
  store i16 %243, ptr %211, align 1
  %244 = load i8, ptr %199, align 1
  %245 = and i8 %244, -3
  store i8 %245, ptr %199, align 1
  %246 = load i8, ptr %205, align 1
  br label %247

247:                                              ; preds = %242, %238
  %248 = phi i8 [ %246, %242 ], [ %208, %238 ]
  %249 = sext i8 %248 to i32
  %250 = load i32, ptr %200, align 4
  %251 = icmp sle i32 %250, %249
  %252 = load i1, ptr @rate_fixup_ratelist.__already_done, align 1
  %253 = xor i1 %252, true
  %254 = select i1 %251, i1 %253, i1 false
  br i1 %254, label %255, label %256, !prof !9

255:                                              ; preds = %247
  store i1 true, ptr @rate_fixup_ratelist.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 688, i32 noundef 9, ptr noundef null) #11
  br label %256

256:                                              ; preds = %255, %247
  br i1 %251, label %257, label %258

257:                                              ; preds = %256
  store i8 -1, ptr %205, align 1
  br label %287

258:                                              ; preds = %256
  %259 = load ptr, ptr %201, align 4
  %260 = load i8, ptr %205, align 1
  %261 = sext i8 %260 to i32
  %262 = getelementptr %struct.ieee80211_rate, ptr %259, i32 %261
  %263 = load i8, ptr %199, align 1
  %264 = and i8 %263, 4
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %273, label %266

266:                                              ; preds = %258
  %267 = load i32, ptr %262, align 4
  %268 = and i32 %267, 1
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %266
  %271 = load i16, ptr %211, align 1
  %272 = or i16 %271, 128
  store i16 %272, ptr %211, align 1
  br label %273

273:                                              ; preds = %270, %266, %258
  %274 = load i16, ptr %211, align 1
  %275 = and i16 %274, 32
  %276 = icmp eq i16 %275, 0
  br i1 %276, label %277, label %287

277:                                              ; preds = %273
  %278 = load i8, ptr %199, align 1
  %279 = and i8 %278, 2
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %287, label %281

281:                                              ; preds = %277
  %282 = load i32, ptr %262, align 4
  %283 = and i32 %282, 16
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %287, label %285

285:                                              ; preds = %281
  %286 = or i16 %274, 64
  store i16 %286, ptr %211, align 1
  br label %287

287:                                              ; preds = %285, %281, %277, %273, %257, %237, %234, %229, %225, %221, %207, %206
  %288 = phi i1 [ true, %206 ], [ false, %221 ], [ false, %229 ], [ false, %225 ], [ false, %257 ], [ false, %273 ], [ false, %285 ], [ false, %281 ], [ false, %277 ], [ true, %207 ], [ false, %237 ], [ false, %234 ]
  %289 = add nuw nsw i32 %204, 1
  %290 = icmp eq i32 %289, %4
  br i1 %290, label %291, label %202

291:                                              ; preds = %287, %197, %150, %95
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__rate_control_send_low(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 7, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 7
  %9 = select i1 %8, i32 64, i32 0
  %10 = icmp eq i32 %7, 6
  %11 = select i1 %10, i32 32, i32 %9
  %12 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %24 [
    i32 4, label %14
    i32 0, label %19
  ]

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %3, i32 0, i32 2
  %16 = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %15, i32 0, i32 1
  %17 = load i16, ptr %16, align 1
  %18 = or i16 %17, 8192
  store i16 %18, ptr %16, align 1
  store i8 0, ptr %15, align 8
  br label %92

19:                                               ; preds = %5
  %20 = load i32, ptr %3, align 8
  %21 = lshr i32 %20, 23
  %22 = and i32 %21, 16
  %23 = or i32 %22, %11
  br label %24

24:                                               ; preds = %19, %5
  %25 = phi i32 [ %11, %5 ], [ %23, %19 ]
  %26 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %3, i32 0, i32 2
  store i8 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 1
  %32 = icmp eq ptr %2, null
  br label %33

33:                                               ; preds = %54, %30
  %34 = phi i32 [ 0, %30 ], [ %55, %54 ]
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %31, align 4
  %40 = getelementptr %struct.ieee80211_rate, ptr %39, i32 %34
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, %25
  %43 = icmp eq i32 %42, %25
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  br i1 %32, label %51, label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %12, align 4
  %47 = getelementptr [6 x i32], ptr %2, i32 0, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, %35
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45, %44
  %52 = trunc i32 %34 to i8
  store i8 %52, ptr %26, align 8
  %53 = load i32, ptr %27, align 4
  br label %57

54:                                               ; preds = %45, %38, %33
  %55 = add nuw nsw i32 %34, 1
  %56 = icmp eq i32 %55, %28
  br i1 %56, label %57, label %33

57:                                               ; preds = %54, %51, %24
  %58 = phi i32 [ %53, %51 ], [ %28, %24 ], [ %28, %54 ]
  %59 = phi i32 [ %34, %51 ], [ 0, %24 ], [ %28, %54 ]
  %60 = icmp eq i32 %59, %58
  %61 = load i1, ptr @__rate_control_send_low.__already_done, align 1
  %62 = xor i1 %61, true
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %64, label %74, !prof !9

64:                                               ; preds = %57
  store i1 true, ptr @__rate_control_send_low.__already_done, align 1
  %65 = icmp eq ptr %2, null
  %66 = getelementptr inbounds %struct.ieee80211_sta, ptr %2, i32 0, i32 1
  %67 = select i1 %65, ptr null, ptr %66
  %68 = load i32, ptr %12, align 4
  br i1 %65, label %72, label %69

69:                                               ; preds = %64
  %70 = getelementptr [6 x i32], ptr %2, i32 0, i32 %68
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %64
  %73 = phi i32 [ %71, %69 ], [ -1, %64 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %67, i32 noundef %73, i32 noundef %68, i32 noundef %4, i32 noundef %25) #11
  br label %74

74:                                               ; preds = %72, %57
  %75 = load i32, ptr %3, align 8
  %76 = and i32 %75, 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 16
  %80 = load i8, ptr %79, align 1
  %81 = and i8 %80, 31
  %82 = zext i8 %81 to i16
  br label %83

83:                                               ; preds = %78, %74
  %84 = phi i16 [ %82, %78 ], [ 1, %74 ]
  %85 = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %26, i32 0, i32 1
  %86 = load i16, ptr %85, align 1
  %87 = and i16 %86, -32
  %88 = or i16 %87, %84
  store i16 %88, ptr %85, align 1
  %89 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %3, i32 0, i32 2, i32 1, i32 5
  %90 = load i8, ptr %89, align 1
  %91 = or i8 %90, 8
  store i8 %91, ptr %89, align 1
  br label %92

92:                                               ; preds = %83, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rate_control_get_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 58
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %2, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 8
  store i8 -1, ptr %10, align 1
  %11 = getelementptr %struct.sk_buff, ptr %9, i32 0, i32 3, i32 9
  store i16 0, ptr %11, align 1
  %12 = getelementptr %struct.sk_buff, ptr %9, i32 0, i32 3, i32 11
  store i8 -1, ptr %12, align 1
  %13 = getelementptr %struct.sk_buff, ptr %9, i32 0, i32 3, i32 12
  store i16 0, ptr %13, align 1
  %14 = getelementptr %struct.sk_buff, ptr %9, i32 0, i32 3, i32 14
  store i8 -1, ptr %14, align 1
  %15 = getelementptr %struct.sk_buff, ptr %9, i32 0, i32 3, i32 15
  store i16 0, ptr %15, align 1
  %16 = getelementptr %struct.sk_buff, ptr %9, i32 0, i32 3, i32 17
  store i8 -1, ptr %16, align 1
  %17 = getelementptr %struct.sk_buff, ptr %9, i32 0, i32 3, i32 18
  store i16 0, ptr %17, align 1
  %18 = icmp eq ptr %1, null
  %19 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46
  %20 = select i1 %18, ptr null, ptr %19
  %21 = tail call fastcc zeroext i1 @rate_control_send_low(ptr noundef %20, ptr noundef %2)
  br i1 %21, label %111, label %22

22:                                               ; preds = %3
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.ieee80211_hw, ptr %23, i32 0, i32 4
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %111

28:                                               ; preds = %22
  br i1 %18, label %45, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 23
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 2097152
  %33 = icmp eq i32 %32, 0
  %34 = icmp eq ptr %19, null
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 11
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %39) #11
  %40 = load ptr, ptr %7, align 4
  %41 = getelementptr inbounds %struct.rate_control_ops, ptr %40, i32 0, i32 11
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.rate_control_ref, ptr %7, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void %42(ptr noundef %44, ptr noundef nonnull %19, ptr noundef %38, ptr noundef %2) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %39) #11
  br label %101

45:                                               ; preds = %29, %28
  %46 = load ptr, ptr %8, align 4
  %47 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %2, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %2, align 4
  %51 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %2, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  tail call fastcc void @__rate_control_send_low(ptr noundef %50, ptr noundef %49, ptr noundef null, ptr noundef %47, i32 noundef %52) #11
  %53 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %2, i32 0, i32 9
  %54 = load i8, ptr %53, align 4, !range !14
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %101, label %56

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %2, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %49, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr %struct.ieee80211_bss_conf, ptr %58, i32 0, i32 26, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = trunc i32 %62 to i8
  %66 = add i8 %65, -1
  %67 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 3, i32 8
  store i8 %66, ptr %67, align 8
  br label %101

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 3, i32 8
  %70 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %58, i32 0, i32 24
  %71 = load i32, ptr %70, align 8
  %72 = icmp eq i32 %60, 4
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 3, i32 9
  %75 = load i16, ptr %74, align 1
  %76 = or i16 %75, 8192
  store i16 %76, ptr %74, align 1
  br label %99

77:                                               ; preds = %68
  %78 = icmp eq i32 %71, 0
  br i1 %78, label %101, label %79

79:                                               ; preds = %77
  %80 = load i8, ptr %69, align 1
  %81 = icmp slt i8 %80, 0
  br i1 %81, label %101, label %82

82:                                               ; preds = %79
  %83 = zext i8 %80 to i32
  %84 = shl nuw i32 1, %83
  %85 = and i32 %84, %71
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %49, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  br label %90

90:                                               ; preds = %95, %87
  %91 = phi i8 [ %92, %95 ], [ %80, %87 ]
  %92 = add i8 %91, 1
  %93 = zext i8 %92 to i32
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %90
  %96 = shl nuw i32 1, %93
  %97 = and i32 %96, %71
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %90, label %99

99:                                               ; preds = %95, %73
  %100 = phi i8 [ 0, %73 ], [ %92, %95 ]
  store i8 %100, ptr %69, align 1
  br label %101

101:                                              ; preds = %99, %90, %82, %79, %77, %64, %45, %36
  %102 = phi ptr [ %19, %36 ], [ null, %45 ], [ null, %64 ], [ null, %77 ], [ null, %79 ], [ null, %82 ], [ null, %99 ], [ null, %90 ]
  %103 = load ptr, ptr %4, align 4
  %104 = getelementptr inbounds %struct.ieee80211_hw, ptr %103, i32 0, i32 4
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %105, 4194304
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %110 = load ptr, ptr %8, align 4
  tail call void @ieee80211_get_tx_rates(ptr noundef %109, ptr noundef %102, ptr noundef %110, ptr noundef %10, i32 noundef 4)
  br label %111

111:                                              ; preds = %108, %101, %22, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rate_control_send_low(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %5, align 8
  %11 = and i32 %10, 536870916
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = and i32 %10, 16384
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %78

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = load i16, ptr %18, align 2
  %20 = and i16 %19, 12
  %21 = icmp eq i16 %20, 8
  br i1 %21, label %78, label %41

22:                                               ; preds = %2
  %23 = load ptr, ptr %1, align 4
  %24 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %1, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  tail call fastcc void @__rate_control_send_low(ptr noundef %23, ptr noundef %7, ptr noundef null, ptr noundef %5, i32 noundef %25)
  %26 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %1, i32 0, i32 9
  %27 = load i8, ptr %26, align 4, !range !14
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %78, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %1, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %7, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr %struct.ieee80211_bss_conf, ptr %31, i32 0, i32 26, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = trunc i32 %35 to i8
  %39 = add i8 %38, -1
  %40 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 8
  store i8 %39, ptr %40, align 8
  br label %78

41:                                               ; preds = %16, %9
  %42 = load ptr, ptr %1, align 4
  %43 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %1, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  tail call fastcc void @__rate_control_send_low(ptr noundef %42, ptr noundef %7, ptr noundef nonnull %0, ptr noundef %5, i32 noundef %44)
  br label %78

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 8
  %47 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %31, i32 0, i32 24
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %33, 4
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 9
  %52 = load i16, ptr %51, align 1
  %53 = or i16 %52, 8192
  store i16 %53, ptr %51, align 1
  br label %76

54:                                               ; preds = %45
  %55 = icmp eq i32 %48, 0
  br i1 %55, label %78, label %56

56:                                               ; preds = %54
  %57 = load i8, ptr %46, align 1
  %58 = icmp slt i8 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %56
  %60 = zext i8 %57 to i32
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, %48
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %7, i32 0, i32 4
  %66 = load i32, ptr %65, align 4
  br label %67

67:                                               ; preds = %72, %64
  %68 = phi i8 [ %69, %72 ], [ %57, %64 ]
  %69 = add i8 %68, 1
  %70 = zext i8 %69 to i32
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = shl nuw i32 1, %70
  %74 = and i32 %73, %48
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %67, label %76

76:                                               ; preds = %72, %50
  %77 = phi i8 [ 0, %50 ], [ %69, %72 ]
  store i8 %77, ptr %46, align 1
  br label %78

78:                                               ; preds = %76, %67, %59, %56, %54, %41, %37, %22, %16, %13
  %79 = phi i1 [ true, %37 ], [ true, %22 ], [ true, %41 ], [ false, %16 ], [ true, %54 ], [ true, %56 ], [ true, %59 ], [ true, %76 ], [ false, %13 ], [ true, %67 ]
  ret i1 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rate_control_set_rates(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca [10 x i8], align 1
  %6 = alloca [8 x i16], align 2
  %7 = getelementptr i8, ptr %1, i32 -1952
  %8 = getelementptr i8, ptr %1, i32 -1908
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %9, i32 0, i32 58, i32 9
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %128

16:                                               ; preds = %3
  %17 = load ptr, ptr %13, align 4
  %18 = load i32, ptr %17, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  %19 = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr %struct.wiphy, ptr %20, i32 0, i32 53, i32 %18
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %128, label %24

24:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %5, i8 0, i32 10, i1 false) #11, !annotation !12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(16) %6, i8 0, i32 16, i1 false) #11, !annotation !12
  %25 = load ptr, ptr %8, align 4
  %26 = call fastcc zeroext i1 @rate_control_cap_mask(ptr noundef %25, ptr noundef nonnull %22, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br i1 %26, label %27, label %52

27:                                               ; preds = %24
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 58, i32 1, i32 32, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %4, align 4
  %32 = getelementptr %struct.ieee80211_sta_rates, ptr %2, i32 0, i32 1, i32 0
  %33 = load i8, ptr %32, align 2
  %34 = icmp slt i8 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %27
  %36 = getelementptr %struct.ieee80211_sta_rates, ptr %2, i32 0, i32 1, i32 0, i32 4
  call fastcc void @rate_idx_match_mask(ptr noundef %32, ptr noundef %36, ptr noundef nonnull %22, i32 noundef %30, i32 noundef %31, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %37 = getelementptr %struct.ieee80211_sta_rates, ptr %2, i32 0, i32 1, i32 1
  %38 = load i8, ptr %37, align 2
  %39 = icmp slt i8 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %35
  %41 = getelementptr %struct.ieee80211_sta_rates, ptr %2, i32 0, i32 1, i32 1, i32 4
  call fastcc void @rate_idx_match_mask(ptr noundef %37, ptr noundef %41, ptr noundef nonnull %22, i32 noundef %30, i32 noundef %31, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %42 = getelementptr %struct.ieee80211_sta_rates, ptr %2, i32 0, i32 1, i32 2
  %43 = load i8, ptr %42, align 2
  %44 = icmp slt i8 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = getelementptr %struct.ieee80211_sta_rates, ptr %2, i32 0, i32 1, i32 2, i32 4
  call fastcc void @rate_idx_match_mask(ptr noundef %42, ptr noundef %46, ptr noundef nonnull %22, i32 noundef %30, i32 noundef %31, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %47 = getelementptr %struct.ieee80211_sta_rates, ptr %2, i32 0, i32 1, i32 3
  %48 = load i8, ptr %47, align 2
  %49 = icmp slt i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = getelementptr %struct.ieee80211_sta_rates, ptr %2, i32 0, i32 1, i32 3, i32 4
  call fastcc void @rate_idx_match_mask(ptr noundef %47, ptr noundef %51, ptr noundef nonnull %22, i32 noundef %30, i32 noundef %31, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br label %52

52:                                               ; preds = %50, %45, %40, %35, %27, %24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %53 = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 16
  %54 = load ptr, ptr %53, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  store volatile ptr %2, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @kvfree_call_rcu(ptr noundef nonnull %54, ptr noundef null) #11
  br label %57

57:                                               ; preds = %56, %52
  %58 = getelementptr i8, ptr %1, i32 -1804
  %59 = load i8, ptr %58, align 4, !range !14
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %126, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %8, align 4
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %62, i32 0, i32 58
  %64 = load i32, ptr %63, align 8
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %62, i32 0, i32 49
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 -1408
  br label %70

70:                                               ; preds = %66, %61
  %71 = phi ptr [ %69, %66 ], [ %62, %61 ]
  %72 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %71, i32 0, i32 8
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 32
  %75 = icmp eq i32 %74, 0
  %76 = load i1, ptr @drv_sta_rate_tbl_update.__already_done, align 1
  %77 = xor i1 %76, true
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %79, label %85, !prof !9

79:                                               ; preds = %70
  store i1 true, ptr @drv_sta_rate_tbl_update.__already_done, align 1
  %80 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %71, i32 0, i32 6
  %81 = load ptr, ptr %80, align 8
  %82 = icmp eq ptr %81, null
  %83 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %71, i32 0, i32 10
  %84 = select i1 %82, ptr %83, ptr %81
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 545, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %84, i32 noundef %73) #11
  br label %85

85:                                               ; preds = %79, %70
  br i1 %75, label %126, label %86

86:                                               ; preds = %85
  %87 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sta_rate_tbl_update, i32 0, i32 1), align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %101 = tail call i32 @__traceiter_drv_sta_rate_tbl_update(ptr noundef null, ptr noundef %0, ptr noundef %71, ptr noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %102

102:                                              ; preds = %100, %89, %86
  %103 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.ieee80211_ops, ptr %104, i32 0, i32 38
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %71, i32 0, i32 58
  tail call void %106(ptr noundef %0, ptr noundef %109, ptr noundef %1) #11
  br label %110

110:                                              ; preds = %108, %102
  %111 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = tail call ptr @llvm.thread.pointer() #11
  %115 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %116 = load i32, ptr %115, align 8
  %117 = lshr i32 %116, 5
  %118 = getelementptr i32, ptr @__cpu_online_mask, i32 %117
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %116, 31
  %121 = shl nuw i32 1, %120
  %122 = and i32 %121, %119
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %113
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  %125 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  br label %126

126:                                              ; preds = %124, %113, %110, %85, %57
  %127 = tail call i32 @sta_get_expected_throughput(ptr noundef %7) #11
  tail call void @ieee80211_sta_set_expected_throughput(ptr noundef %1, i32 noundef %127) #11
  br label %128

128:                                              ; preds = %126, %16, %15
  %129 = phi i32 [ 0, %126 ], [ -22, %16 ], [ -22, %15 ]
  ret i32 %129
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_set_expected_throughput(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_get_expected_throughput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_init_rate_ctrl_alg(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @rtnl_is_locked() #11
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @ieee80211_init_rate_ctrl_alg.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %2
  store i1 true, ptr @ieee80211_init_rate_ctrl_alg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 972, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 972) #11
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 13
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %111

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ieee80211_ops, ptr %20, i32 0, i32 30
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %111, !prof !9

24:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 978, i32 noundef 9, ptr noundef null) #11
  br label %111

25:                                               ; preds = %13
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %27 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 8) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %96, label %29

29:                                               ; preds = %25
  tail call void @kernel_param_lock(ptr noundef nonnull @__this_module) #11
  %30 = icmp ne ptr %1, null
  %31 = load ptr, ptr @ieee80211_default_rc_algo, align 4
  %32 = select i1 %30, ptr %1, ptr %31
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %29
  tail call void @mutex_lock(ptr noundef nonnull @rate_ctrl_mutex) #11
  br label %35

35:                                               ; preds = %39, %34
  %36 = phi ptr [ @rate_ctrl_algs, %34 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, @rate_ctrl_algs
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rate_control_alg, ptr %37, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.rate_control_ops, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @strcmp(ptr noundef %43, ptr noundef nonnull %32) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %35

46:                                               ; preds = %39, %35
  %47 = phi ptr [ null, %35 ], [ %41, %39 ]
  tail call void @mutex_unlock(ptr noundef nonnull @rate_ctrl_mutex) #11
  br label %48

48:                                               ; preds = %46, %29
  %49 = phi ptr [ %47, %46 ], [ null, %29 ]
  %50 = icmp eq ptr %49, null
  %51 = and i1 %30, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load ptr, ptr @ieee80211_default_rc_algo, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %73, label %55

55:                                               ; preds = %52
  tail call void @mutex_lock(ptr noundef nonnull @rate_ctrl_mutex) #11
  br label %56

56:                                               ; preds = %60, %55
  %57 = phi ptr [ @rate_ctrl_algs, %55 ], [ %58, %60 ]
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, @rate_ctrl_algs
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.rate_control_alg, ptr %58, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.rate_control_ops, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 @strcmp(ptr noundef %64, ptr noundef nonnull %53) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %56

67:                                               ; preds = %60, %56
  %68 = phi ptr [ null, %56 ], [ %62, %60 ]
  tail call void @mutex_unlock(ptr noundef nonnull @rate_ctrl_mutex) #11
  br label %69

69:                                               ; preds = %67, %48
  %70 = phi ptr [ %49, %48 ], [ %68, %67 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void @kernel_param_unlock(ptr noundef nonnull @__this_module) #11
  store ptr %70, ptr %27, align 8
  br label %88

73:                                               ; preds = %69, %52
  tail call void @mutex_lock(ptr noundef nonnull @rate_ctrl_mutex) #11
  br label %74

74:                                               ; preds = %78, %73
  %75 = phi ptr [ @rate_ctrl_algs, %73 ], [ %76, %78 ]
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, @rate_ctrl_algs
  br i1 %77, label %85, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.rate_control_alg, ptr %76, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.rate_control_ops, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 @strcmp(ptr noundef %82, ptr noundef nonnull dereferenceable(12) @.str.6) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %74

85:                                               ; preds = %78, %74
  %86 = phi ptr [ null, %74 ], [ %80, %78 ]
  tail call void @mutex_unlock(ptr noundef nonnull @rate_ctrl_mutex) #11
  tail call void @kernel_param_unlock(ptr noundef nonnull @__this_module) #11
  store ptr %86, ptr %27, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %95, label %88

88:                                               ; preds = %85, %72
  %89 = phi ptr [ %70, %72 ], [ %86, %85 ]
  %90 = getelementptr inbounds %struct.rate_control_ops, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = tail call ptr %91(ptr noundef %0) #11
  %93 = getelementptr inbounds %struct.rate_control_ref, ptr %27, i32 0, i32 1
  store ptr %92, ptr %93, align 4
  %94 = icmp eq ptr %92, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %88, %85
  tail call void @kfree(ptr noundef nonnull %27) #11
  br label %96

96:                                               ; preds = %95, %25
  %97 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %struct.wiphy, ptr %98, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %99, ptr noundef nonnull @.str.3) #13
  br label %111

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 58
  %102 = load ptr, ptr %101, align 8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104, !prof !11

104:                                              ; preds = %100
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 990, i32 noundef 9, ptr noundef null) #11
  br label %105

105:                                              ; preds = %104, %100
  store ptr %27, ptr %101, align 8
  %106 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds %struct.wiphy, ptr %107, i32 0, i32 56
  %109 = getelementptr inbounds %struct.rate_control_ops, ptr %89, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %108, ptr noundef nonnull @.str.5, ptr noundef %110) #13
  br label %111

111:                                              ; preds = %105, %96, %24, %18, %9
  %112 = phi i32 [ 0, %105 ], [ -2, %96 ], [ -16, %9 ], [ -22, %24 ], [ 0, %18 ]
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rate_control_deinitialize(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 58
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.rate_control_ops, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rate_control_ref, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10) #11
  tail call void @kfree(ptr noundef nonnull %3) #11
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rate_control_cap_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) unnamed_addr #0 {
  %7 = alloca [8 x i16], align 2
  %8 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 50, i32 %9
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %3, align 4
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 7
  %15 = select i1 %14, i32 64, i32 0
  %16 = icmp eq i32 %13, 6
  %17 = select i1 %16, i32 32, i32 %15
  %18 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 1
  br label %23

23:                                               ; preds = %37, %21
  %24 = phi i32 [ %19, %21 ], [ %38, %37 ]
  %25 = phi i32 [ %11, %21 ], [ %39, %37 ]
  %26 = phi i32 [ 0, %21 ], [ %40, %37 ]
  %27 = load ptr, ptr %22, align 4
  %28 = getelementptr %struct.ieee80211_rate, ptr %27, i32 %26
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, %17
  %31 = icmp eq i32 %30, %17
  br i1 %31, label %37, label %32

32:                                               ; preds = %23
  %33 = shl nuw i32 1, %26
  %34 = xor i32 %33, -1
  %35 = and i32 %25, %34
  store i32 %35, ptr %3, align 4
  %36 = load i32, ptr %18, align 4
  br label %37

37:                                               ; preds = %32, %23
  %38 = phi i32 [ %24, %23 ], [ %36, %32 ]
  %39 = phi i32 [ %25, %23 ], [ %35, %32 ]
  %40 = add nuw i32 %26, 1
  %41 = icmp ult i32 %40, %38
  br i1 %41, label %23, label %42

42:                                               ; preds = %37, %6
  %43 = phi i32 [ %11, %6 ], [ %39, %37 ]
  %44 = phi i32 [ 0, %6 ], [ %38, %37 ]
  %45 = shl nsw i32 -1, %44
  %46 = xor i32 %45, -1
  %47 = icmp eq i32 %43, %46
  %48 = load i32, ptr %8, align 4
  %49 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 51, i32 %48
  %50 = load i8, ptr %49, align 1, !range !14
  %51 = icmp eq i8 %50, 0
  br i1 %47, label %52, label %57

52:                                               ; preds = %42
  br i1 %51, label %53, label %58

53:                                               ; preds = %52
  %54 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 53, i32 %48
  %55 = load i8, ptr %54, align 1, !range !14
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %166, label %60

57:                                               ; preds = %42
  br i1 %51, label %60, label %58

58:                                               ; preds = %57, %52
  %59 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 52, i32 %48
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %4, ptr noundef align 2 dereferenceable(10) %59, i32 10, i1 false)
  br label %61

60:                                               ; preds = %57, %53
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(10) %4, i8 -1, i32 10, i1 false)
  br label %61

61:                                               ; preds = %60, %58
  %62 = load i32, ptr %8, align 4
  %63 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 53, i32 %62
  %64 = load i8, ptr %63, align 1, !range !14
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 54, i32 %62
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %5, ptr noundef align 8 dereferenceable(16) %67, i32 16, i1 false)
  br label %69

68:                                               ; preds = %61
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(16) %5, i8 -1, i32 16, i1 false)
  br label %69

69:                                               ; preds = %68, %66
  %70 = icmp eq ptr %2, null
  br i1 %70, label %166, label %71

71:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !12
  %72 = load i32, ptr %8, align 4
  %73 = getelementptr [6 x i32], ptr %2, i32 0, i32 %72
  %74 = load i32, ptr %73, align 4
  %75 = load i32, ptr %3, align 4
  %76 = and i32 %75, %74
  store i32 %76, ptr %3, align 4
  %77 = getelementptr inbounds %struct.ieee80211_sta, ptr %2, i32 0, i32 3, i32 4
  %78 = load i8, ptr %77, align 1
  %79 = load i8, ptr %4, align 1
  %80 = and i8 %79, %78
  store i8 %80, ptr %4, align 1
  %81 = getelementptr %struct.ieee80211_sta, ptr %2, i32 0, i32 3, i32 4, i32 0, i32 1
  %82 = load i8, ptr %81, align 1
  %83 = getelementptr i8, ptr %4, i32 1
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, %82
  store i8 %85, ptr %83, align 1
  %86 = getelementptr %struct.ieee80211_sta, ptr %2, i32 0, i32 3, i32 4, i32 0, i32 2
  %87 = load i8, ptr %86, align 1
  %88 = getelementptr i8, ptr %4, i32 2
  %89 = load i8, ptr %88, align 1
  %90 = and i8 %89, %87
  store i8 %90, ptr %88, align 1
  %91 = getelementptr %struct.ieee80211_sta, ptr %2, i32 0, i32 3, i32 4, i32 0, i32 3
  %92 = load i8, ptr %91, align 1
  %93 = getelementptr i8, ptr %4, i32 3
  %94 = load i8, ptr %93, align 1
  %95 = and i8 %94, %92
  store i8 %95, ptr %93, align 1
  %96 = getelementptr %struct.ieee80211_sta, ptr %2, i32 0, i32 3, i32 4, i32 0, i32 4
  %97 = load i8, ptr %96, align 1
  %98 = getelementptr i8, ptr %4, i32 4
  %99 = load i8, ptr %98, align 1
  %100 = and i8 %99, %97
  store i8 %100, ptr %98, align 1
  %101 = getelementptr %struct.ieee80211_sta, ptr %2, i32 0, i32 3, i32 4, i32 0, i32 5
  %102 = load i8, ptr %101, align 1
  %103 = getelementptr i8, ptr %4, i32 5
  %104 = load i8, ptr %103, align 1
  %105 = and i8 %104, %102
  store i8 %105, ptr %103, align 1
  %106 = getelementptr %struct.ieee80211_sta, ptr %2, i32 0, i32 3, i32 4, i32 0, i32 6
  %107 = load i8, ptr %106, align 1
  %108 = getelementptr i8, ptr %4, i32 6
  %109 = load i8, ptr %108, align 1
  %110 = and i8 %109, %107
  store i8 %110, ptr %108, align 1
  %111 = getelementptr %struct.ieee80211_sta, ptr %2, i32 0, i32 3, i32 4, i32 0, i32 7
  %112 = load i8, ptr %111, align 1
  %113 = getelementptr i8, ptr %4, i32 7
  %114 = load i8, ptr %113, align 1
  %115 = and i8 %114, %112
  store i8 %115, ptr %113, align 1
  %116 = getelementptr %struct.ieee80211_sta, ptr %2, i32 0, i32 3, i32 4, i32 0, i32 8
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %4, i32 8
  %119 = load i8, ptr %118, align 1
  %120 = and i8 %119, %117
  store i8 %120, ptr %118, align 1
  %121 = getelementptr %struct.ieee80211_sta, ptr %2, i32 0, i32 3, i32 4, i32 0, i32 9
  %122 = load i8, ptr %121, align 1
  %123 = getelementptr i8, ptr %4, i32 9
  %124 = load i8, ptr %123, align 1
  %125 = and i8 %124, %122
  store i8 %125, ptr %123, align 1
  %126 = getelementptr inbounds %struct.ieee80211_sta, ptr %2, i32 0, i32 5, i32 2
  %127 = load i16, ptr %126, align 4
  call void @ieee80211_get_vht_mask_from_cap(i16 noundef zeroext %127, ptr noundef nonnull %7) #11
  %128 = load i16, ptr %7, align 2
  %129 = load i16, ptr %5, align 2
  %130 = and i16 %129, %128
  store i16 %130, ptr %5, align 2
  %131 = getelementptr inbounds [8 x i16], ptr %7, i32 0, i32 1
  %132 = load i16, ptr %131, align 2
  %133 = getelementptr i16, ptr %5, i32 1
  %134 = load i16, ptr %133, align 2
  %135 = and i16 %134, %132
  store i16 %135, ptr %133, align 2
  %136 = getelementptr inbounds [8 x i16], ptr %7, i32 0, i32 2
  %137 = load i16, ptr %136, align 2
  %138 = getelementptr i16, ptr %5, i32 2
  %139 = load i16, ptr %138, align 2
  %140 = and i16 %139, %137
  store i16 %140, ptr %138, align 2
  %141 = getelementptr inbounds [8 x i16], ptr %7, i32 0, i32 3
  %142 = load i16, ptr %141, align 2
  %143 = getelementptr i16, ptr %5, i32 3
  %144 = load i16, ptr %143, align 2
  %145 = and i16 %144, %142
  store i16 %145, ptr %143, align 2
  %146 = getelementptr inbounds [8 x i16], ptr %7, i32 0, i32 4
  %147 = load i16, ptr %146, align 2
  %148 = getelementptr i16, ptr %5, i32 4
  %149 = load i16, ptr %148, align 2
  %150 = and i16 %149, %147
  store i16 %150, ptr %148, align 2
  %151 = getelementptr inbounds [8 x i16], ptr %7, i32 0, i32 5
  %152 = load i16, ptr %151, align 2
  %153 = getelementptr i16, ptr %5, i32 5
  %154 = load i16, ptr %153, align 2
  %155 = and i16 %154, %152
  store i16 %155, ptr %153, align 2
  %156 = getelementptr inbounds [8 x i16], ptr %7, i32 0, i32 6
  %157 = load i16, ptr %156, align 2
  %158 = getelementptr i16, ptr %5, i32 6
  %159 = load i16, ptr %158, align 2
  %160 = and i16 %159, %157
  store i16 %160, ptr %158, align 2
  %161 = getelementptr inbounds [8 x i16], ptr %7, i32 0, i32 7
  %162 = load i16, ptr %161, align 2
  %163 = getelementptr i16, ptr %5, i32 7
  %164 = load i16, ptr %163, align 2
  %165 = and i16 %164, %162
  store i16 %165, ptr %163, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %166

166:                                              ; preds = %71, %69, %53
  %167 = phi i1 [ false, %53 ], [ true, %71 ], [ true, %69 ]
  ret i1 %167
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rate_idx_match_mask(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) unnamed_addr #8 {
  %8 = load i16, ptr %1, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %298, label %12

12:                                               ; preds = %7
  %13 = load i8, ptr %0, align 1
  %14 = icmp slt i8 %13, 0
  br i1 %14, label %164, label %15

15:                                               ; preds = %12
  %16 = zext i8 %13 to i32
  %17 = lshr i32 %16, 4
  %18 = and i32 %16, 15
  br label %19

19:                                               ; preds = %33, %15
  %20 = phi i32 [ %18, %15 ], [ 15, %33 ]
  %21 = phi i32 [ %17, %15 ], [ %34, %33 ]
  %22 = getelementptr i16, ptr %6, i32 %21
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  br label %25

25:                                               ; preds = %30, %19
  %26 = phi i32 [ %20, %19 ], [ %31, %30 ]
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %24
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %159

30:                                               ; preds = %25
  %31 = add nsw i32 %26, -1
  %32 = icmp sgt i32 %26, 0
  br i1 %32, label %25, label %33

33:                                               ; preds = %30
  %34 = add nsw i32 %21, -1
  %35 = icmp sgt i32 %21, 0
  br i1 %35, label %19, label %36

36:                                               ; preds = %33
  %37 = icmp ult i8 %13, 127
  br i1 %37, label %38, label %164

38:                                               ; preds = %36
  %39 = add nuw nsw i32 %16, 1
  %40 = lshr i32 %39, 4
  %41 = call i32 @llvm.umax.i32(i32 %40, i32 7)
  %42 = and i32 %39, 15
  %43 = getelementptr i16, ptr %6, i32 %40
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  br label %46

46:                                               ; preds = %51, %38
  %47 = phi i32 [ %42, %38 ], [ %52, %51 ]
  %48 = shl nuw nsw i32 1, %47
  %49 = and i32 %48, %45
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %159

51:                                               ; preds = %46
  %52 = add nuw nsw i32 %47, 1
  %53 = icmp eq i32 %52, 16
  br i1 %53, label %54, label %46

54:                                               ; preds = %51
  %55 = add nuw nsw i32 %40, 1
  %56 = icmp ugt i8 %13, 110
  br i1 %56, label %164, label %57

57:                                               ; preds = %54
  %58 = getelementptr i16, ptr %6, i32 %55
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  br label %61

61:                                               ; preds = %66, %57
  %62 = phi i32 [ 0, %57 ], [ %67, %66 ]
  %63 = shl nuw nsw i32 1, %62
  %64 = and i32 %63, %60
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %159

66:                                               ; preds = %61
  %67 = add nuw nsw i32 %62, 1
  %68 = icmp eq i32 %67, 16
  br i1 %68, label %69, label %61

69:                                               ; preds = %66
  %70 = add nuw nsw i32 %40, 2
  %71 = icmp eq i32 %55, %41
  br i1 %71, label %164, label %72

72:                                               ; preds = %69
  %73 = getelementptr i16, ptr %6, i32 %70
  %74 = load i16, ptr %73, align 2
  %75 = zext i16 %74 to i32
  br label %76

76:                                               ; preds = %81, %72
  %77 = phi i32 [ 0, %72 ], [ %82, %81 ]
  %78 = shl nuw nsw i32 1, %77
  %79 = and i32 %78, %75
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %159

81:                                               ; preds = %76
  %82 = add nuw nsw i32 %77, 1
  %83 = icmp eq i32 %82, 16
  br i1 %83, label %84, label %76

84:                                               ; preds = %81
  %85 = add nuw nsw i32 %40, 3
  %86 = icmp eq i32 %70, %41
  br i1 %86, label %164, label %87

87:                                               ; preds = %84
  %88 = getelementptr i16, ptr %6, i32 %85
  %89 = load i16, ptr %88, align 2
  %90 = zext i16 %89 to i32
  br label %91

91:                                               ; preds = %96, %87
  %92 = phi i32 [ 0, %87 ], [ %97, %96 ]
  %93 = shl nuw nsw i32 1, %92
  %94 = and i32 %93, %90
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %159

96:                                               ; preds = %91
  %97 = add nuw nsw i32 %92, 1
  %98 = icmp eq i32 %97, 16
  br i1 %98, label %99, label %91

99:                                               ; preds = %96
  %100 = add nuw nsw i32 %40, 4
  %101 = icmp eq i32 %85, %41
  br i1 %101, label %164, label %102

102:                                              ; preds = %99
  %103 = getelementptr i16, ptr %6, i32 %100
  %104 = load i16, ptr %103, align 2
  %105 = zext i16 %104 to i32
  br label %106

106:                                              ; preds = %111, %102
  %107 = phi i32 [ 0, %102 ], [ %112, %111 ]
  %108 = shl nuw nsw i32 1, %107
  %109 = and i32 %108, %105
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %159

111:                                              ; preds = %106
  %112 = add nuw nsw i32 %107, 1
  %113 = icmp eq i32 %112, 16
  br i1 %113, label %114, label %106

114:                                              ; preds = %111
  %115 = add nuw nsw i32 %40, 5
  %116 = icmp eq i32 %100, %41
  br i1 %116, label %164, label %117

117:                                              ; preds = %114
  %118 = getelementptr i16, ptr %6, i32 %115
  %119 = load i16, ptr %118, align 2
  %120 = zext i16 %119 to i32
  br label %121

121:                                              ; preds = %126, %117
  %122 = phi i32 [ 0, %117 ], [ %127, %126 ]
  %123 = shl nuw nsw i32 1, %122
  %124 = and i32 %123, %120
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %159

126:                                              ; preds = %121
  %127 = add nuw nsw i32 %122, 1
  %128 = icmp eq i32 %127, 16
  br i1 %128, label %129, label %121

129:                                              ; preds = %126
  %130 = add nuw nsw i32 %40, 6
  %131 = icmp eq i32 %115, %41
  br i1 %131, label %164, label %132

132:                                              ; preds = %129
  %133 = getelementptr i16, ptr %6, i32 %130
  %134 = load i16, ptr %133, align 2
  %135 = zext i16 %134 to i32
  br label %136

136:                                              ; preds = %141, %132
  %137 = phi i32 [ 0, %132 ], [ %142, %141 ]
  %138 = shl nuw nsw i32 1, %137
  %139 = and i32 %138, %135
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %159

141:                                              ; preds = %136
  %142 = add nuw nsw i32 %137, 1
  %143 = icmp eq i32 %142, 16
  br i1 %143, label %144, label %136

144:                                              ; preds = %141
  %145 = add nuw nsw i32 %40, 7
  %146 = icmp eq i32 %130, %41
  br i1 %146, label %164, label %147

147:                                              ; preds = %144
  %148 = getelementptr i16, ptr %6, i32 %145
  %149 = load i16, ptr %148, align 2
  %150 = zext i16 %149 to i32
  br label %151

151:                                              ; preds = %156, %147
  %152 = phi i32 [ 0, %147 ], [ %157, %156 ]
  %153 = shl nuw nsw i32 1, %152
  %154 = and i32 %153, %150
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = add nuw nsw i32 %152, 1
  %158 = icmp eq i32 %157, 16
  br i1 %158, label %164, label %151

159:                                              ; preds = %151, %136, %121, %106, %91, %76, %61, %46, %25
  %160 = phi i32 [ %40, %46 ], [ %55, %61 ], [ %70, %76 ], [ %85, %91 ], [ %100, %106 ], [ %115, %121 ], [ %130, %136 ], [ %145, %151 ], [ %21, %25 ]
  %161 = phi i32 [ %47, %46 ], [ %62, %61 ], [ %77, %76 ], [ %92, %91 ], [ %107, %106 ], [ %122, %121 ], [ %137, %136 ], [ %152, %151 ], [ %26, %25 ]
  %162 = shl i32 %160, 4
  %163 = or i32 %161, %162
  br label %567

164:                                              ; preds = %156, %144, %129, %114, %99, %84, %69, %54, %36, %12
  store i8 0, ptr %0, align 1
  %165 = load i16, ptr %1, align 2
  %166 = and i16 %165, 7
  %167 = icmp eq i32 %3, 2
  %168 = select i1 %167, i16 40, i16 8
  %169 = or i16 %166, %168
  store i16 %169, ptr %1, align 2
  %170 = load i8, ptr %0, align 1
  %171 = add i8 %170, -80
  %172 = icmp ult i8 %171, -87
  br i1 %172, label %275, label %173

173:                                              ; preds = %164
  %174 = sext i8 %170 to i32
  %175 = freeze i8 %170
  %176 = sdiv i8 %175, 8
  %177 = mul i8 %176, 8
  %178 = sub i8 %175, %177
  %179 = sext i8 %178 to i32
  %180 = zext i8 %176 to i32
  br label %181

181:                                              ; preds = %241, %173
  %182 = phi i32 [ 7, %241 ], [ %179, %173 ]
  %183 = phi i32 [ %242, %241 ], [ %180, %173 ]
  %184 = icmp sgt i32 %182, -1
  br i1 %184, label %185, label %241

185:                                              ; preds = %181
  %186 = getelementptr i8, ptr %5, i32 %183
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i32
  %189 = shl nuw i32 1, %182
  %190 = and i32 %189, %188
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %270

192:                                              ; preds = %185
  %193 = icmp sgt i32 %182, 0
  br i1 %193, label %194, label %241

194:                                              ; preds = %192
  %195 = add nsw i32 %182, -1
  %196 = shl nuw i32 1, %195
  %197 = and i32 %196, %188
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %270

199:                                              ; preds = %194
  %200 = icmp sgt i32 %182, 1
  br i1 %200, label %201, label %241

201:                                              ; preds = %199
  %202 = add nsw i32 %182, -2
  %203 = shl nuw i32 1, %202
  %204 = and i32 %203, %188
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %270

206:                                              ; preds = %201
  %207 = icmp sgt i32 %182, 2
  br i1 %207, label %208, label %241

208:                                              ; preds = %206
  %209 = add nsw i32 %182, -3
  %210 = shl nuw i32 1, %209
  %211 = and i32 %210, %188
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %270

213:                                              ; preds = %208
  %214 = icmp sgt i32 %182, 3
  br i1 %214, label %215, label %241

215:                                              ; preds = %213
  %216 = add nsw i32 %182, -4
  %217 = shl nuw i32 1, %216
  %218 = and i32 %217, %188
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %270

220:                                              ; preds = %215
  %221 = icmp sgt i32 %182, 4
  br i1 %221, label %222, label %241

222:                                              ; preds = %220
  %223 = add nsw i32 %182, -5
  %224 = shl nuw i32 1, %223
  %225 = and i32 %224, %188
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %270

227:                                              ; preds = %222
  %228 = icmp sgt i32 %182, 5
  br i1 %228, label %229, label %241

229:                                              ; preds = %227
  %230 = add nsw i32 %182, -6
  %231 = shl nuw i32 1, %230
  %232 = and i32 %231, %188
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %270

234:                                              ; preds = %229
  %235 = icmp sgt i32 %182, 6
  br i1 %235, label %236, label %241

236:                                              ; preds = %234
  %237 = add nsw i32 %182, -7
  %238 = shl nuw i32 1, %237
  %239 = and i32 %238, %188
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %270

241:                                              ; preds = %236, %234, %227, %220, %213, %206, %199, %192, %181
  %242 = add nsw i32 %183, -1
  %243 = icmp sgt i32 %183, 0
  br i1 %243, label %181, label %244

244:                                              ; preds = %241
  %245 = icmp slt i8 %170, 79
  br i1 %245, label %246, label %275

246:                                              ; preds = %244
  %247 = add nsw i32 %174, 1
  %248 = freeze i32 %247
  %249 = sdiv i32 %248, 8
  %250 = mul i32 %249, 8
  %251 = sub i32 %248, %250
  %252 = call i32 @llvm.smax.i32(i32 %249, i32 9)
  br label %253

253:                                              ; preds = %267, %246
  %254 = phi i32 [ 0, %267 ], [ %251, %246 ]
  %255 = phi i32 [ %268, %267 ], [ %249, %246 ]
  %256 = getelementptr i8, ptr %5, i32 %255
  %257 = load i8, ptr %256, align 1
  %258 = zext i8 %257 to i32
  br label %259

259:                                              ; preds = %264, %253
  %260 = phi i32 [ %254, %253 ], [ %265, %264 ]
  %261 = shl nuw nsw i32 1, %260
  %262 = and i32 %261, %258
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %259
  %265 = add nsw i32 %260, 1
  %266 = icmp eq i32 %265, 8
  br i1 %266, label %267, label %259

267:                                              ; preds = %264
  %268 = add nsw i32 %255, 1
  %269 = icmp eq i32 %255, %252
  br i1 %269, label %275, label %253

270:                                              ; preds = %259, %236, %229, %222, %215, %208, %201, %194, %185
  %271 = phi i32 [ %255, %259 ], [ %183, %236 ], [ %183, %229 ], [ %183, %222 ], [ %183, %215 ], [ %183, %208 ], [ %183, %201 ], [ %183, %194 ], [ %183, %185 ]
  %272 = phi i32 [ %260, %259 ], [ %182, %185 ], [ %195, %194 ], [ %202, %201 ], [ %209, %208 ], [ %216, %215 ], [ %223, %222 ], [ %230, %229 ], [ %237, %236 ]
  %273 = shl i32 %271, 3
  %274 = add i32 %272, %273
  br label %567

275:                                              ; preds = %267, %244, %164
  store i16 %166, ptr %1, align 2
  %276 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %2, i32 0, i32 4
  %277 = load i32, ptr %276, align 4
  %278 = load i8, ptr %0, align 1
  %279 = sext i8 %278 to i32
  %280 = icmp sgt i8 %278, -1
  br i1 %280, label %281, label %289

281:                                              ; preds = %286, %275
  %282 = phi i32 [ %287, %286 ], [ %279, %275 ]
  %283 = shl nuw i32 1, %282
  %284 = and i32 %283, %4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %567

286:                                              ; preds = %281
  %287 = add nsw i32 %282, -1
  %288 = icmp sgt i32 %282, 0
  br i1 %288, label %281, label %289

289:                                              ; preds = %286, %275
  br label %290

290:                                              ; preds = %294, %289
  %291 = phi i32 [ %292, %294 ], [ %279, %289 ]
  %292 = add nsw i32 %291, 1
  %293 = icmp slt i32 %292, %277
  br i1 %293, label %294, label %570

294:                                              ; preds = %290
  %295 = shl nuw i32 1, %292
  %296 = and i32 %295, %4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %290, label %567

298:                                              ; preds = %7
  %299 = and i32 %9, 8
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %432, label %301

301:                                              ; preds = %298
  %302 = load i8, ptr %0, align 1
  %303 = add i8 %302, -80
  %304 = icmp ult i8 %303, -87
  br i1 %304, label %407, label %305

305:                                              ; preds = %301
  %306 = sext i8 %302 to i32
  %307 = freeze i8 %302
  %308 = sdiv i8 %307, 8
  %309 = mul i8 %308, 8
  %310 = sub i8 %307, %309
  %311 = sext i8 %310 to i32
  %312 = zext i8 %308 to i32
  br label %313

313:                                              ; preds = %373, %305
  %314 = phi i32 [ 7, %373 ], [ %311, %305 ]
  %315 = phi i32 [ %374, %373 ], [ %312, %305 ]
  %316 = icmp sgt i32 %314, -1
  br i1 %316, label %317, label %373

317:                                              ; preds = %313
  %318 = getelementptr i8, ptr %5, i32 %315
  %319 = load i8, ptr %318, align 1
  %320 = zext i8 %319 to i32
  %321 = shl nuw i32 1, %314
  %322 = and i32 %321, %320
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %402

324:                                              ; preds = %317
  %325 = icmp sgt i32 %314, 0
  br i1 %325, label %326, label %373

326:                                              ; preds = %324
  %327 = add nsw i32 %314, -1
  %328 = shl nuw i32 1, %327
  %329 = and i32 %328, %320
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %402

331:                                              ; preds = %326
  %332 = icmp sgt i32 %314, 1
  br i1 %332, label %333, label %373

333:                                              ; preds = %331
  %334 = add nsw i32 %314, -2
  %335 = shl nuw i32 1, %334
  %336 = and i32 %335, %320
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %402

338:                                              ; preds = %333
  %339 = icmp sgt i32 %314, 2
  br i1 %339, label %340, label %373

340:                                              ; preds = %338
  %341 = add nsw i32 %314, -3
  %342 = shl nuw i32 1, %341
  %343 = and i32 %342, %320
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %402

345:                                              ; preds = %340
  %346 = icmp sgt i32 %314, 3
  br i1 %346, label %347, label %373

347:                                              ; preds = %345
  %348 = add nsw i32 %314, -4
  %349 = shl nuw i32 1, %348
  %350 = and i32 %349, %320
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %402

352:                                              ; preds = %347
  %353 = icmp sgt i32 %314, 4
  br i1 %353, label %354, label %373

354:                                              ; preds = %352
  %355 = add nsw i32 %314, -5
  %356 = shl nuw i32 1, %355
  %357 = and i32 %356, %320
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %402

359:                                              ; preds = %354
  %360 = icmp sgt i32 %314, 5
  br i1 %360, label %361, label %373

361:                                              ; preds = %359
  %362 = add nsw i32 %314, -6
  %363 = shl nuw i32 1, %362
  %364 = and i32 %363, %320
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %402

366:                                              ; preds = %361
  %367 = icmp sgt i32 %314, 6
  br i1 %367, label %368, label %373

368:                                              ; preds = %366
  %369 = add nsw i32 %314, -7
  %370 = shl nuw i32 1, %369
  %371 = and i32 %370, %320
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %402

373:                                              ; preds = %368, %366, %359, %352, %345, %338, %331, %324, %313
  %374 = add nsw i32 %315, -1
  %375 = icmp sgt i32 %315, 0
  br i1 %375, label %313, label %376

376:                                              ; preds = %373
  %377 = icmp slt i8 %302, 79
  br i1 %377, label %378, label %407

378:                                              ; preds = %376
  %379 = add nsw i32 %306, 1
  %380 = freeze i32 %379
  %381 = sdiv i32 %380, 8
  %382 = mul i32 %381, 8
  %383 = sub i32 %380, %382
  %384 = call i32 @llvm.smax.i32(i32 %381, i32 9)
  br label %385

385:                                              ; preds = %399, %378
  %386 = phi i32 [ 0, %399 ], [ %383, %378 ]
  %387 = phi i32 [ %400, %399 ], [ %381, %378 ]
  %388 = getelementptr i8, ptr %5, i32 %387
  %389 = load i8, ptr %388, align 1
  %390 = zext i8 %389 to i32
  br label %391

391:                                              ; preds = %396, %385
  %392 = phi i32 [ %386, %385 ], [ %397, %396 ]
  %393 = shl nuw nsw i32 1, %392
  %394 = and i32 %393, %390
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %402

396:                                              ; preds = %391
  %397 = add nsw i32 %392, 1
  %398 = icmp eq i32 %397, 8
  br i1 %398, label %399, label %391

399:                                              ; preds = %396
  %400 = add nsw i32 %387, 1
  %401 = icmp eq i32 %387, %384
  br i1 %401, label %407, label %385

402:                                              ; preds = %391, %368, %361, %354, %347, %340, %333, %326, %317
  %403 = phi i32 [ %387, %391 ], [ %315, %368 ], [ %315, %361 ], [ %315, %354 ], [ %315, %347 ], [ %315, %340 ], [ %315, %333 ], [ %315, %326 ], [ %315, %317 ]
  %404 = phi i32 [ %392, %391 ], [ %314, %317 ], [ %327, %326 ], [ %334, %333 ], [ %341, %340 ], [ %348, %347 ], [ %355, %354 ], [ %362, %361 ], [ %369, %368 ]
  %405 = shl i32 %403, 3
  %406 = add i32 %404, %405
  br label %567

407:                                              ; preds = %399, %376, %301
  store i8 0, ptr %0, align 1
  %408 = load i16, ptr %1, align 2
  %409 = and i16 %408, 7
  store i16 %409, ptr %1, align 2
  %410 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %2, i32 0, i32 4
  %411 = load i32, ptr %410, align 4
  %412 = load i8, ptr %0, align 1
  %413 = sext i8 %412 to i32
  %414 = icmp sgt i8 %412, -1
  br i1 %414, label %415, label %423

415:                                              ; preds = %420, %407
  %416 = phi i32 [ %421, %420 ], [ %413, %407 ]
  %417 = shl nuw i32 1, %416
  %418 = and i32 %417, %4
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %567

420:                                              ; preds = %415
  %421 = add nsw i32 %416, -1
  %422 = icmp sgt i32 %416, 0
  br i1 %422, label %415, label %423

423:                                              ; preds = %420, %407
  br label %424

424:                                              ; preds = %428, %423
  %425 = phi i32 [ %426, %428 ], [ %413, %423 ]
  %426 = add nsw i32 %425, 1
  %427 = icmp slt i32 %426, %411
  br i1 %427, label %428, label %570

428:                                              ; preds = %424
  %429 = shl nuw i32 1, %426
  %430 = and i32 %429, %4
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %424, label %567

432:                                              ; preds = %298
  %433 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %2, i32 0, i32 4
  %434 = load i32, ptr %433, align 4
  %435 = load i8, ptr %0, align 1
  %436 = sext i8 %435 to i32
  %437 = icmp sgt i8 %435, -1
  br i1 %437, label %438, label %446

438:                                              ; preds = %443, %432
  %439 = phi i32 [ %444, %443 ], [ %436, %432 ]
  %440 = shl nuw i32 1, %439
  %441 = and i32 %440, %4
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %567

443:                                              ; preds = %438
  %444 = add nsw i32 %439, -1
  %445 = icmp sgt i32 %439, 0
  br i1 %445, label %438, label %446

446:                                              ; preds = %443, %432
  br label %447

447:                                              ; preds = %451, %446
  %448 = phi i32 [ %449, %451 ], [ %436, %446 ]
  %449 = add nsw i32 %448, 1
  %450 = icmp slt i32 %449, %434
  br i1 %450, label %451, label %455

451:                                              ; preds = %447
  %452 = shl nuw i32 1, %449
  %453 = and i32 %452, %4
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %447, label %567

455:                                              ; preds = %447
  switch i32 %3, label %456 [
    i32 0, label %570
    i32 6, label %570
    i32 7, label %570
  ]

456:                                              ; preds = %455
  store i8 0, ptr %0, align 1
  %457 = load i16, ptr %1, align 2
  %458 = and i16 %457, 7
  %459 = icmp eq i32 %3, 2
  %460 = select i1 %459, i16 40, i16 8
  %461 = or i16 %458, %460
  store i16 %461, ptr %1, align 2
  %462 = load i8, ptr %0, align 1
  %463 = add i8 %462, -80
  %464 = icmp ult i8 %463, -87
  br i1 %464, label %570, label %465

465:                                              ; preds = %456
  %466 = sext i8 %462 to i32
  %467 = freeze i8 %462
  %468 = sdiv i8 %467, 8
  %469 = mul i8 %468, 8
  %470 = sub i8 %467, %469
  %471 = sext i8 %470 to i32
  %472 = zext i8 %468 to i32
  br label %473

473:                                              ; preds = %533, %465
  %474 = phi i32 [ 7, %533 ], [ %471, %465 ]
  %475 = phi i32 [ %534, %533 ], [ %472, %465 ]
  %476 = icmp sgt i32 %474, -1
  br i1 %476, label %477, label %533

477:                                              ; preds = %473
  %478 = getelementptr i8, ptr %5, i32 %475
  %479 = load i8, ptr %478, align 1
  %480 = zext i8 %479 to i32
  %481 = shl nuw i32 1, %474
  %482 = and i32 %481, %480
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %562

484:                                              ; preds = %477
  %485 = icmp sgt i32 %474, 0
  br i1 %485, label %486, label %533

486:                                              ; preds = %484
  %487 = add nsw i32 %474, -1
  %488 = shl nuw i32 1, %487
  %489 = and i32 %488, %480
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %562

491:                                              ; preds = %486
  %492 = icmp sgt i32 %474, 1
  br i1 %492, label %493, label %533

493:                                              ; preds = %491
  %494 = add nsw i32 %474, -2
  %495 = shl nuw i32 1, %494
  %496 = and i32 %495, %480
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %562

498:                                              ; preds = %493
  %499 = icmp sgt i32 %474, 2
  br i1 %499, label %500, label %533

500:                                              ; preds = %498
  %501 = add nsw i32 %474, -3
  %502 = shl nuw i32 1, %501
  %503 = and i32 %502, %480
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %562

505:                                              ; preds = %500
  %506 = icmp sgt i32 %474, 3
  br i1 %506, label %507, label %533

507:                                              ; preds = %505
  %508 = add nsw i32 %474, -4
  %509 = shl nuw i32 1, %508
  %510 = and i32 %509, %480
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %562

512:                                              ; preds = %507
  %513 = icmp sgt i32 %474, 4
  br i1 %513, label %514, label %533

514:                                              ; preds = %512
  %515 = add nsw i32 %474, -5
  %516 = shl nuw i32 1, %515
  %517 = and i32 %516, %480
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %562

519:                                              ; preds = %514
  %520 = icmp sgt i32 %474, 5
  br i1 %520, label %521, label %533

521:                                              ; preds = %519
  %522 = add nsw i32 %474, -6
  %523 = shl nuw i32 1, %522
  %524 = and i32 %523, %480
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %562

526:                                              ; preds = %521
  %527 = icmp sgt i32 %474, 6
  br i1 %527, label %528, label %533

528:                                              ; preds = %526
  %529 = add nsw i32 %474, -7
  %530 = shl nuw i32 1, %529
  %531 = and i32 %530, %480
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %562

533:                                              ; preds = %528, %526, %519, %512, %505, %498, %491, %484, %473
  %534 = add nsw i32 %475, -1
  %535 = icmp sgt i32 %475, 0
  br i1 %535, label %473, label %536

536:                                              ; preds = %533
  %537 = icmp slt i8 %462, 79
  br i1 %537, label %538, label %570

538:                                              ; preds = %536
  %539 = add nsw i32 %466, 1
  %540 = freeze i32 %539
  %541 = sdiv i32 %540, 8
  %542 = mul i32 %541, 8
  %543 = sub i32 %540, %542
  %544 = call i32 @llvm.smax.i32(i32 %541, i32 9)
  br label %545

545:                                              ; preds = %559, %538
  %546 = phi i32 [ 0, %559 ], [ %543, %538 ]
  %547 = phi i32 [ %560, %559 ], [ %541, %538 ]
  %548 = getelementptr i8, ptr %5, i32 %547
  %549 = load i8, ptr %548, align 1
  %550 = zext i8 %549 to i32
  br label %551

551:                                              ; preds = %556, %545
  %552 = phi i32 [ %546, %545 ], [ %557, %556 ]
  %553 = shl nuw nsw i32 1, %552
  %554 = and i32 %553, %550
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %562

556:                                              ; preds = %551
  %557 = add nsw i32 %552, 1
  %558 = icmp eq i32 %557, 8
  br i1 %558, label %559, label %551

559:                                              ; preds = %556
  %560 = add nsw i32 %547, 1
  %561 = icmp eq i32 %547, %544
  br i1 %561, label %570, label %545

562:                                              ; preds = %551, %528, %521, %514, %507, %500, %493, %486, %477
  %563 = phi i32 [ %547, %551 ], [ %475, %528 ], [ %475, %521 ], [ %475, %514 ], [ %475, %507 ], [ %475, %500 ], [ %475, %493 ], [ %475, %486 ], [ %475, %477 ]
  %564 = phi i32 [ %552, %551 ], [ %474, %477 ], [ %487, %486 ], [ %494, %493 ], [ %501, %500 ], [ %508, %507 ], [ %515, %514 ], [ %522, %521 ], [ %529, %528 ]
  %565 = shl i32 %563, 3
  %566 = add i32 %564, %565
  br label %567

567:                                              ; preds = %562, %451, %438, %428, %415, %402, %294, %281, %270, %159
  %568 = phi i32 [ %566, %562 ], [ %406, %402 ], [ %274, %270 ], [ %163, %159 ], [ %449, %451 ], [ %439, %438 ], [ %426, %428 ], [ %416, %415 ], [ %292, %294 ], [ %282, %281 ]
  %569 = trunc i32 %568 to i8
  store i8 %569, ptr %0, align 1
  br label %570

570:                                              ; preds = %567, %559, %536, %456, %455, %455, %455, %424, %290
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_vht_mask_from_cap(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sta_rate_tbl_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_param_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_param_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
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
!8 = !{i64 2149314358}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149314575}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"auto-init"}
!13 = !{i32 0, i32 33}
!14 = !{i8 0, i8 2}
!15 = !{i64 2159571427}
!16 = !{i64 2158062039}
!17 = !{i64 2158062231}
!18 = !{i64 2157426593}
!19 = !{i64 2157426745}
