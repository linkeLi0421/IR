; ModuleID = '/llk/IR/net/mac80211/ht.c_pt.bc'
source_filename = "../net/mac80211/ht.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_request_smps:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_request_smps\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_request_smps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.151, %struct.ieee80211_vif }
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
%struct.atomic_t = type { i32 }
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
%struct.ieee80211_if_managed = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i8, i8, ptr, ptr, ptr, [6 x i8], i8, i8, i8, i8, i32, i32, %struct.work_struct, i32, i8, i8, i8, i32, i8, i8, i16, i32, i32, i32, i32, i32, i8, i16, %struct.ewma_beacon_signal, i32, i32, i32, i32, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_s1g_cap, %struct.ieee80211_s1g_cap, [6 x i8], %struct.delayed_work, ptr, ptr, %struct.spinlock, i8, i8, [4 x %struct.ieee80211_sta_tx_tspec], %struct.delayed_work, ptr, i32 }
%struct.ewma_beacon_signal = type { i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_s1g_cap = type { [10 x i8], [5 x i8] }
%struct.ieee80211_sta_tx_tspec = type { i32, i32, i8, i8, i32, i32, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
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
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.tid_ampdu_tx = type { %struct.callback_head, %struct.timer_list, %struct.timer_list, %struct.sk_buff_head, ptr, i32, i32, i16, i8, i8, i8, i16, i16, i16, i8, i8, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.118, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.118 = type { i32, i16 }
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
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.152 }
%union.anon.152 = type { %struct.anon.158, [16 x i8] }
%struct.anon.158 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_if_ibss = type { %struct.timer_list, %struct.work_struct, i32, i32, i8, i8, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, ptr, %struct.cfg80211_chan_def, i32, ptr, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.spinlock, %struct.list_head, i32 }
%struct.anon.165 = type { i8, %union.anon.166 }
%union.anon.166 = type <{ %struct.anon.171, [17 x i8] }>
%struct.anon.171 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.anon.173 = type <{ i8, i16, i16 }>
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.44, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.81, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.44 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.81 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}

@ieee80211_apply_htcap_overrides.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [18 x i8] c"net/mac80211/ht.c\00", align 1
@ieee80211_ht_cap_ie_to_sta_ht_cap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_request_smps.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ieee80211_request_smps = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_request_smps = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_request_smps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_request_smps to i32), ptr @__kstrtab_ieee80211_request_smps, ptr @__kstrtabns_ieee80211_request_smps }, section "___ksymtab_gpl+ieee80211_request_smps", align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"net/mac80211/ieee80211_i.h\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ieee80211_request_smps], section "llvm.metadata"
@switch.table.ieee80211_ht_cap_ie_to_sta_ht_cap = private unnamed_addr constant [4 x i32] [i32 2, i32 3, i32 2, i32 1], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_apply_htcap_overrides(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %1, i32 0, i32 1
  %4 = load i8, ptr %3, align 2, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %241, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %8 = load i32, ptr %7, align 8
  switch i32 %8, label %16 [
    i32 2, label %9
    i32 1, label %13
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 26
  %12 = getelementptr inbounds %struct.ieee80211_if_managed, ptr %10, i32 0, i32 47
  br label %19

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 17
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 21, i32 1, i32 2
  br label %19

16:                                               ; preds = %6
  %17 = load i1, ptr @ieee80211_apply_htcap_overrides.__already_done, align 1
  br i1 %17, label %241, label %18, !prof !9

18:                                               ; preds = %16
  store i1 true, ptr @ieee80211_apply_htcap_overrides.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 65, i32 noundef 9, ptr noundef null) #7
  br label %241

19:                                               ; preds = %13, %9
  %20 = phi ptr [ %15, %13 ], [ %12, %9 ]
  %21 = phi ptr [ %14, %13 ], [ %11, %9 ]
  %22 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %20, i32 0, i32 2
  %24 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %1, i32 0, i32 4
  %25 = load i8, ptr %23, align 1
  %26 = xor i8 %25, -1
  %27 = load i8, ptr %24, align 1
  %28 = and i8 %27, %26
  store i8 %28, ptr %24, align 1
  %29 = load i8, ptr %22, align 1
  %30 = and i8 %29, %25
  %31 = or i8 %30, %28
  store i8 %31, ptr %24, align 1
  %32 = getelementptr %struct.ieee80211_ht_cap, ptr %20, i32 0, i32 2, i32 0, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = xor i8 %33, -1
  %35 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %1, i32 0, i32 4, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, %34
  store i8 %37, ptr %35, align 1
  %38 = getelementptr %struct.ieee80211_ht_cap, ptr %21, i32 0, i32 2, i32 0, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, %33
  %41 = or i8 %40, %37
  store i8 %41, ptr %35, align 1
  %42 = getelementptr %struct.ieee80211_ht_cap, ptr %20, i32 0, i32 2, i32 0, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = xor i8 %43, -1
  %45 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %1, i32 0, i32 4, i32 0, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, %44
  store i8 %47, ptr %45, align 1
  %48 = getelementptr %struct.ieee80211_ht_cap, ptr %21, i32 0, i32 2, i32 0, i32 2
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, %43
  %51 = or i8 %50, %47
  store i8 %51, ptr %45, align 1
  %52 = getelementptr %struct.ieee80211_ht_cap, ptr %20, i32 0, i32 2, i32 0, i32 3
  %53 = load i8, ptr %52, align 1
  %54 = xor i8 %53, -1
  %55 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %1, i32 0, i32 4, i32 0, i32 3
  %56 = load i8, ptr %55, align 1
  %57 = and i8 %56, %54
  store i8 %57, ptr %55, align 1
  %58 = getelementptr %struct.ieee80211_ht_cap, ptr %21, i32 0, i32 2, i32 0, i32 3
  %59 = load i8, ptr %58, align 1
  %60 = and i8 %59, %53
  %61 = or i8 %60, %57
  store i8 %61, ptr %55, align 1
  %62 = getelementptr %struct.ieee80211_ht_cap, ptr %20, i32 0, i32 2, i32 0, i32 4
  %63 = load i8, ptr %62, align 1
  %64 = xor i8 %63, -1
  %65 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %1, i32 0, i32 4, i32 0, i32 4
  %66 = load i8, ptr %65, align 1
  %67 = and i8 %66, %64
  store i8 %67, ptr %65, align 1
  %68 = getelementptr %struct.ieee80211_ht_cap, ptr %21, i32 0, i32 2, i32 0, i32 4
  %69 = load i8, ptr %68, align 1
  %70 = and i8 %69, %63
  %71 = or i8 %70, %67
  store i8 %71, ptr %65, align 1
  %72 = getelementptr %struct.ieee80211_ht_cap, ptr %20, i32 0, i32 2, i32 0, i32 5
  %73 = load i8, ptr %72, align 1
  %74 = xor i8 %73, -1
  %75 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %1, i32 0, i32 4, i32 0, i32 5
  %76 = load i8, ptr %75, align 1
  %77 = and i8 %76, %74
  store i8 %77, ptr %75, align 1
  %78 = getelementptr %struct.ieee80211_ht_cap, ptr %21, i32 0, i32 2, i32 0, i32 5
  %79 = load i8, ptr %78, align 1
  %80 = and i8 %79, %73
  %81 = or i8 %80, %77
  store i8 %81, ptr %75, align 1
  %82 = getelementptr %struct.ieee80211_ht_cap, ptr %20, i32 0, i32 2, i32 0, i32 6
  %83 = load i8, ptr %82, align 1
  %84 = xor i8 %83, -1
  %85 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %1, i32 0, i32 4, i32 0, i32 6
  %86 = load i8, ptr %85, align 1
  %87 = and i8 %86, %84
  store i8 %87, ptr %85, align 1
  %88 = getelementptr %struct.ieee80211_ht_cap, ptr %21, i32 0, i32 2, i32 0, i32 6
  %89 = load i8, ptr %88, align 1
  %90 = and i8 %89, %83
  %91 = or i8 %90, %87
  store i8 %91, ptr %85, align 1
  %92 = getelementptr %struct.ieee80211_ht_cap, ptr %20, i32 0, i32 2, i32 0, i32 7
  %93 = load i8, ptr %92, align 1
  %94 = xor i8 %93, -1
  %95 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %1, i32 0, i32 4, i32 0, i32 7
  %96 = load i8, ptr %95, align 1
  %97 = and i8 %96, %94
  store i8 %97, ptr %95, align 1
  %98 = getelementptr %struct.ieee80211_ht_cap, ptr %21, i32 0, i32 2, i32 0, i32 7
  %99 = load i8, ptr %98, align 1
  %100 = and i8 %99, %93
  %101 = or i8 %100, %97
  store i8 %101, ptr %95, align 1
  %102 = getelementptr %struct.ieee80211_ht_cap, ptr %20, i32 0, i32 2, i32 0, i32 8
  %103 = load i8, ptr %102, align 1
  %104 = xor i8 %103, -1
  %105 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %1, i32 0, i32 4, i32 0, i32 8
  %106 = load i8, ptr %105, align 1
  %107 = and i8 %106, %104
  store i8 %107, ptr %105, align 1
  %108 = getelementptr %struct.ieee80211_ht_cap, ptr %21, i32 0, i32 2, i32 0, i32 8
  %109 = load i8, ptr %108, align 1
  %110 = and i8 %109, %103
  %111 = or i8 %110, %107
  store i8 %111, ptr %105, align 1
  %112 = getelementptr %struct.ieee80211_ht_cap, ptr %20, i32 0, i32 2, i32 0, i32 9
  %113 = load i8, ptr %112, align 1
  %114 = xor i8 %113, -1
  %115 = getelementptr %struct.ieee80211_sta_ht_cap, ptr %1, i32 0, i32 4, i32 0, i32 9
  %116 = load i8, ptr %115, align 1
  %117 = and i8 %116, %114
  store i8 %117, ptr %115, align 1
  %118 = getelementptr %struct.ieee80211_ht_cap, ptr %21, i32 0, i32 2, i32 0, i32 9
  %119 = load i8, ptr %118, align 1
  %120 = and i8 %119, %113
  %121 = or i8 %120, %117
  store i8 %121, ptr %115, align 1
  %122 = load i16, ptr %20, align 1
  %123 = and i16 %122, 2
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %19
  %126 = load i16, ptr %21, align 1
  %127 = and i16 %126, 2
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i16, ptr %1, align 2
  %131 = and i16 %130, -3
  store i16 %131, ptr %1, align 2
  %132 = load i16, ptr %20, align 1
  br label %133

133:                                              ; preds = %129, %125, %19
  %134 = phi i16 [ %122, %19 ], [ %122, %125 ], [ %132, %129 ]
  %135 = and i16 %134, 64
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %133
  %138 = load i16, ptr %21, align 1
  %139 = and i16 %138, 64
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i16, ptr %1, align 2
  %143 = and i16 %142, -65
  store i16 %143, ptr %1, align 2
  %144 = load i16, ptr %20, align 1
  br label %145

145:                                              ; preds = %141, %137, %133
  %146 = phi i16 [ %134, %133 ], [ %134, %137 ], [ %144, %141 ]
  %147 = and i16 %146, 32
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %145
  %150 = load i16, ptr %21, align 1
  %151 = and i16 %150, 32
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i16, ptr %1, align 2
  %155 = and i16 %154, -33
  store i16 %155, ptr %1, align 2
  %156 = load i16, ptr %20, align 1
  br label %157

157:                                              ; preds = %153, %149, %145
  %158 = phi i16 [ %146, %145 ], [ %146, %149 ], [ %156, %153 ]
  %159 = and i16 %158, 2048
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %169, label %161

161:                                              ; preds = %157
  %162 = load i16, ptr %21, align 1
  %163 = and i16 %162, 2048
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = load i16, ptr %1, align 2
  %167 = and i16 %166, -2049
  store i16 %167, ptr %1, align 2
  %168 = load i16, ptr %20, align 1
  br label %169

169:                                              ; preds = %165, %161, %157
  %170 = phi i16 [ %158, %157 ], [ %158, %161 ], [ %168, %165 ]
  %171 = and i16 %170, 1
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %181, label %173

173:                                              ; preds = %169
  %174 = load i16, ptr %21, align 1
  %175 = and i16 %174, 1
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load i16, ptr %1, align 2
  %179 = and i16 %178, -2
  store i16 %179, ptr %1, align 2
  %180 = load i16, ptr %20, align 1
  br label %181

181:                                              ; preds = %177, %173, %169
  %182 = phi i16 [ %170, %169 ], [ %170, %173 ], [ %180, %177 ]
  %183 = and i16 %182, 16384
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %181
  %186 = load i16, ptr %21, align 1
  %187 = and i16 %186, 16384
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = load i16, ptr %1, align 2
  %191 = or i16 %190, 16384
  store i16 %191, ptr %1, align 2
  %192 = load i16, ptr %20, align 1
  br label %193

193:                                              ; preds = %189, %185, %181
  %194 = phi i16 [ %182, %181 ], [ %182, %185 ], [ %192, %189 ]
  %195 = and i16 %194, 128
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %205, label %197

197:                                              ; preds = %193
  %198 = load i16, ptr %21, align 1
  %199 = and i16 %198, 128
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %197
  %202 = load i16, ptr %1, align 2
  %203 = or i16 %202, 128
  store i16 %203, ptr %1, align 2
  %204 = load i16, ptr %20, align 1
  br label %205

205:                                              ; preds = %201, %197, %193
  %206 = phi i16 [ %194, %193 ], [ %194, %197 ], [ %204, %201 ]
  %207 = and i16 %206, 768
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %214, label %209

209:                                              ; preds = %205
  %210 = load i16, ptr %21, align 1
  %211 = and i16 %210, 768
  %212 = load i16, ptr %1, align 2
  %213 = or i16 %212, %211
  store i16 %213, ptr %1, align 2
  br label %214

214:                                              ; preds = %209, %205
  %215 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %20, i32 0, i32 1
  %216 = load i8, ptr %215, align 1
  %217 = and i8 %216, 3
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %228, label %219

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %21, i32 0, i32 1
  %221 = load i8, ptr %220, align 1
  %222 = and i8 %221, 3
  %223 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %1, i32 0, i32 2
  %224 = load i8, ptr %223, align 1
  %225 = icmp ult i8 %222, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %219
  store i8 %222, ptr %223, align 1
  %227 = load i8, ptr %215, align 1
  br label %228

228:                                              ; preds = %226, %219, %214
  %229 = phi i8 [ %216, %219 ], [ %227, %226 ], [ %216, %214 ]
  %230 = and i8 %229, 28
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %241, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %21, i32 0, i32 1
  %234 = load i8, ptr %233, align 1
  %235 = lshr i8 %234, 2
  %236 = and i8 %235, 7
  %237 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %1, i32 0, i32 3
  %238 = load i8, ptr %237, align 2
  %239 = icmp ugt i8 %236, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %232
  store i8 %236, ptr %237, align 2
  br label %241

241:                                              ; preds = %240, %232, %228, %18, %16, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ieee80211_ht_cap_ie_to_sta_ht_cap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ieee80211_sta_ht_cap, align 2
  %6 = alloca %struct.ieee80211_sta_ht_cap, align 2
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(22) %5, i8 0, i32 22, i1 false)
  %7 = icmp eq ptr %2, null
  br i1 %7, label %124, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 5, i32 1
  %10 = load i8, ptr %9, align 2, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %124, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 5
  %14 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %5, i32 0, i32 1
  store i8 1, ptr %14, align 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(22) %6, ptr noundef align 4 dereferenceable(22) %13, i32 22, i1 false)
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, -1
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  call void @ieee80211_apply_htcap_overrides(ptr noundef %0, ptr noundef nonnull %6)
  br label %20

