; ModuleID = '/llk/IR/net/mac80211/agg-rx.c_pt.bc'
source_filename = "../net/mac80211/agg-rx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_stop_rx_ba_session:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_stop_rx_ba_session\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_stop_rx_ba_session:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_manage_rx_ba_offl:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_manage_rx_ba_offl\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_manage_rx_ba_offl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_rx_ba_timer_expired:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_rx_ba_timer_expired\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_rx_ba_timer_expired:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.175, [17 x i16], %struct.anon.176, %struct.anon.177, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.sk_buff_head = type { %union.anon.119, i32, %struct.spinlock }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { ptr, ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.anon.175 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.176 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.177 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
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
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.141, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.141 = type { %struct.ieee80211_if_mesh }
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
%struct.tid_ampdu_rx = type { %struct.callback_head, %struct.spinlock, i64, ptr, ptr, ptr, %struct.timer_list, %struct.timer_list, i32, i16, i16, i16, i16, i16, i8, i8 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.118, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.118 = type { i32, i16 }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
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
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.142 }
%union.anon.142 = type { %struct.anon.148, [16 x i8] }
%struct.anon.148 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_if_ibss = type { %struct.timer_list, %struct.work_struct, i32, i32, i8, i8, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, ptr, %struct.cfg80211_chan_def, i32, ptr, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.spinlock, %struct.list_head, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.anon.155 = type { i8, %union.anon.156 }
%union.anon.156 = type <{ %struct.anon.161, [17 x i8] }>
%struct.anon.161 = type { i8, i8, i16, i16, i16, [0 x i8] }
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
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.115 }>
%struct.anon.115 = type { ptr, i32 }
%struct.ieee802_11_elems = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8 }

@.str = private unnamed_addr constant [63 x i8] c"\016%s: HW problem - can not stop rx aggregation for %pM tid %d\0A\00", align 1
@__kstrtab_ieee80211_stop_rx_ba_session = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_stop_rx_ba_session = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_stop_rx_ba_session = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_stop_rx_ba_session to i32), ptr @__kstrtab_ieee80211_stop_rx_ba_session, ptr @__kstrtabns_ieee80211_stop_rx_ba_session }, section "___ksymtab+ieee80211_stop_rx_ba_session", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_ieee80211_manage_rx_ba_offl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_manage_rx_ba_offl = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_manage_rx_ba_offl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_manage_rx_ba_offl to i32), ptr @__kstrtab_ieee80211_manage_rx_ba_offl, ptr @__kstrtabns_ieee80211_manage_rx_ba_offl }, section "___ksymtab+ieee80211_manage_rx_ba_offl", align 4
@__kstrtab_ieee80211_rx_ba_timer_expired = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_rx_ba_timer_expired = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_rx_ba_timer_expired = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_rx_ba_timer_expired to i32), ptr @__kstrtab_ieee80211_rx_ba_timer_expired, ptr @__kstrtabns_ieee80211_rx_ba_timer_expired }, section "___ksymtab+ieee80211_rx_ba_timer_expired", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"include/net/cfg80211.h\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"net/mac80211/ieee80211_i.h\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_ieee80211_manage_rx_ba_offl, ptr @__ksymtab_ieee80211_rx_ba_timer_expired, ptr @__ksymtab_ieee80211_stop_rx_ba_session], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ieee80211_ampdu_params, align 4
  %7 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #9
  %9 = getelementptr inbounds i8, ptr %6, i32 12
  store i64 0, ptr %9, align 4, !annotation !8
  store i32 1, ptr %6, align 4
  %10 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %6, i32 0, i32 1
  %11 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  store ptr %11, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %6, i32 0, i32 2
  store i16 %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %6, i32 0, i32 3
  %14 = zext i16 %1 to i32
  %15 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 38, i32 1, i32 %14
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(5) %13, i8 0, i64 5, i1 false)
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 38, i32 6
  %18 = lshr i32 %14, 5
  %19 = getelementptr i32, ptr %17, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %14, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %55, label %25

