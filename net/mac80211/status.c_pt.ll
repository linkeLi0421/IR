; ModuleID = '/llk/IR/net/mac80211/status.c_pt.bc'
source_filename = "../net/mac80211/status.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_tx_status_irqsafe:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_tx_status_irqsafe\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_tx_status_irqsafe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_tx_status:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_tx_status\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_tx_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_tx_status_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_tx_status_ext\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_tx_status_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_tx_rate_update:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_tx_rate_update\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_tx_rate_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_tx_status_8023:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_tx_status_8023\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_tx_status_8023:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_report_low_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_report_low_ack\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_report_low_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_free_txskb:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_free_txskb\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_free_txskb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.ieee80211_tx_status = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_radiotap_header = type { i8, i8, i16, i32, [0 x i32] }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_radiotap_he = type { i16, i16, i16, i16, i16, i16 }
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
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.133 }
%union.anon.133 = type { %struct.anon.137, [32 x i8] }
%struct.anon.137 = type { i64 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.117, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
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
%struct.anon.117 = type { i64, i64, i8 }
%struct.ieee80211_bar = type { i16, i16, [6 x i8], [6 x i8], i16, i16 }
%struct.tid_ampdu_tx = type { %struct.callback_head, %struct.timer_list, %struct.timer_list, %struct.sk_buff_head, ptr, i32, i32, i16, i8, i8, i8, i16, i16, i16, i8, i8, i8 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.152 }
%union.anon.152 = type { %struct.anon.158, [16 x i8] }
%struct.anon.158 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.165 = type { i8, %union.anon.166 }
%union.anon.166 = type <{ %struct.anon.171, [17 x i8] }>
%struct.anon.171 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__kstrtab_ieee80211_tx_status_irqsafe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_tx_status_irqsafe = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_tx_status_irqsafe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_tx_status_irqsafe to i32), ptr @__kstrtab_ieee80211_tx_status_irqsafe, ptr @__kstrtabns_ieee80211_tx_status_irqsafe }, section "___ksymtab+ieee80211_tx_status_irqsafe", align 4
@ieee80211_tx_monitor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [22 x i8] c"net/mac80211/status.c\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"\013ieee80211_tx_status: headroom too small\0A\00", align 1
@__kstrtab_ieee80211_tx_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_tx_status = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_tx_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_tx_status to i32), ptr @__kstrtab_ieee80211_tx_status, ptr @__kstrtabns_ieee80211_tx_status }, section "___ksymtab+ieee80211_tx_status", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_ieee80211_tx_status_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_tx_status_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_tx_status_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_tx_status_ext to i32), ptr @__kstrtab_ieee80211_tx_status_ext, ptr @__kstrtabns_ieee80211_tx_status_ext }, section "___ksymtab+ieee80211_tx_status_ext", align 4
@__kstrtab_ieee80211_tx_rate_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_tx_rate_update = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_tx_rate_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_tx_rate_update to i32), ptr @__kstrtab_ieee80211_tx_rate_update, ptr @__kstrtabns_ieee80211_tx_rate_update }, section "___ksymtab+ieee80211_tx_rate_update", align 4
@__kstrtab_ieee80211_tx_status_8023 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_tx_status_8023 = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_tx_status_8023 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_tx_status_8023 to i32), ptr @__kstrtab_ieee80211_tx_status_8023, ptr @__kstrtabns_ieee80211_tx_status_8023 }, section "___ksymtab+ieee80211_tx_status_8023", align 4
@__kstrtab_ieee80211_report_low_ack = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_report_low_ack = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_report_low_ack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_report_low_ack to i32), ptr @__kstrtab_ieee80211_report_low_ack, ptr @__kstrtabns_ieee80211_report_low_ack }, section "___ksymtab+ieee80211_report_low_ack", align 4
@__kstrtab_ieee80211_free_txskb = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_free_txskb = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_free_txskb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_free_txskb to i32), ptr @__kstrtab_ieee80211_free_txskb, ptr @__kstrtabns_ieee80211_free_txskb }, section "___ksymtab+ieee80211_free_txskb", align 4
@ieee80211_add_tx_radiotap_header.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid SU BW %d\0A\00", align 1
@ieee802_1d_to_ac = external dso_local local_unnamed_addr constant [8 x i32], align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"\014Unknown status report in ack skb\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_ieee80211_free_txskb, ptr @__ksymtab_ieee80211_report_low_ack, ptr @__ksymtab_ieee80211_tx_rate_update, ptr @__ksymtab_ieee80211_tx_status, ptr @__ksymtab_ieee80211_tx_status_8023, ptr @__ksymtab_ieee80211_tx_status_ext, ptr @__ksymtab_ieee80211_tx_status_irqsafe], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_tx_status_irqsafe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, -8
  %7 = or i16 %6, 2
  store i16 %7, ptr %4, align 8
  %8 = load i32, ptr %3, align 8
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 43
  %12 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 44
  %13 = select i1 %10, ptr %12, ptr %11
  tail call void @skb_queue_tail(ptr noundef %13, ptr noundef %1) #7
  %14 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 43, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 44, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %15
  %19 = icmp sgt i32 %18, 128
  br i1 %19, label %20, label %27

20:                                               ; preds = %24, %2
  %21 = phi i32 [ %25, %24 ], [ %18, %2 ]
  %22 = tail call ptr @skb_dequeue(ptr noundef %12) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  tail call fastcc void @ieee80211_report_used_skb(ptr noundef %0, ptr noundef nonnull %22, i1 noundef zeroext true) #7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %22, i32 noundef 1) #7
  %25 = add nsw i32 %21, -1
  %26 = icmp sgt i32 %21, 129
  br i1 %26, label %20, label %27

27:                                               ; preds = %24, %20, %2
  %28 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 42, i32 1
  %29 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %28) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 42
  tail call void @__tasklet_schedule(ptr noundef %32) #7
  br label %33

33:                                               ; preds = %31, %27
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_free_txskb(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @ieee80211_report_used_skb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_tx_monitor(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr noundef readonly %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %9 = icmp eq ptr %6, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %6, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i8, ptr %12, align 2
  %16 = and i8 %15, 59
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %14, %10, %7
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %20 = load i8, ptr %19, align 8
  %21 = icmp sgt i8 %20, -1
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %24 = load i16, ptr %23, align 1
  %25 = and i16 %24, 8448
  %26 = icmp eq i16 %25, 0
  %27 = select i1 %26, i32 13, i32 11
  br label %28

28:                                               ; preds = %22, %18
  %29 = phi i32 [ 11, %18 ], [ %27, %22 ]
  br i1 %9, label %54, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %6, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr %32, align 2
  br label %36

36:                                               ; preds = %34, %14
  %37 = phi i8 [ %35, %34 ], [ %15, %14 ]
  %38 = phi i32 [ %29, %34 ], [ 13, %14 ]
  %39 = zext i8 %37 to i32
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = add nuw nsw i32 %38, 3
  br label %69

44:                                               ; preds = %36
  %45 = and i32 %39, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = add nuw nsw i32 %38, 13
  br label %69

49:                                               ; preds = %44
  %50 = and i32 %39, 16
  %51 = icmp eq i32 %50, 0
  %52 = add nuw nsw i32 %38, 13
  %53 = select i1 %51, i32 %38, i32 %52
  br label %69

54:                                               ; preds = %30, %28
  br i1 %21, label %55, label %69

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %57 = load i16, ptr %56, align 1
  %58 = lshr i16 %57, 5
  %59 = zext i16 %58 to i32
  %60 = and i32 %59, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = add nuw nsw i32 %29, 3
  br label %69

64:                                               ; preds = %55
  %65 = and i32 %59, 256
  %66 = icmp eq i32 %65, 0
  %67 = add nuw nsw i32 %29, 13
  %68 = select i1 %66, i32 %29, i32 %67
  br label %69

69:                                               ; preds = %64, %62, %54, %49, %47, %42
  %70 = phi i32 [ %43, %42 ], [ %48, %47 ], [ %63, %62 ], [ %29, %54 ], [ %53, %49 ], [ %68, %64 ]
  %71 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %74 = load ptr, ptr %73, align 8
  %75 = ptrtoint ptr %72 to i32
  %76 = ptrtoint ptr %74 to i32
  %77 = sub i32 %75, %76
  %78 = icmp ult i32 %77, %70
  %79 = load i1, ptr @ieee80211_tx_monitor.__already_done, align 1
  %80 = xor i1 %79, true
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %83, !prof !8

82:                                               ; preds = %69
  store i1 true, ptr @ieee80211_tx_monitor.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 845, i32 noundef 9, ptr noundef null) #7
  br label %83

83:                                               ; preds = %82, %69
  br i1 %78, label %84, label %86

84:                                               ; preds = %83
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %451

86:                                               ; preds = %83
  %87 = load ptr, ptr %71, align 4
  %88 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %70) #7
  tail call void @llvm.memset.p0.i32(ptr align 1 %88, i8 0, i32 %70, i1 false) #7
  %89 = trunc i32 %70 to i16
  %90 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %88, i32 0, i32 2
  store i16 %89, ptr %90, align 1
  %91 = getelementptr inbounds %struct.ieee80211_radiotap_header, ptr %88, i32 0, i32 3
  store i32 163840, ptr %91, align 1
  %92 = getelementptr %struct.ieee80211_radiotap_header, ptr %88, i32 1
  br i1 %9, label %103, label %93

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %6, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = load i8, ptr %95, align 2
  %99 = and i8 %98, 59
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %129

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.rate_info, ptr %95, i32 0, i32 2
  br label %117

103:                                              ; preds = %93, %86
  %104 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %105 = load i8, ptr %104, align 8
  %106 = sext i8 %105 to i32
  %107 = icmp sgt i8 %105, -1
  br i1 %107, label %108, label %129

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %110 = load i16, ptr %109, align 1
  %111 = and i16 %110, 8448
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %2, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr %struct.ieee80211_rate, ptr %115, i32 %106, i32 1
  br label %117