20:                                               ; preds = %19, %12
  %21 = load i16, ptr %2, align 1
  %22 = load i16, ptr %6, align 2
  %23 = or i16 %22, -4212
  %24 = and i16 %23, %21
  %25 = and i16 %22, 128
  %26 = icmp eq i16 %25, 0
  %27 = and i16 %24, -769
  %28 = select i1 %26, i16 %27, i16 %24
  %29 = and i16 %22, 768
  %30 = icmp eq i16 %29, 0
  %31 = and i16 %28, -129
  %32 = select i1 %30, i16 %31, i16 %28
  store i16 %32, ptr %5, align 2
  %33 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %2, i32 0, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 3
  %36 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %5, i32 0, i32 2
  store i8 %35, ptr %36, align 1
  %37 = lshr i8 %34, 2
  %38 = and i8 %37, 7
  %39 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %5, i32 0, i32 3
  store i8 %38, ptr %39, align 2
  %40 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %6, i32 0, i32 4
  %41 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %6, i32 0, i32 4, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %2, i32 0, i32 2
  %44 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %2, i32 0, i32 2, i32 2
  %45 = load i8, ptr %44, align 1
  %46 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %5, i32 0, i32 4
  %47 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %5, i32 0, i32 4, i32 2
  store i8 %45, ptr %47, align 1
  %48 = zext i8 %42 to i32
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %124, label %51