25:                                               ; preds = %5
  store volatile ptr null, ptr %15, align 4
  %26 = xor i32 %22, -1
  %27 = load i32, ptr %19, align 4
  %28 = and i32 %27, %26
  store i32 %28, ptr %19, align 4
  %29 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @drv_ampdu_action(ptr noundef %8, ptr noundef %30, ptr noundef nonnull %6) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = load ptr, ptr %29, align 4
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %34, i32 0, i32 10
  %36 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 1
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %35, ptr noundef %36, i32 noundef %14) #10
  br label %38

38:                                               ; preds = %33, %25
  %39 = icmp eq i16 %2, 0
  %40 = and i1 %39, %4
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load ptr, ptr %29, align 4
  %43 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 1
  call void @ieee80211_send_delba(ptr noundef %42, ptr noundef %43, i16 noundef zeroext %1, i16 noundef zeroext 0, i16 noundef zeroext %3) #9
  br label %44

44:                                               ; preds = %41, %38
  %45 = icmp eq ptr %16, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %16, i32 0, i32 6
  %48 = call i32 @del_timer_sync(ptr noundef %47) #9
  %49 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %16, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %49) #9
  %50 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %16, i32 0, i32 15
  %51 = load i8, ptr %50, align 1
  %52 = or i8 %51, 2
  store i8 %52, ptr %50, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %49) #9
  %53 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %16, i32 0, i32 7
  %54 = call i32 @del_timer_sync(ptr noundef %53) #9
  call void @call_rcu(ptr noundef nonnull %16, ptr noundef nonnull @ieee80211_free_tid_rx) #9
  br label %55

55:                                               ; preds = %46, %44, %5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_ampdu_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_delba(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_free_tid_rx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 12
  %3 = load i16, ptr %2, align 2
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 3
  br label %7

7:                                                ; preds = %32, %5
  %8 = phi i16 [ %3, %5 ], [ %33, %32 ]
  %9 = phi i32 [ 0, %5 ], [ %34, %32 ]
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr %struct.sk_buff_head, ptr %10, i32 %9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  %14 = icmp eq ptr %12, null
  %15 = or i1 %13, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %7
  %17 = getelementptr %struct.sk_buff_head, ptr %10, i32 %9, i32 1
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi ptr [ %12, %16 ], [ %26, %18 ]
  %20 = load i32, ptr %17, align 4
  %21 = add i32 %20, -1
  store volatile i32 %21, ptr %17, align 4
  %22 = load ptr, ptr %19, align 8
  %23 = getelementptr inbounds %struct.anon.46, ptr %19, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  store ptr null, ptr %23, align 4
  store ptr null, ptr %19, align 8
  %25 = getelementptr inbounds %struct.anon.46, ptr %22, i32 0, i32 1
  store volatile ptr %24, ptr %25, align 4
  store volatile ptr %22, ptr %24, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %19, i32 noundef 0) #9
  %26 = load ptr, ptr %11, align 4
  %27 = icmp eq ptr %26, %11
  %28 = icmp eq ptr %26, null
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %18

30:                                               ; preds = %18
  %31 = load i16, ptr %2, align 2
  br label %32

32:                                               ; preds = %30, %7
  %33 = phi i16 [ %31, %30 ], [ %8, %7 ]
  %34 = add nuw nsw i32 %9, 1
  %35 = zext i16 %33 to i32
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %7, label %37

37:                                               ; preds = %32, %1
  %38 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  tail call void @kfree(ptr noundef %39) #9
  %40 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %0, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  tail call void @kfree(ptr noundef %41) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 38
  tail call void @mutex_lock(ptr noundef %6) #9
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4)
  tail call void @mutex_unlock(ptr noundef %6) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -2264
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %5 = tail call ptr @sta_info_get_bss(ptr noundef %4, ptr noundef %2) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = zext i16 %1 to i32
  %9 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 38, i32 4
  %10 = and i32 %8, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %13

12:                                               ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  br label %78

13:                                               ; preds = %7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %9) #9
  br label %14

14:                                               ; preds = %13, %7
  %15 = and i32 %8, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @_set_bit(i32 noundef 1, ptr noundef %9) #9
  br label %18

18:                                               ; preds = %17, %14
  %19 = and i32 %8, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %9) #9
  br label %22