117:                                              ; preds = %113, %101
  %118 = phi ptr [ %102, %101 ], [ %116, %113 ]
  %119 = load i16, ptr %118, align 2
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  store i32 163844, ptr %91, align 1
  %122 = zext i16 %119 to i32
  %123 = shl i32 5, %4
  %124 = add i32 %123, -1
  %125 = add i32 %124, %122
  %126 = sdiv i32 %125, %123
  %127 = trunc i32 %126 to i8
  store i8 %127, ptr %92, align 1
  %128 = getelementptr %struct.ieee80211_radiotap_header, ptr %88, i32 1, i32 2
  br label %129

129:                                              ; preds = %121, %117, %108, %103, %97
  %130 = phi ptr [ %128, %121 ], [ %92, %117 ], [ %92, %97 ], [ %92, %108 ], [ %92, %103 ]
  %131 = load i32, ptr %8, align 8
  %132 = and i32 %131, 512
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.ieee80211_hdr, ptr %87, i32 0, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = trunc i32 %136 to i16
  %138 = and i16 %137, 1
  %139 = xor i16 %138, 1
  br label %140

140:                                              ; preds = %134, %129
  %141 = phi i16 [ 0, %129 ], [ %139, %134 ]
  %142 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %143 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %144 = load i16, ptr %143, align 1
  %145 = lshr i16 %144, 5
  %146 = and i16 %145, 2
  %147 = or i16 %146, %141
  %148 = lshr i16 %144, 3
  %149 = and i16 %148, 4
  %150 = or i16 %147, %149
  store i16 %150, ptr %130, align 1
  %151 = getelementptr i8, ptr %130, i32 2
  %152 = trunc i32 %3 to i8
  store i8 %152, ptr %151, align 1
  %153 = getelementptr i8, ptr %130, i32 3
  br i1 %9, label %310, label %154

154:                                              ; preds = %140
  %155 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %6, i32 0, i32 3
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %310, label %158

158:                                              ; preds = %154
  %159 = load i8, ptr %156, align 2
  %160 = and i8 %159, 1
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %190, label %162

162:                                              ; preds = %158
  %163 = load i32, ptr %91, align 1
  %164 = or i32 %163, 524288
  store i32 %164, ptr %91, align 1
  store i8 7, ptr %153, align 1
  %165 = load ptr, ptr %155, align 4
  %166 = load i8, ptr %165, align 2
  %167 = and i8 %166, 4
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %162
  %170 = getelementptr i8, ptr %130, i32 4
  %171 = load i8, ptr %170, align 1
  %172 = or i8 %171, 4
  store i8 %172, ptr %170, align 1
  %173 = load ptr, ptr %155, align 4
  br label %174

174:                                              ; preds = %169, %162
  %175 = phi ptr [ %173, %169 ], [ %165, %162 ]
  %176 = getelementptr inbounds %struct.rate_info, ptr %175, i32 0, i32 4
  %177 = load i8, ptr %176, align 1
  %178 = icmp eq i8 %177, 3
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = getelementptr i8, ptr %130, i32 4
  %181 = load i8, ptr %180, align 1
  %182 = or i8 %181, 1
  store i8 %182, ptr %180, align 1
  %183 = load ptr, ptr %155, align 4
  br label %184

184:                                              ; preds = %179, %174
  %185 = phi ptr [ %183, %179 ], [ %175, %174 ]
  %186 = getelementptr inbounds %struct.rate_info, ptr %185, i32 0, i32 1
  %187 = load i8, ptr %186, align 1
  %188 = getelementptr i8, ptr %130, i32 5
  store i8 %187, ptr %188, align 1
  %189 = getelementptr i8, ptr %130, i32 6
  br label %306

190:                                              ; preds = %158
  %191 = and i8 %159, 2
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %238, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 22
  %195 = load i16, ptr %194, align 4
  %196 = and i16 %195, 68
  %197 = load i32, ptr %91, align 1
  %198 = or i32 %197, 2097152
  store i32 %198, ptr %91, align 1
  %199 = ptrtoint ptr %153 to i32
  %200 = ptrtoint ptr %88 to i32
  %201 = sub i32 1, %200
  %202 = add i32 %201, %199
  %203 = and i32 %202, -2
  %204 = getelementptr i8, ptr %88, i32 %203
  store i16 %196, ptr %204, align 1
  %205 = getelementptr i8, ptr %204, i32 2
  %206 = load ptr, ptr %155, align 4
  %207 = load i8, ptr %206, align 2
  %208 = and i8 %207, 4
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %193
  %211 = load i8, ptr %205, align 1
  %212 = or i8 %211, 4
  store i8 %212, ptr %205, align 1
  %213 = load ptr, ptr %155, align 4
  br label %214

214:                                              ; preds = %210, %193
  %215 = phi ptr [ %213, %210 ], [ %206, %193 ]
  %216 = getelementptr i8, ptr %205, i32 1
  %217 = getelementptr inbounds %struct.rate_info, ptr %215, i32 0, i32 4
  %218 = load i8, ptr %217, align 1
  %219 = add i8 %218, -3
  %220 = icmp ult i8 %219, 3
  %221 = zext i8 %219 to i24
  %222 = shl nuw nsw i24 %221, 3
  %223 = lshr i24 721921, %222
  %224 = trunc i24 %223 to i8
  %225 = select i1 %220, i8 %224, i8 0
  store i8 %225, ptr %216, align 1
  %226 = getelementptr i8, ptr %216, i32 1
  %227 = load ptr, ptr %155, align 4
  %228 = getelementptr inbounds %struct.rate_info, ptr %227, i32 0, i32 1
  %229 = load i8, ptr %228, align 1
  %230 = shl i8 %229, 4
  %231 = getelementptr inbounds %struct.rate_info, ptr %227, i32 0, i32 3
  %232 = load i8, ptr %231, align 2
  %233 = or i8 %230, %232
  store i8 %233, ptr %226, align 1
  %234 = getelementptr i8, ptr %226, i32 4
  %235 = getelementptr i8, ptr %234, i32 1
  %236 = getelementptr i8, ptr %235, i32 1
  %237 = getelementptr i8, ptr %236, i32 2
  br label %306

238:                                              ; preds = %190
  %239 = and i8 %159, 16
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %306, label %241

241:                                              ; preds = %238
  %242 = load i32, ptr %91, align 1
  %243 = or i32 %242, 8388608
  store i32 %243, ptr %91, align 1
  %244 = ptrtoint ptr %153 to i32
  %245 = ptrtoint ptr %88 to i32
  %246 = sub i32 1, %245
  %247 = add i32 %246, %244
  %248 = and i32 %247, -2
  %249 = getelementptr i8, ptr %88, i32 %248
  store i16 16480, ptr %249, align 2
  %250 = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %249, i32 0, i32 1
  store i16 2, ptr %250, align 2
  %251 = load ptr, ptr %155, align 4
  %252 = getelementptr inbounds %struct.rate_info, ptr %251, i32 0, i32 3
  %253 = load i8, ptr %252, align 2
  %254 = and i8 %253, 15
  %255 = zext i8 %254 to i16
  %256 = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %249, i32 0, i32 5
  %257 = load i16, ptr %256, align 2
  %258 = or i16 %257, %255
  store i16 %258, ptr %256, align 2
  %259 = load ptr, ptr %155, align 4
  %260 = getelementptr inbounds %struct.rate_info, ptr %259, i32 0, i32 1
  %261 = load i8, ptr %260, align 1
  %262 = and i8 %261, 15
  %263 = zext i8 %262 to i16
  %264 = shl nuw nsw i16 %263, 8
  %265 = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %249, i32 0, i32 2
  %266 = load i16, ptr %265, align 2
  %267 = or i16 %266, %264
  store i16 %267, ptr %265, align 2
  %268 = load ptr, ptr %155, align 4
  %269 = getelementptr inbounds %struct.rate_info, ptr %268, i32 0, i32 6
  %270 = load i8, ptr %269, align 1
  %271 = and i8 %270, 1
  %272 = zext i8 %271 to i16
  %273 = shl nuw nsw i16 %272, 12
  %274 = or i16 %267, %273
  store i16 %274, ptr %265, align 2
  %275 = load ptr, ptr %155, align 4
  %276 = getelementptr inbounds %struct.rate_info, ptr %275, i32 0, i32 5
  %277 = load i8, ptr %276, align 2
  %278 = shl i8 %277, 4
  %279 = and i8 %278, 48
  %280 = zext i8 %279 to i16
  %281 = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %249, i32 0, i32 4
  %282 = load i16, ptr %281, align 2
  %283 = or i16 %282, %280
  store i16 %283, ptr %281, align 2
  %284 = load ptr, ptr %155, align 4
  %285 = getelementptr inbounds %struct.rate_info, ptr %284, i32 0, i32 4
  %286 = load i8, ptr %285, align 1
  switch i8 %286, label %300 [
    i8 0, label %304
    i8 3, label %287
    i8 4, label %289
    i8 5, label %291
    i8 6, label %293
  ]

287:                                              ; preds = %241
  %288 = or i16 %283, 1
  store i16 %288, ptr %281, align 2
  br label %304

289:                                              ; preds = %241
  %290 = or i16 %283, 2
  store i16 %290, ptr %281, align 2
  br label %304

291:                                              ; preds = %241
  %292 = or i16 %283, 3
  store i16 %292, ptr %281, align 2
  br label %304

293:                                              ; preds = %241
  %294 = getelementptr inbounds %struct.rate_info, ptr %284, i32 0, i32 7
  %295 = load i8, ptr %294, align 2
  %296 = add i8 %295, 4
  %297 = and i8 %296, 15
  %298 = zext i8 %297 to i16
  %299 = or i16 %283, %298
  store i16 %299, ptr %281, align 2
  br label %304

