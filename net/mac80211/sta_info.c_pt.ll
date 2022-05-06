; ModuleID = '/llk/IR/net/mac80211/sta_info.c_pt.bc'
source_filename = "../net/mac80211/sta_info.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_find_sta_by_ifaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_find_sta_by_ifaddr\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_find_sta_by_ifaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_find_sta:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_find_sta\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_find_sta:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_sta_block_awake:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_sta_block_awake\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_sta_block_awake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_sta_eosp:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_sta_eosp\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_sta_eosp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_send_eosp_nullfunc:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_send_eosp_nullfunc\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_send_eosp_nullfunc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_sta_set_buffered:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_sta_set_buffered\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_sta_set_buffered:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_sta_register_airtime:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_sta_register_airtime\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_sta_register_airtime:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [32 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.151, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
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
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.140, [17 x i16], %struct.anon.141, %struct.anon.142, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
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
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.rate_control_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rate_control_ref = type { ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.ieee80211_if_ap = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ps_data, %struct.atomic_t, i8 }
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
%struct.ieee80211_qos_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, i16 }
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }
%struct.cfg80211_tid_stats = type { i32, i64, i64, i64, i64, %struct.cfg80211_txq_stats }
%struct.cfg80211_txq_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tid_ampdu_tx = type { %struct.callback_head, %struct.timer_list, %struct.timer_list, %struct.sk_buff_head, ptr, i32, i32, i16, i8, i8, i8, i16, i16, i16, i8, i8, i8 }

@sta_rht_params = internal constant %struct.rhashtable_params { i16 3, i16 6, i16 32, i16 24, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, align 4
@sta_info_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [24 x i8] c"net/mac80211/sta_info.c\00", align 1
@sta_info_free.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"sta_info_move_state() returned %d\0A\00", align 1
@sta_info_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"&sta->ampdu_mlme.mtx\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@sta_info_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"&local->sta_mtx\00", align 1
@__kstrtab_ieee80211_find_sta_by_ifaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_find_sta_by_ifaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_find_sta_by_ifaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_find_sta_by_ifaddr to i32), ptr @__kstrtab_ieee80211_find_sta_by_ifaddr, ptr @__kstrtabns_ieee80211_find_sta_by_ifaddr }, section "___ksymtab_gpl+ieee80211_find_sta_by_ifaddr", align 4
@__kstrtab_ieee80211_find_sta = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_find_sta = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_find_sta = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_find_sta to i32), ptr @__kstrtab_ieee80211_find_sta, ptr @__kstrtabns_ieee80211_find_sta }, section "___ksymtab+ieee80211_find_sta", align 4
@__kstrtab_ieee80211_sta_block_awake = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_sta_block_awake = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_sta_block_awake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_sta_block_awake to i32), ptr @__kstrtab_ieee80211_sta_block_awake, ptr @__kstrtabns_ieee80211_sta_block_awake }, section "___ksymtab+ieee80211_sta_block_awake", align 4
@__kstrtab_ieee80211_sta_eosp = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_sta_eosp = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_sta_eosp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_sta_eosp to i32), ptr @__kstrtab_ieee80211_sta_eosp, ptr @__kstrtabns_ieee80211_sta_eosp }, section "___ksymtab+ieee80211_sta_eosp", align 4
@__kstrtab_ieee80211_send_eosp_nullfunc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_send_eosp_nullfunc = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_send_eosp_nullfunc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_send_eosp_nullfunc to i32), ptr @__kstrtab_ieee80211_send_eosp_nullfunc, ptr @__kstrtabns_ieee80211_send_eosp_nullfunc }, section "___ksymtab+ieee80211_send_eosp_nullfunc", align 4
@__kstrtab_ieee80211_sta_set_buffered = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_sta_set_buffered = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_sta_set_buffered = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_sta_set_buffered to i32), ptr @__kstrtab_ieee80211_sta_set_buffered, ptr @__kstrtabns_ieee80211_sta_set_buffered }, section "___ksymtab+ieee80211_sta_set_buffered", align 4
@__kstrtab_ieee80211_sta_register_airtime = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_sta_register_airtime = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_sta_register_airtime = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_sta_register_airtime to i32), ptr @__kstrtab_ieee80211_sta_register_airtime, ptr @__kstrtabns_ieee80211_sta_register_airtime }, section "___ksymtab+ieee80211_sta_register_airtime", align 4
@ieee80211_sta_update_pending_airtime.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Device %s AC %d pending airtime underflow: %u, %u\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"invalid state %d\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = private unnamed_addr constant [72 x i8] c"\016%s: failed to move IBSS STA %pM to state %d (%d) - keeping it anyway\0A\00", align 1
@__sta_info_recalc_tim.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_ac_to_qos_mask = external dso_local local_unnamed_addr constant [4 x i8], align 1
@__tracepoint_drv_set_tim = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_sync_rx_queues = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@drv_tdls_cancel_channel_switch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@__tracepoint_drv_tdls_cancel_channel_switch = external dso_local global %struct.tracepoint, align 4
@drv_sta_pre_rcu_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_sta_pre_rcu_remove = external dso_local global %struct.tracepoint, align 4
@__sta_info_destroy_part2.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sta_info_destroy_part2.__already_done.12 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sta_info_destroy_part2.__already_done.13 = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_sta_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_sta_notify = external dso_local global %struct.tracepoint, align 4
@drv_wake_tx_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_wake_tx_queue = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_allow_buffered_frames = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_release_buffered_frames = external dso_local global %struct.tracepoint, align 4
@__tracepoint_api_sta_block_awake = external dso_local global %struct.tracepoint, align 4
@__tracepoint_api_eosp = external dso_local global %struct.tracepoint, align 4
@__tracepoint_api_send_eosp_nullfunc = external dso_local global %struct.tracepoint, align 4
@ieee802_1d_to_ac = external dso_local local_unnamed_addr constant [8 x i32], align 4
@__tracepoint_api_sta_set_buffered = external dso_local global %struct.tracepoint, align 4
@drv_sta_statistics.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_sta_statistics = external dso_local global %struct.tracepoint, align 4
@sta_stats_decode_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_get_expected_throughput = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_u32 = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_ieee80211_find_sta, ptr @__ksymtab_ieee80211_find_sta_by_ifaddr, ptr @__ksymtab_ieee80211_send_eosp_nullfunc, ptr @__ksymtab_ieee80211_sta_block_awake, ptr @__ksymtab_ieee80211_sta_eosp, ptr @__ksymtab_ieee80211_sta_register_airtime, ptr @__ksymtab_ieee80211_sta_set_buffered], section "llvm.metadata"
@switch.table.ieee80211_sta_ps_deliver_response = private unnamed_addr constant [4 x i32] [i32 192, i32 48, i32 9, i32 6], align 4
@switch.table.ieee80211_sta_ps_deliver_uapsd = private unnamed_addr constant [4 x i32] [i32 128, i32 2, i32 4, i32 6], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sta_info_hash_lookup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 50
  %4 = load volatile ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 50, i32 0, i32 3, i32 3
  %6 = getelementptr i8, ptr %1, i32 5
  %7 = getelementptr i8, ptr %1, i32 4
  %8 = getelementptr i8, ptr %1, i32 3
  %9 = getelementptr i8, ptr %1, i32 2
  %10 = getelementptr i8, ptr %1, i32 1
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 50, i32 0, i32 3, i32 2
  %12 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 50, i32 0, i32 3, i32 1
  br label %13

13:                                               ; preds = %107, %2
  %14 = phi ptr [ %4, %2 ], [ %109, %107 ]
  %15 = getelementptr inbounds %struct.bucket_table, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, -559038731
  %18 = load i8, ptr %6, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = add i32 %20, %17
  %22 = load i8, ptr %7, align 1
  %23 = zext i8 %22 to i32
  %24 = add i32 %21, %23
  %25 = load i8, ptr %8, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 %26, 24
  %28 = add i32 %27, %17
  %29 = load i8, ptr %9, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 16
  %32 = add i32 %28, %31
  %33 = load i8, ptr %10, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = add i32 %32, %35
  %37 = load i8, ptr %1, align 1
  %38 = zext i8 %37 to i32
  %39 = add i32 %36, %38
  %40 = xor i32 %24, %17
  %41 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 14) #17
  %42 = sub i32 %40, %41
  %43 = xor i32 %39, %42
  %44 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 11) #17
  %45 = sub i32 %43, %44
  %46 = xor i32 %45, %24
  %47 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 25) #17
  %48 = sub i32 %46, %47
  %49 = xor i32 %48, %42
  %50 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 16) #17
  %51 = sub i32 %49, %50
  %52 = xor i32 %51, %45
  %53 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 4) #17
  %54 = sub i32 %52, %53
  %55 = xor i32 %54, %48
  %56 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 14) #17
  %57 = sub i32 %55, %56
  %58 = xor i32 %57, %51
  %59 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 24) #17
  %60 = sub i32 %58, %59
  %61 = load i32, ptr %14, align 64
  %62 = add i32 %61, -1
  %63 = and i32 %60, %62
  %64 = getelementptr inbounds %struct.bucket_table, ptr %14, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67, !prof !8

67:                                               ; preds = %13
  %68 = tail call ptr @rht_bucket_nested(ptr noundef %14, i32 noundef %63) #17
  br label %71

69:                                               ; preds = %13
  %70 = getelementptr %struct.bucket_table, ptr %14, i32 0, i32 8, i32 %63
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %68, %67 ], [ %70, %69 ]
  %73 = ptrtoint ptr %72 to i32
  %74 = or i32 %73, 1
  %75 = inttoptr i32 %74 to ptr
  br label %76

76:                                               ; preds = %104, %71
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %77 = load volatile ptr, ptr %72, align 4
  %78 = ptrtoint ptr %77 to i32
  %79 = and i32 %78, -2
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 %74, i32 %79
  %82 = inttoptr i32 %81 to ptr
  %83 = and i32 %81, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %76
  %86 = load i16, ptr %5, align 2
  %87 = zext i16 %86 to i32
  %88 = sub nsw i32 0, %87
  %89 = load i16, ptr %11, align 4
  %90 = zext i16 %89 to i32
  %91 = load i16, ptr %12, align 2
  %92 = zext i16 %91 to i32
  br label %93

93:                                               ; preds = %99, %85
  %94 = phi ptr [ %100, %99 ], [ %82, %85 ]
  %95 = getelementptr i8, ptr %94, i32 %88
  %96 = getelementptr i8, ptr %95, i32 %90
  %97 = tail call i32 @bcmp(ptr %96, ptr %1, i32 %92) #17
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %93
  %100 = load volatile ptr, ptr %94, align 4
  %101 = ptrtoint ptr %100 to i32
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %93, label %104

104:                                              ; preds = %99, %76
  %105 = phi ptr [ %82, %76 ], [ %100, %99 ]
  %106 = icmp eq ptr %105, %75
  br i1 %106, label %107, label %76

107:                                              ; preds = %104
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !10
  %108 = getelementptr inbounds %struct.bucket_table, ptr %14, i32 0, i32 5
  %109 = load volatile ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %13, !prof !8

111:                                              ; preds = %107, %93
  %112 = phi ptr [ %94, %93 ], [ null, %107 ]
  ret ptr %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sta_info_get(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %5 = tail call ptr @sta_info_hash_lookup(ptr noundef %4, ptr noundef %1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %14, %2
  %8 = phi ptr [ %16, %14 ], [ %5, %2 ]
  %9 = getelementptr i8, ptr %8, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %8, i32 -24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %19

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.rhlist_head, ptr %8, i32 0, i32 1
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %7

18:                                               ; preds = %14, %2
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi ptr [ %13, %12 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sta_info_get_bss(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %5 = tail call ptr @sta_info_hash_lookup(ptr noundef %4, ptr noundef %1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 49
  br label %9

9:                                                ; preds = %23, %7
  %10 = phi ptr [ %5, %7 ], [ %25, %23 ]
  %11 = getelementptr i8, ptr %10, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 49
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %8, align 4
  %20 = icmp eq ptr %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %9
  %22 = getelementptr i8, ptr %10, i32 -24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %28

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds %struct.rhlist_head, ptr %10, i32 0, i32 1
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %9

27:                                               ; preds = %23, %2
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %28

28:                                               ; preds = %27, %21
  %29 = phi ptr [ %22, %21 ], [ null, %27 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sta_info_get_by_addrs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @sta_info_hash_lookup(ptr noundef %0, ptr noundef %1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr i8, ptr %2, i32 4
  %9 = load i16, ptr %8, align 2
  br label %10

10:                                               ; preds = %23, %6
  %11 = phi ptr [ %4, %6 ], [ %25, %23 ]
  %12 = getelementptr i8, ptr %11, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 58, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %15, %7
  %17 = getelementptr %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 58, i32 2, i32 4
  %18 = load i16, ptr %17, align 2
  %19 = xor i16 %18, %9
  %20 = zext i16 %19 to i32
  %21 = or i32 %16, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.rhlist_head, ptr %11, i32 0, i32 1
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %10

27:                                               ; preds = %10
  %28 = getelementptr i8, ptr %11, i32 -24
  br label %29

29:                                               ; preds = %27, %23, %3
  %30 = phi ptr [ %28, %27 ], [ null, %3 ], [ null, %23 ]
  ret ptr %30
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sta_info_get_by_idx(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 49
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %22, label %8

8:                                                ; preds = %18, %2
  %9 = phi ptr [ %20, %18 ], [ %6, %2 ]
  %10 = phi i32 [ %19, %18 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.sta_info, ptr %9, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = icmp slt i32 %10, %1
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = add nsw i32 %10, 1
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi i32 [ %10, %8 ], [ %17, %16 ]
  %20 = load volatile ptr, ptr %9, align 4
  %21 = icmp eq ptr %20, %5
  br i1 %21, label %22, label %8

22:                                               ; preds = %18, %14, %2
  %23 = phi ptr [ null, %2 ], [ null, %18 ], [ %9, %14 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sta_info_free(ptr nocapture readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 22
  %4 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 23
  br label %5

5:                                                ; preds = %26, %2
  %6 = load i32, ptr %3, align 8
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 1048576
  %11 = icmp ne i32 %10, 0
  %12 = load i1, ptr @sta_info_free.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %17, !prof !13

15:                                               ; preds = %8
  store i1 true, ptr @sta_info_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 272, i32 noundef 9, ptr noundef null) #17
  %16 = load i32, ptr %3, align 8
  br label %17

17:                                               ; preds = %15, %8
  %18 = phi i32 [ %16, %15 ], [ %6, %8 ]
  %19 = add i32 %18, -1
  %20 = tail call i32 @sta_info_move_state(ptr noundef %1, i32 noundef %19)
  %21 = icmp ne i32 %20, 0
  %22 = load i1, ptr @sta_info_free.__already_done.1, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !13

25:                                               ; preds = %17
  store i1 true, ptr @sta_info_free.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %20) #17
  br label %26

26:                                               ; preds = %25, %17
  br i1 %21, label %27, label %5

27:                                               ; preds = %26, %5
  %28 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46
  %33 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 11
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %29, align 4
  %36 = getelementptr inbounds %struct.rate_control_ops, ptr %35, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.rate_control_ref, ptr %29, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  tail call void %37(ptr noundef %39, ptr noundef %32, ptr noundef %34) #17
  br label %40

40:                                               ; preds = %31, %27
  %41 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 28
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %42, i32 -164
  tail call void @kfree(ptr noundef %45) #17
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 16
  %48 = load volatile ptr, ptr %47, align 8
  tail call void @kfree(ptr noundef %48) #17
  %49 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 16
  %50 = load ptr, ptr %49, align 4
  tail call void @free_percpu(ptr noundef %50) #17
  tail call void @kfree(ptr noundef %1) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sta_info_move_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 22
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %75, label %6

6:                                                ; preds = %2
  switch i32 %1, label %13 [
    i32 1, label %7
    i32 2, label %9
    i32 3, label %10
    i32 4, label %11
  ]

7:                                                ; preds = %6
  %8 = icmp eq i32 %4, 2
  br i1 %8, label %14, label %75

9:                                                ; preds = %6
  switch i32 %4, label %75 [
    i32 1, label %14
    i32 3, label %14
  ]

10:                                               ; preds = %6
  switch i32 %4, label %75 [
    i32 2, label %14
    i32 4, label %14
  ]

11:                                               ; preds = %6
  %12 = icmp eq i32 %4, 3
  br i1 %12, label %14, label %75

13:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2019, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %1) #17
  br label %75

14:                                               ; preds = %11, %10, %10, %9, %9, %7
  %15 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1048576
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @drv_sta_state(ptr noundef %21, ptr noundef %23, ptr noundef %0, i32 noundef %4, i32 noundef %1) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %75

26:                                               ; preds = %19, %14
  switch i32 %1, label %74 [
    i32 1, label %27
    i32 2, label %31
    i32 3, label %42
    i32 4, label %57
  ]

27:                                               ; preds = %26
  %28 = load i32, ptr %3, align 8
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %74

30:                                               ; preds = %27
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %15) #17
  br label %74

31:                                               ; preds = %26
  %32 = load i32, ptr %3, align 8
  switch i32 %32, label %74 [
    i32 1, label %33
    i32 3, label %34
  ]

33:                                               ; preds = %31
  tail call void @_set_bit(i32 noundef 0, ptr noundef %15) #17
  br label %74

34:                                               ; preds = %31
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %15) #17
  %35 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  tail call void @ieee80211_recalc_min_chandef(ptr noundef %36) #17
  %37 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 22
  %38 = load i8, ptr %37, align 2, !range !14
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %34
  %41 = load ptr, ptr %35, align 4
  tail call fastcc void @ieee80211_recalc_p2p_go_ps_allowed(ptr noundef %41)
  br label %74

42:                                               ; preds = %26
  %43 = load i32, ptr %3, align 8
  switch i32 %43, label %74 [
    i32 2, label %44
    i32 4, label %54
  ]

44:                                               ; preds = %42
  tail call void @_set_bit(i32 noundef 1, ptr noundef %15) #17
  %45 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #17
  %46 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 29
  store i64 %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %48 = load ptr, ptr %47, align 4
  tail call void @ieee80211_recalc_min_chandef(ptr noundef %48) #17
  %49 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 22
  %50 = load i8, ptr %49, align 2, !range !14
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %44
  %53 = load ptr, ptr %47, align 4
  tail call fastcc void @ieee80211_recalc_p2p_go_ps_allowed(ptr noundef %53)
  br label %74

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %56 = load ptr, ptr %55, align 4
  tail call void @ieee80211_vif_dec_num_mcast(ptr noundef %56) #17
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %15) #17
  tail call void @ieee80211_clear_fast_xmit(ptr noundef %0) #17
  tail call void @ieee80211_clear_fast_rx(ptr noundef %0) #17
  br label %74

57:                                               ; preds = %26
  %58 = load i32, ptr %3, align 8
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %62 = load ptr, ptr %61, align 4
  tail call void @ieee80211_vif_inc_num_mcast(ptr noundef %62) #17
  tail call void @_set_bit(i32 noundef 3, ptr noundef %15) #17
  tail call void @ieee80211_check_fast_xmit(ptr noundef %0) #17
  tail call void @ieee80211_check_fast_rx(ptr noundef %0) #17
  br label %63

63:                                               ; preds = %60, %57
  %64 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %65, i32 0, i32 58
  %67 = load i32, ptr %66, align 8
  %68 = add i32 %67, -3
  %69 = icmp ult i32 %68, 2
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %65, i32 0, i32 6
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 1
  tail call void @cfg80211_send_layer2_update(ptr noundef %72, ptr noundef %73) #17
  br label %74

74:                                               ; preds = %70, %63, %54, %52, %44, %42, %40, %34, %33, %31, %30, %27, %26
  store i32 %1, ptr %3, align 8
  br label %75

75:                                               ; preds = %74, %19, %13, %11, %10, %9, %7, %2
  %76 = phi i32 [ -22, %13 ], [ %24, %19 ], [ 0, %74 ], [ 0, %2 ], [ -22, %7 ], [ -22, %9 ], [ -22, %10 ], [ -22, %11 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sta_info_alloc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = or i32 %2, 256
  %7 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, 2224
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef %6) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %318, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 4
  %14 = getelementptr %struct.ieee80211_hw, ptr %5, i32 0, i32 4, i32 1
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 184, i32 noundef 8, i32 noundef %2) #18
  %20 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 16
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %315, label %22

22:                                               ; preds = %18, %12
  %23 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 13
  store i32 0, ptr %23, align 16
  %24 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 24
  store i32 0, ptr %24, align 32
  %25 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 17
  store i32 -32, ptr %25, align 64
  %26 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 17, i32 1
  store volatile ptr %26, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 17, i32 1, i32 1
  store ptr %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 17, i32 2
  store ptr @sta_deliver_ps_frames, ptr %28, align 4
  %29 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 38
  %30 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 38, i32 8
  store i32 -32, ptr %30, align 8
  %31 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 38, i32 8, i32 1
  store volatile ptr %31, ptr %31, align 4
  %32 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 38, i32 8, i32 1, i32 1
  store ptr %31, ptr %32, align 32
  %33 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 38, i32 8, i32 2
  store ptr @ieee80211_ba_session_work, ptr %33, align 4
  tail call void @__mutex_init(ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @sta_info_alloc.__key) #17
  %34 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 32 dereferenceable(6) %34, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false)
  %35 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 46, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %35, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false)
  %36 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 17
  %37 = load i16, ptr %36, align 4
  %38 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 46, i32 9
  store i16 %37, ptr %38, align 2
  %39 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 9
  store i8 2, ptr %39, align 32
  %40 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 5
  store ptr %5, ptr %40, align 8
  %41 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 6
  store ptr %0, ptr %41, align 4
  %42 = load volatile i32, ptr @jiffies, align 64
  %43 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 31, i32 1
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 31, i32 9
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 45
  tail call void @ieee80211_init_frag_cache(ptr noundef %45) #17
  %46 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 22
  store i32 1, ptr %46, align 8
  %47 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 43
  store i8 -1, ptr %47, align 4
  %48 = tail call i64 @ktime_get_seconds() #17
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 30
  store i32 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 32
  %52 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 34, i32 10
  store i32 0, ptr %52, align 32
  %53 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 46
  %54 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %51, i8 0, i64 20, i1 false)
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.ieee80211_ops, ptr %55, i32 0, i32 89
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %102, label %59

59:                                               ; preds = %22
  %60 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 10
  %61 = load i32, ptr %60, align 8
  %62 = add i32 %61, 179
  %63 = and i32 %62, -4
  %64 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %63, i32 17) #17
  %65 = extractvalue { i32, i1 } %64, 1
  br i1 %65, label %315, label %66, !prof !13

66:                                               ; preds = %59
  %67 = extractvalue { i32, i1 } %64, 0
  %68 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %67, i32 noundef %6) #18
  %69 = icmp eq ptr %68, null
  br i1 %69, label %315, label %70

70:                                               ; preds = %66
  tail call void @ieee80211_txq_init(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %68, i32 noundef 0) #17
  %71 = getelementptr i8, ptr %68, i32 %63
  tail call void @ieee80211_txq_init(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %71, i32 noundef 1) #17
  %72 = shl nuw nsw i32 %63, 1
  %73 = getelementptr i8, ptr %68, i32 %72
  tail call void @ieee80211_txq_init(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %73, i32 noundef 2) #17
  %74 = mul nuw nsw i32 %63, 3
  %75 = getelementptr i8, ptr %68, i32 %74
  tail call void @ieee80211_txq_init(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %75, i32 noundef 3) #17
  %76 = shl nuw nsw i32 %63, 2
  %77 = getelementptr i8, ptr %68, i32 %76
  tail call void @ieee80211_txq_init(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %77, i32 noundef 4) #17
  %78 = mul nuw nsw i32 %63, 5
  %79 = getelementptr i8, ptr %68, i32 %78
  tail call void @ieee80211_txq_init(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %79, i32 noundef 5) #17
  %80 = mul nuw nsw i32 %63, 6
  %81 = getelementptr i8, ptr %68, i32 %80
  tail call void @ieee80211_txq_init(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %81, i32 noundef 6) #17
  %82 = mul nuw nsw i32 %63, 7
  %83 = getelementptr i8, ptr %68, i32 %82
  tail call void @ieee80211_txq_init(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %83, i32 noundef 7) #17
  %84 = shl nuw nsw i32 %63, 3
  %85 = getelementptr i8, ptr %68, i32 %84
  tail call void @ieee80211_txq_init(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %85, i32 noundef 8) #17
  %86 = mul nuw i32 %63, 9
  %87 = getelementptr i8, ptr %68, i32 %86
  tail call void @ieee80211_txq_init(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %87, i32 noundef 9) #17
  %88 = mul nuw i32 %63, 10
  %89 = getelementptr i8, ptr %68, i32 %88
  tail call void @ieee80211_txq_init(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %89, i32 noundef 10) #17
  %90 = mul nuw i32 %63, 11
  %91 = getelementptr i8, ptr %68, i32 %90
  tail call void @ieee80211_txq_init(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %91, i32 noundef 11) #17
  %92 = mul nuw i32 %63, 12
  %93 = getelementptr i8, ptr %68, i32 %92
  tail call void @ieee80211_txq_init(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %93, i32 noundef 12) #17
  %94 = mul nuw i32 %63, 13
  %95 = getelementptr i8, ptr %68, i32 %94
  tail call void @ieee80211_txq_init(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %95, i32 noundef 13) #17
  %96 = mul nuw i32 %63, 14
  %97 = getelementptr i8, ptr %68, i32 %96
  tail call void @ieee80211_txq_init(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %97, i32 noundef 14) #17
  %98 = mul nuw i32 %63, 15
  %99 = getelementptr i8, ptr %68, i32 %98
  tail call void @ieee80211_txq_init(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %99, i32 noundef 15) #17
  %100 = shl nuw i32 %63, 4
  %101 = getelementptr i8, ptr %68, i32 %100
  tail call void @ieee80211_txq_init(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %101, i32 noundef 16) #17
  br label %102

102:                                              ; preds = %70, %22
  %103 = load volatile i32, ptr %13, align 4
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 58
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 10
  store ptr %108, ptr %109, align 4
  %110 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 12
  store i32 0, ptr %110, align 4
  %111 = load ptr, ptr %108, align 4
  %112 = getelementptr inbounds %struct.rate_control_ops, ptr %111, i32 0, i32 5
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.rate_control_ref, ptr %108, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = tail call ptr %113(ptr noundef %115, ptr noundef %53, i32 noundef %2) #17
  %117 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 11
  store ptr %116, ptr %117, align 8
  %118 = icmp eq ptr %116, null
  br i1 %118, label %309, label %119