22:                                               ; preds = %21, %18
  %23 = and i32 %8, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @_set_bit(i32 noundef 3, ptr noundef %9) #9
  br label %26

26:                                               ; preds = %25, %22
  %27 = and i32 %8, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @_set_bit(i32 noundef 4, ptr noundef %9) #9
  br label %30

30:                                               ; preds = %29, %26
  %31 = and i32 %8, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @_set_bit(i32 noundef 5, ptr noundef %9) #9
  br label %34

34:                                               ; preds = %33, %30
  %35 = and i32 %8, 64
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @_set_bit(i32 noundef 6, ptr noundef %9) #9
  br label %38

38:                                               ; preds = %37, %34
  %39 = and i32 %8, 128
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @_set_bit(i32 noundef 7, ptr noundef %9) #9
  br label %42

42:                                               ; preds = %41, %38
  %43 = and i32 %8, 256
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @_set_bit(i32 noundef 8, ptr noundef %9) #9
  br label %46

46:                                               ; preds = %45, %42
  %47 = and i32 %8, 512
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_set_bit(i32 noundef 9, ptr noundef %9) #9
  br label %50

50:                                               ; preds = %49, %46
  %51 = and i32 %8, 1024
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @_set_bit(i32 noundef 10, ptr noundef %9) #9
  br label %54

54:                                               ; preds = %53, %50
  %55 = and i32 %8, 2048
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void @_set_bit(i32 noundef 11, ptr noundef %9) #9
  br label %58

58:                                               ; preds = %57, %54
  %59 = and i32 %8, 4096
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void @_set_bit(i32 noundef 12, ptr noundef %9) #9
  br label %62

62:                                               ; preds = %61, %58
  %63 = and i32 %8, 8192
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  tail call void @_set_bit(i32 noundef 13, ptr noundef %9) #9
  br label %66

66:                                               ; preds = %65, %62
  %67 = and i32 %8, 16384
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  tail call void @_set_bit(i32 noundef 14, ptr noundef %9) #9
  br label %70

70:                                               ; preds = %69, %66
  %71 = and i32 %8, 32768
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  tail call void @_set_bit(i32 noundef 15, ptr noundef %9) #9
  br label %74

74:                                               ; preds = %73, %70
  %75 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 5
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.sta_info, ptr %5, i32 0, i32 38, i32 8
  tail call void @ieee80211_queue_work(ptr noundef %76, ptr noundef %77) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  br label %78

78:                                               ; preds = %74, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get_bss(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @___ieee80211_start_rx_ba_session(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, i16 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8, ptr noundef readonly %9) local_unnamed_addr #0 {
  %11 = alloca %struct.ieee80211_ampdu_params, align 4
  %12 = zext i1 %8 to i8
  %13 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %11) #9
  %17 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %11, i32 0, i32 1
  %18 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  store ptr %18, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %11, i32 0, i32 2
  store i16 %5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %11, i32 0, i32 3
  store i16 %3, ptr %20, align 2
  %21 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %11, i32 0, i32 4
  %22 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %11, i32 0, i32 5
  store i8 0, ptr %22, align 2
  %23 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %11, i32 0, i32 6
  store i16 %2, ptr %23, align 4
  %24 = zext i16 %5 to i32
  %25 = icmp ugt i16 %5, 7
  br i1 %25, label %169, label %26

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 3
  %28 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 3, i32 1
  %29 = load i8, ptr %28, align 2, !range !11
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 58, i32 1, i32 32
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %169

36:                                               ; preds = %31, %26
  %37 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 256
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %169

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 6
  %43 = load i8, ptr %42, align 8, !range !11
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %44, i16 64, i16 256
  %46 = icmp eq i16 %4, 1
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i16, ptr %27, align 8
  %49 = and i16 %48, 1024
  %50 = icmp eq i16 %49, 0
  %51 = icmp ult i16 %45, %6
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %169, label %55

53:                                               ; preds = %41
  %54 = icmp ult i16 %45, %6
  br i1 %54, label %169, label %55