300:                                              ; preds = %241
  %301 = load i1, ptr @ieee80211_add_tx_radiotap_header.__already_done, align 1
  br i1 %301, label %304, label %302, !prof !9

302:                                              ; preds = %300
  store i1 true, ptr @ieee80211_add_tx_radiotap_header.__already_done, align 1
  %303 = zext i8 %286 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 486, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %303) #7
  br label %304

304:                                              ; preds = %302, %300, %293, %291, %289, %287, %241
  %305 = getelementptr i8, ptr %249, i32 12
  br label %306

306:                                              ; preds = %304, %238, %214, %184
  %307 = phi ptr [ %189, %184 ], [ %237, %214 ], [ %305, %304 ], [ %153, %238 ]
  %308 = load ptr, ptr %155, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %396

310:                                              ; preds = %306, %154, %140
  %311 = phi ptr [ %307, %306 ], [ %153, %140 ], [ %153, %154 ]
  %312 = load i8, ptr %142, align 8
  %313 = icmp slt i8 %312, 0
  br i1 %313, label %396, label %314

314:                                              ; preds = %310
  %315 = load i16, ptr %143, align 1
  %316 = lshr i16 %315, 5
  %317 = zext i16 %316 to i32
  %318 = and i32 %317, 8
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %351, label %320

320:                                              ; preds = %314
  %321 = load i32, ptr %91, align 1
  %322 = or i32 %321, 524288
  store i32 %322, ptr %91, align 1
  store i8 7, ptr %311, align 1
  %323 = load i16, ptr %143, align 1
  %324 = and i16 %323, 4096
  %325 = icmp eq i16 %324, 0
  br i1 %325, label %331, label %326

326:                                              ; preds = %320
  %327 = getelementptr i8, ptr %311, i32 1
  %328 = load i8, ptr %327, align 1
  %329 = or i8 %328, 4
  store i8 %329, ptr %327, align 1
  %330 = load i16, ptr %143, align 1
  br label %331

331:                                              ; preds = %326, %320
  %332 = phi i16 [ %330, %326 ], [ %323, %320 ]
  %333 = and i16 %332, 1024
  %334 = icmp eq i16 %333, 0
  br i1 %334, label %340, label %335

335:                                              ; preds = %331
  %336 = getelementptr i8, ptr %311, i32 1
  %337 = load i8, ptr %336, align 1
  %338 = or i8 %337, 1
  store i8 %338, ptr %336, align 1
  %339 = load i16, ptr %143, align 1
  br label %340

340:                                              ; preds = %335, %331
  %341 = phi i16 [ %339, %335 ], [ %332, %331 ]
  %342 = and i16 %341, 512
  %343 = icmp eq i16 %342, 0
  br i1 %343, label %348, label %344

344:                                              ; preds = %340
  %345 = getelementptr i8, ptr %311, i32 1
  %346 = load i8, ptr %345, align 1
  %347 = or i8 %346, 8
  store i8 %347, ptr %345, align 1
  br label %348

348:                                              ; preds = %344, %340
  %349 = load i8, ptr %142, align 8
  %350 = getelementptr i8, ptr %311, i32 2
  store i8 %349, ptr %350, align 1
  br label %396

351:                                              ; preds = %314
  %352 = and i32 %317, 256
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %396, label %354

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 22
  %356 = load i16, ptr %355, align 4
  %357 = and i16 %356, 68
  %358 = load i32, ptr %91, align 1
  %359 = or i32 %358, 2097152
  store i32 %359, ptr %91, align 1
  %360 = ptrtoint ptr %311 to i32
  %361 = ptrtoint ptr %88 to i32
  %362 = sub i32 1, %361
  %363 = add i32 %362, %360
  %364 = and i32 %363, -2
  %365 = getelementptr i8, ptr %88, i32 %364
  store i16 %357, ptr %365, align 1
  %366 = getelementptr i8, ptr %365, i32 2
  %367 = load i16, ptr %143, align 1
  %368 = and i16 %367, 4096
  %369 = icmp eq i16 %368, 0
  br i1 %369, label %374, label %370

370:                                              ; preds = %354
  %371 = load i8, ptr %366, align 1
  %372 = or i8 %371, 4
  store i8 %372, ptr %366, align 1
  %373 = load i16, ptr %143, align 1
  br label %374

374:                                              ; preds = %370, %354
  %375 = phi i16 [ %373, %370 ], [ %367, %354 ]
  %376 = getelementptr i8, ptr %366, i32 1
  %377 = lshr i16 %375, 5
  %378 = zext i16 %377 to i32
  %379 = and i32 %378, 32
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %388

381:                                              ; preds = %374
  %382 = and i32 %378, 512
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %381
  %385 = and i32 %378, 1024
  %386 = icmp eq i32 %385, 0
  %387 = select i1 %386, i8 0, i8 11
  br label %388

388:                                              ; preds = %384, %381, %374
  %389 = phi i8 [ 1, %374 ], [ 4, %381 ], [ %387, %384 ]
  store i8 %389, ptr %376, align 1
  %390 = getelementptr i8, ptr %376, i32 1
  %391 = load i8, ptr %142, align 1
  %392 = shl i8 %391, 4
  %393 = ashr i8 %391, 4
  %394 = add nsw i8 %393, 1
  %395 = or i8 %394, %392
  store i8 %395, ptr %390, align 1
  br label %396

396:                                              ; preds = %388, %351, %348, %310, %306
  %397 = load ptr, ptr %71, align 4
  %398 = load ptr, ptr %73, align 8
  %399 = ptrtoint ptr %397 to i32
  %400 = ptrtoint ptr %398 to i32
  %401 = sub i32 %399, %400
  %402 = trunc i32 %401 to i16
  %403 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  store i16 %402, ptr %403, align 2
  %404 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %405 = load i16, ptr %404, align 8
  %406 = and i16 %405, -104
  %407 = or i16 %406, 35
  store i16 %407, ptr %404, align 8
  %408 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  store i16 1024, ptr %408, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %8, i8 0, i32 48, i1 false)
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %409 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %410 = load volatile ptr, ptr %409, align 8
  %411 = icmp eq ptr %410, %409
  br i1 %411, label %449, label %412

412:                                              ; preds = %440, %396
  %413 = phi ptr [ %442, %440 ], [ %410, %396 ]
  %414 = phi ptr [ %441, %440 ], [ null, %396 ]
  %415 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %413, i32 0, i32 58
  %416 = load i32, ptr %415, align 8
  %417 = icmp eq i32 %416, 6
  br i1 %417, label %418, label %440

418:                                              ; preds = %412
  %419 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %413, i32 0, i32 9
  %420 = load volatile i32, ptr %419, align 4
  %421 = and i32 %420, 1
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %440, label %423

423:                                              ; preds = %418
  %424 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %413, i32 0, i32 57
  %425 = load i32, ptr %424, align 8
  %426 = and i32 %425, 32
  %427 = icmp eq i32 %426, 0
  %428 = or i1 %427, %5
  br i1 %428, label %429, label %440

429:                                              ; preds = %423
  %430 = icmp eq ptr %414, null
  br i1 %430, label %437, label %431

431:                                              ; preds = %429
  %432 = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #7
  %433 = icmp eq ptr %432, null
  br i1 %433, label %437, label %434

434:                                              ; preds = %431
  %435 = getelementptr inbounds %struct.anon.46, ptr %432, i32 0, i32 2
  store ptr %414, ptr %435, align 8
  %436 = tail call i32 @netif_rx(ptr noundef nonnull %432) #7
  br label %437

437:                                              ; preds = %434, %431, %429
  %438 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %413, i32 0, i32 6
  %439 = load ptr, ptr %438, align 8
  br label %440

440:                                              ; preds = %437, %423, %418, %412
  %441 = phi ptr [ %439, %437 ], [ %414, %418 ], [ %414, %412 ], [ %414, %423 ]
  %442 = load volatile ptr, ptr %413, align 8
  %443 = icmp eq ptr %442, %409
  br i1 %443, label %444, label %412

444:                                              ; preds = %440
  %445 = icmp eq ptr %441, null
  br i1 %445, label %449, label %446

446:                                              ; preds = %444
  %447 = getelementptr inbounds %struct.anon.46, ptr %1, i32 0, i32 2
  store ptr %441, ptr %447, align 8
  %448 = tail call i32 @netif_rx(ptr noundef %1) #7
  br label %449

449:                                              ; preds = %446, %444, %396
  %450 = phi ptr [ null, %446 ], [ %1, %444 ], [ %1, %396 ]
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  br label %451