51:                                               ; preds = %20
  %52 = and i32 %48, 2
  %53 = icmp eq i32 %52, 0
  %54 = lshr i32 %48, 2
  %55 = and i32 %54, 3
  %56 = add nuw nsw i32 %55, 1
  %57 = select i1 %53, i32 4, i32 %56
  br label %58

58:                                               ; preds = %58, %51
  %59 = phi i32 [ 0, %51 ], [ %66, %58 ]
  %60 = getelementptr [10 x i8], ptr %40, i32 0, i32 %59
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr [10 x i8], ptr %43, i32 0, i32 %59
  %63 = load i8, ptr %62, align 1
  %64 = and i8 %63, %61
  %65 = getelementptr [10 x i8], ptr %46, i32 0, i32 %59
  store i8 %64, ptr %65, align 1
  %66 = add nuw nsw i32 %59, 1
  %67 = icmp eq i32 %66, %57
  br i1 %67, label %68, label %58

68:                                               ; preds = %58
  %69 = and i32 %48, 16
  %70 = icmp eq i32 %69, 0
  %71 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %6, i32 0, i32 4, i32 0, i32 4
  %72 = load i8, ptr %71, align 1
  %73 = getelementptr %struct.ieee80211_ht_cap, ptr %2, i32 0, i32 2, i32 0, i32 4
  %74 = load i8, ptr %73, align 1
  br i1 %70, label %108, label %75