119:                                              ; preds = %106, %102
  %120 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 25, i32 0
  %121 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 25, i32 0, i32 2
  store i32 0, ptr %121, align 16
  store ptr %120, ptr %120, align 4
  %122 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 25, i32 0, i32 0, i32 0, i32 1
  store ptr %120, ptr %122, align 8
  %123 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 25, i32 0, i32 1
  store i32 0, ptr %123, align 4
  %124 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 26, i32 0
  %125 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 26, i32 0, i32 2
  store i32 0, ptr %125, align 16
  store ptr %124, ptr %124, align 4
  %126 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 26, i32 0, i32 0, i32 0, i32 1
  store ptr %124, ptr %126, align 8
  %127 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 26, i32 0, i32 1
  store i32 0, ptr %127, align 4
  %128 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 0, i32 5
  store volatile i32 0, ptr %128, align 8
  %129 = getelementptr %struct.ieee80211_local, ptr %5, i32 0, i32 4, i32 0, i32 9
  %130 = load i32, ptr %129, align 8
  %131 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 0, i32 6
  store i32 %130, ptr %131, align 4
  %132 = getelementptr %struct.ieee80211_local, ptr %5, i32 0, i32 4, i32 0, i32 10
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 0, i32 7
  store i32 %133, ptr %134, align 16
  %135 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 0, i32 9
  %136 = load i16, ptr %135, align 8
  %137 = icmp eq i16 %136, 256
  br i1 %137, label %140, label %138

138:                                              ; preds = %119
  store i16 256, ptr %135, align 8
  %139 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 0, i32 8
  store i32 2048, ptr %139, align 4
  br label %140

140:                                              ; preds = %138, %119
  %141 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 0, i32 4
  store volatile ptr %141, ptr %141, align 64
  %142 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 0, i32 4, i32 1
  store ptr %141, ptr %142, align 4
  %143 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 25, i32 1
  %144 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 25, i32 1, i32 2
  store i32 0, ptr %144, align 64
  store ptr %143, ptr %143, align 4
  %145 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 25, i32 1, i32 0, i32 0, i32 1
  store ptr %143, ptr %145, align 8
  %146 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 25, i32 1, i32 1
  store i32 0, ptr %146, align 4
  %147 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 26, i32 1
  %148 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 26, i32 1, i32 2
  store i32 0, ptr %148, align 64
  store ptr %147, ptr %147, align 4
  %149 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 26, i32 1, i32 0, i32 0, i32 1
  store ptr %147, ptr %149, align 8
  %150 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 26, i32 1, i32 1
  store i32 0, ptr %150, align 4
  %151 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 1, i32 5
  store volatile i32 0, ptr %151, align 8
  %152 = getelementptr %struct.ieee80211_local, ptr %5, i32 0, i32 4, i32 1, i32 9
  %153 = load i32, ptr %152, align 8
  %154 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 1, i32 6
  store i32 %153, ptr %154, align 4
  %155 = getelementptr %struct.ieee80211_local, ptr %5, i32 0, i32 4, i32 1, i32 10
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 1, i32 7
  store i32 %156, ptr %157, align 16
  %158 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 1, i32 9
  %159 = load i16, ptr %158, align 8
  %160 = icmp eq i16 %159, 256
  br i1 %160, label %163, label %161

161:                                              ; preds = %140
  store i16 256, ptr %158, align 8
  %162 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 1, i32 8
  store i32 2048, ptr %162, align 4
  br label %163

163:                                              ; preds = %161, %140
  %164 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 1, i32 4
  store volatile ptr %164, ptr %164, align 64
  %165 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 1, i32 4, i32 1
  store ptr %164, ptr %165, align 4
  %166 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 25, i32 2
  %167 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 25, i32 2, i32 2
  store i32 0, ptr %167, align 16
  store ptr %166, ptr %166, align 4
  %168 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 25, i32 2, i32 0, i32 0, i32 1
  store ptr %166, ptr %168, align 8
  %169 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 25, i32 2, i32 1
  store i32 0, ptr %169, align 4
  %170 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 26, i32 2
  %171 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 26, i32 2, i32 2
  store i32 0, ptr %171, align 16
  store ptr %170, ptr %170, align 4
  %172 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 26, i32 2, i32 0, i32 0, i32 1
  store ptr %170, ptr %172, align 8
  %173 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 26, i32 2, i32 1
  store i32 0, ptr %173, align 4
  %174 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 2, i32 5
  store volatile i32 0, ptr %174, align 8
  %175 = getelementptr %struct.ieee80211_local, ptr %5, i32 0, i32 4, i32 2, i32 9
  %176 = load i32, ptr %175, align 8
  %177 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 2, i32 6
  store i32 %176, ptr %177, align 4
  %178 = getelementptr %struct.ieee80211_local, ptr %5, i32 0, i32 4, i32 2, i32 10
  %179 = load i32, ptr %178, align 4
  %180 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 2, i32 7
  store i32 %179, ptr %180, align 16
  %181 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 2, i32 9
  %182 = load i16, ptr %181, align 8
  %183 = icmp eq i16 %182, 256
  br i1 %183, label %186, label %184

184:                                              ; preds = %163
  store i16 256, ptr %181, align 8
  %185 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 2, i32 8
  store i32 2048, ptr %185, align 4
  br label %186

186:                                              ; preds = %184, %163
  %187 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 2, i32 4
  store volatile ptr %187, ptr %187, align 64
  %188 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 2, i32 4, i32 1
  store ptr %187, ptr %188, align 4
  %189 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 25, i32 3
  %190 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 25, i32 3, i32 2
  store i32 0, ptr %190, align 32
  store ptr %189, ptr %189, align 4
  %191 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 25, i32 3, i32 0, i32 0, i32 1
  store ptr %189, ptr %191, align 8
  %192 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 25, i32 3, i32 1
  store i32 0, ptr %192, align 4
  %193 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 26, i32 3
  %194 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 26, i32 3, i32 2
  store i32 0, ptr %194, align 32
  store ptr %193, ptr %193, align 4
  %195 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 26, i32 3, i32 0, i32 0, i32 1
  store ptr %193, ptr %195, align 8
  %196 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 26, i32 3, i32 1
  store i32 0, ptr %196, align 4
  %197 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 3, i32 5
  store volatile i32 0, ptr %197, align 8
  %198 = getelementptr %struct.ieee80211_local, ptr %5, i32 0, i32 4, i32 3, i32 9
  %199 = load i32, ptr %198, align 8
  %200 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 3, i32 6
  store i32 %199, ptr %200, align 4
  %201 = getelementptr %struct.ieee80211_local, ptr %5, i32 0, i32 4, i32 3, i32 10
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 3, i32 7
  store i32 %202, ptr %203, align 16
  %204 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 3, i32 9
  %205 = load i16, ptr %204, align 8
  %206 = icmp eq i16 %205, 256
  br i1 %206, label %209, label %207

207:                                              ; preds = %186
  store i16 256, ptr %204, align 8
  %208 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 3, i32 8
  store i32 2048, ptr %208, align 4
  br label %209

209:                                              ; preds = %207, %186
  %210 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 3, i32 4
  store volatile ptr %210, ptr %210, align 64
  %211 = getelementptr %struct.sta_info, ptr %10, i32 0, i32 37, i32 3, i32 4, i32 1
  store ptr %210, ptr %211, align 4
  %212 = getelementptr i8, ptr %10, i32 524
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %212, i8 -1, i32 32, i1 false)
  %213 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %214 = load ptr, ptr %213, align 8
  br label %215

215:                                              ; preds = %262, %209
  %216 = phi ptr [ %214, %209 ], [ %263, %262 ]
  %217 = phi ptr [ %214, %209 ], [ %264, %262 ]
  %218 = phi ptr [ %214, %209 ], [ %265, %262 ]
  %219 = phi i32 [ 0, %209 ], [ %266, %262 ]
  %220 = getelementptr %struct.wiphy, ptr %218, i32 0, i32 53, i32 %219
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %262, label %223

223:                                              ; preds = %215
  switch i32 %219, label %228 [
    i32 0, label %224
    i32 5, label %224
    i32 1, label %225
    i32 2, label %226
  ]

224:                                              ; preds = %223, %223
  br label %228

225:                                              ; preds = %223
  br label %228

226:                                              ; preds = %223
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 464, i32 noundef 9, ptr noundef null) #17
  %227 = load ptr, ptr %213, align 8
  br label %228

228:                                              ; preds = %226, %225, %224, %223
  %229 = phi ptr [ %216, %223 ], [ %227, %226 ], [ %216, %225 ], [ %216, %224 ]
  %230 = phi ptr [ %217, %223 ], [ %227, %226 ], [ %217, %225 ], [ %217, %224 ]
  %231 = phi i32 [ 0, %223 ], [ 0, %226 ], [ 2, %225 ], [ 12, %224 ]
  %232 = getelementptr %struct.wiphy, ptr %230, i32 0, i32 53, i32 %219
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %233, i32 0, i32 4
  %235 = load i32, ptr %234, align 4
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %262

237:                                              ; preds = %228
  %238 = getelementptr [6 x i32], ptr %53, i32 0, i32 %219
  br label %239

239:                                              ; preds = %254, %237
  %240 = phi ptr [ %229, %237 ], [ %255, %254 ]
  %241 = phi ptr [ %233, %237 ], [ %258, %254 ]
  %242 = phi i32 [ 0, %237 ], [ %256, %254 ]
  %243 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %241, i32 0, i32 1
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr %struct.ieee80211_rate, ptr %244, i32 %242
  %246 = load i32, ptr %245, align 4
  %247 = and i32 %246, %231
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %239
  %250 = shl nuw i32 1, %242
  %251 = load i32, ptr %238, align 4
  %252 = or i32 %251, %250
  store i32 %252, ptr %238, align 4
  %253 = load ptr, ptr %213, align 8
  br label %254

254:                                              ; preds = %249, %239
  %255 = phi ptr [ %240, %239 ], [ %253, %249 ]
  %256 = add nuw nsw i32 %242, 1
  %257 = getelementptr %struct.wiphy, ptr %255, i32 0, i32 53, i32 %219
  %258 = load ptr, ptr %257, align 4
  %259 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %258, i32 0, i32 4
  %260 = load i32, ptr %259, align 4
  %261 = icmp slt i32 %256, %260
  br i1 %261, label %239, label %262

262:                                              ; preds = %254, %228, %215
  %263 = phi ptr [ %229, %228 ], [ %216, %215 ], [ %255, %254 ]
  %264 = phi ptr [ %230, %228 ], [ %217, %215 ], [ %255, %254 ]
  %265 = phi ptr [ %230, %228 ], [ %218, %215 ], [ %255, %254 ]
  %266 = add nuw nsw i32 %219, 1
  %267 = icmp eq i32 %266, 6
  br i1 %267, label %268, label %215

268:                                              ; preds = %262
  %269 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 46, i32 15
  store i32 1, ptr %269, align 4
  %270 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %271 = load i32, ptr %270, align 8
  %272 = add i32 %271, -3
  %273 = icmp ult i32 %272, 2
  br i1 %273, label %274, label %301

274:                                              ; preds = %268
  %275 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %276 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %277 = load volatile ptr, ptr %276, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %280

279:                                              ; preds = %274
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %309

280:                                              ; preds = %274
  %281 = load ptr, ptr %277, align 4
  %282 = load i32, ptr %281, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %283 = getelementptr inbounds %struct.ieee80211_hw, ptr %275, i32 0, i32 1
  %284 = load ptr, ptr %283, align 8
  %285 = getelementptr %struct.wiphy, ptr %284, i32 0, i32 53, i32 %282
  %286 = load ptr, ptr %285, align 4
  %287 = icmp eq ptr %286, null
  br i1 %287, label %309, label %288

288:                                              ; preds = %280
  %289 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %286, i32 0, i32 5
  %290 = load i16, ptr %289, align 4
  %291 = lshr i16 %290, 2
  %292 = and i16 %291, 3
  %293 = zext i16 %292 to i32
  switch i32 %293, label %300 [
    i32 0, label %294
    i32 1, label %296
    i32 3, label %298
  ]

294:                                              ; preds = %288
  %295 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 40
  store i32 1, ptr %295, align 64
  br label %301

296:                                              ; preds = %288
  %297 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 40
  store i32 2, ptr %297, align 64
  br label %301

298:                                              ; preds = %288
  %299 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 40
  store i32 3, ptr %299, align 64
  br label %301

300:                                              ; preds = %288
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 9, ptr noundef null) #17
  br label %301

301:                                              ; preds = %300, %298, %296, %294, %268
  %302 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 46, i32 24
  store i16 4095, ptr %302, align 4
  %303 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 42
  %304 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 42, i32 1
  store i32 2147483647, ptr %304, align 4
  store i32 19531, ptr %303, align 8
  %305 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 42, i32 2
  store i32 97656, ptr %305, align 16
  %306 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 42, i32 4
  store i8 1, ptr %306, align 8
  %307 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 42, i32 5
  store i8 0, ptr %307, align 1
  %308 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 42, i32 6
  store i8 0, ptr %308, align 2
  br label %318

309:                                              ; preds = %280, %279, %106
  %310 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 46, i32 28
  %311 = load ptr, ptr %310, align 8
  %312 = icmp eq ptr %311, null
  br i1 %312, label %315, label %313

313:                                              ; preds = %309
  %314 = getelementptr i8, ptr %311, i32 -164
  tail call void @kfree(ptr noundef %314) #17
  br label %315

315:                                              ; preds = %313, %309, %66, %59, %18
  %316 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 16
  %317 = load ptr, ptr %316, align 4
  tail call void @free_percpu(ptr noundef %317) #17
  tail call void @kfree(ptr noundef nonnull %10) #17
  br label %318

318:                                              ; preds = %315, %301, %3
  %319 = phi ptr [ null, %315 ], [ %10, %301 ], [ null, %3 ]
  ret ptr %319
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sta_deliver_ps_frames(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -128
  %3 = getelementptr i8, ptr %0, i32 18
  %4 = load i8, ptr %3, align 2, !range !14
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #17
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = add i32 %9, 512
  store volatile i32 %10, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !15
  %11 = getelementptr i8, ptr %0, i32 28
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  tail call void @ieee80211_sta_ps_deliver_wakeup(ptr noundef %2)
  br label %43

16:                                               ; preds = %6
  %17 = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %11) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr i8, ptr %0, i32 1957
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 15
  %23 = select i1 %22, i8 0, i8 %21
  tail call fastcc void @ieee80211_sta_ps_deliver_response(ptr noundef %2, i32 noundef 1, i8 noundef zeroext %23, i32 noundef 0) #17
  br label %43

24:                                               ; preds = %16
  %25 = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %11) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %24
  %28 = getelementptr i8, ptr %0, i32 1957
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %0, i32 1958
  %33 = load i8, ptr %32, align 2
  %34 = zext i8 %33 to i32
  %35 = icmp ult i8 %33, 4
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = sext i8 %33 to i32
  %38 = getelementptr inbounds [4 x i32], ptr @switch.table.ieee80211_sta_ps_deliver_uapsd, i32 0, i32 %37
  %39 = load i32, ptr %38, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i32 [ %34, %31 ], [ %39, %36 ]
  %42 = xor i8 %29, -1
  tail call fastcc void @ieee80211_sta_ps_deliver_response(ptr noundef %2, i32 noundef %41, i8 noundef zeroext %42, i32 noundef 1) #17
  br label %43

43:                                               ; preds = %40, %27, %24, %19, %15
  tail call fastcc void @local_bh_enable()
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ba_session_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_init_frag_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_txq_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sta_info_insert_rcu(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %4) #17
  %5 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 9
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %52, label %11, !prof !13

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 1
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 58, i32 2
  %14 = load i32, ptr %12, align 4
  %15 = load i32, ptr %13, align 4
  %16 = xor i32 %15, %14
  %17 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 46, i32 1, i32 4
  %18 = load i16, ptr %17, align 2
  %19 = getelementptr %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 58, i32 2, i32 4
  %20 = load i16, ptr %19, align 2
  %21 = xor i16 %20, %18
  %22 = zext i16 %21 to i32
  %23 = or i32 %16, %22
  %24 = icmp eq i32 %23, 0
  %25 = and i32 %14, 1
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %24, i1 true, i1 %26
  %28 = zext i16 %18 to i32
  %29 = or i32 %14, %28
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %27, i1 true, i1 %30
  br i1 %31, label %32, label %33, !prof !16

32:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 549, i32 noundef 9, ptr noundef null) #17
  br label %52

33:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr %struct.ieee80211_hw, ptr %35, i32 0, i32 4, i32 1
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 4
  %42 = tail call ptr @sta_info_hash_lookup(ptr noundef %35, ptr noundef %41) #17
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %42, i32 124
  %46 = load i8, ptr %45, align 4, !range !14
  %47 = icmp eq i8 %46, 0
  %48 = getelementptr i8, ptr %42, i32 1928
  %49 = icmp eq ptr %48, null
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %52

52:                                               ; preds = %51, %32, %1
  %53 = phi i32 [ -100, %1 ], [ -76, %51 ], [ -22, %32 ]
  tail call void @sta_info_free(ptr undef, ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %4) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  br label %401

54:                                               ; preds = %44, %40, %33
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %55 = load ptr, ptr %2, align 8
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %56, i32 0, i32 7
  %58 = load ptr, ptr %57, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %59 = tail call ptr @sta_info_hash_lookup(ptr noundef %58, ptr noundef %12) #17
  %60 = icmp eq ptr %59, null
  br i1 %60, label %79, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %56, i32 0, i32 49
  br label %63

63:                                               ; preds = %75, %61
  %64 = phi ptr [ %59, %61 ], [ %77, %75 ]
  %65 = getelementptr i8, ptr %64, i32 20
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %56
  br i1 %67, label %80, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %66, i32 0, i32 49
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %62, align 4
  %74 = icmp eq ptr %70, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %72, %68
  %76 = getelementptr inbounds %struct.rhlist_head, ptr %64, i32 0, i32 1
  %77 = load volatile ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %63

79:                                               ; preds = %75, %54
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %83

80:                                               ; preds = %72, %63
  %81 = getelementptr i8, ptr %64, i32 -24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %397

83:                                               ; preds = %80, %79
  %84 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %85 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %84, i32 noundef 3520, i32 noundef 208) #19
  %86 = icmp eq ptr %85, null
  br i1 %86, label %397, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.ieee80211_local, ptr %55, i32 0, i32 48
  %89 = load i32, ptr %88, align 8
  %90 = add i32 %89, 1
  store i32 %90, ptr %88, align 8
  %91 = getelementptr inbounds %struct.ieee80211_local, ptr %55, i32 0, i32 52
  %92 = load i32, ptr %91, align 8
  %93 = add i32 %92, 1
  store i32 %93, ptr %91, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %94 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 8, ptr noundef %94) #17
  %95 = getelementptr inbounds %struct.ieee80211_local, ptr %55, i32 0, i32 50
  %96 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 3
  %97 = getelementptr inbounds %struct.ieee80211_local, ptr %55, i32 0, i32 50, i32 0, i32 3, i32 3
  %98 = load i16, ptr %97, align 2
  %99 = zext i16 %98 to i32
  %100 = sub nsw i32 0, %99
  %101 = getelementptr i8, ptr %96, i32 %100
  %102 = getelementptr i8, ptr %101, i32 32
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %103 = load volatile ptr, ptr %95, align 4
  %104 = load i16, ptr %97, align 2
  %105 = zext i16 %104 to i32
  %106 = sub nsw i32 0, %105
  %107 = getelementptr i8, ptr %96, i32 %106
  %108 = getelementptr i8, ptr %107, i32 32
  %109 = getelementptr inbounds %struct.bucket_table, ptr %103, i32 0, i32 2
  %110 = load i32, ptr %109, align 8
  %111 = add i32 %110, -559038731
  %112 = getelementptr i8, ptr %108, i32 5
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl nuw nsw i32 %114, 8
  %116 = add i32 %115, %111
  %117 = getelementptr i8, ptr %108, i32 4
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = add i32 %116, %119
  %121 = getelementptr i8, ptr %108, i32 3
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = shl nuw i32 %123, 24
  %125 = add i32 %124, %111
  %126 = getelementptr i8, ptr %108, i32 2
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  %129 = shl nuw nsw i32 %128, 16
  %130 = add i32 %125, %129
  %131 = getelementptr i8, ptr %108, i32 1
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = shl nuw nsw i32 %133, 8
  %135 = add i32 %130, %134
  %136 = load i8, ptr %108, align 1
  %137 = zext i8 %136 to i32
  %138 = add i32 %135, %137
  %139 = xor i32 %120, %111
  %140 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 14) #17
  %141 = sub i32 %139, %140
  %142 = xor i32 %138, %141
  %143 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 11) #17
  %144 = sub i32 %142, %143
  %145 = xor i32 %144, %120
  %146 = tail call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 25) #17
  %147 = sub i32 %145, %146
  %148 = xor i32 %147, %141
  %149 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 16) #17
  %150 = sub i32 %148, %149
  %151 = xor i32 %150, %144
  %152 = tail call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 4) #17
  %153 = sub i32 %151, %152
  %154 = xor i32 %153, %147
  %155 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 14) #17
  %156 = sub i32 %154, %155
  %157 = xor i32 %156, %150
  %158 = tail call i32 @llvm.fshl.i32(i32 %156, i32 %156, i32 24) #17
  %159 = sub i32 %157, %158
  %160 = load i32, ptr %103, align 64
  %161 = add i32 %160, -1
  %162 = and i32 %159, %161
  %163 = getelementptr inbounds %struct.bucket_table, ptr %103, i32 0, i32 1
  %164 = load i32, ptr %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %168, label %166, !prof !8

166:                                              ; preds = %87
  %167 = tail call ptr @rht_bucket_nested_insert(ptr noundef %95, ptr noundef %103, i32 noundef %162) #17
  br label %170

168:                                              ; preds = %87
  %169 = getelementptr %struct.bucket_table, ptr %103, i32 0, i32 8, i32 %162
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi ptr [ %167, %166 ], [ %169, %168 ]
  %172 = icmp eq ptr %171, null
  br i1 %172, label %289, label %173

173:                                              ; preds = %170
  %174 = tail call ptr @llvm.thread.pointer() #17
  %175 = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 1
  %176 = load volatile i32, ptr %175, align 4
  %177 = add i32 %176, 512
  store volatile i32 %177, ptr %175, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !18
  br label %178

178:                                              ; preds = %192, %173
  %179 = load volatile i32, ptr %171, align 4
  %180 = and i32 %179, 1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %187, !prof !19

182:                                              ; preds = %178
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %171) #17, !srcloc !20
  %183 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %171, ptr %171, i32 1, ptr elementtype(i32) %171) #17, !srcloc !21
  %184 = extractvalue { i32, i32, i32 } %183, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %185 = and i32 %184, 1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %193, label %187, !prof !8

187:                                              ; preds = %182, %178
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  br label %188

188:                                              ; preds = %188, %187
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !25
  %189 = load volatile i32, ptr %171, align 4
  %190 = and i32 %189, 1
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %188

192:                                              ; preds = %188
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !26
  br label %178

193:                                              ; preds = %182
  %194 = getelementptr inbounds %struct.bucket_table, ptr %103, i32 0, i32 5
  %195 = load volatile ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %200, label %197, !prof !8

197:                                              ; preds = %260, %248, %193
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %171) #17, !srcloc !20
  %198 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %171, ptr %171, i32 1, ptr elementtype(i32) %171) #17, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !29
  tail call fastcc void @local_bh_enable() #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %199 = tail call ptr @rhashtable_insert_slow(ptr noundef %95, ptr noundef %102, ptr noundef %96) #17
  br label %293

200:                                              ; preds = %193
  %201 = load ptr, ptr %171, align 4
  %202 = ptrtoint ptr %201 to i32
  %203 = and i32 %202, -2
  %204 = icmp eq i32 %203, 0
  %205 = ptrtoint ptr %171 to i32
  %206 = or i32 %205, 1
  %207 = select i1 %204, i32 %206, i32 %203
  %208 = and i32 %207, 1
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %250

210:                                              ; preds = %200
  %211 = inttoptr i32 %207 to ptr
  %212 = icmp eq ptr %102, null
  %213 = getelementptr inbounds %struct.ieee80211_local, ptr %55, i32 0, i32 50, i32 0, i32 3, i32 2
  %214 = getelementptr inbounds %struct.ieee80211_local, ptr %55, i32 0, i32 50, i32 0, i32 3, i32 1
  br label %215

215:                                              ; preds = %243, %210
  %216 = phi ptr [ null, %210 ], [ %217, %243 ]
  %217 = phi ptr [ %211, %210 ], [ %244, %243 ]
  %218 = phi i32 [ 16, %210 ], [ %219, %243 ]
  %219 = add i32 %218, -1
  br i1 %212, label %243, label %220

220:                                              ; preds = %215
  %221 = load i16, ptr %97, align 2
  %222 = zext i16 %221 to i32
  %223 = sub nsw i32 0, %222
  %224 = getelementptr i8, ptr %217, i32 %223
  %225 = load i16, ptr %213, align 4
  %226 = zext i16 %225 to i32
  %227 = getelementptr i8, ptr %224, i32 %226
  %228 = load i16, ptr %214, align 2
  %229 = zext i16 %228 to i32
  %230 = tail call i32 @bcmp(ptr %227, ptr nonnull %102, i32 %229) #17
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %220
  %233 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 3, i32 1
  store volatile ptr %217, ptr %233, align 4
  %234 = load ptr, ptr %217, align 4
  store volatile ptr %234, ptr %96, align 4
  %235 = icmp eq ptr %216, null
  br i1 %235, label %238, label %236

236:                                              ; preds = %232
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !30
  store volatile ptr %96, ptr %216, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %171) #17, !srcloc !20
  %237 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %171, ptr %171, i32 1, ptr elementtype(i32) %171) #17, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !29
  tail call fastcc void @local_bh_enable() #17
  br label %289

238:                                              ; preds = %232
  %239 = ptrtoint ptr %96 to i32
  %240 = and i32 %239, 1
  %241 = icmp eq i32 %240, 0
  %242 = select i1 %241, ptr %96, ptr null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !31
  store volatile ptr %242, ptr %171, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !32
  tail call fastcc void @local_bh_enable() #17
  br label %289

243:                                              ; preds = %220, %215
  %244 = load ptr, ptr %217, align 4
  %245 = ptrtoint ptr %244 to i32
  %246 = and i32 %245, 1
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %215, label %248