55:                                               ; preds = %53, %47
  %56 = icmp eq i16 %6, 0
  %57 = select i1 %56, i16 %45, i16 %6
  %58 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 9
  %59 = load i16, ptr %58, align 2
  %60 = tail call i16 @llvm.umin.i16(i16 %57, i16 %59)
  store i16 %60, ptr %21, align 4
  %61 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 38, i32 6
  %62 = lshr i32 %24, 5
  %63 = getelementptr i32, ptr %61, i32 %62
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %24, 31
  %66 = shl nuw i32 1, %65
  %67 = and i32 %64, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %55
  %70 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 38, i32 2, i32 %24
  %71 = load i8, ptr %70, align 1
  %72 = icmp eq i8 %71, %1
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %74 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 38, i32 1, i32 %24
  %75 = load volatile ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %159, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %75, i32 0, i32 13
  %79 = load i16, ptr %78, align 8
  %80 = icmp eq i16 %79, %2
  br i1 %80, label %81, label %159

81:                                               ; preds = %77
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  br label %160

82:                                               ; preds = %69
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext %5, i16 noundef zeroext 0, i16 noundef zeroext 32, i1 noundef zeroext false)
  br label %83

83:                                               ; preds = %82, %55
  %84 = getelementptr %struct.ieee80211_hw, ptr %16, i32 0, i32 4, i32 1
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %85, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr %13, align 4
  %90 = call i32 @drv_ampdu_action(ptr noundef %16, ptr noundef %89, ptr noundef nonnull %11) #9
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %160, label %169

92:                                               ; preds = %83
  %93 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %94 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %93, i32 noundef 3520, i32 noundef 96) #11
  %95 = icmp eq ptr %94, null
  br i1 %95, label %169, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %94, i32 0, i32 1
  store i32 0, ptr %97, align 8
  %98 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %94, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %98, ptr noundef nonnull @sta_rx_agg_session_timer_expired, i32 noundef 524288, ptr noundef null, ptr noundef null) #9
  %99 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %94, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %99, ptr noundef nonnull @sta_rx_agg_reorder_timer_expired, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %100 = zext i16 %60 to i32
  %101 = shl nuw nsw i32 %100, 4
  %102 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %101, i32 noundef 3520) #12
  %103 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %94, i32 0, i32 3
  store ptr %102, ptr %103, align 8
  %104 = shl nuw nsw i32 %100, 2
  %105 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %104, i32 noundef 3520) #12
  %106 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %94, i32 0, i32 4
  store ptr %105, ptr %106, align 4
  %107 = load ptr, ptr %103, align 8
  %108 = icmp eq ptr %107, null
  %109 = icmp eq ptr %105, null
  %110 = select i1 %108, i1 true, i1 %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %96
  %112 = icmp eq i16 %60, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %111
  store ptr %107, ptr %107, align 4
  %114 = getelementptr inbounds %struct.anon.120, ptr %107, i32 0, i32 1
  store ptr %107, ptr %114, align 4
  %115 = getelementptr %struct.sk_buff_head, ptr %107, i32 0, i32 1
  store i32 0, ptr %115, align 4
  %116 = icmp eq i16 %60, 1
  br i1 %116, label %127, label %119

117:                                              ; preds = %96
  tail call void @kfree(ptr noundef %107) #9
  %118 = load ptr, ptr %106, align 4
  tail call void @kfree(ptr noundef %118) #9
  tail call void @kfree(ptr noundef nonnull %94) #9
  br label %169

119:                                              ; preds = %119, %113
  %120 = phi i32 [ %125, %119 ], [ 1, %113 ]
  %121 = load ptr, ptr %103, align 8
  %122 = getelementptr %struct.sk_buff_head, ptr %121, i32 %120
  store ptr %122, ptr %122, align 4
  %123 = getelementptr inbounds %struct.anon.120, ptr %122, i32 0, i32 1
  store ptr %122, ptr %123, align 4
  %124 = getelementptr %struct.sk_buff_head, ptr %121, i32 %120, i32 1
  store i32 0, ptr %124, align 4
  %125 = add nuw nsw i32 %120, 1
  %126 = icmp eq i32 %125, %100
  br i1 %126, label %127, label %119