75:                                               ; preds = %68
  %76 = and i8 %74, %72
  %77 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %5, i32 0, i32 4, i32 0, i32 4
  store i8 %76, ptr %77, align 1
  %78 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %6, i32 0, i32 4, i32 0, i32 5
  %79 = load i8, ptr %78, align 2
  %80 = getelementptr %struct.ieee80211_ht_cap, ptr %2, i32 0, i32 2, i32 0, i32 5
  %81 = load i8, ptr %80, align 1
  %82 = and i8 %81, %79
  %83 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %5, i32 0, i32 4, i32 0, i32 5
  store i8 %82, ptr %83, align 2
  %84 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %6, i32 0, i32 4, i32 0, i32 6
  %85 = load i8, ptr %84, align 1
  %86 = getelementptr %struct.ieee80211_ht_cap, ptr %2, i32 0, i32 2, i32 0, i32 6
  %87 = load i8, ptr %86, align 1
  %88 = and i8 %87, %85
  %89 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %5, i32 0, i32 4, i32 0, i32 6
  store i8 %88, ptr %89, align 1
  %90 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %6, i32 0, i32 4, i32 0, i32 7
  %91 = load i8, ptr %90, align 2
  %92 = getelementptr %struct.ieee80211_ht_cap, ptr %2, i32 0, i32 2, i32 0, i32 7
  %93 = load i8, ptr %92, align 1
  %94 = and i8 %93, %91
  %95 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %5, i32 0, i32 4, i32 0, i32 7
  store i8 %94, ptr %95, align 2
  %96 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %6, i32 0, i32 4, i32 0, i32 8
  %97 = load i8, ptr %96, align 1
  %98 = getelementptr %struct.ieee80211_ht_cap, ptr %2, i32 0, i32 2, i32 0, i32 8
  %99 = load i8, ptr %98, align 1
  %100 = and i8 %99, %97
  %101 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %5, i32 0, i32 4, i32 0, i32 8
  store i8 %100, ptr %101, align 1
  %102 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %6, i32 0, i32 4, i32 0, i32 9
  %103 = load i8, ptr %102, align 2
  %104 = getelementptr %struct.ieee80211_ht_cap, ptr %2, i32 0, i32 2, i32 0, i32 9
  %105 = load i8, ptr %104, align 1
  %106 = and i8 %105, %103
  %107 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %5, i32 0, i32 4, i32 0, i32 9
  store i8 %106, ptr %107, align 2
  br label %108