451:                                              ; preds = %449, %84
  %452 = phi ptr [ %450, %449 ], [ %1, %84 ]
  tail call void @consume_skb(ptr noundef %452) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_tx_status(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.ieee80211_tx_status, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #7
  %6 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  store i32 0, ptr %3, align 4
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %3, i32 0, i32 2
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %3, i32 0, i32 3
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %3, i32 0, i32 4
  store ptr null, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %11 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 2
  %12 = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 3
  %13 = tail call ptr @sta_info_get_by_addrs(ptr noundef %0, ptr noundef %11, ptr noundef %12) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.sta_info, ptr %13, i32 0, i32 46
  store ptr %16, ptr %3, align 4
  br label %17

17:                                               ; preds = %15, %2
  call void @ieee80211_tx_status_ext(ptr noundef %0, ptr noundef nonnull %3)
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get_by_addrs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_tx_status_ext(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %5, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %5, i32 -1952
  %11 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %1, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %5, i32 -1012
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(10) %15, ptr noundef nonnull align 2 dereferenceable(10) %12, i32 10, i1 false)
  br label %16

16:                                               ; preds = %14, %9, %2
  %17 = phi ptr [ %10, %14 ], [ %10, %9 ], [ null, %2 ]
  %18 = icmp ne ptr %7, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 18
  %23 = trunc i32 %22 to i16
  %24 = and i16 %23, 4092
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 9
  %28 = load i16, ptr %27, align 4
  %29 = trunc i16 %28 to i8
  tail call void @ieee80211_sta_update_pending_airtime(ptr noundef %0, ptr noundef %17, i8 noundef zeroext %29, i16 noundef zeroext %24, i1 noundef zeroext true) #7
  %30 = load i32, ptr %20, align 4
  %31 = and i32 %30, -1072693249
  store i32 %31, ptr %20, align 4
  br label %32

32:                                               ; preds = %26, %19
  %33 = load ptr, ptr %3, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %548, label %38

35:                                               ; preds = %16
  %36 = load ptr, ptr %3, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %557, label %38

38:                                               ; preds = %35, %32
  %39 = load i32, ptr %4, align 8
  %40 = and i32 %39, 1088
  %41 = icmp eq i32 %40, 64
  %42 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %4, i32 0, i32 2
  %43 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 15
  br i1 %41, label %44, label %48

44:                                               ; preds = %38
  %45 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %42, i32 0, i32 0, i32 1
  %46 = load i16, ptr %45, align 1
  store i8 -1, ptr %42, align 1
  %47 = and i16 %46, -32
  store i16 %47, ptr %45, align 1
  br label %100

48:                                               ; preds = %38
  %49 = load i8, ptr %42, align 1
  %50 = icmp slt i8 %49, 0
  br i1 %50, label %100, label %51

51:                                               ; preds = %48
  %52 = load i8, ptr %43, align 2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %92, %81, %70, %51
  %55 = phi ptr [ %42, %51 ], [ %67, %70 ], [ %78, %81 ], [ %89, %92 ]
  %56 = phi i32 [ 0, %51 ], [ 1, %70 ], [ 2, %81 ], [ 3, %92 ]
  %57 = phi i32 [ -1, %51 ], [ %66, %70 ], [ %77, %81 ], [ %88, %92 ]
  store i8 -1, ptr %55, align 1
  %58 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %42, i32 0, i32 %56, i32 1
  %59 = load i16, ptr %58, align 1
  %60 = and i16 %59, -32
  store i16 %60, ptr %58, align 1
  br label %100

61:                                               ; preds = %51
  %62 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %42, i32 0, i32 0, i32 1
  %63 = load i16, ptr %62, align 1
  %64 = and i16 %63, 31
  %65 = zext i16 %64 to i32
  %66 = add nsw i32 %65, -1
  %67 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %42, i32 0, i32 1
  %68 = load i8, ptr %67, align 1
  %69 = icmp slt i8 %68, 0
  br i1 %69, label %100, label %70

70:                                               ; preds = %61
  %71 = icmp ugt i8 %52, 1
  br i1 %71, label %72, label %54

72:                                               ; preds = %70
  %73 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %42, i32 0, i32 1, i32 1
  %74 = load i16, ptr %73, align 1
  %75 = and i16 %74, 31
  %76 = zext i16 %75 to i32
  %77 = add nsw i32 %66, %76
  %78 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %42, i32 0, i32 2
  %79 = load i8, ptr %78, align 1
  %80 = icmp slt i8 %79, 0
  br i1 %80, label %100, label %81

81:                                               ; preds = %72
  %82 = icmp ugt i8 %52, 2
  br i1 %82, label %83, label %54

83:                                               ; preds = %81
  %84 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %42, i32 0, i32 2, i32 1
  %85 = load i16, ptr %84, align 1
  %86 = and i16 %85, 31
  %87 = zext i16 %86 to i32
  %88 = add nsw i32 %77, %87
  %89 = getelementptr %struct.ieee80211_tx_info, ptr %4, i32 0, i32 2, i32 1, i32 1
  %90 = load i8, ptr %89, align 1
  %91 = icmp slt i8 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %83
  %93 = icmp ugt i8 %52, 3
  br i1 %93, label %94, label %54

94:                                               ; preds = %92
  %95 = getelementptr %struct.ieee80211_tx_info, ptr %4, i32 0, i32 2, i32 1, i32 2
  %96 = load i16, ptr %95, align 1
  %97 = and i16 %96, 31
  %98 = zext i16 %97 to i32
  %99 = add nsw i32 %88, %98
  br label %100

100:                                              ; preds = %94, %83, %72, %61, %54, %48, %44
  %101 = phi i32 [ %57, %54 ], [ -1, %44 ], [ -1, %48 ], [ %66, %61 ], [ %77, %72 ], [ %88, %83 ], [ %99, %94 ]
  %102 = phi i32 [ %56, %54 ], [ 0, %44 ], [ 0, %48 ], [ 1, %61 ], [ 2, %72 ], [ 3, %83 ], [ 4, %94 ]
  %103 = tail call i32 @llvm.smax.i32(i32 %101, i32 0) #7
  %104 = add nsw i32 %102, -1
  %105 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %4, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 7
  %110 = getelementptr %struct.wiphy, ptr %106, i32 0, i32 53, i32 %109
  %111 = load ptr, ptr %110, align 4
  %112 = and i32 %39, 512
  %113 = icmp ne i32 %112, 0
  %114 = icmp sgt i32 %39, -1
  br i1 %8, label %224, label %115

115:                                              ; preds = %100
  %116 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 6
  %117 = load ptr, ptr %116, align 4
  %118 = xor i1 %114, true
  %119 = or i1 %113, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 34, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = add i32 %122, 1
  store i32 %123, ptr %121, align 4
  br label %124

124:                                              ; preds = %120, %115
  %125 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 34, i32 2
  %126 = load i32, ptr %125, align 8
  %127 = add i32 %126, %103
  store i32 %127, ptr %125, align 8
  %128 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %129 = load volatile i32, ptr %128, align 4
  %130 = and i32 %129, 65536
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %223, label %132

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %117, i32 0, i32 58
  %134 = load i32, ptr %133, align 8
  %135 = icmp eq i32 %134, 2
  %136 = select i1 %135, i1 %18, i1 false
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load i32, ptr %4, align 8
  %139 = and i32 %138, 16384
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %4, i32 0, i32 2, i32 1, i32 12
  %145 = load i16, ptr %144, align 4
  tail call void @ieee80211_sta_tx_notify(ptr noundef %117, ptr noundef %143, i1 noundef zeroext %113, i16 noundef zeroext %145) #7
  br label %146

146:                                              ; preds = %141, %137, %132
  br i1 %113, label %147, label %183

147:                                              ; preds = %146
  %148 = load volatile i32, ptr @jiffies, align 64
  %149 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 34, i32 7
  store i32 %148, ptr %149, align 8
  %150 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 34, i32 3
  %151 = load i32, ptr %150, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %147
  store i32 0, ptr %150, align 4
  br label %154

154:                                              ; preds = %153, %147
  %155 = load volatile i32, ptr @jiffies, align 64
  %156 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 34, i32 4
  store i32 %155, ptr %156, align 8
  %157 = load i32, ptr %133, align 8
  %158 = icmp eq i32 %157, 2
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %117, i32 0, i32 57, i32 0, i32 21, i32 0, i32 1
  %161 = load i32, ptr %160, align 8
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %164, !prof !8

163:                                              ; preds = %159
  store i32 0, ptr %160, align 8
  br label %164

164:                                              ; preds = %163, %159, %154
  %165 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %4, i32 0, i32 2, i32 1, i32 14
  %166 = load i8, ptr %165, align 2, !range !12
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %223, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %4, i32 0, i32 2, i32 1, i32 4
  %170 = load i32, ptr %169, align 4
  %171 = trunc i32 %170 to i8
  %172 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 34, i32 8
  store i8 %171, ptr %172, align 4
  %173 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 34, i32 9
  store i8 1, ptr %173, align 1
  %174 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 34, i32 10
  %175 = load i32, ptr %169, align 4
  %176 = load volatile i32, ptr %174, align 4
  %177 = icmp eq i32 %176, 0
  %178 = mul i32 %176, 7
  %179 = mul i32 %175, -1024
  %180 = add i32 %178, %179
  %181 = lshr i32 %180, 3
  %182 = select i1 %177, i32 %179, i32 %181
  store volatile i32 %182, ptr %174, align 4
  br label %223

183:                                              ; preds = %146
  %184 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 23
  %185 = load volatile i32, ptr %184, align 4
  %186 = and i32 %185, 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %183
  br i1 %18, label %189, label %557

189:                                              ; preds = %188
  tail call fastcc void @ieee80211_handle_filtered_frame(ptr noundef %0, ptr noundef %17, ptr noundef nonnull %7)
  br label %557

190:                                              ; preds = %183
  br i1 %114, label %191, label %223

191:                                              ; preds = %190
  %192 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 5
  %193 = load ptr, ptr %192, align 8
  %194 = getelementptr %struct.ieee80211_hw, ptr %193, i32 0, i32 4, i32 1
  %195 = load volatile i32, ptr %194, align 4
  %196 = and i32 %195, 32
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %223

198:                                              ; preds = %191
  %199 = load i32, ptr %4, align 8
  %200 = and i32 %199, 1088
  %201 = icmp eq i32 %200, 64
  br i1 %201, label %223, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 34, i32 3
  %204 = load i32, ptr %203, align 4
  %205 = add i32 %204, 1
  store i32 %205, ptr %203, align 4
  %206 = icmp ult i32 %205, 50
  br i1 %206, label %223, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 46, i32 17
  %209 = load i8, ptr %208, align 4, !range !12
  %210 = icmp eq i8 %209, 0
  %211 = select i1 %210, i32 100, i32 1000
  %212 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 34, i32 4
  %213 = load i32, ptr %212, align 8
  %214 = add i32 %211, %213
  %215 = load volatile i32, ptr @jiffies, align 64
  %216 = sub i32 %214, %215
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %207
  %219 = load ptr, ptr %116, align 4
  %220 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %219, i32 0, i32 6
  %221 = load ptr, ptr %220, align 8
  %222 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 46, i32 1
  tail call void @cfg80211_cqm_pktloss_notify(ptr noundef %221, ptr noundef %222, i32 noundef %205, i32 noundef 2592) #7
  store i32 0, ptr %203, align 4
  br label %223

223:                                              ; preds = %218, %207, %202, %198, %191, %190, %168, %164, %124
  tail call void @rate_control_tx_status(ptr noundef %0, ptr noundef %111, ptr noundef %1) #7
  br label %224

224:                                              ; preds = %223, %100
  br i1 %18, label %225, label %557

225:                                              ; preds = %224
  %226 = load i32, ptr %4, align 8
  %227 = and i32 %226, 16384
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %548

229:                                              ; preds = %225
  %230 = load ptr, ptr %6, align 4
  %231 = getelementptr inbounds %struct.sk_buff, ptr %230, i32 0, i32 17
  %232 = load ptr, ptr %231, align 4
  %233 = load ptr, ptr %3, align 4
  %234 = load ptr, ptr %105, align 8
  %235 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %233, i32 0, i32 1
  %236 = load i32, ptr %235, align 4
  %237 = and i32 %236, 7
  %238 = getelementptr %struct.wiphy, ptr %234, i32 0, i32 53, i32 %237
  %239 = load ptr, ptr %238, align 4
  %240 = load i16, ptr %232, align 2
  %241 = load ptr, ptr %1, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %431, label %243

243:                                              ; preds = %229
  %244 = getelementptr i8, ptr %241, i32 -1952
  %245 = getelementptr i8, ptr %241, i32 -1908
  %246 = load ptr, ptr %245, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %247 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %246, i32 0, i32 58, i32 9
  %248 = load volatile ptr, ptr %247, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %257, label %250

250:                                              ; preds = %243
  %251 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %248, i32 0, i32 1
  %252 = load i32, ptr %251, align 4
  %253 = icmp eq i32 %252, 7
  %254 = zext i1 %253 to i32
  %255 = icmp eq i32 %252, 6
  %256 = select i1 %255, i32 2, i32 %254
  br label %257

257:                                              ; preds = %250, %243
  %258 = phi i32 [ %256, %250 ], [ 0, %243 ]
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %259 = load i32, ptr %233, align 8
  %260 = and i32 %259, 268435456
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %257
  %263 = getelementptr i8, ptr %241, i32 -1796
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %263) #7
  %264 = load i32, ptr %233, align 8
  br label %265

