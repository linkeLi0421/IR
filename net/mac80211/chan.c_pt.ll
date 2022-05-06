; ModuleID = '/llk/IR/net/mac80211/chan.c_pt.bc'
source_filename = "../net/mac80211/chan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_iter_chan_contexts_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_iter_chan_contexts_atomic\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_iter_chan_contexts_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ieee80211_chanctx = type { %struct.list_head, %struct.callback_head, %struct.list_head, %struct.list_head, i32, ptr, i32, i8, %struct.ieee80211_chanctx_conf }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_chanctx_conf = type { %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i8, [0 x i8] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.118, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.118 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.117, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.possible_net_t = type {}
%struct.anon.117 = type { i64, i64, i8 }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.140, [17 x i16], %struct.anon.141, %struct.anon.142, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.44, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.81, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.44 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ref_tracker_dir = type {}
%union.anon.81 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.ieee80211_vif_chanctx_switch = type { ptr, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@ieee80211_recalc_chanctx_chantype.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [20 x i8] c"net/mac80211/chan.c\00", align 1
@ieee80211_recalc_chanctx_chantype.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_recalc_smps_chanctx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_recalc_smps_chanctx.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Invalid SMPS mode %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"depending in-place reservation failed (err=%d)\0A\00", align 1
@__kstrtab_ieee80211_iter_chan_contexts_atomic = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_iter_chan_contexts_atomic = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_iter_chan_contexts_atomic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_iter_chan_contexts_atomic to i32), ptr @__kstrtab_ieee80211_iter_chan_contexts_atomic, ptr @__kstrtabns_ieee80211_iter_chan_contexts_atomic }, section "___ksymtab_gpl+ieee80211_iter_chan_contexts_atomic", align 4
@ieee80211_get_chanctx_max_required_bw.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_change_chanctx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@__tracepoint_drv_change_chanctx = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@ieee80211_free_chanctx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_remove_chanctx = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_add_chanctx = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@drv_unassign_vif_chanctx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@drv_unassign_vif_chanctx.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_unassign_vif_chanctx = external dso_local global %struct.tracepoint, align 4
@drv_assign_vif_chanctx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_assign_vif_chanctx.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_assign_vif_chanctx = external dso_local global %struct.tracepoint, align 4
@.str.10 = private unnamed_addr constant [90 x i8] c"channel context reservation cannot be finalized because some interfaces aren't switching\0A\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"\016%s: failed to finalize (re-)assign reservation (err=%d)\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ieee80211_iter_chan_contexts_atomic], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ieee80211_chanctx_refcount(ptr nocapture readnone %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 2
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %9, %4 ]
  %6 = phi ptr [ %3, %2 ], [ %7, %4 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %3
  %9 = add i32 %5, 1
  br i1 %8, label %10, label %4

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 3
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ 0, %10 ], [ %17, %12 ]
  %14 = phi ptr [ %11, %10 ], [ %15, %12 ]
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %11
  %17 = add i32 %13, 1
  br i1 %16, label %18, label %12

18:                                               ; preds = %12
  %19 = add i32 %13, %5
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_recalc_chanctx_min_def(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call fastcc i32 @_ieee80211_recalc_chanctx_min_def(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %67, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.wiphy, ptr %7, i32 0, i32 53, i32 %10
  %12 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %13 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 49
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %37, label %16

16:                                               ; preds = %34, %5
  %17 = phi ptr [ %35, %34 ], [ %14, %5 ]
  %18 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %19, i32 0, i32 9
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %19, i32 0, i32 58, i32 9
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %8
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = tail call i32 @ieee80211_sta_cur_vht_bw(ptr noundef %17) #11
  %30 = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 46, i32 14
  %31 = load i32, ptr %30, align 8
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 %29, ptr %30, align 8
  tail call void @rate_control_rate_update(ptr noundef %0, ptr noundef %12, ptr noundef %17, i32 noundef 1) #11
  br label %34

34:                                               ; preds = %33, %28, %24, %16
  %35 = load volatile ptr, ptr %17, align 4
  %36 = icmp eq ptr %35, %13
  br i1 %36, label %37, label %16

37:                                               ; preds = %34, %5
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  tail call fastcc void @drv_change_chanctx(ptr noundef %0, ptr noundef %1, i32 noundef %3)
  %38 = load ptr, ptr %6, align 8
  %39 = load ptr, ptr %8, align 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.wiphy, ptr %38, i32 0, i32 53, i32 %40
  %42 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %43 = load volatile ptr, ptr %13, align 4
  %44 = icmp eq ptr %43, %13
  br i1 %44, label %66, label %45

45:                                               ; preds = %63, %37
  %46 = phi ptr [ %64, %63 ], [ %43, %37 ]
  %47 = getelementptr inbounds %struct.sta_info, ptr %46, i32 0, i32 6
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %48, i32 0, i32 9
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %48, i32 0, i32 58, i32 9
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %8
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = tail call i32 @ieee80211_sta_cur_vht_bw(ptr noundef %46) #11
  %59 = getelementptr inbounds %struct.sta_info, ptr %46, i32 0, i32 46, i32 14
  %60 = load i32, ptr %59, align 8
  %61 = icmp ugt i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 %58, ptr %59, align 8
  tail call void @rate_control_rate_update(ptr noundef %0, ptr noundef %42, ptr noundef %46, i32 noundef 1) #11
  br label %63

63:                                               ; preds = %62, %57, %53, %45
  %64 = load volatile ptr, ptr %46, align 4
  %65 = icmp eq ptr %64, %13
  br i1 %65, label %66, label %45

66:                                               ; preds = %63, %37
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %67

67:                                               ; preds = %66, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_ieee80211_recalc_chanctx_min_def(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.cfg80211_chan_def, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8
  %5 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -6
  %8 = icmp ult i32 %7, 7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8, i32 4
  %11 = load i8, ptr %10, align 2, !range !10
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9, %2
  %14 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %14, ptr noundef align 4 dereferenceable(28) %4, i32 28, i1 false)
  br label %189

15:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %16 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %17 = load volatile ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %135, label %19

19:                                               ; preds = %131, %15
  %20 = phi ptr [ %133, %131 ], [ %17, %15 ]
  %21 = phi i32 [ %132, %131 ], [ 0, %15 ]
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 58
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 9
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %131, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 58, i32 9
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %4
  br i1 %30, label %31, label %131

31:                                               ; preds = %27
  %32 = load i32, ptr %22, align 8
  switch i32 %32, label %128 [
    i32 3, label %33
    i32 4, label %33
    i32 2, label %76
    i32 10, label %131
    i32 12, label %131
    i32 1, label %122
    i32 7, label %122
    i32 11, label %122
    i32 5, label %125
    i32 0, label %125
    i32 13, label %125
    i32 6, label %125
    i32 8, label %125
    i32 9, label %125
  ]

33:                                               ; preds = %31, %31
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ieee80211_local, ptr %35, i32 0, i32 49
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %74, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 49
  br label %41

41:                                               ; preds = %68, %39
  %42 = phi ptr [ %35, %39 ], [ %69, %68 ]
  %43 = phi ptr [ %37, %39 ], [ %71, %68 ]
  %44 = phi i32 [ 0, %39 ], [ %70, %68 ]
  %45 = getelementptr inbounds %struct.sta_info, ptr %43, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %20
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %46, i32 0, i32 49
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %68, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %40, align 4
  %54 = icmp eq ptr %50, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %52, %41
  %56 = tail call i32 @ieee80211_sta_cap_rx_bw(ptr noundef %43) #11
  switch i32 %56, label %63 [
    i32 0, label %57
    i32 1, label %64
    i32 2, label %61
    i32 3, label %62
  ]

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.sta_info, ptr %43, i32 0, i32 46, i32 3, i32 1
  %59 = load i8, ptr %58, align 2, !range !10
  %60 = zext i8 %59 to i32
  br label %64

61:                                               ; preds = %55
  br label %64

62:                                               ; preds = %55
  br label %64

63:                                               ; preds = %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef null) #11
  br label %64

64:                                               ; preds = %63, %62, %61, %57, %55
  %65 = phi i32 [ 1, %63 ], [ 5, %62 ], [ 3, %61 ], [ %60, %57 ], [ 2, %55 ]
  %66 = tail call i32 @llvm.umax.i32(i32 %44, i32 %65) #11
  %67 = load ptr, ptr %34, align 4
  br label %68

68:                                               ; preds = %64, %52, %48
  %69 = phi ptr [ %67, %64 ], [ %42, %52 ], [ %42, %48 ]
  %70 = phi i32 [ %66, %64 ], [ %44, %52 ], [ %44, %48 ]
  %71 = load volatile ptr, ptr %43, align 4
  %72 = getelementptr inbounds %struct.ieee80211_local, ptr %69, i32 0, i32 49
  %73 = icmp eq ptr %71, %72
  br i1 %73, label %74, label %41

74:                                               ; preds = %68, %33
  %75 = phi i32 [ 0, %33 ], [ %70, %68 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %128

76:                                               ; preds = %31
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 58, i32 1, i32 32, i32 1
  %78 = load i32, ptr %77, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %79 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 7
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.ieee80211_local, ptr %80, i32 0, i32 49
  %82 = load volatile ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, %81
  br i1 %83, label %119, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 49
  br label %86

86:                                               ; preds = %113, %84
  %87 = phi ptr [ %80, %84 ], [ %114, %113 ]
  %88 = phi ptr [ %82, %84 ], [ %116, %113 ]
  %89 = phi i32 [ 0, %84 ], [ %115, %113 ]
  %90 = getelementptr inbounds %struct.sta_info, ptr %88, i32 0, i32 6
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %20
  br i1 %92, label %100, label %93

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %91, i32 0, i32 49
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %113, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %85, align 4
  %99 = icmp eq ptr %95, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %97, %86
  %101 = tail call i32 @ieee80211_sta_cap_rx_bw(ptr noundef %88) #11
  switch i32 %101, label %108 [
    i32 0, label %102
    i32 1, label %109
    i32 2, label %106
    i32 3, label %107
  ]

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.sta_info, ptr %88, i32 0, i32 46, i32 3, i32 1
  %104 = load i8, ptr %103, align 2, !range !10
  %105 = zext i8 %104 to i32
  br label %109

106:                                              ; preds = %100
  br label %109

107:                                              ; preds = %100
  br label %109

108:                                              ; preds = %100
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef null) #11
  br label %109

109:                                              ; preds = %108, %107, %106, %102, %100
  %110 = phi i32 [ 1, %108 ], [ 5, %107 ], [ 3, %106 ], [ %105, %102 ], [ 2, %100 ]
  %111 = tail call i32 @llvm.umax.i32(i32 %89, i32 %110) #11
  %112 = load ptr, ptr %79, align 4
  br label %113

113:                                              ; preds = %109, %97, %93
  %114 = phi ptr [ %112, %109 ], [ %87, %97 ], [ %87, %93 ]
  %115 = phi i32 [ %111, %109 ], [ %89, %97 ], [ %89, %93 ]
  %116 = load volatile ptr, ptr %88, align 4
  %117 = getelementptr inbounds %struct.ieee80211_local, ptr %114, i32 0, i32 49
  %118 = icmp eq ptr %116, %117
  br i1 %118, label %119, label %86

119:                                              ; preds = %113, %76
  %120 = phi i32 [ 0, %76 ], [ %115, %113 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %121 = tail call i32 @llvm.umax.i32(i32 %78, i32 %120) #11
  br label %128

122:                                              ; preds = %31, %31, %31
  %123 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 58, i32 1, i32 32, i32 1
  %124 = load i32, ptr %123, align 4
  br label %128

125:                                              ; preds = %31, %31, %31, %31, %31, %31
  %126 = load i1, ptr @ieee80211_get_chanctx_max_required_bw.__already_done, align 1
  br i1 %126, label %128, label %127, !prof !11

127:                                              ; preds = %125
  store i1 true, ptr @ieee80211_get_chanctx_max_required_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 292, i32 noundef 9, ptr noundef null) #11
  br label %128

128:                                              ; preds = %127, %125, %122, %119, %74, %31
  %129 = phi i32 [ 0, %31 ], [ %124, %122 ], [ %121, %119 ], [ %75, %74 ], [ 0, %127 ], [ 0, %125 ]
  %130 = tail call i32 @llvm.umax.i32(i32 %21, i32 %129) #11
  br label %131

131:                                              ; preds = %128, %31, %31, %27, %19
  %132 = phi i32 [ %130, %128 ], [ %21, %19 ], [ %21, %27 ], [ %21, %31 ], [ %21, %31 ]
  %133 = load volatile ptr, ptr %20, align 8
  %134 = icmp eq ptr %133, %16
  br i1 %134, label %135, label %19

135:                                              ; preds = %131, %15
  %136 = phi i32 [ 0, %15 ], [ %132, %131 ]
  %137 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 111
  %138 = load volatile ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %147, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %138, i32 0, i32 58, i32 9
  %142 = load volatile ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, %4
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, ptr %5, align 4
  %146 = tail call i32 @llvm.umax.i32(i32 %136, i32 %145) #11
  br label %147

147:                                              ; preds = %144, %140, %135
  %148 = phi i32 [ %146, %144 ], [ %136, %140 ], [ %136, %135 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef align 4 dereferenceable(28) %4, i32 28, i1 false)
  %149 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = icmp ugt i32 %150, %148
  br i1 %151, label %152, label %156

152:                                              ; preds = %152, %147
  %153 = call i32 @ieee80211_chandef_downgrade(ptr noundef nonnull %3) #11
  %154 = load i32, ptr %149, align 4
  %155 = icmp ugt i32 %154, %148
  br i1 %155, label %152, label %156

156:                                              ; preds = %152, %147
  %157 = phi i32 [ %150, %147 ], [ %154, %152 ]
  %158 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = load ptr, ptr %3, align 4
  %161 = icmp eq ptr %159, %160
  br i1 %161, label %162, label %184

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8, i32 1, i32 1
  %164 = load i32, ptr %163, align 4
  %165 = icmp eq i32 %164, %157
  br i1 %165, label %166, label %184

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8, i32 1, i32 2
  %168 = load i32, ptr %167, align 4
  %169 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 2
  %170 = load i32, ptr %169, align 4
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %184

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8, i32 1, i32 5
  %174 = load i16, ptr %173, align 4
  %175 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 5
  %176 = load i16, ptr %175, align 4
  %177 = icmp eq i16 %174, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8, i32 1, i32 3
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 3
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %180, %182
  br i1 %183, label %189, label %184

184:                                              ; preds = %178, %172, %166, %162, %156
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %158, ptr noundef nonnull align 4 dereferenceable(28) %3, i32 28, i1 false)
  %185 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 7
  %186 = load i8, ptr %185, align 4, !range !10
  %187 = icmp eq i8 %186, 0
  %188 = select i1 %187, i32 0, i32 16
  br label %189