108:                                              ; preds = %75, %68
  %109 = and i8 %72, 1
  %110 = and i8 %109, %74
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %5, i32 0, i32 4, i32 0, i32 4
  %114 = load i8, ptr %113, align 1
  %115 = or i8 %114, 1
  store i8 %115, ptr %113, align 1
  br label %116

116:                                              ; preds = %112, %108
  %117 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %2, i32 0, i32 2, i32 1
  %118 = load i16, ptr %117, align 1
  %119 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %5, i32 0, i32 4, i32 1
  store i16 %118, ptr %119, align 1
  %120 = and i16 %32, 2048
  %121 = icmp eq i16 %120, 0
  %122 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46, i32 21
  %123 = select i1 %121, i16 3839, i16 7935
  store i16 %123, ptr %122, align 8
  br label %124

124:                                              ; preds = %116, %20, %8, %4
  %125 = phi i16 [ %32, %20 ], [ 0, %4 ], [ 0, %8 ], [ %32, %116 ]
  %126 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46, i32 3
  %127 = call i32 @bcmp(ptr noundef dereferenceable(22) %126, ptr noundef nonnull dereferenceable(22) %5, i32 22)
  %128 = icmp ne i32 %127, 0
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(22) %126, ptr noundef nonnull align 2 dereferenceable(22) %5, i32 22, i1 false)
  %129 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 1
  %130 = load i32, ptr %129, align 4
  switch i32 %130, label %131 [
    i32 0, label %138
    i32 1, label %138
    i32 2, label %134
    i32 3, label %134
    i32 4, label %134
    i32 5, label %134
  ]

131:                                              ; preds = %124
  %132 = load i1, ptr @ieee80211_ht_cap_ie_to_sta_ht_cap.__already_done, align 1
  br i1 %132, label %138, label %133, !prof !9

133:                                              ; preds = %131
  store i1 true, ptr @ieee80211_ht_cap_ie_to_sta_ht_cap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef null) #7
  br label %138

134:                                              ; preds = %124, %124, %124, %124
  %135 = lshr i16 %125, 1
  %136 = and i16 %135, 1
  %137 = zext i16 %136 to i32
  br label %138

138:                                              ; preds = %134, %133, %131, %124, %124
  %139 = phi i32 [ %137, %134 ], [ 0, %131 ], [ 0, %133 ], [ 0, %124 ], [ 0, %124 ]
  %140 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46, i32 14
  store i32 %139, ptr %140, align 8
  %141 = lshr i16 %125, 1
  %142 = and i16 %141, 1
  %143 = zext i16 %142 to i32
  %144 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 39
  store i32 %143, ptr %144, align 4
  %145 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 6
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %146, i32 0, i32 58
  %148 = load i32, ptr %147, align 8
  %149 = add i32 %148, -3
  %150 = icmp ult i32 %149, 2
  br i1 %150, label %151, label %161

151:                                              ; preds = %138
  %152 = lshr i16 %125, 2
  %153 = and i16 %152, 3
  %154 = zext i16 %153 to i32
  %155 = getelementptr inbounds [4 x i32], ptr @switch.table.ieee80211_ht_cap_ie_to_sta_ht_cap, i32 0, i32 %154
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46, i32 15
  %158 = load i32, ptr %157, align 4
  %159 = icmp ne i32 %156, %158
  %160 = select i1 %159, i1 true, i1 %128
  store i32 %156, ptr %157, align 4
  br label %163

