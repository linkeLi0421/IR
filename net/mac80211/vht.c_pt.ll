; ModuleID = '/llk/IR/net/mac80211/vht.c_pt.bc'
source_filename = "../net/mac80211/vht.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_update_mu_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_update_mu_groups\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_update_mu_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
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
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.118, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.118 = type { i32, i16 }
%struct.sta_opmode_info = type { i32, i32, i32, i8 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.152 }
%union.anon.152 = type { %struct.anon.158, [16 x i8] }
%struct.anon.158 = type { i16, i16, [6 x i8], [0 x i8] }
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

@.str = private unnamed_addr constant [58 x i8] c"\016%s: Ignoring VHT IE from %pM due to invalid rx_mcs_map\0A\00", align 1
@ieee80211_chan_width_to_rx_bw.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"net/mac80211/vht.c\00", align 1
@ieee80211_update_mu_groups.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ieee80211_update_mu_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_update_mu_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_update_mu_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_update_mu_groups to i32), ptr @__kstrtab_ieee80211_update_mu_groups, ptr @__kstrtabns_ieee80211_update_mu_groups }, section "___ksymtab_gpl+ieee80211_update_mu_groups", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ieee80211_update_mu_groups], section "llvm.metadata"
@switch.table.ieee80211_chan_width_to_rx_bw = private unnamed_addr constant [6 x i32] [i32 0, i32 0, i32 1, i32 2, i32 3, i32 3], align 4
@switch.table.ieee80211_get_vht_mask_from_cap.9 = private unnamed_addr constant [3 x i16] [i16 255, i16 511, i16 1023], align 2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_apply_vhtcap_overrides(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %1, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %218, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %218

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 38
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, -17
  store i32 %22, ptr %20, align 4
  %23 = load i32, ptr %10, align 4
  br label %24

24:                                               ; preds = %19, %14, %9
  %25 = phi i32 [ %11, %9 ], [ %11, %14 ], [ %23, %19 ]
  %26 = and i32 %25, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 38
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, -33
  store i32 %36, ptr %34, align 4
  %37 = load i32, ptr %10, align 4
  br label %38

38:                                               ; preds = %33, %28, %24
  %39 = phi i32 [ %25, %24 ], [ %25, %28 ], [ %37, %33 ]
  %40 = and i32 %39, 64
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 38
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 64
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %1, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, -65
  store i32 %50, ptr %48, align 4
  %51 = load i32, ptr %10, align 4
  br label %52

52:                                               ; preds = %47, %42, %38
  %53 = phi i32 [ %39, %38 ], [ %39, %42 ], [ %51, %47 ]
  %54 = and i32 %53, 128
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 38
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 128
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %1, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, -129
  store i32 %64, ptr %62, align 4
  %65 = load i32, ptr %10, align 4
  br label %66

66:                                               ; preds = %61, %56, %52
  %67 = phi i32 [ %53, %52 ], [ %53, %56 ], [ %65, %61 ]
  %68 = and i32 %67, 2048
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 38
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 2048
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %1, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, -2049
  store i32 %78, ptr %76, align 4
  %79 = load i32, ptr %10, align 4
  br label %80

80:                                               ; preds = %75, %70, %66
  %81 = phi i32 [ %67, %66 ], [ %67, %70 ], [ %79, %75 ]
  %82 = and i32 %81, 4096
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 38
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 4096
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %1, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, -4097
  store i32 %92, ptr %90, align 4
  %93 = load i32, ptr %10, align 4
  br label %94

94:                                               ; preds = %89, %84, %80
  %95 = phi i32 [ %81, %80 ], [ %81, %84 ], [ %93, %89 ]
  %96 = and i32 %95, 268435456
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 38
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 268435456
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %1, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, -268435457
  store i32 %106, ptr %104, align 4
  %107 = load i32, ptr %10, align 4
  br label %108

108:                                              ; preds = %103, %98, %94
  %109 = phi i32 [ %95, %94 ], [ %95, %98 ], [ %107, %103 ]
  %110 = and i32 %109, 536870912
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 38
  %114 = load i32, ptr %113, align 8
  %115 = and i32 %114, 536870912
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %1, i32 0, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, -536870913
  store i32 %120, ptr %118, align 4
  %121 = load i32, ptr %10, align 4
  br label %122

122:                                              ; preds = %117, %112, %108
  %123 = phi i32 [ %109, %108 ], [ %109, %112 ], [ %121, %117 ]
  %124 = and i32 %123, 58720256
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %140, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 38
  %128 = load i32, ptr %127, align 8
  %129 = lshr i32 %128, 23
  %130 = and i32 %129, 7
  %131 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %1, i32 0, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = lshr i32 %132, 23
  %134 = and i32 %133, 7
  %135 = icmp ult i32 %130, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %126
  %137 = and i32 %132, -58720257
  %138 = shl nuw nsw i32 %130, 23
  %139 = or i32 %138, %137
  store i32 %139, ptr %131, align 4
  br label %140

140:                                              ; preds = %136, %126, %122
  %141 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 8
  %142 = load i16, ptr %141, align 4
  %143 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 39
  %144 = load i16, ptr %143, align 4
  %145 = zext i16 %142 to i32
  %146 = and i16 %144, %142
  %147 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %1, i32 0, i32 2
  %148 = load i16, ptr %147, align 4
  %149 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 12
  %150 = load i16, ptr %149, align 4
  %151 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40
  %152 = load i16, ptr %151, align 4
  %153 = zext i16 %150 to i32
  %154 = and i16 %152, %150
  %155 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %1, i32 0, i32 2, i32 2
  %156 = load i16, ptr %155, align 4
  %157 = zext i16 %146 to i32
  %158 = zext i16 %154 to i32
  br label %159

159:                                              ; preds = %213, %140
  %160 = phi i32 [ 0, %140 ], [ %215, %213 ]
  %161 = phi i16 [ %156, %140 ], [ %214, %213 ]
  %162 = phi i16 [ %148, %140 ], [ %189, %213 ]
  %163 = shl nuw i32 %160, 1
  %164 = lshr i32 %157, %163
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 3
  %167 = shl i32 3, %163
  %168 = and i32 %167, %145
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %188, label %170

170:                                              ; preds = %159
  %171 = zext i16 %162 to i32
  %172 = lshr i32 %171, %163
  %173 = and i32 %172, 3
  %174 = icmp eq i32 %173, 3
  br i1 %174, label %180, label %175

175:                                              ; preds = %170
  %176 = zext i8 %166 to i32
  %177 = icmp ugt i32 %173, %176
  %178 = icmp eq i8 %166, 3
  %179 = or i1 %178, %177
  br i1 %179, label %182, label %188

180:                                              ; preds = %170
  %181 = icmp eq i8 %166, 3
  br i1 %181, label %182, label %188

182:                                              ; preds = %180, %175
  %183 = trunc i32 %167 to i16
  %184 = xor i16 %183, -1
  %185 = and i16 %162, %184
  %186 = and i16 %146, %183
  %187 = or i16 %186, %185
  br label %188

188:                                              ; preds = %182, %180, %175, %159
  %189 = phi i16 [ %187, %182 ], [ %162, %175 ], [ %162, %180 ], [ %162, %159 ]
  %190 = lshr i32 %158, %163
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 3
  %193 = and i32 %167, %153
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %213, label %195

195:                                              ; preds = %188
  %196 = zext i16 %161 to i32
  %197 = lshr i32 %196, %163
  %198 = and i32 %197, 3
  %199 = icmp eq i32 %198, 3
  br i1 %199, label %205, label %200

200:                                              ; preds = %195
  %201 = zext i8 %192 to i32
  %202 = icmp ugt i32 %198, %201
  %203 = icmp eq i8 %192, 3
  %204 = or i1 %203, %202
  br i1 %204, label %207, label %213

205:                                              ; preds = %195
  %206 = icmp eq i8 %192, 3
  br i1 %206, label %207, label %213

207:                                              ; preds = %205, %200
  %208 = trunc i32 %167 to i16
  %209 = xor i16 %208, -1
  %210 = and i16 %161, %209
  %211 = and i16 %154, %208
  %212 = or i16 %211, %210
  br label %213

213:                                              ; preds = %207, %205, %200, %188
  %214 = phi i16 [ %212, %207 ], [ %161, %200 ], [ %161, %205 ], [ %161, %188 ]
  %215 = add nuw nsw i32 %160, 1
  %216 = icmp eq i32 %215, 8
  br i1 %216, label %217, label %159

217:                                              ; preds = %213
  store i16 %189, ptr %147, align 4
  store i16 %214, ptr %155, align 4
  br label %218

218:                                              ; preds = %217, %5, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_vht_cap_ie_to_sta_vht_cap(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.ieee80211_sta_vht_cap, align 4
  %6 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false)
  %7 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46, i32 3, i32 1
  %8 = load i8, ptr %7, align 2, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = icmp eq ptr %2, null
  %11 = or i1 %10, %9
  br i1 %11, label %195, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 6
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %195, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %195, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %1, align 4
  br label %25

22:                                               ; preds = %25
  %23 = add nuw i32 %26, 1
  %24 = icmp eq i32 %23, %18
  br i1 %24, label %195, label %25

25:                                               ; preds = %22, %20
  %26 = phi i32 [ 0, %20 ], [ %23, %22 ]
  %27 = getelementptr %struct.ieee80211_channel, ptr %21, i32 %26, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 129
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %22

31:                                               ; preds = %25
  store i8 1, ptr %6, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef align 4 dereferenceable(16) %13, i32 16, i1 false)
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 23
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 2048
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  call void @ieee80211_apply_vhtcap_overrides(ptr noundef %0, ptr noundef nonnull %5)
  br label %41