265:                                              ; preds = %262, %257
  %266 = phi i32 [ %264, %262 ], [ %259, %257 ]
  %267 = and i32 %266, 512
  %268 = icmp eq i32 %267, 0
  %269 = icmp slt i32 %266, 0
  %270 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %271 = load volatile i32, ptr %270, align 4
  %272 = and i32 %271, 1
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %285, label %274

274:                                              ; preds = %265
  %275 = load i16, ptr %232, align 2
  %276 = and i16 %275, 12
  %277 = icmp eq i16 %276, 8
  %278 = icmp ne i32 %102, 0
  %279 = and i1 %278, %277
  br i1 %279, label %280, label %285

280:                                              ; preds = %274
  %281 = getelementptr i8, ptr %241, i32 -1016
  %282 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %233, i32 0, i32 2
  %283 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %282, i32 0, i32 %104
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(3) %281, ptr noundef align 1 dereferenceable(3) %283, i32 3, i1 false) #7
  %284 = load i32, ptr %233, align 8
  br label %285

285:                                              ; preds = %280, %274, %265
  %286 = phi i32 [ %284, %280 ], [ %266, %274 ], [ %266, %265 ]
  %287 = and i32 %286, 2048
  %288 = icmp ne i32 %287, 0
  %289 = and i16 %240, 140
  %290 = icmp eq i16 %289, 136
  %291 = select i1 %288, i1 %290, i1 false
  br i1 %291, label %292, label %308

292:                                              ; preds = %285
  %293 = load i16, ptr %232, align 2
  %294 = and i16 %293, 768
  %295 = icmp eq i16 %294, 768
  %296 = select i1 %295, i32 30, i32 24
  %297 = getelementptr i8, ptr %232, i32 %296
  %298 = load i8, ptr %297, align 1
  %299 = and i8 %298, 15
  %300 = getelementptr inbounds %struct.ieee80211_hdr, ptr %232, i32 0, i32 5
  %301 = load i16, ptr %300, align 2
  %302 = add i16 %301, 16
  %303 = and i16 %302, -16
  %304 = load ptr, ptr %245, align 4
  %305 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %304, i32 0, i32 58
  %306 = getelementptr inbounds %struct.ieee80211_hdr, ptr %232, i32 0, i32 2
  %307 = zext i8 %299 to i16
  tail call void @ieee80211_send_bar(ptr noundef %305, ptr noundef %306, i16 noundef zeroext %307, i16 noundef zeroext %303) #7
  br label %317

308:                                              ; preds = %285
  br i1 %290, label %309, label %317

309:                                              ; preds = %308
  %310 = load i16, ptr %232, align 2
  %311 = and i16 %310, 768
  %312 = icmp eq i16 %311, 768
  %313 = select i1 %312, i32 30, i32 24
  %314 = getelementptr i8, ptr %232, i32 %313
  %315 = load i8, ptr %314, align 1
  %316 = and i8 %315, 15
  br label %317

317:                                              ; preds = %309, %308, %292
  %318 = phi i8 [ %299, %292 ], [ %316, %309 ], [ 16, %308 ]
  %319 = zext i8 %318 to i32
  %320 = and i16 %240, 252
  %321 = icmp eq i16 %320, 132
  %322 = select i1 %268, i1 %321, i1 false
  br i1 %322, label %323, label %340

323:                                              ; preds = %317
  %324 = load ptr, ptr %231, align 4
  %325 = getelementptr inbounds %struct.ieee80211_bar, ptr %324, i32 0, i32 4
  %326 = load i16, ptr %325, align 1
  %327 = zext i16 %326 to i32
  %328 = and i32 %327, 2
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %340

330:                                              ; preds = %323
  %331 = getelementptr inbounds %struct.ieee80211_bar, ptr %324, i32 0, i32 5
  %332 = load i16, ptr %331, align 1
  %333 = lshr i32 %327, 12
  %334 = getelementptr %struct.sta_info, ptr %244, i32 0, i32 38, i32 9, i32 %333
  %335 = load volatile ptr, ptr %334, align 4
  %336 = icmp eq ptr %335, null
  br i1 %336, label %340, label %337

337:                                              ; preds = %330
  %338 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %335, i32 0, i32 13
  store i16 %332, ptr %338, align 2
  %339 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %335, i32 0, i32 14
  store i8 1, ptr %339, align 4
  br label %340

340:                                              ; preds = %337, %330, %323, %317
  %341 = phi i32 [ %319, %317 ], [ %319, %323 ], [ %333, %330 ], [ %333, %337 ]
  %342 = load i32, ptr %233, align 8
  %343 = and i32 %342, 256
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %340
  tail call fastcc void @ieee80211_handle_filtered_frame(ptr noundef %0, ptr noundef %244, ptr noundef %230) #7
  br label %557

346:                                              ; preds = %340
  %347 = and i16 %240, 76
  %348 = icmp eq i16 %347, 8
  br i1 %348, label %349, label %364

349:                                              ; preds = %346
  %350 = xor i1 %268, true
  %351 = select i1 %350, i1 true, i1 %269
  br i1 %351, label %357, label %352

352:                                              ; preds = %349
  %353 = getelementptr i8, ptr %241, i32 -1232
  %354 = getelementptr [17 x i64], ptr %353, i32 0, i32 %341
  %355 = load i64, ptr %354, align 8
  %356 = add i64 %355, 1
  store i64 %356, ptr %354, align 8
  br label %357

357:                                              ; preds = %352, %349
  %358 = zext i32 %103 to i64
  %359 = getelementptr i8, ptr %241, i32 -1368
  %360 = getelementptr [17 x i64], ptr %359, i32 0, i32 %341
  %361 = load i64, ptr %360, align 8
  %362 = add i64 %361, %358
  store i64 %362, ptr %360, align 8
  %363 = load i32, ptr %233, align 8
  br label %364

364:                                              ; preds = %357, %346
  %365 = phi i32 [ %342, %346 ], [ %363, %357 ]
  %366 = and i32 %365, 128
  %367 = icmp ne i32 %366, 0
  %368 = select i1 %367, i1 true, i1 %268
  br i1 %368, label %474, label %369

369:                                              ; preds = %364
  %370 = load ptr, ptr %231, align 4
  %371 = getelementptr i8, ptr %241, i32 -1912
  %372 = load ptr, ptr %371, align 8
  %373 = load ptr, ptr %245, align 4
  %374 = load i16, ptr %370, align 2
  %375 = and i16 %374, 140
  %376 = icmp eq i16 %375, 136
  br i1 %376, label %377, label %400

377:                                              ; preds = %369
  %378 = and i16 %374, 768
  %379 = icmp eq i16 %378, 768
  %380 = select i1 %379, i32 30, i32 24
  %381 = getelementptr i8, ptr %370, i32 %380
  %382 = load i8, ptr %381, align 1
  %383 = and i8 %382, 15
  %384 = getelementptr inbounds %struct.ieee80211_hdr, ptr %370, i32 0, i32 2
  %385 = zext i8 %383 to i32
  %386 = getelementptr %struct.sta_info, ptr %244, i32 0, i32 38, i32 9, i32 %385
  %387 = load volatile ptr, ptr %386, align 4
  %388 = icmp eq ptr %387, null
  br i1 %388, label %400, label %389

389:                                              ; preds = %377
  %390 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %387, i32 0, i32 14
  %391 = load i8, ptr %390, align 4, !range !12
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %400, label %393