189:                                              ; preds = %184, %178, %13
  %190 = phi i32 [ 0, %13 ], [ 0, %178 ], [ %188, %184 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #11
  ret i32 %190
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drv_change_chanctx(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_change_chanctx, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  %18 = tail call i32 @__traceiter_drv_change_chanctx(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  br label %19

19:                                               ; preds = %17, %6, %3
  %20 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ieee80211_ops, ptr %21, i32 0, i32 71
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 7
  %27 = load i8, ptr %26, align 4, !range !10
  %28 = icmp eq i8 %27, 0
  %29 = load i1, ptr @drv_change_chanctx.__already_done, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %36, !prof !14

32:                                               ; preds = %25
  store i1 true, ptr @drv_change_chanctx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 912, i32 noundef 9, ptr noundef null) #11
  %33 = load ptr, ptr %20, align 4
  %34 = getelementptr inbounds %struct.ieee80211_ops, ptr %33, i32 0, i32 71
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %32, %25
  %37 = phi ptr [ %35, %32 ], [ %23, %25 ]
  %38 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8
  tail call void %37(ptr noundef %0, ptr noundef %38, i32 noundef %2) #11
  br label %39

39:                                               ; preds = %36, %19
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %54 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  br label %55

55:                                               ; preds = %53, %42, %39
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ieee80211_is_radar_required(ptr noundef %0) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load volatile ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %5, i32 0, i32 47
  %9 = load i8, ptr %8, align 4, !range !10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %3, label %11

11:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %13

12:                                               ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %13

13:                                               ; preds = %12, %11
  %14 = xor i1 %6, true
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_recalc_chanctx_chantype(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %5 = load volatile ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %37, label %7

7:                                                ; preds = %33, %2
  %8 = phi ptr [ %35, %33 ], [ %5, %2 ]
  %9 = phi ptr [ %34, %33 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %8, i32 0, i32 9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %8, i32 0, i32 58, i32 9
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %3
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %8, i32 0, i32 58
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = icmp eq ptr %9, null
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %8, i32 0, i32 58, i32 1, i32 32
  %25 = select i1 %23, ptr %24, ptr %9
  %26 = tail call ptr @cfg80211_chandef_compatible(ptr noundef %24, ptr noundef %25) #11
  %27 = icmp eq ptr %26, null
  %28 = load i1, ptr @ieee80211_recalc_chanctx_chantype.__already_done, align 1
  %29 = xor i1 %28, true
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %32, !prof !14

31:                                               ; preds = %22
  store i1 true, ptr @ieee80211_recalc_chanctx_chantype.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 699, i32 noundef 9, ptr noundef null) #11
  br label %32

32:                                               ; preds = %31, %22
  br i1 %27, label %37, label %33

33:                                               ; preds = %32, %18, %14, %7
  %34 = phi ptr [ %9, %14 ], [ %9, %18 ], [ %26, %32 ], [ %9, %7 ]
  %35 = load volatile ptr, ptr %8, align 8
  %36 = icmp eq ptr %35, %4
  br i1 %36, label %37, label %7

37:                                               ; preds = %33, %32, %2
  %38 = phi ptr [ null, %2 ], [ null, %32 ], [ %34, %33 ]
  %39 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 49
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %74, label %42

42:                                               ; preds = %70, %37
  %43 = phi ptr [ %72, %70 ], [ %40, %37 ]
  %44 = phi ptr [ %71, %70 ], [ %38, %37 ]
  %45 = getelementptr inbounds %struct.sta_info, ptr %43, i32 0, i32 21
  %46 = load i8, ptr %45, align 4, !range !10
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.sta_info, ptr %43, i32 0, i32 23
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 65536
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %48
  %54 = load volatile i32, ptr %49, align 4
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.sta_info, ptr %43, i32 0, i32 44
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  %62 = tail call ptr @cfg80211_chandef_compatible(ptr noundef %58, ptr noundef %44) #11
  %63 = icmp eq ptr %62, null
  %64 = load i1, ptr @ieee80211_recalc_chanctx_chantype.__already_done.1, align 1
  %65 = xor i1 %64, true
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %68, !prof !14

67:                                               ; preds = %61
  store i1 true, ptr @ieee80211_recalc_chanctx_chantype.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 713, i32 noundef 9, ptr noundef null) #11
  br label %68

68:                                               ; preds = %67, %61
  br i1 %63, label %69, label %70

69:                                               ; preds = %68
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %78

70:                                               ; preds = %68, %57, %53, %48, %42
  %71 = phi ptr [ %62, %68 ], [ %44, %57 ], [ %44, %53 ], [ %44, %48 ], [ %44, %42 ]
  %72 = load volatile ptr, ptr %43, align 4
  %73 = icmp eq ptr %72, %39
  br i1 %73, label %74, label %42

74:                                               ; preds = %70, %37
  %75 = phi ptr [ %38, %37 ], [ %71, %70 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  tail call fastcc void @ieee80211_change_chanctx(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %75)
  br label %78

78:                                               ; preds = %77, %74, %69
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_chandef_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_change_chanctx(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, 6
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 430, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %2, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.wiphy, ptr %11, i32 0, i32 53, i32 %14
  %16 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %17 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 49
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %41, label %20

20:                                               ; preds = %38, %9
  %21 = phi ptr [ %39, %38 ], [ %18, %9 ]
  %22 = getelementptr inbounds %struct.sta_info, ptr %21, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %23, i32 0, i32 9
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %23, i32 0, i32 58, i32 9
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %12
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = tail call i32 @ieee80211_sta_cur_vht_bw(ptr noundef %21) #11
  %34 = getelementptr inbounds %struct.sta_info, ptr %21, i32 0, i32 46, i32 14
  %35 = load i32, ptr %34, align 8
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 %33, ptr %34, align 8
  tail call void @rate_control_rate_update(ptr noundef %0, ptr noundef %16, ptr noundef %21, i32 noundef 1) #11
  br label %38

38:                                               ; preds = %37, %32, %28, %20
  %39 = load volatile ptr, ptr %21, align 4
  %40 = icmp eq ptr %39, %17
  br i1 %40, label %41, label %20

41:                                               ; preds = %38, %9
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %42 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %3, align 4
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8, i32 0, i32 5
  %59 = load i16, ptr %58, align 4
  %60 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 5
  %61 = load i16, ptr %60, align 4
  %62 = icmp eq i16 %59, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  tail call void @ieee80211_recalc_chanctx_min_def(ptr noundef %0, ptr noundef %1)
  br label %113

70:                                               ; preds = %63, %57, %51, %46, %41
  %71 = tail call ptr @cfg80211_chandef_compatible(ptr noundef %42, ptr noundef %3) #11
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %74, !prof !14

73:                                               ; preds = %70
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 444, i32 noundef 9, ptr noundef null) #11
  br label %74

74:                                               ; preds = %73, %70
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %42, ptr noundef align 4 dereferenceable(28) %3, i32 28, i1 false)
  %75 = tail call fastcc i32 @_ieee80211_recalc_chanctx_min_def(ptr noundef %0, ptr noundef %1)
  %76 = or i32 %75, 1
  tail call fastcc void @drv_change_chanctx(ptr noundef %0, ptr noundef %1, i32 noundef %76)
  %77 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 26
  %78 = load i8, ptr %77, align 1, !range !10
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %81, ptr noundef align 4 dereferenceable(28) %3, i32 28, i1 false)
  %82 = tail call i32 @ieee80211_hw_config(ptr noundef %0, i32 noundef 0) #11
  br label %83

83:                                               ; preds = %80, %74
  %84 = load ptr, ptr %10, align 8
  %85 = load ptr, ptr %12, align 4
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr %struct.wiphy, ptr %84, i32 0, i32 53, i32 %86
  %88 = load ptr, ptr %87, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %89 = load volatile ptr, ptr %17, align 4
  %90 = icmp eq ptr %89, %17
  br i1 %90, label %112, label %91

91:                                               ; preds = %109, %83
  %92 = phi ptr [ %110, %109 ], [ %89, %83 ]
  %93 = getelementptr inbounds %struct.sta_info, ptr %92, i32 0, i32 6
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %94, i32 0, i32 9
  %96 = load volatile i32, ptr %95, align 4
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %94, i32 0, i32 58, i32 9
  %101 = load volatile ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, %12
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = tail call i32 @ieee80211_sta_cur_vht_bw(ptr noundef %92) #11
  %105 = getelementptr inbounds %struct.sta_info, ptr %92, i32 0, i32 46, i32 14
  %106 = load i32, ptr %105, align 8
  %107 = icmp ugt i32 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 %104, ptr %105, align 8
  tail call void @rate_control_rate_update(ptr noundef %0, ptr noundef %88, ptr noundef %92, i32 noundef 1) #11
  br label %109

109:                                              ; preds = %108, %103, %99, %91
  %110 = load volatile ptr, ptr %92, align 4
  %111 = icmp eq ptr %110, %17
  br i1 %111, label %112, label %91

112:                                              ; preds = %109, %83
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %113

113:                                              ; preds = %112, %69
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_recalc_smps_chanctx(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %4 = load volatile ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %52, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8
  br label %8

8:                                                ; preds = %47, %6
  %9 = phi ptr [ %4, %6 ], [ %50, %47 ]
  %10 = phi i8 [ 1, %6 ], [ %49, %47 ]
  %11 = phi i8 [ 1, %6 ], [ %48, %47 ]
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %9, i32 0, i32 9
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %9, i32 0, i32 58, i32 9
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %9, i32 0, i32 58
  %22 = load i32, ptr %21, align 8
  switch i32 %22, label %27 [
    i32 10, label %47
    i32 12, label %47
    i32 2, label %23
    i32 4, label %47
    i32 3, label %30
    i32 1, label %30
    i32 7, label %30
    i32 11, label %30
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %9, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %30

27:                                               ; preds = %20
  %28 = load i1, ptr @ieee80211_recalc_smps_chanctx.__already_done, align 1
  br i1 %28, label %30, label %29, !prof !11

29:                                               ; preds = %27
  store i1 true, ptr @ieee80211_recalc_smps_chanctx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 845, i32 noundef 9, ptr noundef null) #11
  br label %30

30:                                               ; preds = %29, %27, %23, %20, %20, %20, %20
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %9, i32 0, i32 44
  %32 = load i32, ptr %31, align 8
  switch i32 %32, label %33 [
    i32 1, label %36
    i32 3, label %39
    i32 2, label %42
  ]

33:                                               ; preds = %30
  %34 = load i1, ptr @ieee80211_recalc_smps_chanctx.__already_done.2, align 1
  br i1 %34, label %36, label %35, !prof !11

35:                                               ; preds = %33
  store i1 true, ptr @ieee80211_recalc_smps_chanctx.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 851, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %32) #11
  br label %36

36:                                               ; preds = %35, %33, %30
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %9, i32 0, i32 43
  %38 = load i8, ptr %37, align 4
  br label %42

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %9, i32 0, i32 43
  %41 = load i8, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %36, %30
  %43 = phi i8 [ %38, %36 ], [ %41, %39 ], [ 1, %30 ]
  %44 = phi i8 [ %38, %36 ], [ 1, %39 ], [ 1, %30 ]
  %45 = tail call i8 @llvm.umax.i8(i8 %10, i8 %44)
  %46 = tail call i8 @llvm.umax.i8(i8 %11, i8 %43)
  br label %47

47:                                               ; preds = %42, %23, %20, %20, %20, %16, %8
  %48 = phi i8 [ %46, %42 ], [ %11, %8 ], [ %11, %16 ], [ %11, %20 ], [ %11, %20 ], [ %11, %23 ], [ %11, %20 ]
  %49 = phi i8 [ %45, %42 ], [ %10, %8 ], [ %10, %16 ], [ %10, %20 ], [ %10, %20 ], [ %10, %23 ], [ %10, %20 ]
  %50 = load volatile ptr, ptr %9, align 8
  %51 = icmp eq ptr %50, %3
  br i1 %51, label %52, label %8

52:                                               ; preds = %47, %2
  %53 = phi i8 [ 1, %2 ], [ %48, %47 ]
  %54 = phi i8 [ 1, %2 ], [ %49, %47 ]
  %55 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 111
  %56 = load volatile ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %56, i32 0, i32 58, i32 9
  %60 = load volatile ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 39
  %65 = load i8, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %58, %52
  %67 = phi i8 [ %65, %63 ], [ %53, %58 ], [ %53, %52 ]
  %68 = phi i8 [ %65, %63 ], [ %54, %58 ], [ %54, %52 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %69 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 26
  %70 = load i8, ptr %69, align 1, !range !10
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = icmp ugt i8 %68, 1
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 100
  store i32 1, ptr %75, align 4
  br label %81

76:                                               ; preds = %72
  %77 = icmp ugt i8 %67, 1
  %78 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 100
  br i1 %77, label %79, label %80

79:                                               ; preds = %76
  store i32 3, ptr %78, align 4
  br label %81

80:                                               ; preds = %76
  store i32 2, ptr %78, align 4
  br label %81

81:                                               ; preds = %80, %79, %74
  %82 = tail call i32 @ieee80211_hw_config(ptr noundef %0, i32 noundef 0) #11
  br label %83

83:                                               ; preds = %81, %66
  %84 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8, i32 2
  %85 = load i8, ptr %84, align 4
  %86 = icmp eq i8 %68, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8, i32 3
  %89 = load i8, ptr %88, align 1
  %90 = icmp eq i8 %67, %89
  br i1 %90, label %93, label %91

91:                                               ; preds = %87, %83
  store i8 %68, ptr %84, align 4
  %92 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8, i32 3
  store i8 %67, ptr %92, align 1
  tail call fastcc void @drv_change_chanctx(ptr noundef %0, ptr noundef %1, i32 noundef 2)
  br label %93

93:                                               ; preds = %91, %87
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_hw_config(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_vif_copy_chanctx_to_vlans(ptr noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %10, label %9, !prof !11

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 906, i32 noundef 9, ptr noundef null) #11
  br label %25

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !14

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 919, i32 noundef 9, ptr noundef null) #11
  br label %15

15:                                               ; preds = %14, %10
  %16 = select i1 %1, ptr null, ptr %12
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %25, label %20

20:                                               ; preds = %20, %15
  %21 = phi ptr [ %23, %20 ], [ %18, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  %22 = getelementptr i8, ptr %21, i32 1676
  store volatile ptr %16, ptr %22, align 4
  %23 = load ptr, ptr %21, align 4
  %24 = icmp eq ptr %23, %17
  br i1 %24, label %25, label %20

25:                                               ; preds = %20, %15, %9
  tail call void @mutex_unlock(ptr noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_vif_unreserve_chanctx(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 35
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %5 = icmp eq ptr %3, null
  br i1 %5, label %6, label %7, !prof !14

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 946, i32 noundef 9, ptr noundef null) #11
  br label %90

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 34
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 34, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  store ptr null, ptr %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %3, i32 0, i32 2
  br label %14

14:                                               ; preds = %14, %7
  %15 = phi i32 [ 0, %7 ], [ %19, %14 ]
  %16 = phi ptr [ %13, %7 ], [ %17, %14 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %13
  %19 = add i32 %15, 1
  br i1 %18, label %20, label %14

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %3, i32 0, i32 3
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ 0, %20 ], [ %27, %22 ]
  %24 = phi ptr [ %21, %20 ], [ %25, %22 ]
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %21
  %27 = add i32 %23, 1
  br i1 %26, label %28, label %22

28:                                               ; preds = %22
  %29 = sub i32 0, %15
  %30 = icmp eq i32 %23, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %3, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %63

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %3, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40, !prof !14

39:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 954, i32 noundef 9, ptr noundef null) #11
  br label %90

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %37, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %46, label %44, !prof !11

44:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 958, i32 noundef 9, ptr noundef null) #11
  %45 = load ptr, ptr %36, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi ptr [ %45, %44 ], [ %37, %40 ]
  %48 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %47, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %3
  br i1 %50, label %53, label %51, !prof !11

51:                                               ; preds = %46
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 959, i32 noundef 9, ptr noundef null) #11
  %52 = load ptr, ptr %36, align 4
  br label %53

53:                                               ; preds = %51, %46
  %54 = phi ptr [ %47, %46 ], [ %52, %51 ]
  %55 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %54, i32 0, i32 5
  store ptr null, ptr %55, align 4
  %56 = load ptr, ptr %36, align 4
  %57 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %56, i32 0, i32 4
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %60, ptr %59, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %58, align 4
  %62 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %3, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %62, ptr noundef nonnull inttoptr (i32 8 to ptr)) #11
  br label %90

63:                                               ; preds = %31
  %64 = load ptr, ptr %4, align 4
  br label %65

65:                                               ; preds = %65, %63
  %66 = phi i32 [ 0, %63 ], [ %70, %65 ]
  %67 = phi ptr [ %13, %63 ], [ %68, %65 ]
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %13
  %70 = add i32 %66, 1
  br i1 %69, label %71, label %65

71:                                               ; preds = %71, %65
  %72 = phi i32 [ %76, %71 ], [ 0, %65 ]
  %73 = phi ptr [ %74, %71 ], [ %21, %65 ]
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %21
  %76 = add i32 %72, 1
  br i1 %75, label %77, label %71

77:                                               ; preds = %71
  %78 = sub i32 0, %66
  %79 = icmp ne i32 %72, %78
  %80 = load i1, ptr @ieee80211_free_chanctx.__already_done, align 1
  %81 = xor i1 %80, true
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %84, !prof !14

83:                                               ; preds = %77
  store i1 true, ptr @ieee80211_free_chanctx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #11
  br label %84

84:                                               ; preds = %83, %77
  %85 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = load ptr, ptr %3, align 4
  %88 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  store ptr %86, ptr %88, align 4
  store volatile ptr %87, ptr %86, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %85, align 4
  tail call fastcc void @ieee80211_del_chanctx(ptr noundef %64, ptr noundef nonnull %3) #11
  %89 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %3, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %89, ptr noundef nonnull inttoptr (i32 8 to ptr)) #11
  br label %90