41:                                               ; preds = %40, %35, %31
  %42 = load i32, ptr %2, align 1
  %43 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46, i32 5, i32 1
  %44 = and i32 %42, 1071644688
  %45 = and i32 %42, 3
  %46 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %5, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 3
  %49 = tail call i32 @llvm.umin.i32(i32 %45, i32 %48)
  %50 = or i32 %49, %44
  %51 = and i32 %47, 12
  switch i32 %51, label %58 [
    i32 4, label %52
    i32 8, label %55
  ]

52:                                               ; preds = %41
  %53 = and i32 %42, 4
  %54 = or i32 %50, %53
  br label %58

55:                                               ; preds = %41
  %56 = and i32 %42, 12
  %57 = or i32 %50, %56
  br label %58

58:                                               ; preds = %55, %52, %41
  %59 = phi i32 [ %50, %41 ], [ %57, %55 ], [ %54, %52 ]
  %60 = and i32 %42, 96
  %61 = and i32 %60, %47
  %62 = and i32 %47, 4096
  %63 = icmp eq i32 %62, 0
  %64 = and i32 %42, 460800
  %65 = select i1 %63, i32 0, i32 %64
  %66 = or i32 %65, %61
  %67 = or i32 %66, %59
  %68 = and i32 %47, 2048
  %69 = icmp eq i32 %68, 0
  %70 = and i32 %42, 61440
  %71 = select i1 %69, i32 0, i32 %70
  %72 = or i32 %67, %71
  %73 = and i32 %47, 524288
  %74 = icmp eq i32 %73, 0
  %75 = and i32 %42, 1048576
  %76 = select i1 %74, i32 0, i32 %75
  %77 = or i32 %72, %76
  %78 = and i32 %47, 1048576
  %79 = icmp eq i32 %78, 0
  %80 = and i32 %42, 524288
  %81 = select i1 %79, i32 0, i32 %80
  %82 = or i32 %77, %81
  %83 = and i32 %47, 128
  %84 = icmp eq i32 %83, 0
  %85 = and i32 %42, 1792
  %86 = select i1 %84, i32 0, i32 %85
  %87 = or i32 %82, %86
  %88 = and i32 %47, 1792
  %89 = icmp eq i32 %88, 0
  %90 = and i32 %42, 128
  %91 = select i1 %89, i32 0, i32 %90
  %92 = or i32 %87, %91
  store i32 %92, ptr %43, align 4
  %93 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46, i32 5, i32 2
  %94 = getelementptr inbounds %struct.ieee80211_vht_cap, ptr %2, i32 0, i32 1
  %95 = load i64, ptr %94, align 1
  store i64 %95, ptr %93, align 4
  %96 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr %struct.ieee80211_hw, ptr %97, i32 0, i32 4, i32 1
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %99, 2048
  %101 = icmp eq i32 %100, 0
  %102 = lshr i64 %95, 48
  %103 = trunc i64 %102 to i16
  %104 = trunc i64 %95 to i16
  %105 = lshr i64 %95, 32
  %106 = trunc i64 %105 to i16
  br i1 %101, label %110, label %107