248:                                              ; preds = %243
  %249 = icmp slt i32 %219, 1
  br i1 %249, label %197, label %250

250:                                              ; preds = %248, %200
  %251 = getelementptr inbounds %struct.ieee80211_local, ptr %55, i32 0, i32 50, i32 0, i32 8
  %252 = load volatile i32, ptr %251, align 4
  %253 = getelementptr inbounds %struct.ieee80211_local, ptr %55, i32 0, i32 50, i32 0, i32 2
  %254 = load i32, ptr %253, align 4
  %255 = icmp ult i32 %252, %254
  br i1 %255, label %256, label %291, !prof !8

256:                                              ; preds = %250
  %257 = load volatile i32, ptr %251, align 4
  %258 = load i32, ptr %103, align 64
  %259 = icmp ugt i32 %257, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.ieee80211_local, ptr %55, i32 0, i32 50, i32 0, i32 3, i32 4
  %262 = load i32, ptr %261, align 4
  %263 = icmp eq i32 %262, 0
  %264 = icmp ult i32 %258, %262
  %265 = select i1 %263, i1 true, i1 %264
  br i1 %265, label %197, label %266, !prof !13

266:                                              ; preds = %260, %256
  %267 = inttoptr i32 %207 to ptr
  store volatile ptr %267, ptr %96, align 4
  %268 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 3, i32 1
  store volatile ptr null, ptr %268, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %251) #17, !srcloc !20
  %269 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %251, ptr %251, i32 1, ptr elementtype(i32) %251) #17, !srcloc !33
  %270 = ptrtoint ptr %96 to i32
  %271 = and i32 %270, 1
  %272 = icmp eq i32 %271, 0
  %273 = select i1 %272, ptr %96, ptr null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !31
  store volatile ptr %273, ptr %171, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !32
  tail call fastcc void @local_bh_enable() #17
  %274 = load volatile i32, ptr %251, align 4
  %275 = load i32, ptr %103, align 64
  %276 = lshr i32 %275, 2
  %277 = mul nuw i32 %276, 3
  %278 = icmp ugt i32 %274, %277
  br i1 %278, label %279, label %289

279:                                              ; preds = %266
  %280 = getelementptr inbounds %struct.ieee80211_local, ptr %55, i32 0, i32 50, i32 0, i32 3, i32 4
  %281 = load i32, ptr %280, align 4
  %282 = icmp eq i32 %281, 0
  %283 = icmp ult i32 %275, %281
  %284 = select i1 %282, i1 true, i1 %283
  br i1 %284, label %285, label %289

285:                                              ; preds = %279
  %286 = getelementptr inbounds %struct.ieee80211_local, ptr %55, i32 0, i32 50, i32 0, i32 5
  %287 = load ptr, ptr @system_wq, align 4
  %288 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %287, ptr noundef %286) #17
  br label %289

289:                                              ; preds = %291, %285, %279, %266, %238, %236, %170
  %290 = phi ptr [ inttoptr (i32 -7 to ptr), %291 ], [ inttoptr (i32 -12 to ptr), %170 ], [ null, %285 ], [ null, %279 ], [ null, %238 ], [ null, %236 ], [ null, %266 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %293

291:                                              ; preds = %250
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %171) #17, !srcloc !20
  %292 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %171, ptr %171, i32 1, ptr elementtype(i32) %171) #17, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !29
  tail call fastcc void @local_bh_enable() #17
  br label %289

293:                                              ; preds = %289, %197
  %294 = phi ptr [ %199, %197 ], [ %290, %289 ]
  %295 = ptrtoint ptr %294 to i32
  %296 = icmp eq ptr %294, null
  br i1 %296, label %297, label %393

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.ieee80211_local, ptr %55, i32 0, i32 49
  %299 = getelementptr inbounds %struct.ieee80211_local, ptr %55, i32 0, i32 49, i32 1
  %300 = load ptr, ptr %299, align 4
  store ptr %298, ptr %0, align 4
  %301 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %300, ptr %301, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !34
  store volatile ptr %0, ptr %300, align 4
  store ptr %0, ptr %299, align 4
  %302 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 22
  %303 = load i32, ptr %302, align 8
  %304 = icmp ugt i32 %303, 2
  br i1 %304, label %305, label %345

305:                                              ; preds = %297
  %306 = load ptr, ptr %5, align 4
  tail call void @ieee80211_recalc_min_chandef(ptr noundef %306) #17
  %307 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 22
  %308 = load i8, ptr %307, align 2, !range !14
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %310, label %345

310:                                              ; preds = %305
  %311 = load ptr, ptr %5, align 4
  %312 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %311, i32 0, i32 7
  %313 = load ptr, ptr %312, align 4
  %314 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %311, i32 0, i32 58, i32 3
  %315 = load i8, ptr %314, align 2, !range !14
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %316 = getelementptr inbounds %struct.ieee80211_local, ptr %313, i32 0, i32 49
  %317 = load volatile ptr, ptr %316, align 4
  %318 = icmp eq ptr %317, %316
  br i1 %318, label %336, label %319

319:                                              ; preds = %333, %310
  %320 = phi ptr [ %334, %333 ], [ %317, %310 ]
  %321 = getelementptr inbounds %struct.sta_info, ptr %320, i32 0, i32 6
  %322 = load ptr, ptr %321, align 4
  %323 = icmp eq ptr %322, %311
  br i1 %323, label %324, label %333

324:                                              ; preds = %319
  %325 = getelementptr inbounds %struct.sta_info, ptr %320, i32 0, i32 23
  %326 = load volatile i32, ptr %325, align 4
  %327 = and i32 %326, 2
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %333, label %329

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.sta_info, ptr %320, i32 0, i32 46, i32 22
  %331 = load i8, ptr %330, align 2, !range !14
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %338, label %333

333:                                              ; preds = %329, %324, %319
  %334 = load volatile ptr, ptr %320, align 4
  %335 = icmp eq ptr %334, %316
  br i1 %335, label %336, label %319

336:                                              ; preds = %333, %310
  %337 = icmp ne i8 %315, 0
  br label %338

338:                                              ; preds = %336, %329
  %339 = phi i1 [ %337, %336 ], [ false, %329 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %340 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %311, i32 0, i32 58, i32 1, i32 45
  %341 = load i8, ptr %340, align 2, !range !14
  %342 = zext i1 %339 to i8
  %343 = icmp eq i8 %341, %342
  br i1 %343, label %345, label %344

344:                                              ; preds = %338
  store i8 %342, ptr %340, align 2
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %311, i32 noundef 524288) #17
  br label %345

345:                                              ; preds = %344, %338, %305, %297
  br label %346

346:                                              ; preds = %350, %345
  %347 = phi i32 [ %351, %350 ], [ 0, %345 ]
  %348 = load i32, ptr %302, align 8
  %349 = icmp ult i32 %347, %348
  br i1 %349, label %350, label %354

350:                                              ; preds = %346
  %351 = add nuw i32 %347, 1
  %352 = tail call i32 @drv_sta_state(ptr noundef %55, ptr noundef %56, ptr noundef %0, i32 noundef %347, i32 noundef %351) #17
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %346, label %362

354:                                              ; preds = %346
  %355 = getelementptr inbounds %struct.ieee80211_local, ptr %55, i32 0, i32 8
  %356 = load ptr, ptr %355, align 4
  %357 = getelementptr inbounds %struct.ieee80211_ops, ptr %356, i32 0, i32 31
  %358 = load ptr, ptr %357, align 4
  %359 = icmp eq ptr %358, null
  br i1 %359, label %360, label %382

360:                                              ; preds = %354
  %361 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 21
  store i8 1, ptr %361, align 4
  br label %382

362:                                              ; preds = %350
  %363 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %56, i32 0, i32 58
  %364 = load i32, ptr %363, align 8
  %365 = icmp eq i32 %364, 1
  br i1 %365, label %366, label %369

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %56, i32 0, i32 10
  %368 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %367, ptr noundef %12, i32 noundef %351, i32 noundef %352) #20
  br label %369

369:                                              ; preds = %366, %362
  %370 = phi i32 [ 0, %366 ], [ %352, %362 ]
  %371 = icmp eq i32 %347, 0
  br i1 %371, label %380, label %372

372:                                              ; preds = %378, %369
  %373 = phi i32 [ %374, %378 ], [ %347, %369 ]
  %374 = add i32 %373, -1
  %375 = tail call i32 @drv_sta_state(ptr noundef %55, ptr noundef %56, ptr noundef %0, i32 noundef %373, i32 noundef %374) #17
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %378, label %377, !prof !8

377:                                              ; preds = %372
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 600, i32 noundef 9, ptr noundef null) #17
  br label %378

378:                                              ; preds = %377, %372
  %379 = icmp eq i32 %374, 0
  br i1 %379, label %380, label %372

380:                                              ; preds = %378, %369
  %381 = icmp eq i32 %370, 0
  br i1 %381, label %382, label %388

382:                                              ; preds = %380, %360, %354
  tail call void @_set_bit(i32 noundef 20, ptr noundef %94) #17
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %94) #17
  %383 = load i32, ptr %91, align 8
  %384 = getelementptr inbounds %struct.station_info, ptr %85, i32 0, i32 23
  store i32 %383, ptr %384, align 4
  %385 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %56, i32 0, i32 6
  %386 = load ptr, ptr %385, align 8
  tail call void @cfg80211_new_sta(ptr noundef %386, ptr noundef %12, ptr noundef nonnull %85, i32 noundef 3264) #17
  tail call void @kfree(ptr noundef nonnull %85) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %387 = getelementptr inbounds %struct.ieee80211_local, ptr %55, i32 0, i32 46
  tail call void @mutex_unlock(ptr noundef %387) #17
  br label %401

388:                                              ; preds = %380
  %389 = tail call fastcc i32 @sta_info_hash_del(ptr noundef %55, ptr noundef %0) #17
  %390 = load ptr, ptr %301, align 4
  %391 = load ptr, ptr %0, align 4
  %392 = getelementptr inbounds %struct.list_head, ptr %391, i32 0, i32 1
  store ptr %390, ptr %392, align 4
  store volatile ptr %391, ptr %390, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %301, align 4
  br label %393

393:                                              ; preds = %388, %293
  %394 = phi i32 [ %295, %293 ], [ %370, %388 ]
  %395 = load i32, ptr %88, align 8
  %396 = add i32 %395, -1
  store i32 %396, ptr %88, align 8
  tail call void @synchronize_net() #17
  br label %397

397:                                              ; preds = %393, %83, %80
  %398 = phi ptr [ %85, %393 ], [ null, %80 ], [ null, %83 ]
  %399 = phi i32 [ %394, %393 ], [ -17, %80 ], [ -12, %83 ]
  tail call fastcc void @cleanup_single_sta(ptr noundef %0) #17
  %400 = getelementptr inbounds %struct.ieee80211_local, ptr %55, i32 0, i32 46
  tail call void @mutex_unlock(ptr noundef %400) #17
  tail call void @kfree(ptr noundef %398) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  br label %401

401:                                              ; preds = %397, %382, %52
  %402 = phi i32 [ %53, %52 ], [ %399, %397 ], [ 0, %382 ]
  ret i32 %402
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sta_info_insert(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @sta_info_insert_rcu(ptr noundef %0)
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sta_info_recalc_tim(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @__sta_info_recalc_tim(ptr noundef %0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__sta_info_recalc_tim(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  %6 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 11
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 2
  %9 = load i16, ptr %8, align 2
  %10 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %11, i32 0, i32 58
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, -3
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %222

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %11, i32 0, i32 49
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = load i1, ptr @__sta_info_recalc_tim.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !13

23:                                               ; preds = %16
  store i1 true, ptr @__sta_info_recalc_tim.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 805, i32 noundef 9, ptr noundef null) #17
  br label %24

24:                                               ; preds = %23, %16
  br i1 %19, label %222, label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %26, i32 0, i32 49
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ieee80211_if_ap, ptr %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 4
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 1048576
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ieee80211_ops, ptr %36, i32 0, i32 16
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %222, label %40

40:                                               ; preds = %34, %25
  %41 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 19
  %42 = load i8, ptr %41, align 2, !range !14
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %144

44:                                               ; preds = %40
  %45 = icmp eq i8 %7, 15
  %46 = select i1 %45, i8 0, i8 %7
  %47 = zext i8 %46 to i32
  %48 = select i1 %1, i32 15, i32 %47
  %49 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 27
  %50 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 28
  %51 = load i8, ptr @ieee80211_ac_to_qos_mask, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %48, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %44
  %56 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 26, i32 0
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %59, label %144

59:                                               ; preds = %55
  %60 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 0
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %63, label %144

63:                                               ; preds = %59
  %64 = load i32, ptr %49, align 4
  %65 = and i32 %64, 192
  %66 = icmp ne i32 %65, 0
  %67 = load i32, ptr %50, align 8
  %68 = and i32 %67, 192
  %69 = zext i1 %66 to i32
  %70 = or i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %63, %44
  %73 = phi i1 [ %71, %63 ], [ false, %44 ]
  %74 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 1), align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %48, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %72
  %79 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 26, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %79
  br i1 %81, label %82, label %144

82:                                               ; preds = %78
  %83 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = icmp ne ptr %84, %83
  %86 = or i1 %73, %85
  br i1 %86, label %144, label %87

87:                                               ; preds = %82
  %88 = load i32, ptr %49, align 4
  %89 = and i32 %88, 48
  %90 = icmp ne i32 %89, 0
  %91 = load i32, ptr %50, align 8
  %92 = and i32 %91, 48
  %93 = zext i1 %90 to i32
  %94 = or i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br label %96

96:                                               ; preds = %87, %72
  %97 = phi i1 [ %95, %87 ], [ %73, %72 ]
  %98 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 2), align 1
  %99 = zext i8 %98 to i32
  %100 = and i32 %48, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %96
  %103 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 26, i32 2
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, %103
  br i1 %105, label %106, label %144

106:                                              ; preds = %102
  %107 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = icmp ne ptr %108, %107
  %110 = or i1 %97, %109
  br i1 %110, label %144, label %111

111:                                              ; preds = %106
  %112 = load i32, ptr %49, align 4
  %113 = and i32 %112, 9
  %114 = icmp ne i32 %113, 0
  %115 = load i32, ptr %50, align 8
  %116 = and i32 %115, 9
  %117 = zext i1 %114 to i32
  %118 = or i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br label %120

120:                                              ; preds = %111, %96
  %121 = phi i1 [ %119, %111 ], [ %97, %96 ]
  %122 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 3), align 1
  %123 = zext i8 %122 to i32
  %124 = and i32 %48, %123
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %120
  %127 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 26, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, %127
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 3
  %132 = load ptr, ptr %131, align 4
  %133 = icmp ne ptr %132, %131
  %134 = or i1 %121, %133
  br i1 %134, label %144, label %135

135:                                              ; preds = %130
  %136 = load i32, ptr %49, align 4
  %137 = and i32 %136, 6
  %138 = icmp ne i32 %137, 0
  %139 = load i32, ptr %50, align 8
  %140 = and i32 %139, 6
  %141 = zext i1 %138 to i32
  %142 = or i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br label %144

144:                                              ; preds = %135, %130, %126, %120, %106, %102, %82, %78, %59, %55, %40
  %145 = phi i1 [ false, %40 ], [ true, %59 ], [ true, %55 ], [ true, %78 ], [ true, %82 ], [ true, %102 ], [ true, %106 ], [ true, %126 ], [ true, %130 ], [ %143, %135 ], [ %121, %120 ]
  %146 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 47
  tail call void @_raw_spin_lock_bh(ptr noundef %146) #17
  %147 = zext i16 %9 to i32
  %148 = lshr i32 %147, 3
  %149 = getelementptr i8, ptr %29, i32 %148
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  %152 = and i32 %147, 7
  %153 = shl nuw nsw i32 1, %152
  %154 = and i32 %153, %151
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %145, %155
  br i1 %156, label %157, label %221

157:                                              ; preds = %144
  %158 = and i16 %9, 7
  %159 = shl nuw nsw i16 1, %158
  %160 = lshr i16 %9, 3
  %161 = zext i16 %160 to i32
  %162 = getelementptr i8, ptr %29, i32 %161
  %163 = load i8, ptr %162, align 1
  %164 = trunc i16 %159 to i8
  %165 = xor i8 %164, -1
  %166 = and i8 %163, %165
  %167 = or i8 %163, %164
  %168 = select i1 %145, i8 %167, i8 %166
  store i8 %168, ptr %162, align 1
  %169 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 8
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.ieee80211_ops, ptr %170, i32 0, i32 16
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %221, label %174

174:                                              ; preds = %157
  %175 = load i8, ptr %41, align 2, !range !14
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %178, label %177, !prof !8

177:                                              ; preds = %174
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 866, i32 noundef 9, ptr noundef null) #17
  br label %221

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 30
  store i8 1, ptr %179, align 4
  %180 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_set_tim, i32 0, i32 1), align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %178
  %183 = tail call ptr @llvm.thread.pointer() #17
  %184 = getelementptr inbounds %struct.thread_info, ptr %183, i32 0, i32 2
  %185 = load i32, ptr %184, align 8
  %186 = lshr i32 %185, 5
  %187 = getelementptr i32, ptr @__cpu_online_mask, i32 %186
  %188 = load volatile i32, ptr %187, align 4
  %189 = and i32 %185, 31
  %190 = shl nuw i32 1, %189
  %191 = and i32 %190, %188
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %182
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !35
  %194 = tail call i32 @__traceiter_drv_set_tim(ptr noundef null, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %145) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !36
  %195 = load ptr, ptr %169, align 4
  br label %196

196:                                              ; preds = %193, %182, %178
  %197 = phi ptr [ %195, %193 ], [ %170, %182 ], [ %170, %178 ]
  %198 = getelementptr inbounds %struct.ieee80211_ops, ptr %197, i32 0, i32 16
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %203, label %201

201:                                              ; preds = %196
  %202 = tail call i32 %199(ptr noundef %4, ptr noundef %5, i1 noundef zeroext %145) #17
  br label %203

203:                                              ; preds = %201, %196
  %204 = phi i32 [ %202, %201 ], [ 0, %196 ]
  %205 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %220

207:                                              ; preds = %203
  %208 = tail call ptr @llvm.thread.pointer() #17
  %209 = getelementptr inbounds %struct.thread_info, ptr %208, i32 0, i32 2
  %210 = load i32, ptr %209, align 8
  %211 = lshr i32 %210, 5
  %212 = getelementptr i32, ptr @__cpu_online_mask, i32 %211
  %213 = load volatile i32, ptr %212, align 4
  %214 = and i32 %210, 31
  %215 = shl nuw i32 1, %214
  %216 = and i32 %215, %213
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %207
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  %219 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %4, i32 noundef %204) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !38
  br label %220

220:                                              ; preds = %218, %207, %203
  store i8 0, ptr %179, align 4
  br label %221

221:                                              ; preds = %220, %177, %157, %144
  tail call void @_raw_spin_unlock_bh(ptr noundef %146) #17
  br label %222

222:                                              ; preds = %221, %34, %24, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sta_info_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @__sta_info_destroy_part1(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @synchronize_net() #17
  tail call fastcc void @__sta_info_destroy_part2(ptr noundef %0)
  br label %5

5:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__sta_info_destroy_part1(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %198, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 8, ptr noundef %8) #17
  tail call void @ieee80211_sta_tear_down_BA_sessions(ptr noundef nonnull %0, i32 noundef 3) #17
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ieee80211_ops, ptr %10, i32 0, i32 90
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %52, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sync_rx_queues, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = tail call ptr @llvm.thread.pointer() #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !39
  %31 = tail call i32 @__traceiter_drv_sync_rx_queues(ptr noundef null, ptr noundef %5, ptr noundef %15, ptr noundef %16) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !40
  %32 = load ptr, ptr %9, align 4
  %33 = getelementptr inbounds %struct.ieee80211_ops, ptr %32, i32 0, i32 90
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %30, %19, %14
  %36 = phi ptr [ %12, %14 ], [ %12, %19 ], [ %34, %30 ]
  tail call void %36(ptr noundef %5) #17
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = tail call ptr @llvm.thread.pointer() #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !41
  %51 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %5) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !42
  br label %52

52:                                               ; preds = %50, %39, %35, %3
  %53 = tail call fastcc i32 @sta_info_hash_del(ptr noundef %5, ptr noundef nonnull %0)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55, !prof !8

55:                                               ; preds = %52
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1030, i32 noundef 9, ptr noundef null) #17
  br label %198

56:                                               ; preds = %52
  %57 = load volatile i32, ptr %8, align 4
  %58 = and i32 %57, 32768
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %119, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 8
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 32
  %65 = icmp eq i32 %64, 0
  %66 = load i1, ptr @drv_tdls_cancel_channel_switch.__already_done, align 1
  %67 = xor i1 %66, true
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %69, label %75, !prof !13

69:                                               ; preds = %60
  store i1 true, ptr @drv_tdls_cancel_channel_switch.__already_done, align 1
  %70 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 6
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, null
  %73 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 10
  %74 = select i1 %72, ptr %73, ptr %71
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1194, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %74, i32 noundef %63) #17
  br label %75

75:                                               ; preds = %69, %60
  br i1 %65, label %118, label %76

76:                                               ; preds = %75
  %77 = load ptr, ptr %9, align 4
  %78 = getelementptr inbounds %struct.ieee80211_ops, ptr %77, i32 0, i32 87
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %118, label %81

81:                                               ; preds = %76
  %82 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tdls_cancel_channel_switch, i32 0, i32 1), align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %81
  %85 = tail call ptr @llvm.thread.pointer() #17
  %86 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %87 = load i32, ptr %86, align 8
  %88 = lshr i32 %87, 5
  %89 = getelementptr i32, ptr @__cpu_online_mask, i32 %88
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %87, 31
  %92 = shl nuw i32 1, %91
  %93 = and i32 %92, %90
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %84
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !43
  %96 = tail call i32 @__traceiter_drv_tdls_cancel_channel_switch(ptr noundef null, ptr noundef %5, ptr noundef %7, ptr noundef %61) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !44
  %97 = load ptr, ptr %9, align 4
  %98 = getelementptr inbounds %struct.ieee80211_ops, ptr %97, i32 0, i32 87
  %99 = load ptr, ptr %98, align 4
  br label %100

100:                                              ; preds = %95, %84, %81
  %101 = phi ptr [ %79, %81 ], [ %79, %84 ], [ %99, %95 ]
  %102 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 58
  tail call void %101(ptr noundef %5, ptr noundef %102, ptr noundef %61) #17
  %103 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %100
  %106 = tail call ptr @llvm.thread.pointer() #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !41
  %117 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %5) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !42
  br label %118

118:                                              ; preds = %116, %105, %100, %76, %75
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %8) #17
  br label %119

119:                                              ; preds = %118, %56
  %120 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %0, align 4
  %123 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  store ptr %121, ptr %123, align 4
  store volatile ptr %122, ptr %121, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %120, align 4
  %124 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 20
  store i8 1, ptr %124, align 1
  %125 = load ptr, ptr %6, align 4
  %126 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %125, i32 0, i32 58
  %127 = load i32, ptr %126, align 8
  %128 = icmp eq i32 %127, 4
  br i1 %128, label %129, label %133

129:                                              ; preds = %119
  %130 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %125, i32 0, i32 49
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr i8, ptr %131, i32 -1408
  br label %133

133:                                              ; preds = %129, %119
  %134 = phi ptr [ %132, %129 ], [ %125, %119 ]
  %135 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %134, i32 0, i32 8
  %136 = load i32, ptr %135, align 8
  %137 = and i32 %136, 32
  %138 = icmp eq i32 %137, 0
  %139 = load i1, ptr @drv_sta_pre_rcu_remove.__already_done, align 1
  %140 = xor i1 %139, true
  %141 = select i1 %138, i1 %140, i1 false
  br i1 %141, label %142, label %148, !prof !13

142:                                              ; preds = %133
  store i1 true, ptr @drv_sta_pre_rcu_remove.__already_done, align 1
  %143 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %134, i32 0, i32 6
  %144 = load ptr, ptr %143, align 8
  %145 = icmp eq ptr %144, null
  %146 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %134, i32 0, i32 10
  %147 = select i1 %145, ptr %146, ptr %144
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 514, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %147, i32 noundef %136) #17
  br label %148

148:                                              ; preds = %142, %133
  br i1 %138, label %189, label %149

149:                                              ; preds = %148
  %150 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  %151 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sta_pre_rcu_remove, i32 0, i32 1), align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %149
  %154 = tail call ptr @llvm.thread.pointer() #17
  %155 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 2
  %156 = load i32, ptr %155, align 8
  %157 = lshr i32 %156, 5
  %158 = getelementptr i32, ptr @__cpu_online_mask, i32 %157
  %159 = load volatile i32, ptr %158, align 4
  %160 = and i32 %156, 31
  %161 = shl nuw i32 1, %160
  %162 = and i32 %161, %159
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %153
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !45
  %165 = tail call i32 @__traceiter_drv_sta_pre_rcu_remove(ptr noundef null, ptr noundef %5, ptr noundef %134, ptr noundef %150) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !46
  br label %166

166:                                              ; preds = %164, %153, %149
  %167 = load ptr, ptr %9, align 4
  %168 = getelementptr inbounds %struct.ieee80211_ops, ptr %167, i32 0, i32 36
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %134, i32 0, i32 58
  tail call void %169(ptr noundef %5, ptr noundef %172, ptr noundef %150) #17
  br label %173

173:                                              ; preds = %171, %166
  %174 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %173
  %177 = tail call ptr @llvm.thread.pointer() #17
  %178 = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 2
  %179 = load i32, ptr %178, align 8
  %180 = lshr i32 %179, 5
  %181 = getelementptr i32, ptr @__cpu_online_mask, i32 %180
  %182 = load volatile i32, ptr %181, align 4
  %183 = and i32 %179, 31
  %184 = shl nuw i32 1, %183
  %185 = and i32 %184, %182
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %176
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !41
  %188 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %5) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !42
  br label %189

189:                                              ; preds = %187, %176, %173, %148
  %190 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 58
  %191 = load i32, ptr %190, align 8
  %192 = icmp eq i32 %191, 4
  br i1 %192, label %193, label %198

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 57, i32 0, i32 0, i32 1
  %195 = load volatile ptr, ptr %194, align 8
  %196 = icmp eq ptr %195, %0
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  store volatile ptr null, ptr %194, align 8
  br label %198