161:                                              ; preds = %138
  %162 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46, i32 15
  store i32 1, ptr %162, align 4
  br label %163

163:                                              ; preds = %161, %151
  %164 = phi i1 [ %160, %151 ], [ %128, %161 ]
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %5) #7
  ret i1 %164
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_tear_down_BA_sessions(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 38
  tail call void @mutex_lock(ptr noundef %3) #7
  %4 = add i32 %1, -4
  %5 = icmp ult i32 %4, -2
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %5) #7
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %5) #7
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext 2, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %5) #7
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %5) #7
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext 4, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %5) #7
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext 5, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %5) #7
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext 6, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %5) #7
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext 7, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %5) #7
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext 8, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %5) #7
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext 9, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %5) #7
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext 10, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %5) #7
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext 11, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %5) #7
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext 12, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %5) #7
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext 13, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %5) #7
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext 14, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %5) #7
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext 15, i16 noundef zeroext 0, i16 noundef zeroext 36, i1 noundef zeroext %5) #7
  %6 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext 0, i32 noundef %1) #7
  %7 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext 1, i32 noundef %1) #7
  %8 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext 2, i32 noundef %1) #7
  %9 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext 3, i32 noundef %1) #7
  %10 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext 4, i32 noundef %1) #7
  %11 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext 5, i32 noundef %1) #7
  %12 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext 6, i32 noundef %1) #7
  %13 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext 7, i32 noundef %1) #7
  %14 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext 8, i32 noundef %1) #7
  %15 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext 9, i32 noundef %1) #7
  %16 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext 10, i32 noundef %1) #7
  %17 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext 11, i32 noundef %1) #7
  %18 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext 12, i32 noundef %1) #7
  %19 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext 13, i32 noundef %1) #7
  %20 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext 14, i32 noundef %1) #7
  %21 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %0, i16 noundef zeroext 15, i32 noundef %1) #7
  tail call void @mutex_unlock(ptr noundef %3) #7
  %22 = icmp eq i32 %1, 3
  br i1 %22, label %23, label %40

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 38, i32 8
  %25 = tail call zeroext i1 @cancel_work_sync(ptr noundef %24) #7
  tail call void @mutex_lock(ptr noundef %3) #7
  br label %26

26:                                               ; preds = %36, %23
  %27 = phi i32 [ 0, %23 ], [ %37, %36 ]
  %28 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 38, i32 9, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %29, i32 0, i32 5
  %33 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %32) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @ieee80211_stop_tx_ba_cb(ptr noundef %0, i32 noundef %27, ptr noundef nonnull %29) #7
  br label %36

36:                                               ; preds = %35, %31, %26
  %37 = add nuw nsw i32 %27, 1
  %38 = icmp eq i32 %37, 16
  br i1 %38, label %39, label %26

39:                                               ; preds = %36
  tail call void @mutex_unlock(ptr noundef %3) #7
  br label %40

40:                                               ; preds = %39, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @___ieee80211_stop_rx_ba_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ieee80211_stop_tx_ba_session(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_ba_session_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -1496
  %3 = getelementptr i8, ptr %0, i32 -1340
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr i8, ptr %0, i32 -120
  tail call void @mutex_lock(ptr noundef %7) #7
  %8 = getelementptr i8, ptr %0, i32 -20
  %9 = getelementptr i8, ptr %0, i32 -16
  %10 = getelementptr i8, ptr %0, i32 -12
  %11 = getelementptr i8, ptr %0, i32 -1384
  %12 = getelementptr i8, ptr %0, i32 80
  %13 = getelementptr i8, ptr %0, i32 16
  br label %14

14:                                               ; preds = %70, %1
  %15 = phi i32 [ 0, %1 ], [ %71, %70 ]
  %16 = tail call i32 @_test_and_clear_bit(i32 noundef %15, ptr noundef %8) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = trunc i32 %15 to i16
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %2, i16 noundef zeroext %19, i16 noundef zeroext 0, i16 noundef zeroext 39, i1 noundef zeroext true) #7
  br label %20

20:                                               ; preds = %18, %14
  %21 = tail call i32 @_test_and_clear_bit(i32 noundef %15, ptr noundef %9) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = trunc i32 %15 to i16
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %2, i16 noundef zeroext %24, i16 noundef zeroext 0, i16 noundef zeroext 1, i1 noundef zeroext true) #7
  br label %25

25:                                               ; preds = %23, %20
  br i1 %6, label %26, label %31