90:                                               ; preds = %84, %53, %39, %28, %6
  %91 = phi i32 [ -22, %6 ], [ -22, %39 ], [ 0, %53 ], [ 0, %84 ], [ 0, %28 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_vif_reserve_chanctx(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = zext i1 %3 to i8
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr i8, ptr %9, i32 -48
  %12 = select i1 %10, ptr null, ptr %11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 26
  %16 = load i8, ptr %15, align 1, !range !10
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ieee80211_ops, ptr %20, i32 0, i32 74
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %204, label %24

24:                                               ; preds = %18, %14, %4
  %25 = icmp eq i32 %2, 1
  br i1 %25, label %94, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 88
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %94, label %30

30:                                               ; preds = %89, %26
  %31 = phi ptr [ %90, %89 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %31, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %89, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %31, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %89, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %31, i32 0, i32 3
  br label %41

41:                                               ; preds = %47, %39
  %42 = phi ptr [ %40, %39 ], [ %44, %47 ]
  %43 = phi ptr [ %1, %39 ], [ %50, %47 ]
  %44 = load ptr, ptr %42, align 4
  %45 = icmp eq ptr %44, %40
  %46 = icmp eq ptr %43, null
  br i1 %45, label %52, label %47

47:                                               ; preds = %41
  %48 = getelementptr i8, ptr %44, i32 12
  %49 = select i1 %46, ptr %48, ptr %43
  %50 = tail call ptr @cfg80211_chandef_compatible(ptr noundef %48, ptr noundef %49) #11
  %51 = icmp eq ptr %50, null
  br i1 %51, label %75, label %41

52:                                               ; preds = %41
  br i1 %46, label %75, label %53

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %31, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %92, label %57

57:                                               ; preds = %69, %53
  %58 = phi ptr [ %71, %69 ], [ %55, %53 ]
  %59 = phi ptr [ %70, %69 ], [ %43, %53 ]
  %60 = getelementptr i8, ptr %58, i32 16
  %61 = load ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = icmp eq ptr %59, null
  %65 = getelementptr i8, ptr %58, i32 1372
  %66 = select i1 %64, ptr %65, ptr %59
  %67 = tail call ptr @cfg80211_chandef_compatible(ptr noundef %65, ptr noundef %66) #11
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %63, %57
  %70 = phi ptr [ %59, %57 ], [ %67, %63 ]
  %71 = load ptr, ptr %58, align 4
  %72 = icmp eq ptr %71, %54
  br i1 %72, label %73, label %57

73:                                               ; preds = %69
  %74 = icmp eq ptr %70, null
  br i1 %74, label %75, label %92

75:                                               ; preds = %73, %63, %52, %47
  %76 = load volatile ptr, ptr %40, align 4
  %77 = icmp eq ptr %76, %40
  br i1 %77, label %89, label %78

78:                                               ; preds = %86, %75
  %79 = phi ptr [ %84, %86 ], [ %1, %75 ]
  %80 = phi ptr [ %87, %86 ], [ %76, %75 ]
  %81 = icmp eq ptr %79, null
  %82 = getelementptr i8, ptr %80, i32 12
  %83 = select i1 %81, ptr %82, ptr %79
  %84 = tail call ptr @cfg80211_chandef_compatible(ptr noundef %82, ptr noundef %83) #11
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %78
  %87 = load ptr, ptr %80, align 4
  %88 = icmp eq ptr %87, %40
  br i1 %88, label %92, label %78

89:                                               ; preds = %78, %75, %35, %30
  %90 = load ptr, ptr %31, align 4
  %91 = icmp eq ptr %90, %27
  br i1 %91, label %94, label %30

92:                                               ; preds = %86, %73, %53
  %93 = icmp eq ptr %31, null
  br i1 %93, label %94, label %193

94:                                               ; preds = %92, %89, %26, %24
  %95 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 88
  br label %96

96:                                               ; preds = %96, %94
  %97 = phi i32 [ 0, %94 ], [ %101, %96 ]
  %98 = phi ptr [ %95, %94 ], [ %99, %96 ]
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %95
  %101 = add i32 %97, 1
  br i1 %100, label %102, label %96

102:                                              ; preds = %96
  %103 = tail call i32 @ieee80211_max_num_channels(ptr noundef %7) #11
  %104 = icmp slt i32 %97, %103
  br i1 %104, label %105, label %135

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 9
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, 108
  %109 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %108, i32 noundef 3520) #12
  %110 = icmp eq ptr %109, null
  br i1 %110, label %132, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %109, i32 0, i32 2
  store volatile ptr %112, ptr %112, align 16
  %113 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %109, i32 0, i32 2, i32 1
  store ptr %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %109, i32 0, i32 3
  store volatile ptr %114, ptr %114, align 8
  %115 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %109, i32 0, i32 3, i32 1
  store ptr %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %109, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 16 dereferenceable(28) %116, ptr noundef align 4 dereferenceable(28) %1, i32 28, i1 false) #11
  %117 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %109, i32 0, i32 8, i32 2
  store i8 1, ptr %117, align 8
  %118 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %109, i32 0, i32 8, i32 3
  store i8 1, ptr %118, align 1
  %119 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %109, i32 0, i32 6
  store i32 %2, ptr %119, align 8
  %120 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %109, i32 0, i32 8, i32 4
  store i8 0, ptr %120, align 2
  tail call void @ieee80211_recalc_chanctx_min_def(ptr noundef %7, ptr noundef nonnull %109) #11
  %121 = tail call fastcc i32 @ieee80211_add_chanctx(ptr noundef %7, ptr noundef nonnull %109) #11
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %111
  tail call void @kfree(ptr noundef nonnull %109) #11
  %124 = inttoptr i32 %121 to ptr
  br label %129

125:                                              ; preds = %111
  %126 = load ptr, ptr %95, align 4
  store ptr %126, ptr %109, align 64
  %127 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  store ptr %95, ptr %127, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  store volatile ptr %109, ptr %95, align 4
  %128 = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  store ptr %109, ptr %128, align 4
  br label %129

129:                                              ; preds = %125, %123
  %130 = phi ptr [ %124, %123 ], [ %109, %125 ]
  %131 = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  br i1 %131, label %132, label %193

132:                                              ; preds = %129, %105
  %133 = phi ptr [ %130, %129 ], [ inttoptr (i32 -12 to ptr), %105 ]
  %134 = ptrtoint ptr %133 to i32
  br label %204

135:                                              ; preds = %102
  br i1 %13, label %144, label %136

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %12, i32 0, i32 4
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %12, i32 0, i32 3
  %142 = load volatile ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, %141
  br i1 %143, label %162, label %144

144:                                              ; preds = %140, %136, %135
  %145 = load ptr, ptr %95, align 4
  %146 = icmp eq ptr %145, %95
  br i1 %146, label %159, label %147

147:                                              ; preds = %156, %144
  %148 = phi ptr [ %157, %156 ], [ %145, %144 ]
  %149 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %148, i32 0, i32 4
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %148, i32 0, i32 3
  %154 = load volatile ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, %153
  br i1 %155, label %159, label %156

156:                                              ; preds = %152, %147
  %157 = load ptr, ptr %148, align 4
  %158 = icmp eq ptr %157, %95
  br i1 %158, label %159, label %147

159:                                              ; preds = %156, %152, %144
  %160 = phi ptr [ %12, %144 ], [ %148, %152 ], [ %12, %156 ]
  %161 = icmp eq ptr %160, null
  br i1 %161, label %204, label %162

162:                                              ; preds = %159, %140
  %163 = phi ptr [ %160, %159 ], [ %11, %140 ]
  %164 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %163, i32 0, i32 4
  %165 = load i32, ptr %164, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %204, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %163, i32 0, i32 3
  %169 = load volatile ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, %168
  br i1 %170, label %171, label %204

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 9
  %173 = load i32, ptr %172, align 4
  %174 = add i32 %173, 108
  %175 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %174, i32 noundef 3520) #12
  %176 = icmp eq ptr %175, null
  br i1 %176, label %204, label %177

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %175, i32 0, i32 2
  store volatile ptr %178, ptr %178, align 16
  %179 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %175, i32 0, i32 2, i32 1
  store ptr %178, ptr %179, align 4
  %180 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %175, i32 0, i32 3
  store volatile ptr %180, ptr %180, align 8
  %181 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %175, i32 0, i32 3, i32 1
  store ptr %180, ptr %181, align 4
  %182 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %175, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 16 dereferenceable(28) %182, ptr noundef align 4 dereferenceable(28) %1, i32 28, i1 false) #11
  %183 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %175, i32 0, i32 8, i32 2
  store i8 1, ptr %183, align 8
  %184 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %175, i32 0, i32 8, i32 3
  store i8 1, ptr %184, align 1
  %185 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %175, i32 0, i32 6
  store i32 %2, ptr %185, align 8
  %186 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %175, i32 0, i32 8, i32 4
  store i8 0, ptr %186, align 2
  tail call void @ieee80211_recalc_chanctx_min_def(ptr noundef %7, ptr noundef nonnull %175) #11
  %187 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %175, i32 0, i32 5
  store ptr %163, ptr %187, align 4
  %188 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %175, i32 0, i32 4
  store i32 2, ptr %188, align 32
  %189 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %163, i32 0, i32 5
  store ptr %175, ptr %189, align 4
  store i32 1, ptr %164, align 4
  %190 = load ptr, ptr %95, align 4
  store ptr %190, ptr %175, align 64
  %191 = getelementptr inbounds %struct.list_head, ptr %175, i32 0, i32 1
  store ptr %95, ptr %191, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  store volatile ptr %175, ptr %95, align 4
  %192 = getelementptr inbounds %struct.list_head, ptr %190, i32 0, i32 1
  store ptr %175, ptr %192, align 4
  br label %193

193:                                              ; preds = %177, %129, %92
  %194 = phi ptr [ %31, %92 ], [ %130, %129 ], [ %175, %177 ]
  %195 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 34
  %196 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %194, i32 0, i32 3
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr inbounds %struct.list_head, ptr %197, i32 0, i32 1
  store ptr %195, ptr %198, align 4
  store ptr %197, ptr %195, align 4
  %199 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 34, i32 1
  store ptr %196, ptr %199, align 4
  store volatile ptr %195, ptr %196, align 4
  %200 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 35
  store ptr %194, ptr %200, align 8
  %201 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 36
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %201, ptr noundef align 4 dereferenceable(28) %1, i32 28, i1 false)
  %202 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 37
  store i8 %5, ptr %202, align 8
  %203 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 38
  store i8 0, ptr %203, align 1
  br label %204

204:                                              ; preds = %193, %171, %167, %162, %159, %132, %18
  %205 = phi i32 [ 0, %193 ], [ %134, %132 ], [ -524, %18 ], [ -16, %167 ], [ -16, %162 ], [ -16, %159 ], [ -12, %171 ]
  ret i32 %205
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_vif_use_channel(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !14

14:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1673, i32 noundef 9, ptr noundef null) #11
  br label %15

15:                                               ; preds = %14, %9, %3
  %16 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %16) #11
  %17 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @cfg80211_chandef_dfs_required(ptr noundef %18, ptr noundef %1, i32 noundef %20) #11
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %205, label %23

23:                                               ; preds = %15
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = shl nuw i32 1, %27
  %29 = trunc i32 %28 to i8
  br label %30

30:                                               ; preds = %25, %23
  %31 = phi i8 [ %29, %25 ], [ 0, %23 ]
  %32 = icmp ne i32 %21, 0
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 47
  %34 = zext i1 %32 to i8
  store i8 %34, ptr %33, align 4
  %35 = tail call i32 @ieee80211_check_combinations(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %31) #11
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %205, label %37

37:                                               ; preds = %30
  tail call fastcc void @__ieee80211_vif_release_channel(ptr noundef %0)
  %38 = icmp eq i32 %2, 1
  br i1 %38, label %72, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 88
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %72, label %43

43:                                               ; preds = %67, %39
  %44 = phi ptr [ %68, %67 ], [ %41, %39 ]
  %45 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %44, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %44, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %67, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %44, i32 0, i32 8
  %54 = tail call ptr @cfg80211_chandef_compatible(ptr noundef %53, ptr noundef %1) #11
  %55 = icmp eq ptr %54, null
  br i1 %55, label %67, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %44, i32 0, i32 3
  br label %58

58:                                               ; preds = %63, %56
  %59 = phi ptr [ %57, %56 ], [ %61, %63 ]
  %60 = phi ptr [ %54, %56 ], [ %65, %63 ]
  %61 = load ptr, ptr %59, align 4
  %62 = icmp eq ptr %61, %57
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = getelementptr i8, ptr %61, i32 12
  %65 = tail call ptr @cfg80211_chandef_compatible(ptr noundef %64, ptr noundef nonnull %60) #11
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %58

67:                                               ; preds = %63, %52, %48, %43
  %68 = load ptr, ptr %44, align 4
  %69 = icmp eq ptr %68, %40
  br i1 %69, label %72, label %43

70:                                               ; preds = %58
  tail call fastcc void @ieee80211_change_chanctx(ptr noundef %5, ptr noundef %44, ptr noundef %44, ptr noundef nonnull %60) #11
  %71 = icmp eq ptr %44, null
  br i1 %71, label %72, label %97

72:                                               ; preds = %70, %67, %39, %37
  %73 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 9
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, 108
  %76 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %75, i32 noundef 3520) #12
  %77 = icmp eq ptr %76, null
  br i1 %77, label %100, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %76, i32 0, i32 2
  store volatile ptr %79, ptr %79, align 16
  %80 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %76, i32 0, i32 2, i32 1
  store ptr %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %76, i32 0, i32 3
  store volatile ptr %81, ptr %81, align 8
  %82 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %76, i32 0, i32 3, i32 1
  store ptr %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %76, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 16 dereferenceable(28) %83, ptr noundef align 4 dereferenceable(28) %1, i32 28, i1 false) #11
  %84 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %76, i32 0, i32 8, i32 2
  store i8 1, ptr %84, align 8
  %85 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %76, i32 0, i32 8, i32 3
  store i8 1, ptr %85, align 1
  %86 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %76, i32 0, i32 6
  store i32 %2, ptr %86, align 8
  %87 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %76, i32 0, i32 8, i32 4
  store i8 0, ptr %87, align 2
  tail call void @ieee80211_recalc_chanctx_min_def(ptr noundef %5, ptr noundef nonnull %76) #11
  %88 = tail call fastcc i32 @ieee80211_add_chanctx(ptr noundef %5, ptr noundef nonnull %76) #11
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %78
  tail call void @kfree(ptr noundef nonnull %76) #11
  %91 = inttoptr i32 %88 to ptr
  br label %97

92:                                               ; preds = %78
  %93 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 88
  %94 = load ptr, ptr %93, align 4
  store ptr %94, ptr %76, align 64
  %95 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  store ptr %93, ptr %95, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  store volatile ptr %76, ptr %93, align 4
  %96 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  store ptr %76, ptr %96, align 4
  br label %97

97:                                               ; preds = %92, %90, %70
  %98 = phi ptr [ %44, %70 ], [ %91, %90 ], [ %76, %92 ]
  %99 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %103

100:                                              ; preds = %97, %72
  %101 = phi ptr [ %98, %97 ], [ inttoptr (i32 -12 to ptr), %72 ]
  %102 = ptrtoint ptr %101 to i32
  br label %202

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %105 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %105, ptr noundef align 4 dereferenceable(28) %1, i32 28, i1 false) #11
  %106 = load i32, ptr %104, align 8
  %107 = icmp eq i32 %106, 3
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, %109
  br i1 %111, label %117, label %112

112:                                              ; preds = %112, %108
  %113 = phi ptr [ %115, %112 ], [ %110, %108 ]
  %114 = getelementptr i8, ptr %113, i32 964
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %114, ptr noundef align 4 dereferenceable(28) %1, i32 28, i1 false) #11
  %115 = load ptr, ptr %113, align 4
  %116 = icmp eq ptr %115, %109
  br i1 %116, label %117, label %112

117:                                              ; preds = %112, %108, %103
  %118 = tail call fastcc i32 @ieee80211_assign_vif_chanctx(ptr noundef %0, ptr noundef %98)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %166, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %98, i32 0, i32 2
  br label %122

122:                                              ; preds = %122, %120
  %123 = phi i32 [ 0, %120 ], [ %127, %122 ]
  %124 = phi ptr [ %121, %120 ], [ %125, %122 ]
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, %121
  %127 = add i32 %123, 1
  br i1 %126, label %128, label %122

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %98, i32 0, i32 3
  br label %130

130:                                              ; preds = %130, %128
  %131 = phi i32 [ 0, %128 ], [ %135, %130 ]
  %132 = phi ptr [ %129, %128 ], [ %133, %130 ]
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, %129
  %135 = add i32 %131, 1
  br i1 %134, label %136, label %130

136:                                              ; preds = %130
  %137 = sub i32 0, %123
  %138 = icmp eq i32 %131, %137
  br i1 %138, label %139, label %202

139:                                              ; preds = %139, %136
  %140 = phi i32 [ %144, %139 ], [ 0, %136 ]
  %141 = phi ptr [ %142, %139 ], [ %121, %136 ]
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, %121
  %144 = add i32 %140, 1
  br i1 %143, label %145, label %139

145:                                              ; preds = %145, %139
  %146 = phi i32 [ %150, %145 ], [ 0, %139 ]
  %147 = phi ptr [ %148, %145 ], [ %129, %139 ]
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, %129
  %150 = add i32 %146, 1
  br i1 %149, label %151, label %145