198:                                              ; preds = %197, %193, %189, %55, %1
  %199 = phi i32 [ %53, %55 ], [ -2, %1 ], [ 0, %197 ], [ 0, %193 ], [ 0, %189 ]
  ret i32 %199
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__sta_info_destroy_part2(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = tail call i32 @sta_info_move_state(ptr noundef %0, i32 noundef 3)
  %11 = icmp ne i32 %10, 0
  %12 = load i1, ptr @__sta_info_destroy_part2.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !13

15:                                               ; preds = %9
  store i1 true, ptr @__sta_info_destroy_part2.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1071, i32 noundef 9, ptr noundef null) #17
  br label %16

16:                                               ; preds = %15, %9, %1
  tail call void @ieee80211_free_sta_keys(ptr noundef %3, ptr noundef %0) #17
  tail call fastcc void @__sta_info_recalc_tim(ptr noundef %0, i1 noundef zeroext true)
  %17 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 19
  store i8 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 48
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %19, -1
  store i32 %20, ptr %18, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 52
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 8
  br label %24

24:                                               ; preds = %27, %16
  %25 = load i32, ptr %6, align 8
  %26 = icmp ugt i32 %25, 1
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = add i32 %25, -1
  %29 = tail call i32 @sta_info_move_state(ptr noundef %0, i32 noundef %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %24, label %31

31:                                               ; preds = %27
  %32 = load i1, ptr @__sta_info_destroy_part2.__already_done.12, align 1
  br i1 %32, label %34, label %33, !prof !8

33:                                               ; preds = %31
  store i1 true, ptr @__sta_info_destroy_part2.__already_done.12, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1088, i32 noundef 9, ptr noundef null) #17
  br label %34

34:                                               ; preds = %33, %31, %24
  %35 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 21
  %36 = load i8, ptr %35, align 4, !range !14
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @drv_sta_state(ptr noundef %3, ptr noundef %5, ptr noundef %0, i32 noundef 1, i32 noundef 0) #17
  %40 = icmp ne i32 %39, 0
  %41 = load i1, ptr @__sta_info_destroy_part2.__already_done.13, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %45, !prof !13

44:                                               ; preds = %38
  store i1 true, ptr @__sta_info_destroy_part2.__already_done.13, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1096, i32 noundef 9, ptr noundef null) #17
  br label %45

45:                                               ; preds = %44, %38, %34
  %46 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %47 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 208) #19
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @sta_set_sinfo(ptr noundef %0, ptr noundef nonnull %47, i1 noundef zeroext true)
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 6
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 1
  tail call void @cfg80211_del_sta_sinfo(ptr noundef %52, ptr noundef %53, ptr noundef %47, i32 noundef 3264) #17
  tail call void @kfree(ptr noundef %47) #17
  %54 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 45
  tail call void @ieee80211_destroy_frag_cache(ptr noundef %54) #17
  tail call fastcc void @cleanup_single_sta(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sta_info_destroy_addr(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %5) #17
  %6 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %7 = tail call ptr @sta_info_hash_lookup(ptr noundef %6, ptr noundef %1) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %16, %2
  %10 = phi ptr [ %18, %16 ], [ %7, %2 ]
  %11 = getelementptr i8, ptr %10, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %10, i32 -24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %21

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rhlist_head, ptr %10, i32 0, i32 1
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9

20:                                               ; preds = %16, %2
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %21

21:                                               ; preds = %20, %14
  %22 = phi ptr [ %15, %14 ], [ null, %20 ]
  %23 = tail call fastcc i32 @__sta_info_destroy_part1(ptr noundef %22) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @synchronize_net() #17
  tail call fastcc void @__sta_info_destroy_part2(ptr noundef %22) #17
  br label %26

26:                                               ; preds = %25, %21
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.ieee80211_local, ptr %27, i32 0, i32 46
  tail call void @mutex_unlock(ptr noundef %28) #17
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sta_info_destroy_addr_bss(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %5) #17
  %6 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %7 = tail call ptr @sta_info_hash_lookup(ptr noundef %6, ptr noundef %1) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 49
  br label %11

11:                                               ; preds = %25, %9
  %12 = phi ptr [ %7, %9 ], [ %27, %25 ]
  %13 = getelementptr i8, ptr %12, i32 20
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 49
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %10, align 4
  %22 = icmp eq ptr %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %11
  %24 = getelementptr i8, ptr %12, i32 -24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %30

25:                                               ; preds = %20, %16
  %26 = getelementptr inbounds %struct.rhlist_head, ptr %12, i32 0, i32 1
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %11

29:                                               ; preds = %25, %2
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi ptr [ %24, %23 ], [ null, %29 ]
  %32 = tail call fastcc i32 @__sta_info_destroy_part1(ptr noundef %31) #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void @synchronize_net() #17
  tail call fastcc void @__sta_info_destroy_part2(ptr noundef %31) #17
  br label %35

35:                                               ; preds = %34, %30
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.ieee80211_local, ptr %36, i32 0, i32 46
  tail call void @mutex_unlock(ptr noundef %37) #17
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sta_info_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 50
  %3 = tail call i32 @rhltable_init(ptr noundef %2, ptr noundef nonnull @sta_rht_params) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 47
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 46
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull @sta_info_init.__key) #17
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 49
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 49, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 51
  tail call void @init_timer_key(ptr noundef %10, ptr noundef nonnull @sta_info_cleanup, i32 noundef 0, ptr noundef null, ptr noundef null) #17
  br label %11

11:                                               ; preds = %5, %1
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhltable_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sta_info_cleanup(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1612
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %3 = getelementptr i8, ptr %0, i32 -96
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %126, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 2808
  br label %8

8:                                                ; preds = %119, %6
  %9 = phi ptr [ %4, %6 ], [ %122, %119 ]
  %10 = phi i1 [ false, %6 ], [ %121, %119 ]
  %11 = getelementptr inbounds %struct.sta_info, ptr %9, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %12, i32 0, i32 49
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %119, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.sta_info, ptr %9, i32 0, i32 18
  br label %18

18:                                               ; preds = %114, %16
  %19 = phi i32 [ 0, %16 ], [ %117, %114 ]
  %20 = phi i1 [ false, %16 ], [ %116, %114 ]
  %21 = getelementptr %struct.sta_info, ptr %9, i32 0, i32 26, i32 %19
  %22 = getelementptr %struct.sta_info, ptr %9, i32 0, i32 26, i32 %19, i32 2
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #17
  %24 = load ptr, ptr %21, align 4
  %25 = icmp eq ptr %24, %21
  %26 = icmp eq ptr %24, null
  %27 = or i1 %25, %26
  br i1 %27, label %50, label %28

28:                                               ; preds = %18
  %29 = getelementptr %struct.sta_info, ptr %9, i32 0, i32 26, i32 %19, i32 1
  br label %30

30:                                               ; preds = %61, %28
  %31 = phi ptr [ %24, %28 ], [ %69, %61 ]
  %32 = phi i32 [ %23, %28 ], [ %68, %61 ]
  %33 = load i16, ptr %17, align 8
  %34 = zext i16 %33 to i32
  %35 = load ptr, ptr %11, align 4
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %35, i32 0, i32 58, i32 1, i32 19
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = shl nuw nsw i32 %34, 5
  %40 = mul i32 %39, %38
  %41 = sdiv i32 %40, 15625
  %42 = mul nsw i32 %41, 100
  %43 = tail call i32 @llvm.smax.i32(i32 %42, i32 1000) #17
  %44 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 3, i32 8
  %45 = load i32, ptr %44, align 8
  %46 = load volatile i32, ptr @jiffies, align 64
  %47 = sub i32 %45, %46
  %48 = add i32 %47, %43
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %61, %30, %18
  %51 = phi i32 [ %23, %18 ], [ %68, %61 ], [ %32, %30 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %51) #17
  %52 = getelementptr %struct.sta_info, ptr %9, i32 0, i32 25, i32 %19
  %53 = getelementptr %struct.sta_info, ptr %9, i32 0, i32 25, i32 %19, i32 2
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #17
  %55 = load ptr, ptr %52, align 4
  %56 = icmp eq ptr %55, %52
  %57 = icmp eq ptr %55, null
  %58 = or i1 %56, %57
  br i1 %58, label %107, label %59

59:                                               ; preds = %50
  %60 = getelementptr %struct.sta_info, ptr %9, i32 0, i32 25, i32 %19, i32 1
  br label %73

61:                                               ; preds = %30
  %62 = load i32, ptr %29, align 4
  %63 = add i32 %62, -1
  store volatile i32 %63, ptr %29, align 4
  %64 = load ptr, ptr %31, align 8
  %65 = getelementptr inbounds %struct.anon.46, ptr %31, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  store ptr null, ptr %65, align 4
  store ptr null, ptr %31, align 8
  %67 = getelementptr inbounds %struct.anon.46, ptr %64, i32 0, i32 1
  store volatile ptr %66, ptr %67, align 4
  store volatile ptr %64, ptr %66, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %32) #17
  tail call void @ieee80211_free_txskb(ptr noundef %2, ptr noundef nonnull %31) #17
  %68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #17
  %69 = load ptr, ptr %21, align 4
  %70 = icmp eq ptr %69, %21
  %71 = icmp eq ptr %69, null
  %72 = or i1 %70, %71
  br i1 %72, label %50, label %30

73:                                               ; preds = %93, %59
  %74 = phi ptr [ %55, %59 ], [ %103, %93 ]
  %75 = phi i32 [ %54, %59 ], [ %102, %93 ]
  %76 = load i16, ptr %17, align 8
  %77 = zext i16 %76 to i32
  %78 = load ptr, ptr %11, align 4
  %79 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %78, i32 0, i32 58, i32 1, i32 19
  %80 = load i16, ptr %79, align 2
  %81 = zext i16 %80 to i32
  %82 = shl nuw nsw i32 %77, 5
  %83 = mul i32 %82, %81
  %84 = sdiv i32 %83, 15625
  %85 = mul nsw i32 %84, 100
  %86 = tail call i32 @llvm.smax.i32(i32 %85, i32 1000) #17
  %87 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 3, i32 8
  %88 = load i32, ptr %87, align 8
  %89 = load volatile i32, ptr @jiffies, align 64
  %90 = sub i32 %88, %89
  %91 = add i32 %90, %86
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %73
  %94 = load i32, ptr %60, align 4
  %95 = add i32 %94, -1
  store volatile i32 %95, ptr %60, align 4
  %96 = load ptr, ptr %74, align 8
  %97 = getelementptr inbounds %struct.anon.46, ptr %74, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  store ptr null, ptr %97, align 4
  store ptr null, ptr %74, align 8
  %99 = getelementptr inbounds %struct.anon.46, ptr %96, i32 0, i32 1
  store volatile ptr %98, ptr %99, align 4
  store volatile ptr %96, ptr %98, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %75) #17
  %100 = load i32, ptr %7, align 4
  %101 = add i32 %100, -1
  store i32 %101, ptr %7, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %2, ptr noundef nonnull %74) #17
  %102 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #17
  %103 = load ptr, ptr %52, align 4
  %104 = icmp eq ptr %103, %52
  %105 = icmp eq ptr %103, null
  %106 = or i1 %104, %105
  br i1 %106, label %107, label %73

107:                                              ; preds = %93, %73, %50
  %108 = phi i32 [ %54, %50 ], [ %102, %93 ], [ %75, %73 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %108) #17
  tail call fastcc void @__sta_info_recalc_tim(ptr noundef %9, i1 noundef zeroext false) #17
  %109 = load ptr, ptr %52, align 4
  %110 = icmp eq ptr %109, %52
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load ptr, ptr %21, align 4
  %113 = icmp ne ptr %112, %21
  br label %114

114:                                              ; preds = %111, %107
  %115 = phi i1 [ true, %107 ], [ %113, %111 ]
  %116 = or i1 %20, %115
  %117 = add nuw nsw i32 %19, 1
  %118 = icmp eq i32 %117, 4
  br i1 %118, label %119, label %18

119:                                              ; preds = %114, %8
  %120 = phi i1 [ false, %8 ], [ %116, %114 ]
  %121 = select i1 %120, i1 true, i1 %10
  %122 = load volatile ptr, ptr %9, align 4
  %123 = icmp eq ptr %122, %3
  br i1 %123, label %124, label %8

124:                                              ; preds = %119
  %125 = xor i1 %121, true
  br label %126

126:                                              ; preds = %124, %1
  %127 = phi i1 [ true, %1 ], [ %125, %124 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %128 = getelementptr i8, ptr %0, i32 -212
  %129 = load i8, ptr %128, align 8, !range !14
  %130 = icmp ne i8 %129, 0
  %131 = select i1 %130, i1 true, i1 %127
  br i1 %131, label %137, label %132

132:                                              ; preds = %126
  %133 = load volatile i32, ptr @jiffies, align 64
  %134 = add i32 %133, 1000
  %135 = tail call i32 @round_jiffies(i32 noundef %134) #17
  %136 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %135) #17
  br label %137

137:                                              ; preds = %132, %126
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sta_info_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 51
  %3 = tail call i32 @del_timer_sync(ptr noundef %2) #17
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 50
  tail call void @rhashtable_free_and_destroy(ptr noundef %4, ptr noundef null, ptr noundef null) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sta_info_flush(ptr noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr %3, ptr %3, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %6, align 4
  br i1 %1, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %12, label %11, !prof !8

11:                                               ; preds = %7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1209, i32 noundef 9, ptr noundef null) #17
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 49
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !13

16:                                               ; preds = %12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1210, i32 noundef 9, ptr noundef null) #17
  br label %17

17:                                               ; preds = %16, %12, %2
  %18 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 46
  call void @mutex_lock(ptr noundef %18) #17
  %19 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 49
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %51, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 49
  br label %24

24:                                               ; preds = %48, %22
  %25 = phi ptr [ %20, %22 ], [ %27, %48 ]
  %26 = phi i32 [ 0, %22 ], [ %49, %48 ]
  %27 = load ptr, ptr %25, align 8
  %28 = getelementptr inbounds %struct.sta_info, ptr %25, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %37, label %31

31:                                               ; preds = %24
  br i1 %1, label %32, label %48

32:                                               ; preds = %31
  %33 = load ptr, ptr %23, align 4
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %29, i32 0, i32 49
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %32, %24
  %38 = call fastcc i32 @__sta_info_destroy_part1(ptr noundef %25)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40, !prof !8

40:                                               ; preds = %37
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1216, i32 noundef 9, ptr noundef null) #17
  br label %46

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.sta_info, ptr %25, i32 0, i32 1
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store ptr %43, ptr %42, align 4
  %45 = getelementptr inbounds %struct.sta_info, ptr %25, i32 0, i32 1, i32 1
  store ptr %3, ptr %45, align 4
  store volatile ptr %42, ptr %3, align 8
  br label %46

46:                                               ; preds = %41, %40
  %47 = add i32 %26, 1
  br label %48

48:                                               ; preds = %46, %32, %31
  %49 = phi i32 [ %47, %46 ], [ %26, %32 ], [ %26, %31 ]
  %50 = icmp eq ptr %27, %19
  br i1 %50, label %51, label %24

51:                                               ; preds = %48, %17
  %52 = phi i32 [ 0, %17 ], [ %49, %48 ]
  %53 = load volatile ptr, ptr %3, align 8
  %54 = icmp eq ptr %53, %3
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  call void @synchronize_net() #17
  %56 = load ptr, ptr %3, align 8
  %57 = icmp eq ptr %56, %3
  br i1 %57, label %63, label %58

58:                                               ; preds = %58, %55
  %59 = phi ptr [ %61, %58 ], [ %56, %55 ]
  %60 = getelementptr i8, ptr %59, i32 -8
  %61 = load ptr, ptr %59, align 8
  call fastcc void @__sta_info_destroy_part2(ptr noundef %60)
  %62 = icmp eq ptr %61, %3
  br i1 %62, label %63, label %58

63:                                               ; preds = %58, %55, %51
  call void @mutex_unlock(ptr noundef %18) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 %52
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_expire(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %5) #17
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 49
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %64, label %9

9:                                                ; preds = %62, %2
  %10 = phi ptr [ %11, %62 ], [ %7, %2 ]
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 31
  %13 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16

16:                                               ; preds = %9
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %18 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  %19 = icmp ult i32 %18, %17
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = ptrtoint ptr %14 to i32
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ %18, %20 ], [ %36, %22 ]
  %24 = phi ptr [ %12, %20 ], [ %35, %22 ]
  %25 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %21
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %24, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %28, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 %30, %32
  %34 = icmp slt i32 %33, 0
  %35 = select i1 %34, ptr %28, ptr %24
  %36 = tail call i32 @cpumask_next(i32 noundef %23, ptr noundef nonnull @__cpu_possible_mask) #21
  %37 = icmp ult i32 %36, %17
  br i1 %37, label %22, label %38

38:                                               ; preds = %22, %16, %9
  %39 = phi ptr [ %12, %9 ], [ %12, %16 ], [ %35, %22 ]
  %40 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 34, i32 7
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %39, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = sub i32 %45, %48
  %50 = icmp slt i32 %49, 0
  %51 = select i1 %46, i1 true, i1 %50
  %52 = select i1 %51, i32 %48, i32 %45
  %53 = load volatile i32, ptr @jiffies, align 64
  %54 = sub i32 %1, %53
  %55 = add i32 %54, %52
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %43
  %58 = tail call fastcc i32 @__sta_info_destroy_part1(ptr noundef %10) #17
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  tail call void @synchronize_net() #17
  tail call fastcc void @__sta_info_destroy_part2(ptr noundef %10) #17
  br label %62

61:                                               ; preds = %57
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1254, i32 noundef 9, ptr noundef null) #17
  br label %62

62:                                               ; preds = %61, %60, %43, %38
  %63 = icmp eq ptr %11, %6
  br i1 %63, label %64, label %9

64:                                               ; preds = %62, %2
  tail call void @mutex_unlock(ptr noundef %5) #17
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ieee80211_sta_last_active(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 31
  %3 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  %9 = icmp ult i32 %8, %7
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = ptrtoint ptr %4 to i32
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ %8, %10 ], [ %26, %12 ]
  %14 = phi ptr [ %2, %10 ], [ %25, %12 ]
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %11
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %14, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %18, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = icmp slt i32 %23, 0
  %25 = select i1 %24, ptr %18, ptr %14
  %26 = tail call i32 @cpumask_next(i32 noundef %13, ptr noundef nonnull @__cpu_possible_mask) #21
  %27 = icmp ult i32 %26, %7
  br i1 %27, label %12, label %28

28:                                               ; preds = %12, %6, %1
  %29 = phi ptr [ %2, %1 ], [ %2, %6 ], [ %25, %12 ]
  %30 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 34, i32 7
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %29, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %31, %34
  %36 = icmp slt i32 %35, 0
  %37 = select i1 %32, i1 true, i1 %36
  %38 = select i1 %37, i32 %34, i32 %31
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_find_sta_by_ifaddr(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) #0 {
  %4 = tail call ptr @sta_info_hash_lookup(ptr noundef %0, ptr noundef %1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %2, null
  %8 = getelementptr i8, ptr %2, i32 4
  br label %9

9:                                                ; preds = %32, %6
  %10 = phi ptr [ %4, %6 ], [ %34, %32 ]
  br i1 %7, label %25, label %11

11:                                               ; preds = %9
  %12 = getelementptr i8, ptr %10, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 58, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %2, align 4
  %17 = xor i32 %16, %15
  %18 = getelementptr %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 58, i32 2, i32 4
  %19 = load i16, ptr %18, align 2
  %20 = load i16, ptr %8, align 2
  %21 = xor i16 %20, %19
  %22 = zext i16 %21 to i32
  %23 = or i32 %17, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %11, %9
  %26 = phi ptr [ %10, %11 ], [ %4, %9 ]
  %27 = getelementptr i8, ptr %26, i32 124
  %28 = load i8, ptr %27, align 4, !range !14
  %29 = icmp eq i8 %28, 0
  %30 = getelementptr i8, ptr %26, i32 1928
  %31 = select i1 %29, ptr null, ptr %30
  br label %36

32:                                               ; preds = %11
  %33 = getelementptr inbounds %struct.rhlist_head, ptr %10, i32 0, i32 1
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %9

36:                                               ; preds = %32, %25, %3
  %37 = phi ptr [ %31, %25 ], [ null, %3 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_find_sta(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 -2264
  %6 = getelementptr i8, ptr %0, i32 -1908
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %8 = tail call ptr @sta_info_hash_lookup(ptr noundef %7, ptr noundef %1) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %0, i32 -1084
  br label %12

12:                                               ; preds = %24, %10
  %13 = phi ptr [ %8, %10 ], [ %26, %24 ]
  %14 = getelementptr i8, ptr %13, i32 20
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %15, i32 0, i32 49
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %11, align 4
  %23 = icmp eq ptr %19, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.rhlist_head, ptr %13, i32 0, i32 1
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %12

28:                                               ; preds = %24, %4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %38

29:                                               ; preds = %21, %12
  %30 = getelementptr i8, ptr %13, i32 -24
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %13, i32 124
  %34 = load i8, ptr %33, align 4, !range !14
  %35 = icmp eq i8 %34, 0
  %36 = getelementptr i8, ptr %13, i32 1928
  %37 = select i1 %35, ptr null, ptr %36
  br label %38

38:                                               ; preds = %32, %29, %28, %2
  %39 = phi ptr [ null, %2 ], [ null, %29 ], [ %37, %32 ], [ null, %28 ]
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_ps_deliver_wakeup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.sk_buff_head, align 4
  %3 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !47
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 58
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 49
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 -1408
  %14 = getelementptr i8, ptr %12, i32 856
  %15 = load i32, ptr %14, align 8
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i32 [ %15, %10 ], [ %8, %1 ]
  %18 = phi ptr [ %13, %10 ], [ %4, %1 ]
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %18, i32 0, i32 58
  %20 = icmp eq i32 %17, 3
  br i1 %20, label %21, label %208

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %18, i32 0, i32 49
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %24) #17
  %25 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 27
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 28
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 4
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1048576
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %94

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  %33 = load i32, ptr %19, align 8
  %34 = icmp eq i32 %33, 4
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load ptr, ptr %22, align 4
  %37 = getelementptr i8, ptr %36, i32 -1408
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi ptr [ %37, %35 ], [ %18, %31 ]
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %39, i32 0, i32 8
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 32
  %43 = icmp eq i32 %42, 0
  %44 = load i1, ptr @drv_sta_notify.__already_done, align 1
  %45 = xor i1 %44, true
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %53, !prof !13

47:                                               ; preds = %38
  store i1 true, ptr @drv_sta_notify.__already_done, align 1
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %39, i32 0, i32 6
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  %51 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %39, i32 0, i32 10
  %52 = select i1 %50, ptr %51, ptr %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 442, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %52, i32 noundef %41) #17
  br label %53

53:                                               ; preds = %47, %38
  br i1 %43, label %94, label %54

54:                                               ; preds = %53
  %55 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sta_notify, i32 0, i32 1), align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = tail call ptr @llvm.thread.pointer() #17
  %59 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 5
  %62 = getelementptr i32, ptr @__cpu_online_mask, i32 %61
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %60, 31
  %65 = shl nuw i32 1, %64
  %66 = and i32 %65, %63
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %57
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !48
  %69 = tail call i32 @__traceiter_drv_sta_notify(ptr noundef null, ptr noundef %6, ptr noundef %39, i32 noundef 1, ptr noundef %32) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !49
  br label %70

70:                                               ; preds = %68, %57, %54
  %71 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 8
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.ieee80211_ops, ptr %72, i32 0, i32 33
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %39, i32 0, i32 58
  tail call void %74(ptr noundef %6, ptr noundef %77, i32 noundef 1, ptr noundef %32) #17
  br label %78

78:                                               ; preds = %76, %70
  %79 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = tail call ptr @llvm.thread.pointer() #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !41
  %93 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %6) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !42
  br label %94

94:                                               ; preds = %92, %81, %78, %53, %21
  %95 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 36
  %96 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 8
  br label %97

97:                                               ; preds = %153, %94
  %98 = phi i32 [ 0, %94 ], [ %154, %153 ]
  %99 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 46, i32 28, i32 %98
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %153, label %102

102:                                              ; preds = %97
  %103 = getelementptr i8, ptr %100, i32 -20
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, %103
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = getelementptr i8, ptr %100, i32 -100
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %153, label %110

110:                                              ; preds = %106, %102
  %111 = getelementptr i8, ptr %100, i32 -164
  tail call void @ieee80211_schedule_txq(ptr noundef %6, ptr noundef nonnull %100) #17
  %112 = load ptr, ptr %100, align 4
  %113 = getelementptr i8, ptr %112, i32 -2264
  %114 = load i8, ptr %95, align 2, !range !14
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %110
  %117 = getelementptr i8, ptr %100, i32 -4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %117) #17
  br label %153

118:                                              ; preds = %110
  %119 = getelementptr i8, ptr %112, i32 -1904
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, 32
  %122 = icmp eq i32 %121, 0
  %123 = load i1, ptr @drv_wake_tx_queue.__already_done, align 1
  %124 = xor i1 %123, true
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %126, label %132, !prof !13

126:                                              ; preds = %118
  store i1 true, ptr @drv_wake_tx_queue.__already_done, align 1
  %127 = getelementptr i8, ptr %112, i32 -1912
  %128 = load ptr, ptr %127, align 8
  %129 = icmp eq ptr %128, null
  %130 = getelementptr i8, ptr %112, i32 -1896
  %131 = select i1 %129, ptr %130, ptr %128
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1228, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %131, i32 noundef %120) #17
  br label %132

132:                                              ; preds = %126, %118
  br i1 %122, label %153, label %133

133:                                              ; preds = %132
  %134 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_wake_tx_queue, i32 0, i32 1), align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %133
  %137 = tail call ptr @llvm.thread.pointer() #17
  %138 = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 2
  %139 = load i32, ptr %138, align 8
  %140 = lshr i32 %139, 5
  %141 = getelementptr i32, ptr @__cpu_online_mask, i32 %140
  %142 = load volatile i32, ptr %141, align 4
  %143 = and i32 %139, 31
  %144 = shl nuw i32 1, %143
  %145 = and i32 %144, %142
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %136
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !50
  %148 = tail call i32 @__traceiter_drv_wake_tx_queue(ptr noundef null, ptr noundef %6, ptr noundef %113, ptr noundef %111) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !51
  br label %149

149:                                              ; preds = %147, %136, %133
  %150 = load ptr, ptr %96, align 4
  %151 = getelementptr inbounds %struct.ieee80211_ops, ptr %150, i32 0, i32 89
  %152 = load ptr, ptr %151, align 4
  tail call void %152(ptr noundef %6, ptr noundef nonnull %100) #17
  br label %153