127:                                              ; preds = %119, %113, %111
  %128 = load ptr, ptr %13, align 4
  %129 = call i32 @drv_ampdu_action(ptr noundef %16, ptr noundef %128, ptr noundef nonnull %11) #9
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr %103, align 8
  call void @kfree(ptr noundef %132) #9
  %133 = load ptr, ptr %106, align 4
  call void @kfree(ptr noundef %133) #9
  call void @kfree(ptr noundef nonnull %94) #9
  br label %169

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %94, i32 0, i32 11
  store i16 %3, ptr %135, align 4
  %136 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %94, i32 0, i32 9
  store i16 %3, ptr %136, align 8
  %137 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %94, i32 0, i32 12
  store i16 %60, ptr %137, align 2
  %138 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %94, i32 0, i32 13
  store i16 %2, ptr %138, align 8
  %139 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %94, i32 0, i32 10
  store i16 0, ptr %139, align 2
  %140 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %94, i32 0, i32 15
  %141 = load i8, ptr %140, align 1
  %142 = and i8 %141, -6
  %143 = or i8 %142, %12
  store i8 %143, ptr %140, align 1
  %144 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %94, i32 0, i32 2
  store i64 0, ptr %144, align 8
  %145 = trunc i16 %5 to i8
  %146 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %94, i32 0, i32 14
  store i8 %145, ptr %146, align 2
  %147 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %94, i32 0, i32 5
  store ptr %0, ptr %147, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %148 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 38, i32 1, i32 %24
  store volatile ptr %94, ptr %148, align 4
  %149 = icmp eq i16 %2, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %134
  %151 = load volatile i32, ptr @jiffies, align 64
  %152 = zext i16 %2 to i32
  %153 = shl nuw nsw i32 %152, 10
  %154 = call i32 @__usecs_to_jiffies(i32 noundef %153) #9
  %155 = add i32 %154, %151
  %156 = call i32 @mod_timer(ptr noundef %98, i32 noundef %155) #9
  %157 = load volatile i32, ptr @jiffies, align 64
  %158 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %94, i32 0, i32 8
  store i32 %157, ptr %158, align 4
  br label %160

159:                                              ; preds = %77, %73
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  br label %169

160:                                              ; preds = %150, %134, %88, %81
  %161 = load i32, ptr %63, align 4
  %162 = or i32 %161, %66
  store i32 %162, ptr %63, align 4
  %163 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 38, i32 7
  %164 = getelementptr i32, ptr %163, i32 %62
  %165 = xor i32 %66, -1
  %166 = load i32, ptr %164, align 4
  %167 = and i32 %166, %165
  store i32 %167, ptr %164, align 4
  %168 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 38, i32 2, i32 %24
  store i8 %1, ptr %168, align 1
  br label %169

169:                                              ; preds = %160, %159, %131, %117, %92, %88, %53, %47, %36, %31, %10
  %170 = phi i16 [ %60, %160 ], [ %60, %159 ], [ %60, %88 ], [ %6, %47 ], [ %6, %53 ], [ %6, %31 ], [ %60, %92 ], [ %60, %117 ], [ %60, %131 ], [ %6, %36 ], [ %6, %10 ]
  %171 = phi i16 [ 0, %160 ], [ 37, %159 ], [ 37, %88 ], [ 38, %47 ], [ 38, %53 ], [ 37, %31 ], [ 37, %92 ], [ 37, %117 ], [ 37, %131 ], [ 37, %36 ], [ 37, %10 ]
  br i1 %7, label %172, label %306

172:                                              ; preds = %169
  %173 = load ptr, ptr %13, align 4
  %174 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %173, i32 0, i32 7
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.ieee80211_hw, ptr %175, i32 0, i32 4
  %177 = load volatile i32, ptr %176, align 4
  %178 = getelementptr inbounds %struct.ieee80211_hw, ptr %175, i32 0, i32 5
  %179 = load i32, ptr %178, align 4
  %180 = add i32 %179, 53
  %181 = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %180, i32 noundef 2592) #9
  %182 = icmp eq ptr %181, null
  br i1 %182, label %306, label %183

