; ModuleID = '/llk/IR/net/mac80211/ocb.c_pt.bc'
source_filename = "../net/mac80211/ocb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.ieee80211_if_ocb = type { %struct.timer_list, i32, %struct.spinlock, %struct.list_head, i8 }

@.str = private unnamed_addr constant [43 x i8] c"\016%s: No room for a new OCB STA entry %pM\0A\00", align 1
@ieee80211_ocb_rx_no_sta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"net/mac80211/ocb.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_ocb_rx_no_sta(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 48
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 127
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = tail call i32 @net_ratelimit() #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %53, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %14, ptr noundef %2) #6
  br label %53

16:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = load i1, ptr @ieee80211_ocb_rx_no_sta.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %16
  store i1 true, ptr @ieee80211_ocb_rx_no_sta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 63, i32 noundef 9, ptr noundef null) #5
  br label %24

24:                                               ; preds = %23, %16
  br i1 %19, label %25, label %26

25:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !10
  br label %53

26:                                               ; preds = %24
  %27 = load ptr, ptr %18, align 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %18, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !10
  %31 = tail call ptr @sta_info_alloc(ptr noundef %0, ptr noundef %2, i32 noundef 2592) #5
  %32 = icmp eq ptr %31, null
  br i1 %32, label %53, label %33

33:                                               ; preds = %26
  %34 = icmp eq i32 %30, 6
  %35 = icmp eq i32 %30, 7
  %36 = zext i1 %35 to i32
  %37 = select i1 %34, i32 2, i32 %36
  %38 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr %struct.wiphy, ptr %39, i32 0, i32 53, i32 %28
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @ieee80211_mandatory_rates(ptr noundef %41, i32 noundef %37) #5
  %43 = getelementptr inbounds %struct.sta_info, ptr %31, i32 0, i32 46
  %44 = getelementptr [6 x i32], ptr %43, i32 0, i32 %28
  store i32 %42, ptr %44, align 4
  %45 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %45) #5
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %31, ptr %48, align 4
  store ptr %47, ptr %31, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %46, ptr %49, align 4
  store volatile ptr %31, ptr %46, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %50 = load i16, ptr %45, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %6, ptr noundef %52) #5
  br label %53

53:                                               ; preds = %33, %26, %25, %13, %10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_mandatory_rates(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_ocb_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 3
  %4 = load i8, ptr %3, align 4, !range !15
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %6, label %42

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 7
  tail call void @mutex_lock(ptr noundef %7) #5
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #5
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 1
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %31, label %12

12:                                               ; preds = %28, %6
  %13 = phi ptr [ %29, %28 ], [ %10, %6 ]
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %8) #5
  %18 = getelementptr inbounds %struct.sta_info, ptr %13, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #5
  %20 = getelementptr inbounds %struct.sta_info, ptr %13, i32 0, i32 46, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, ptr noundef align 8 dereferenceable(6) %20, i32 6, i1 false) #5
  %21 = call i32 @sta_info_move_state(ptr noundef %13, i32 noundef 2) #5
  %22 = call i32 @sta_info_move_state(ptr noundef %13, i32 noundef 3) #5
  %23 = call i32 @sta_info_move_state(ptr noundef %13, i32 noundef 4) #5
  call void @rate_control_rate_init(ptr noundef %13) #5
  %24 = call i32 @sta_info_insert_rcu(ptr noundef %13) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %12
  %27 = call ptr @sta_info_get(ptr noundef %19, ptr noundef nonnull %2) #5
  br label %28

28:                                               ; preds = %26, %12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #5
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !10
  call void @_raw_spin_lock_bh(ptr noundef %8) #5
  %29 = load volatile ptr, ptr %9, align 4
  %30 = icmp eq ptr %29, %9
  br i1 %30, label %31, label %12

31:                                               ; preds = %28, %6
  call void @_raw_spin_unlock_bh(ptr noundef %8) #5
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  %33 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %32) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  call void @ieee80211_sta_expire(ptr noundef %0, i32 noundef 24000) #5
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = add i32 %37, 6000
  %39 = call i32 @round_jiffies(i32 noundef %38) #5
  %40 = call i32 @mod_timer(ptr noundef %36, i32 noundef %39) #5
  br label %41

41:                                               ; preds = %35, %31
  call void @mutex_unlock(ptr noundef %7) #5
  br label %42

42:                                               ; preds = %41, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_ocb_setup_sdata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  tail call void @init_timer_key(ptr noundef %2, ptr noundef nonnull @ieee80211_ocb_housekeeping_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 2
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 0, i32 1
  store i32 0, ptr %5, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ieee80211_ocb_housekeeping_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1052
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_if_ocb, ptr %0, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #5
  %5 = getelementptr i8, ptr %0, i32 -340
  tail call void @ieee80211_queue_work(ptr noundef %3, ptr noundef %5) #5
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_ocb_join(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 3
  %6 = load i8, ptr %5, align 4, !range !15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = or i32 %10, 4
  store i32 %11, ptr %9, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 44
  store i32 1, ptr %12, align 8
  %13 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 39
  %14 = load i8, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 43
  store i8 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ieee80211_local, ptr %4, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %16) #5
  %17 = tail call i32 @ieee80211_vif_use_channel(ptr noundef %0, ptr noundef %1, i32 noundef 0) #5
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.ieee80211_local, ptr %18, i32 0, i32 66
  tail call void @mutex_unlock(ptr noundef %19) #5
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %8
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 4194432) #5
  store i8 1, ptr %5, align 4
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %22) #5
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %4, ptr noundef %23) #5
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %25 = load ptr, ptr %24, align 8
  tail call void @netif_carrier_on(ptr noundef %25) #5
  br label %26

26:                                               ; preds = %21, %8, %2
  %27 = phi i32 [ 0, %21 ], [ -22, %2 ], [ %17, %8 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_vif_use_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_ocb_leave(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 3
  store i8 0, ptr %4, align 4
  %5 = tail call i32 @__sta_info_flush(ptr noundef %0, i1 noundef zeroext false) #5
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #5
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 1, i32 1
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %1
  %11 = phi ptr [ %16, %10 ], [ %8, %1 ]
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %6) #5
  tail call void @sta_info_free(ptr noundef %3, ptr noundef %11) #5
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #5
  %16 = load volatile ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, %7
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %1
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  tail call void @_raw_spin_unlock_bh(ptr noundef %6) #5
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  tail call void @netif_carrier_off(ptr noundef %21) #5
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %22) #5
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 4194304) #5
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.ieee80211_local, ptr %23, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %24) #5
  tail call void @ieee80211_vif_release_channel(ptr noundef %0) #5
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds %struct.ieee80211_local, ptr %25, i32 0, i32 66
  tail call void @mutex_unlock(ptr noundef %26) #5
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 41
  tail call void @skb_queue_purge(ptr noundef %27) #5
  %28 = tail call i32 @del_timer_sync(ptr noundef %19) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sta_info_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vif_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_move_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_rate_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_insert_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_expire(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sta_info_flush(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 2148945531}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148945748}
!11 = !{i64 2149171730}
!12 = !{i64 2149167554}
!13 = !{i64 2149167629, i64 2149167656, i64 2149167703, i64 2149167725, i64 2149167753, i64 2149167773}
!14 = !{i64 2149194733}
!15 = !{i8 0, i8 2}