153:                                              ; preds = %149, %132, %116, %106, %97
  %154 = add nuw nsw i32 %98, 1
  %155 = icmp eq i32 %154, 17
  br i1 %155, label %156, label %97

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 2
  store i32 0, ptr %157, align 4
  store ptr %2, ptr %2, align 4
  %158 = getelementptr inbounds %struct.anon.120, ptr %2, i32 0, i32 1
  store ptr %2, ptr %158, align 4
  %159 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 1
  store i32 0, ptr %159, align 4
  %160 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 24
  call void @_raw_spin_lock(ptr noundef %160) #17
  br label %161

161:                                              ; preds = %194, %156
  %162 = phi i32 [ 0, %156 ], [ %197, %194 ]
  %163 = phi i32 [ 0, %156 ], [ %198, %194 ]
  %164 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 26, i32 %163
  %165 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 26, i32 %163, i32 2
  %166 = call i32 @_raw_spin_lock_irqsave(ptr noundef %165) #17
  %167 = load ptr, ptr %164, align 4
  %168 = icmp eq ptr %167, %164
  br i1 %168, label %178, label %169

169:                                              ; preds = %161
  %170 = load ptr, ptr %158, align 4
  %171 = getelementptr inbounds %struct.anon.120, ptr %164, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.anon.46, ptr %167, i32 0, i32 1
  store volatile ptr %170, ptr %173, align 4
  store volatile ptr %167, ptr %170, align 8
  store volatile ptr %2, ptr %172, align 8
  store volatile ptr %172, ptr %158, align 4
  %174 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 26, i32 %163, i32 1
  %175 = load i32, ptr %174, align 4
  %176 = load i32, ptr %159, align 4
  %177 = add i32 %176, %175
  store i32 %177, ptr %159, align 4
  store ptr %164, ptr %164, align 4
  store ptr %164, ptr %171, align 4
  store i32 0, ptr %174, align 4
  br label %178

178:                                              ; preds = %169, %161
  call void @_raw_spin_unlock_irqrestore(ptr noundef %165, i32 noundef %166) #17
  %179 = load i32, ptr %159, align 4
  %180 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 %163
  %181 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 %163, i32 2
  %182 = call i32 @_raw_spin_lock_irqsave(ptr noundef %181) #17
  %183 = load ptr, ptr %180, align 4
  %184 = icmp eq ptr %183, %180
  br i1 %184, label %194, label %185

185:                                              ; preds = %178
  %186 = load ptr, ptr %158, align 4
  %187 = getelementptr inbounds %struct.anon.120, ptr %180, i32 0, i32 1
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.anon.46, ptr %183, i32 0, i32 1
  store volatile ptr %186, ptr %189, align 4
  store volatile ptr %183, ptr %186, align 8
  store volatile ptr %2, ptr %188, align 8
  store volatile ptr %188, ptr %158, align 4
  %190 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 %163, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = load i32, ptr %159, align 4
  %193 = add i32 %192, %191
  store i32 %193, ptr %159, align 4
  store ptr %180, ptr %180, align 4
  store ptr %180, ptr %187, align 4
  store i32 0, ptr %190, align 4
  br label %194

194:                                              ; preds = %185, %178
  call void @_raw_spin_unlock_irqrestore(ptr noundef %181, i32 noundef %182) #17
  %195 = load i32, ptr %159, align 4
  %196 = sub i32 %162, %179
  %197 = add i32 %196, %195
  %198 = add nuw nsw i32 %163, 1
  %199 = icmp eq i32 %198, 4
  br i1 %199, label %200, label %161

200:                                              ; preds = %194
  call void @ieee80211_add_pending_skbs(ptr noundef %6, ptr noundef nonnull %2) #17
  call void @_clear_bit(i32 noundef 25, ptr noundef %24) #17
  call void @_clear_bit(i32 noundef 10, ptr noundef %24) #17
  call void @_clear_bit(i32 noundef 17, ptr noundef %24) #17
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !52
  %201 = load i16, ptr %160, align 4
  %202 = add i16 %201, 1
  store i16 %202, ptr %160, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !53
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !54
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !55
  %203 = getelementptr inbounds %struct.ieee80211_if_ap, ptr %23, i32 0, i32 6, i32 2
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %203) #17, !srcloc !20
  %204 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %203, ptr %203, i32 1, ptr elementtype(i32) %203) #17, !srcloc !56
  %205 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 90
  %206 = load i32, ptr %205, align 4
  %207 = sub i32 %206, %197
  store i32 %207, ptr %205, align 4
  call fastcc void @__sta_info_recalc_tim(ptr noundef %0, i1 noundef zeroext false) #17
  call void @ieee80211_check_fast_xmit(ptr noundef %0) #17
  br label %208

208:                                              ; preds = %200, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_add_pending_skbs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_fast_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_ps_deliver_poll_response(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 11
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 15
  %5 = select i1 %4, i8 0, i8 %3
  tail call fastcc void @ieee80211_sta_ps_deliver_response(ptr noundef %0, i32 noundef 1, i8 noundef zeroext %5, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_sta_ps_deliver_response(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.sk_buff_head, align 4
  %6 = alloca %struct.sk_buff_head, align 4
  %7 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %11 = getelementptr inbounds i8, ptr %5, i32 12
  store i32 0, ptr %11, align 4, !annotation !47
  %12 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 18, ptr noundef %12) #17
  store ptr %5, ptr %5, align 4
  %13 = getelementptr inbounds %struct.anon.120, ptr %5, i32 0, i32 1
  store ptr %5, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sk_buff_head, ptr %5, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %15, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 27
  %19 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 28
  %20 = getelementptr inbounds %struct.ieee80211_local, ptr %17, i32 0, i32 90
  br label %21

21:                                               ; preds = %81, %4
  %22 = phi i32 [ 0, %4 ], [ %82, %81 ]
  %23 = phi i32 [ 0, %4 ], [ %84, %81 ]
  %24 = phi i32 [ %1, %4 ], [ %83, %81 ]
  %25 = getelementptr [4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 %23
  %26 = load i8, ptr %25, align 1
  %27 = and i8 %26, %2
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %81

29:                                               ; preds = %21
  %30 = icmp ult i32 %23, 4
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 789, i32 noundef 9, ptr noundef null) #17
  br label %35

32:                                               ; preds = %29
  %33 = getelementptr inbounds [4 x i32], ptr @switch.table.ieee80211_sta_ps_deliver_response, i32 0, i32 %23
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %31
  %36 = phi i32 [ 0, %31 ], [ %34, %32 ]
  %37 = load ptr, ptr %5, align 4
  %38 = icmp eq ptr %37, %5
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, ptr %18, align 4
  %41 = and i32 %40, %36
  %42 = or i32 %41, %22
  %43 = load i32, ptr %19, align 8
  %44 = and i32 %43, %36
  %45 = or i32 %42, %44
  br label %46

46:                                               ; preds = %39, %35
  %47 = phi i32 [ %45, %39 ], [ %22, %35 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %46
  %50 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 %23
  %51 = icmp sgt i32 %24, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 26, i32 %23
  br label %54

54:                                               ; preds = %64, %52
  %55 = phi i32 [ %24, %52 ], [ %66, %64 ]
  %56 = call ptr @skb_dequeue(ptr noundef %53) #17
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = call ptr @skb_dequeue(ptr noundef %50) #17
  %60 = icmp eq ptr %59, null
  br i1 %60, label %72, label %61

61:                                               ; preds = %58
  %62 = load i32, ptr %20, align 4
  %63 = add i32 %62, -1
  store i32 %63, ptr %20, align 4
  br label %64

64:                                               ; preds = %61, %54
  %65 = phi ptr [ %59, %61 ], [ %56, %54 ]
  %66 = add nsw i32 %55, -1
  %67 = load ptr, ptr %13, align 4
  store volatile ptr %5, ptr %65, align 8
  %68 = getelementptr inbounds %struct.anon.46, ptr %65, i32 0, i32 1
  store volatile ptr %67, ptr %68, align 4
  store volatile ptr %65, ptr %13, align 4
  store volatile ptr %65, ptr %67, align 4
  %69 = load i32, ptr %14, align 4
  %70 = add i32 %69, 1
  store volatile i32 %70, ptr %14, align 4
  %71 = icmp sgt i32 %55, 1
  br i1 %71, label %54, label %72

72:                                               ; preds = %64, %58, %49, %46
  %73 = phi i32 [ %24, %46 ], [ %24, %49 ], [ %55, %58 ], [ 0, %64 ]
  %74 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 26, i32 %23
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %74
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 %23
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %78
  br i1 %80, label %81, label %86

81:                                               ; preds = %77, %21
  %82 = phi i32 [ %47, %77 ], [ %22, %21 ]
  %83 = phi i32 [ %73, %77 ], [ %24, %21 ]
  %84 = add nuw nsw i32 %23, 1
  %85 = icmp eq i32 %84, 4
  br i1 %85, label %86, label %21

86:                                               ; preds = %81, %77, %72
  %87 = phi i32 [ %82, %81 ], [ %47, %77 ], [ %47, %72 ]
  %88 = icmp eq i32 %3, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = call i32 @__sw_hweight16(i32 noundef %87) #17
  %91 = icmp ugt i32 %90, 1
  br i1 %91, label %141, label %92

92:                                               ; preds = %89, %86
  %93 = load i8, ptr @ieee80211_ac_to_qos_mask, align 1
  %94 = and i8 %93, %2
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 26, i32 0
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, %97
  br i1 %99, label %100, label %141

100:                                              ; preds = %96
  %101 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 0
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %101
  br i1 %103, label %104, label %141

104:                                              ; preds = %100, %92
  %105 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 1), align 1
  %106 = and i8 %105, %2
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 26, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, %109
  br i1 %111, label %112, label %141

112:                                              ; preds = %108
  %113 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, %113
  br i1 %115, label %116, label %141

116:                                              ; preds = %112, %104
  %117 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 2), align 1
  %118 = and i8 %117, %2
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 26, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, %121
  br i1 %123, label %124, label %141

124:                                              ; preds = %120
  %125 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, %125
  br i1 %127, label %128, label %141

128:                                              ; preds = %124, %116
  %129 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 3), align 1
  %130 = and i8 %129, %2
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 26, i32 3
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, %133
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 3
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, %137
  br i1 %139, label %140, label %141

140:                                              ; preds = %136, %128
  br label %141

141:                                              ; preds = %140, %136, %132, %124, %120, %112, %108, %100, %96, %89
  %142 = phi i1 [ true, %89 ], [ true, %100 ], [ true, %96 ], [ true, %108 ], [ true, %112 ], [ true, %120 ], [ true, %124 ], [ true, %132 ], [ true, %136 ], [ false, %140 ]
  %143 = icmp ne i32 %87, 0
  %144 = and i1 %88, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %141
  %146 = and i32 %87, 248
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = call i32 @llvm.ctlz.i32(i32 %87, i1 true) #17, !range !57
  %150 = xor i32 %149, 31
  br label %157

151:                                              ; preds = %145
  %152 = and i32 %87, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = call i32 @llvm.ctlz.i32(i32 %87, i1 true) #17, !range !57
  %156 = xor i32 %155, 31
  br label %157

157:                                              ; preds = %154, %151, %148
  %158 = phi i32 [ %150, %148 ], [ %156, %154 ], [ 0, %151 ]
  %159 = shl nuw i32 1, %158
  br label %317

160:                                              ; preds = %141
  %161 = load ptr, ptr %5, align 4
  %162 = icmp ne ptr %161, %5
  %163 = select i1 %162, i1 true, i1 %143
  br i1 %163, label %183, label %164

164:                                              ; preds = %160
  %165 = load i8, ptr @ieee80211_ac_to_qos_mask, align 1
  %166 = and i8 %165, %2
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %181, label %168

168:                                              ; preds = %164
  %169 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 1), align 1
  %170 = and i8 %169, %2
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %168
  %173 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 2), align 1
  %174 = and i8 %173, %2
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %172
  %177 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 3), align 1
  %178 = and i8 %177, %2
  %179 = icmp eq i8 %178, 0
  %180 = select i1 %179, i32 1, i32 -1
  br label %181

181:                                              ; preds = %176, %172, %168, %164
  %182 = phi i32 [ 7, %164 ], [ 5, %168 ], [ 3, %172 ], [ %180, %176 ]
  call fastcc void @ieee80211_send_null_response(ptr noundef %0, i32 noundef %182, i32 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %384

183:                                              ; preds = %160
  br i1 %143, label %317, label %184

184:                                              ; preds = %183
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %185 = getelementptr inbounds i8, ptr %6, i32 12
  store i32 0, ptr %185, align 4
  store ptr %6, ptr %6, align 4
  %186 = getelementptr inbounds %struct.anon.120, ptr %6, i32 0, i32 1
  store ptr %6, ptr %186, align 4
  %187 = getelementptr inbounds %struct.sk_buff_head, ptr %6, i32 0, i32 1
  store i32 0, ptr %187, align 4
  %188 = xor i1 %142, true
  br label %189

189:                                              ; preds = %196, %184
  %190 = phi ptr [ %161, %184 ], [ %227, %196 ]
  %191 = phi i32 [ 0, %184 ], [ %206, %196 ]
  %192 = phi i16 [ 0, %184 ], [ %223, %196 ]
  %193 = icmp eq ptr %190, %5
  %194 = icmp eq ptr %190, null
  %195 = or i1 %193, %194
  br i1 %195, label %255, label %196

196:                                              ; preds = %189
  %197 = load i32, ptr %14, align 4
  %198 = add i32 %197, -1
  store volatile i32 %198, ptr %14, align 4
  %199 = load ptr, ptr %190, align 8
  %200 = getelementptr inbounds %struct.anon.46, ptr %190, i32 0, i32 1
  %201 = load ptr, ptr %200, align 4
  store ptr null, ptr %200, align 4
  store ptr null, ptr %190, align 8
  %202 = getelementptr inbounds %struct.anon.46, ptr %199, i32 0, i32 1
  store volatile ptr %201, ptr %202, align 4
  store volatile ptr %199, ptr %201, align 8
  %203 = getelementptr inbounds %struct.sk_buff, ptr %190, i32 0, i32 3
  %204 = getelementptr inbounds %struct.sk_buff, ptr %190, i32 0, i32 17
  %205 = load ptr, ptr %204, align 4
  %206 = add i32 %191, 1
  %207 = load i32, ptr %203, align 8
  %208 = or i32 %207, 131072
  store i32 %208, ptr %203, align 8
  %209 = getelementptr inbounds %struct.sk_buff, ptr %190, i32 0, i32 3, i32 32
  %210 = load i32, ptr %209, align 8
  %211 = or i32 %210, 2
  store i32 %211, ptr %209, align 8
  %212 = load ptr, ptr %5, align 4
  %213 = icmp eq ptr %212, %5
  %214 = select i1 %188, i1 %213, i1 false
  %215 = load i16, ptr %205, align 2
  %216 = and i16 %215, -8193
  %217 = select i1 %214, i16 0, i16 8192
  %218 = or i16 %216, %217
  store i16 %218, ptr %205, align 2
  %219 = getelementptr inbounds %struct.sk_buff, ptr %190, i32 0, i32 13, i32 0, i32 5
  %220 = load i32, ptr %219, align 8
  %221 = shl nuw i32 1, %220
  %222 = trunc i32 %221 to i16
  %223 = or i16 %192, %222
  %224 = load ptr, ptr %186, align 4
  store volatile ptr %6, ptr %190, align 8
  store volatile ptr %224, ptr %200, align 4
  store volatile ptr %190, ptr %186, align 4
  store volatile ptr %190, ptr %224, align 4
  %225 = load i32, ptr %187, align 4
  %226 = add i32 %225, 1
  store volatile i32 %226, ptr %187, align 4
  %227 = load ptr, ptr %5, align 4
  %228 = icmp eq ptr %227, %5
  br i1 %228, label %229, label %189

229:                                              ; preds = %196
  %230 = and i16 %215, 140
  %231 = icmp eq i16 %230, 136
  %232 = and i16 %215, 252
  %233 = icmp eq i16 %232, 200
  %234 = or i1 %231, %233
  %235 = and i16 %215, 768
  %236 = icmp eq i16 %235, 768
  %237 = select i1 %236, i32 30, i32 24
  %238 = getelementptr i8, ptr %205, i32 %237
  %239 = select i1 %234, ptr %238, ptr null
  %240 = icmp eq i32 %3, 1
  br i1 %240, label %244, label %241

241:                                              ; preds = %229
  %242 = load i32, ptr %203, align 8
  %243 = or i32 %242, 268435457
  store i32 %243, ptr %203, align 8
  br label %255

244:                                              ; preds = %229
  %245 = icmp eq ptr %239, null
  br i1 %245, label %251, label %246

246:                                              ; preds = %244
  %247 = load i8, ptr %239, align 1
  %248 = or i8 %247, 16
  store i8 %248, ptr %239, align 1
  %249 = load i32, ptr %203, align 8
  %250 = or i32 %249, 268435457
  store i32 %250, ptr %203, align 8
  br label %255

251:                                              ; preds = %244
  %252 = load i16, ptr %205, align 2
  %253 = or i16 %252, 8192
  store i16 %253, ptr %205, align 2
  %254 = add i32 %191, 2
  br label %255

255:                                              ; preds = %251, %246, %241, %189
  %256 = phi i32 [ %254, %251 ], [ %206, %246 ], [ %206, %241 ], [ %191, %189 ]
  %257 = phi i16 [ %223, %251 ], [ %223, %246 ], [ %223, %241 ], [ %192, %189 ]
  %258 = phi i1 [ true, %251 ], [ false, %246 ], [ false, %241 ], [ false, %189 ]
  %259 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  %260 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_allow_buffered_frames, i32 0, i32 1), align 4
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %262, label %275

262:                                              ; preds = %255
  %263 = tail call ptr @llvm.thread.pointer() #17
  %264 = getelementptr inbounds %struct.thread_info, ptr %263, i32 0, i32 2
  %265 = load i32, ptr %264, align 8
  %266 = lshr i32 %265, 5
  %267 = getelementptr i32, ptr @__cpu_online_mask, i32 %266
  %268 = load volatile i32, ptr %267, align 4
  %269 = and i32 %265, 31
  %270 = shl nuw i32 1, %269
  %271 = and i32 %270, %268
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %262
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !58
  %274 = call i32 @__traceiter_drv_allow_buffered_frames(ptr noundef null, ptr noundef %10, ptr noundef %259, i16 noundef zeroext %257, i32 noundef %256, i32 noundef %3, i1 noundef zeroext %142) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !59
  br label %275

275:                                              ; preds = %273, %262, %255
  %276 = getelementptr inbounds %struct.ieee80211_local, ptr %10, i32 0, i32 8
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr inbounds %struct.ieee80211_ops, ptr %277, i32 0, i32 61
  %279 = load ptr, ptr %278, align 4
  %280 = icmp eq ptr %279, null
  br i1 %280, label %282, label %281

281:                                              ; preds = %275
  call void %279(ptr noundef %10, ptr noundef %259, i16 noundef zeroext %257, i32 noundef %256, i32 noundef %3, i1 noundef zeroext %142) #17
  br label %282

282:                                              ; preds = %281, %275
  %283 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %298

285:                                              ; preds = %282
  %286 = tail call ptr @llvm.thread.pointer() #17
  %287 = getelementptr inbounds %struct.thread_info, ptr %286, i32 0, i32 2
  %288 = load i32, ptr %287, align 8
  %289 = lshr i32 %288, 5
  %290 = getelementptr i32, ptr @__cpu_online_mask, i32 %289
  %291 = load volatile i32, ptr %290, align 4
  %292 = and i32 %288, 31
  %293 = shl nuw i32 1, %292
  %294 = and i32 %293, %291
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %298, label %296

296:                                              ; preds = %285
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !41
  %297 = call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %10) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !42
  br label %298

298:                                              ; preds = %296, %285, %282
  call void @ieee80211_add_pending_skbs(ptr noundef %10, ptr noundef nonnull %6) #17
  br i1 %258, label %299, label %316

299:                                              ; preds = %298
  %300 = zext i16 %257 to i32
  %301 = and i32 %300, 248
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %299
  %304 = call i32 @llvm.ctlz.i32(i32 %300, i1 false) #17, !range !57
  %305 = sub nsw i32 31, %304
  br label %314

306:                                              ; preds = %299
  %307 = and i32 %300, 1
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %306
  %310 = icmp eq i16 %257, 0
  %311 = call i32 @llvm.ctlz.i32(i32 %300, i1 false) #17, !range !57
  %312 = sub nsw i32 31, %311
  %313 = select i1 %310, i32 -1, i32 %312
  br label %314

314:                                              ; preds = %309, %306, %303
  %315 = phi i32 [ %305, %303 ], [ %313, %309 ], [ 0, %306 ]
  call fastcc void @ieee80211_send_null_response(ptr noundef %0, i32 noundef %315, i32 noundef %3, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %316

316:                                              ; preds = %314, %298
  call fastcc void @__sta_info_recalc_tim(ptr noundef %0, i1 noundef zeroext false) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  br label %384

317:                                              ; preds = %183, %157
  %318 = phi i32 [ %159, %157 ], [ %87, %183 ]
  %319 = trunc i32 %318 to i16
  %320 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  %321 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_release_buffered_frames, i32 0, i32 1), align 4
  %322 = icmp sgt i32 %321, 0
  br i1 %322, label %323, label %336

323:                                              ; preds = %317
  %324 = tail call ptr @llvm.thread.pointer() #17
  %325 = getelementptr inbounds %struct.thread_info, ptr %324, i32 0, i32 2
  %326 = load i32, ptr %325, align 8
  %327 = lshr i32 %326, 5
  %328 = getelementptr i32, ptr @__cpu_online_mask, i32 %327
  %329 = load volatile i32, ptr %328, align 4
  %330 = and i32 %326, 31
  %331 = shl nuw i32 1, %330
  %332 = and i32 %331, %329
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %336, label %334

334:                                              ; preds = %323
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !60
  %335 = call i32 @__traceiter_drv_release_buffered_frames(ptr noundef null, ptr noundef %10, ptr noundef %320, i16 noundef zeroext %319, i32 noundef %1, i32 noundef %3, i1 noundef zeroext %142) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !61
  br label %336

336:                                              ; preds = %334, %323, %317
  %337 = getelementptr inbounds %struct.ieee80211_local, ptr %10, i32 0, i32 8
  %338 = load ptr, ptr %337, align 4
  %339 = getelementptr inbounds %struct.ieee80211_ops, ptr %338, i32 0, i32 62
  %340 = load ptr, ptr %339, align 4
  %341 = icmp eq ptr %340, null
  br i1 %341, label %343, label %342

342:                                              ; preds = %336
  call void %340(ptr noundef %10, ptr noundef %320, i16 noundef zeroext %319, i32 noundef %1, i32 noundef %3, i1 noundef zeroext %142) #17
  br label %343

343:                                              ; preds = %342, %336
  %344 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %345 = icmp sgt i32 %344, 0
  br i1 %345, label %346, label %359

346:                                              ; preds = %343
  %347 = tail call ptr @llvm.thread.pointer() #17
  %348 = getelementptr inbounds %struct.thread_info, ptr %347, i32 0, i32 2
  %349 = load i32, ptr %348, align 8
  %350 = lshr i32 %349, 5
  %351 = getelementptr i32, ptr @__cpu_online_mask, i32 %350
  %352 = load volatile i32, ptr %351, align 4
  %353 = and i32 %349, 31
  %354 = shl nuw i32 1, %353
  %355 = and i32 %354, %352
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %359, label %357

357:                                              ; preds = %346
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !41
  %358 = call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %10) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !42
  br label %359

359:                                              ; preds = %357, %346, %343
  %360 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 28
  %361 = load ptr, ptr %360, align 8
  %362 = icmp eq ptr %361, null
  br i1 %362, label %384, label %363

363:                                              ; preds = %381, %359
  %364 = phi i32 [ %382, %381 ], [ 0, %359 ]
  %365 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 46, i32 28, i32 %364
  %366 = load ptr, ptr %365, align 4
  %367 = icmp eq ptr %366, null
  br i1 %367, label %381, label %368

368:                                              ; preds = %363
  %369 = shl nuw nsw i32 1, %364
  %370 = and i32 %369, %318
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %381, label %372

372:                                              ; preds = %368
  %373 = getelementptr i8, ptr %366, i32 -20
  %374 = load ptr, ptr %373, align 4
  %375 = icmp eq ptr %374, %373
  br i1 %375, label %376, label %381

376:                                              ; preds = %372
  %377 = getelementptr i8, ptr %366, i32 -100
  %378 = load i32, ptr %377, align 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %376
  call fastcc void @__sta_info_recalc_tim(ptr noundef %0, i1 noundef zeroext false) #17
  br label %384

381:                                              ; preds = %376, %372, %368, %363
  %382 = add nuw nsw i32 %364, 1
  %383 = icmp eq i32 %382, 17
  br i1 %383, label %384, label %363

384:                                              ; preds = %381, %380, %359, %316, %181
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_ps_deliver_uapsd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 11
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 12
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = icmp ult i8 %7, 4
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = sext i8 %7 to i32
  %12 = getelementptr inbounds [4 x i32], ptr @switch.table.ieee80211_sta_ps_deliver_uapsd, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi i32 [ %8, %5 ], [ %13, %10 ]
  %16 = xor i8 %3, -1
  tail call fastcc void @ieee80211_sta_ps_deliver_response(ptr noundef %0, i32 noundef %15, i8 noundef zeroext %16, i32 noundef 1)
  br label %17

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_block_awake(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -1952
  %5 = getelementptr i8, ptr %1, i32 -1912
  %6 = load ptr, ptr %5, align 8
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_sta_block_awake, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = tail call ptr @llvm.thread.pointer() #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !62
  %21 = tail call i32 @__traceiter_api_sta_block_awake(ptr noundef null, ptr noundef %6, ptr noundef %1, i1 noundef zeroext %2) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !63
  br label %22

22:                                               ; preds = %20, %9, %3
  %23 = getelementptr i8, ptr %1, i32 -1796
  br i1 %2, label %24, label %25

24:                                               ; preds = %22
  tail call void @_set_bit(i32 noundef 9, ptr noundef %23) #17
  tail call void @ieee80211_clear_fast_xmit(ptr noundef %4) #17
  br label %46

25:                                               ; preds = %22
  %26 = load volatile i32, ptr %23, align 4
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %25
  %30 = load volatile i32, ptr %23, align 4
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  tail call void @_set_bit(i32 noundef 25, ptr noundef %23) #17
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %23) #17
  %34 = getelementptr i8, ptr %1, i32 -1824
  tail call void @ieee80211_queue_work(ptr noundef %0, ptr noundef %34) #17
  br label %46