183:                                              ; preds = %172
  %184 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 1
  %185 = load i32, ptr %178, align 4
  %186 = getelementptr inbounds %struct.sk_buff, ptr %181, i32 0, i32 17
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr i8, ptr %187, i32 %185
  store ptr %188, ptr %186, align 4
  %189 = getelementptr inbounds %struct.sk_buff, ptr %181, i32 0, i32 14
  %190 = load ptr, ptr %189, align 8
  %191 = getelementptr i8, ptr %190, i32 %185
  store ptr %191, ptr %189, align 8
  %192 = call ptr @skb_put(ptr noundef nonnull %181, i32 noundef 24) #9
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(24) %192, i8 0, i32 24, i1 false) #9
  %193 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %192, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %193, ptr noundef align 1 dereferenceable(6) %184, i32 6, i1 false) #9
  %194 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %192, i32 0, i32 3
  %195 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %173, i32 0, i32 58
  %196 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %173, i32 0, i32 58, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %194, ptr noundef align 8 dereferenceable(6) %196, i32 6, i1 false) #9
  %197 = load i32, ptr %195, align 8
  switch i32 %197, label %207 [
    i32 3, label %198
    i32 4, label %198
    i32 7, label %198
    i32 2, label %200
    i32 1, label %203
  ]

198:                                              ; preds = %183, %183, %183
  %199 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %192, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %199, ptr noundef align 8 dereferenceable(6) %196, i32 6, i1 false) #9
  br label %207

200:                                              ; preds = %183
  %201 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %192, i32 0, i32 4
  %202 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %173, i32 0, i32 57, i32 0, i32 23, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %201, ptr noundef align 4 dereferenceable(6) %202, i32 6, i1 false) #9
  br label %207

203:                                              ; preds = %183
  %204 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %192, i32 0, i32 4
  %205 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %173, i32 0, i32 57
  %206 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %205, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %204, ptr noundef align 2 dereferenceable(6) %206, i32 6, i1 false) #9
  br label %207

207:                                              ; preds = %203, %200, %198, %183
  store i16 208, ptr %192, align 2
  %208 = call ptr @skb_put(ptr noundef nonnull %181, i32 noundef 9) #9
  %209 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %192, i32 0, i32 6
  store i8 3, ptr %209, align 2
  %210 = getelementptr inbounds %struct.anon.155, ptr %209, i32 0, i32 1
  store i8 1, ptr %210, align 1
  %211 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %192, i32 0, i32 6, i32 0, i32 1
  store i8 %1, ptr %211, align 1
  %212 = shl i16 %5, 2
  %213 = and i16 %212, 60
  %214 = lshr i32 %177, 30
  %215 = trunc i32 %214 to i16
  %216 = or i16 %213, %215
  %217 = shl i16 %170, 6
  %218 = or i16 %216, %217
  %219 = or i16 %218, 2
  %220 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %192, i32 0, i32 6, i32 0, i32 2, i32 1
  store i16 %219, ptr %220, align 1
  %221 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %192, i32 0, i32 6, i32 0, i32 2, i32 3
  store i16 %2, ptr %221, align 1
  %222 = getelementptr inbounds %struct.anon.155, ptr %209, i32 0, i32 1, i32 0, i32 2
  store i16 %171, ptr %222, align 1
  %223 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 6
  %224 = load i8, ptr %223, align 8, !range !11
  %225 = icmp ne i8 %224, 0
  %226 = icmp ne ptr %9, null
  %227 = and i1 %226, %225
  br i1 %227, label %228, label %298

228:                                              ; preds = %207
  %229 = load ptr, ptr %174, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %230 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %173, i32 0, i32 58, i32 9
  %231 = load volatile ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  br label %298

234:                                              ; preds = %228
  %235 = load ptr, ptr %231, align 4
  %236 = load i32, ptr %235, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %237 = getelementptr inbounds %struct.ieee80211_hw, ptr %229, i32 0, i32 1
  %238 = load ptr, ptr %237, align 8
  %239 = getelementptr %struct.wiphy, ptr %238, i32 0, i32 53, i32 %236
  %240 = load ptr, ptr %239, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %298, label %242