107:                                              ; preds = %58
  %108 = and i32 %42, -1073741824
  %109 = or i32 %92, %108
  store i32 %109, ptr %43, align 4
  br label %113

110:                                              ; preds = %58
  %111 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46, i32 5, i32 2, i32 3
  %112 = and i16 %103, -8193
  store i16 %112, ptr %111, align 2
  br label %113

113:                                              ; preds = %110, %107
  %114 = phi i16 [ %112, %110 ], [ %103, %107 ]
  %115 = phi i32 [ %92, %110 ], [ %109, %107 ]
  %116 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %5, i32 0, i32 2
  %117 = load i16, ptr %116, align 4
  %118 = zext i16 %117 to i32
  %119 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %5, i32 0, i32 2, i32 2
  %120 = load i16, ptr %119, align 4
  %121 = zext i16 %120 to i32
  %122 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46, i32 5, i32 2, i32 2
  br label %123

123:                                              ; preds = %123, %113
  %124 = phi i32 [ 0, %113 ], [ %165, %123 ]
  %125 = phi i16 [ %104, %113 ], [ %158, %123 ]
  %126 = phi i16 [ %106, %113 ], [ %164, %123 ]
  %127 = shl nuw nsw i32 %124, 1
  %128 = lshr i32 %118, %127
  %129 = trunc i32 %128 to i16
  %130 = and i16 %129, 3
  %131 = lshr i32 %121, %127
  %132 = trunc i32 %131 to i16
  %133 = and i16 %132, 3
  %134 = zext i16 %125 to i32
  %135 = lshr i32 %134, %127
  %136 = trunc i32 %135 to i16
  %137 = and i16 %136, 3
  %138 = zext i16 %126 to i32
  %139 = lshr i32 %138, %127
  %140 = trunc i32 %139 to i16
  %141 = and i16 %140, 3
  %142 = icmp eq i16 %141, 3
  %143 = icmp eq i16 %130, 3
  %144 = select i1 %142, i1 true, i1 %143
  %145 = tail call i16 @llvm.umin.i16(i16 %130, i16 %141)
  %146 = icmp eq i16 %137, 3
  %147 = icmp eq i16 %133, 3
  %148 = select i1 %146, i1 true, i1 %147
  %149 = tail call i16 @llvm.umin.i16(i16 %133, i16 %137)
  %150 = shl nuw nsw i32 3, %127
  %151 = trunc i32 %150 to i16
  %152 = xor i16 %151, -1
  %153 = and i16 %125, %152
  %154 = zext i16 %149 to i32
  %155 = select i1 %148, i32 3, i32 %154
  %156 = shl nuw nsw i32 %155, %127
  %157 = trunc i32 %156 to i16
  %158 = or i16 %153, %157
  %159 = and i16 %126, %152
  %160 = zext i16 %145 to i32
  %161 = select i1 %144, i32 3, i32 %160
  %162 = shl nuw nsw i32 %161, %127
  %163 = trunc i32 %162 to i16
  %164 = or i16 %159, %163
  %165 = add nuw nsw i32 %124, 1
  %166 = icmp eq i32 %165, 8
  br i1 %166, label %167, label %123