35:                                               ; preds = %29
  %36 = load volatile i32, ptr %23, align 4
  %37 = and i32 %36, 1024
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load volatile i32, ptr %23, align 4
  %41 = and i32 %40, 131072
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39, %35
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %23) #17
  %44 = getelementptr i8, ptr %1, i32 -1824
  tail call void @ieee80211_queue_work(ptr noundef %0, ptr noundef %44) #17
  br label %46

45:                                               ; preds = %39
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %23) #17
  tail call void @ieee80211_check_fast_xmit(ptr noundef %4) #17
  br label %46

46:                                               ; preds = %45, %43, %33, %25, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_clear_fast_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_eosp(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1912
  %3 = load ptr, ptr %2, align 8
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_eosp, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !64
  %18 = tail call i32 @__traceiter_api_eosp(ptr noundef null, ptr noundef %3, ptr noundef %0) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !65
  br label %19

19:                                               ; preds = %17, %6, %1
  %20 = getelementptr i8, ptr %0, i32 -1796
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %20) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_send_eosp_nullfunc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -1912
  %4 = load ptr, ptr %3, align 8
  %5 = trunc i32 %1 to i8
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_send_eosp_nullfunc, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !66
  %20 = tail call i32 @__traceiter_api_send_eosp_nullfunc(ptr noundef null, ptr noundef %4, ptr noundef %0, i8 noundef zeroext %5) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !67
  br label %21

21:                                               ; preds = %19, %8, %2
  %22 = getelementptr inbounds %struct.ieee80211_sta, ptr %0, i32 0, i32 11
  %23 = load i8, ptr %22, align 1
  %24 = xor i8 %23, -1
  %25 = load i8, ptr @ieee80211_ac_to_qos_mask, align 1
  %26 = and i8 %25, %24
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = getelementptr i8, ptr %0, i32 -1724
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %32, label %73

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %0, i32 -1788
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %36, label %73

36:                                               ; preds = %32, %21
  %37 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 1), align 1
  %38 = and i8 %37, %24
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %0, i32 -1708
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %44, label %73

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %0, i32 -1772
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %48, label %73

48:                                               ; preds = %44, %36
  %49 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 2), align 1
  %50 = and i8 %49, %24
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %0, i32 -1692
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = getelementptr i8, ptr %0, i32 -1756
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %57
  br i1 %59, label %60, label %73

60:                                               ; preds = %56, %48
  %61 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ieee80211_ac_to_qos_mask, i32 0, i32 3), align 1
  %62 = and i8 %61, %24
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %0, i32 -1676
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %65
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %0, i32 -1740
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %69
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %60
  br label %73

73:                                               ; preds = %72, %68, %64, %56, %52, %44, %40, %32, %28
  %74 = phi i1 [ true, %32 ], [ true, %28 ], [ true, %40 ], [ true, %44 ], [ true, %52 ], [ true, %56 ], [ true, %64 ], [ true, %68 ], [ false, %72 ]
  %75 = getelementptr i8, ptr %0, i32 -1952
  tail call fastcc void @ieee80211_send_null_response(ptr noundef %75, i32 noundef %1, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext %74)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_send_null_response(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 10
  %11 = load i8, ptr %10, align 4, !range !14
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 24, i32 26
  %14 = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %13, %15
  %17 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %16, i32 noundef 2592) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %115, label %19

19:                                               ; preds = %5
  %20 = select i1 %12, i16 584, i16 712
  %21 = load i32, ptr %14, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %21
  store ptr %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 14
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr i8, ptr %26, i32 %21
  store ptr %27, ptr %25, align 8
  %28 = tail call ptr @skb_put(ptr noundef nonnull %17, i32 noundef %13) #17
  store i16 %20, ptr %28, align 2
  %29 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %28, i32 0, i32 1
  store i16 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %28, i32 0, i32 2
  %31 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %30, ptr noundef align 8 dereferenceable(6) %31, i32 6, i1 false)
  %32 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %28, i32 0, i32 3
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 58, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %32, ptr noundef align 8 dereferenceable(6) %33, i32 6, i1 false)
  %34 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %28, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %34, ptr noundef align 8 dereferenceable(6) %33, i32 6, i1 false)
  %35 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %28, i32 0, i32 5
  store i16 0, ptr %35, align 2
  %36 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 13, i32 0, i32 5
  store i32 %1, ptr %36, align 8
  %37 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %1
  %38 = load i32, ptr %37, align 4
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 9
  store i16 %39, ptr %40, align 4
  br i1 %12, label %50, label %41

41:                                               ; preds = %19
  %42 = trunc i32 %1 to i16
  %43 = getelementptr inbounds %struct.ieee80211_qos_hdr, ptr %28, i32 0, i32 6
  store i16 %42, ptr %43, align 2
  %44 = icmp eq i32 %2, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = or i16 %42, 16
  store i16 %46, ptr %43, align 2
  br i1 %4, label %47, label %50

47:                                               ; preds = %45
  %48 = load i16, ptr %28, align 2
  %49 = or i16 %48, 8192
  store i16 %49, ptr %28, align 2
  br label %50

50:                                               ; preds = %47, %45, %41, %19
  %51 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3
  %52 = load i32, ptr %51, align 8
  %53 = or i32 %52, 268566529
  store i32 %53, ptr %51, align 8
  %54 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 32
  %55 = load i32, ptr %54, align 8
  %56 = or i32 %55, 2
  store i32 %56, ptr %54, align 8
  br i1 %3, label %57, label %99

57:                                               ; preds = %50
  %58 = shl nuw i32 1, %1
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  %61 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_allow_buffered_frames, i32 0, i32 1), align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = tail call ptr @llvm.thread.pointer() #17
  %65 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 8
  %67 = lshr i32 %66, 5
  %68 = getelementptr i32, ptr @__cpu_online_mask, i32 %67
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %66, 31
  %71 = shl nuw i32 1, %70
  %72 = and i32 %71, %69
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %63
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !58
  %75 = tail call i32 @__traceiter_drv_allow_buffered_frames(ptr noundef null, ptr noundef %9, ptr noundef %60, i16 noundef zeroext %59, i32 noundef 1, i32 noundef %2, i1 noundef zeroext false) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !59
  br label %76

76:                                               ; preds = %74, %63, %57
  %77 = getelementptr inbounds %struct.ieee80211_local, ptr %9, i32 0, i32 8
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.ieee80211_ops, ptr %78, i32 0, i32 61
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  tail call void %80(ptr noundef %9, ptr noundef %60, i16 noundef zeroext %59, i32 noundef 1, i32 noundef %2, i1 noundef zeroext false) #17
  br label %83

83:                                               ; preds = %82, %76
  %84 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = tail call ptr @llvm.thread.pointer() #17
  %88 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %89 = load i32, ptr %88, align 8
  %90 = lshr i32 %89, 5
  %91 = getelementptr i32, ptr @__cpu_online_mask, i32 %90
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %89, 31
  %94 = shl nuw i32 1, %93
  %95 = and i32 %94, %92
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %86
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !41
  %98 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %9) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !42
  br label %99

99:                                               ; preds = %97, %86, %83, %50
  %100 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 6
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.anon.46, ptr %17, i32 0, i32 2
  store ptr %101, ptr %102, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %103 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %7, i32 0, i32 58, i32 9
  %104 = load volatile ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %107, !prof !13

106:                                              ; preds = %99
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1464, i32 noundef 9, ptr noundef null) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  tail call void @kfree_skb_reason(ptr noundef nonnull %17, i32 noundef 0) #17
  br label %115

107:                                              ; preds = %99
  %108 = load ptr, ptr %104, align 4
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 4
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %109, 7
  %113 = and i32 %111, -8
  %114 = or i32 %113, %112
  store i32 %114, ptr %110, align 4
  tail call void @ieee80211_xmit(ptr noundef %7, ptr noundef %0, ptr noundef nonnull %17) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %115

115:                                              ; preds = %107, %106, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_set_buffered(ptr noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -1952
  %5 = zext i8 %1 to i32
  %6 = icmp ugt i8 %1, 15
  br i1 %6, label %7, label %8, !prof !13

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1883, i32 noundef 9, ptr noundef null) #17
  br label %31

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -1912
  %10 = load ptr, ptr %9, align 8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_sta_set_buffered, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = tail call ptr @llvm.thread.pointer() #17
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !68
  %25 = tail call i32 @__traceiter_api_sta_set_buffered(ptr noundef null, ptr noundef %10, ptr noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !69
  br label %26

26:                                               ; preds = %24, %13, %8
  %27 = getelementptr i8, ptr %0, i32 -1660
  br i1 %2, label %28, label %29

28:                                               ; preds = %26
  tail call void @_set_bit(i32 noundef %5, ptr noundef %27) #17
  br label %30

29:                                               ; preds = %26
  tail call void @_clear_bit(i32 noundef %5, ptr noundef %27) #17
  br label %30

30:                                               ; preds = %29, %28
  tail call fastcc void @__sta_info_recalc_tim(ptr noundef %4, i1 noundef zeroext false) #17
  br label %31

31:                                               ; preds = %30, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_register_airtime(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 -2264
  %6 = getelementptr i8, ptr %4, i32 -1908
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_txq, ptr %0, i32 0, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr %struct.ieee80211_local, ptr %7, i32 0, i32 4, i32 %10
  %12 = getelementptr inbounds %struct.ieee80211_txq, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = getelementptr i8, ptr %13, i32 -832
  %16 = getelementptr [4 x %struct.airtime_info], ptr %15, i32 0, i32 %10
  %17 = getelementptr %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 28, i32 %10
  %18 = select i1 %14, ptr %17, ptr %16
  %19 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 5
  %20 = load i16, ptr %19, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %11) #17
  %21 = zext i32 %1 to i64
  %22 = getelementptr inbounds %struct.airtime_info, ptr %18, i32 0, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = add i64 %23, %21
  store i64 %24, ptr %22, align 8
  %25 = zext i32 %2 to i64
  %26 = load i64, ptr %18, align 8
  %27 = add i64 %26, %25
  store i64 %27, ptr %18, align 8
  %28 = getelementptr %struct.ieee80211_local, ptr %7, i32 0, i32 4, i32 %10, i32 7
  %29 = load i64, ptr %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = getelementptr %struct.ieee80211_local, ptr %7, i32 0, i32 4, i32 %10, i32 8
  %33 = load i64, ptr %32, align 8
  br label %41

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.airtime_info, ptr %18, i32 0, i32 9
  %36 = load i16, ptr %35, align 8
  %37 = zext i16 %36 to i64
  %38 = getelementptr inbounds %struct.airtime_info, ptr %18, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = zext i32 %39 to i64
  br label %41

41:                                               ; preds = %34, %31
  %42 = phi i64 [ %29, %31 ], [ %37, %34 ]
  %43 = phi i64 [ %33, %31 ], [ %40, %34 ]
  %44 = and i16 %20, 2
  %45 = icmp eq i16 %44, 0
  %46 = and i16 %20, 1
  %47 = icmp eq i16 %46, 0
  %48 = select i1 %47, i32 0, i32 %1
  %49 = select i1 %45, i32 0, i32 %2
  %50 = add i32 %48, %49
  %51 = shl i32 %50, 8
  %52 = zext i32 %51 to i64
  %53 = lshr i64 %42, 1
  %54 = add nuw i64 %53, %52
  %55 = mul i64 %54, %43
  %56 = lshr i64 %55, 32
  %57 = getelementptr %struct.ieee80211_local, ptr %7, i32 0, i32 4, i32 %10, i32 6
  %58 = load i64, ptr %57, align 8
  %59 = add i64 %56, %58
  store i64 %59, ptr %57, align 8
  %60 = getelementptr inbounds %struct.airtime_info, ptr %18, i32 0, i32 9
  %61 = load i16, ptr %60, align 8
  %62 = lshr i16 %61, 1
  %63 = zext i16 %62 to i32
  %64 = add i32 %51, %63
  %65 = getelementptr inbounds %struct.airtime_info, ptr %18, i32 0, i32 8
  %66 = load i32, ptr %65, align 4
  %67 = mul i32 %64, %66
  %68 = lshr i32 %67, 19
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.airtime_info, ptr %18, i32 0, i32 2
  %71 = load i64, ptr %70, align 8
  %72 = add i64 %71, %69
  store i64 %72, ptr %70, align 8
  tail call void @ieee80211_resort_txq(ptr noundef %7, ptr noundef %0) #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %11) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_resort_txq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_register_airtime(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = zext i8 %1 to i32
  %6 = getelementptr %struct.ieee80211_sta, ptr %0, i32 0, i32 28, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @ieee80211_register_airtime(ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3)
  br label %10

10:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_update_pending_airtime(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr %struct.wiphy, ptr %7, i32 0, i32 14, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %62, label %12

12:                                               ; preds = %5
  %13 = icmp eq ptr %1, null
  %14 = zext i16 %3 to i32
  br i1 %4, label %23, label %15

15:                                               ; preds = %12
  br i1 %13, label %20, label %16

16:                                               ; preds = %15
  %17 = zext i8 %2 to i32
  %18 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 37, i32 %17, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #17, !srcloc !20
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 %14, ptr elementtype(i32) %18) #17, !srcloc !33
  br label %20

20:                                               ; preds = %16, %15
  %21 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #17, !srcloc !20
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 %14, ptr elementtype(i32) %21) #17, !srcloc !33
  br label %62

23:                                               ; preds = %12
  br i1 %13, label %36, label %24

24:                                               ; preds = %23
  %25 = zext i8 %2 to i32
  %26 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 37, i32 %25, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !70
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #17, !srcloc !20
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 %14, ptr elementtype(i32) %26) #17, !srcloc !71
  %28 = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !72
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !73
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #17, !srcloc !20
  br label %31

31:                                               ; preds = %31, %30
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 %28, i32 0, ptr elementtype(i32) %26) #17, !srcloc !74
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %31

35:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !75
  br label %36

36:                                               ; preds = %35, %24, %23
  %37 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !70
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #17, !srcloc !20
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 %14, ptr elementtype(i32) %37) #17, !srcloc !71
  %39 = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !72
  %40 = icmp slt i32 %39, 0
  %41 = load i1, ptr @ieee80211_sta_update_pending_airtime.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %55, !prof !13

44:                                               ; preds = %36
  store i1 true, ptr @ieee80211_sta_update_pending_airtime.__already_done, align 1
  %45 = load ptr, ptr %6, align 8
  %46 = getelementptr inbounds %struct.wiphy, ptr %45, i32 0, i32 56, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.wiphy, ptr %45, i32 0, i32 56
  %51 = load ptr, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi ptr [ %51, %49 ], [ %47, %44 ]
  %54 = zext i8 %2 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1984, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %53, i32 noundef %54, i32 noundef %39, i32 noundef %14) #17
  br label %55

55:                                               ; preds = %52, %36
  br i1 %40, label %56, label %62

56:                                               ; preds = %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !73
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #17, !srcloc !20
  br label %57

57:                                               ; preds = %57, %56
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 %39, i32 0, ptr elementtype(i32) %37) #17, !srcloc !74
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %57

61:                                               ; preds = %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !75
  br label %62