242:                                              ; preds = %234
  %243 = load i32, ptr %195, align 8
  %244 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %173, i32 0, i32 58, i32 3
  %245 = load i8, ptr %244, align 2, !range !11
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %242
  switch i32 %243, label %249 [
    i32 2, label %253
    i32 3, label %248
  ]

248:                                              ; preds = %247
  br label %253

249:                                              ; preds = %247, %242
  %250 = trunc i32 %243 to i8
  %251 = and i32 %243, 255
  %252 = icmp ugt i8 %250, 11
  br i1 %252, label %263, label %253, !prof !13

253:                                              ; preds = %249, %248, %247
  %254 = phi i32 [ %251, %249 ], [ 8, %247 ], [ 9, %248 ]
  %255 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %240, i32 0, i32 9
  %256 = load i16, ptr %255, align 4
  %257 = zext i16 %256 to i32
  %258 = icmp eq i16 %256, 0
  br i1 %258, label %298, label %259

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %240, i32 0, i32 10
  %261 = load ptr, ptr %260, align 4
  %262 = shl nuw i32 1, %254
  br label %267

263:                                              ; preds = %249
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 510, i32 noundef 9, ptr noundef null) #9
  br label %298

264:                                              ; preds = %267
  %265 = add nuw nsw i32 %268, 1
  %266 = icmp eq i32 %265, %257
  br i1 %266, label %298, label %267

267:                                              ; preds = %264, %259
  %268 = phi i32 [ 0, %259 ], [ %265, %264 ]
  %269 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %261, i32 %268
  %270 = load i16, ptr %269, align 4
  %271 = zext i16 %270 to i32
  %272 = and i32 %262, %271
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %264, label %274

274:                                              ; preds = %267
  %275 = icmp eq ptr %269, null
  br i1 %275, label %298, label %276

276:                                              ; preds = %274
  %277 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %261, i32 %268, i32 1
  %278 = load i8, ptr %277, align 2, !range !11
  %279 = icmp eq i8 %278, 0
  %280 = icmp eq ptr %277, null
  %281 = or i1 %280, %279
  br i1 %281, label %298, label %282

282:                                              ; preds = %276
  %283 = call ptr @skb_put(ptr noundef nonnull %181, i32 noundef 3) #9
  %284 = getelementptr inbounds i8, ptr %283, i32 2
  store i8 0, ptr %284, align 1
  %285 = getelementptr i8, ptr %283, i32 1
  store i8 -97, ptr %283, align 1
  store i8 1, ptr %285, align 1
  %286 = load i8, ptr %9, align 1
  %287 = and i8 %286, 1
  store i8 %287, ptr %284, align 1
  %288 = load i8, ptr %9, align 1
  %289 = lshr i8 %288, 1
  %290 = and i8 %289, 3
  %291 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %261, i32 %268, i32 1, i32 1
  %292 = load i8, ptr %291, align 1
  %293 = lshr i8 %292, 3
  %294 = and i8 %293, 3
  %295 = call i8 @llvm.umin.i8(i8 %290, i8 %294) #9
  %296 = shl nuw nsw i8 %295, 1
  %297 = or i8 %296, %287
  store i8 %297, ptr %284, align 1
  br label %298

298:                                              ; preds = %282, %276, %274, %264, %263, %253, %234, %233, %207
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %299 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %173, i32 0, i32 58, i32 9
  %300 = load volatile ptr, ptr %299, align 4
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %303, !prof !13

302:                                              ; preds = %298
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2200, i32 noundef 9, ptr noundef null) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  call void @kfree_skb_reason(ptr noundef nonnull %181, i32 noundef 0) #9
  br label %306

303:                                              ; preds = %298
  %304 = load ptr, ptr %300, align 4
  %305 = load i32, ptr %304, align 4
  call void @__ieee80211_tx_skb_tid_band(ptr noundef %173, ptr noundef nonnull %181, i32 noundef 7, i32 noundef %305) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  br label %306