26:                                               ; preds = %25
  %27 = tail call i32 @_test_and_clear_bit(i32 noundef %15, ptr noundef %10) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = trunc i32 %15 to i16
  tail call void @___ieee80211_start_rx_ba_session(ptr noundef %2, i8 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext %30, i16 noundef zeroext 64, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null) #7
  br label %31

31:                                               ; preds = %29, %26, %25
  %32 = add nuw nsw i32 %15, 16
  %33 = tail call i32 @_test_and_clear_bit(i32 noundef %32, ptr noundef %10) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = trunc i32 %15 to i16
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %2, i16 noundef zeroext %36, i16 noundef zeroext 0, i16 noundef zeroext 0, i1 noundef zeroext false) #7
  br label %37

37:                                               ; preds = %35, %31
  tail call void @_raw_spin_lock_bh(ptr noundef %11) #7
  %38 = getelementptr [16 x ptr], ptr %12, i32 0, i32 %15
  %39 = load ptr, ptr %38, align 4
  %40 = icmp ne ptr %39, null
  %41 = select i1 %6, i1 %40, i1 false
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  store ptr null, ptr %38, align 4
  %43 = getelementptr [16 x ptr], ptr %13, i32 0, i32 %15
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @kfree(ptr noundef nonnull %39) #7
  br label %48

47:                                               ; preds = %42
  tail call void @ieee80211_assign_tid_tx(ptr noundef %2, i32 noundef %15, ptr noundef nonnull %39) #7
  br label %48

48:                                               ; preds = %47, %46
  tail call void @_raw_spin_unlock_bh(ptr noundef %11) #7
  tail call void @ieee80211_tx_ba_session_handle_start(ptr noundef %2, i32 noundef %15) #7
  br label %70

49:                                               ; preds = %37
  tail call void @_raw_spin_unlock_bh(ptr noundef %11) #7
  %50 = getelementptr %struct.sta_info, ptr %2, i32 0, i32 38, i32 9, i32 %15
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %70, label %53

53:                                               ; preds = %49
  br i1 %6, label %54, label %59

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %51, i32 0, i32 5
  %56 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %55) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @ieee80211_start_tx_ba_cb(ptr noundef %2, i32 noundef %15, ptr noundef nonnull %51) #7
  br label %59

59:                                               ; preds = %58, %54, %53
  %60 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %51, i32 0, i32 5
  %61 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %60) #7
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = trunc i32 %15 to i16
  %65 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %2, i16 noundef zeroext %64, i32 noundef 1) #7
  br label %66

66:                                               ; preds = %63, %59
  %67 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %60) #7
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  tail call void @ieee80211_stop_tx_ba_cb(ptr noundef %2, i32 noundef %15, ptr noundef nonnull %51) #7
  br label %70

70:                                               ; preds = %69, %66, %49, %48
  %71 = add nuw nsw i32 %15, 1
  %72 = icmp eq i32 %71, 16
  br i1 %72, label %73, label %14

73:                                               ; preds = %70
  tail call void @mutex_unlock(ptr noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @___ieee80211_start_rx_ba_session(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_assign_tid_tx(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_ba_session_handle_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_start_tx_ba_cb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_send_delba(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 50
  %11 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %10, i32 noundef 2592) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %52, label %13

13:                                               ; preds = %5
  %14 = load i32, ptr %8, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %14
  store ptr %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 %14
  store ptr %20, ptr %18, align 8
  %21 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef 24) #7
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(24) %21, i8 0, i32 24, i1 false) #7
  %22 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %21, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %22, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false)
  %23 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %21, i32 0, i32 3
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %23, ptr noundef align 8 dereferenceable(6) %25, i32 6, i1 false)
  %26 = load i32, ptr %24, align 8
  switch i32 %26, label %36 [
    i32 3, label %27
    i32 4, label %27
    i32 7, label %27
    i32 2, label %29
    i32 1, label %32
  ]

27:                                               ; preds = %13, %13, %13
  %28 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %21, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %28, ptr noundef align 8 dereferenceable(6) %25, i32 6, i1 false)
  br label %36

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %21, i32 0, i32 4
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 23, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %30, ptr noundef align 4 dereferenceable(6) %31, i32 6, i1 false)
  br label %36

32:                                               ; preds = %13
  %33 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %21, i32 0, i32 4
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %35 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %34, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %33, ptr noundef align 2 dereferenceable(6) %35, i32 6, i1 false)
  br label %36

36:                                               ; preds = %32, %29, %27, %13
  store i16 208, ptr %21, align 2
  %37 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef 6) #7
  %38 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %21, i32 0, i32 6
  store i8 3, ptr %38, align 2
  %39 = getelementptr inbounds %struct.anon.165, ptr %38, i32 0, i32 1
  store i8 2, ptr %39, align 1
  %40 = shl i16 %3, 11
  %41 = shl i16 %2, 12
  %42 = or i16 %40, %41
  %43 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %21, i32 0, i32 6, i32 0, i32 1
  store i16 %42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.anon.173, ptr %39, i32 0, i32 2
  store i16 %4, ptr %44, align 1
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %45 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %46 = load volatile ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49, !prof !11

48:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2200, i32 noundef 9, ptr noundef null) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  tail call void @kfree_skb_reason(ptr noundef nonnull %11, i32 noundef 0) #7
  br label %52

49:                                               ; preds = %36
  %50 = load ptr, ptr %46, align 4
  %51 = load i32, ptr %50, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 7, i32 noundef %51) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  br label %52

52:                                               ; preds = %49, %48, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_process_delba(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 0, i32 1
  %6 = load i16, ptr %5, align 1
  %7 = lshr i16 %6, 12
  %8 = and i16 %6, 2048
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @__ieee80211_stop_rx_ba_session(ptr noundef %1, i16 noundef zeroext %7, i16 noundef zeroext 1, i16 noundef zeroext 0, i1 noundef zeroext true) #7
  br label %13

11:                                               ; preds = %4
  %12 = tail call i32 @__ieee80211_stop_tx_ba_session(ptr noundef %1, i16 noundef zeroext %7, i32 noundef 2) #7
  br label %13

13:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_stop_rx_ba_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ieee80211_stop_tx_ba_session(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee80211_smps_mode_to_smps_mode(i32 noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq i32 %0, 2
  %3 = zext i1 %2 to i32
  %4 = icmp eq i32 %0, 3
  %5 = select i1 %4, i32 2, i32 %3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_send_smps_action(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 27
  %10 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %9, i32 noundef 2592) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %4
  %13 = load i32, ptr %7, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %13
  store ptr %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 14
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %18, i32 %13
  store ptr %19, ptr %17, align 8
  %20 = tail call ptr @skb_put(ptr noundef nonnull %10, i32 noundef 27) #7
  %21 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %20, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %21, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false)
  %22 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %20, i32 0, i32 3
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 72
  %26 = load ptr, ptr %25, align 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %22, ptr noundef align 1 dereferenceable(6) %26, i32 6, i1 false)
  %27 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %20, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %27, ptr noundef align 1 dereferenceable(6) %3, i32 6, i1 false)
  store i16 208, ptr %20, align 2
  %28 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %20, i32 0, i32 6
  store i8 7, ptr %28, align 2
  %29 = getelementptr inbounds %struct.anon.165, ptr %28, i32 0, i32 1
  store i8 1, ptr %29, align 1
  switch i32 %1, label %36 [
    i32 0, label %30
    i32 4, label %30
    i32 1, label %33
    i32 2, label %31
    i32 3, label %32
  ]

30:                                               ; preds = %12, %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 519, i32 noundef 9, ptr noundef null) #7
  br label %33

31:                                               ; preds = %12
  br label %33

32:                                               ; preds = %12
  br label %33

33:                                               ; preds = %32, %31, %30, %12
  %34 = phi i8 [ 3, %32 ], [ 1, %31 ], [ 0, %12 ], [ 0, %30 ]
  %35 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %20, i32 0, i32 6, i32 0, i32 1
  store i8 %34, ptr %35, align 1
  br label %36

36:                                               ; preds = %33, %12
  %37 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3
  %38 = load i32, ptr %37, align 8
  %39 = or i32 %38, 1
  store i32 %39, ptr %37, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44, !prof !11

43:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2200, i32 noundef 9, ptr noundef null) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  tail call void @kfree_skb_reason(ptr noundef nonnull %10, i32 noundef 0) #7
  br label %47

44:                                               ; preds = %36
  %45 = load ptr, ptr %41, align 4
  %46 = load i32, ptr %45, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 7, i32 noundef %46) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  br label %47

47:                                               ; preds = %44, %43, %4
  %48 = phi i32 [ -12, %4 ], [ 0, %43 ], [ 0, %44 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_request_smps_mgd_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -1600
  %3 = getelementptr i8, ptr %0, i32 -1556
  tail call void @mutex_lock(ptr noundef %3) #7
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @__ieee80211_request_smps_mgd(ptr noundef %2, i32 noundef %5) #7
  tail call void @mutex_unlock(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ieee80211_request_smps_mgd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_request_smps(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr %0, align 8
  %4 = icmp ne i32 %3, 2
  %5 = load i1, ptr @ieee80211_request_smps.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %2
  store i1 true, ptr @ieee80211_request_smps.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 558, i32 noundef 9, ptr noundef null) #7
  br label %9

9:                                                ; preds = %8, %2
  br i1 %4, label %18, label %10

10:                                               ; preds = %9
  %11 = getelementptr i8, ptr %0, i32 -668
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  store i32 %1, ptr %11, align 4
  %15 = getelementptr i8, ptr %0, i32 -1908
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %0, i32 -664
  tail call void @ieee80211_queue_work(ptr noundef %16, ptr noundef %17) #7
  br label %18

18:                                               ; preds = %14, %10, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2149473487}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2149473704}