151:                                              ; preds = %145
  %152 = sub i32 0, %140
  %153 = icmp ne i32 %146, %152
  %154 = load i1, ptr @ieee80211_free_chanctx.__already_done, align 1
  %155 = xor i1 %154, true
  %156 = select i1 %153, i1 %155, i1 false
  br i1 %156, label %157, label %158, !prof !14

157:                                              ; preds = %151
  store i1 true, ptr @ieee80211_free_chanctx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #11
  br label %158

158:                                              ; preds = %157, %151
  %159 = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = load ptr, ptr %98, align 4
  %162 = getelementptr inbounds %struct.list_head, ptr %161, i32 0, i32 1
  store ptr %160, ptr %162, align 4
  store volatile ptr %161, ptr %160, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %159, align 4
  tail call fastcc void @ieee80211_del_chanctx(ptr noundef %5, ptr noundef %98) #11
  %163 = icmp eq ptr %98, null
  br i1 %163, label %202, label %164

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %98, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %165, ptr noundef nonnull inttoptr (i32 8 to ptr)) #11
  br label %202

166:                                              ; preds = %117
  tail call void @ieee80211_recalc_smps_chanctx(ptr noundef %5, ptr noundef %98)
  %167 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %98, i32 0, i32 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %168 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 62
  %169 = load volatile ptr, ptr %168, align 8
  %170 = icmp eq ptr %169, %168
  br i1 %170, label %188, label %171

171:                                              ; preds = %185, %166
  %172 = phi ptr [ %186, %185 ], [ %169, %166 ]
  %173 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %172, i32 0, i32 9
  %174 = load volatile i32, ptr %173, align 4
  %175 = and i32 %174, 1
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %172, i32 0, i32 58, i32 9
  %179 = load volatile ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, %167
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %172, i32 0, i32 47
  %183 = load i8, ptr %182, align 4, !range !10
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181, %177, %171
  %186 = load volatile ptr, ptr %172, align 8
  %187 = icmp eq ptr %186, %168
  br i1 %187, label %188, label %171

188:                                              ; preds = %185, %181, %166
  %189 = phi i1 [ false, %166 ], [ true, %181 ], [ false, %185 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %190 = zext i1 %189 to i8
  %191 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %98, i32 0, i32 8, i32 4
  %192 = load i8, ptr %191, align 2, !range !10
  %193 = icmp eq i8 %192, %190
  br i1 %193, label %208, label %194

194:                                              ; preds = %188
  store i8 %190, ptr %191, align 2
  %195 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 26
  %196 = load i8, ptr %195, align 1, !range !10
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.ieee80211_conf, ptr %5, i32 0, i32 8
  store i8 %190, ptr %199, align 8
  %200 = tail call i32 @ieee80211_hw_config(ptr noundef %5, i32 noundef 64) #11
  br label %201

201:                                              ; preds = %198, %194
  tail call fastcc void @drv_change_chanctx(ptr noundef %5, ptr noundef %98, i32 noundef 4) #11
  br label %208

202:                                              ; preds = %164, %158, %136, %100
  %203 = phi i32 [ %102, %100 ], [ %118, %136 ], [ %118, %158 ], [ %118, %164 ]
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %202, %30, %15
  %206 = phi i32 [ %203, %202 ], [ %35, %30 ], [ %21, %15 ]
  %207 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 47
  store i8 0, ptr %207, align 4
  br label %208

208:                                              ; preds = %205, %202, %201, %188
  %209 = phi i32 [ %206, %205 ], [ 0, %202 ], [ 0, %188 ], [ 0, %201 ]
  tail call void @mutex_unlock(ptr noundef %16) #11
  ret i32 %209
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_chandef_dfs_required(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_check_combinations(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ieee80211_vif_release_channel(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %81, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %5, i32 -48
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 35
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %10, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %10, i32 0, i32 3
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ 0, %16 ], [ %23, %18 ]
  %20 = phi ptr [ %17, %16 ], [ %21, %18 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %17
  %23 = add i32 %19, 1
  br i1 %22, label %24, label %18

24:                                               ; preds = %18
  %25 = icmp sgt i32 %19, 1
  br label %26

26:                                               ; preds = %24, %12
  %27 = phi i1 [ false, %12 ], [ %25, %24 ]
  %28 = tail call i32 @ieee80211_vif_unreserve_chanctx(ptr noundef %0)
  br label %29

29:                                               ; preds = %26, %7
  %30 = phi i1 [ %27, %26 ], [ false, %7 ]
  %31 = tail call fastcc i32 @ieee80211_assign_vif_chanctx(ptr noundef %0, ptr noundef null)
  %32 = getelementptr i8, ptr %5, i32 -32
  br label %33

33:                                               ; preds = %33, %29
  %34 = phi i32 [ 0, %29 ], [ %38, %33 ]
  %35 = phi ptr [ %32, %29 ], [ %36, %33 ]
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %32
  %38 = add i32 %34, 1
  br i1 %37, label %39, label %33

39:                                               ; preds = %33
  %40 = getelementptr i8, ptr %5, i32 -24
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ 0, %39 ], [ %46, %41 ]
  %43 = phi ptr [ %40, %39 ], [ %44, %41 ]
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %40
  %46 = add i32 %42, 1
  br i1 %45, label %47, label %41

47:                                               ; preds = %41
  %48 = sub i32 0, %34
  %49 = icmp eq i32 %42, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %50, %47
  %51 = phi i32 [ %55, %50 ], [ 0, %47 ]
  %52 = phi ptr [ %53, %50 ], [ %32, %47 ]
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %32
  %55 = add i32 %51, 1
  br i1 %54, label %56, label %50

56:                                               ; preds = %56, %50
  %57 = phi i32 [ %61, %56 ], [ 0, %50 ]
  %58 = phi ptr [ %59, %56 ], [ %40, %50 ]
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %40
  %61 = add i32 %57, 1
  br i1 %60, label %62, label %56

62:                                               ; preds = %56
  %63 = sub i32 0, %51
  %64 = icmp ne i32 %57, %63
  %65 = load i1, ptr @ieee80211_free_chanctx.__already_done, align 1
  %66 = xor i1 %65, true
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %69, !prof !14

68:                                               ; preds = %62
  store i1 true, ptr @ieee80211_free_chanctx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #11
  br label %69

69:                                               ; preds = %68, %62
  %70 = getelementptr i8, ptr %5, i32 -44
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %8, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %71, ptr %73, align 4
  store volatile ptr %72, ptr %71, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %70, align 4
  tail call fastcc void @ieee80211_del_chanctx(ptr noundef %3, ptr noundef %8) #11
  %74 = icmp eq ptr %8, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  %76 = getelementptr i8, ptr %5, i32 -40
  tail call void @kvfree_call_rcu(ptr noundef %76, ptr noundef nonnull inttoptr (i32 8 to ptr)) #11
  br label %77

77:                                               ; preds = %75, %69, %47
  %78 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 47
  store i8 0, ptr %78, align 4
  br i1 %30, label %79, label %81

79:                                               ; preds = %77
  %80 = tail call fastcc i32 @ieee80211_vif_use_reserved_switch(ptr noundef %3)
  br label %81

81:                                               ; preds = %79, %77, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_assign_vif_chanctx(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %8, label %9, !prof !14

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 756, i32 noundef 9, ptr noundef null) #11
  br label %237

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %86, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 -48
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  %19 = load i1, ptr @drv_unassign_vif_chanctx.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %28, !prof !14

22:                                               ; preds = %13
  store i1 true, ptr @drv_unassign_vif_chanctx.__already_done, align 1
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %27 = select i1 %25, ptr %26, ptr %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 945, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %27, i32 noundef %16) #11
  br label %28

28:                                               ; preds = %22, %13
  br i1 %18, label %80, label %29

29:                                               ; preds = %28
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_unassign_vif_chanctx, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  %44 = tail call i32 @__traceiter_drv_unassign_vif_chanctx(ptr noundef null, ptr noundef %4, ptr noundef %0, ptr noundef %14) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %45

45:                                               ; preds = %43, %32, %29
  %46 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.ieee80211_ops, ptr %47, i32 0, i32 73
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %64, label %51

51:                                               ; preds = %45
  %52 = getelementptr i8, ptr %11, i32 -4
  %53 = load i8, ptr %52, align 4, !range !10
  %54 = icmp eq i8 %53, 0
  %55 = load i1, ptr @drv_unassign_vif_chanctx.__already_done.8, align 1
  %56 = xor i1 %55, true
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %62, !prof !14

58:                                               ; preds = %51
  store i1 true, ptr @drv_unassign_vif_chanctx.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 950, i32 noundef 9, ptr noundef null) #11
  %59 = load ptr, ptr %46, align 4
  %60 = getelementptr inbounds %struct.ieee80211_ops, ptr %59, i32 0, i32 73
  %61 = load ptr, ptr %60, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = phi ptr [ %61, %58 ], [ %49, %51 ]
  tail call void %63(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %11) #11
  br label %64

64:                                               ; preds = %62, %45
  %65 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = tail call ptr @llvm.thread.pointer() #11
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %69, align 8
  %71 = lshr i32 %70, 5
  %72 = getelementptr i32, ptr @__cpu_online_mask, i32 %71
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %70, 31
  %75 = shl nuw i32 1, %74
  %76 = and i32 %75, %73
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %67
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %79 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %4) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  br label %80

80:                                               ; preds = %78, %67, %64, %28
  %81 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 33
  %82 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 33, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %81, align 4
  %85 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  store ptr %83, ptr %85, align 4
  store volatile ptr %84, ptr %83, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %81, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %82, align 4
  br label %86

86:                                               ; preds = %80, %9
  %87 = phi ptr [ %14, %80 ], [ null, %9 ]
  %88 = icmp eq ptr %1, null
  br i1 %88, label %167, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 32
  %93 = icmp eq i32 %92, 0
  %94 = load i1, ptr @drv_assign_vif_chanctx.__already_done, align 1
  %95 = xor i1 %94, true
  %96 = select i1 %93, i1 %95, i1 false
  br i1 %96, label %97, label %103, !prof !14

97:                                               ; preds = %89
  store i1 true, ptr @drv_assign_vif_chanctx.__already_done, align 1
  %98 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %99 = load ptr, ptr %98, align 8
  %100 = icmp eq ptr %99, null
  %101 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %102 = select i1 %100, ptr %101, ptr %99
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 924, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %102, i32 noundef %91) #11
  br label %103

103:                                              ; preds = %97, %89
  br i1 %93, label %167, label %104

104:                                              ; preds = %103
  %105 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_assign_vif_chanctx, i32 0, i32 1), align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = tail call ptr @llvm.thread.pointer() #11
  %109 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %110 = load i32, ptr %109, align 8
  %111 = lshr i32 %110, 5
  %112 = getelementptr i32, ptr @__cpu_online_mask, i32 %111
  %113 = load volatile i32, ptr %112, align 4
  %114 = and i32 %110, 31
  %115 = shl nuw i32 1, %114
  %116 = and i32 %115, %113
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %107
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %119 = tail call i32 @__traceiter_drv_assign_vif_chanctx(ptr noundef null, ptr noundef %4, ptr noundef %0, ptr noundef nonnull %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  br label %120

120:                                              ; preds = %118, %107, %104
  %121 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 8
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.ieee80211_ops, ptr %122, i32 0, i32 72
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %141, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 7
  %128 = load i8, ptr %127, align 4, !range !10
  %129 = icmp eq i8 %128, 0
  %130 = load i1, ptr @drv_assign_vif_chanctx.__already_done.9, align 1
  %131 = xor i1 %130, true
  %132 = select i1 %129, i1 %131, i1 false
  br i1 %132, label %133, label %137, !prof !14

133:                                              ; preds = %126
  store i1 true, ptr @drv_assign_vif_chanctx.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 929, i32 noundef 9, ptr noundef null) #11
  %134 = load ptr, ptr %121, align 4
  %135 = getelementptr inbounds %struct.ieee80211_ops, ptr %134, i32 0, i32 72
  %136 = load ptr, ptr %135, align 4
  br label %137

137:                                              ; preds = %133, %126
  %138 = phi ptr [ %136, %133 ], [ %124, %126 ]
  %139 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8
  %140 = tail call i32 %138(ptr noundef %4, ptr noundef %5, ptr noundef %139) #11
  br label %141

141:                                              ; preds = %137, %120
  %142 = phi i32 [ %140, %137 ], [ 0, %120 ]
  %143 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %141
  %146 = tail call ptr @llvm.thread.pointer() #11
  %147 = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 2
  %148 = load i32, ptr %147, align 8
  %149 = lshr i32 %148, 5
  %150 = getelementptr i32, ptr @__cpu_online_mask, i32 %149
  %151 = load volatile i32, ptr %150, align 4
  %152 = and i32 %148, 31
  %153 = shl nuw i32 1, %152
  %154 = and i32 %153, %151
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %145
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  %157 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %4, i32 noundef %142) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  br label %158

158:                                              ; preds = %156, %145, %141
  %159 = icmp eq i32 %142, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %158
  %161 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8
  %162 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 33
  %163 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 2
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.list_head, ptr %164, i32 0, i32 1
  store ptr %162, ptr %165, align 4
  store ptr %164, ptr %162, align 4
  %166 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 33, i32 1
  store ptr %163, ptr %166, align 4
  store volatile ptr %162, ptr %163, align 4
  br label %167

167:                                              ; preds = %160, %158, %103, %86
  %168 = phi i32 [ %142, %158 ], [ 0, %160 ], [ 0, %86 ], [ -5, %103 ]
  %169 = phi ptr [ null, %158 ], [ %161, %160 ], [ null, %86 ], [ null, %103 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  store volatile ptr %169, ptr %10, align 4
  %170 = icmp eq ptr %169, null
  %171 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 37
  %172 = zext i1 %170 to i8
  store i8 %172, ptr %171, align 1
  %173 = icmp eq ptr %87, null
  br i1 %173, label %221, label %174

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %87, i32 0, i32 2
  br label %176

176:                                              ; preds = %176, %174
  %177 = phi i32 [ 0, %174 ], [ %181, %176 ]
  %178 = phi ptr [ %175, %174 ], [ %179, %176 ]
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, %175
  %181 = add i32 %177, 1
  br i1 %180, label %182, label %176

182:                                              ; preds = %176
  %183 = icmp sgt i32 %177, 0
  br i1 %183, label %184, label %221

184:                                              ; preds = %182
  tail call void @ieee80211_recalc_chanctx_chantype(ptr noundef %4, ptr noundef nonnull %87)
  tail call void @ieee80211_recalc_smps_chanctx(ptr noundef %4, ptr noundef nonnull %87)
  %185 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %87, i32 0, i32 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %186 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 62
  %187 = load volatile ptr, ptr %186, align 8
  %188 = icmp eq ptr %187, %186
  br i1 %188, label %206, label %189

189:                                              ; preds = %203, %184
  %190 = phi ptr [ %204, %203 ], [ %187, %184 ]
  %191 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %190, i32 0, i32 9
  %192 = load volatile i32, ptr %191, align 4
  %193 = and i32 %192, 1
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %190, i32 0, i32 58, i32 9
  %197 = load volatile ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, %185
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %190, i32 0, i32 47
  %201 = load i8, ptr %200, align 4, !range !10
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %199, %195, %189
  %204 = load volatile ptr, ptr %190, align 8
  %205 = icmp eq ptr %204, %186
  br i1 %205, label %206, label %189

206:                                              ; preds = %203, %199, %184
  %207 = phi i1 [ false, %184 ], [ true, %199 ], [ false, %203 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %208 = zext i1 %207 to i8
  %209 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %87, i32 0, i32 8, i32 4
  %210 = load i8, ptr %209, align 2, !range !10
  %211 = icmp eq i8 %210, %208
  br i1 %211, label %220, label %212

212:                                              ; preds = %206
  store i8 %208, ptr %209, align 2
  %213 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 26
  %214 = load i8, ptr %213, align 1, !range !10
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.ieee80211_conf, ptr %4, i32 0, i32 8
  store i8 %208, ptr %217, align 8
  %218 = tail call i32 @ieee80211_hw_config(ptr noundef %4, i32 noundef 64) #11
  br label %219

219:                                              ; preds = %216, %212
  tail call fastcc void @drv_change_chanctx(ptr noundef %4, ptr noundef nonnull %87, i32 noundef 4) #11
  br label %220

220:                                              ; preds = %219, %206
  tail call void @ieee80211_recalc_chanctx_min_def(ptr noundef %4, ptr noundef nonnull %87)
  br label %221

221:                                              ; preds = %220, %182, %167
  br i1 %88, label %233, label %222

222:                                              ; preds = %221
  %223 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 2
  br label %224

224:                                              ; preds = %224, %222
  %225 = phi i32 [ 0, %222 ], [ %229, %224 ]
  %226 = phi ptr [ %223, %222 ], [ %227, %224 ]
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, %223
  %229 = add i32 %225, 1
  br i1 %228, label %230, label %224

230:                                              ; preds = %224
  %231 = icmp sgt i32 %225, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %230
  tail call void @ieee80211_recalc_txpower(ptr noundef %0, i1 noundef zeroext false) #11
  tail call void @ieee80211_recalc_chanctx_min_def(ptr noundef %4, ptr noundef nonnull %1)
  br label %233

233:                                              ; preds = %232, %230, %221
  %234 = load i32, ptr %5, align 8
  switch i32 %234, label %235 [
    i32 10, label %236
    i32 6, label %236
  ]

235:                                              ; preds = %233
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 16384) #11
  br label %236

236:                                              ; preds = %235, %233, %233
  tail call void @ieee80211_check_fast_xmit_iface(ptr noundef %0) #11
  br label %237

237:                                              ; preds = %236, %8
  %238 = phi i32 [ -524, %8 ], [ %168, %236 ]
  ret i32 %238
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_vif_use_reserved_context(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 35
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = getelementptr i8, ptr %7, i32 -48
  %10 = select i1 %8, ptr null, ptr %9
  %11 = icmp eq ptr %5, null
  br i1 %11, label %12, label %13, !prof !14

12:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1735, i32 noundef 9, ptr noundef null) #11
  br label %53

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %5, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18, !prof !14

17:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1739, i32 noundef 9, ptr noundef null) #11
  br label %53

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 38
  %20 = load i8, ptr %19, align 1, !range !10
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22, !prof !11

22:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1742, i32 noundef 9, ptr noundef null) #11
  br label %53

23:                                               ; preds = %18
  store i8 1, ptr %19, align 1
  %24 = load i32, ptr %14, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = icmp eq ptr %10, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = tail call fastcc i32 @ieee80211_vif_use_reserved_reassign(ptr noundef %0)
  br label %32

30:                                               ; preds = %26
  %31 = tail call fastcc i32 @ieee80211_vif_use_reserved_assign(ptr noundef %0)
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %32, %23
  %36 = icmp eq ptr %10, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %10, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %37, %35
  %42 = load i32, ptr %14, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %53

44:                                               ; preds = %41, %37
  %45 = tail call fastcc i32 @ieee80211_vif_use_reserved_switch(ptr noundef %3)
  switch i32 %45, label %46 [
    i32 -11, label %53
    i32 0, label %53
  ]

46:                                               ; preds = %44
  %47 = load i32, ptr %14, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.wiphy, ptr %51, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str.4, i32 noundef %45) #13
  br label %53

53:                                               ; preds = %49, %46, %44, %44, %41, %32, %22, %17, %12
  %54 = phi i32 [ -22, %12 ], [ -22, %17 ], [ -22, %22 ], [ %33, %32 ], [ %45, %46 ], [ 0, %44 ], [ 0, %44 ], [ 0, %49 ], [ 0, %41 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_vif_use_reserved_reassign(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca [1 x %struct.ieee80211_vif_chanctx_switch], align 4
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false)
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 35
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = getelementptr i8, ptr %8, i32 -48
  %11 = select i1 %9, ptr null, ptr %10
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 38
  %13 = load i8, ptr %12, align 1, !range !10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16, !prof !14

15:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1131, i32 noundef 9, ptr noundef null) #11
  br label %238

16:                                               ; preds = %1
  %17 = icmp eq ptr %6, null
  br i1 %17, label %18, label %19, !prof !14

18:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1134, i32 noundef 9, ptr noundef null) #11
  br label %238

19:                                               ; preds = %16
  %20 = icmp eq ptr %11, null
  br i1 %20, label %21, label %22, !prof !14

21:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1137, i32 noundef 9, ptr noundef null) #11
  br label %238

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %6, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %27, !prof !14

26:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1141, i32 noundef 9, ptr noundef null) #11
  br label %238

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 36
  %29 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %6, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %48, label %32

32:                                               ; preds = %44, %27
  %33 = phi ptr [ %46, %44 ], [ %30, %27 ]
  %34 = phi ptr [ %45, %44 ], [ %28, %27 ]
  %35 = getelementptr i8, ptr %33, i32 16
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = icmp eq ptr %34, null
  %40 = getelementptr i8, ptr %33, i32 1372
  %41 = select i1 %39, ptr %40, ptr %34
  %42 = tail call ptr @cfg80211_chandef_compatible(ptr noundef %40, ptr noundef %41) #11
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %38, %32
  %45 = phi ptr [ %34, %32 ], [ %42, %38 ]
  %46 = load ptr, ptr %33, align 4
  %47 = icmp eq ptr %46, %29
  br i1 %47, label %48, label %32

48:                                               ; preds = %44, %27
  %49 = phi ptr [ %28, %27 ], [ %45, %44 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52, !prof !14

51:                                               ; preds = %48, %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1146, i32 noundef 9, ptr noundef null) #11
  br label %238

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 36, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %55, %57
  %59 = select i1 %58, i32 0, i32 2097152
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %60, ptr noundef align 4 dereferenceable(28) %28, i32 28, i1 false) #11
  %61 = load i32, ptr %53, align 8
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %72

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %72, label %67

67:                                               ; preds = %67, %63
  %68 = phi ptr [ %70, %67 ], [ %65, %63 ]
  %69 = getelementptr i8, ptr %68, i32 964
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %69, ptr noundef align 4 dereferenceable(28) %28, i32 28, i1 false) #11
  %70 = load ptr, ptr %68, align 4
  %71 = icmp eq ptr %70, %64
  br i1 %71, label %72, label %67

72:                                               ; preds = %67, %63, %52
  tail call fastcc void @ieee80211_change_chanctx(ptr noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef nonnull %49)
  store ptr %53, ptr %2, align 4
  %73 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %11, i32 0, i32 8
  %74 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, ptr %2, i32 0, i32 1
  store ptr %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %6, i32 0, i32 8
  %76 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, ptr %2, i32 0, i32 2
  store ptr %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 34
  %78 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 34, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %77, align 4
  %81 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  store ptr %79, ptr %81, align 4
  store volatile ptr %80, ptr %79, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %77, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %78, align 4
  store ptr null, ptr %5, align 8
  %82 = call i32 @drv_switch_vif_chanctx(ptr noundef %4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %126, label %84

84:                                               ; preds = %84, %72
  %85 = phi i32 [ %89, %84 ], [ 0, %72 ]
  %86 = phi ptr [ %87, %84 ], [ %29, %72 ]
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %29
  %89 = add i32 %85, 1
  br i1 %88, label %90, label %84

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %6, i32 0, i32 3
  br label %92

92:                                               ; preds = %92, %90
  %93 = phi i32 [ 0, %90 ], [ %97, %92 ]
  %94 = phi ptr [ %91, %90 ], [ %95, %92 ]
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %91
  %97 = add i32 %93, 1
  br i1 %96, label %98, label %92

98:                                               ; preds = %92
  %99 = sub i32 0, %85
  %100 = icmp eq i32 %93, %99
  br i1 %100, label %101, label %229

101:                                              ; preds = %101, %98
  %102 = phi i32 [ %106, %101 ], [ 0, %98 ]
  %103 = phi ptr [ %104, %101 ], [ %29, %98 ]
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, %29
  %106 = add i32 %102, 1
  br i1 %105, label %107, label %101

107:                                              ; preds = %107, %101
  %108 = phi i32 [ %112, %107 ], [ 0, %101 ]
  %109 = phi ptr [ %110, %107 ], [ %91, %101 ]
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, %91
  %112 = add i32 %108, 1
  br i1 %111, label %113, label %107

113:                                              ; preds = %107
  %114 = sub i32 0, %102
  %115 = icmp ne i32 %108, %114
  %116 = load i1, ptr @ieee80211_free_chanctx.__already_done, align 1
  %117 = xor i1 %116, true
  %118 = select i1 %115, i1 %117, i1 false
  br i1 %118, label %119, label %120, !prof !14

119:                                              ; preds = %113
  store i1 true, ptr @ieee80211_free_chanctx.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #11
  br label %120

120:                                              ; preds = %119, %113
  %121 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = load ptr, ptr %6, align 4
  %124 = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  store ptr %122, ptr %124, align 4
  store volatile ptr %123, ptr %122, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %121, align 4
  call fastcc void @ieee80211_del_chanctx(ptr noundef %4, ptr noundef nonnull %6) #11
  %125 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %6, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %125, ptr noundef nonnull inttoptr (i32 8 to ptr)) #11
  br label %229

126:                                              ; preds = %72
  %127 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 33
  %128 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 33, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = load ptr, ptr %127, align 4
  %131 = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  store ptr %129, ptr %131, align 4
  store volatile ptr %130, ptr %129, align 4
  %132 = load ptr, ptr %29, align 4
  %133 = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  store ptr %127, ptr %133, align 4
  store ptr %132, ptr %127, align 4
  store ptr %29, ptr %128, align 4
  store volatile ptr %127, ptr %29, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  store volatile ptr %75, ptr %7, align 4
  %134 = load i32, ptr %53, align 8
  %135 = icmp eq i32 %134, 3
  br i1 %135, label %136, label %148

136:                                              ; preds = %126
  %137 = icmp eq ptr %75, null
  br i1 %137, label %138, label %139, !prof !14

138:                                              ; preds = %136
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 919, i32 noundef 9, ptr noundef null) #11
  br label %139

139:                                              ; preds = %138, %136
  %140 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, %140
  br i1 %142, label %148, label %143

143:                                              ; preds = %143, %139
  %144 = phi ptr [ %146, %143 ], [ %141, %139 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  %145 = getelementptr i8, ptr %144, i32 1676
  store volatile ptr %75, ptr %145, align 4
  %146 = load ptr, ptr %144, align 4
  %147 = icmp eq ptr %146, %140
  br i1 %147, label %148, label %143

148:                                              ; preds = %143, %139, %126
  call void @ieee80211_check_fast_xmit_iface(ptr noundef %0) #11
  %149 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %11, i32 0, i32 2
  br label %150

150:                                              ; preds = %150, %148
  %151 = phi i32 [ 0, %148 ], [ %155, %150 ]
  %152 = phi ptr [ %149, %148 ], [ %153, %150 ]
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, %149
  %155 = add i32 %151, 1
  br i1 %154, label %156, label %150

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %11, i32 0, i32 3
  br label %158

158:                                              ; preds = %158, %156
  %159 = phi i32 [ 0, %156 ], [ %163, %158 ]
  %160 = phi ptr [ %157, %156 ], [ %161, %158 ]
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, %157
  %163 = add i32 %159, 1
  br i1 %162, label %164, label %158

164:                                              ; preds = %158
  %165 = sub i32 0, %151
  %166 = icmp eq i32 %159, %165
  br i1 %166, label %167, label %192

167:                                              ; preds = %167, %164
  %168 = phi i32 [ %172, %167 ], [ 0, %164 ]
  %169 = phi ptr [ %170, %167 ], [ %149, %164 ]
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, %149
  %172 = add i32 %168, 1
  br i1 %171, label %173, label %167

173:                                              ; preds = %173, %167
  %174 = phi i32 [ %178, %173 ], [ 0, %167 ]
  %175 = phi ptr [ %176, %173 ], [ %157, %167 ]
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, %157
  %178 = add i32 %174, 1
  br i1 %177, label %179, label %173

179:                                              ; preds = %173
  %180 = sub i32 0, %168
  %181 = icmp ne i32 %174, %180
  %182 = load i1, ptr @ieee80211_free_chanctx.__already_done, align 1
  %183 = xor i1 %182, true
  %184 = select i1 %181, i1 %183, i1 false
  br i1 %184, label %185, label %186, !prof !14

185:                                              ; preds = %179
  store i1 true, ptr @ieee80211_free_chanctx.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #11
  br label %186

186:                                              ; preds = %185, %179
  %187 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %188 = load ptr, ptr %187, align 4
  %189 = load ptr, ptr %11, align 4
  %190 = getelementptr inbounds %struct.list_head, ptr %189, i32 0, i32 1
  store ptr %188, ptr %190, align 4
  store volatile ptr %189, ptr %188, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %187, align 4
  call fastcc void @ieee80211_del_chanctx(ptr noundef %4, ptr noundef nonnull %11) #11
  %191 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %11, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %191, ptr noundef nonnull inttoptr (i32 8 to ptr)) #11
  br label %192

192:                                              ; preds = %186, %164
  call void @ieee80211_recalc_chanctx_min_def(ptr noundef %4, ptr noundef nonnull %6)
  call void @ieee80211_recalc_smps_chanctx(ptr noundef %4, ptr noundef nonnull %6)
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %193 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 62
  %194 = load volatile ptr, ptr %193, align 8
  %195 = icmp eq ptr %194, %193
  br i1 %195, label %213, label %196

196:                                              ; preds = %210, %192
  %197 = phi ptr [ %211, %210 ], [ %194, %192 ]
  %198 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %197, i32 0, i32 9
  %199 = load volatile i32, ptr %198, align 4
  %200 = and i32 %199, 1
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %210, label %202

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %197, i32 0, i32 58, i32 9
  %204 = load volatile ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, %75
  br i1 %205, label %206, label %210

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %197, i32 0, i32 47
  %208 = load i8, ptr %207, align 4, !range !10
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %206, %202, %196
  %211 = load volatile ptr, ptr %197, align 8
  %212 = icmp eq ptr %211, %193
  br i1 %212, label %213, label %196

213:                                              ; preds = %210, %206, %192
  %214 = phi i1 [ false, %192 ], [ true, %206 ], [ false, %210 ]
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %215 = zext i1 %214 to i8
  %216 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %6, i32 0, i32 8, i32 4
  %217 = load i8, ptr %216, align 2, !range !10
  %218 = icmp eq i8 %217, %215
  br i1 %218, label %227, label %219

219:                                              ; preds = %213
  store i8 %215, ptr %216, align 2
  %220 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 26
  %221 = load i8, ptr %220, align 1, !range !10
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.ieee80211_conf, ptr %4, i32 0, i32 8
  store i8 %215, ptr %224, align 8
  %225 = call i32 @ieee80211_hw_config(ptr noundef %4, i32 noundef 64) #11
  br label %226

226:                                              ; preds = %223, %219
  call fastcc void @drv_change_chanctx(ptr noundef %4, ptr noundef nonnull %6, i32 noundef 4) #11
  br label %227

227:                                              ; preds = %226, %213
  br i1 %58, label %229, label %228

228:                                              ; preds = %227
  call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef %59) #11
  br label %229

229:                                              ; preds = %228, %227, %120, %98
  %230 = load i32, ptr %53, align 8
  switch i32 %230, label %238 [
    i32 1, label %231
    i32 3, label %231
    i32 7, label %231
    i32 11, label %231
    i32 2, label %234
    i32 0, label %237
    i32 4, label %237
    i32 5, label %237
    i32 6, label %237
    i32 8, label %237
    i32 9, label %237
    i32 10, label %237
    i32 12, label %237
    i32 13, label %237
  ]

231:                                              ; preds = %229, %229, %229, %229
  %232 = load ptr, ptr %3, align 4
  %233 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 29
  call void @ieee80211_queue_work(ptr noundef %232, ptr noundef %233) #11
  br label %238

234:                                              ; preds = %229
  %235 = load ptr, ptr %3, align 4
  %236 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 27
  call void @ieee80211_queue_work(ptr noundef %235, ptr noundef %236) #11
  br label %238

237:                                              ; preds = %229, %229, %229, %229, %229, %229, %229, %229, %229
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #11
  br label %238

238:                                              ; preds = %237, %234, %231, %229, %51, %26, %21, %18, %15
  %239 = phi i32 [ -16, %15 ], [ -22, %18 ], [ -22, %21 ], [ -22, %26 ], [ -22, %51 ], [ %82, %229 ], [ %82, %231 ], [ %82, %234 ], [ %82, %237 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #11
  ret i32 %239
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_vif_use_reserved_assign(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 35
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 38
  %7 = load i8, ptr %6, align 1, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10, !prof !14

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1206, i32 noundef 9, ptr noundef null) #11
  br label %111

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = getelementptr i8, ptr %12, i32 -48
  %15 = icmp eq ptr %14, null
  %16 = or i1 %13, %15
  br i1 %16, label %18, label %17, !prof !11

17:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1209, i32 noundef 9, ptr noundef null) #11
  br label %111

18:                                               ; preds = %10
  %19 = icmp eq ptr %5, null
  br i1 %19, label %20, label %21, !prof !14

20:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1212, i32 noundef 9, ptr noundef null) #11
  br label %111

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %5, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %26, !prof !14

25:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1216, i32 noundef 9, ptr noundef null) #11
  br label %111

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 36
  %28 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %5, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %47, label %31

31:                                               ; preds = %43, %26
  %32 = phi ptr [ %45, %43 ], [ %29, %26 ]
  %33 = phi ptr [ %44, %43 ], [ %27, %26 ]
  %34 = getelementptr i8, ptr %32, i32 16
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = icmp eq ptr %33, null
  %39 = getelementptr i8, ptr %32, i32 1372
  %40 = select i1 %38, ptr %39, ptr %33
  %41 = tail call ptr @cfg80211_chandef_compatible(ptr noundef %39, ptr noundef %40) #11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %37, %31
  %44 = phi ptr [ %33, %31 ], [ %41, %37 ]
  %45 = load ptr, ptr %32, align 4
  %46 = icmp eq ptr %45, %28
  br i1 %46, label %47, label %31

47:                                               ; preds = %43, %26
  %48 = phi ptr [ %27, %26 ], [ %44, %43 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51, !prof !14

50:                                               ; preds = %47, %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1221, i32 noundef 9, ptr noundef null) #11
  br label %111

51:                                               ; preds = %47
  tail call fastcc void @ieee80211_change_chanctx(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %48)
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 34
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 34, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %52, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store volatile ptr %55, ptr %54, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %52, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %53, align 4
  store ptr null, ptr %4, align 8
  %57 = tail call fastcc i32 @ieee80211_assign_vif_chanctx(ptr noundef %0, ptr noundef nonnull %5)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %101, label %59

59:                                               ; preds = %59, %51
  %60 = phi i32 [ %64, %59 ], [ 0, %51 ]
  %61 = phi ptr [ %62, %59 ], [ %28, %51 ]
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %28
  %64 = add i32 %60, 1
  br i1 %63, label %65, label %59

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %5, i32 0, i32 3
  br label %67

67:                                               ; preds = %67, %65
  %68 = phi i32 [ 0, %65 ], [ %72, %67 ]
  %69 = phi ptr [ %66, %65 ], [ %70, %67 ]
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %66
  %72 = add i32 %68, 1
  br i1 %71, label %73, label %67

73:                                               ; preds = %67
  %74 = sub i32 0, %60
  %75 = icmp eq i32 %68, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %76, %73
  %77 = phi i32 [ %81, %76 ], [ 0, %73 ]
  %78 = phi ptr [ %79, %76 ], [ %28, %73 ]
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %28
  %81 = add i32 %77, 1
  br i1 %80, label %82, label %76

82:                                               ; preds = %82, %76
  %83 = phi i32 [ %87, %82 ], [ 0, %76 ]
  %84 = phi ptr [ %85, %82 ], [ %66, %76 ]
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, %66
  %87 = add i32 %83, 1
  br i1 %86, label %88, label %82

88:                                               ; preds = %82
  %89 = sub i32 0, %77
  %90 = icmp ne i32 %83, %89
  %91 = load i1, ptr @ieee80211_free_chanctx.__already_done, align 1
  %92 = xor i1 %91, true
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %94, label %95, !prof !14

94:                                               ; preds = %88
  store i1 true, ptr @ieee80211_free_chanctx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #11
  br label %95

95:                                               ; preds = %94, %88
  %96 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = load ptr, ptr %5, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  store ptr %97, ptr %99, align 4
  store volatile ptr %98, ptr %97, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %96, align 4
  tail call fastcc void @ieee80211_del_chanctx(ptr noundef %3, ptr noundef nonnull %5) #11
  %100 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %5, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %100, ptr noundef nonnull inttoptr (i32 8 to ptr)) #11
  br label %101

101:                                              ; preds = %95, %73, %51
  %102 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %103 = load i32, ptr %102, align 8
  switch i32 %103, label %111 [
    i32 1, label %104
    i32 3, label %104
    i32 7, label %104
    i32 11, label %104
    i32 2, label %107
    i32 0, label %110
    i32 4, label %110
    i32 5, label %110
    i32 6, label %110
    i32 8, label %110
    i32 9, label %110
    i32 10, label %110
    i32 12, label %110
    i32 13, label %110
  ]

104:                                              ; preds = %101, %101, %101, %101
  %105 = load ptr, ptr %2, align 4
  %106 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 29
  tail call void @ieee80211_queue_work(ptr noundef %105, ptr noundef %106) #11
  br label %111

107:                                              ; preds = %101
  %108 = load ptr, ptr %2, align 4
  %109 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 6, i32 27
  tail call void @ieee80211_queue_work(ptr noundef %108, ptr noundef %109) #11
  br label %111

110:                                              ; preds = %101, %101, %101, %101, %101, %101, %101, %101, %101
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #11
  br label %111

111:                                              ; preds = %110, %107, %104, %101, %50, %25, %20, %17, %9
  %112 = phi i32 [ -22, %9 ], [ -22, %17 ], [ -22, %20 ], [ -22, %25 ], [ -22, %50 ], [ %57, %101 ], [ %57, %104 ], [ %57, %107 ], [ %57, %110 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_vif_use_reserved_switch(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 88
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %129, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 26
  br label %7

7:                                                ; preds = %119, %5
  %8 = phi ptr [ %3, %5 ], [ %125, %119 ]
  %9 = phi ptr [ null, %5 ], [ %124, %119 ]
  %10 = phi i32 [ 0, %5 ], [ %123, %119 ]
  %11 = phi i32 [ 0, %5 ], [ %122, %119 ]
  %12 = phi i32 [ 0, %5 ], [ %121, %119 ]
  %13 = phi i32 [ 0, %5 ], [ %120, %119 ]
  %14 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %8, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %119

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %8, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !14

21:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1404, i32 noundef 9, ptr noundef null) #11
  br label %545

22:                                               ; preds = %17
  %23 = load i8, ptr %6, align 1, !range !10
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, ptr %8, ptr %9
  %26 = add i32 %10, 1
  %27 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %19, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %58, label %30

30:                                               ; preds = %45, %22
  %31 = phi ptr [ %48, %45 ], [ %28, %22 ]
  %32 = phi i32 [ %35, %45 ], [ 0, %22 ]
  %33 = phi i32 [ %47, %45 ], [ 0, %22 ]
  %34 = phi i32 [ %46, %45 ], [ 0, %22 ]
  %35 = add i32 %32, 1
  %36 = getelementptr i8, ptr %31, i32 16
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %30
  %40 = add i32 %33, 1
  %41 = getelementptr i8, ptr %31, i32 49
  %42 = load i8, ptr %41, align 1, !range !10
  %43 = zext i8 %42 to i32
  %44 = add i32 %34, %43
  br label %45

45:                                               ; preds = %39, %30
  %46 = phi i32 [ %34, %30 ], [ %44, %39 ]
  %47 = phi i32 [ %33, %30 ], [ %40, %39 ]
  %48 = load ptr, ptr %31, align 4
  %49 = icmp eq ptr %48, %27
  br i1 %49, label %50, label %30

50:                                               ; preds = %45
  %51 = icmp eq i32 %35, %47
  br i1 %51, label %58, label %52

52:                                               ; preds = %50
  %53 = icmp eq i32 %46, %47
  br i1 %53, label %54, label %579

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.10) #13
  br label %545

58:                                               ; preds = %50, %22
  %59 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %8, i32 0, i32 8, i32 4
  store i8 0, ptr %59, align 2
  %60 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %8, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %119, label %63

63:                                               ; preds = %116, %58
  %64 = phi ptr [ %117, %116 ], [ %61, %58 ]
  %65 = phi i32 [ %111, %116 ], [ %11, %58 ]
  %66 = phi i32 [ %110, %116 ], [ %12, %58 ]
  %67 = phi i32 [ %109, %116 ], [ %13, %58 ]
  %68 = getelementptr i8, ptr %64, i32 8
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr i8, ptr %64, i32 2076
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  %73 = getelementptr i8, ptr %71, i32 -48
  %74 = icmp eq ptr %73, null
  %75 = or i1 %72, %74
  br i1 %75, label %92, label %76

76:                                               ; preds = %63
  %77 = icmp eq ptr %69, null
  br i1 %77, label %78, label %80, !prof !14

78:                                               ; preds = %76
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1255, i32 noundef 9, ptr noundef null) #11
  %79 = load ptr, ptr %70, align 4
  br label %92

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %71, i32 -16
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %69, i32 0, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = getelementptr i8, ptr %64, i32 41
  %90 = load i8, ptr %89, align 1, !range !10
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %579, label %92

92:                                               ; preds = %88, %84, %80, %78, %63
  %93 = phi ptr [ %71, %80 ], [ %71, %63 ], [ %79, %78 ], [ %71, %88 ], [ %71, %84 ]
  %94 = icmp eq ptr %93, null
  %95 = getelementptr i8, ptr %93, i32 -48
  %96 = icmp eq ptr %95, null
  %97 = or i1 %94, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %92
  %99 = getelementptr i8, ptr %93, i32 -16
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = add i32 %65, 1
  br label %108

104:                                              ; preds = %98
  %105 = add i32 %66, 1
  br label %108

106:                                              ; preds = %92
  %107 = add i32 %67, 1
  br label %108

108:                                              ; preds = %106, %104, %102
  %109 = phi i32 [ %67, %102 ], [ %67, %104 ], [ %107, %106 ]
  %110 = phi i32 [ %66, %102 ], [ %105, %104 ], [ %66, %106 ]
  %111 = phi i32 [ %103, %102 ], [ %65, %104 ], [ %65, %106 ]
  %112 = getelementptr i8, ptr %64, i32 40
  %113 = load i8, ptr %112, align 8, !range !10
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %108
  store i8 1, ptr %59, align 2
  br label %116

116:                                              ; preds = %115, %108
  %117 = load ptr, ptr %64, align 4
  %118 = icmp eq ptr %117, %60
  br i1 %118, label %119, label %63

119:                                              ; preds = %116, %58, %7
  %120 = phi i32 [ %13, %7 ], [ %13, %58 ], [ %109, %116 ]
  %121 = phi i32 [ %12, %7 ], [ %12, %58 ], [ %110, %116 ]
  %122 = phi i32 [ %11, %7 ], [ %11, %58 ], [ %111, %116 ]
  %123 = phi i32 [ %10, %7 ], [ %26, %58 ], [ %26, %116 ]
  %124 = phi ptr [ %9, %7 ], [ %25, %58 ], [ %25, %116 ]
  %125 = load ptr, ptr %8, align 4
  %126 = icmp eq ptr %125, %2
  br i1 %126, label %127, label %7

127:                                              ; preds = %119
  %128 = icmp eq i32 %123, 0
  br i1 %128, label %129, label %130, !prof !14

129:                                              ; preds = %127, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1462, i32 noundef 9, ptr noundef null) #11
  br label %545

130:                                              ; preds = %127
  %131 = icmp eq i32 %122, 0
  %132 = icmp eq i32 %121, 0
  %133 = select i1 %131, i1 %132, i1 false
  %134 = icmp eq i32 %120, 0
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %136, label %137, !prof !14

136:                                              ; preds = %130
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1465, i32 noundef 9, ptr noundef null) #11
  br label %545

137:                                              ; preds = %130
  %138 = icmp sgt i32 %123, 1
  br i1 %138, label %139, label %144

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 26
  %141 = load i8, ptr %140, align 1, !range !10
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %144, !prof !14

143:                                              ; preds = %139
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1466, i32 noundef 9, ptr noundef null) #11
  br label %545

144:                                              ; preds = %139, %137
  %145 = icmp eq ptr %124, null
  %146 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 26
  %147 = load i8, ptr %146, align 1, !range !10
  br i1 %145, label %148, label %153

148:                                              ; preds = %144
  %149 = icmp eq i8 %147, 0
  br i1 %149, label %152, label %150, !prof !14

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 26
  br label %156

152:                                              ; preds = %148
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1467, i32 noundef 9, ptr noundef null) #11
  br label %545

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 26
  %155 = icmp eq i8 %147, 0
  br i1 %155, label %277, label %156

156:                                              ; preds = %153, %150
  %157 = phi ptr [ %151, %150 ], [ %154, %153 ]
  %158 = icmp sgt i32 %122, 0
  br i1 %158, label %159, label %225

159:                                              ; preds = %156
  %160 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %122, i32 12) #11
  %161 = extractvalue { i32, i1 } %160, 1
  br i1 %161, label %545, label %162, !prof !14

162:                                              ; preds = %159
  %163 = extractvalue { i32, i1 } %160, 0
  %164 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %163, i32 noundef 3520) #12
  %165 = icmp eq ptr %164, null
  br i1 %165, label %545, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr %2, align 4
  %168 = icmp eq ptr %167, %2
  br i1 %168, label %222, label %169

169:                                              ; preds = %218, %166
  %170 = phi ptr [ %220, %218 ], [ %167, %166 ]
  %171 = phi i32 [ %219, %218 ], [ 0, %166 ]
  %172 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %170, i32 0, i32 4
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %173, 2
  br i1 %174, label %175, label %218

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %170, i32 0, i32 5
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %180, !prof !14

179:                                              ; preds = %175
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1306, i32 noundef 9, ptr noundef null) #11
  tail call void @kfree(ptr noundef nonnull %164) #11
  br label %545

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %170, i32 0, i32 3
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, %181
  br i1 %183, label %218, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %170, i32 0, i32 8
  br label %186

186:                                              ; preds = %214, %184
  %187 = phi ptr [ %182, %184 ], [ %216, %214 ]
  %188 = phi i32 [ %171, %184 ], [ %215, %214 ]
  %189 = getelementptr i8, ptr %187, i32 8
  %190 = load ptr, ptr %189, align 8
  %191 = getelementptr i8, ptr %187, i32 2076
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  %194 = getelementptr i8, ptr %192, i32 -48
  %195 = icmp eq ptr %194, null
  %196 = or i1 %193, %195
  br i1 %196, label %214, label %197

197:                                              ; preds = %186
  %198 = icmp eq ptr %190, null
  br i1 %198, label %199, label %200, !prof !14

199:                                              ; preds = %197
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1255, i32 noundef 9, ptr noundef null) #11
  br label %214

200:                                              ; preds = %197
  %201 = getelementptr i8, ptr %192, i32 -16
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %214

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %190, i32 0, i32 4
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 2
  br i1 %207, label %208, label %214

208:                                              ; preds = %204
  %209 = getelementptr i8, ptr %187, i32 1256
  %210 = getelementptr %struct.ieee80211_vif_chanctx_switch, ptr %164, i32 %188
  store ptr %209, ptr %210, align 4
  %211 = getelementptr %struct.ieee80211_vif_chanctx_switch, ptr %164, i32 %188, i32 1
  store ptr %192, ptr %211, align 4
  %212 = getelementptr %struct.ieee80211_vif_chanctx_switch, ptr %164, i32 %188, i32 2
  store ptr %185, ptr %212, align 4
  %213 = add i32 %188, 1
  br label %214

214:                                              ; preds = %208, %204, %200, %199, %186
  %215 = phi i32 [ %213, %208 ], [ %188, %204 ], [ %188, %199 ], [ %188, %186 ], [ %188, %200 ]
  %216 = load ptr, ptr %187, align 4
  %217 = icmp eq ptr %216, %181
  br i1 %217, label %218, label %186

218:                                              ; preds = %214, %180, %169
  %219 = phi i32 [ %171, %169 ], [ %171, %180 ], [ %215, %214 ]
  %220 = load ptr, ptr %170, align 4
  %221 = icmp eq ptr %220, %2
  br i1 %221, label %222, label %169

222:                                              ; preds = %218, %166
  %223 = tail call i32 @drv_switch_vif_chanctx(ptr noundef %0, ptr noundef nonnull %164, i32 noundef %122, i32 noundef 1) #11
  tail call void @kfree(ptr noundef nonnull %164) #11
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %545

225:                                              ; preds = %222, %156
  %226 = icmp sgt i32 %121, 0
  %227 = icmp sgt i32 %120, 0
  %228 = select i1 %226, i1 true, i1 %227
  br i1 %228, label %229, label %298

229:                                              ; preds = %225
  %230 = load ptr, ptr %2, align 4
  %231 = icmp eq ptr %230, %2
  br i1 %231, label %298, label %232

232:                                              ; preds = %246, %229
  %233 = phi ptr [ %247, %246 ], [ %230, %229 ]
  %234 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %233, i32 0, i32 4
  %235 = load i32, ptr %234, align 4
  %236 = icmp eq i32 %235, 2
  br i1 %236, label %237, label %246

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %233, i32 0, i32 5
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %239, i32 0, i32 2
  %241 = load volatile ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, %240
  br i1 %242, label %243, label %246