306:                                              ; preds = %303, %302, %172, %169
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %11) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sta_rx_agg_session_timer_expired(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 54
  %5 = load i8, ptr %4, align 2
  %6 = getelementptr i8, ptr %0, i32 40
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 52
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i32
  %11 = shl nuw nsw i32 %10, 10
  %12 = tail call i32 @__usecs_to_jiffies(i32 noundef %11) #9
  %13 = add i32 %12, %7
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = sub i32 %14, %13
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %13) #9
  br label %25

19:                                               ; preds = %1
  %20 = zext i8 %5 to i32
  %21 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 38, i32 3
  tail call void @_set_bit(i32 noundef %20, ptr noundef %21) #9
  %22 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 38, i32 8
  tail call void @ieee80211_queue_work(ptr noundef %23, ptr noundef %24) #9
  br label %25

25:                                               ; preds = %19, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sta_rx_agg_reorder_timer_expired(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 34
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  tail call void @ieee80211_release_reorder_timeout(ptr noundef %3, i32 noundef %6) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_process_addba_request(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6
  %6 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 0, i32 2, i32 1
  %9 = load i16, ptr %8, align 1
  %10 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 0, i32 2, i32 3
  %11 = load i16, ptr %10, align 1
  %12 = lshr i16 %11, 4
  %13 = getelementptr inbounds %struct.anon.155, ptr %5, i32 0, i32 1, i32 0, i32 2
  %14 = load i16, ptr %13, align 1
  %15 = lshr i16 %14, 1
  %16 = and i16 %15, 1
  %17 = lshr i16 %14, 2
  %18 = and i16 %17, 15
  %19 = lshr i16 %14, 6
  %20 = add i32 %3, -33
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 6, i32 0, i32 2, i32 5
  %24 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %2, i32 0, i32 4
  %25 = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %23, i32 noundef %20, i1 noundef zeroext true, i64 noundef 0, i32 noundef 0, ptr noundef %24, ptr noundef null) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ieee802_11_elems, ptr %25, i32 0, i32 76
  %29 = load i8, ptr %28, align 2, !range !11
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ieee802_11_elems, ptr %25, i32 0, i32 52
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %4
  %35 = phi ptr [ %25, %31 ], [ null, %4 ]
  %36 = phi ptr [ %33, %31 ], [ null, %4 ]
  %37 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 38
  tail call void @mutex_lock(ptr noundef %37) #9
  tail call void @___ieee80211_start_rx_ba_session(ptr noundef %1, i8 noundef zeroext %7, i16 noundef zeroext %9, i16 noundef zeroext %12, i16 noundef zeroext %16, i16 noundef zeroext %18, i16 noundef zeroext %19, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %36) #9
  tail call void @mutex_unlock(ptr noundef %37) #9
  br label %38

38:                                               ; preds = %34, %27, %22
  %39 = phi ptr [ %25, %27 ], [ %35, %34 ], [ null, %22 ]
  tail call void @kfree(ptr noundef %39) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_manage_rx_ba_offl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -2264
  %5 = getelementptr i8, ptr %0, i32 -1908
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %7 = tail call ptr @sta_info_get_bss(ptr noundef %4, ptr noundef %1) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sta_info, ptr %7, i32 0, i32 38, i32 5
  tail call void @_set_bit(i32 noundef %2, ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.sta_info, ptr %7, i32 0, i32 38, i32 8
  tail call void @ieee80211_queue_work(ptr noundef %6, ptr noundef %11) #9
  br label %12

12:                                               ; preds = %9, %3
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_rx_ba_timer_expired(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -2264
  %5 = getelementptr i8, ptr %0, i32 -1908
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %7 = tail call ptr @sta_info_get_bss(ptr noundef %4, ptr noundef %1) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sta_info, ptr %7, i32 0, i32 38, i32 3
  tail call void @_set_bit(i32 noundef %2, ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.sta_info, ptr %7, i32 0, i32 38, i32 8
  tail call void @ieee80211_queue_work(ptr noundef %6, ptr noundef %11) #9
  br label %12

12:                                               ; preds = %9, %3
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_release_reorder_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802_11_parse_elems_crc(ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

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
!9 = !{i64 2149473434}
!10 = !{i64 2149473651}
!11 = !{i8 0, i8 2}
!12 = !{i64 2159508071}
!13 = !{!"branch_weights", i32 1, i32 2000}