393:                                              ; preds = %389
  store i8 0, ptr %390, align 4
  %394 = load ptr, ptr %245, align 4
  %395 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %394, i32 0, i32 58
  %396 = zext i8 %383 to i16
  %397 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %387, i32 0, i32 13
  %398 = load i16, ptr %397, align 2
  tail call void @ieee80211_send_bar(ptr noundef %395, ptr noundef %384, i16 noundef zeroext %396, i16 noundef zeroext %398) #7
  %399 = load i16, ptr %370, align 2
  br label %400

400:                                              ; preds = %393, %389, %377, %369
  %401 = phi i16 [ %399, %393 ], [ %374, %389 ], [ %374, %377 ], [ %374, %369 ]
  %402 = and i16 %401, 16636
  %403 = icmp eq i16 %402, 208
  br i1 %403, label %404, label %474

404:                                              ; preds = %400
  %405 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %370, i32 0, i32 6
  %406 = load i8, ptr %405, align 2
  %407 = icmp eq i8 %406, 7
  br i1 %407, label %408, label %474

408:                                              ; preds = %404
  %409 = getelementptr inbounds %struct.anon.165, ptr %405, i32 0, i32 1
  %410 = load i8, ptr %409, align 1
  %411 = icmp eq i8 %410, 1
  br i1 %411, label %412, label %474

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %373, i32 0, i32 9
  %414 = load volatile i32, ptr %413, align 4
  %415 = and i32 %414, 1
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %474, label %417

417:                                              ; preds = %412
  %418 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %370, i32 0, i32 6, i32 0, i32 1
  %419 = load i8, ptr %418, align 1
  %420 = icmp eq i8 %419, 1
  %421 = select i1 %420, i32 2, i32 1
  %422 = icmp eq i8 %419, 3
  %423 = select i1 %422, i32 3, i32 %421
  %424 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %373, i32 0, i32 58
  %425 = load i32, ptr %424, align 8
  switch i32 %425, label %474 [
    i32 2, label %426
    i32 3, label %429
    i32 4, label %429
  ]

426:                                              ; preds = %417
  %427 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %373, i32 0, i32 44
  store i32 %423, ptr %427, align 8
  %428 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %373, i32 0, i32 39
  tail call void @ieee80211_queue_work(ptr noundef %372, ptr noundef %428) #7
  br label %474

429:                                              ; preds = %417, %417
  %430 = getelementptr i8, ptr %241, i32 -224
  store i32 %423, ptr %430, align 8
  br label %474

431:                                              ; preds = %229
  %432 = getelementptr %struct.wiphy, ptr %234, i32 0, i32 14, i32 4
  %433 = load i8, ptr %432, align 1
  %434 = and i8 %433, 2
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %474, label %436

436:                                              ; preds = %431
  %437 = getelementptr inbounds %struct.anon.46, ptr %230, i32 0, i32 2
  %438 = load ptr, ptr %437, align 8
  %439 = icmp eq ptr %438, null
  br i1 %439, label %452, label %440

440:                                              ; preds = %436
  %441 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  br label %442

442:                                              ; preds = %446, %440
  %443 = phi ptr [ %441, %440 ], [ %444, %446 ]
  %444 = load volatile ptr, ptr %443, align 8
  %445 = icmp eq ptr %444, %441
  br i1 %445, label %474, label %446

446:                                              ; preds = %442
  %447 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %444, i32 0, i32 6
  %448 = load ptr, ptr %447, align 8
  %449 = icmp ne ptr %448, null
  %450 = icmp eq ptr %438, %448
  %451 = select i1 %449, i1 %450, i1 false
  br i1 %451, label %455, label %442

452:                                              ; preds = %436
  %453 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 110
  %454 = load volatile ptr, ptr %453, align 8
  br label %455

455:                                              ; preds = %452, %446
  %456 = phi ptr [ %454, %452 ], [ %444, %446 ]
  %457 = icmp eq ptr %456, null
  br i1 %457, label %474, label %458

458:                                              ; preds = %455
  %459 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %456, i32 0, i32 58
  %460 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %456, i32 0, i32 58, i32 8
  %461 = load ptr, ptr %460, align 8
  %462 = icmp eq ptr %461, null
  br i1 %462, label %474, label %463

463:                                              ; preds = %458
  %464 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %233, i32 0, i32 2, i32 1, i32 12
  %465 = load i16, ptr %464, align 4
  %466 = zext i16 %465 to i32
  %467 = icmp eq i16 %465, 0
  br i1 %467, label %468, label %472

468:                                              ; preds = %463
  %469 = getelementptr inbounds %struct.sk_buff, ptr %230, i32 0, i32 5
  %470 = load i32, ptr %469, align 8
  %471 = tail call i32 @ieee80211_calc_expected_tx_airtime(ptr noundef %0, ptr noundef %459, ptr noundef null, i32 noundef %470, i1 noundef zeroext false) #7
  br label %472

472:                                              ; preds = %468, %463
  %473 = phi i32 [ %471, %468 ], [ %466, %463 ]
  tail call void @ieee80211_register_airtime(ptr noundef nonnull %461, i32 noundef %473, i32 noundef 0) #7
  br label %474

474:                                              ; preds = %472, %458, %455, %442, %431, %429, %426, %417, %412, %408, %404, %400, %364
  %475 = phi i32 [ %258, %364 ], [ 0, %431 ], [ 0, %472 ], [ 0, %458 ], [ 0, %455 ], [ %258, %400 ], [ %258, %404 ], [ %258, %408 ], [ %258, %412 ], [ %258, %417 ], [ %258, %426 ], [ %258, %429 ], [ 0, %442 ]
  %476 = load i32, ptr %233, align 8
  %477 = and i32 %476, 512
  %478 = icmp eq i32 %477, 0
  %479 = and i16 %240, 4220
  %480 = icmp eq i16 %479, 4168
  br i1 %480, label %481, label %507

481:                                              ; preds = %474
  %482 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %483 = load volatile i32, ptr %482, align 4
  %484 = and i32 %483, 65536
  %485 = icmp ne i32 %484, 0
  %486 = and i32 %476, 128
  %487 = icmp eq i32 %486, 0
  %488 = select i1 %485, i1 %487, i1 false
  br i1 %488, label %489, label %507

489:                                              ; preds = %481
  %490 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 92
  %491 = load ptr, ptr %490, align 4
  %492 = icmp eq ptr %491, null
  br i1 %492, label %507, label %493

493:                                              ; preds = %489
  %494 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 67
  %495 = load i32, ptr %494, align 4
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %507

497:                                              ; preds = %493
  br i1 %478, label %502, label %498

498:                                              ; preds = %497
  %499 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %491, i32 0, i32 57, i32 0, i32 24, i32 9
  %500 = load i32, ptr %499, align 8
  %501 = or i32 %500, 256
  store i32 %501, ptr %499, align 8
  br label %502

502:                                              ; preds = %498, %497
  %503 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 95
  %504 = load volatile i32, ptr @jiffies, align 64
  %505 = add i32 %504, 1
  %506 = tail call i32 @mod_timer(ptr noundef %503, i32 noundef %505) #7
  br label %507

507:                                              ; preds = %502, %493, %489, %481, %474
  tail call fastcc void @ieee80211_report_used_skb(ptr noundef %0, ptr noundef %230, i1 noundef zeroext false) #7
  %508 = getelementptr inbounds %struct.sk_buff, ptr %230, i32 0, i32 4, i32 0, i32 1
  %509 = load ptr, ptr %508, align 4
  %510 = icmp eq ptr %509, null
  br i1 %510, label %513, label %511

511:                                              ; preds = %507
  tail call void %509(ptr noundef %230) #7
  store ptr null, ptr %508, align 4
  %512 = getelementptr inbounds %struct.sk_buff, ptr %230, i32 0, i32 1
  store ptr null, ptr %512, align 4
  br label %518

513:                                              ; preds = %507
  %514 = getelementptr inbounds %struct.sk_buff, ptr %230, i32 0, i32 1
  %515 = load ptr, ptr %514, align 4
  %516 = icmp eq ptr %515, null
  br i1 %516, label %518, label %517, !prof !9

517:                                              ; preds = %513
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #7, !srcloc !13
  unreachable

518:                                              ; preds = %513, %511
  %519 = load i32, ptr %233, align 8
  %520 = and i32 %519, 128
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %528

522:                                              ; preds = %518
  %523 = and i16 %240, 12
  %524 = icmp ne i16 %523, 8
  %525 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 14
  %526 = load i32, ptr %525, align 4
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %532, label %546

528:                                              ; preds = %518
  %529 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 14
  %530 = load i32, ptr %529, align 4
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %533, label %546

532:                                              ; preds = %522
  br i1 %524, label %533, label %537

533:                                              ; preds = %532, %528
  %534 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 15
  %535 = load i32, ptr %534, align 8
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %546

537:                                              ; preds = %533, %532
  %538 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %1, i32 0, i32 4
  %539 = load ptr, ptr %538, align 4
  %540 = icmp eq ptr %539, null
  br i1 %540, label %545, label %541

541:                                              ; preds = %537
  %542 = getelementptr inbounds %struct.list_head, ptr %539, i32 0, i32 1
  %543 = load ptr, ptr %542, align 4
  store ptr %230, ptr %542, align 4
  store ptr %539, ptr %230, align 4
  %544 = getelementptr inbounds %struct.list_head, ptr %230, i32 0, i32 1
  store ptr %543, ptr %544, align 4
  store volatile ptr %230, ptr %543, align 4
  br label %557

545:                                              ; preds = %537
  tail call void @consume_skb(ptr noundef %230) #7
  br label %557

546:                                              ; preds = %533, %528, %522
  %547 = phi i1 [ true, %528 ], [ true, %533 ], [ %524, %522 ]
  tail call void @ieee80211_tx_monitor(ptr noundef %0, ptr noundef %230, ptr noundef %239, i32 noundef %103, i32 noundef %475, i1 noundef zeroext %547, ptr noundef %1) #7
  br label %557