62:                                               ; preds = %61, %55, %20, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_sta_state(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_min_chandef(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_recalc_p2p_go_ps_allowed(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 3
  %5 = load i8, ptr %4, align 2, !range !14
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 49
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %26, label %9

9:                                                ; preds = %23, %1
  %10 = phi ptr [ %24, %23 ], [ %7, %1 ]
  %11 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 23
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sta_info, ptr %10, i32 0, i32 46, i32 22
  %21 = load i8, ptr %20, align 2, !range !14
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19, %14, %9
  %24 = load volatile ptr, ptr %10, align 4
  %25 = icmp eq ptr %24, %6
  br i1 %25, label %26, label %9

26:                                               ; preds = %23, %1
  %27 = icmp ne i8 %5, 0
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i1 [ %27, %26 ], [ false, %19 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 45
  %31 = load i8, ptr %30, align 2, !range !14
  %32 = zext i1 %29 to i8
  %33 = icmp eq i8 %31, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store i8 %32, ptr %30, align 2
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 524288) #17
  br label %35

35:                                               ; preds = %34, %28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vif_dec_num_mcast(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_clear_fast_rx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vif_inc_num_mcast(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_fast_rx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_send_layer2_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i8 @sta_info_tx_streams(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 3, i32 1
  %3 = load i8, ptr %2, align 2, !range !14
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 5
  %7 = load i8, ptr %6, align 8, !range !14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 46, i32 3, i32 4, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 46, i32 3, i32 4, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 46, i32 3, i32 4, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, i8 1, i8 2
  br label %22

22:                                               ; preds = %17, %13, %9
  %23 = phi i8 [ 4, %9 ], [ 3, %13 ], [ %21, %17 ]
  %24 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 3, i32 4, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 2
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = lshr i8 %25, 2
  %30 = and i8 %29, 3
  %31 = add nuw nsw i8 %30, 1
  br label %32

32:                                               ; preds = %28, %22, %5, %1
  %33 = phi i8 [ %31, %28 ], [ 1, %1 ], [ %23, %22 ], [ 8, %5 ]
  ret i8 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sta_set_sinfo(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 31
  %9 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %3
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %14 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  %15 = icmp ult i32 %14, %13
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = ptrtoint ptr %10 to i32
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ %14, %16 ], [ %32, %18 ]
  %20 = phi ptr [ %8, %16 ], [ %31, %18 ]
  %21 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %17
  %24 = inttoptr i32 %23 to ptr
  %25 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %20, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %24, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 %26, %28
  %30 = icmp slt i32 %29, 0
  %31 = select i1 %30, ptr %24, ptr %20
  %32 = tail call i32 @cpumask_next(i32 noundef %19, ptr noundef nonnull @__cpu_possible_mask) #21
  %33 = icmp ult i32 %32, %13
  br i1 %33, label %18, label %34

34:                                               ; preds = %18, %12, %3
  %35 = phi ptr [ %8, %3 ], [ %8, %12 ], [ %31, %18 ]
  %36 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 52
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 23
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 58
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 57, i32 0, i32 24, i32 25
  %44 = load i32, ptr %43, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 34
  store i64 %45, ptr %46, align 8
  %47 = load i32, ptr %39, align 8
  br label %48

48:                                               ; preds = %42, %34
  %49 = phi i32 [ %47, %42 ], [ %40, %34 ]
  %50 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  %51 = icmp eq i32 %49, 4
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 49
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 -1408
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi ptr [ %55, %52 ], [ %5, %48 ]
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %57, i32 0, i32 8
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 32
  %61 = icmp eq i32 %60, 0
  %62 = load i1, ptr @drv_sta_statistics.__already_done, align 1
  %63 = xor i1 %62, true
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %71, !prof !13

65:                                               ; preds = %56
  store i1 true, ptr @drv_sta_statistics.__already_done, align 1
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %57, i32 0, i32 6
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  %69 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %57, i32 0, i32 10
  %70 = select i1 %68, ptr %69, ptr %67
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 561, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %70, i32 noundef %59) #17
  br label %71

71:                                               ; preds = %65, %56
  br i1 %61, label %112, label %72

72:                                               ; preds = %71
  %73 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sta_statistics, i32 0, i32 1), align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = tail call ptr @llvm.thread.pointer() #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !76
  %87 = tail call i32 @__traceiter_drv_sta_statistics(ptr noundef null, ptr noundef %7, ptr noundef %57, ptr noundef %50) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !77
  br label %88

88:                                               ; preds = %86, %75, %72
  %89 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 8
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.ieee80211_ops, ptr %90, i32 0, i32 39
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %57, i32 0, i32 58
  tail call void %92(ptr noundef %7, ptr noundef %95, ptr noundef %50, ptr noundef %1) #17
  br label %96

96:                                               ; preds = %94, %88
  %97 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = tail call ptr @llvm.thread.pointer() #17
  %101 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %102 = load i32, ptr %101, align 8
  %103 = lshr i32 %102, 5
  %104 = getelementptr i32, ptr @__cpu_online_mask, i32 %103
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %102, 31
  %107 = shl nuw i32 1, %106
  %108 = and i32 %107, %105
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %99
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !41
  %111 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %7) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !42
  br label %112

112:                                              ; preds = %110, %99, %96, %71
  %113 = load i64, ptr %1, align 8
  %114 = or i64 %113, 4398315175938
  store i64 %114, ptr %1, align 8
  %115 = load i32, ptr %39, align 8
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 57, i32 0, i32 24, i32 27
  %119 = load i32, ptr %118, align 8
  %120 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 26
  store i32 %119, ptr %120, align 8
  %121 = or i64 %113, 4398315438082
  store i64 %121, ptr %1, align 8
  br label %122

122:                                              ; preds = %117, %112
  %123 = tail call i64 @ktime_get_seconds() #17
  %124 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 30
  %125 = load i32, ptr %124, align 8
  %126 = trunc i64 %123 to i32
  %127 = sub i32 %126, %125
  %128 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 1
  store i32 %127, ptr %128, align 8
  %129 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 29
  %130 = load i64, ptr %129, align 8
  %131 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 3
  store i64 %130, ptr %131, align 8
  %132 = load volatile i32, ptr @jiffies, align 64
  %133 = load ptr, ptr %9, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %157, label %135

135:                                              ; preds = %122
  %136 = load i32, ptr @nr_cpu_ids, align 4
  %137 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  %138 = icmp ult i32 %137, %136
  br i1 %138, label %139, label %157

139:                                              ; preds = %135
  %140 = ptrtoint ptr %133 to i32
  br label %141

141:                                              ; preds = %141, %139
  %142 = phi i32 [ %137, %139 ], [ %155, %141 ]
  %143 = phi ptr [ %8, %139 ], [ %154, %141 ]
  %144 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %142
  %145 = load i32, ptr %144, align 4
  %146 = add i32 %145, %140
  %147 = inttoptr i32 %146 to ptr
  %148 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %143, i32 0, i32 1
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %147, i32 0, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = sub i32 %149, %151
  %153 = icmp slt i32 %152, 0
  %154 = select i1 %153, ptr %147, ptr %143
  %155 = tail call i32 @cpumask_next(i32 noundef %142, ptr noundef nonnull @__cpu_possible_mask) #21
  %156 = icmp ult i32 %155, %136
  br i1 %156, label %141, label %157

157:                                              ; preds = %141, %135, %122
  %158 = phi ptr [ %8, %122 ], [ %8, %135 ], [ %154, %141 ]
  %159 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 34, i32 7
  %160 = load i32, ptr %159, align 8
  %161 = icmp eq i32 %160, 0
  %162 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %158, i32 0, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = sub i32 %160, %163
  %165 = icmp slt i32 %164, 0
  %166 = select i1 %161, i1 true, i1 %165
  %167 = select i1 %166, i32 %163, i32 %160
  %168 = sub i32 %132, %167
  %169 = tail call i32 @jiffies_to_msecs(i32 noundef %168) #17
  %170 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 2
  store i32 %169, ptr %170, align 4
  %171 = load i64, ptr %1, align 8
  %172 = and i64 %171, 16777224
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %188

174:                                              ; preds = %157
  %175 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 5
  store i64 0, ptr %175, align 8
  %176 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 35, i32 1, i32 0
  %177 = load i64, ptr %176, align 8
  store i64 %177, ptr %175, align 8
  %178 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 35, i32 1, i32 1
  %179 = load i64, ptr %178, align 8
  %180 = add i64 %177, %179
  store i64 %180, ptr %175, align 8
  %181 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 35, i32 1, i32 2
  %182 = load i64, ptr %181, align 8
  %183 = add i64 %180, %182
  store i64 %183, ptr %175, align 8
  %184 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 35, i32 1, i32 3
  %185 = load i64, ptr %184, align 8
  %186 = add i64 %183, %185
  store i64 %186, ptr %175, align 8
  %187 = or i64 %171, 16777216
  store i64 %187, ptr %1, align 8
  br label %188

188:                                              ; preds = %174, %157
  %189 = phi i64 [ %187, %174 ], [ %171, %157 ]
  %190 = and i64 %189, 1024
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %210

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 17
  store i32 0, ptr %193, align 8
  %194 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 35
  %195 = load i64, ptr %194, align 8
  %196 = trunc i64 %195 to i32
  store i32 %196, ptr %193, align 8
  %197 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 35, i32 0, i32 1
  %198 = load i64, ptr %197, align 8
  %199 = trunc i64 %198 to i32
  %200 = add i32 %196, %199
  store i32 %200, ptr %193, align 8
  %201 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 35, i32 0, i32 2
  %202 = load i64, ptr %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = add i32 %200, %203
  store i32 %204, ptr %193, align 8
  %205 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 35, i32 0, i32 3
  %206 = load i64, ptr %205, align 8
  %207 = trunc i64 %206 to i32
  %208 = add i32 %204, %207
  store i32 %208, ptr %193, align 8
  %209 = or i64 %189, 1024
  store i64 %209, ptr %1, align 8
  br label %210

210:                                              ; preds = %192, %188
  %211 = phi i64 [ %209, %192 ], [ %189, %188 ]
  %212 = and i64 %211, 8388612
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %274

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 31, i32 9
  %216 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 31, i32 10
  br label %217

217:                                              ; preds = %225, %214
  %218 = load volatile i32, ptr %215, align 4
  %219 = and i32 %218, 1
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %221, %217
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !78
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !79
  %222 = load volatile i32, ptr %215, align 4
  %223 = and i32 %222, 1
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %221

225:                                              ; preds = %221, %217
  %226 = phi i32 [ %218, %217 ], [ %222, %221 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !80
  %227 = load i64, ptr %216, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !81
  %228 = load volatile i32, ptr %215, align 4
  %229 = icmp eq i32 %228, %226
  br i1 %229, label %230, label %217

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 4
  %232 = load i64, ptr %231, align 8
  %233 = add i64 %232, %227
  store i64 %233, ptr %231, align 8
  %234 = load ptr, ptr %9, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %271, label %236

236:                                              ; preds = %230
  %237 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  %238 = load i32, ptr @nr_cpu_ids, align 4
  %239 = icmp ult i32 %237, %238
  br i1 %239, label %240, label %271

240:                                              ; preds = %269, %236
  %241 = phi ptr [ %270, %269 ], [ %234, %236 ]
  %242 = phi i32 [ %266, %269 ], [ %237, %236 ]
  %243 = ptrtoint ptr %241 to i32
  %244 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %242
  %245 = load i32, ptr %244, align 4
  %246 = add i32 %245, %243
  %247 = inttoptr i32 %246 to ptr
  %248 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %247, i32 0, i32 9
  %249 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %247, i32 0, i32 10
  br label %250

250:                                              ; preds = %258, %240
  %251 = load volatile i32, ptr %248, align 4
  %252 = and i32 %251, 1
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %258, label %254

254:                                              ; preds = %254, %250
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !78
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !79
  %255 = load volatile i32, ptr %248, align 4
  %256 = and i32 %255, 1
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %254

258:                                              ; preds = %254, %250
  %259 = phi i32 [ %251, %250 ], [ %255, %254 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !80
  %260 = load i64, ptr %249, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !81
  %261 = load volatile i32, ptr %248, align 4
  %262 = icmp eq i32 %261, %259
  br i1 %262, label %263, label %250

263:                                              ; preds = %258
  %264 = load i64, ptr %231, align 8
  %265 = add i64 %264, %260
  store i64 %265, ptr %231, align 8
  %266 = tail call i32 @cpumask_next(i32 noundef %242, ptr noundef nonnull @__cpu_possible_mask) #21
  %267 = load i32, ptr @nr_cpu_ids, align 4
  %268 = icmp ult i32 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %263
  %270 = load ptr, ptr %9, align 4
  br label %240

271:                                              ; preds = %263, %236, %230
  %272 = load i64, ptr %1, align 8
  %273 = or i64 %272, 8388608
  store i64 %273, ptr %1, align 8
  br label %274

274:                                              ; preds = %271, %210
  %275 = phi i64 [ %273, %271 ], [ %211, %210 ]
  %276 = and i64 %275, 512
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %312

278:                                              ; preds = %274
  %279 = load i32, ptr %8, align 8
  %280 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 16
  store i32 %279, ptr %280, align 4
  %281 = load ptr, ptr %9, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %310, label %283

283:                                              ; preds = %278
  %284 = load i32, ptr @nr_cpu_ids, align 4
  %285 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  %286 = icmp ult i32 %285, %284
  br i1 %286, label %287, label %310

287:                                              ; preds = %283
  %288 = ptrtoint ptr %281 to i32
  %289 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %285
  %290 = load i32, ptr %289, align 4
  %291 = add i32 %290, %288
  %292 = inttoptr i32 %291 to ptr
  %293 = load i32, ptr %292, align 8
  %294 = add i32 %279, %293
  store i32 %294, ptr %280, align 4
  %295 = tail call i32 @cpumask_next(i32 noundef %285, ptr noundef nonnull @__cpu_possible_mask) #21
  %296 = icmp ult i32 %295, %284
  br i1 %296, label %297, label %310

297:                                              ; preds = %297, %287
  %298 = phi i32 [ %308, %297 ], [ %295, %287 ]
  %299 = phi i32 [ %307, %297 ], [ %294, %287 ]
  %300 = load ptr, ptr %9, align 4
  %301 = ptrtoint ptr %300 to i32
  %302 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %298
  %303 = load i32, ptr %302, align 4
  %304 = add i32 %303, %301
  %305 = inttoptr i32 %304 to ptr
  %306 = load i32, ptr %305, align 8
  %307 = add i32 %299, %306
  store i32 %307, ptr %280, align 4
  %308 = tail call i32 @cpumask_next(i32 noundef %298, ptr noundef nonnull @__cpu_possible_mask) #21
  %309 = icmp ult i32 %308, %284
  br i1 %309, label %297, label %310

310:                                              ; preds = %297, %287, %283, %278
  %311 = or i64 %275, 512
  store i64 %311, ptr %1, align 8
  br label %312

312:                                              ; preds = %310, %274
  %313 = phi i64 [ %311, %310 ], [ %275, %274 ]
  %314 = and i64 %313, 2048
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 34, i32 2
  %318 = load i32, ptr %317, align 8
  %319 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 18
  store i32 %318, ptr %319, align 4
  %320 = or i64 %313, 2048
  store i64 %320, ptr %1, align 8
  br label %321

321:                                              ; preds = %316, %312
  %322 = phi i64 [ %320, %316 ], [ %313, %312 ]
  %323 = and i64 %322, 4096
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %321
  %326 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 34, i32 1
  %327 = load i32, ptr %326, align 4
  %328 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 19
  store i32 %327, ptr %328, align 8
  %329 = or i64 %322, 4096
  store i64 %329, ptr %1, align 8
  br label %330

330:                                              ; preds = %325, %321
  %331 = phi i64 [ %329, %325 ], [ %322, %321 ]
  %332 = and i64 %331, 4294967296
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %334, label %350

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 33
  %336 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 37, i32 0
  %337 = load i64, ptr %336, align 8
  %338 = load i64, ptr %335, align 8
  %339 = add i64 %338, %337
  store i64 %339, ptr %335, align 8
  %340 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 37, i32 1
  %341 = load i64, ptr %340, align 8
  %342 = add i64 %339, %341
  store i64 %342, ptr %335, align 8
  %343 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 37, i32 2
  %344 = load i64, ptr %343, align 8
  %345 = add i64 %342, %344
  store i64 %345, ptr %335, align 8
  %346 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 37, i32 3
  %347 = load i64, ptr %346, align 8
  %348 = add i64 %345, %347
  store i64 %348, ptr %335, align 8
  %349 = or i64 %331, 4294967296
  store i64 %349, ptr %1, align 8
  br label %350

350:                                              ; preds = %334, %330
  %351 = phi i64 [ %349, %334 ], [ %331, %330 ]
  %352 = and i64 %351, 549755813888
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %354, label %370

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 32
  %356 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 37, i32 0, i32 1
  %357 = load i64, ptr %356, align 8
  %358 = load i64, ptr %355, align 8
  %359 = add i64 %358, %357
  store i64 %359, ptr %355, align 8
  %360 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 37, i32 1, i32 1
  %361 = load i64, ptr %360, align 8
  %362 = add i64 %359, %361
  store i64 %362, ptr %355, align 8
  %363 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 37, i32 2, i32 1
  %364 = load i64, ptr %363, align 8
  %365 = add i64 %362, %364
  store i64 %365, ptr %355, align 8
  %366 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 37, i32 3, i32 1
  %367 = load i64, ptr %366, align 8
  %368 = add i64 %365, %367
  store i64 %368, ptr %355, align 8
  %369 = or i64 %351, 549755813888
  store i64 %369, ptr %1, align 8
  br label %370

370:                                              ; preds = %354, %350
  %371 = phi i64 [ %369, %354 ], [ %351, %350 ]
  %372 = and i64 %371, 1099511627776
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 37, i32 0, i32 9
  %376 = load i16, ptr %375, align 8
  %377 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 40
  store i16 %376, ptr %377, align 2
  %378 = or i64 %371, 1099511627776
  store i64 %378, ptr %1, align 8
  br label %379

379:                                              ; preds = %374, %370
  %380 = phi i64 [ %378, %374 ], [ %371, %370 ]
  %381 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 31, i32 4
  %382 = load i32, ptr %381, align 8
  %383 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 20
  store i32 %382, ptr %383, align 4
  %384 = load ptr, ptr %9, align 4
  %385 = icmp eq ptr %384, null
  br i1 %385, label %415, label %386

386:                                              ; preds = %379
  %387 = load i32, ptr @nr_cpu_ids, align 4
  %388 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  %389 = icmp ult i32 %388, %387
  br i1 %389, label %390, label %415

390:                                              ; preds = %386
  %391 = ptrtoint ptr %384 to i32
  %392 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %388
  %393 = load i32, ptr %392, align 4
  %394 = add i32 %393, %391
  %395 = inttoptr i32 %394 to ptr
  %396 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %395, i32 0, i32 4
  %397 = load i32, ptr %396, align 8
  %398 = add i32 %382, %397
  store i32 %398, ptr %383, align 4
  %399 = tail call i32 @cpumask_next(i32 noundef %388, ptr noundef nonnull @__cpu_possible_mask) #21
  %400 = icmp ult i32 %399, %387
  br i1 %400, label %401, label %415

401:                                              ; preds = %401, %390
  %402 = phi i32 [ %413, %401 ], [ %399, %390 ]
  %403 = phi i32 [ %412, %401 ], [ %398, %390 ]
  %404 = load ptr, ptr %9, align 4
  %405 = ptrtoint ptr %404 to i32
  %406 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %402
  %407 = load i32, ptr %406, align 4
  %408 = add i32 %407, %405
  %409 = inttoptr i32 %408 to ptr
  %410 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %409, i32 0, i32 4
  %411 = load i32, ptr %410, align 8
  %412 = add i32 %403, %411
  store i32 %412, ptr %383, align 4
  %413 = tail call i32 @cpumask_next(i32 noundef %402, ptr noundef nonnull @__cpu_possible_mask) #21
  %414 = icmp ult i32 %413, %387
  br i1 %414, label %401, label %415

415:                                              ; preds = %401, %390, %386, %379
  %416 = load i32, ptr %39, align 8
  %417 = icmp eq i32 %416, 2
  br i1 %417, label %418, label %428

418:                                              ; preds = %415
  %419 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 58, i32 10
  %420 = load i32, ptr %419, align 8
  %421 = and i32 %420, 1
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %428

423:                                              ; preds = %418
  %424 = or i64 %380, 1610612736
  store i64 %424, ptr %1, align 8
  %425 = tail call i32 @ieee80211_ave_rssi(ptr noundef %39) #17
  %426 = trunc i32 %425 to i8
  %427 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 35
  store i8 %426, ptr %427, align 8
  br label %428

428:                                              ; preds = %423, %418, %415
  %429 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 5
  %430 = load ptr, ptr %429, align 8
  %431 = getelementptr inbounds %struct.ieee80211_hw, ptr %430, i32 0, i32 4
  %432 = load volatile i32, ptr %431, align 4
  %433 = and i32 %432, 16
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %428
  %436 = load volatile i32, ptr %431, align 4
  %437 = and i32 %436, 8
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %464, label %439

439:                                              ; preds = %435, %428
  %440 = load i64, ptr %1, align 8
  %441 = and i64 %440, 128
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %443, label %449

443:                                              ; preds = %439
  %444 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %35, i32 0, i32 5
  %445 = load i32, ptr %444, align 4
  %446 = trunc i32 %445 to i8
  %447 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 9
  store i8 %446, ptr %447, align 1
  %448 = or i64 %440, 128
  store i64 %448, ptr %1, align 8
  br label %449

449:                                              ; preds = %443, %439
  %450 = phi i64 [ %448, %443 ], [ %440, %439 ]
  %451 = load ptr, ptr %9, align 4
  %452 = icmp eq ptr %451, null
  %453 = and i64 %450, 8192
  %454 = icmp eq i64 %453, 0
  %455 = select i1 %452, i1 %454, i1 false
  br i1 %455, label %456, label %464

456:                                              ; preds = %449
  %457 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 32
  %458 = load i32, ptr %457, align 4
  %459 = lshr i32 %458, 10
  %460 = trunc i32 %459 to i8
  %461 = sub i8 0, %460
  %462 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 10
  store i8 %461, ptr %462, align 2
  %463 = or i64 %450, 8192
  store i64 %463, ptr %1, align 8
  br label %464

464:                                              ; preds = %456, %449, %435
  %465 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %35, i32 0, i32 6
  %466 = load i8, ptr %465, align 8
  %467 = icmp ne i8 %466, 0
  %468 = load i64, ptr %1, align 8
  %469 = and i64 %468, 100663296
  %470 = icmp eq i64 %469, 0
  %471 = select i1 %467, i1 %470, i1 false
  br i1 %471, label %472, label %518

472:                                              ; preds = %464
  %473 = or i64 %468, 33554432
  store i64 %473, ptr %1, align 8
  %474 = load ptr, ptr %9, align 4
  %475 = icmp eq ptr %474, null
  br i1 %475, label %476, label %478

476:                                              ; preds = %472
  %477 = or i64 %468, 100663296
  store i64 %477, ptr %1, align 8
  br label %478

478:                                              ; preds = %476, %472
  %479 = phi i64 [ %477, %476 ], [ %473, %472 ]
  %480 = load i8, ptr %465, align 8
  %481 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 11
  store i8 %480, ptr %481, align 1
  %482 = getelementptr %struct.ieee80211_sta_rx_stats, ptr %35, i32 0, i32 7, i32 0
  %483 = load i8, ptr %482, align 1
  %484 = getelementptr %struct.station_info, ptr %1, i32 0, i32 12, i32 0
  store i8 %483, ptr %484, align 1
  %485 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 32, i32 1, i32 0
  %486 = load i32, ptr %485, align 4
  %487 = lshr i32 %486, 10
  %488 = trunc i32 %487 to i8
  %489 = sub i8 0, %488
  %490 = getelementptr %struct.station_info, ptr %1, i32 0, i32 13, i32 0
  store i8 %489, ptr %490, align 1
  %491 = getelementptr %struct.ieee80211_sta_rx_stats, ptr %35, i32 0, i32 7, i32 1
  %492 = load i8, ptr %491, align 1
  %493 = getelementptr %struct.station_info, ptr %1, i32 0, i32 12, i32 1
  store i8 %492, ptr %493, align 1
  %494 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 32, i32 1, i32 1
  %495 = load i32, ptr %494, align 4
  %496 = lshr i32 %495, 10
  %497 = trunc i32 %496 to i8
  %498 = sub i8 0, %497
  %499 = getelementptr %struct.station_info, ptr %1, i32 0, i32 13, i32 1
  store i8 %498, ptr %499, align 1
  %500 = getelementptr %struct.ieee80211_sta_rx_stats, ptr %35, i32 0, i32 7, i32 2
  %501 = load i8, ptr %500, align 1
  %502 = getelementptr %struct.station_info, ptr %1, i32 0, i32 12, i32 2
  store i8 %501, ptr %502, align 1
  %503 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 32, i32 1, i32 2
  %504 = load i32, ptr %503, align 4
  %505 = lshr i32 %504, 10
  %506 = trunc i32 %505 to i8
  %507 = sub i8 0, %506
  %508 = getelementptr %struct.station_info, ptr %1, i32 0, i32 13, i32 2
  store i8 %507, ptr %508, align 1
  %509 = getelementptr %struct.ieee80211_sta_rx_stats, ptr %35, i32 0, i32 7, i32 3
  %510 = load i8, ptr %509, align 1
  %511 = getelementptr %struct.station_info, ptr %1, i32 0, i32 12, i32 3
  store i8 %510, ptr %511, align 1
  %512 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 32, i32 1, i32 3
  %513 = load i32, ptr %512, align 4
  %514 = lshr i32 %513, 10
  %515 = trunc i32 %514 to i8
  %516 = sub i8 0, %515
  %517 = getelementptr %struct.station_info, ptr %1, i32 0, i32 13, i32 3
  store i8 %516, ptr %517, align 1
  br label %518

518:                                              ; preds = %478, %464
  %519 = phi i64 [ %479, %478 ], [ %468, %464 ]
  %520 = and i64 %519, 256
  %521 = icmp eq i64 %520, 0
  br i1 %521, label %522, label %527

522:                                              ; preds = %518
  %523 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 35, i32 2
  %524 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 14
  tail call void @sta_set_rate_info_tx(ptr noundef %0, ptr noundef %523, ptr noundef %524) #17
  %525 = load i64, ptr %1, align 8
  %526 = or i64 %525, 256
  store i64 %526, ptr %1, align 8
  br label %527

527:                                              ; preds = %522, %518
  %528 = phi i64 [ %526, %522 ], [ %519, %518 ]
  %529 = and i64 %528, 16384
  %530 = icmp eq i64 %529, 0
  br i1 %530, label %531, label %630

531:                                              ; preds = %527
  %532 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 15
  %533 = load ptr, ptr %9, align 4
  %534 = icmp eq ptr %533, null
  br i1 %534, label %557, label %535

535:                                              ; preds = %531
  %536 = load i32, ptr @nr_cpu_ids, align 4
  %537 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  %538 = icmp ult i32 %537, %536
  br i1 %538, label %539, label %557

539:                                              ; preds = %535
  %540 = ptrtoint ptr %533 to i32
  br label %541

541:                                              ; preds = %541, %539
  %542 = phi i32 [ %537, %539 ], [ %555, %541 ]
  %543 = phi ptr [ %8, %539 ], [ %554, %541 ]
  %544 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %542
  %545 = load i32, ptr %544, align 4
  %546 = add i32 %545, %540
  %547 = inttoptr i32 %546 to ptr
  %548 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %543, i32 0, i32 1
  %549 = load i32, ptr %548, align 4
  %550 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %547, i32 0, i32 1
  %551 = load i32, ptr %550, align 4
  %552 = sub i32 %549, %551
  %553 = icmp slt i32 %552, 0
  %554 = select i1 %553, ptr %547, ptr %543
  %555 = tail call i32 @cpumask_next(i32 noundef %542, ptr noundef nonnull @__cpu_possible_mask) #21
  %556 = icmp ult i32 %555, %536
  br i1 %556, label %541, label %557

557:                                              ; preds = %541, %535, %531
  %558 = phi ptr [ %8, %531 ], [ %8, %535 ], [ %554, %541 ]
  %559 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %558, i32 0, i32 8
  %560 = load volatile i32, ptr %559, align 8
  %561 = and i32 %560, 65535
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %630, label %563

563:                                              ; preds = %557
  %564 = load ptr, ptr %429, align 8
  %565 = lshr i32 %560, 8
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 15
  %568 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 15, i32 4
  store i8 %567, ptr %568, align 1
  %569 = lshr i32 %561, 13
  switch i32 %569, label %627 [
    i32 3, label %570
    i32 2, label %579
    i32 1, label %585
    i32 4, label %618
  ]

570:                                              ; preds = %563
  store i8 2, ptr %532, align 2
  %571 = trunc i32 %560 to i8
  %572 = and i8 %571, 15
  %573 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 15, i32 1
  store i8 %572, ptr %573, align 1
  %574 = lshr i8 %571, 4
  %575 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 15, i32 3
  store i8 %574, ptr %575, align 2
  %576 = and i32 %560, 4096
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %627, label %578

578:                                              ; preds = %570
  store i8 6, ptr %532, align 2
  br label %627

579:                                              ; preds = %563
  store i8 1, ptr %532, align 2
  %580 = trunc i32 %560 to i8
  %581 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 15, i32 1
  store i8 %580, ptr %581, align 1
  %582 = and i32 %560, 4096
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %627, label %584

584:                                              ; preds = %579
  store i8 5, ptr %532, align 2
  br label %627

585:                                              ; preds = %563
  %586 = lshr i32 %560, 4
  %587 = and i32 %586, 15
  %588 = and i32 %560, 15
  %589 = getelementptr inbounds %struct.ieee80211_hw, ptr %564, i32 0, i32 1
  %590 = load ptr, ptr %589, align 8
  %591 = getelementptr %struct.wiphy, ptr %590, i32 0, i32 53, i32 %587
  %592 = load ptr, ptr %591, align 4
  %593 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %592, i32 0, i32 1
  %594 = load ptr, ptr %593, align 4
  %595 = icmp eq ptr %594, null
  %596 = load i1, ptr @sta_stats_decode_rate.__already_done, align 1
  %597 = xor i1 %596, true
  %598 = select i1 %595, i1 %597, i1 false
  br i1 %598, label %599, label %600, !prof !13

599:                                              ; preds = %585
  store i1 true, ptr @sta_stats_decode_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2173, i32 noundef 9, ptr noundef null) #17
  br label %600

600:                                              ; preds = %599, %585
  br i1 %595, label %627, label %601

601:                                              ; preds = %600
  %602 = load ptr, ptr %593, align 4
  %603 = getelementptr %struct.ieee80211_rate, ptr %602, i32 %588, i32 1
  %604 = load i16, ptr %603, align 4
  %605 = load i8, ptr %568, align 1
  %606 = icmp eq i8 %605, 2
  %607 = zext i1 %606 to i32
  %608 = icmp eq i8 %605, 1
  %609 = zext i16 %604 to i32
  %610 = shl nuw nsw i32 1, %607
  %611 = select i1 %608, i32 4, i32 %610
  %612 = add nsw i32 %609, -1
  %613 = add nsw i32 %612, %611
  %614 = select i1 %608, i32 2, i32 %607
  %615 = lshr i32 %613, %614
  %616 = trunc i32 %615 to i16
  %617 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 15, i32 2
  store i16 %616, ptr %617, align 2
  br label %627

618:                                              ; preds = %563
  store i8 16, ptr %532, align 2
  %619 = trunc i32 %560 to i8
  %620 = and i8 %619, 15
  %621 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 15, i32 1
  store i8 %620, ptr %621, align 1
  %622 = lshr i8 %619, 4
  %623 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 15, i32 3
  store i8 %622, ptr %623, align 2
  %624 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 15, i32 5
  store i8 0, ptr %624, align 2
  %625 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 15, i32 7
  store i8 0, ptr %625, align 2
  %626 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 15, i32 6
  store i8 0, ptr %626, align 1
  br label %627

627:                                              ; preds = %618, %601, %600, %584, %579, %578, %570, %563
  %628 = load i64, ptr %1, align 8
  %629 = or i64 %628, 16384
  store i64 %629, ptr %1, align 8
  br label %630

630:                                              ; preds = %627, %557, %527
  br i1 %2, label %631, label %760

631:                                              ; preds = %630
  %632 = tail call i32 @cfg80211_sinfo_alloc_tid_stats(ptr noundef %1, i32 noundef 3264) #17
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %634, label %760

634:                                              ; preds = %631
  %635 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 37
  %636 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 31, i32 9
  br label %637

637:                                              ; preds = %757, %634
  %638 = phi i32 [ 0, %634 ], [ %758, %757 ]
  %639 = load ptr, ptr %635, align 4
  %640 = getelementptr %struct.cfg80211_tid_stats, ptr %639, i32 %638
  %641 = load ptr, ptr %429, align 8
  %642 = load i32, ptr %640, align 8
  %643 = and i32 %642, 2
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %645, label %704

645:                                              ; preds = %637
  %646 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 31, i32 11, i32 %638
  br label %647

647:                                              ; preds = %655, %645
  %648 = load volatile i32, ptr %636, align 4
  %649 = and i32 %648, 1
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %655, label %651

651:                                              ; preds = %651, %647
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !78
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !79
  %652 = load volatile i32, ptr %636, align 4
  %653 = and i32 %652, 1
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %655, label %651

655:                                              ; preds = %651, %647
  %656 = phi i32 [ %648, %647 ], [ %652, %651 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !80
  %657 = load i64, ptr %646, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !81
  %658 = load volatile i32, ptr %636, align 4
  %659 = icmp eq i32 %658, %656
  br i1 %659, label %660, label %647

660:                                              ; preds = %655
  %661 = getelementptr %struct.cfg80211_tid_stats, ptr %639, i32 %638, i32 1
  %662 = load i64, ptr %661, align 8
  %663 = add i64 %662, %657
  store i64 %663, ptr %661, align 8
  %664 = load ptr, ptr %9, align 4
  %665 = icmp eq ptr %664, null
  br i1 %665, label %701, label %666

666:                                              ; preds = %660
  %667 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  %668 = load i32, ptr @nr_cpu_ids, align 4
  %669 = icmp ult i32 %667, %668
  br i1 %669, label %670, label %701

670:                                              ; preds = %699, %666
  %671 = phi ptr [ %700, %699 ], [ %664, %666 ]
  %672 = phi i32 [ %696, %699 ], [ %667, %666 ]
  %673 = ptrtoint ptr %671 to i32
  %674 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %672
  %675 = load i32, ptr %674, align 4
  %676 = add i32 %675, %673
  %677 = inttoptr i32 %676 to ptr
  %678 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, ptr %677, i32 0, i32 9
  %679 = getelementptr %struct.ieee80211_sta_rx_stats, ptr %677, i32 0, i32 11, i32 %638
  br label %680

680:                                              ; preds = %688, %670
  %681 = load volatile i32, ptr %678, align 4
  %682 = and i32 %681, 1
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %688, label %684

684:                                              ; preds = %684, %680
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !78
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !79
  %685 = load volatile i32, ptr %678, align 4
  %686 = and i32 %685, 1
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %688, label %684

688:                                              ; preds = %684, %680
  %689 = phi i32 [ %681, %680 ], [ %685, %684 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !80
  %690 = load i64, ptr %679, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !81
  %691 = load volatile i32, ptr %678, align 4
  %692 = icmp eq i32 %691, %689
  br i1 %692, label %693, label %680

693:                                              ; preds = %688
  %694 = load i64, ptr %661, align 8
  %695 = add i64 %694, %690
  store i64 %695, ptr %661, align 8
  %696 = tail call i32 @cpumask_next(i32 noundef %672, ptr noundef nonnull @__cpu_possible_mask) #21
  %697 = load i32, ptr @nr_cpu_ids, align 4
  %698 = icmp ult i32 %696, %697
  br i1 %698, label %699, label %701

699:                                              ; preds = %693
  %700 = load ptr, ptr %9, align 4
  br label %670

701:                                              ; preds = %693, %666, %660
  %702 = load i32, ptr %640, align 8
  %703 = or i32 %702, 2
  store i32 %703, ptr %640, align 8
  br label %704

704:                                              ; preds = %701, %637
  %705 = phi i32 [ %703, %701 ], [ %642, %637 ]
  %706 = and i32 %705, 4
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %708, label %713

708:                                              ; preds = %704
  %709 = or i32 %705, 4
  store i32 %709, ptr %640, align 8
  %710 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 35, i32 4, i32 %638
  %711 = load i64, ptr %710, align 8
  %712 = getelementptr %struct.cfg80211_tid_stats, ptr %639, i32 %638, i32 2
  store i64 %711, ptr %712, align 8
  br label %713

713:                                              ; preds = %708, %704
  %714 = phi i32 [ %709, %708 ], [ %705, %704 ]
  %715 = and i32 %714, 8
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %717, label %727

717:                                              ; preds = %713
  %718 = getelementptr inbounds %struct.ieee80211_hw, ptr %641, i32 0, i32 4
  %719 = load volatile i32, ptr %718, align 4
  %720 = and i32 %719, 65536
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %727, label %722

722:                                              ; preds = %717
  %723 = or i32 %714, 8
  store i32 %723, ptr %640, align 8
  %724 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 34, i32 5, i32 %638
  %725 = load i64, ptr %724, align 8
  %726 = getelementptr %struct.cfg80211_tid_stats, ptr %639, i32 %638, i32 3
  store i64 %725, ptr %726, align 8
  br label %727

727:                                              ; preds = %722, %717, %713
  %728 = phi i32 [ %723, %722 ], [ %714, %717 ], [ %714, %713 ]
  %729 = and i32 %728, 16
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %731, label %741

731:                                              ; preds = %727
  %732 = getelementptr inbounds %struct.ieee80211_hw, ptr %641, i32 0, i32 4
  %733 = load volatile i32, ptr %732, align 4
  %734 = and i32 %733, 65536
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %741, label %736

736:                                              ; preds = %731
  %737 = or i32 %728, 16
  store i32 %737, ptr %640, align 8
  %738 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 34, i32 6, i32 %638
  %739 = load i64, ptr %738, align 8
  %740 = getelementptr %struct.cfg80211_tid_stats, ptr %639, i32 %638, i32 4
  store i64 %739, ptr %740, align 8
  br label %741

741:                                              ; preds = %736, %731, %727
  %742 = getelementptr inbounds %struct.ieee80211_local, ptr %641, i32 0, i32 8
  %743 = load ptr, ptr %742, align 4
  %744 = getelementptr inbounds %struct.ieee80211_ops, ptr %743, i32 0, i32 89
  %745 = load ptr, ptr %744, align 4
  %746 = icmp ne ptr %745, null
  %747 = icmp ult i32 %638, 16
  %748 = and i1 %747, %746
  br i1 %748, label %749, label %757

749:                                              ; preds = %741
  %750 = getelementptr inbounds %struct.ieee80211_local, ptr %641, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %750) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %751 = load i32, ptr %640, align 8
  %752 = or i32 %751, 64
  store i32 %752, ptr %640, align 8
  %753 = getelementptr %struct.cfg80211_tid_stats, ptr %639, i32 %638, i32 5
  %754 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 46, i32 28, i32 %638
  %755 = load ptr, ptr %754, align 4
  %756 = getelementptr i8, ptr %755, i32 -164
  tail call void @ieee80211_fill_txq_stats(ptr noundef %753, ptr noundef %756) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  tail call void @_raw_spin_unlock_bh(ptr noundef %750) #17
  br label %757

757:                                              ; preds = %749, %741
  %758 = add nuw nsw i32 %638, 1
  %759 = icmp eq i32 %758, 17
  br i1 %759, label %760, label %637

760:                                              ; preds = %757, %631, %630
  %761 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 21
  store i8 0, ptr %761, align 8
  %762 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 58, i32 1, i32 14
  %763 = load i8, ptr %762, align 4, !range !14
  store i8 %763, ptr %761, align 8
  %764 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 58, i32 1, i32 15
  %765 = load i8, ptr %764, align 1, !range !14
  %766 = icmp eq i8 %765, 0
  br i1 %766, label %769, label %767

767:                                              ; preds = %760
  %768 = or i8 %763, 2
  store i8 %768, ptr %761, align 8
  br label %769

769:                                              ; preds = %767, %760
  %770 = phi i8 [ %768, %767 ], [ %763, %760 ]
  %771 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 58, i32 1, i32 16
  %772 = load i8, ptr %771, align 2, !range !14
  %773 = icmp eq i8 %772, 0
  br i1 %773, label %776, label %774

774:                                              ; preds = %769
  %775 = or i8 %770, 4
  store i8 %775, ptr %761, align 8
  br label %776

776:                                              ; preds = %774, %769
  %777 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 58, i32 1, i32 18
  %778 = load i8, ptr %777, align 8
  %779 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 21, i32 1
  store i8 %778, ptr %779, align 1
  %780 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 58, i32 1, i32 19
  %781 = load i16, ptr %780, align 2
  %782 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 21, i32 2
  store i16 %781, ptr %782, align 2
  %783 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 22
  %784 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 22, i32 1
  store i32 0, ptr %784, align 4
  store i32 254, ptr %783, align 4
  %785 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  %786 = load volatile i32, ptr %785, align 4
  %787 = and i32 %786, 8
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %790, label %789

789:                                              ; preds = %776
  store i32 2, ptr %784, align 4
  br label %790

790:                                              ; preds = %789, %776
  %791 = phi i32 [ 2, %789 ], [ 0, %776 ]
  %792 = load volatile i32, ptr %785, align 4
  %793 = and i32 %792, 16
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %797, label %795

795:                                              ; preds = %790
  %796 = or i32 %791, 4
  store i32 %796, ptr %784, align 4
  br label %797

797:                                              ; preds = %795, %790
  %798 = phi i32 [ %796, %795 ], [ %791, %790 ]
  %799 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 10
  %800 = load i8, ptr %799, align 4, !range !14
  %801 = icmp eq i8 %800, 0
  br i1 %801, label %804, label %802

802:                                              ; preds = %797
  %803 = or i32 %798, 8
  store i32 %803, ptr %784, align 4
  br label %804

804:                                              ; preds = %802, %797
  %805 = phi i32 [ %803, %802 ], [ %798, %797 ]
  %806 = load volatile i32, ptr %785, align 4
  %807 = and i32 %806, 128
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %811, label %809

809:                                              ; preds = %804
  %810 = or i32 %805, 16
  store i32 %810, ptr %784, align 4
  br label %811

811:                                              ; preds = %809, %804
  %812 = phi i32 [ %810, %809 ], [ %805, %804 ]
  %813 = load volatile i32, ptr %785, align 4
  %814 = and i32 %813, 1
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %818, label %816

816:                                              ; preds = %811
  %817 = or i32 %812, 32
  store i32 %817, ptr %784, align 4
  br label %818

818:                                              ; preds = %816, %811
  %819 = phi i32 [ %817, %816 ], [ %812, %811 ]
  %820 = load volatile i32, ptr %785, align 4
  %821 = and i32 %820, 2
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %825, label %823

823:                                              ; preds = %818
  %824 = or i32 %819, 128
  store i32 %824, ptr %784, align 4
  br label %825

825:                                              ; preds = %823, %818
  %826 = phi i32 [ %824, %823 ], [ %819, %818 ]
  %827 = load volatile i32, ptr %785, align 4
  %828 = and i32 %827, 2048
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %832, label %830

830:                                              ; preds = %825
  %831 = or i32 %826, 64
  store i32 %831, ptr %784, align 4
  br label %832

832:                                              ; preds = %830, %825
  %833 = tail call i32 @sta_get_expected_throughput(ptr noundef %0)
  %834 = icmp eq i32 %833, 0
  %835 = load i64, ptr %1, align 8
  br i1 %834, label %839, label %836

836:                                              ; preds = %832
  %837 = or i64 %835, 134217728
  store i64 %837, ptr %1, align 8
  %838 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 31
  store i32 %833, ptr %838, align 4
  br label %839

839:                                              ; preds = %836, %832
  %840 = phi i64 [ %837, %836 ], [ %835, %832 ]
  %841 = and i64 %840, 17179869184
  %842 = icmp eq i64 %841, 0
  br i1 %842, label %843, label %852

843:                                              ; preds = %839
  %844 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 34, i32 9
  %845 = load i8, ptr %844, align 1, !range !14
  %846 = icmp eq i8 %845, 0
  br i1 %846, label %852, label %847

847:                                              ; preds = %843
  %848 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 34, i32 8
  %849 = load i8, ptr %848, align 4
  %850 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 38
  store i8 %849, ptr %850, align 8
  %851 = or i64 %840, 17179869184
  store i64 %851, ptr %1, align 8
  br label %852

852:                                              ; preds = %847, %843, %839
  %853 = phi i64 [ %851, %847 ], [ %840, %843 ], [ %840, %839 ]
  %854 = and i64 %853, 34359738368
  %855 = icmp eq i64 %854, 0
  br i1 %855, label %856, label %868

856:                                              ; preds = %852
  %857 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 34, i32 9
  %858 = load i8, ptr %857, align 1, !range !14
  %859 = icmp eq i8 %858, 0
  br i1 %859, label %868, label %860

860:                                              ; preds = %856
  %861 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 34, i32 10
  %862 = load i32, ptr %861, align 4
  %863 = lshr i32 %862, 10
  %864 = trunc i32 %863 to i8
  %865 = sub i8 0, %864
  %866 = getelementptr inbounds %struct.station_info, ptr %1, i32 0, i32 39
  store i8 %865, ptr %866, align 1
  %867 = or i64 %853, 34359738368
  store i64 %867, ptr %1, align 8
  br label %868

868:                                              ; preds = %860, %856, %852
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_ave_rssi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sta_set_rate_info_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_sinfo_alloc_tid_stats(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sta_get_expected_throughput(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2097152
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 58
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.rate_control_ops, ptr %15, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 11
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 %17(ptr noundef %21) #17
  br label %69

23:                                               ; preds = %14, %10, %1
  %24 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  %25 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_get_expected_throughput, i32 0, i32 1), align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = tail call ptr @llvm.thread.pointer() #17
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 5
  %32 = getelementptr i32, ptr @__cpu_online_mask, i32 %31
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %30, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %33
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !82
  %39 = tail call i32 @__traceiter_drv_get_expected_throughput(ptr noundef null, ptr noundef %24) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !83
  br label %40

40:                                               ; preds = %38, %27, %23
  %41 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ieee80211_ops, ptr %42, i32 0, i32 84
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 21
  %48 = load i8, ptr %47, align 4, !range !14
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = tail call i32 %44(ptr noundef %5, ptr noundef %24) #17
  br label %52

52:                                               ; preds = %50, %46, %40
  %53 = phi i32 [ %51, %50 ], [ 0, %46 ], [ 0, %40 ]
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_u32, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = tail call ptr @llvm.thread.pointer() #17
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = lshr i32 %59, 5
  %61 = getelementptr i32, ptr @__cpu_online_mask, i32 %60
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %59, 31
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, %62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %56
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !84
  %68 = tail call i32 @__traceiter_drv_return_u32(ptr noundef null, ptr noundef %5, i32 noundef %53) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !85
  br label %69

69:                                               ; preds = %67, %56, %52, %19
  %70 = phi i32 [ %22, %19 ], [ %53, %52 ], [ %53, %56 ], [ %53, %67 ]
  ret i32 %70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ieee80211_sta_set_expected_throughput(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr i8, ptr %0, i32 -1908
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_ops, ptr %8, i32 0, i32 89
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %2
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = getelementptr i8, ptr %0, i32 -1912
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, ptr %16, i32 0, i32 48
  %18 = load i32, ptr %17, align 8
  %19 = mul i32 %18, 6000
  %20 = icmp ugt i32 %19, %1
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %12
  br label %22

22:                                               ; preds = %21, %14
  %23 = phi i32 [ 19531, %21 ], [ 48828, %14 ]
  %24 = phi i32 [ 97656, %21 ], [ 292968, %14 ]
  %25 = phi i8 [ 1, %21 ], [ 0, %14 ]
  %26 = getelementptr i8, ptr %0, i32 -216
  store i32 %23, ptr %26, align 8
  %27 = getelementptr i8, ptr %0, i32 -208
  store i32 %24, ptr %27, align 8
  %28 = getelementptr i8, ptr %0, i32 -200
  store i8 %25, ptr %28, align 8
  br label %29

29:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #13 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_new_sta(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sta_info_hash_del(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 50
  %4 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %5 = load volatile ptr, ptr %3, align 4
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 50, i32 0, i32 3, i32 3
  %7 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 7, i32 2
  br label %8

8:                                                ; preds = %175, %2
  %9 = phi ptr [ %5, %2 ], [ %178, %175 ]
  %10 = load i16, ptr %6, align 2
  %11 = zext i16 %10 to i32
  %12 = sub nsw i32 0, %11
  %13 = getelementptr i8, ptr %7, i32 %12
  %14 = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = add i32 %15, -559038731
  %17 = getelementptr i8, ptr %13, i32 5
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = add i32 %20, %16
  %22 = getelementptr i8, ptr %13, i32 4
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = add i32 %21, %24
  %26 = getelementptr i8, ptr %13, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw i32 %28, 24
  %30 = add i32 %29, %16
  %31 = getelementptr i8, ptr %13, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 16
  %35 = add i32 %30, %34
  %36 = getelementptr i8, ptr %13, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = add i32 %35, %39
  %41 = load i8, ptr %13, align 1
  %42 = zext i8 %41 to i32
  %43 = add i32 %40, %42
  %44 = xor i32 %25, %16
  %45 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 14) #17
  %46 = sub i32 %44, %45
  %47 = xor i32 %43, %46
  %48 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 11) #17
  %49 = sub i32 %47, %48
  %50 = xor i32 %49, %25
  %51 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 25) #17
  %52 = sub i32 %50, %51
  %53 = xor i32 %52, %46
  %54 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 16) #17
  %55 = sub i32 %53, %54
  %56 = xor i32 %55, %49
  %57 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 4) #17
  %58 = sub i32 %56, %57
  %59 = xor i32 %58, %52
  %60 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 14) #17
  %61 = sub i32 %59, %60
  %62 = xor i32 %61, %55
  %63 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 24) #17
  %64 = sub i32 %62, %63
  %65 = load i32, ptr %9, align 64
  %66 = add i32 %65, -1
  %67 = and i32 %64, %66
  %68 = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71, !prof !8