243:                                              ; preds = %237
  tail call fastcc void @ieee80211_del_chanctx(ptr noundef %0, ptr noundef %239) #11
  %244 = tail call fastcc i32 @ieee80211_add_chanctx(ptr noundef %0, ptr noundef %233) #11
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243, %237, %232
  %247 = load ptr, ptr %233, align 4
  %248 = icmp eq ptr %247, %2
  br i1 %248, label %298, label %232

249:                                              ; preds = %243
  %250 = tail call fastcc i32 @ieee80211_add_chanctx(ptr noundef %0, ptr noundef %233) #11
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %253, label %252, !prof !11

252:                                              ; preds = %249
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1358, i32 noundef 9, ptr noundef null) #11
  br label %253

253:                                              ; preds = %252, %249
  %254 = getelementptr inbounds %struct.list_head, ptr %233, i32 0, i32 1
  %255 = load ptr, ptr %254, align 4
  %256 = icmp eq ptr %255, %2
  br i1 %256, label %545, label %257

257:                                              ; preds = %273, %253
  %258 = phi ptr [ %275, %273 ], [ %255, %253 ]
  %259 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %258, i32 0, i32 4
  %260 = load i32, ptr %259, align 4
  %261 = icmp eq i32 %260, 2
  br i1 %261, label %262, label %273

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %258, i32 0, i32 5
  %264 = load ptr, ptr %263, align 4
  %265 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %264, i32 0, i32 2
  %266 = load volatile ptr, ptr %265, align 4
  %267 = icmp eq ptr %266, %265
  br i1 %267, label %268, label %273

268:                                              ; preds = %262
  tail call fastcc void @ieee80211_del_chanctx(ptr noundef %0, ptr noundef %258) #11
  %269 = load ptr, ptr %263, align 4
  %270 = tail call fastcc i32 @ieee80211_add_chanctx(ptr noundef %0, ptr noundef %269) #11
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %273, label %272, !prof !11

272:                                              ; preds = %268
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1367, i32 noundef 9, ptr noundef null) #11
  br label %273

273:                                              ; preds = %272, %268, %262, %257
  %274 = getelementptr inbounds %struct.list_head, ptr %258, i32 0, i32 1
  %275 = load ptr, ptr %274, align 4
  %276 = icmp eq ptr %275, %2
  br i1 %276, label %545, label %257

277:                                              ; preds = %153
  %278 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %124, i32 0, i32 3
  br label %279

279:                                              ; preds = %285, %277
  %280 = phi ptr [ %278, %277 ], [ %282, %285 ]
  %281 = phi ptr [ null, %277 ], [ %288, %285 ]
  %282 = load ptr, ptr %280, align 4
  %283 = icmp eq ptr %282, %278
  %284 = icmp eq ptr %281, null
  br i1 %283, label %290, label %285

285:                                              ; preds = %279
  %286 = getelementptr i8, ptr %282, i32 12
  %287 = select i1 %284, ptr %286, ptr %281
  %288 = tail call ptr @cfg80211_chandef_compatible(ptr noundef %286, ptr noundef %287) #11
  %289 = icmp eq ptr %288, null
  br i1 %289, label %297, label %279

290:                                              ; preds = %279
  br i1 %284, label %297, label %291, !prof !14

291:                                              ; preds = %290
  %292 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %124, i32 0, i32 8, i32 4
  %293 = load i8, ptr %292, align 2, !range !10
  %294 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 8
  store i8 %293, ptr %294, align 8
  %295 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %295, ptr noundef nonnull align 4 dereferenceable(28) %281, i32 28, i1 false) #11
  %296 = tail call i32 @ieee80211_hw_config(ptr noundef %0, i32 noundef 0) #11
  br label %298

297:                                              ; preds = %290, %285
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1276, i32 noundef 9, ptr noundef null) #11
  br label %545

298:                                              ; preds = %291, %246, %229, %225
  %299 = phi ptr [ %157, %229 ], [ %154, %291 ], [ %157, %225 ], [ %157, %246 ]
  %300 = load ptr, ptr %2, align 4
  %301 = icmp eq ptr %300, %2
  br i1 %301, label %579, label %302

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %304 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 8
  %305 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  br label %306

306:                                              ; preds = %518, %302
  %307 = phi ptr [ %300, %302 ], [ %519, %518 ]
  %308 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %307, i32 0, i32 4
  %309 = load i32, ptr %308, align 4
  %310 = icmp eq i32 %309, 2
  br i1 %310, label %311, label %518

311:                                              ; preds = %306
  %312 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %307, i32 0, i32 5
  %313 = load ptr, ptr %312, align 4
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %316, !prof !14

315:                                              ; preds = %311
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1503, i32 noundef 9, ptr noundef null) #11
  br label %545

316:                                              ; preds = %311
  %317 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %307, i32 0, i32 3
  %318 = load ptr, ptr %317, align 4
  %319 = icmp eq ptr %318, %317
  br i1 %319, label %389, label %320

320:                                              ; preds = %316
  %321 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %307, i32 0, i32 8
  %322 = icmp eq ptr %321, null
  br label %323

323:                                              ; preds = %386, %320
  %324 = phi ptr [ %318, %320 ], [ %387, %386 ]
  %325 = getelementptr i8, ptr %324, i32 -1008
  %326 = getelementptr i8, ptr %324, i32 8
  %327 = load ptr, ptr %326, align 8
  %328 = getelementptr i8, ptr %324, i32 2076
  %329 = load ptr, ptr %328, align 4
  %330 = icmp eq ptr %329, null
  %331 = getelementptr i8, ptr %329, i32 -48
  %332 = icmp eq ptr %331, null
  %333 = or i1 %330, %332
  br i1 %333, label %386, label %334

334:                                              ; preds = %323
  %335 = icmp eq ptr %327, null
  br i1 %335, label %336, label %337, !prof !14

336:                                              ; preds = %334
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1255, i32 noundef 9, ptr noundef null) #11
  br label %386

337:                                              ; preds = %334
  %338 = getelementptr i8, ptr %329, i32 -16
  %339 = load i32, ptr %338, align 4
  %340 = icmp eq i32 %339, 1
  br i1 %340, label %341, label %386

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %327, i32 0, i32 4
  %343 = load i32, ptr %342, align 4
  %344 = icmp eq i32 %343, 2
  br i1 %344, label %345, label %386

345:                                              ; preds = %341
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !27
  %346 = getelementptr i8, ptr %324, i32 1256
  store volatile ptr %321, ptr %328, align 4
  %347 = load i32, ptr %346, align 8
  %348 = icmp eq i32 %347, 3
  br i1 %348, label %349, label %360

349:                                              ; preds = %345
  br i1 %322, label %350, label %351, !prof !14

350:                                              ; preds = %349
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 919, i32 noundef 9, ptr noundef null) #11
  br label %351

351:                                              ; preds = %350, %349
  %352 = getelementptr i8, ptr %324, i32 420
  %353 = load ptr, ptr %352, align 4
  %354 = icmp eq ptr %353, %352
  br i1 %354, label %360, label %355

355:                                              ; preds = %355, %351
  %356 = phi ptr [ %358, %355 ], [ %353, %351 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  %357 = getelementptr i8, ptr %356, i32 1676
  store volatile ptr %321, ptr %357, align 4
  %358 = load ptr, ptr %356, align 4
  %359 = icmp eq ptr %358, %352
  br i1 %359, label %360, label %355

360:                                              ; preds = %355, %351, %345
  tail call void @ieee80211_check_fast_xmit_iface(ptr noundef %325) #11
  %361 = getelementptr i8, ptr %324, i32 40
  %362 = load i8, ptr %361, align 8, !range !10
  %363 = getelementptr i8, ptr %324, i32 124
  store i8 %362, ptr %363, align 4
  %364 = getelementptr i8, ptr %324, i32 1368
  %365 = load i32, ptr %364, align 4
  %366 = getelementptr i8, ptr %324, i32 12
  %367 = getelementptr i8, ptr %324, i32 16
  %368 = load i32, ptr %367, align 4
  %369 = icmp eq i32 %365, %368
  %370 = select i1 %369, i32 0, i32 2097152
  %371 = getelementptr i8, ptr %324, i32 1364
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %371, ptr noundef align 4 dereferenceable(28) %366, i32 28, i1 false) #11
  %372 = load i32, ptr %346, align 8
  %373 = icmp eq i32 %372, 3
  br i1 %373, label %374, label %383

374:                                              ; preds = %360
  %375 = getelementptr i8, ptr %324, i32 420
  %376 = load ptr, ptr %375, align 4
  %377 = icmp eq ptr %376, %375
  br i1 %377, label %383, label %378

378:                                              ; preds = %378, %374
  %379 = phi ptr [ %381, %378 ], [ %376, %374 ]
  %380 = getelementptr i8, ptr %379, i32 964
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %380, ptr noundef align 4 dereferenceable(28) %366, i32 28, i1 false) #11
  %381 = load ptr, ptr %379, align 4
  %382 = icmp eq ptr %381, %375
  br i1 %382, label %383, label %378

383:                                              ; preds = %378, %374, %360
  br i1 %369, label %385, label %384

384:                                              ; preds = %383
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %325, i32 noundef %370) #11
  br label %385

385:                                              ; preds = %384, %383
  tail call void @ieee80211_recalc_txpower(ptr noundef %325, i1 noundef zeroext false) #11
  br label %386

386:                                              ; preds = %385, %341, %337, %336, %323
  %387 = load ptr, ptr %324, align 4
  %388 = icmp eq ptr %387, %317
  br i1 %388, label %389, label %323

389:                                              ; preds = %386, %316
  tail call void @ieee80211_recalc_chanctx_chantype(ptr noundef %0, ptr noundef %307)
  tail call void @ieee80211_recalc_smps_chanctx(ptr noundef %0, ptr noundef %307)
  %390 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %307, i32 0, i32 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %391 = load volatile ptr, ptr %303, align 8
  %392 = icmp eq ptr %391, %303
  br i1 %392, label %410, label %393

393:                                              ; preds = %407, %389
  %394 = phi ptr [ %408, %407 ], [ %391, %389 ]
  %395 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %394, i32 0, i32 9
  %396 = load volatile i32, ptr %395, align 4
  %397 = and i32 %396, 1
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %407, label %399

399:                                              ; preds = %393
  %400 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %394, i32 0, i32 58, i32 9
  %401 = load volatile ptr, ptr %400, align 4
  %402 = icmp eq ptr %401, %390
  br i1 %402, label %403, label %407

403:                                              ; preds = %399
  %404 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %394, i32 0, i32 47
  %405 = load i8, ptr %404, align 4, !range !10
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %403, %399, %393
  %408 = load volatile ptr, ptr %394, align 8
  %409 = icmp eq ptr %408, %303
  br i1 %409, label %410, label %393

410:                                              ; preds = %407, %403, %389
  %411 = phi i1 [ false, %389 ], [ true, %403 ], [ false, %407 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %412 = zext i1 %411 to i8
  %413 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %307, i32 0, i32 8, i32 4
  %414 = load i8, ptr %413, align 2, !range !10
  %415 = icmp eq i8 %414, %412
  br i1 %415, label %422, label %416

416:                                              ; preds = %410
  store i8 %412, ptr %413, align 2
  %417 = load i8, ptr %299, align 1, !range !10
  %418 = icmp eq i8 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %416
  store i8 %412, ptr %304, align 8
  %420 = tail call i32 @ieee80211_hw_config(ptr noundef %0, i32 noundef 64) #11
  br label %421

421:                                              ; preds = %419, %416
  tail call fastcc void @drv_change_chanctx(ptr noundef %0, ptr noundef %307, i32 noundef 4) #11
  br label %422

422:                                              ; preds = %421, %410
  tail call void @ieee80211_recalc_chanctx_min_def(ptr noundef %0, ptr noundef %307)
  %423 = load ptr, ptr %317, align 4
  %424 = icmp eq ptr %423, %317
  br i1 %424, label %518, label %425

425:                                              ; preds = %422
  %426 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %307, i32 0, i32 2
  br label %427

427:                                              ; preds = %459, %425
  %428 = phi ptr [ %423, %425 ], [ %429, %459 ]
  %429 = load ptr, ptr %428, align 8
  %430 = getelementptr i8, ptr %428, i32 2076
  %431 = load ptr, ptr %430, align 4
  %432 = icmp eq ptr %431, null
  %433 = getelementptr i8, ptr %431, i32 -48
  %434 = select i1 %432, ptr null, ptr %433
  %435 = icmp eq ptr %434, %307
  br i1 %435, label %436, label %459

436:                                              ; preds = %427
  %437 = getelementptr inbounds %struct.list_head, ptr %428, i32 0, i32 1
  %438 = load ptr, ptr %437, align 4
  %439 = getelementptr inbounds %struct.list_head, ptr %429, i32 0, i32 1
  store ptr %438, ptr %439, align 4
  store volatile ptr %429, ptr %438, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %428, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %437, align 4
  %440 = getelementptr i8, ptr %428, i32 -8
  %441 = getelementptr i8, ptr %428, i32 -4
  %442 = load ptr, ptr %441, align 4
  %443 = load ptr, ptr %440, align 4
  %444 = getelementptr inbounds %struct.list_head, ptr %443, i32 0, i32 1
  store ptr %442, ptr %444, align 4
  store volatile ptr %443, ptr %442, align 4
  %445 = load ptr, ptr %426, align 4
  %446 = getelementptr inbounds %struct.list_head, ptr %445, i32 0, i32 1
  store ptr %440, ptr %446, align 4
  store ptr %445, ptr %440, align 4
  store ptr %426, ptr %441, align 4
  store volatile ptr %440, ptr %426, align 4
  %447 = getelementptr i8, ptr %428, i32 8
  store ptr null, ptr %447, align 8
  %448 = getelementptr i8, ptr %428, i32 1256
  %449 = load i32, ptr %448, align 8
  switch i32 %449, label %459 [
    i32 1, label %450
    i32 3, label %450
    i32 7, label %450
    i32 11, label %450
    i32 2, label %454
    i32 0, label %458
    i32 4, label %458
    i32 5, label %458
    i32 6, label %458
    i32 8, label %458
    i32 9, label %458
    i32 10, label %458
    i32 12, label %458
    i32 13, label %458
  ]

450:                                              ; preds = %436, %436, %436, %436
  %451 = getelementptr i8, ptr %428, i32 -652
  %452 = load ptr, ptr %451, align 4
  %453 = getelementptr i8, ptr %428, i32 -72
  tail call void @ieee80211_queue_work(ptr noundef %452, ptr noundef %453) #11
  br label %459

454:                                              ; preds = %436
  %455 = getelementptr i8, ptr %428, i32 -652
  %456 = load ptr, ptr %455, align 4
  %457 = getelementptr i8, ptr %428, i32 496
  tail call void @ieee80211_queue_work(ptr noundef %456, ptr noundef %457) #11
  br label %459

458:                                              ; preds = %436, %436, %436, %436, %436, %436, %436, %436, %436
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #11
  br label %459

459:                                              ; preds = %458, %454, %450, %436, %427
  %460 = icmp eq ptr %429, %317
  br i1 %460, label %461, label %427

461:                                              ; preds = %459
  %462 = load ptr, ptr %317, align 4
  %463 = icmp eq ptr %462, %317
  br i1 %463, label %518, label %464

464:                                              ; preds = %516, %461
  %465 = phi ptr [ %467, %516 ], [ %462, %461 ]
  %466 = getelementptr i8, ptr %465, i32 -1008
  %467 = load ptr, ptr %465, align 8
  %468 = getelementptr i8, ptr %465, i32 8
  %469 = load ptr, ptr %468, align 8
  %470 = getelementptr i8, ptr %465, i32 2076
  %471 = load ptr, ptr %470, align 4
  %472 = icmp eq ptr %471, null
  %473 = getelementptr i8, ptr %471, i32 -48
  %474 = icmp eq ptr %473, null
  %475 = or i1 %472, %474
  br i1 %475, label %489, label %476

476:                                              ; preds = %464
  %477 = icmp eq ptr %469, null
  br i1 %477, label %478, label %480, !prof !14

478:                                              ; preds = %476
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1255, i32 noundef 9, ptr noundef null) #11
  %479 = load ptr, ptr %468, align 8
  br label %489

480:                                              ; preds = %476
  %481 = getelementptr i8, ptr %471, i32 -16
  %482 = load i32, ptr %481, align 4
  %483 = icmp eq i32 %482, 1
  br i1 %483, label %484, label %489

484:                                              ; preds = %480
  %485 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %469, i32 0, i32 4
  %486 = load i32, ptr %485, align 4
  %487 = icmp eq i32 %486, 2
  br i1 %487, label %488, label %489, !prof !14

488:                                              ; preds = %484
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1565, i32 noundef 9, ptr noundef null) #11
  br label %516

489:                                              ; preds = %484, %480, %478, %464
  %490 = phi ptr [ %469, %480 ], [ %469, %464 ], [ %479, %478 ], [ %469, %484 ]
  %491 = icmp eq ptr %490, %307
  br i1 %491, label %493, label %492, !prof !11