548:                                              ; preds = %225, %32
  tail call fastcc void @ieee80211_report_used_skb(ptr noundef %0, ptr noundef nonnull %7, i1 noundef zeroext false)
  %549 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %1, i32 0, i32 4
  %550 = load ptr, ptr %549, align 4
  %551 = icmp eq ptr %550, null
  br i1 %551, label %556, label %552

552:                                              ; preds = %548
  %553 = getelementptr inbounds %struct.list_head, ptr %550, i32 0, i32 1
  %554 = load ptr, ptr %553, align 4
  store ptr %7, ptr %553, align 4
  store ptr %550, ptr %7, align 4
  %555 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %554, ptr %555, align 4
  store volatile ptr %7, ptr %554, align 4
  br label %557

556:                                              ; preds = %548
  tail call void @consume_skb(ptr noundef nonnull %7) #7
  br label %557

557:                                              ; preds = %556, %552, %546, %545, %541, %345, %224, %189, %188, %35
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_update_pending_airtime(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_tx_notify(ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_handle_filtered_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %5 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %4, align 8
  %8 = and i32 %7, 147520
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call fastcc void @ieee80211_report_used_skb(ptr noundef %0, ptr noundef %2, i1 noundef zeroext true) #7
  tail call void @__dev_kfree_skb_any(ptr noundef %2, i32 noundef 1) #7
  br label %80

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(32) %12, i8 0, i32 32, i1 false)
  %13 = load volatile i32, ptr @jiffies, align 64
  store i32 %13, ptr %12, align 8
  %14 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %15, i32 0, i32 58
  %17 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 24
  store ptr %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 32
  store i32 64, ptr %18, align 8
  %19 = and i32 %7, -298721149
  %20 = or i32 %19, 524288
  store i32 %20, ptr %4, align 8
  %21 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 34
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 8
  %24 = load i16, ptr %6, align 2
  %25 = and i16 %24, 8192
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %11
  %28 = and i16 %24, -8193
  store i16 %28, ptr %6, align 2
  br label %29

29:                                               ; preds = %27, %11
  %30 = phi i16 [ %28, %27 ], [ %24, %11 ]
  %31 = and i16 %30, 140
  %32 = icmp eq i16 %31, 136
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = and i16 %30, 768
  %35 = icmp eq i16 %34, 768
  %36 = select i1 %35, i32 30, i32 24
  %37 = getelementptr i8, ptr %6, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = and i8 %38, -17
  store i8 %43, ptr %37, align 1
  br label %44

44:                                               ; preds = %42, %33
  %45 = and i32 %39, 7
  %46 = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %45
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %44, %29
  %49 = phi i32 [ %47, %44 ], [ 2, %29 ]
  %50 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 23
  tail call void @_set_bit(i32 noundef 6, ptr noundef %50) #7
  tail call void @ieee80211_clear_fast_xmit(ptr noundef %1) #7
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %48
  %55 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 26, i32 %49, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp ult i32 %56, 64
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 26, i32 %49
  tail call void @skb_queue_tail(ptr noundef %59, ptr noundef %2) #7
  tail call void @sta_info_recalc_tim(ptr noundef %1) #7
  %60 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 51, i32 0, i32 1
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %80

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 51
  %65 = load volatile i32, ptr @jiffies, align 64
  %66 = add i32 %65, 1000
  %67 = tail call i32 @round_jiffies(i32 noundef %66) #7
  %68 = tail call i32 @mod_timer(ptr noundef %64, i32 noundef %67) #7
  br label %80

69:                                               ; preds = %54, %48
  %70 = load volatile i32, ptr %50, align 4
  %71 = and i32 %70, 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32, ptr %4, align 8
  %75 = and i32 %74, 32768
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = or i32 %74, 32768
  store i32 %78, ptr %4, align 8
  tail call void @ieee80211_add_pending_skb(ptr noundef %0, ptr noundef %2) #7
  br label %80

79:                                               ; preds = %73, %69
  tail call fastcc void @ieee80211_report_used_skb(ptr noundef %0, ptr noundef %2, i1 noundef zeroext true) #7
  tail call void @__dev_kfree_skb_any(ptr noundef %2, i32 noundef 1) #7
  br label %80

80:                                               ; preds = %79, %77, %63, %58, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_tx_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_report_used_skb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 18
  %8 = trunc i32 %7 to i16
  %9 = and i16 %8, 4092
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %4, align 8
  %13 = lshr i32 %12, 9
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = select i1 %2, i8 0, i8 %15
  %17 = icmp eq i16 %9, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %19 = getelementptr inbounds %struct.ieee80211_hdr, ptr %11, i32 0, i32 2
  %20 = getelementptr inbounds %struct.ieee80211_hdr, ptr %11, i32 0, i32 3
  %21 = tail call ptr @sta_info_get_by_addrs(ptr noundef %0, ptr noundef %19, ptr noundef %20) #7
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 9
  %23 = load i16, ptr %22, align 4
  %24 = trunc i16 %23 to i8
  tail call void @ieee80211_sta_update_pending_airtime(ptr noundef %0, ptr noundef %21, i8 noundef zeroext %24, i16 noundef zeroext %9, i1 noundef zeroext true) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %25 = load i32, ptr %4, align 8
  br label %26

26:                                               ; preds = %18, %3
  %27 = phi i32 [ %25, %18 ], [ %12, %3 ]
  %28 = and i32 %27, 1048576
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %133, label %30

30:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %31 = getelementptr inbounds %struct.anon.46, ptr %1, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  br label %36

36:                                               ; preds = %40, %34
  %37 = phi ptr [ %35, %34 ], [ %38, %40 ]
  %38 = load volatile ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, %35
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %38, i32 0, i32 6
  %42 = load ptr, ptr %41, align 8
  %43 = icmp ne ptr %42, null
  %44 = icmp eq ptr %32, %42
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %49, label %36

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 110
  %48 = load volatile ptr, ptr %47, align 8
  br label %49

49:                                               ; preds = %46, %40
  %50 = phi ptr [ %48, %46 ], [ %38, %40 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %36
  store ptr null, ptr %31, align 8
  br label %132

53:                                               ; preds = %49
  %54 = load i16, ptr %11, align 2
  %55 = and i16 %54, 12
  %56 = icmp eq i16 %55, 8
  br i1 %56, label %57, label %119

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %119

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %63 = load i32, ptr %62, align 8
  %64 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  %69 = getelementptr i8, ptr %65, i32 %68
  %70 = load ptr, ptr %10, align 4
  %71 = ptrtoint ptr %69 to i32
  %72 = ptrtoint ptr %70 to i32
  %73 = sub i32 2, %72
  %74 = add i32 %73, %71
  %75 = icmp ugt i32 %63, %74
  br i1 %75, label %76, label %119

76:                                               ; preds = %61
  %77 = getelementptr i8, ptr %69, i32 -2
  %78 = load i16, ptr %77, align 1
  %79 = icmp eq i16 %78, 3465
  br i1 %79, label %80, label %119

80:                                               ; preds = %76
  %81 = load i8, ptr %69, align 1
  %82 = icmp eq i8 %81, 2
  br i1 %82, label %83, label %119

83:                                               ; preds = %80
  %84 = getelementptr i8, ptr %69, i32 1
  %85 = load i8, ptr %84, align 1
  %86 = icmp eq i8 %85, 12
  br i1 %86, label %87, label %119

87:                                               ; preds = %83
  %88 = getelementptr i8, ptr %69, i32 2
  %89 = load i8, ptr %88, align 1
  %90 = icmp eq i8 %89, 3
  br i1 %90, label %91, label %119

91:                                               ; preds = %87
  %92 = load i32, ptr %4, align 8
  %93 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %50, i32 0, i32 57, i32 0, i32 40, i32 0, i32 104
  tail call void @_raw_spin_lock(ptr noundef %93) #7
  %94 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %50, i32 0, i32 57, i32 0, i32 40, i32 0, i32 100
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %50, i32 0, i32 57, i32 0, i32 40, i32 0, i32 96
  %97 = load ptr, ptr %96, align 8
  %98 = icmp eq ptr %97, %1
  %99 = icmp ne ptr %95, null
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %101, label %116

101:                                              ; preds = %91
  store ptr null, ptr %94, align 4
  store ptr null, ptr %96, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %102 = load i16, ptr %93, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %93, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  %104 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %105, 65536
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109, !prof !8

108:                                              ; preds = %101
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 579, i32 noundef 9, ptr noundef null) #7
  br label %109

109:                                              ; preds = %108, %101
  %110 = and i32 %92, 512
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %95, i32 noundef 1) #7
  br label %132

113:                                              ; preds = %109
  %114 = load ptr, ptr %31, align 8
  %115 = tail call i32 @ieee80211_subif_start_xmit(ptr noundef nonnull %95, ptr noundef %114) #7
  br label %132

116:                                              ; preds = %91
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %117 = load i16, ptr %93, align 4
  %118 = add i16 %117, 1
  store i16 %118, ptr %93, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  br label %132

119:                                              ; preds = %87, %83, %80, %76, %61, %57, %53
  %120 = tail call zeroext i1 @ieee80211_s1g_is_twt_setup(ptr noundef %1) #7
  br i1 %120, label %121, label %129

121:                                              ; preds = %119
  %122 = icmp eq i8 %16, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %121
  %124 = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #7
  %125 = icmp eq ptr %124, null
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %50, i32 0, i32 42
  tail call void @skb_queue_tail(ptr noundef %127, ptr noundef nonnull %124) #7
  %128 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %50, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %0, ptr noundef %128) #7
  br label %132

129:                                              ; preds = %119
  %130 = load i16, ptr %11, align 2
  %131 = icmp ne i8 %16, 0
  tail call void @ieee80211_mgd_conn_tx_status(ptr noundef nonnull %50, i16 noundef zeroext %130, i1 noundef zeroext %131) #7
  br label %132