167:                                              ; preds = %123
  store i16 %158, ptr %93, align 4
  store i16 %164, ptr %122, align 4
  %168 = icmp eq i16 %158, -1
  br i1 %168, label %169, label %173

169:                                              ; preds = %167
  store i8 0, ptr %6, align 4
  %170 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %171 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 4
  %172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %170, ptr noundef %171) #14
  br label %195

173:                                              ; preds = %167
  %174 = and i32 %115, 12
  switch i32 %174, label %177 [
    i32 4, label %175
    i32 8, label %175
  ]

175:                                              ; preds = %173, %173
  %176 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 39
  store i32 3, ptr %176, align 4
  br label %184

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 39
  %179 = and i16 %114, 8192
  %180 = icmp eq i16 %179, 0
  %181 = icmp ult i32 %42, 1073741824
  %182 = select i1 %180, i1 true, i1 %181
  %183 = select i1 %182, i32 2, i32 3
  store i32 %183, ptr %178, align 4
  br label %184

184:                                              ; preds = %177, %175
  %185 = tail call i32 @ieee80211_sta_cur_vht_bw(ptr noundef %3)
  %186 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46, i32 14
  store i32 %185, ptr %186, align 8
  %187 = load i32, ptr %43, align 4
  %188 = and i32 %187, 3
  switch i32 %188, label %193 [
    i32 2, label %189
    i32 1, label %191
  ]

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46, i32 21
  store i16 11454, ptr %190, align 8
  br label %195

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46, i32 21
  store i16 7991, ptr %192, align 8
  br label %195

193:                                              ; preds = %184
  %194 = getelementptr inbounds %struct.sta_info, ptr %3, i32 0, i32 46, i32 21
  store i16 3895, ptr %194, align 8
  br label %195

195:                                              ; preds = %193, %191, %189, %169, %22, %16, %12, %4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_sta_cur_vht_bw(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 58, i32 1, i32 32, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 6
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 6, i32 1, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 58, i32 1, i32 32
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = lshr i8 %11, 1
  %18 = and i8 %17, 1
  %19 = zext i8 %18 to i32
  br label %44

20:                                               ; preds = %9
  %21 = zext i8 %11 to i32
  %22 = and i32 %21, 24
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = lshr i32 %21, 1
  %26 = and i32 %25, 2
  br label %44

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 5
  %29 = load i8, ptr %28, align 4, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 3
  %33 = load i16, ptr %32, align 8
  %34 = lshr i16 %33, 1
  %35 = and i16 %34, 1
  %36 = zext i16 %35 to i32
  br label %44

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 5, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 12
  switch i32 %40, label %41 [
    i32 8, label %44
    i32 4, label %44
  ]

41:                                               ; preds = %37
  %42 = icmp ult i32 %39, 1073741824
  %43 = select i1 %42, i32 2, i32 3
  br label %44

44:                                               ; preds = %41, %37, %37, %31, %24, %20, %16
  %45 = phi i32 [ %36, %31 ], [ %19, %16 ], [ 3, %20 ], [ %26, %24 ], [ 3, %37 ], [ 3, %37 ], [ %43, %41 ]
  %46 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 39
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 23
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 2048
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %44
  %53 = load volatile i32, ptr %48, align 4
  %54 = and i32 %53, 65536
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %52
  %57 = load volatile i32, ptr %48, align 4
  %58 = and i32 %57, 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 44
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 44, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp ult i32 %66, 6
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load i1, ptr @ieee80211_chan_width_to_rx_bw.__already_done, align 1
  br i1 %69, label %82, label %70, !prof !9

70:                                               ; preds = %68
  store i1 true, ptr @ieee80211_chan_width_to_rx_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 449, i32 noundef 9, ptr noundef null) #13
  br label %82