492:                                              ; preds = %489
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1568, i32 noundef 9, ptr noundef null) #11
  br label %516

493:                                              ; preds = %489
  %494 = getelementptr i8, ptr %465, i32 41
  %495 = load i8, ptr %494, align 1, !range !10
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %516, label %497

497:                                              ; preds = %493
  %498 = load ptr, ptr %470, align 4
  %499 = icmp eq ptr %498, null
  %500 = getelementptr i8, ptr %498, i32 -48
  %501 = icmp eq ptr %500, null
  %502 = or i1 %499, %501
  br i1 %502, label %505, label %503

503:                                              ; preds = %497
  %504 = tail call fastcc i32 @ieee80211_vif_use_reserved_reassign(ptr noundef %466)
  br label %507

505:                                              ; preds = %497
  %506 = tail call fastcc i32 @ieee80211_vif_use_reserved_assign(ptr noundef %466)
  br label %507

507:                                              ; preds = %505, %503
  %508 = phi i32 [ %504, %503 ], [ %506, %505 ]
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %516, label %510

510:                                              ; preds = %507
  %511 = getelementptr i8, ptr %465, i32 -640
  %512 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %511, i32 noundef %508) #13
  %513 = tail call i32 @ieee80211_vif_unreserve_chanctx(ptr noundef %466)
  %514 = load ptr, ptr %305, align 8
  %515 = getelementptr i8, ptr %465, i32 -1000
  tail call void @cfg80211_stop_iface(ptr noundef %514, ptr noundef %515, i32 noundef 3264) #11
  br label %516

516:                                              ; preds = %510, %507, %493, %492, %488
  %517 = icmp eq ptr %467, %317
  br i1 %517, label %518, label %464

518:                                              ; preds = %516, %461, %422, %306
  %519 = load ptr, ptr %307, align 4
  %520 = icmp eq ptr %519, %2
  br i1 %520, label %521, label %306

521:                                              ; preds = %518
  %522 = load ptr, ptr %2, align 8
  %523 = icmp eq ptr %522, %2
  br i1 %523, label %579, label %524

524:                                              ; preds = %543, %521
  %525 = phi ptr [ %526, %543 ], [ %522, %521 ]
  %526 = load ptr, ptr %525, align 4
  %527 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %525, i32 0, i32 4
  %528 = load i32, ptr %527, align 4
  %529 = icmp eq i32 %528, 1
  br i1 %529, label %530, label %543

530:                                              ; preds = %524
  %531 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %525, i32 0, i32 5
  %532 = load ptr, ptr %531, align 4
  %533 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %532, i32 0, i32 5
  store ptr null, ptr %533, align 4
  %534 = load ptr, ptr %531, align 4
  %535 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %534, i32 0, i32 4
  store i32 0, ptr %535, align 4
  %536 = getelementptr inbounds %struct.list_head, ptr %525, i32 0, i32 1
  %537 = load ptr, ptr %536, align 4
  %538 = load ptr, ptr %525, align 4
  %539 = getelementptr inbounds %struct.list_head, ptr %538, i32 0, i32 1
  store ptr %537, ptr %539, align 4
  store volatile ptr %538, ptr %537, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %536, align 4
  %540 = icmp eq ptr %525, null
  br i1 %540, label %543, label %541

541:                                              ; preds = %530
  %542 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %525, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %542, ptr noundef nonnull inttoptr (i32 8 to ptr)) #11
  br label %543

543:                                              ; preds = %541, %530, %524
  %544 = icmp eq ptr %526, %2
  br i1 %544, label %579, label %524

545:                                              ; preds = %315, %297, %273, %253, %222, %179, %162, %159, %152, %143, %136, %129, %54, %21
  %546 = phi i32 [ -22, %21 ], [ -16, %54 ], [ %223, %222 ], [ -22, %315 ], [ -22, %297 ], [ -22, %152 ], [ -22, %143 ], [ -22, %136 ], [ -22, %129 ], [ -22, %179 ], [ -12, %162 ], [ -12, %159 ], [ %244, %253 ], [ %244, %273 ]
  %547 = load ptr, ptr %2, align 4
  %548 = icmp eq ptr %547, %2
  br i1 %548, label %579, label %549

549:                                              ; preds = %576, %545
  %550 = phi ptr [ %577, %576 ], [ %547, %545 ]
  %551 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %550, i32 0, i32 4
  %552 = load i32, ptr %551, align 4
  %553 = icmp eq i32 %552, 2
  br i1 %553, label %554, label %576

554:                                              ; preds = %549
  %555 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %550, i32 0, i32 3
  %556 = load ptr, ptr %555, align 4
  %557 = icmp eq ptr %556, %555
  br i1 %557, label %576, label %558

558:                                              ; preds = %574, %554
  %559 = phi ptr [ %561, %574 ], [ %556, %554 ]
  %560 = getelementptr i8, ptr %559, i32 -1008
  %561 = load ptr, ptr %559, align 8
  %562 = tail call i32 @ieee80211_vif_unreserve_chanctx(ptr noundef %560)
  %563 = getelementptr i8, ptr %559, i32 1256
  %564 = load i32, ptr %563, align 8
  switch i32 %564, label %574 [
    i32 1, label %565
    i32 3, label %565
    i32 7, label %565
    i32 11, label %565
    i32 2, label %569
    i32 0, label %573
    i32 4, label %573
    i32 5, label %573
    i32 6, label %573
    i32 8, label %573
    i32 9, label %573
    i32 10, label %573
    i32 12, label %573
    i32 13, label %573
  ]

565:                                              ; preds = %558, %558, %558, %558
  %566 = getelementptr i8, ptr %559, i32 -652
  %567 = load ptr, ptr %566, align 4
  %568 = getelementptr i8, ptr %559, i32 -72
  tail call void @ieee80211_queue_work(ptr noundef %567, ptr noundef %568) #11
  br label %574

569:                                              ; preds = %558
  %570 = getelementptr i8, ptr %559, i32 -652
  %571 = load ptr, ptr %570, align 4
  %572 = getelementptr i8, ptr %559, i32 496
  tail call void @ieee80211_queue_work(ptr noundef %571, ptr noundef %572) #11
  br label %574

573:                                              ; preds = %558, %558, %558, %558, %558, %558, %558, %558, %558
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #11
  br label %574

574:                                              ; preds = %573, %569, %565, %558
  %575 = icmp eq ptr %561, %555
  br i1 %575, label %576, label %558

576:                                              ; preds = %574, %554, %549
  %577 = load ptr, ptr %550, align 4
  %578 = icmp eq ptr %577, %2
  br i1 %578, label %579, label %549

579:                                              ; preds = %576, %545, %543, %521, %298, %88, %52
  %580 = phi i32 [ -11, %52 ], [ %546, %545 ], [ 0, %521 ], [ 0, %298 ], [ %546, %576 ], [ 0, %543 ], [ -11, %88 ]
  ret i32 %580
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_vif_change_bandwidth(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = tail call zeroext i1 @cfg80211_chandef_usable(ptr noundef %7, ptr noundef %1, i32 noundef 1) #11
  br i1 %8, label %9, label %86

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %10) #11
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32
  %12 = load ptr, ptr %1, align 4
  %13 = load ptr, ptr %11, align 4
  %14 = icmp eq ptr %12, %13
  %15 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  br i1 %14, label %17, label %39

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 5
  %29 = load i16, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 5
  %31 = load i16, ptr %30, align 4
  %32 = icmp eq i16 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %84, label %39

39:                                               ; preds = %33, %27, %21, %17, %9
  %40 = icmp eq i32 %16, 0
  br i1 %40, label %84, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %84, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %84, label %49

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %47, i32 -48
  %51 = tail call ptr @cfg80211_chandef_compatible(ptr noundef nonnull %47, ptr noundef %1) #11
  %52 = icmp eq ptr %51, null
  br i1 %52, label %84, label %53

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %47, i32 -16
  %55 = load i32, ptr %54, align 4
  switch i32 %55, label %68 [
    i32 0, label %56
    i32 1, label %84
    i32 2, label %67
  ]

56:                                               ; preds = %53
  %57 = getelementptr i8, ptr %47, i32 -24
  br label %58

58:                                               ; preds = %63, %56
  %59 = phi ptr [ %57, %56 ], [ %61, %63 ]
  %60 = phi ptr [ %51, %56 ], [ %65, %63 ]
  %61 = load ptr, ptr %59, align 4
  %62 = icmp eq ptr %61, %57
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = getelementptr i8, ptr %61, i32 12
  %65 = tail call ptr @cfg80211_chandef_compatible(ptr noundef %64, ptr noundef nonnull %60) #11
  %66 = icmp eq ptr %65, null
  br i1 %66, label %84, label %58

67:                                               ; preds = %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1843, i32 noundef 9, ptr noundef null) #11
  br label %68

68:                                               ; preds = %67, %58, %53
  %69 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %11, ptr noundef align 4 dereferenceable(28) %1, i32 28, i1 false) #11
  %70 = load i32, ptr %69, align 8
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %73
  br i1 %75, label %81, label %76

76:                                               ; preds = %76, %72
  %77 = phi ptr [ %79, %76 ], [ %74, %72 ]
  %78 = getelementptr i8, ptr %77, i32 964
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %78, ptr noundef align 4 dereferenceable(28) %1, i32 28, i1 false) #11
  %79 = load ptr, ptr %77, align 4
  %80 = icmp eq ptr %79, %73
  br i1 %80, label %81, label %76

81:                                               ; preds = %76, %72, %68
  tail call void @ieee80211_recalc_chanctx_chantype(ptr noundef %5, ptr noundef %50)
  %82 = load i32, ptr %2, align 4
  %83 = or i32 %82, 2097152
  store i32 %83, ptr %2, align 4
  br label %84

84:                                               ; preds = %81, %63, %53, %49, %45, %41, %39, %33
  %85 = phi i32 [ 0, %81 ], [ 0, %33 ], [ -22, %41 ], [ -22, %39 ], [ -22, %45 ], [ -22, %49 ], [ -16, %53 ], [ -16, %63 ]
  tail call void @mutex_unlock(ptr noundef %10) #11
  br label %86

86:                                               ; preds = %84, %3
  %87 = phi i32 [ %85, %84 ], [ -22, %3 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_usable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_vif_release_channel(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !14

10:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1860, i32 noundef 9, ptr noundef null) #11
  br label %11

11:                                               ; preds = %10, %5, %1
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ieee80211_local, ptr %13, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %14) #11
  tail call fastcc void @__ieee80211_vif_release_channel(ptr noundef %0)
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.ieee80211_local, ptr %15, i32 0, i32 89
  tail call void @mutex_unlock(ptr noundef %16) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_vif_vlan_copy_chanctx(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 49
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !14

11:                                               ; preds = %7, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1875, i32 noundef 9, ptr noundef null) #11
  br label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %13) #11
  %14 = getelementptr i8, ptr %9, i32 1676
  %15 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !28
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  store volatile ptr %15, ptr %16, align 4
  tail call void @mutex_unlock(ptr noundef %13) #11
  br label %17

17:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_iter_chan_contexts_atomic(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 88
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %17, label %7

7:                                                ; preds = %14, %3
  %8 = phi ptr [ %15, %14 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %8, i32 0, i32 7
  %10 = load i8, ptr %9, align 4, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %8, i32 0, i32 8
  tail call void %1(ptr noundef %0, ptr noundef %13, ptr noundef %2) #11
  br label %14

14:                                               ; preds = %12, %7
  %15 = load volatile ptr, ptr %8, align 4
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %7

17:                                               ; preds = %14, %3
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_chandef_downgrade(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_cap_rx_bw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_cur_vht_bw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_rate_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_change_chanctx(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_del_chanctx(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 26
  %4 = load i8, ptr %3, align 1, !range !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = tail call i32 @ieee80211_s1g_channel_width(ptr noundef %8) #11
  %13 = load ptr, ptr %7, align 4
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi ptr [ %13, %11 ], [ %8, %6 ]
  %16 = phi i32 [ %12, %11 ], [ 0, %6 ]
  %17 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86, i32 1
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ieee80211_channel, ptr %15, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86, i32 2
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ieee80211_channel, ptr %15, i32 0, i32 2
  %22 = load i16, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86, i32 5
  store i16 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86, i32 3
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 8
  %26 = load i8, ptr %25, align 8, !range !10
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 88
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %33, label %32, !prof !11

32:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 650, i32 noundef 9, ptr noundef null) #11
  br label %33

33:                                               ; preds = %32, %28, %14
  store i8 0, ptr %25, align 8
  %34 = tail call i32 @ieee80211_hw_config(ptr noundef %0, i32 noundef 64) #11
  br label %81

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 7
  %37 = load i8, ptr %36, align 4, !range !10
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40, !prof !14

39:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 894, i32 noundef 9, ptr noundef null) #11
  br label %81

40:                                               ; preds = %35
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_remove_chanctx, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %55 = tail call i32 @__traceiter_drv_remove_chanctx(ptr noundef null, ptr noundef %0, ptr noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  br label %56

56:                                               ; preds = %54, %43, %40
  %57 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.ieee80211_ops, ptr %58, i32 0, i32 70
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8
  tail call void %60(ptr noundef %0, ptr noundef %63) #11
  br label %64

64:                                               ; preds = %62, %56
  %65 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = tail call ptr @llvm.thread.pointer() #11
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %69, align 8
  %71 = lshr i32 %70, 5
  %72 = getelementptr i32, ptr @__cpu_online_mask, i32 %71
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %70, 31
  %75 = shl nuw i32 1, %74
  %76 = and i32 %75, %73
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %67
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %79 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  br label %80

80:                                               ; preds = %78, %67, %64
  store i8 0, ptr %36, align 4
  br label %81

81:                                               ; preds = %80, %39, %33
  tail call void @ieee80211_recalc_idle(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_s1g_channel_width(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_idle(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_remove_chanctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_max_num_channels(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_add_chanctx(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 26
  %4 = load i8, ptr %3, align 1, !range !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8, i32 4
  %8 = load i8, ptr %7, align 2, !range !10
  %9 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 8
  store i8 %8, ptr %9, align 8
  br label %10

10:                                               ; preds = %6, %2
  %11 = tail call i32 @ieee80211_idle_off(ptr noundef %0) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @ieee80211_hw_config(ptr noundef %0, i32 noundef %11) #11
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i8, ptr %3, align 1, !range !10
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 86
  %20 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %19, ptr noundef align 4 dereferenceable(28) %20, i32 28, i1 false)
  %21 = tail call i32 @ieee80211_hw_config(ptr noundef %0, i32 noundef 64) #11
  br label %69

22:                                               ; preds = %15
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_add_chanctx, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = tail call ptr @llvm.thread.pointer() #11
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 5
  %30 = getelementptr i32, ptr @__cpu_online_mask, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %28, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %25
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !31
  %37 = tail call i32 @__traceiter_drv_add_chanctx(ptr noundef null, ptr noundef %0, ptr noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !32
  br label %38

38:                                               ; preds = %36, %25, %22
  %39 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ieee80211_ops, ptr %40, i32 0, i32 69
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 8
  %46 = tail call i32 %42(ptr noundef %0, ptr noundef %45) #11
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi i32 [ %46, %44 ], [ -95, %38 ]
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  %63 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %48) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  br label %64

64:                                               ; preds = %62, %51, %47
  %65 = icmp eq i32 %48, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %1, i32 0, i32 7
  store i8 1, ptr %67, align 4
  br label %69

68:                                               ; preds = %64
  tail call void @ieee80211_recalc_idle(ptr noundef %0) #11
  br label %69

69:                                               ; preds = %68, %66, %18
  %70 = phi i32 [ %48, %68 ], [ 0, %18 ], [ 0, %66 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_idle_off(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_add_chanctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_txpower(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_fast_xmit_iface(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_unassign_vif_chanctx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_assign_vif_chanctx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_switch_vif_chanctx(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_stop_iface(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #10

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
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
!8 = !{i64 2149658535}
!9 = !{i64 2149658752}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2158515610}
!13 = !{i64 2158515796}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2157446674}
!16 = !{i64 2157446826}
!17 = !{i64 2159942786}
!18 = !{i64 2149683776}
!19 = !{i64 2158559555}
!20 = !{i64 2158559749}
!21 = !{i64 2158544985}
!22 = !{i64 2158545175}
!23 = !{i64 2157459544}
!24 = !{i64 2157459704}
!25 = !{i64 2159876073}
!26 = !{i64 2159965959}
!27 = !{i64 2160021078}
!28 = !{i64 2160074871}
!29 = !{i64 2158497723}
!30 = !{i64 2158497891}
!31 = !{i64 2158484340}
!32 = !{i64 2158484502}