132:                                              ; preds = %129, %126, %123, %121, %116, %113, %112, %52
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  br label %217

133:                                              ; preds = %26
  %134 = load i32, ptr %5, align 4
  %135 = and i32 %134, 65528
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %217, label %137

137:                                              ; preds = %133
  %138 = icmp ne i8 %16, 0
  %139 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 109
  %140 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %139) #7
  %141 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 108
  %142 = load i32, ptr %5, align 4
  %143 = lshr i32 %142, 3
  %144 = and i32 %143, 8191
  %145 = tail call ptr @idr_remove(ptr noundef %141, i32 noundef %144) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %139, i32 noundef %140) #7
  %146 = icmp eq ptr %145, null
  br i1 %146, label %217, label %147

147:                                              ; preds = %137
  %148 = load i32, ptr %4, align 8
  %149 = and i32 %148, 2097152
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %214, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.sk_buff, ptr %145, i32 0, i32 3, i32 8
  %153 = load i64, ptr %152, align 8
  %154 = getelementptr inbounds %struct.sk_buff, ptr %145, i32 0, i32 17
  %155 = load ptr, ptr %154, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %156 = getelementptr inbounds %struct.anon.46, ptr %145, i32 0, i32 2
  %157 = load ptr, ptr %156, align 8
  %158 = icmp eq ptr %157, null
  br i1 %158, label %171, label %159

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  br label %161

161:                                              ; preds = %165, %159
  %162 = phi ptr [ %160, %159 ], [ %163, %165 ]
  %163 = load volatile ptr, ptr %162, align 8
  %164 = icmp eq ptr %163, %160
  br i1 %164, label %213, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %163, i32 0, i32 6
  %167 = load ptr, ptr %166, align 8
  %168 = icmp ne ptr %167, null
  %169 = icmp eq ptr %157, %167
  %170 = select i1 %168, i1 %169, i1 false
  br i1 %170, label %174, label %161

171:                                              ; preds = %151
  %172 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 110
  %173 = load volatile ptr, ptr %172, align 8
  br label %174

174:                                              ; preds = %171, %165
  %175 = phi ptr [ %173, %171 ], [ %163, %165 ]
  %176 = icmp eq ptr %175, null
  br i1 %176, label %213, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.sk_buff, ptr %145, i32 0, i32 13, i32 0, i32 16
  %179 = load i16, ptr %178, align 8
  %180 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %175, i32 0, i32 20
  %181 = load i16, ptr %180, align 2
  %182 = icmp eq i16 %179, %181
  %183 = icmp eq i16 %179, -14456
  %184 = or i1 %183, %182
  br i1 %184, label %185, label %190

185:                                              ; preds = %177
  %186 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %175, i32 0, i32 1
  %187 = load ptr, ptr %154, align 4
  %188 = getelementptr inbounds %struct.sk_buff, ptr %145, i32 0, i32 5
  %189 = load i32, ptr %188, align 8
  tail call void @cfg80211_control_port_tx_status(ptr noundef %186, i64 noundef %153, ptr noundef %187, i32 noundef %189, i1 noundef zeroext %138, i32 noundef 2592) #7
  br label %213

190:                                              ; preds = %177
  %191 = load i16, ptr %155, align 2
  %192 = and i16 %191, 124
  %193 = icmp eq i16 %192, 72
  br i1 %193, label %194, label %203

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %175, i32 0, i32 6
  %196 = load ptr, ptr %195, align 8
  %197 = getelementptr inbounds %struct.ieee80211_hdr, ptr %155, i32 0, i32 2
  %198 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 30
  %201 = load i8, ptr %200, align 2, !range !12
  %202 = icmp ne i8 %201, 0
  tail call void @cfg80211_probe_status(ptr noundef %196, ptr noundef %197, i64 noundef %153, i1 noundef zeroext %138, i32 noundef %199, i1 noundef zeroext %202, i32 noundef 2592) #7
  br label %213

203:                                              ; preds = %190
  %204 = and i16 %191, 12
  %205 = icmp eq i16 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %175, i32 0, i32 1
  %208 = load ptr, ptr %154, align 4
  %209 = getelementptr inbounds %struct.sk_buff, ptr %145, i32 0, i32 5
  %210 = load i32, ptr %209, align 8
  tail call void @cfg80211_mgmt_tx_status(ptr noundef %207, i64 noundef %153, ptr noundef %208, i32 noundef %210, i1 noundef zeroext %138, i32 noundef 2592) #7
  br label %213

211:                                              ; preds = %203
  %212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %213

213:                                              ; preds = %211, %206, %194, %185, %174, %161
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %145, i32 noundef 1) #7
  br label %217

214:                                              ; preds = %147
  br i1 %2, label %215, label %216

215:                                              ; preds = %214
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %145, i32 noundef 1) #7
  br label %230

216:                                              ; preds = %214
  tail call void @skb_complete_wifi_ack(ptr noundef nonnull %145, i1 noundef zeroext %138) #7
  br label %218

217:                                              ; preds = %213, %137, %133, %132
  br i1 %2, label %230, label %218

218:                                              ; preds = %217, %216
  %219 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %230, label %222

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %224 = load i16, ptr %223, align 8
  %225 = zext i8 %16 to i16
  %226 = shl nuw nsw i16 %225, 11
  %227 = and i16 %224, -3073
  %228 = or i16 %227, %226
  %229 = or i16 %228, 1024
  store i16 %229, ptr %223, align 8
  br label %230

230:                                              ; preds = %222, %218, %217, %215
  %231 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.skb_shared_info, ptr %232, i32 0, i32 6
  %234 = load ptr, ptr %233, align 8
  %235 = icmp eq ptr %234, null
  br i1 %235, label %239, label %236

236:                                              ; preds = %230
  tail call void @kfree_skb_list(ptr noundef nonnull %234) #7
  %237 = load ptr, ptr %231, align 4
  %238 = getelementptr inbounds %struct.skb_shared_info, ptr %237, i32 0, i32 6
  store ptr null, ptr %238, align 8
  br label %239

239:                                              ; preds = %236, %230
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_tx_rate_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.ieee80211_tx_status, align 4
  %5 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 7
  %10 = getelementptr %struct.wiphy, ptr %6, i32 0, i32 53, i32 %9
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #7
  store ptr %1, ptr %4, align 4
  %12 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %4, i32 0, i32 1
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %4, i32 0, i32 2
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %4, i32 0, i32 3
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %4, i32 0, i32 4
  store ptr null, ptr %15, align 4
  call void @rate_control_tx_status(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %4) #7
  %16 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = getelementptr i8, ptr %1, i32 -1016
  %22 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %2, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(3) %21, ptr noundef align 8 dereferenceable(3) %22, i32 3, i1 false)
  br label %23

23:                                               ; preds = %20, %3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_tx_status_8023(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.ieee80211_tx_status, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #7
  %6 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  store i32 0, ptr %4, align 4
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %4, i32 0, i32 2
  store ptr %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %4, i32 0, i32 3
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %4, i32 0, i32 4
  store ptr null, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %5, align 4, !annotation !18
  %11 = getelementptr i8, ptr %1, i32 -2264
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %12 = call i32 @ieee80211_lookup_ra_sta(ptr noundef %11, ptr noundef %2, ptr noundef nonnull %5) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.sta_info, ptr %15, i32 0, i32 46
  store ptr %18, ptr %4, align 4
  br label %19

19:                                               ; preds = %17, %14, %3
  call void @ieee80211_tx_status_ext(ptr noundef %0, ptr noundef nonnull %4)
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_lookup_ra_sta(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_report_low_ack(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -1908
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ieee80211_sta, ptr %0, i32 0, i32 1
  tail call void @cfg80211_cqm_pktloss_notify(ptr noundef %6, ptr noundef %7, i32 noundef %1, i32 noundef 2592) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_cqm_pktloss_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_purge_tx_queue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, %1
  %5 = icmp eq ptr %3, null
  %6 = or i1 %4, %5
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 1
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi ptr [ %3, %7 ], [ %17, %9 ]
  %11 = load i32, ptr %8, align 4
  %12 = add i32 %11, -1
  store volatile i32 %12, ptr %8, align 4
  %13 = load ptr, ptr %10, align 8
  %14 = getelementptr inbounds %struct.anon.46, ptr %10, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr null, ptr %14, align 4
  store ptr null, ptr %10, align 8
  %16 = getelementptr inbounds %struct.anon.46, ptr %13, i32 0, i32 1
  store volatile ptr %15, ptr %16, align 4
  store volatile ptr %13, ptr %15, align 8
  tail call fastcc void @ieee80211_report_used_skb(ptr noundef %0, ptr noundef nonnull %10, i1 noundef zeroext true) #7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %10, i32 noundef 1) #7
  %17 = load ptr, ptr %1, align 4
  %18 = icmp eq ptr %17, %1
  %19 = icmp eq ptr %17, null
  %20 = or i1 %18, %19
  br i1 %20, label %21, label %9

21:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_clear_fast_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sta_info_recalc_tim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_add_pending_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_bar(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_calc_expected_tx_airtime(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_register_airtime(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_s1g_is_twt_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mgd_conn_tx_status(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_subif_start_xmit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_control_port_tx_status(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_probe_status(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_mgmt_tx_status(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_complete_wifi_ack(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2149383750}
!11 = !{i64 2149383967}
!12 = !{i8 0, i8 2}
!13 = !{i64 2153338092, i64 2153338580, i64 2153338129, i64 2153338185, i64 2153338219, i64 2153338243, i64 2153338284, i64 2153338305, i64 2153338333, i64 2153338367}
!14 = !{i64 2149231046}
!15 = !{i64 2149226870}
!16 = !{i64 2149226945, i64 2149226972, i64 2149227019, i64 2149227041, i64 2149227069, i64 2149227089}
!17 = !{i64 2149254049}
!18 = !{!"auto-init"}