71:                                               ; preds = %8
  %72 = tail call ptr @__rht_bucket_nested(ptr noundef %9, i32 noundef %67) #17
  br label %75

73:                                               ; preds = %8
  %74 = getelementptr %struct.bucket_table, ptr %9, i32 0, i32 8, i32 %67
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi ptr [ %72, %71 ], [ %74, %73 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %175, label %78

78:                                               ; preds = %75
  %79 = tail call ptr @llvm.thread.pointer() #17
  %80 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %81 = load volatile i32, ptr %80, align 4
  %82 = add i32 %81, 512
  store volatile i32 %82, ptr %80, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !18
  br label %83

83:                                               ; preds = %97, %78
  %84 = load volatile i32, ptr %76, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %92, !prof !19

87:                                               ; preds = %83
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %76) #17, !srcloc !20
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %76, ptr nonnull %76, i32 1, ptr nonnull elementtype(i32) %76) #17, !srcloc !21
  %89 = extractvalue { i32, i32, i32 } %88, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %98, label %92, !prof !8

92:                                               ; preds = %87, %83
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  br label %93

93:                                               ; preds = %93, %92
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !25
  %94 = load volatile i32, ptr %76, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %93

97:                                               ; preds = %93
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !26
  br label %83

98:                                               ; preds = %87
  %99 = load ptr, ptr %76, align 4
  %100 = ptrtoint ptr %99 to i32
  %101 = and i32 %100, -2
  %102 = icmp eq i32 %101, 0
  %103 = ptrtoint ptr %76 to i32
  %104 = or i32 %103, 1
  %105 = select i1 %102, i32 %104, i32 %101
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %171

108:                                              ; preds = %98
  %109 = inttoptr i32 %105 to ptr
  %110 = icmp eq ptr %4, %109
  br i1 %110, label %123, label %113

111:                                              ; preds = %144
  %112 = icmp eq ptr %145, %4
  br i1 %112, label %123, label %113

113:                                              ; preds = %111, %108
  %114 = phi ptr [ %145, %111 ], [ %109, %108 ]
  br label %115

115:                                              ; preds = %115, %113
  %116 = phi ptr [ %118, %115 ], [ %114, %113 ]
  %117 = getelementptr inbounds %struct.rhlist_head, ptr %116, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = icmp ne ptr %118, null
  %120 = icmp ne ptr %118, %4
  %121 = and i1 %119, %120
  br i1 %121, label %115, label %122

122:                                              ; preds = %115
  br i1 %119, label %140, label %144

123:                                              ; preds = %111, %108
  %124 = phi ptr [ %114, %111 ], [ null, %108 ]
  %125 = load ptr, ptr %4, align 4
  %126 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 3, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %123
  store volatile ptr %125, ptr %127, align 4
  br label %130

130:                                              ; preds = %129, %123
  %131 = phi ptr [ %127, %129 ], [ %125, %123 ]
  %132 = icmp eq ptr %124, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !86
  store volatile ptr %131, ptr %124, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %76) #17, !srcloc !20
  %134 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %76, ptr nonnull %76, i32 1, ptr nonnull elementtype(i32) %76) #17, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !29
  br label %149

135:                                              ; preds = %130
  %136 = ptrtoint ptr %131 to i32
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %138, ptr %131, ptr null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !31
  store volatile ptr %139, ptr %76, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !32
  br label %149

140:                                              ; preds = %122
  %141 = getelementptr inbounds %struct.rhlist_head, ptr %116, i32 0, i32 1
  %142 = getelementptr inbounds %struct.rhlist_head, ptr %118, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  store volatile ptr %143, ptr %141, align 4
  br label %171

144:                                              ; preds = %122
  %145 = load ptr, ptr %114, align 4
  %146 = ptrtoint ptr %145 to i32
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %111, label %171

149:                                              ; preds = %135, %133
  tail call fastcc void @local_bh_enable() #17
  br i1 %128, label %150, label %180

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 50, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %151) #17, !srcloc !20
  %152 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %151, ptr %151, i32 1, ptr elementtype(i32) %151) #17, !srcloc !56
  %153 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 50, i32 0, i32 3, i32 6
  %154 = load i8, ptr %153, align 2, !range !14
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %180, label %156

156:                                              ; preds = %150
  %157 = load volatile i32, ptr %151, align 4
  %158 = load i32, ptr %9, align 64
  %159 = mul i32 %158, 3
  %160 = udiv i32 %159, 10
  %161 = icmp ult i32 %157, %160
  br i1 %161, label %162, label %180

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 50, i32 0, i32 3, i32 5
  %164 = load i16, ptr %163, align 4
  %165 = zext i16 %164 to i32
  %166 = icmp ugt i32 %158, %165
  br i1 %166, label %167, label %180, !prof !13

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 50, i32 0, i32 5
  %169 = load ptr, ptr @system_wq, align 4
  %170 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %169, ptr noundef %168) #17
  br label %180

171:                                              ; preds = %144, %140, %98
  %172 = phi i1 [ false, %98 ], [ true, %140 ], [ false, %144 ]
  %173 = phi i32 [ -2, %98 ], [ 0, %140 ], [ -2, %144 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %76) #17, !srcloc !20
  %174 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %76, ptr nonnull %76, i32 1, ptr nonnull elementtype(i32) %76) #17, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !29
  tail call fastcc void @local_bh_enable() #17
  br i1 %172, label %180, label %175

175:                                              ; preds = %171, %75
  %176 = phi i32 [ %173, %171 ], [ -2, %75 ]
  %177 = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 5
  %178 = load volatile ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %8

180:                                              ; preds = %175, %171, %167, %162, %156, %150, %149
  %181 = phi i32 [ 0, %149 ], [ 0, %150 ], [ 0, %167 ], [ 0, %162 ], [ 0, %156 ], [ %176, %175 ], [ 0, %171 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  ret i32 %181
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cleanup_single_sta(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 512
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load volatile i32, ptr %6, align 4
  %16 = and i32 %15, 33554432
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %14, %10, %1
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 58
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, -3
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %82

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 49
  %25 = load ptr, ptr %24, align 4
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %6) #17
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %6) #17
  tail call void @_clear_bit(i32 noundef 25, ptr noundef %6) #17
  %26 = getelementptr inbounds %struct.ieee80211_if_ap, ptr %25, i32 0, i32 6, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #17, !srcloc !20
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #17, !srcloc !56
  br label %28

28:                                               ; preds = %23, %14
  %29 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 28
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %39, %28
  %33 = phi i32 [ %40, %39 ], [ 0, %28 ]
  %34 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 46, i32 28, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %35, i32 -164
  tail call void @ieee80211_txq_purge(ptr noundef %5, ptr noundef %38) #17
  br label %39

39:                                               ; preds = %37, %32
  %40 = add nuw nsw i32 %33, 1
  %41 = icmp eq i32 %40, 17
  br i1 %41, label %42, label %32

42:                                               ; preds = %39, %28
  %43 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 90
  %44 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 0
  %45 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %43, align 4
  %48 = sub i32 %47, %46
  store i32 %48, ptr %43, align 4
  tail call void @ieee80211_purge_tx_queue(ptr noundef %5, ptr noundef %44) #17
  %49 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 26, i32 0
  tail call void @ieee80211_purge_tx_queue(ptr noundef %5, ptr noundef %49) #17
  %50 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 1
  %51 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 1, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %43, align 4
  %54 = sub i32 %53, %52
  store i32 %54, ptr %43, align 4
  tail call void @ieee80211_purge_tx_queue(ptr noundef %5, ptr noundef %50) #17
  %55 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 26, i32 1
  tail call void @ieee80211_purge_tx_queue(ptr noundef %5, ptr noundef %55) #17
  %56 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 2
  %57 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 2, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = load i32, ptr %43, align 4
  %60 = sub i32 %59, %58
  store i32 %60, ptr %43, align 4
  tail call void @ieee80211_purge_tx_queue(ptr noundef %5, ptr noundef %56) #17
  %61 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 26, i32 2
  tail call void @ieee80211_purge_tx_queue(ptr noundef %5, ptr noundef %61) #17
  %62 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 3
  %63 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 25, i32 3, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %43, align 4
  %66 = sub i32 %65, %64
  store i32 %66, ptr %43, align 4
  tail call void @ieee80211_purge_tx_queue(ptr noundef %5, ptr noundef %62) #17
  %67 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 26, i32 3
  tail call void @ieee80211_purge_tx_queue(ptr noundef %5, ptr noundef %67) #17
  %68 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 17
  %69 = tail call zeroext i1 @cancel_work_sync(ptr noundef %68) #17
  br label %70

70:                                               ; preds = %79, %42
  %71 = phi i32 [ 0, %42 ], [ %80, %79 ]
  %72 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 38, i32 10, i32 %71
  %73 = load ptr, ptr %72, align 4
  tail call void @kfree(ptr noundef %73) #17
  %74 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 38, i32 9, i32 %71
  %75 = load volatile ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %75, i32 0, i32 3
  tail call void @ieee80211_purge_tx_queue(ptr noundef %5, ptr noundef %78) #17
  tail call void @kfree(ptr noundef nonnull %75) #17
  br label %79

79:                                               ; preds = %77, %70
  %80 = add nuw nsw i32 %71, 1
  %81 = icmp eq i32 %80, 16
  br i1 %81, label %82, label %70

82:                                               ; preds = %79, %18
  tail call void @sta_info_free(ptr undef, ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_txq_purge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_purge_tx_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_set_tim(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_tear_down_BA_sessions(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sync_rx_queues(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_tdls_cancel_channel_switch(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sta_pre_rcu_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_sta_keys(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_del_sta_sinfo(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_destroy_frag_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sta_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_schedule_txq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_wake_tx_queue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_allow_buffered_frames(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_release_buffered_frames(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_sta_block_awake(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_eosp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_send_eosp_nullfunc(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_xmit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_sta_set_buffered(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sta_statistics(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_fill_txq_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_get_expected_throughput(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_u32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind readonly willreturn }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2156265513}
!10 = !{i64 2156268947}
!11 = !{i64 2149113137}
!12 = !{i64 2149113354}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i8 0, i8 2}
!15 = !{i64 2148926907}
!16 = !{!"branch_weights", i32 2002, i32 2000}
!17 = !{i64 2159696197}
!18 = !{i64 2150934039}
!19 = !{!"branch_weights", i32 2146410443, i32 1073205}
!20 = !{i64 610810, i64 2148100781, i64 2148100807, i64 2148100854, i64 2148100876, i64 2148100904, i64 2148100924}
!21 = !{i64 2148120658, i64 2148120690, i64 2148120719, i64 2148120753, i64 2148120784, i64 2148120807}
!22 = !{i64 2148221998}
!23 = !{i64 2150934150}
!24 = !{i64 2150934379}
!25 = !{i64 2150934221}
!26 = !{i64 2150934461}
!27 = !{i64 2148220963}
!28 = !{i64 2148119117, i64 2148119149, i64 2148119178, i64 2148119212, i64 2148119243, i64 2148119266}
!29 = !{i64 2150935022}
!30 = !{i64 2156300476}
!31 = !{i64 2156259045}
!32 = !{i64 2156261269}
!33 = !{i64 2148112196, i64 2148112222, i64 2148112251, i64 2148112285, i64 2148112316, i64 2148112339}
!34 = !{i64 2150794414}
!35 = !{i64 2157773377}
!36 = !{i64 2157773541}
!37 = !{i64 2157491241}
!38 = !{i64 2157491401}
!39 = !{i64 2158099526}
!40 = !{i64 2158099708}
!41 = !{i64 2157478371}
!42 = !{i64 2157478523}
!43 = !{i64 2159300725}
!44 = !{i64 2159300931}
!45 = !{i64 2158085241}
!46 = !{i64 2158085431}
!47 = !{!"auto-init"}
!48 = !{i64 2157978289}
!49 = !{i64 2157978473}
!50 = !{i64 2159330484}
!51 = !{i64 2159330664}
!52 = !{i64 2148994782}
!53 = !{i64 2148990606}
!54 = !{i64 2148990681, i64 2148990708, i64 2148990755, i64 2148990777, i64 2148990805, i64 2148990825}
!55 = !{i64 2149017785}
!56 = !{i64 2148114553, i64 2148114579, i64 2148114608, i64 2148114642, i64 2148114673, i64 2148114696}
!57 = !{i32 0, i32 33}
!58 = !{i64 2158454436}
!59 = !{i64 2158454692}
!60 = !{i64 2158438582}
!61 = !{i64 2158438842}
!62 = !{i64 2158999827}
!63 = !{i64 2159000011}
!64 = !{i64 2159085877}
!65 = !{i64 2159086025}
!66 = !{i64 2159099233}
!67 = !{i64 2159099419}
!68 = !{i64 2159117528}
!69 = !{i64 2159117730}
!70 = !{i64 2148212875}
!71 = !{i64 2148115237, i64 2148115269, i64 2148115298, i64 2148115332, i64 2148115363, i64 2148115386}
!72 = !{i64 2148213078}
!73 = !{i64 2148225622}
!74 = !{i64 596873, i64 596897, i64 596918, i64 596935, i64 596952}
!75 = !{i64 2148225822}
!76 = !{i64 2158039649}
!77 = !{i64 2158039831}
!78 = !{i64 2153673295}
!79 = !{i64 2153673137}
!80 = !{i64 2153673439}
!81 = !{i64 2149450358}
!82 = !{i64 2158695132}
!83 = !{i64 2158695304}
!84 = !{i64 2157517007}
!85 = !{i64 2157517167}
!86 = !{i64 2156327524}