71:                                               ; preds = %60, %56, %52, %44
  %72 = icmp ult i32 %5, 6
  br i1 %72, label %79, label %73

73:                                               ; preds = %71
  %74 = load i1, ptr @ieee80211_chan_width_to_rx_bw.__already_done, align 1
  br i1 %74, label %82, label %75, !prof !9

75:                                               ; preds = %73
  store i1 true, ptr @ieee80211_chan_width_to_rx_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 449, i32 noundef 9, ptr noundef null) #13
  br label %82

76:                                               ; preds = %64
  %77 = getelementptr inbounds [6 x i32], ptr @switch.table.ieee80211_chan_width_to_rx_bw, i32 0, i32 %66
  %78 = load i32, ptr %77, align 4
  br label %82

79:                                               ; preds = %71
  %80 = getelementptr inbounds [6 x i32], ptr @switch.table.ieee80211_chan_width_to_rx_bw, i32 0, i32 %5
  %81 = load i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %76, %75, %73, %70, %68
  %83 = phi i32 [ 0, %70 ], [ 0, %68 ], [ 0, %75 ], [ 0, %73 ], [ %78, %76 ], [ %81, %79 ]
  %84 = tail call i32 @llvm.umin.i32(i32 %45, i32 %47)
  %85 = tail call i32 @llvm.umin.i32(i32 %84, i32 %83)
  ret i32 %85
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee80211_sta_cap_rx_bw(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 6
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 6, i32 1, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %9, i32 0, i32 58, i32 1, i32 32
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = lshr i8 %7, 1
  %16 = and i8 %15, 1
  %17 = zext i8 %16 to i32
  br label %42

18:                                               ; preds = %5
  %19 = zext i8 %7 to i32
  %20 = and i32 %19, 24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = lshr i32 %19, 1
  %24 = and i32 %23, 2
  br label %42

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 5
  %27 = load i8, ptr %26, align 4, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 3
  %31 = load i16, ptr %30, align 8
  %32 = lshr i16 %31, 1
  %33 = and i16 %32, 1
  %34 = zext i16 %33 to i32
  br label %42

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 5, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 12
  switch i32 %38, label %39 [
    i32 8, label %42
    i32 4, label %42
  ]

39:                                               ; preds = %35
  %40 = icmp ult i32 %37, 1073741824
  %41 = select i1 %40, i32 2, i32 3
  br label %42

42:                                               ; preds = %39, %35, %35, %29, %22, %18, %14
  %43 = phi i32 [ %34, %29 ], [ %17, %14 ], [ 3, %18 ], [ %24, %22 ], [ 3, %35 ], [ 3, %35 ], [ %41, %39 ]
  ret i32 %43
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee80211_sta_cap_chan_bw(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 5
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 3, i32 1
  %7 = load i8, ptr %6, align 2, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 3
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 2
  %13 = icmp eq i16 %12, 0
  %14 = select i1 %13, i32 1, i32 2
  br label %23

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 5, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 12
  %19 = icmp eq i32 %18, 8
  %20 = select i1 %19, i32 4, i32 3
  %21 = icmp eq i32 %18, 4
  %22 = select i1 %21, i32 5, i32 %20
  br label %23

23:                                               ; preds = %15, %9, %5
  %24 = phi i32 [ %14, %9 ], [ 0, %5 ], [ %22, %15 ]
  ret i32 %24
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee80211_sta_rx_bw_to_chan_width(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 14
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %15 [
    i32 0, label %4
    i32 1, label %16
    i32 2, label %8
    i32 3, label %9
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 3, i32 1
  %6 = load i8, ptr %5, align 2, !range !8
  %7 = zext i8 %6 to i32
  br label %16

8:                                                ; preds = %1
  br label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 5, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 12
  %13 = icmp eq i32 %12, 4
  %14 = select i1 %13, i32 5, i32 4
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %9, %8, %4, %1
  %17 = phi i32 [ 1, %15 ], [ 3, %8 ], [ %7, %4 ], [ 2, %1 ], [ %14, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_chan_width_to_rx_bw(i32 noundef %0) local_unnamed_addr #2 {
  %2 = icmp ult i32 %0, 6
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i1, ptr @ieee80211_chan_width_to_rx_bw.__already_done, align 1
  br i1 %4, label %9, label %5, !prof !9

5:                                                ; preds = %3
  store i1 true, ptr @ieee80211_chan_width_to_rx_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 449, i32 noundef 9, ptr noundef null) #13
  br label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds [6 x i32], ptr @switch.table.ieee80211_chan_width_to_rx_bw, i32 0, i32 %0
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %5, %3
  %10 = phi i32 [ 0, %5 ], [ 0, %3 ], [ %8, %6 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_sta_set_rx_nss(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 13
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %141

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 6
  %7 = load i8, ptr %6, align 8, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %76, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 6, i32 2
  %11 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 6, i32 2, i32 2
  %12 = load i16, ptr %11, align 1
  %13 = load i16, ptr %10, align 1
  %14 = zext i16 %12 to i32
  %15 = and i32 %14, 49152
  %16 = icmp eq i32 %15, 49152
  br i1 %16, label %17, label %38

17:                                               ; preds = %9
  %18 = and i32 %14, 12288
  %19 = icmp eq i32 %18, 12288
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = and i32 %14, 3072
  %22 = icmp eq i32 %21, 3072
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = and i32 %14, 768
  %25 = icmp eq i32 %24, 768
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = and i32 %14, 192
  %28 = icmp eq i32 %27, 192
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = and i32 %14, 48
  %31 = icmp eq i32 %30, 48
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = and i32 %14, 12
  %34 = icmp eq i32 %33, 12
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = and i32 %14, 3
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %40, label %38

38:                                               ; preds = %35, %32, %29, %26, %23, %20, %17, %9
  %39 = phi i8 [ 8, %9 ], [ 7, %17 ], [ 6, %20 ], [ 5, %23 ], [ 4, %26 ], [ 3, %29 ], [ 2, %32 ], [ 1, %35 ]
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i8 [ %39, %38 ], [ 0, %35 ]
  %42 = zext i16 %13 to i32
  %43 = and i32 %42, 49152
  %44 = icmp eq i32 %43, 49152
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = and i32 %42, 12288
  %47 = icmp eq i32 %46, 12288
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = and i32 %42, 3072
  %50 = icmp eq i32 %49, 3072
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = and i32 %42, 768
  %53 = icmp eq i32 %52, 768
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = and i32 %42, 192
  %56 = icmp eq i32 %55, 192
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = and i32 %42, 48
  %59 = icmp eq i32 %58, 48
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = and i32 %42, 12
  %62 = icmp eq i32 %61, 12
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = and i32 %42, 3
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %68, label %66

66:                                               ; preds = %63, %60, %57, %54, %51, %48, %45, %40
  %67 = phi i8 [ 8, %40 ], [ 7, %45 ], [ 6, %48 ], [ 5, %51 ], [ 4, %54 ], [ 3, %57 ], [ 2, %60 ], [ 1, %63 ]
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i8 [ %67, %66 ], [ 0, %63 ]
  %70 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 6, i32 1, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = and i8 %71, 8
  %73 = icmp eq i8 %72, 0
  %74 = tail call i8 @llvm.umin.i8(i8 %69, i8 %41)
  %75 = select i1 %73, i8 %69, i8 %74
  br label %76

76:                                               ; preds = %68, %5
  %77 = phi i8 [ %75, %68 ], [ 0, %5 ]
  %78 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 3, i32 1
  %79 = load i8, ptr %78, align 2, !range !8
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 3, i32 4
  %83 = load i8, ptr %82, align 1
  %84 = icmp ne i8 %83, 0
  %85 = zext i1 %84 to i8
  %86 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 46, i32 3, i32 4, i32 0, i32 1
  %87 = load i8, ptr %86, align 1
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %84, i8 2, i8 1
  %90 = select i1 %88, i8 %85, i8 %89
  %91 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 46, i32 3, i32 4, i32 0, i32 2
  %92 = load i8, ptr %91, align 1
  %93 = icmp ne i8 %92, 0
  %94 = zext i1 %93 to i8
  %95 = add nuw nsw i8 %90, %94
  %96 = getelementptr %struct.sta_info, ptr %0, i32 0, i32 46, i32 3, i32 4, i32 0, i32 3
  %97 = load i8, ptr %96, align 1
  %98 = icmp ne i8 %97, 0
  %99 = zext i1 %98 to i8
  %100 = add nuw nsw i8 %95, %99
  br label %101

101:                                              ; preds = %81, %76
  %102 = phi i8 [ 0, %76 ], [ %100, %81 ]
  %103 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 5
  %104 = load i8, ptr %103, align 8, !range !8
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %135, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.sta_info, ptr %0, i32 0, i32 46, i32 5, i32 2
  %108 = load i16, ptr %107, align 8
  %109 = zext i16 %108 to i32
  %110 = and i32 %109, 49152
  %111 = icmp eq i32 %110, 49152
  br i1 %111, label %112, label %133

112:                                              ; preds = %106
  %113 = and i32 %109, 12288
  %114 = icmp eq i32 %113, 12288
  br i1 %114, label %115, label %133

115:                                              ; preds = %112
  %116 = and i32 %109, 3072
  %117 = icmp eq i32 %116, 3072
  br i1 %117, label %118, label %133

118:                                              ; preds = %115
  %119 = and i32 %109, 768
  %120 = icmp eq i32 %119, 768
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = and i32 %109, 192
  %123 = icmp eq i32 %122, 192
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = and i32 %109, 48
  %126 = icmp eq i32 %125, 48
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = and i32 %109, 12
  %129 = icmp eq i32 %128, 12
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = and i32 %109, 3
  %132 = icmp eq i32 %131, 3
  br i1 %132, label %135, label %133

133:                                              ; preds = %130, %127, %124, %121, %118, %115, %112, %106
  %134 = phi i8 [ 8, %106 ], [ 7, %112 ], [ 6, %115 ], [ 5, %118 ], [ 4, %121 ], [ 3, %124 ], [ 2, %127 ], [ 1, %130 ]
  br label %135

135:                                              ; preds = %133, %130, %101
  %136 = phi i8 [ 0, %101 ], [ %134, %133 ], [ 0, %130 ]
  %137 = tail call i8 @llvm.umax.i8(i8 %136, i8 %102)
  %138 = tail call i8 @llvm.umax.i8(i8 %77, i8 %137)
  %139 = icmp eq i8 %138, 0
  %140 = select i1 %139, i8 1, i8 %138
  store i8 %140, ptr %2, align 1
  br label %141

141:                                              ; preds = %135, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ieee80211_vht_handle_opmode(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, i32 %3) local_unnamed_addr #2 {
  %5 = alloca %struct.sta_opmode_info, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false)
  %6 = zext i8 %2 to i32
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %63

9:                                                ; preds = %4
  %10 = lshr i8 %2, 4
  %11 = and i8 %10, 7
  %12 = add nuw nsw i8 %11, 1
  %13 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 13
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, %12
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  store i8 %12, ptr %13, align 1
  %17 = getelementptr inbounds %struct.sta_opmode_info, ptr %5, i32 0, i32 3
  store i8 %12, ptr %17, align 4
  store i32 4, ptr %5, align 4
  br label %18

18:                                               ; preds = %16, %9
  %19 = phi i32 [ 5, %16 ], [ 1, %9 ]
  %20 = phi i32 [ 8, %16 ], [ 0, %9 ]
  %21 = and i32 %6, 3
  switch i32 %21, label %34 [
    i32 0, label %22
    i32 1, label %24
    i32 2, label %26
    i32 3, label %32
  ]

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 39
  store i32 0, ptr %23, align 4
  br label %35

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 39
  store i32 1, ptr %25, align 4
  br label %35

26:                                               ; preds = %18
  %27 = and i32 %6, 4
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 39
  br i1 %28, label %31, label %30

30:                                               ; preds = %26
  store i32 3, ptr %29, align 4
  br label %35

31:                                               ; preds = %26
  store i32 2, ptr %29, align 4
  br label %35

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 39
  store i32 3, ptr %33, align 4
  br label %35

34:                                               ; preds = %18
  unreachable

35:                                               ; preds = %32, %31, %30, %24, %22
  %36 = tail call i32 @ieee80211_sta_cur_vht_bw(ptr noundef %1)
  %37 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 14
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %57, label %40

40:                                               ; preds = %35
  store i32 %36, ptr %37, align 8
  switch i32 %36, label %52 [
    i32 0, label %41
    i32 1, label %53
    i32 2, label %45
    i32 3, label %46
  ]

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 3, i32 1
  %43 = load i8, ptr %42, align 2, !range !8
  %44 = zext i8 %43 to i32
  br label %53

45:                                               ; preds = %40
  br label %53

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 46, i32 5, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 12
  %50 = icmp eq i32 %49, 4
  %51 = select i1 %50, i32 5, i32 4
  br label %53

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %46, %45, %41, %40
  %54 = phi i32 [ 1, %52 ], [ 3, %45 ], [ %44, %41 ], [ 2, %40 ], [ %51, %46 ]
  %55 = getelementptr inbounds %struct.sta_opmode_info, ptr %5, i32 0, i32 2
  store i32 %54, ptr %55, align 4
  %56 = or i32 %20, 1
  store i32 %19, ptr %5, align 4
  br label %58

57:                                               ; preds = %35
  br i1 %15, label %63, label %58

58:                                               ; preds = %57, %53
  %59 = phi i32 [ %56, %53 ], [ %20, %57 ]
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 6
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 4
  call void @cfg80211_sta_opmode_change_notify(ptr noundef %61, ptr noundef %62, ptr noundef nonnull %5, i32 noundef 3264) #13
  br label %63

63:                                               ; preds = %58, %57, %4
  %64 = phi i32 [ 0, %4 ], [ %59, %58 ], [ %20, %57 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sta_opmode_change_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_process_mu_groups(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 5
  %4 = load i8, ptr %3, align 8, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 1
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 33
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 33, i32 1
  %10 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %7, ptr noundef dereferenceable(16) %9, i32 16)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 0, i32 1
  %14 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %13, ptr noundef dereferenceable(8) %8, i32 8)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %6
  %17 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 0, i32 1
  %18 = load i64, ptr %17, align 1
  store i64 %18, ptr %8, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %9, ptr noundef align 1 dereferenceable(16) %7, i32 16, i1 false)
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 8388608) #13
  br label %19

19:                                               ; preds = %16, %12, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_update_mu_groups(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.ieee80211_vif, ptr %0, i32 0, i32 5
  %5 = load i8, ptr %4, align 8, !range !8
  %6 = icmp eq i8 %5, 0
  %7 = load i1, ptr @ieee80211_update_mu_groups.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %3
  store i1 true, ptr @ieee80211_update_mu_groups.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 650, i32 noundef 9, ptr noundef null) #13
  br label %11

11:                                               ; preds = %10, %3
  br i1 %6, label %16, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.ieee80211_vif, ptr %0, i32 0, i32 1, i32 33
  %14 = load i64, ptr %1, align 1
  store i64 %14, ptr %13, align 8
  %15 = getelementptr inbounds %struct.ieee80211_vif, ptr %0, i32 0, i32 1, i32 33, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %15, ptr noundef align 1 dereferenceable(16) %2, i32 16, i1 false)
  br label %16

16:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_vht_handle_opmode(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr %struct.wiphy, ptr %8, i32 0, i32 53, i32 %3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @__ieee80211_vht_handle_opmode(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 undef)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @ieee80211_recalc_min_chandef(ptr noundef %0) #13
  tail call void @rate_control_rate_update(ptr noundef %6, ptr noundef %10, ptr noundef %1, i32 noundef %11) #13
  br label %14

14:                                               ; preds = %13, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_min_chandef(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_rate_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local void @ieee80211_get_vht_mask_from_cap(i16 noundef zeroext %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  %3 = zext i16 %0 to i32
  %4 = and i32 %3, 3
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds [3 x i16], ptr @switch.table.ieee80211_get_vht_mask_from_cap.9, i32 0, i32 %4
  %8 = load i16, ptr %7, align 2
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i16 [ %8, %6 ], [ 0, %2 ]
  store i16 %10, ptr %1, align 2
  %11 = lshr i32 %3, 2
  %12 = and i32 %11, 3
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds [3 x i16], ptr @switch.table.ieee80211_get_vht_mask_from_cap.9, i32 0, i32 %12
  %16 = load i16, ptr %15, align 2
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i16 [ %16, %14 ], [ 0, %9 ]
  %19 = getelementptr i16, ptr %1, i32 1
  store i16 %18, ptr %19, align 2
  %20 = lshr i32 %3, 4
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds [3 x i16], ptr @switch.table.ieee80211_get_vht_mask_from_cap.9, i32 0, i32 %21
  %25 = load i16, ptr %24, align 2
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi i16 [ %25, %23 ], [ 0, %17 ]
  %28 = getelementptr i16, ptr %1, i32 2
  store i16 %27, ptr %28, align 2
  %29 = lshr i32 %3, 6
  %30 = and i32 %29, 3
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds [3 x i16], ptr @switch.table.ieee80211_get_vht_mask_from_cap.9, i32 0, i32 %30
  %34 = load i16, ptr %33, align 2
  br label %35

35:                                               ; preds = %32, %26
  %36 = phi i16 [ %34, %32 ], [ 0, %26 ]
  %37 = getelementptr i16, ptr %1, i32 3
  store i16 %36, ptr %37, align 2
  %38 = lshr i32 %3, 8
  %39 = and i32 %38, 3
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds [3 x i16], ptr @switch.table.ieee80211_get_vht_mask_from_cap.9, i32 0, i32 %39
  %43 = load i16, ptr %42, align 2
  br label %44

44:                                               ; preds = %41, %35
  %45 = phi i16 [ %43, %41 ], [ 0, %35 ]
  %46 = getelementptr i16, ptr %1, i32 4
  store i16 %45, ptr %46, align 2
  %47 = lshr i32 %3, 10
  %48 = and i32 %47, 3
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds [3 x i16], ptr @switch.table.ieee80211_get_vht_mask_from_cap.9, i32 0, i32 %48
  %52 = load i16, ptr %51, align 2
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi i16 [ %52, %50 ], [ 0, %44 ]
  %55 = getelementptr i16, ptr %1, i32 5
  store i16 %54, ptr %55, align 2
  %56 = lshr i32 %3, 12
  %57 = and i32 %56, 3
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds [3 x i16], ptr @switch.table.ieee80211_get_vht_mask_from_cap.9, i32 0, i32 %57
  %61 = load i16, ptr %60, align 2
  br label %62

62:                                               ; preds = %59, %53
  %63 = phi i16 [ %61, %59 ], [ 0, %53 ]
  %64 = getelementptr i16, ptr %1, i32 6
  store i16 %63, ptr %64, align 2
  %65 = lshr i32 %3, 14
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds [3 x i16], ptr @switch.table.ieee80211_get_vht_mask_from_cap.9, i32 0, i32 %65
  %69 = load i16, ptr %68, align 2
  br label %70

70:                                               ; preds = %67, %62
  %71 = phi i16 [ %69, %67 ], [ 0, %62 ]
  %72 = getelementptr i16, ptr %1, i32 7
  store i16 %71, ptr %72, align 2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #11

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }

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
!10 = !{!"branch_weights", i32 1, i32 2000}
