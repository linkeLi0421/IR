; ModuleID = '/llk/IR/net/mac80211/util.c_pt.bc'
source_filename = "../net/mac80211/util.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wiphy_to_ieee80211_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22wiphy_to_ieee80211_hw\22\09\09\09\09\09"
module asm "__kstrtabns_wiphy_to_ieee80211_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_bssid:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_bssid\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_bssid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_generic_frame_duration:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_generic_frame_duration\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_generic_frame_duration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_rts_duration:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_rts_duration\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_rts_duration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_ctstoself_duration:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_ctstoself_duration\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_ctstoself_duration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_wake_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_wake_queue\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_wake_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_stop_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_stop_queue\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_stop_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_stop_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_stop_queues\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_stop_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_queue_stopped:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_queue_stopped\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_queue_stopped:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_wake_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_wake_queues\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_wake_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_iterate_interfaces:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_iterate_interfaces\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_iterate_interfaces:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_iterate_active_interfaces_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_iterate_active_interfaces_atomic\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_iterate_active_interfaces_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_iterate_active_interfaces_mtx:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_iterate_active_interfaces_mtx\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_iterate_active_interfaces_mtx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_iterate_stations:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_iterate_stations\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_iterate_stations:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_iterate_stations_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_iterate_stations_atomic\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_iterate_stations_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wdev_to_ieee80211_vif:\09\09\09\09\09"
module asm "\09.asciz \09\22wdev_to_ieee80211_vif\22\09\09\09\09\09"
module asm "__kstrtabns_wdev_to_ieee80211_vif:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_vif_to_wdev:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_vif_to_wdev\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_vif_to_wdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_queue_work:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_queue_work\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_queue_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_queue_delayed_work:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_queue_delayed_work\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_queue_delayed_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_resume_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_resume_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_resume_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_enable_rssi_reports:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_enable_rssi_reports\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_enable_rssi_reports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_disable_rssi_reports:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_disable_rssi_reports\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_disable_rssi_reports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_ave_rssi:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_ave_rssi\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_ave_rssi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_radar_detected:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_radar_detected\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_radar_detected:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_update_p2p_noa:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_update_p2p_noa\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_update_p2p_noa:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_parse_p2p_noa:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_parse_p2p_noa\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_parse_p2p_noa:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_txq_get_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_txq_get_depth\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_txq_get_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.119, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
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
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type {}
%struct.anon.119 = type { i64, i64, i8 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_ext = type { i16, i16, %union.anon.187 }
%union.anon.187 = type { %struct.anon.189 }
%struct.anon.189 = type <{ [6 x i8], i32, i8, [3 x i8], [0 x i8] }>
%struct.ieee80211_tx_data = type { ptr, %struct.sk_buff_head, ptr, ptr, ptr, ptr, %struct.ieee80211_tx_rate, i32 }
%struct.sk_buff_head = type { %union.anon.121, i32, %struct.spinlock }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { ptr, ptr }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
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
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.124, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.124 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.125] }
%struct.anon.125 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.120, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.120 = type { i32, i16 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.135 }
%union.anon.135 = type { %struct.anon.139, [32 x i8] }
%struct.anon.139 = type { i64 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.134, i32 }
%union.anon.134 = type { ptr }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.153, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%union.anon.153 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_if_ap = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ps_data, %struct.atomic_t, i8 }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.142, [17 x i16], %struct.anon.143, %struct.anon.144, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.anon.142 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.143 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.144 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.44, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.83, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.44 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ref_tracker_dir = type {}
%union.anon.83 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.sk_buff_list = type { ptr, ptr }
%struct.ieee802_11_elems = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8 }
%struct.element = type { i8, i8, [0 x i8] }
%struct.ieee80211_tim_ie = type { i8, i8, i8, [1 x i8] }
%struct.ieee80211_bssid_index = type { i8, i8, i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range, %struct.ieee80211_power_rule, %struct.ieee80211_wmm_rule, i32, i32, i8 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.ieee80211_power_rule = type { i32, i32 }
%struct.ieee80211_wmm_rule = type { [4 x %struct.ieee80211_wmm_ac], [4 x %struct.ieee80211_wmm_ac] }
%struct.ieee80211_wmm_ac = type { i16, i16, i16, i8 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.154 }
%union.anon.154 = type { %struct.anon.160, [16 x i8] }
%struct.anon.160 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.117 }>
%struct.anon.117 = type { ptr, i32 }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.ieee80211_chanctx = type { %struct.list_head, %struct.callback_head, %struct.list_head, %struct.list_head, i32, ptr, i32, i8, %struct.ieee80211_chanctx_conf }
%struct.ieee80211_chanctx_conf = type { %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i8, [0 x i8] }
%struct.cfg80211_nan_func = type { i32, [6 x i8], i8, i8, i8, i8, i8, i8, %struct.mac_address, i32, ptr, i8, i8, ptr, i8, i8, ptr, i32, ptr, ptr, i8, i8, i8, i64 }
%struct.mac_address = type { [6 x i8] }
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.ieee80211_he_operation = type <{ i32, i16, [0 x i8] }>
%struct.ieee80211_he_6ghz_oper = type { i8, i8, i8, i8, i8 }
%struct.ieee80211_s1g_oper_ie = type { i8, i8, i8, i8, i16 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.ieee80211_if_ibss = type { %struct.timer_list, %struct.work_struct, i32, i32, i8, i8, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, ptr, %struct.cfg80211_chan_def, i32, ptr, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.spinlock, %struct.list_head, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.anon.167 = type { i8, %union.anon.168 }
%union.anon.168 = type <{ %struct.anon.173, [17 x i8] }>
%struct.anon.173 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.cfg80211_csa_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, ptr, ptr, i32, i32, %struct.cfg80211_beacon_data, i8, i8, i8 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_noa_data = type { i32, i8, i8, [4 x i8], [4 x %struct.anon.190] }
%struct.anon.190 = type { i32, i32, i32 }
%struct.iface_combination_params = type { i32, i8, [13 x i32], i32 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }

@mac80211_wiphy_privid = dso_local constant ptr @mac80211_wiphy_privid, align 4
@__kstrtab_wiphy_to_ieee80211_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_wiphy_to_ieee80211_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_wiphy_to_ieee80211_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wiphy_to_ieee80211_hw to i32), ptr @__kstrtab_wiphy_to_ieee80211_hw, ptr @__kstrtabns_wiphy_to_ieee80211_hw }, section "___ksymtab+wiphy_to_ieee80211_hw", align 4
@__kstrtab_ieee80211_get_bssid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_bssid = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_bssid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_bssid to i32), ptr @__kstrtab_ieee80211_get_bssid, ptr @__kstrtabns_ieee80211_get_bssid }, section "___ksymtab+ieee80211_get_bssid", align 4
@__kstrtab_ieee80211_generic_frame_duration = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_generic_frame_duration = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_generic_frame_duration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_generic_frame_duration to i32), ptr @__kstrtab_ieee80211_generic_frame_duration, ptr @__kstrtabns_ieee80211_generic_frame_duration }, section "___ksymtab+ieee80211_generic_frame_duration", align 4
@__kstrtab_ieee80211_rts_duration = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_rts_duration = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_rts_duration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_rts_duration to i32), ptr @__kstrtab_ieee80211_rts_duration, ptr @__kstrtabns_ieee80211_rts_duration }, section "___ksymtab+ieee80211_rts_duration", align 4
@__kstrtab_ieee80211_ctstoself_duration = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_ctstoself_duration = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_ctstoself_duration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_ctstoself_duration to i32), ptr @__kstrtab_ieee80211_ctstoself_duration, ptr @__kstrtabns_ieee80211_ctstoself_duration }, section "___ksymtab+ieee80211_ctstoself_duration", align 4
@__kstrtab_ieee80211_wake_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_wake_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_wake_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_wake_queue to i32), ptr @__kstrtab_ieee80211_wake_queue, ptr @__kstrtabns_ieee80211_wake_queue }, section "___ksymtab+ieee80211_wake_queue", align 4
@__kstrtab_ieee80211_stop_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_stop_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_stop_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_stop_queue to i32), ptr @__kstrtab_ieee80211_stop_queue, ptr @__kstrtabns_ieee80211_stop_queue }, section "___ksymtab+ieee80211_stop_queue", align 4
@.str = private unnamed_addr constant [20 x i8] c"net/mac80211/util.c\00", align 1
@__kstrtab_ieee80211_stop_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_stop_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_stop_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_stop_queues to i32), ptr @__kstrtab_ieee80211_stop_queues, ptr @__kstrtabns_ieee80211_stop_queues }, section "___ksymtab+ieee80211_stop_queues", align 4
@__kstrtab_ieee80211_queue_stopped = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_queue_stopped = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_queue_stopped = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_queue_stopped to i32), ptr @__kstrtab_ieee80211_queue_stopped, ptr @__kstrtabns_ieee80211_queue_stopped }, section "___ksymtab+ieee80211_queue_stopped", align 4
@__kstrtab_ieee80211_wake_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_wake_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_wake_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_wake_queues to i32), ptr @__kstrtab_ieee80211_wake_queues, ptr @__kstrtabns_ieee80211_wake_queues }, section "___ksymtab+ieee80211_wake_queues", align 4
@__kstrtab_ieee80211_iterate_interfaces = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_iterate_interfaces = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_iterate_interfaces = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_iterate_interfaces to i32), ptr @__kstrtab_ieee80211_iterate_interfaces, ptr @__kstrtabns_ieee80211_iterate_interfaces }, section "___ksymtab_gpl+ieee80211_iterate_interfaces", align 4
@__kstrtab_ieee80211_iterate_active_interfaces_atomic = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_iterate_active_interfaces_atomic = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_iterate_active_interfaces_atomic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_iterate_active_interfaces_atomic to i32), ptr @__kstrtab_ieee80211_iterate_active_interfaces_atomic, ptr @__kstrtabns_ieee80211_iterate_active_interfaces_atomic }, section "___ksymtab_gpl+ieee80211_iterate_active_interfaces_atomic", align 4
@__kstrtab_ieee80211_iterate_active_interfaces_mtx = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_iterate_active_interfaces_mtx = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_iterate_active_interfaces_mtx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_iterate_active_interfaces_mtx to i32), ptr @__kstrtab_ieee80211_iterate_active_interfaces_mtx, ptr @__kstrtabns_ieee80211_iterate_active_interfaces_mtx }, section "___ksymtab_gpl+ieee80211_iterate_active_interfaces_mtx", align 4
@__kstrtab_ieee80211_iterate_stations = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_iterate_stations = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_iterate_stations = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_iterate_stations to i32), ptr @__kstrtab_ieee80211_iterate_stations, ptr @__kstrtabns_ieee80211_iterate_stations }, section "___ksymtab_gpl+ieee80211_iterate_stations", align 4
@__kstrtab_ieee80211_iterate_stations_atomic = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_iterate_stations_atomic = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_iterate_stations_atomic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_iterate_stations_atomic to i32), ptr @__kstrtab_ieee80211_iterate_stations_atomic, ptr @__kstrtabns_ieee80211_iterate_stations_atomic }, section "___ksymtab_gpl+ieee80211_iterate_stations_atomic", align 4
@__kstrtab_wdev_to_ieee80211_vif = external dso_local constant [0 x i8], align 1
@__kstrtabns_wdev_to_ieee80211_vif = external dso_local constant [0 x i8], align 1
@__ksymtab_wdev_to_ieee80211_vif = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wdev_to_ieee80211_vif to i32), ptr @__kstrtab_wdev_to_ieee80211_vif, ptr @__kstrtabns_wdev_to_ieee80211_vif }, section "___ksymtab_gpl+wdev_to_ieee80211_vif", align 4
@__kstrtab_ieee80211_vif_to_wdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_vif_to_wdev = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_vif_to_wdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_vif_to_wdev to i32), ptr @__kstrtab_ieee80211_vif_to_wdev, ptr @__kstrtabns_ieee80211_vif_to_wdev }, section "___ksymtab_gpl+ieee80211_vif_to_wdev", align 4
@__kstrtab_ieee80211_queue_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_queue_work = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_queue_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_queue_work to i32), ptr @__kstrtab_ieee80211_queue_work, ptr @__kstrtabns_ieee80211_queue_work }, section "___ksymtab+ieee80211_queue_work", align 4
@__kstrtab_ieee80211_queue_delayed_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_queue_delayed_work = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_queue_delayed_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_queue_delayed_work to i32), ptr @__kstrtab_ieee80211_queue_delayed_work, ptr @__kstrtabns_ieee80211_queue_delayed_work }, section "___ksymtab+ieee80211_queue_delayed_work", align 4
@ieee80211_build_preq_ies.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"not enough space for preq custom IEs\0A\00", align 1
@.str.2 = private unnamed_addr constant [111 x i8] c"Hardware became unavailable upon resume. This could be a software issue prior to suspend or a hardware issue.\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Hardware became unavailable during restart.\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_ieee80211_resume_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_resume_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_resume_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_resume_disconnect to i32), ptr @__kstrtab_ieee80211_resume_disconnect, ptr @__kstrtabns_ieee80211_resume_disconnect }, section "___ksymtab_gpl+ieee80211_resume_disconnect", align 4
@ieee80211_recalc_min_chandef.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ieee80211_enable_rssi_reports = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_enable_rssi_reports = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_enable_rssi_reports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_enable_rssi_reports to i32), ptr @__kstrtab_ieee80211_enable_rssi_reports, ptr @__kstrtabns_ieee80211_enable_rssi_reports }, section "___ksymtab+ieee80211_enable_rssi_reports", align 4
@__kstrtab_ieee80211_disable_rssi_reports = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_disable_rssi_reports = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_disable_rssi_reports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_disable_rssi_reports to i32), ptr @__kstrtab_ieee80211_disable_rssi_reports, ptr @__kstrtabns_ieee80211_disable_rssi_reports }, section "___ksymtab+ieee80211_disable_rssi_reports", align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"\016%s: Missing iftype sband data/HE cap\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"\016%s: HE is not advertised on (on %d MHz), expect issues\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"\016%s: HE 6GHz operation missing (on %d MHz), expect issues\0A\00", align 1
@.str.7 = private unnamed_addr constant [78 x i8] c"\016%s: HE 6GHz operation resulted in invalid chandef: %d MHz/%d/%d MHz/%d MHz\0A\00", align 1
@ieee80211_ave_rssi.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ieee80211_ave_rssi = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_ave_rssi = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_ave_rssi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_ave_rssi to i32), ptr @__kstrtab_ieee80211_ave_rssi, ptr @__kstrtabns_ieee80211_ave_rssi }, section "___ksymtab_gpl+ieee80211_ave_rssi", align 4
@ieee80211_calculate_rx_timestamp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Invalid bitrate: flags=0x%llx, idx=%d, vht_nss=%d\0A\00", align 1
@__kstrtab_ieee80211_radar_detected = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_radar_detected = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_radar_detected = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_radar_detected to i32), ptr @__kstrtab_ieee80211_radar_detected, ptr @__kstrtabns_ieee80211_radar_detected }, section "___ksymtab+ieee80211_radar_detected", align 4
@ieee80211_chandef_downgrade.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_chandef_downgrade.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_chandef_downgrade.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_smps_is_restrictive.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ieee80211_update_p2p_noa = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_update_p2p_noa = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_update_p2p_noa = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_update_p2p_noa to i32), ptr @__kstrtab_ieee80211_update_p2p_noa, ptr @__kstrtabns_ieee80211_update_p2p_noa }, section "___ksymtab+ieee80211_update_p2p_noa", align 4
@__kstrtab_ieee80211_parse_p2p_noa = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_parse_p2p_noa = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_parse_p2p_noa = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_parse_p2p_noa to i32), ptr @__kstrtab_ieee80211_parse_p2p_noa, ptr @__kstrtabns_ieee80211_parse_p2p_noa }, section "___ksymtab+ieee80211_parse_p2p_noa", align 4
@__kstrtab_ieee80211_txq_get_depth = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_txq_get_depth = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_txq_get_depth = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_txq_get_depth to i32), ptr @__kstrtab_ieee80211_txq_get_depth, ptr @__kstrtabns_ieee80211_txq_get_depth }, section "___ksymtab+ieee80211_txq_get_depth", align 4
@ieee80211_ac_to_qos_mask = dso_local local_unnamed_addr constant [4 x i8] c"\01\02\08\04", align 1
@ieee80211_encode_usf.listen_int_usf = internal unnamed_addr constant [4 x i32] [i32 1, i32 10, i32 1000, i32 10000], align 4
@ieee80211_encode_usf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_wake_tx_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@__tracepoint_drv_wake_tx_queue = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_wake_queue = external dso_local global %struct.tracepoint, align 4
@__tracepoint_stop_queue = external dso_local global %struct.tracepoint, align 4
@drv_flush.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_flush = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@.str.14 = private unnamed_addr constant [50 x i8] c"\014queueing ieee80211 work while going to suspend\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.15 = private unnamed_addr constant [23 x i8] c"include/net/cfg80211.h\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"net/mac80211/ieee80211_i.h\00", align 1
@ieee80211_build_preq_ies_band.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_build_preq_ies_band.before_extrates = internal constant [3 x i8] c"\00\01\0A", align 1
@ieee80211_build_preq_ies_band.before_ht = internal constant [2 x i8] c"\03;", align 1
@ieee80211_build_preq_ies_band.before_vht = internal constant [6 x i8] c"H\7FTakr", align 1
@ieee80211_build_preq_ies_band.before_he = internal constant [3 x i8] c"\FF\02\EF", align 1
@ieee80211_build_preq_ies_band.__already_done.17 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"not enough space for preq IEs\0A\00", align 1
@__tracepoint_drv_resume = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_set_frag_threshold = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_set_rts_threshold = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_set_coverage_class = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_add_chanctx = external dso_local global %struct.tracepoint, align 4
@drv_assign_vif_chanctx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@drv_assign_vif_chanctx.__already_done.19 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_assign_vif_chanctx = external dso_local global %struct.tracepoint, align 4
@drv_join_ibss.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_join_ibss = external dso_local global %struct.tracepoint, align 4
@drv_start_ap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_start_ap = external dso_local global %struct.tracepoint, align 4
@drv_start_nan.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_start_nan = external dso_local global %struct.tracepoint, align 4
@drv_add_nan_func.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_add_nan_func = external dso_local global %struct.tracepoint, align 4
@__tracepoint_drv_reconfig_complete = external dso_local global %struct.tracepoint, align 4
@__tracepoint_api_enable_rssi_reports = external dso_local global %struct.tracepoint, align 4
@ieee80211_have_rx_timestamp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_api_radar_detected = external dso_local global %struct.tracepoint, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab_ieee80211_ave_rssi, ptr @__ksymtab_ieee80211_ctstoself_duration, ptr @__ksymtab_ieee80211_disable_rssi_reports, ptr @__ksymtab_ieee80211_enable_rssi_reports, ptr @__ksymtab_ieee80211_generic_frame_duration, ptr @__ksymtab_ieee80211_get_bssid, ptr @__ksymtab_ieee80211_iterate_active_interfaces_atomic, ptr @__ksymtab_ieee80211_iterate_active_interfaces_mtx, ptr @__ksymtab_ieee80211_iterate_interfaces, ptr @__ksymtab_ieee80211_iterate_stations, ptr @__ksymtab_ieee80211_iterate_stations_atomic, ptr @__ksymtab_ieee80211_parse_p2p_noa, ptr @__ksymtab_ieee80211_queue_delayed_work, ptr @__ksymtab_ieee80211_queue_stopped, ptr @__ksymtab_ieee80211_queue_work, ptr @__ksymtab_ieee80211_radar_detected, ptr @__ksymtab_ieee80211_resume_disconnect, ptr @__ksymtab_ieee80211_rts_duration, ptr @__ksymtab_ieee80211_stop_queue, ptr @__ksymtab_ieee80211_stop_queues, ptr @__ksymtab_ieee80211_txq_get_depth, ptr @__ksymtab_ieee80211_update_p2p_noa, ptr @__ksymtab_ieee80211_vif_to_wdev, ptr @__ksymtab_ieee80211_wake_queue, ptr @__ksymtab_ieee80211_wake_queues, ptr @__ksymtab_wdev_to_ieee80211_vif, ptr @__ksymtab_wiphy_to_ieee80211_hw], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @wiphy_to_ieee80211_hw(ptr noundef readnone %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #21, !srcloc !9
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  ret ptr %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @ieee80211_get_bssid(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load i16, ptr %0, align 2
  %5 = and i16 %4, 12
  %6 = icmp eq i16 %5, 8
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = icmp ult i32 %1, 24
  %9 = and i16 %4, 768
  %10 = icmp eq i16 %9, 768
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %44, label %12

12:                                               ; preds = %7
  %13 = and i16 %4, 256
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ieee80211_hdr, ptr %0, i32 0, i32 2
  br label %44

17:                                               ; preds = %12
  %18 = and i16 %4, 512
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ieee80211_hdr, ptr %0, i32 0, i32 3
  br label %44

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ieee80211_hdr, ptr %0, i32 0, i32 4
  br label %44

24:                                               ; preds = %3
  %25 = and i16 %4, 252
  %26 = icmp eq i16 %25, 28
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ieee80211_ext, ptr %0, i32 0, i32 2
  br label %44

29:                                               ; preds = %24
  %30 = trunc i16 %5 to i4
  switch i4 %30, label %44 [
    i4 0, label %31
    i4 4, label %35
  ]

31:                                               ; preds = %29
  %32 = icmp ult i32 %1, 24
  %33 = getelementptr inbounds %struct.ieee80211_hdr, ptr %0, i32 0, i32 4
  %34 = select i1 %32, ptr null, ptr %33
  br label %44

35:                                               ; preds = %29
  %36 = trunc i16 %25 to i8
  switch i8 %36, label %44 [
    i8 -92, label %37
    i8 -124, label %39
  ]

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.ieee80211_hdr, ptr %0, i32 0, i32 2
  br label %44

39:                                               ; preds = %35
  switch i32 %2, label %44 [
    i32 2, label %40
    i32 3, label %42
    i32 4, label %42
  ]

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.ieee80211_hdr, ptr %0, i32 0, i32 3
  br label %44

42:                                               ; preds = %39, %39
  %43 = getelementptr inbounds %struct.ieee80211_hdr, ptr %0, i32 0, i32 2
  br label %44

44:                                               ; preds = %42, %40, %39, %37, %35, %31, %29, %27, %22, %20, %15, %7
  %45 = phi ptr [ %16, %15 ], [ %21, %20 ], [ %23, %22 ], [ %28, %27 ], [ %38, %37 ], [ %43, %42 ], [ %41, %40 ], [ null, %7 ], [ null, %39 ], [ %34, %31 ], [ null, %29 ], [ null, %35 ]
  ret ptr %45
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_tx_set_protected(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ieee80211_tx_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %11, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = load i16, ptr %8, align 2
  %10 = or i16 %9, 16384
  store i16 %10, ptr %8, align 2
  %11 = load ptr, ptr %6, align 4
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee80211_frame_duration(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 {
  %7 = icmp eq i32 %0, 1
  %8 = icmp ne i32 %3, 0
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = shl i32 36, %5
  %12 = mul i32 %1, 80
  %13 = shl i32 %2, 2
  %14 = add i32 %12, 539
  %15 = add i32 %14, %13
  %16 = udiv i32 %15, %13
  %17 = shl i32 %16, 2
  %18 = add i32 %17, %11
  br label %27

19:                                               ; preds = %6
  %20 = icmp eq i32 %4, 0
  %21 = select i1 %20, i32 202, i32 106
  %22 = mul i32 %1, 80
  %23 = add i32 %22, 319
  %24 = add i32 %23, %2
  %25 = udiv i32 %24, %2
  %26 = add i32 %25, %21
  br label %27

27:                                               ; preds = %19, %10
  %28 = phi i32 [ %18, %10 ], [ %26, %19 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @ieee80211_generic_frame_duration(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %5
  %8 = getelementptr i8, ptr %1, i32 29
  %9 = load i8, ptr %8, align 1, !range !10
  %10 = zext i8 %9 to i32
  %11 = getelementptr i8, ptr %1, i32 -1904
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = load i32, ptr %4, align 4
  %17 = and i32 %16, 16
  br label %18

18:                                               ; preds = %15, %7
  %19 = phi i32 [ %17, %15 ], [ 0, %7 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %20 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 9
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %21, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 7
  %27 = zext i1 %26 to i32
  %28 = icmp eq i32 %25, 6
  %29 = select i1 %28, i32 2, i32 %27
  br label %30

30:                                               ; preds = %23, %18
  %31 = phi i32 [ %29, %23 ], [ 0, %18 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %32

32:                                               ; preds = %30, %5
  %33 = phi i32 [ %19, %30 ], [ 0, %5 ]
  %34 = phi i32 [ %31, %30 ], [ 0, %5 ]
  %35 = phi i32 [ %10, %30 ], [ 0, %5 ]
  %36 = getelementptr inbounds %struct.ieee80211_rate, ptr %4, i32 0, i32 1
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = icmp eq i32 %2, 1
  %40 = icmp ne i32 %33, 0
  %41 = or i1 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = shl nuw nsw i32 36, %34
  %44 = mul i32 %3, 80
  %45 = shl nuw nsw i32 %38, 2
  %46 = add i32 %44, 539
  %47 = add i32 %46, %45
  %48 = udiv i32 %47, %45
  %49 = shl i32 %48, 2
  %50 = add i32 %49, %43
  br label %59

51:                                               ; preds = %32
  %52 = icmp eq i32 %35, 0
  %53 = select i1 %52, i32 202, i32 106
  %54 = mul i32 %3, 80
  %55 = add i32 %54, 319
  %56 = add i32 %55, %38
  %57 = udiv i32 %56, %38
  %58 = add i32 %57, %53
  br label %59

59:                                               ; preds = %51, %42
  %60 = phi i32 [ %50, %42 ], [ %58, %51 ]
  %61 = trunc i32 %60 to i16
  ret i16 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @ieee80211_rts_duration(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %3, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 7
  %10 = getelementptr %struct.wiphy, ptr %6, i32 0, i32 53, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %3, i32 0, i32 2, i32 1, i32 4
  %15 = load i8, ptr %14, align 4
  %16 = sext i8 %15 to i32
  %17 = getelementptr %struct.ieee80211_rate, ptr %13, i32 %16
  %18 = icmp eq ptr %1, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %4
  %20 = getelementptr i8, ptr %1, i32 29
  %21 = load i8, ptr %20, align 1, !range !10
  %22 = zext i8 %21 to i32
  %23 = getelementptr i8, ptr %1, i32 -1904
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, ptr %17, align 4
  %29 = and i32 %28, 16
  br label %30

30:                                               ; preds = %27, %19
  %31 = phi i32 [ %29, %27 ], [ 0, %19 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %32 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 9
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %33, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 7
  %39 = zext i1 %38 to i32
  %40 = icmp eq i32 %37, 6
  %41 = select i1 %40, i32 2, i32 %39
  br label %42

42:                                               ; preds = %35, %30
  %43 = phi i32 [ %41, %35 ], [ 0, %30 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %44

44:                                               ; preds = %42, %4
  %45 = phi i32 [ %22, %42 ], [ 0, %4 ]
  %46 = phi i32 [ %31, %42 ], [ 0, %4 ]
  %47 = phi i32 [ %43, %42 ], [ 0, %4 ]
  %48 = getelementptr %struct.ieee80211_rate, ptr %13, i32 %16, i32 1
  %49 = load i16, ptr %48, align 4
  %50 = zext i16 %49 to i32
  %51 = shl nsw i32 -1, %47
  %52 = xor i32 %51, -1
  %53 = add i32 %52, %50
  %54 = lshr i32 %53, %47
  %55 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %11, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 1
  %58 = icmp ne i32 %46, 0
  %59 = or i1 %58, %57
  br i1 %59, label %60, label %75

60:                                               ; preds = %44
  %61 = shl nuw nsw i32 %54, 2
  %62 = add nuw nsw i32 %61, 1339
  %63 = udiv i32 %62, %61
  %64 = mul i32 %2, 80
  %65 = add i32 %64, 539
  %66 = add i32 %65, %61
  %67 = udiv i32 %66, %61
  %68 = add i32 %67, %63
  %69 = shl i32 %68, 2
  %70 = shl nuw nsw i32 72, %47
  %71 = add i32 %70, %69
  %72 = shl nuw nsw i32 36, %47
  %73 = shl nuw nsw i32 %63, 2
  %74 = add nuw nsw i32 %73, %72
  br label %88

75:                                               ; preds = %44
  %76 = icmp eq i32 %45, 0
  %77 = select i1 %76, i32 202, i32 106
  %78 = add nuw nsw i32 %54, 1119
  %79 = udiv i32 %78, %54
  %80 = mul i32 %2, 80
  %81 = add i32 %80, 319
  %82 = add i32 %81, %54
  %83 = udiv i32 %82, %54
  %84 = select i1 %76, i32 404, i32 212
  %85 = add i32 %84, %79
  %86 = add i32 %85, %83
  %87 = add nuw nsw i32 %79, %77
  br label %88

88:                                               ; preds = %75, %60
  %89 = phi i32 [ %71, %60 ], [ %86, %75 ]
  %90 = phi i32 [ %74, %60 ], [ %87, %75 ]
  %91 = add i32 %90, %89
  %92 = trunc i32 %91 to i16
  ret i16 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @ieee80211_ctstoself_duration(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %3, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 7
  %10 = getelementptr %struct.wiphy, ptr %6, i32 0, i32 53, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %3, i32 0, i32 2, i32 1, i32 4
  %15 = load i8, ptr %14, align 4
  %16 = sext i8 %15 to i32
  %17 = getelementptr %struct.ieee80211_rate, ptr %13, i32 %16
  %18 = icmp eq ptr %1, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %4
  %20 = getelementptr i8, ptr %1, i32 29
  %21 = load i8, ptr %20, align 1, !range !10
  %22 = zext i8 %21 to i32
  %23 = getelementptr i8, ptr %1, i32 -1904
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, ptr %17, align 4
  %29 = and i32 %28, 16
  br label %30

30:                                               ; preds = %27, %19
  %31 = phi i32 [ %29, %27 ], [ 0, %19 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %32 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 9
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %33, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 7
  %39 = zext i1 %38 to i32
  %40 = icmp eq i32 %37, 6
  %41 = select i1 %40, i32 2, i32 %39
  br label %42

42:                                               ; preds = %35, %30
  %43 = phi i32 [ %41, %35 ], [ 0, %30 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %44

44:                                               ; preds = %42, %4
  %45 = phi i32 [ %22, %42 ], [ 0, %4 ]
  %46 = phi i32 [ %31, %42 ], [ 0, %4 ]
  %47 = phi i32 [ %43, %42 ], [ 0, %4 ]
  %48 = getelementptr %struct.ieee80211_rate, ptr %13, i32 %16, i32 1
  %49 = load i16, ptr %48, align 4
  %50 = zext i16 %49 to i32
  %51 = shl nsw i32 -1, %47
  %52 = xor i32 %51, -1
  %53 = add i32 %52, %50
  %54 = lshr i32 %53, %47
  %55 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %11, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 1
  %58 = icmp ne i32 %46, 0
  %59 = or i1 %58, %57
  br i1 %59, label %60, label %72

60:                                               ; preds = %44
  %61 = shl nuw nsw i32 36, %47
  %62 = mul i32 %2, 80
  %63 = shl nuw nsw i32 %54, 2
  %64 = add i32 %62, 539
  %65 = add i32 %64, %63
  %66 = udiv i32 %65, %63
  %67 = shl i32 %66, 2
  %68 = add i32 %67, %61
  %69 = load i32, ptr %3, align 8
  %70 = and i32 %69, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %83, label %96

72:                                               ; preds = %44
  %73 = icmp eq i32 %45, 0
  %74 = select i1 %73, i32 202, i32 106
  %75 = mul i32 %2, 80
  %76 = add i32 %75, 319
  %77 = add i32 %76, %54
  %78 = udiv i32 %77, %54
  %79 = add i32 %78, %74
  %80 = load i32, ptr %3, align 8
  %81 = and i32 %80, 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %96

83:                                               ; preds = %60
  %84 = add nuw nsw i32 %63, 1339
  %85 = udiv i32 %84, %63
  %86 = shl nuw nsw i32 %85, 2
  %87 = add nuw nsw i32 %86, %61
  br label %92

88:                                               ; preds = %72
  %89 = add nuw nsw i32 %54, 1119
  %90 = udiv i32 %89, %54
  %91 = add nuw nsw i32 %90, %74
  br label %92

92:                                               ; preds = %88, %83
  %93 = phi i32 [ %68, %83 ], [ %79, %88 ]
  %94 = phi i32 [ %87, %83 ], [ %91, %88 ]
  %95 = add i32 %94, %93
  br label %96

96:                                               ; preds = %92, %72, %60
  %97 = phi i32 [ %68, %60 ], [ %95, %92 ], [ %79, %72 ]
  %98 = trunc i32 %97 to i16
  ret i16 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_wake_txqs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -1916
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  %4 = getelementptr i8, ptr %0, i32 -608
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #21
  store i32 %5, ptr %2, align 4
  call fastcc void @_ieee80211_wake_txqs(ptr noundef %3, ptr noundef nonnull %2)
  %6 = load i32, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_ieee80211_wake_txqs(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %3 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %4 = load i16, ptr %3, align 4
  %5 = icmp ult i16 %4, 4
  %6 = select i1 %5, i32 1, i32 4
  %7 = icmp eq i16 %4, 0
  br i1 %7, label %210, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  br label %11

11:                                               ; preds = %205, %8
  %12 = phi i16 [ %4, %8 ], [ %206, %205 ]
  %13 = phi i32 [ 0, %8 ], [ %207, %205 ]
  %14 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 10, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %205

17:                                               ; preds = %11
  %18 = load i32, ptr %1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %18) #21
  %19 = load volatile ptr, ptr %10, align 8
  %20 = icmp eq ptr %19, %10
  br i1 %20, label %202, label %24

21:                                               ; preds = %199
  %22 = load volatile ptr, ptr %25, align 8
  %23 = icmp eq ptr %22, %10
  br i1 %23, label %202, label %24

24:                                               ; preds = %21, %17
  %25 = phi ptr [ %22, %21 ], [ %19, %17 ]
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %25, i32 0, i32 58, i32 6
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %25, i32 0, i32 7
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %25, i32 0, i32 58
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %25, i32 0, i32 49
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %25, i32 0, i32 58, i32 8
  br label %31

31:                                               ; preds = %199, %24
  %32 = phi i32 [ 0, %24 ], [ %200, %199 ]
  %33 = getelementptr %struct.ieee80211_sub_if_data, ptr %25, i32 0, i32 58, i32 7, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %13, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i8, ptr %26, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %13, %39
  br i1 %40, label %41, label %199

41:                                               ; preds = %37, %31
  %42 = load ptr, ptr %27, align 4
  %43 = tail call ptr @llvm.thread.pointer() #21
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %45 = load volatile i32, ptr %44, align 4
  %46 = add i32 %45, 512
  store volatile i32 %46, ptr %44, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %47 = getelementptr inbounds %struct.ieee80211_local, ptr %42, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock(ptr noundef %47) #21
  %48 = load i32, ptr %28, align 8
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load ptr, ptr %29, align 4
  %52 = getelementptr inbounds %struct.ieee80211_if_ap, ptr %51, i32 0, i32 6
  br label %53

53:                                               ; preds = %50, %41
  %54 = phi ptr [ %52, %50 ], [ null, %41 ]
  %55 = getelementptr %struct.ieee80211_sub_if_data, ptr %25, i32 0, i32 58, i32 14, i32 %32
  store i8 0, ptr %55, align 1
  %56 = getelementptr inbounds %struct.ieee80211_local, ptr %42, i32 0, i32 49
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %131, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.ieee80211_local, ptr %42, i32 0, i32 36
  %61 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %62 = getelementptr inbounds %struct.ieee80211_local, ptr %42, i32 0, i32 8
  br label %63

63:                                               ; preds = %128, %59
  %64 = phi ptr [ %57, %59 ], [ %129, %128 ]
  %65 = getelementptr inbounds %struct.sta_info, ptr %64, i32 0, i32 6
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %25
  br i1 %67, label %68, label %128

68:                                               ; preds = %125, %63
  %69 = phi i32 [ %126, %125 ], [ 0, %63 ]
  %70 = getelementptr %struct.sta_info, ptr %64, i32 0, i32 46, i32 28, i32 %69
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %125, label %73

73:                                               ; preds = %68
  %74 = getelementptr i8, ptr %71, i32 -164
  %75 = getelementptr inbounds %struct.ieee80211_txq, ptr %71, i32 0, i32 3
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %32, %77
  br i1 %78, label %79, label %125

79:                                               ; preds = %73
  %80 = getelementptr i8, ptr %71, i32 -4
  %81 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %80) #21
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %125, label %83

83:                                               ; preds = %79
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !14
  %84 = load i16, ptr %47, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %47, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !17
  %86 = load ptr, ptr %71, align 4
  %87 = getelementptr i8, ptr %86, i32 -2264
  %88 = load i8, ptr %60, align 2, !range !10
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  tail call void @_set_bit(i32 noundef 3, ptr noundef %80) #21
  br label %124

91:                                               ; preds = %83
  %92 = getelementptr i8, ptr %86, i32 -1904
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 32
  %95 = icmp eq i32 %94, 0
  %96 = load i1, ptr @drv_wake_tx_queue.__already_done, align 1
  %97 = xor i1 %96, true
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %98, label %99, label %105, !prof !8

99:                                               ; preds = %91
  store i1 true, ptr @drv_wake_tx_queue.__already_done, align 1
  %100 = getelementptr i8, ptr %86, i32 -1912
  %101 = load ptr, ptr %100, align 8
  %102 = icmp eq ptr %101, null
  %103 = getelementptr i8, ptr %86, i32 -1896
  %104 = select i1 %102, ptr %103, ptr %101
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1228, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %104, i32 noundef %93) #21
  br label %105

105:                                              ; preds = %99, %91
  br i1 %95, label %124, label %106

106:                                              ; preds = %105
  %107 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_wake_tx_queue, i32 0, i32 1), align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load i32, ptr %61, align 8
  %111 = lshr i32 %110, 5
  %112 = getelementptr i32, ptr @__cpu_online_mask, i32 %111
  %113 = load volatile i32, ptr %112, align 4
  %114 = and i32 %110, 31
  %115 = shl nuw i32 1, %114
  %116 = and i32 %115, %113
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %109
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !18
  %119 = tail call i32 @__traceiter_drv_wake_tx_queue(ptr noundef null, ptr noundef %42, ptr noundef %87, ptr noundef %74) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !19
  br label %120

120:                                              ; preds = %118, %109, %106
  %121 = load ptr, ptr %62, align 4
  %122 = getelementptr inbounds %struct.ieee80211_ops, ptr %121, i32 0, i32 89
  %123 = load ptr, ptr %122, align 4
  tail call void %123(ptr noundef %42, ptr noundef nonnull %71) #21
  br label %124

124:                                              ; preds = %120, %105, %90
  tail call void @_raw_spin_lock(ptr noundef %47) #21
  br label %125

125:                                              ; preds = %124, %79, %73, %68
  %126 = add nuw nsw i32 %69, 1
  %127 = icmp eq i32 %126, 17
  br i1 %127, label %128, label %68

128:                                              ; preds = %125, %63
  %129 = load volatile ptr, ptr %64, align 4
  %130 = icmp eq ptr %129, %56
  br i1 %130, label %131, label %63

131:                                              ; preds = %128, %53
  %132 = load ptr, ptr %30, align 8
  %133 = icmp eq ptr %132, null
  br i1 %133, label %195, label %134

134:                                              ; preds = %131
  %135 = getelementptr i8, ptr %132, i32 -164
  %136 = getelementptr i8, ptr %132, i32 -4
  %137 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %136) #21
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %195, label %139

139:                                              ; preds = %134
  %140 = icmp eq ptr %54, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.ps_data, ptr %54, i32 0, i32 2
  %143 = load volatile i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %195

145:                                              ; preds = %141, %139
  %146 = load ptr, ptr %30, align 8
  %147 = getelementptr inbounds %struct.ieee80211_txq, ptr %146, i32 0, i32 3
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %32, %149
  br i1 %150, label %151, label %195

151:                                              ; preds = %145
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !14
  %152 = load i16, ptr %47, align 4
  %153 = add i16 %152, 1
  store i16 %153, ptr %47, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !17
  %154 = load ptr, ptr %132, align 4
  %155 = getelementptr i8, ptr %154, i32 -2264
  %156 = getelementptr inbounds %struct.ieee80211_local, ptr %42, i32 0, i32 36
  %157 = load i8, ptr %156, align 2, !range !10
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %151
  tail call void @_set_bit(i32 noundef 3, ptr noundef %136) #21
  br label %198

160:                                              ; preds = %151
  %161 = getelementptr i8, ptr %154, i32 -1904
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 32
  %164 = icmp eq i32 %163, 0
  %165 = load i1, ptr @drv_wake_tx_queue.__already_done, align 1
  %166 = xor i1 %165, true
  %167 = select i1 %164, i1 %166, i1 false
  br i1 %167, label %168, label %174, !prof !8

168:                                              ; preds = %160
  store i1 true, ptr @drv_wake_tx_queue.__already_done, align 1
  %169 = getelementptr i8, ptr %154, i32 -1912
  %170 = load ptr, ptr %169, align 8
  %171 = icmp eq ptr %170, null
  %172 = getelementptr i8, ptr %154, i32 -1896
  %173 = select i1 %171, ptr %172, ptr %170
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1228, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %173, i32 noundef %162) #21
  br label %174

174:                                              ; preds = %168, %160
  br i1 %164, label %198, label %175

175:                                              ; preds = %174
  %176 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_wake_tx_queue, i32 0, i32 1), align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %180 = load i32, ptr %179, align 8
  %181 = lshr i32 %180, 5
  %182 = getelementptr i32, ptr @__cpu_online_mask, i32 %181
  %183 = load volatile i32, ptr %182, align 4
  %184 = and i32 %180, 31
  %185 = shl nuw i32 1, %184
  %186 = and i32 %185, %183
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %178
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !18
  %189 = tail call i32 @__traceiter_drv_wake_tx_queue(ptr noundef null, ptr noundef %42, ptr noundef %155, ptr noundef %135) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !19
  br label %190

190:                                              ; preds = %188, %178, %175
  %191 = getelementptr inbounds %struct.ieee80211_local, ptr %42, i32 0, i32 8
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.ieee80211_ops, ptr %192, i32 0, i32 89
  %194 = load ptr, ptr %193, align 4
  tail call void %194(ptr noundef %42, ptr noundef nonnull %132) #21
  br label %198

195:                                              ; preds = %145, %141, %134, %131
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !14
  %196 = load i16, ptr %47, align 4
  %197 = add i16 %196, 1
  store i16 %197, ptr %47, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !17
  br label %198

198:                                              ; preds = %195, %190, %174, %159
  tail call fastcc void @local_bh_enable() #21
  br label %199

199:                                              ; preds = %198, %37
  %200 = add nuw nsw i32 %32, 1
  %201 = icmp eq i32 %200, %6
  br i1 %201, label %21, label %31

202:                                              ; preds = %21, %17
  %203 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #21
  store i32 %203, ptr %1, align 4
  %204 = load i16, ptr %3, align 4
  br label %205

205:                                              ; preds = %202, %11
  %206 = phi i16 [ %12, %11 ], [ %204, %202 ]
  %207 = add nuw nsw i32 %13, 1
  %208 = zext i16 %206 to i32
  %209 = icmp ult i32 %207, %208
  br i1 %209, label %11, label %210

210:                                              ; preds = %205, %2
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_propagate_queue_wake(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ieee80211_ops, ptr %4, i32 0, i32 89
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %60

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %10 = load i16, ptr %9, align 4
  %11 = icmp ult i16 %10, 4
  %12 = select i1 %11, i32 1, i32 4
  %13 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %14 = load volatile ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %60, label %16

16:                                               ; preds = %57, %8
  %17 = phi ptr [ %58, %57 ], [ %14, %8 ]
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %17, i32 0, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %57, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %17, i32 0, i32 58, i32 6
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, -1
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = zext i8 %23 to i32
  %27 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 10, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %25, %21
  br label %31

31:                                               ; preds = %54, %30
  %32 = phi i32 [ %55, %54 ], [ 0, %30 ]
  %33 = getelementptr %struct.ieee80211_sub_if_data, ptr %17, i32 0, i32 58, i32 7, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = load i8, ptr %22, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 10, i32 %35
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 53, i32 %35
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %49, label %54

49:                                               ; preds = %45, %31
  %50 = load ptr, ptr %18, align 8
  %51 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 87
  %52 = load ptr, ptr %51, align 64
  %53 = getelementptr %struct.netdev_queue, ptr %52, i32 %32
  tail call void @netif_tx_wake_queue(ptr noundef %53) #21
  br label %54

54:                                               ; preds = %49, %45, %41, %37
  %55 = add nuw nsw i32 %32, 1
  %56 = icmp eq i32 %55, %12
  br i1 %56, label %57, label %31

57:                                               ; preds = %54, %25, %16
  %58 = load volatile ptr, ptr %17, align 8
  %59 = icmp eq ptr %58, %13
  br i1 %59, label %60, label %16

60:                                               ; preds = %57, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_wake_queue_by_reason(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 12
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #21
  store i32 %7, ptr %5, align 4
  call fastcc void @__ieee80211_wake_queue(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull %5)
  %8 = load i32, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ieee80211_wake_queue(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = trunc i32 %1 to i16
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wake_queue, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = tail call ptr @llvm.thread.pointer() #21
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
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !20
  %21 = tail call i32 @__traceiter_wake_queue(ptr noundef null, ptr noundef %0, i16 noundef zeroext %6, i32 noundef %2) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  br label %22

22:                                               ; preds = %20, %9, %5
  %23 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = icmp sgt i32 %25, %1
  br i1 %26, label %28, label %27, !prof !22

27:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 442, i32 noundef 9, ptr noundef null) #21
  br label %137

28:                                               ; preds = %22
  %29 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 10, i32 %1
  %30 = lshr i32 %2, 5
  %31 = getelementptr i32, ptr %29, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %2, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %137, label %37

37:                                               ; preds = %28
  %38 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 11, i32 %1, i32 %2
  br i1 %3, label %39, label %46

39:                                               ; preds = %37
  %40 = load i32, ptr %38, align 4
  %41 = add i32 %40, -1
  store i32 %41, ptr %38, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44, !prof !8

43:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 452, i32 noundef 9, ptr noundef null) #21
  br label %46

44:                                               ; preds = %39
  %45 = icmp eq i32 %41, 0
  br i1 %45, label %47, label %51

46:                                               ; preds = %43, %37
  store i32 0, ptr %38, align 4
  br label %47

47:                                               ; preds = %46, %44
  %48 = xor i32 %34, -1
  %49 = load i32, ptr %31, align 4
  %50 = and i32 %49, %48
  store i32 %50, ptr %31, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, ptr %29, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %137

54:                                               ; preds = %51
  %55 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 53, i32 %1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %58, label %116

58:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %59 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.ieee80211_ops, ptr %60, i32 0, i32 89
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %115

64:                                               ; preds = %58
  %65 = load i16, ptr %23, align 4
  %66 = icmp ult i16 %65, 4
  %67 = select i1 %66, i32 1, i32 4
  %68 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %69 = load volatile ptr, ptr %68, align 8
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %115, label %71

71:                                               ; preds = %112, %64
  %72 = phi ptr [ %113, %112 ], [ %69, %64 ]
  %73 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %72, i32 0, i32 6
  %74 = load ptr, ptr %73, align 8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %112, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %72, i32 0, i32 58, i32 6
  %78 = load i8, ptr %77, align 1
  %79 = icmp eq i8 %78, -1
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = zext i8 %78 to i32
  %82 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 10, i32 %81
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %80, %76
  br label %86

86:                                               ; preds = %109, %85
  %87 = phi i32 [ %110, %109 ], [ 0, %85 ]
  %88 = getelementptr %struct.ieee80211_sub_if_data, ptr %72, i32 0, i32 58, i32 7, i32 %87
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %90, %1
  br i1 %91, label %104, label %92

92:                                               ; preds = %86
  %93 = load i8, ptr %77, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, %1
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  %97 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 10, i32 %90
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 53, i32 %90
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %101
  br i1 %103, label %104, label %109

104:                                              ; preds = %100, %86
  %105 = load ptr, ptr %73, align 8
  %106 = getelementptr inbounds %struct.net_device, ptr %105, i32 0, i32 87
  %107 = load ptr, ptr %106, align 64
  %108 = getelementptr %struct.netdev_queue, ptr %107, i32 %87
  tail call void @netif_tx_wake_queue(ptr noundef %108) #21
  br label %109

109:                                              ; preds = %104, %100, %96, %92
  %110 = add nuw nsw i32 %87, 1
  %111 = icmp eq i32 %110, %67
  br i1 %111, label %112, label %86

112:                                              ; preds = %109, %80, %71
  %113 = load volatile ptr, ptr %72, align 8
  %114 = icmp eq ptr %113, %68
  br i1 %114, label %115, label %71

115:                                              ; preds = %112, %64, %58
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %122

116:                                              ; preds = %54
  %117 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 54, i32 1
  %118 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %117) #21
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 54
  tail call void @__tasklet_schedule(ptr noundef %121) #21
  br label %122

122:                                              ; preds = %120, %116, %115
  %123 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.ieee80211_ops, ptr %124, i32 0, i32 89
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %137, label %128

128:                                              ; preds = %122
  %129 = icmp eq i32 %2, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 55, i32 1
  %132 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %131) #21
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 55
  tail call void @__tasklet_schedule(ptr noundef %135) #21
  br label %137

136:                                              ; preds = %128
  tail call fastcc void @_ieee80211_wake_txqs(ptr noundef %0, ptr noundef %4)
  br label %137

137:                                              ; preds = %136, %134, %130, %122, %51, %28, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_wake_queue(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 12
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #21
  store i32 %5, ptr %3, align 4
  call fastcc void @__ieee80211_wake_queue(ptr noundef %0, i32 noundef %1, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %3) #21
  %6 = load i32, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_stop_queue_by_reason(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 12
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #21
  tail call fastcc void @__ieee80211_stop_queue(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ieee80211_stop_queue(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = trunc i32 %1 to i16
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_stop_queue, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = tail call ptr @llvm.thread.pointer() #21
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
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  %20 = tail call i32 @__traceiter_stop_queue(ptr noundef null, ptr noundef %0, i16 noundef zeroext %5, i32 noundef %2) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  br label %21

21:                                               ; preds = %19, %8, %4
  %22 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = icmp sgt i32 %24, %1
  br i1 %25, label %27, label %26, !prof !22

26:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 515, i32 noundef 9, ptr noundef null) #21
  br label %91

27:                                               ; preds = %21
  %28 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 11, i32 %1, i32 %2
  br i1 %3, label %29, label %32

29:                                               ; preds = %27
  %30 = load i32, ptr %28, align 4
  %31 = add i32 %30, 1
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %31, %29 ], [ 1, %27 ]
  store i32 %33, ptr %28, align 4
  %34 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 10, i32 %1
  %35 = and i32 %2, 31
  %36 = shl nuw i32 1, %35
  %37 = lshr i32 %2, 5
  %38 = getelementptr i32, ptr %34, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, ptr %38, align 4
  %41 = and i32 %39, %36
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %91

43:                                               ; preds = %32
  %44 = load i16, ptr %22, align 4
  %45 = icmp ult i16 %44, 4
  %46 = select i1 %45, i32 1, i32 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %47 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %48 = load volatile ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %90, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %52 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 1, i32 3
  br label %53

53:                                               ; preds = %87, %50
  %54 = phi ptr [ %48, %50 ], [ %88, %87 ]
  %55 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %54, i32 0, i32 6
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %87, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %54, i32 0, i32 58, i32 6
  br label %60

60:                                               ; preds = %84, %58
  %61 = phi i32 [ 0, %58 ], [ %85, %84 ]
  %62 = getelementptr %struct.ieee80211_sub_if_data, ptr %54, i32 0, i32 58, i32 7, i32 %61
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, %1
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load i8, ptr %59, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, %1
  br i1 %69, label %70, label %84

70:                                               ; preds = %66, %60
  %71 = load ptr, ptr %51, align 4
  %72 = getelementptr inbounds %struct.ieee80211_ops, ptr %71, i32 0, i32 89
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load ptr, ptr %55, align 8
  %77 = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 87
  %78 = load ptr, ptr %77, align 64
  %79 = getelementptr %struct.netdev_queue, ptr %78, i32 %61, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %79) #21
  br label %84

80:                                               ; preds = %70
  tail call void @_raw_spin_lock(ptr noundef %52) #21
  %81 = getelementptr %struct.ieee80211_sub_if_data, ptr %54, i32 0, i32 58, i32 14, i32 %61
  store i8 1, ptr %81, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !14
  %82 = load i16, ptr %52, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %52, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !17
  br label %84

84:                                               ; preds = %80, %75, %66
  %85 = add nuw nsw i32 %61, 1
  %86 = icmp eq i32 %85, %46
  br i1 %86, label %87, label %60

87:                                               ; preds = %84, %53
  %88 = load volatile ptr, ptr %54, align 8
  %89 = icmp eq ptr %88, %47
  br i1 %89, label %90, label %53

90:                                               ; preds = %87, %43
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %91

91:                                               ; preds = %90, %32, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_stop_queue(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 12
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #21
  tail call fastcc void @__ieee80211_stop_queue(ptr noundef %0, i32 noundef %1, i32 noundef 0, i1 noundef zeroext false) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_add_pending_skb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 580, i32 noundef 9, ptr noundef null) #21
  tail call void @ieee80211_free_txskb(ptr noundef %0, ptr noundef %1) #21
  br label %23

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 15
  %13 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 12
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #21
  store i32 %14, ptr %3, align 4
  tail call fastcc void @__ieee80211_stop_queue(ptr noundef %0, i32 noundef %12, i32 noundef 5, i1 noundef zeroext false)
  %15 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 53, i32 %12
  %16 = getelementptr inbounds %struct.sk_buff_list, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  store volatile ptr %15, ptr %1, align 8
  %18 = getelementptr inbounds %struct.anon.46, ptr %1, i32 0, i32 1
  store volatile ptr %17, ptr %18, align 4
  store volatile ptr %1, ptr %16, align 4
  store volatile ptr %1, ptr %17, align 4
  %19 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 53, i32 %12, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store volatile i32 %21, ptr %19, align 4
  call fastcc void @__ieee80211_wake_queue(ptr noundef %0, i32 noundef %12, i32 noundef 5, i1 noundef zeroext false, ptr noundef nonnull %3)
  %22 = load i32, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %22) #21
  br label %23

23:                                               ; preds = %8, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_add_pending_skbs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 12
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #21
  store i32 %5, ptr %3, align 4
  %6 = tail call ptr @skb_dequeue(ptr noundef %1) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %30, %2
  %9 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %41, label %33

12:                                               ; preds = %30, %2
  %13 = phi ptr [ %31, %30 ], [ %6, %2 ]
  %14 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 24
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 606, i32 noundef 9, ptr noundef null) #21
  tail call void @ieee80211_free_txskb(ptr noundef %0, ptr noundef nonnull %13) #21
  br label %30

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 15
  tail call fastcc void @__ieee80211_stop_queue(ptr noundef %0, i32 noundef %22, i32 noundef 5, i1 noundef zeroext false)
  %23 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 53, i32 %22
  %24 = getelementptr inbounds %struct.sk_buff_list, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  store volatile ptr %23, ptr %13, align 8
  %26 = getelementptr inbounds %struct.anon.46, ptr %13, i32 0, i32 1
  store volatile ptr %25, ptr %26, align 4
  store volatile ptr %13, ptr %24, align 4
  store volatile ptr %13, ptr %25, align 4
  %27 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 53, i32 %22, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store volatile i32 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %18, %17
  %31 = tail call ptr @skb_dequeue(ptr noundef %1) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %8, label %12

33:                                               ; preds = %33, %8
  %34 = phi i32 [ %35, %33 ], [ 0, %8 ]
  call fastcc void @__ieee80211_wake_queue(ptr noundef %0, i32 noundef %34, i32 noundef 5, i1 noundef zeroext false, ptr noundef nonnull %3)
  %35 = add nuw nsw i32 %34, 1
  %36 = load i16, ptr %9, align 4
  %37 = zext i16 %36 to i32
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %33, label %39

39:                                               ; preds = %33
  %40 = load i32, ptr %3, align 4
  br label %41

41:                                               ; preds = %39, %8
  %42 = phi i32 [ %40, %39 ], [ %5, %8 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %42) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_stop_queues_by_reason(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  store i32 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 12
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #21
  %8 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef %10, i32 noundef 0) #21
  %12 = load i16, ptr %8, align 4
  %13 = zext i16 %12 to i32
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %15, %4
  %16 = phi i32 [ %20, %15 ], [ %11, %4 ]
  call fastcc void @__ieee80211_stop_queue(ptr noundef %0, i32 noundef %16, i32 noundef %2, i1 noundef zeroext %3)
  %17 = load i16, ptr %8, align 4
  %18 = zext i16 %17 to i32
  %19 = add nsw i32 %16, 1
  %20 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef %18, i32 noundef %19) #21
  %21 = load i16, ptr %8, align 4
  %22 = zext i16 %21 to i32
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %15, label %24

24:                                               ; preds = %15, %4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_stop_queues(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store i32 65535, ptr %2, align 4
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 12
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #21
  %5 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %7, i32 noundef 0) #21
  %9 = load i16, ptr %5, align 4
  %10 = zext i16 %9 to i32
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %12, %1
  %13 = phi i32 [ %17, %12 ], [ %8, %1 ]
  call fastcc void @__ieee80211_stop_queue(ptr noundef %0, i32 noundef %13, i32 noundef 0, i1 noundef zeroext false) #21
  %14 = load i16, ptr %5, align 4
  %15 = zext i16 %14 to i32
  %16 = add nsw i32 %13, 1
  %17 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %15, i32 noundef %16) #21
  %18 = load i16, ptr %5, align 4
  %19 = zext i16 %18 to i32
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %12, label %21

21:                                               ; preds = %12, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_queue_stopped(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = icmp sgt i32 %5, %1
  br i1 %6, label %8, label %7, !prof !22

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 658, i32 noundef 9, ptr noundef null) #21
  br label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 12
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #21
  %11 = getelementptr %struct.ieee80211_local, ptr %0, i32 0, i32 10, i32 %1
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #21
  br label %14

14:                                               ; preds = %8, %7
  %15 = phi i32 [ 1, %7 ], [ %13, %8 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_wake_queues_by_reason(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 12
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #21
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef %11, i32 noundef 0) #21
  %13 = load i16, ptr %9, align 4
  %14 = zext i16 %13 to i32
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %16, %4
  %17 = phi i32 [ %21, %16 ], [ %12, %4 ]
  call fastcc void @__ieee80211_wake_queue(ptr noundef %0, i32 noundef %17, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull %6)
  %18 = load i16, ptr %9, align 4
  %19 = zext i16 %18 to i32
  %20 = add nsw i32 %17, 1
  %21 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef %19, i32 noundef %20) #21
  %22 = load i16, ptr %9, align 4
  %23 = zext i16 %22 to i32
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %16, label %25

25:                                               ; preds = %16
  %26 = load i32, ptr %6, align 4
  br label %27

27:                                               ; preds = %25, %4
  %28 = phi i32 [ %26, %25 ], [ %8, %4 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %28) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_wake_queues(ptr noundef %0) #0 {
  tail call void @ieee80211_wake_queues_by_reason(ptr noundef %0, i32 noundef 65535, i32 noundef 0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ieee80211_flush_queues(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_ops, ptr %7, i32 0, i32 50
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %136, label %11

11:                                               ; preds = %4
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 262144
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %13, %11
  %19 = icmp eq ptr %1, null
  br i1 %19, label %52, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 262144
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %20
  %26 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 7, i32 0
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw i32 1, %28
  %30 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 7, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw i32 1, %32
  %34 = or i32 %33, %29
  %35 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 7, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw i32 1, %37
  %39 = or i32 %34, %38
  %40 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 7, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw i32 1, %42
  %44 = or i32 %39, %43
  %45 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 6
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, -1
  %48 = zext i8 %46 to i32
  %49 = shl nuw i32 1, %48
  %50 = select i1 %47, i32 0, i32 %49
  %51 = or i32 %44, %50
  br label %58

52:                                               ; preds = %20, %18
  %53 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %54 = load i16, ptr %53, align 4
  %55 = zext i16 %54 to i32
  %56 = shl nsw i32 -1, %55
  %57 = xor i32 %56, -1
  br label %58

58:                                               ; preds = %52, %25, %13
  %59 = phi i32 [ %2, %13 ], [ %51, %25 ], [ %57, %52 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 %59, ptr %5, align 4
  %60 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 12
  %61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %60) #21
  %62 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %63 = load i16, ptr %62, align 4
  %64 = zext i16 %63 to i32
  %65 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef %64, i32 noundef 0) #21
  %66 = load i16, ptr %62, align 4
  %67 = zext i16 %66 to i32
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %69, %58
  %70 = phi i32 [ %74, %69 ], [ %65, %58 ]
  call fastcc void @__ieee80211_stop_queue(ptr noundef %0, i32 noundef %70, i32 noundef 7, i1 noundef zeroext false) #21
  %71 = load i16, ptr %62, align 4
  %72 = zext i16 %71 to i32
  %73 = add nsw i32 %70, 1
  %74 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef %72, i32 noundef %73) #21
  %75 = load i16, ptr %62, align 4
  %76 = zext i16 %75 to i32
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %69, label %78

78:                                               ; preds = %69, %58
  call void @_raw_spin_unlock_irqrestore(ptr noundef %60, i32 noundef %61) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %79 = icmp eq ptr %1, null
  %80 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %81 = select i1 %79, ptr null, ptr %80
  br i1 %79, label %97, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 8
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 32
  %86 = icmp eq i32 %85, 0
  %87 = load i1, ptr @drv_flush.__already_done, align 1
  %88 = xor i1 %87, true
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %96, !prof !8

90:                                               ; preds = %82
  store i1 true, ptr @drv_flush.__already_done, align 1
  %91 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 6
  %92 = load ptr, ptr %91, align 8
  %93 = icmp eq ptr %92, null
  %94 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %95 = select i1 %93, ptr %94, ptr %92
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 633, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %95, i32 noundef %84) #21
  br label %96

96:                                               ; preds = %90, %82
  br i1 %86, label %135, label %97

97:                                               ; preds = %96, %78
  %98 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_flush, i32 0, i32 1), align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = tail call ptr @llvm.thread.pointer() #21
  %102 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %103 = load i32, ptr %102, align 8
  %104 = lshr i32 %103, 5
  %105 = getelementptr i32, ptr @__cpu_online_mask, i32 %104
  %106 = load volatile i32, ptr %105, align 4
  %107 = and i32 %103, 31
  %108 = shl nuw i32 1, %107
  %109 = and i32 %108, %106
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %100
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !25
  %112 = call i32 @__traceiter_drv_flush(ptr noundef null, ptr noundef %0, i32 noundef %59, i1 noundef zeroext %3) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  br label %113

113:                                              ; preds = %111, %100, %97
  %114 = load ptr, ptr %6, align 4
  %115 = getelementptr inbounds %struct.ieee80211_ops, ptr %114, i32 0, i32 50
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  call void %116(ptr noundef %0, ptr noundef %81, i32 noundef %59, i1 noundef zeroext %3) #21
  br label %119

119:                                              ; preds = %118, %113
  %120 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %119
  %123 = tail call ptr @llvm.thread.pointer() #21
  %124 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %125 = load i32, ptr %124, align 8
  %126 = lshr i32 %125, 5
  %127 = getelementptr i32, ptr @__cpu_online_mask, i32 %126
  %128 = load volatile i32, ptr %127, align 4
  %129 = and i32 %125, 31
  %130 = shl nuw i32 1, %129
  %131 = and i32 %130, %128
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %122
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !27
  %134 = call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !28
  br label %135

135:                                              ; preds = %133, %122, %119, %96
  call void @ieee80211_wake_queues_by_reason(ptr noundef %0, i32 noundef %59, i32 noundef 7, i1 noundef zeroext false)
  br label %136

136:                                              ; preds = %135, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_flush_queues(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  tail call void @__ieee80211_flush_queues(ptr noundef %0, ptr noundef %1, i32 noundef 0, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_stop_vif_queues(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 262144
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %6
  %12 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 7, i32 0
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 1, %14
  %16 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 7, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 1, %18
  %20 = or i32 %19, %15
  %21 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 7, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 1, %23
  %25 = or i32 %20, %24
  %26 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 7, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw i32 1, %28
  %30 = or i32 %25, %29
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 6
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, -1
  %34 = zext i8 %32 to i32
  %35 = shl nuw i32 1, %34
  %36 = select i1 %33, i32 0, i32 %35
  %37 = or i32 %30, %36
  br label %44

38:                                               ; preds = %6, %3
  %39 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = shl nsw i32 -1, %41
  %43 = xor i32 %42, -1
  br label %44

44:                                               ; preds = %38, %11
  %45 = phi i32 [ %37, %11 ], [ %43, %38 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %45, ptr %4, align 4
  %46 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 12
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %46) #21
  %48 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %49 = load i16, ptr %48, align 4
  %50 = zext i16 %49 to i32
  %51 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %50, i32 noundef 0) #21
  %52 = load i16, ptr %48, align 4
  %53 = zext i16 %52 to i32
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %55, %44
  %56 = phi i32 [ %60, %55 ], [ %51, %44 ]
  call fastcc void @__ieee80211_stop_queue(ptr noundef %0, i32 noundef %56, i32 noundef %2, i1 noundef zeroext true) #21
  %57 = load i16, ptr %48, align 4
  %58 = zext i16 %57 to i32
  %59 = add nsw i32 %56, 1
  %60 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %58, i32 noundef %59) #21
  %61 = load i16, ptr %48, align 4
  %62 = zext i16 %61 to i32
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %55, label %64

64:                                               ; preds = %55, %44
  call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %47) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_wake_vif_queues(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 262144
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %5
  %11 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 7, i32 0
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 1, %13
  %15 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 7, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 1, %17
  %19 = or i32 %18, %14
  %20 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 7, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 1, %22
  %24 = or i32 %19, %23
  %25 = getelementptr %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 7, i32 3
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 1, %27
  %29 = or i32 %24, %28
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 6
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, -1
  %33 = zext i8 %31 to i32
  %34 = shl nuw i32 1, %33
  %35 = select i1 %32, i32 0, i32 %34
  %36 = or i32 %29, %35
  br label %43

37:                                               ; preds = %5, %3
  %38 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 11
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = shl nsw i32 -1, %40
  %42 = xor i32 %41, -1
  br label %43

43:                                               ; preds = %37, %10
  %44 = phi i32 [ %36, %10 ], [ %42, %37 ]
  tail call void @ieee80211_wake_queues_by_reason(ptr noundef %0, i32 noundef %44, i32 noundef %2, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_iterate_interfaces(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 64
  tail call void @mutex_lock(ptr noundef %5) #21
  tail call fastcc void @__iterate_interfaces(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  tail call void @mutex_unlock(ptr noundef %5) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__iterate_interfaces(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = and i32 %1, 2
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %8 = load volatile ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %47, label %10

10:                                               ; preds = %4
  %11 = and i32 %1, 3
  %12 = icmp eq i32 %11, 2
  %13 = and i32 %1, 4
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %44, %10
  %16 = phi ptr [ %8, %10 ], [ %45, %44 ]
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %16, i32 0, i32 58
  %18 = load i32, ptr %17, align 8
  switch i32 %18, label %24 [
    i32 6, label %19
    i32 4, label %44
  ]

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %16, i32 0, i32 57
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %19, %15
  br i1 %12, label %25, label %30

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %16, i32 0, i32 8
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %25, %24
  br i1 %14, label %36, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %16, i32 0, i32 8
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31, %30
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %16, i32 0, i32 9
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  %41 = or i1 %6, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %16, i32 0, i32 58, i32 2
  tail call void %2(ptr noundef %3, ptr noundef %43, ptr noundef %17) #21
  br label %44

44:                                               ; preds = %42, %36, %31, %25, %19, %15
  %45 = load volatile ptr, ptr %16, align 8
  %46 = icmp eq ptr %45, %7
  br i1 %46, label %47, label %15

47:                                               ; preds = %44, %4
  %48 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 111
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %47
  %52 = and i32 %1, 3
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %49, i32 0, i32 8
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54, %51
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %49, i32 0, i32 58
  %61 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %49, i32 0, i32 58, i32 2
  tail call void %2(ptr noundef %3, ptr noundef %61, ptr noundef %60) #21
  br label %62

62:                                               ; preds = %59, %54, %47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %5 = or i32 %1, 2
  tail call fastcc void @__iterate_interfaces(ptr noundef %0, i32 noundef %5, ptr noundef %2, ptr noundef %3)
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_iterate_active_interfaces_mtx(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = or i32 %1, 2
  tail call fastcc void @__iterate_interfaces(ptr noundef %0, i32 noundef %5, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_iterate_stations(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 46
  tail call void @mutex_lock(ptr noundef %4) #21
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 49
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %18, label %8

8:                                                ; preds = %15, %3
  %9 = phi ptr [ %16, %15 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.sta_info, ptr %9, i32 0, i32 21
  %11 = load i8, ptr %10, align 4, !range !10
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.sta_info, ptr %9, i32 0, i32 46
  tail call void %1(ptr noundef %2, ptr noundef %14) #21
  br label %15

15:                                               ; preds = %13, %8
  %16 = load volatile ptr, ptr %9, align 4
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %18, label %8

18:                                               ; preds = %15, %3
  tail call void @mutex_unlock(ptr noundef %4) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_iterate_stations_atomic(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 49
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %17, label %7

7:                                                ; preds = %14, %3
  %8 = phi ptr [ %15, %14 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.sta_info, ptr %8, i32 0, i32 21
  %10 = load i8, ptr %9, align 4, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.sta_info, ptr %8, i32 0, i32 46
  tail call void %1(ptr noundef %2, ptr noundef %13) #21
  br label %14

14:                                               ; preds = %12, %7
  %15 = load volatile ptr, ptr %8, align 4
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %7

17:                                               ; preds = %14, %3
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @wdev_to_ieee80211_vif(ptr noundef %0) #6 {
  %2 = getelementptr i8, ptr %0, i32 356
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 352
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr i8, ptr %0, i32 2256
  %12 = select i1 %10, ptr null, ptr %11
  br label %13

13:                                               ; preds = %6, %1
  %14 = phi ptr [ null, %1 ], [ %12, %6 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @ieee80211_vif_to_wdev(ptr noundef readnone %0) #4 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr i8, ptr %0, i32 -2256
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_queue_work(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 34
  %4 = load i8, ptr %3, align 8, !range !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 31
  %8 = load i8, ptr %7, align 1, !range !10
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 33
  %12 = load i8, ptr %11, align 1, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #22
  br label %20

16:                                               ; preds = %10, %6
  %17 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 9
  %18 = load ptr, ptr %17, align 8
  %19 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %18, ptr noundef %1) #21
  br label %20

20:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_queue_delayed_work(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 34
  %5 = load i8, ptr %4, align 8, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 31
  %9 = load i8, ptr %8, align 1, !range !10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 33
  %13 = load i8, ptr %12, align 1, !range !10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %3
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #22
  br label %21

17:                                               ; preds = %11, %7
  %18 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 9
  %19 = load ptr, ptr %18, align 8
  %20 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %1, i32 noundef %2) #21
  br label %21

21:                                               ; preds = %17, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee802_11_parse_elems_crc(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4, ptr noundef readonly %5, ptr noundef readonly %6) local_unnamed_addr #0 {
  %8 = alloca i8, align 1
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2848, i32 noundef 276) #23
  %11 = icmp eq ptr %10, null
  br i1 %11, label %227, label %12

12:                                               ; preds = %7
  store ptr %0, ptr %10, align 8
  %13 = getelementptr inbounds %struct.ieee802_11_elems, ptr %10, i32 0, i32 1
  store i32 %1, ptr %13, align 4
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1, i32 noundef 2592) #24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @_ieee802_11_parse_elems_crc(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull %10, i64 noundef %3, i32 noundef %4, ptr noundef null)
  br label %192

18:                                               ; preds = %12
  %19 = icmp ne ptr %6, null
  %20 = icmp ne ptr %5, null
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %185

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i32 %1
  %24 = ptrtoint ptr %23 to i32
  %25 = icmp sgt i32 %1, 1
  br i1 %25, label %26, label %185

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %5, i32 1
  %28 = getelementptr i8, ptr %5, i32 2
  %29 = getelementptr i8, ptr %5, i32 3
  %30 = getelementptr i8, ptr %5, i32 4
  %31 = getelementptr i8, ptr %5, i32 5
  %32 = getelementptr i8, ptr %6, i32 4
  %33 = getelementptr inbounds %struct.ieee802_11_elems, ptr %10, i32 0, i32 73
  %34 = getelementptr inbounds %struct.ieee802_11_elems, ptr %10, i32 0, i32 48
  br label %35

35:                                               ; preds = %171, %26
  %36 = phi i32 [ %1, %26 ], [ %179, %171 ]
  %37 = phi i1 [ false, %26 ], [ %174, %171 ]
  %38 = phi i32 [ 0, %26 ], [ %173, %171 ]
  %39 = phi ptr [ %0, %26 ], [ %177, %171 ]
  %40 = getelementptr inbounds %struct.element, ptr %39, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = add nuw nsw i32 %42, 2
  %44 = icmp ult i32 %36, %43
  br i1 %44, label %181, label %45

45:                                               ; preds = %35
  %46 = load i8, ptr %39, align 1
  %47 = icmp ne i8 %46, 71
  %48 = icmp ult i8 %41, 2
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %171, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.element, ptr %39, i32 0, i32 2
  %52 = getelementptr %struct.element, ptr %39, i32 1, i32 1
  %53 = icmp ugt i8 %41, 2
  br i1 %53, label %54, label %171

54:                                               ; preds = %50
  %55 = add nsw i32 %42, -1
  %56 = getelementptr %struct.element, ptr %39, i32 2
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = add nuw nsw i32 %58, 2
  %60 = icmp ult i32 %55, %59
  br i1 %60, label %171, label %67

61:                                               ; preds = %157
  %62 = getelementptr inbounds %struct.element, ptr %162, i32 0, i32 1
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = add nuw nsw i32 %64, 2
  %66 = icmp ult i32 %169, %65
  br i1 %66, label %171, label %67

67:                                               ; preds = %61, %54
  %68 = phi i8 [ %63, %61 ], [ %57, %54 ]
  %69 = phi ptr [ %62, %61 ], [ %56, %54 ]
  %70 = phi ptr [ %162, %61 ], [ %52, %54 ]
  %71 = phi i32 [ %158, %61 ], [ %38, %54 ]
  %72 = load i8, ptr %70, align 1
  %73 = icmp ne i8 %72, 0
  %74 = icmp ult i8 %68, 4
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %157, label %76

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.element, ptr %70, i32 0, i32 2
  %78 = load i8, ptr %77, align 1
  %79 = icmp eq i8 %78, 83
  br i1 %79, label %80, label %157

80:                                               ; preds = %76
  %81 = getelementptr %struct.element, ptr %70, i32 1, i32 1
  %82 = load i8, ptr %81, align 1
  %83 = icmp eq i8 %82, 2
  br i1 %83, label %84, label %157

84:                                               ; preds = %80
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %14, i8 0, i32 %1, i1 false) #21
  %85 = tail call i32 @cfg80211_merge_profile(ptr noundef %0, i32 noundef %1, ptr noundef %39, ptr noundef %70, ptr noundef nonnull %14, i32 noundef %1) #21
  %86 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 85, ptr noundef nonnull %14, i32 noundef %85, ptr noundef null, i32 noundef 0, i32 noundef 0) #21
  %87 = icmp eq ptr %86, null
  br i1 %87, label %157, label %88

88:                                               ; preds = %84
  %89 = getelementptr i8, ptr %86, i32 1
  %90 = load i8, ptr %89, align 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %157, label %92

92:                                               ; preds = %88
  %93 = getelementptr i8, ptr %86, i32 2
  %94 = load i8, ptr %93, align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %157, label %96

96:                                               ; preds = %92
  %97 = load i8, ptr %51, align 1
  %98 = load i8, ptr %5, align 1
  %99 = zext i8 %98 to i64
  %100 = load i8, ptr %27, align 1
  %101 = zext i8 %100 to i64
  %102 = shl nuw nsw i64 %99, 16
  %103 = shl nuw nsw i64 %101, 8
  %104 = or i64 %103, %102
  %105 = load i8, ptr %28, align 1
  %106 = zext i8 %105 to i64
  %107 = or i64 %104, %106
  %108 = load i8, ptr %29, align 1
  %109 = zext i8 %108 to i64
  %110 = load i8, ptr %30, align 1
  %111 = zext i8 %110 to i64
  %112 = shl nuw nsw i64 %107, 24
  %113 = shl nuw nsw i64 %109, 16
  %114 = shl nuw nsw i64 %111, 8
  %115 = or i64 %114, %113
  %116 = or i64 %115, %112
  %117 = load i8, ptr %31, align 1
  %118 = zext i8 %117 to i64
  %119 = or i64 %116, %118
  %120 = zext i8 %97 to i32
  %121 = sub nsw i32 64, %120
  %122 = zext i32 %121 to i64
  %123 = lshr i64 -1, %122
  %124 = xor i64 %123, -1
  %125 = and i64 %119, %124
  %126 = and i64 %119, %123
  %127 = zext i8 %94 to i64
  %128 = add i64 %126, %127
  %129 = and i64 %128, %123
  %130 = or i64 %129, %125
  %131 = trunc i64 %130 to i16
  %132 = tail call i16 @llvm.bswap.i16(i16 %131) #21
  %133 = trunc i64 %130 to i32
  %134 = lshr i64 %130, 40
  %135 = trunc i64 %134 to i32
  %136 = shl i32 %133, 8
  %137 = and i32 %136, -16777216
  %138 = lshr i32 %133, 8
  %139 = and i32 %138, 16711680
  %140 = or i32 %137, %139
  %141 = lshr i64 %130, 24
  %142 = trunc i64 %141 to i32
  %143 = and i32 %142, 65280
  %144 = or i32 %140, %143
  %145 = and i32 %135, 255
  %146 = or i32 %144, %145
  %147 = load i32, ptr %6, align 4
  %148 = xor i32 %146, %147
  %149 = load i16, ptr %32, align 2
  %150 = xor i16 %132, %149
  %151 = zext i16 %150 to i32
  %152 = or i32 %148, %151
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %96
  %155 = getelementptr i8, ptr %86, i32 2
  store i8 %90, ptr %33, align 8
  store ptr %155, ptr %34, align 4
  %156 = load i8, ptr %40, align 1
  br label %171

157:                                              ; preds = %96, %92, %88, %84, %80, %76, %67
  %158 = phi i32 [ %85, %96 ], [ %85, %84 ], [ %85, %88 ], [ %85, %92 ], [ %71, %76 ], [ %71, %80 ], [ %71, %67 ]
  %159 = getelementptr inbounds %struct.element, ptr %70, i32 0, i32 2
  %160 = load i8, ptr %69, align 1
  %161 = zext i8 %160 to i32
  %162 = getelementptr i8, ptr %159, i32 %161
  %163 = load i8, ptr %40, align 1
  %164 = zext i8 %163 to i32
  %165 = add nsw i32 %164, -1
  %166 = getelementptr i8, ptr %52, i32 %165
  %167 = ptrtoint ptr %166 to i32
  %168 = ptrtoint ptr %162 to i32
  %169 = sub i32 %167, %168
  %170 = icmp sgt i32 %169, 1
  br i1 %170, label %61, label %171

171:                                              ; preds = %157, %154, %61, %54, %50, %45
  %172 = phi i8 [ %156, %154 ], [ %41, %45 ], [ 2, %50 ], [ %41, %54 ], [ %163, %157 ], [ %163, %61 ]
  %173 = phi i32 [ %85, %154 ], [ %38, %45 ], [ %38, %50 ], [ %38, %54 ], [ %158, %157 ], [ %158, %61 ]
  %174 = phi i1 [ true, %154 ], [ %37, %45 ], [ %37, %50 ], [ %37, %54 ], [ %37, %157 ], [ %37, %61 ]
  %175 = getelementptr inbounds %struct.element, ptr %39, i32 0, i32 2
  %176 = zext i8 %172 to i32
  %177 = getelementptr i8, ptr %175, i32 %176
  %178 = ptrtoint ptr %177 to i32
  %179 = sub i32 %24, %178
  %180 = icmp sgt i32 %179, 1
  br i1 %180, label %35, label %181

181:                                              ; preds = %171, %35
  %182 = phi i32 [ %38, %35 ], [ %173, %171 ]
  %183 = phi i1 [ %37, %35 ], [ %174, %171 ]
  %184 = select i1 %183, i32 %182, i32 0
  br label %185

185:                                              ; preds = %181, %22, %18
  %186 = phi i32 [ 0, %18 ], [ 0, %22 ], [ %184, %181 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8)
  store i8 56, ptr %8, align 1
  %187 = call ptr @cfg80211_find_elem_match(i8 noundef zeroext -1, ptr noundef nonnull %14, i32 noundef %186, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8)
  %188 = call fastcc i32 @_ieee802_11_parse_elems_crc(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull %10, i64 noundef %3, i32 noundef %4, ptr noundef %187)
  %189 = icmp eq i32 %186, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %185
  %191 = call fastcc i32 @_ieee802_11_parse_elems_crc(ptr noundef nonnull %14, i32 noundef %186, i1 noundef zeroext %2, ptr noundef nonnull %10, i64 noundef 0, i32 noundef 0, ptr noundef null)
  br label %192

192:                                              ; preds = %190, %185, %16
  %193 = phi i32 [ %17, %16 ], [ %188, %190 ], [ %188, %185 ]
  %194 = phi ptr [ null, %16 ], [ %14, %190 ], [ %14, %185 ]
  %195 = getelementptr inbounds %struct.ieee802_11_elems, ptr %10, i32 0, i32 9
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %208, label %198

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.ieee802_11_elems, ptr %10, i32 0, i32 76
  %200 = load i8, ptr %199, align 2, !range !10
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.ieee80211_tim_ie, ptr %196, i32 0, i32 1
  %204 = load i8, ptr %203, align 1
  %205 = getelementptr inbounds %struct.ieee802_11_elems, ptr %10, i32 0, i32 51
  store i8 %204, ptr %205, align 2
  %206 = load i8, ptr %196, align 1
  %207 = getelementptr inbounds %struct.ieee802_11_elems, ptr %10, i32 0, i32 50
  store i8 %206, ptr %207, align 1
  br label %208

208:                                              ; preds = %202, %198, %192
  %209 = getelementptr inbounds %struct.ieee802_11_elems, ptr %10, i32 0, i32 48
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %225, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.ieee802_11_elems, ptr %10, i32 0, i32 73
  %214 = load i8, ptr %213, align 8
  %215 = icmp ugt i8 %214, 1
  br i1 %215, label %216, label %225

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.ieee80211_bssid_index, ptr %210, i32 0, i32 1
  %218 = load i8, ptr %217, align 1
  %219 = getelementptr inbounds %struct.ieee802_11_elems, ptr %10, i32 0, i32 51
  store i8 %218, ptr %219, align 2
  %220 = icmp eq i8 %214, 2
  br i1 %220, label %225, label %221

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.ieee80211_bssid_index, ptr %210, i32 0, i32 2
  %223 = load i8, ptr %222, align 1
  %224 = getelementptr inbounds %struct.ieee802_11_elems, ptr %10, i32 0, i32 50
  store i8 %223, ptr %224, align 1
  br label %225

225:                                              ; preds = %221, %216, %212, %208
  call void @kfree(ptr noundef %194) #21
  %226 = getelementptr inbounds %struct.ieee802_11_elems, ptr %10, i32 0, i32 2
  store i32 %193, ptr %226, align 8
  br label %227

227:                                              ; preds = %225, %7
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_ieee802_11_parse_elems_crc(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 4
  store i32 %5, ptr %8, align 4
  %10 = icmp ne i64 %4, 0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  %11 = getelementptr i8, ptr %0, i32 %1
  %12 = ptrtoint ptr %11 to i32
  %13 = icmp sgt i32 %1, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  br i1 %13, label %14, label %379

14:                                               ; preds = %7
  %15 = icmp eq ptr %6, null
  %16 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 76
  %17 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 56
  %18 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 55
  %19 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 54
  %20 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 53
  %21 = select i1 %10, ptr %8, ptr null
  %22 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 25
  %23 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 23
  %24 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 47
  %25 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 38
  %26 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 27
  %27 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 22
  %28 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 21
  %29 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 66
  %30 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 24
  %31 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 75
  %32 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 11
  %33 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 62
  %34 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 46
  %35 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 42
  %36 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 52
  %37 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 41
  %38 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 40
  %39 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 39
  %40 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 72
  %41 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 37
  %42 = xor i1 %2, true
  %43 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 45
  %44 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 44
  %45 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 36
  %46 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 35
  %47 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 34
  %48 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 33
  %49 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 71
  %50 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 32
  %51 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 70
  %52 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 31
  %53 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 69
  %54 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 30
  %55 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 29
  %56 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 68
  %57 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 20
  %58 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 28
  %59 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 67
  %60 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 43
  %61 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 19
  %62 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 18
  %63 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 17
  %64 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 16
  %65 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 13
  %66 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 63
  %67 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 12
  %68 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 10
  %69 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 61
  %70 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 15
  %71 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 65
  %72 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 14
  %73 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 64
  %74 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 9
  %75 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 60
  %76 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 8
  %77 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 7
  %78 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 59
  %79 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 6
  %80 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 58
  %81 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 5
  %82 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 57
  %83 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 4
  %84 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 3
  br label %85

85:                                               ; preds = %372, %14
  %86 = phi i32 [ %1, %14 ], [ %377, %372 ]
  %87 = phi ptr [ %0, %14 ], [ %375, %372 ]
  %88 = getelementptr inbounds %struct.element, ptr %87, i32 0, i32 1
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = add nuw nsw i32 %90, 2
  %92 = icmp ult i32 %86, %91
  br i1 %92, label %379, label %93

93:                                               ; preds = %85
  %94 = load i8, ptr %87, align 1
  %95 = getelementptr inbounds %struct.element, ptr %87, i32 0, i32 2
  br i1 %15, label %98, label %96

96:                                               ; preds = %93
  %97 = tail call zeroext i1 @cfg80211_is_element_inherited(ptr noundef %87, ptr noundef nonnull %6) #21
  br i1 %97, label %98, label %372

98:                                               ; preds = %96, %93
  %99 = zext i8 %94 to i32
  switch i8 %94, label %109 [
    i8 0, label %100
    i8 1, label %100
    i8 2, label %100
    i8 3, label %100
    i8 4, label %100
    i8 5, label %100
    i8 6, label %100
    i8 16, label %100
    i8 48, label %100
    i8 42, label %100
    i8 50, label %100
    i8 45, label %100
    i8 61, label %100
    i8 -65, label %100
    i8 -64, label %100
    i8 114, label %100
    i8 113, label %100
    i8 117, label %100
    i8 -126, label %100
    i8 -125, label %100
    i8 -124, label %100
    i8 126, label %100
    i8 37, label %100
    i8 60, label %100
    i8 7, label %100
    i8 32, label %100
    i8 56, label %100
    i8 62, label %100
    i8 -62, label %100
    i8 118, label %100
    i8 127, label %100
    i8 104, label %100
    i8 101, label %100
    i8 90, label %100
    i8 -12, label %100
    i8 -43, label %100
    i8 -39, label %100
    i8 -24, label %100
    i8 -45, label %100
    i8 -42, label %100
  ]

100:                                              ; preds = %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98, %98
  %101 = lshr i32 %99, 5
  %102 = getelementptr i32, ptr %9, i32 %101
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %99, 31
  %105 = shl nuw i32 1, %104
  %106 = and i32 %103, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %100
  store i8 1, ptr %16, align 2
  br label %372

109:                                              ; preds = %100, %98
  %110 = icmp ult i8 %94, 64
  %111 = select i1 %10, i1 %110, i1 false
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = zext i8 %94 to i64
  %114 = shl nuw i64 1, %113
  %115 = and i64 %114, %4
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load i32, ptr %8, align 4
  %119 = tail call i32 @crc32_be(i32 noundef %118, ptr noundef %87, i32 noundef %91) #25
  store i32 %119, ptr %8, align 4
  br label %120

120:                                              ; preds = %117, %112, %109
  switch i8 %94, label %365 [
    i8 101, label %121
    i8 104, label %124
    i8 127, label %127
    i8 0, label %128
    i8 1, label %129
    i8 3, label %130
    i8 5, label %133
    i8 -35, label %136
    i8 48, label %164
    i8 42, label %165
    i8 50, label %168
    i8 45, label %169
    i8 61, label %172
    i8 -65, label %175
    i8 -64, label %178
    i8 -57, label %184
    i8 114, label %190
    i8 113, label %191
    i8 117, label %194
    i8 119, label %195
    i8 -126, label %198
    i8 -125, label %199
    i8 -124, label %200
    i8 126, label %201
    i8 37, label %204
    i8 60, label %207
    i8 62, label %210
    i8 118, label %213
    i8 -62, label %216
    i8 -60, label %220
    i8 7, label %230
    i8 32, label %231
    i8 -106, label %234
    i8 -97, label %258
    i8 56, label %261
    i8 90, label %264
    i8 -12, label %267
    i8 -61, label %268
    i8 -1, label %282
    i8 -39, label %352
    i8 -24, label %355
    i8 -43, label %358
    i8 -45, label %361
  ]

121:                                              ; preds = %120
  %122 = icmp ult i8 %89, 18
  br i1 %122, label %364, label %123

123:                                              ; preds = %121
  store ptr %87, ptr %84, align 4
  br label %365

124:                                              ; preds = %120
  %125 = icmp ult i8 %89, 4
  br i1 %125, label %364, label %126

126:                                              ; preds = %124
  store ptr %95, ptr %83, align 4
  br label %365

127:                                              ; preds = %120
  store ptr %95, ptr %81, align 4
  store i8 %89, ptr %82, align 4
  br label %365

128:                                              ; preds = %120
  store ptr %95, ptr %79, align 4
  store i8 %89, ptr %80, align 1
  br label %365

129:                                              ; preds = %120
  store ptr %95, ptr %77, align 4
  store i8 %89, ptr %78, align 2
  br label %365

130:                                              ; preds = %120
  %131 = icmp eq i8 %89, 0
  br i1 %131, label %364, label %132

132:                                              ; preds = %130
  store ptr %95, ptr %76, align 4
  br label %365

133:                                              ; preds = %120
  %134 = icmp ugt i8 %89, 3
  br i1 %134, label %135, label %364

135:                                              ; preds = %133
  store ptr %95, ptr %74, align 4
  store i8 %89, ptr %75, align 1
  br label %365

136:                                              ; preds = %120
  %137 = icmp ugt i8 %89, 3
  br i1 %137, label %138, label %365

138:                                              ; preds = %136
  %139 = load i8, ptr %95, align 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %365

141:                                              ; preds = %138
  %142 = getelementptr %struct.element, ptr %87, i32 1, i32 1
  %143 = load i8, ptr %142, align 1
  %144 = icmp eq i8 %143, 80
  br i1 %144, label %145, label %365

145:                                              ; preds = %141
  %146 = getelementptr %struct.element, ptr %87, i32 2
  %147 = load i8, ptr %146, align 1
  %148 = icmp eq i8 %147, -14
  br i1 %148, label %149, label %365

149:                                              ; preds = %145
  br i1 %10, label %150, label %153

150:                                              ; preds = %149
  %151 = load i32, ptr %8, align 4
  %152 = tail call i32 @crc32_be(i32 noundef %151, ptr noundef %87, i32 noundef %91) #25
  store i32 %152, ptr %8, align 4
  br label %153

153:                                              ; preds = %150, %149
  %154 = icmp ugt i8 %89, 4
  br i1 %154, label %155, label %365

155:                                              ; preds = %153
  %156 = getelementptr %struct.element, ptr %87, i32 2, i32 1
  %157 = load i8, ptr %156, align 1
  %158 = icmp eq i8 %157, 2
  br i1 %158, label %159, label %365

159:                                              ; preds = %155
  %160 = getelementptr %struct.element, ptr %87, i32 3
  %161 = load i8, ptr %160, align 1
  switch i8 %161, label %365 [
    i8 0, label %162
    i8 1, label %163
  ]

162:                                              ; preds = %159
  store ptr %95, ptr %72, align 4
  store i8 %89, ptr %73, align 1
  br label %365

163:                                              ; preds = %159
  store ptr %95, ptr %70, align 4
  store i8 %89, ptr %71, align 4
  br label %365

164:                                              ; preds = %120
  store ptr %95, ptr %68, align 4
  store i8 %89, ptr %69, align 4
  br label %365

165:                                              ; preds = %120
  %166 = icmp eq i8 %89, 0
  br i1 %166, label %364, label %167

167:                                              ; preds = %165
  store ptr %95, ptr %67, align 4
  br label %365

168:                                              ; preds = %120
  store ptr %95, ptr %65, align 4
  store i8 %89, ptr %66, align 2
  br label %365

169:                                              ; preds = %120
  %170 = icmp ugt i8 %89, 25
  br i1 %170, label %171, label %364

171:                                              ; preds = %169
  store ptr %95, ptr %64, align 4
  br label %365

172:                                              ; preds = %120
  %173 = icmp ugt i8 %89, 21
  br i1 %173, label %174, label %364

174:                                              ; preds = %172
  store ptr %95, ptr %63, align 4
  br label %365

175:                                              ; preds = %120
  %176 = icmp ugt i8 %89, 11
  br i1 %176, label %177, label %364

177:                                              ; preds = %175
  store ptr %95, ptr %62, align 4
  br label %365

178:                                              ; preds = %120
  %179 = icmp ugt i8 %89, 4
  br i1 %179, label %180, label %364

180:                                              ; preds = %178
  store ptr %95, ptr %61, align 4
  br i1 %10, label %181, label %365

181:                                              ; preds = %180
  %182 = load i32, ptr %8, align 4
  %183 = tail call i32 @crc32_be(i32 noundef %182, ptr noundef %87, i32 noundef %91) #25
  store i32 %183, ptr %8, align 4
  br label %365

184:                                              ; preds = %120
  %185 = icmp eq i8 %89, 0
  br i1 %185, label %364, label %186

186:                                              ; preds = %184
  store ptr %95, ptr %60, align 4
  br i1 %10, label %187, label %365

187:                                              ; preds = %186
  %188 = load i32, ptr %8, align 4
  %189 = tail call i32 @crc32_be(i32 noundef %188, ptr noundef %87, i32 noundef %91) #25
  store i32 %189, ptr %8, align 4
  br label %365

190:                                              ; preds = %120
  store ptr %95, ptr %58, align 4
  store i8 %89, ptr %59, align 2
  br label %365

191:                                              ; preds = %120
  %192 = icmp ugt i8 %89, 6
  br i1 %192, label %193, label %364

193:                                              ; preds = %191
  store ptr %95, ptr %57, align 4
  br label %365

194:                                              ; preds = %120
  store ptr %95, ptr %55, align 4
  store i8 %89, ptr %56, align 1
  br label %365

195:                                              ; preds = %120
  %196 = icmp ugt i8 %89, 1
  br i1 %196, label %197, label %365

197:                                              ; preds = %195
  store ptr %95, ptr %54, align 4
  br label %365

198:                                              ; preds = %120
  store ptr %95, ptr %52, align 4
  store i8 %89, ptr %53, align 4
  br label %365

199:                                              ; preds = %120
  store ptr %95, ptr %50, align 4
  store i8 %89, ptr %51, align 1
  br label %365

200:                                              ; preds = %120
  store ptr %95, ptr %48, align 4
  store i8 %89, ptr %49, align 2
  br label %365

201:                                              ; preds = %120
  %202 = icmp ugt i8 %89, 20
  br i1 %202, label %203, label %364

203:                                              ; preds = %201
  store ptr %95, ptr %47, align 4
  br label %365

204:                                              ; preds = %120
  %205 = icmp eq i8 %89, 3
  br i1 %205, label %206, label %364

206:                                              ; preds = %204
  store ptr %95, ptr %46, align 4
  br label %365

207:                                              ; preds = %120
  %208 = icmp eq i8 %89, 4
  br i1 %208, label %209, label %364

209:                                              ; preds = %207
  store ptr %95, ptr %45, align 4
  br label %365

210:                                              ; preds = %120
  %211 = icmp eq i8 %89, 1
  br i1 %211, label %212, label %364

212:                                              ; preds = %210
  store ptr %95, ptr %44, align 4
  br label %365

213:                                              ; preds = %120
  %214 = icmp ult i8 %89, 6
  br i1 %214, label %364, label %215

215:                                              ; preds = %213
  store ptr %95, ptr %43, align 4
  br label %365

216:                                              ; preds = %120
  %217 = icmp ult i8 %89, 3
  %218 = select i1 %42, i1 true, i1 %217
  br i1 %218, label %364, label %219

219:                                              ; preds = %216
  store ptr %95, ptr %41, align 4
  br label %365

220:                                              ; preds = %120
  br i1 %2, label %364, label %221

221:                                              ; preds = %220
  %222 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext -62, ptr noundef %95, i32 noundef %90, ptr noundef null, i32 noundef 0, i32 noundef 0) #21
  %223 = icmp eq ptr %222, null
  br i1 %223, label %365, label %224

224:                                              ; preds = %221
  %225 = getelementptr i8, ptr %222, i32 1
  %226 = load i8, ptr %225, align 1
  %227 = icmp ugt i8 %226, 2
  br i1 %227, label %228, label %364

228:                                              ; preds = %224
  %229 = getelementptr i8, ptr %222, i32 2
  store ptr %229, ptr %41, align 4
  br label %365

230:                                              ; preds = %120
  store ptr %95, ptr %39, align 4
  store i8 %89, ptr %40, align 1
  br label %365

231:                                              ; preds = %120
  %232 = icmp eq i8 %89, 1
  br i1 %232, label %233, label %364

233:                                              ; preds = %231
  store ptr %95, ptr %38, align 4
  br label %365

234:                                              ; preds = %120
  %235 = icmp ult i8 %89, 4
  br i1 %235, label %364, label %236

236:                                              ; preds = %234
  %237 = load i8, ptr %95, align 1
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %365

239:                                              ; preds = %236
  %240 = getelementptr %struct.element, ptr %87, i32 1, i32 1
  %241 = load i8, ptr %240, align 1
  %242 = icmp eq i8 %241, 64
  br i1 %242, label %243, label %365

243:                                              ; preds = %239
  %244 = getelementptr %struct.element, ptr %87, i32 2
  %245 = load i8, ptr %244, align 1
  %246 = icmp eq i8 %245, -106
  br i1 %246, label %247, label %365

247:                                              ; preds = %243
  %248 = getelementptr %struct.element, ptr %87, i32 2, i32 1
  %249 = load i8, ptr %248, align 1
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %251, label %365

251:                                              ; preds = %247
  %252 = icmp eq i8 %89, 6
  br i1 %252, label %253, label %364

253:                                              ; preds = %251
  br i1 %10, label %254, label %257

254:                                              ; preds = %253
  %255 = load i32, ptr %8, align 4
  %256 = tail call i32 @crc32_be(i32 noundef %255, ptr noundef %87, i32 noundef %91) #25
  store i32 %256, ptr %8, align 4
  br label %257

257:                                              ; preds = %254, %253
  store ptr %95, ptr %37, align 4
  br label %365

258:                                              ; preds = %120
  %259 = icmp eq i8 %89, 0
  br i1 %259, label %364, label %260

260:                                              ; preds = %258
  store ptr %95, ptr %36, align 4
  br label %365

261:                                              ; preds = %120
  %262 = icmp ugt i8 %89, 4
  br i1 %262, label %263, label %364

263:                                              ; preds = %261
  store ptr %95, ptr %35, align 4
  br label %365

264:                                              ; preds = %120
  %265 = icmp ugt i8 %89, 2
  br i1 %265, label %266, label %365

266:                                              ; preds = %264
  store ptr %95, ptr %34, align 4
  br label %365

267:                                              ; preds = %120
  store ptr %95, ptr %32, align 4
  store i8 %89, ptr %33, align 1
  br label %365

268:                                              ; preds = %120
  %269 = add i8 %89, -10
  %270 = icmp ult i8 %269, -9
  br i1 %270, label %365, label %271

271:                                              ; preds = %268
  %272 = load i8, ptr %31, align 1
  %273 = icmp ugt i8 %272, 7
  br i1 %273, label %365, label %274

274:                                              ; preds = %271
  %275 = zext i8 %272 to i32
  %276 = getelementptr %struct.ieee802_11_elems, ptr %3, i32 0, i32 26, i32 %275
  store ptr %95, ptr %276, align 4
  %277 = load i8, ptr %31, align 1
  %278 = zext i8 %277 to i32
  %279 = getelementptr %struct.ieee802_11_elems, ptr %3, i32 0, i32 74, i32 %278
  store i8 %89, ptr %279, align 1
  %280 = load i8, ptr %31, align 1
  %281 = add i8 %280, 1
  store i8 %281, ptr %31, align 1
  br label %365

282:                                              ; preds = %120
  %283 = getelementptr %struct.element, ptr %87, i32 1, i32 1
  %284 = load i8, ptr %88, align 1
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %365, label %286

286:                                              ; preds = %282
  %287 = add i8 %284, -1
  %288 = load i8, ptr %95, align 1
  switch i8 %288, label %365 [
    i8 38, label %289
    i8 35, label %298
    i8 36, label %299
    i8 37, label %324
    i8 52, label %327
    i8 55, label %330
    i8 39, label %333
    i8 59, label %349
  ]

289:                                              ; preds = %286
  %290 = icmp ugt i8 %287, 12
  br i1 %290, label %291, label %365

291:                                              ; preds = %289
  store ptr %283, ptr %30, align 4
  br i1 %10, label %292, label %365

292:                                              ; preds = %291
  %293 = load i32, ptr %21, align 4
  %294 = load i8, ptr %88, align 1
  %295 = zext i8 %294 to i32
  %296 = add nuw nsw i32 %295, 2
  %297 = tail call i32 @crc32_be(i32 noundef %293, ptr noundef %87, i32 noundef %296) #25
  store i32 %297, ptr %21, align 4
  br label %365

298:                                              ; preds = %286
  store ptr %283, ptr %28, align 4
  store i8 %287, ptr %29, align 1
  br label %365

299:                                              ; preds = %286
  %300 = icmp ugt i8 %287, 5
  br i1 %300, label %301, label %365

301:                                              ; preds = %299
  %302 = icmp eq ptr %283, null
  br i1 %302, label %317, label %303

303:                                              ; preds = %301
  %304 = load i32, ptr %283, align 1
  %305 = and i32 %304, 16384
  %306 = icmp eq i32 %305, 0
  %307 = select i1 %306, i8 6, i8 9
  %308 = lshr i32 %304, 15
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = add nuw nsw i8 %307, %310
  %312 = and i32 %304, 131072
  %313 = icmp eq i32 %312, 0
  %314 = add nuw nsw i8 %311, 5
  %315 = select i1 %313, i8 %311, i8 %314
  %316 = icmp ugt i8 %315, %287
  br i1 %316, label %365, label %317

317:                                              ; preds = %303, %301
  br i1 %10, label %318, label %323

318:                                              ; preds = %317
  %319 = load i32, ptr %21, align 4
  %320 = zext i8 %284 to i32
  %321 = add nuw nsw i32 %320, 2
  %322 = tail call i32 @crc32_be(i32 noundef %319, ptr noundef %87, i32 noundef %321) #25
  store i32 %322, ptr %21, align 4
  br label %323

323:                                              ; preds = %318, %317
  store ptr %283, ptr %27, align 4
  br label %365

324:                                              ; preds = %286
  %325 = icmp eq i8 %287, 0
  br i1 %325, label %365, label %326

326:                                              ; preds = %324
  store ptr %283, ptr %26, align 4
  br label %365

327:                                              ; preds = %286
  %328 = icmp eq i8 %287, 3
  br i1 %328, label %329, label %365

329:                                              ; preds = %327
  store ptr %283, ptr %25, align 4
  br label %365

330:                                              ; preds = %286
  %331 = icmp ugt i8 %287, 1
  br i1 %331, label %332, label %365

332:                                              ; preds = %330
  store ptr %283, ptr %24, align 4
  br label %365

333:                                              ; preds = %286
  %334 = icmp eq i8 %287, 0
  br i1 %334, label %365, label %335

335:                                              ; preds = %333
  %336 = icmp eq ptr %283, null
  br i1 %336, label %348, label %337

337:                                              ; preds = %335
  %338 = load i8, ptr %283, align 1
  %339 = zext i8 %338 to i32
  %340 = and i32 %339, 4
  %341 = icmp eq i32 %340, 0
  %342 = select i1 %341, i8 1, i8 2
  %343 = and i32 %339, 8
  %344 = icmp eq i32 %343, 0
  %345 = add nuw nsw i8 %342, 18
  %346 = select i1 %344, i8 %342, i8 %345
  %347 = icmp ugt i8 %287, %346
  br i1 %347, label %348, label %365

348:                                              ; preds = %337, %335
  store ptr %283, ptr %23, align 4
  br label %365

349:                                              ; preds = %286
  %350 = icmp ugt i8 %287, 1
  br i1 %350, label %351, label %365

351:                                              ; preds = %349
  store ptr %283, ptr %22, align 4
  br label %365

352:                                              ; preds = %120
  %353 = icmp ugt i8 %89, 14
  br i1 %353, label %354, label %364

354:                                              ; preds = %352
  store ptr %95, ptr %20, align 4
  br label %365

355:                                              ; preds = %120
  %356 = icmp eq i8 %89, 6
  br i1 %356, label %357, label %364

357:                                              ; preds = %355
  store ptr %95, ptr %19, align 4
  br label %365

358:                                              ; preds = %120
  %359 = icmp eq i8 %89, 8
  br i1 %359, label %360, label %364

360:                                              ; preds = %358
  store ptr %95, ptr %18, align 4
  br label %365

361:                                              ; preds = %120
  %362 = icmp eq i8 %89, 5
  br i1 %362, label %363, label %364

363:                                              ; preds = %361
  store ptr %95, ptr %17, align 4
  br label %365

364:                                              ; preds = %361, %358, %355, %352, %261, %258, %251, %234, %231, %224, %220, %216, %213, %210, %207, %204, %201, %191, %184, %178, %175, %172, %169, %165, %133, %130, %124, %121
  store i8 1, ptr %16, align 2
  br label %372

365:                                              ; preds = %363, %360, %357, %354, %351, %349, %348, %337, %333, %332, %330, %329, %327, %326, %324, %323, %303, %299, %298, %292, %291, %289, %286, %282, %274, %271, %268, %267, %266, %264, %263, %260, %257, %247, %243, %239, %236, %233, %230, %228, %221, %219, %215, %212, %209, %206, %203, %200, %199, %198, %197, %195, %194, %193, %190, %187, %186, %181, %180, %177, %174, %171, %168, %167, %164, %163, %162, %159, %155, %153, %145, %141, %138, %136, %135, %132, %129, %128, %127, %126, %123, %120
  %366 = and i32 %99, 31
  %367 = shl nuw i32 1, %366
  %368 = lshr i32 %99, 5
  %369 = getelementptr i32, ptr %9, i32 %368
  %370 = load i32, ptr %369, align 4
  %371 = or i32 %370, %367
  store i32 %371, ptr %369, align 4
  br label %372

372:                                              ; preds = %365, %364, %108, %96
  %373 = load i8, ptr %88, align 1
  %374 = zext i8 %373 to i32
  %375 = getelementptr i8, ptr %95, i32 %374
  %376 = ptrtoint ptr %375 to i32
  %377 = sub i32 %12, %376
  %378 = icmp sgt i32 %377, 1
  br i1 %378, label %85, label %379

379:                                              ; preds = %372, %85, %7
  %380 = phi ptr [ %0, %7 ], [ %375, %372 ], [ %87, %85 ]
  %381 = icmp eq ptr %11, %380
  br i1 %381, label %384, label %382

382:                                              ; preds = %379
  %383 = getelementptr inbounds %struct.ieee802_11_elems, ptr %3, i32 0, i32 76
  store i8 1, ptr %383, align 2
  br label %384

384:                                              ; preds = %382, %379
  %385 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  ret i32 %385
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_regulatory_limit_wmm_params(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -2
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %59

8:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.ieee80211_channel, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = trunc i32 %15 to i16
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %59

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = and i32 %15, 65535
  %23 = mul nuw nsw i32 %22, 1000
  %24 = tail call ptr @freq_reg_info(ptr noundef %21, i32 noundef %23) #21
  %25 = icmp eq ptr %24, null
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %27 = or i1 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %24, i32 0, i32 5
  %30 = load i8, ptr %29, align 4, !range !10
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %19
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %59

33:                                               ; preds = %28
  %34 = load i32, ptr %4, align 8
  %35 = icmp eq i32 %34, 3
  %36 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %24, i32 0, i32 2, i32 1
  %37 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %24, i32 0, i32 2
  %38 = select i1 %35, ptr %36, ptr %37
  %39 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %38, i32 0, i32 %2
  %40 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %1, i32 0, i32 1
  %41 = load i16, ptr %40, align 2
  %42 = load i16, ptr %39, align 2
  %43 = tail call i16 @llvm.umax.i16(i16 %41, i16 %42)
  store i16 %43, ptr %40, align 2
  %44 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %1, i32 0, i32 2
  %45 = load i16, ptr %44, align 2
  %46 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %38, i32 0, i32 %2, i32 1
  %47 = load i16, ptr %46, align 2
  %48 = tail call i16 @llvm.umax.i16(i16 %45, i16 %47)
  store i16 %48, ptr %44, align 2
  %49 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %1, i32 0, i32 3
  %50 = load i8, ptr %49, align 2
  %51 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %38, i32 0, i32 %2, i32 3
  %52 = load i8, ptr %51, align 2
  %53 = tail call i8 @llvm.umax.i8(i8 %50, i8 %52)
  store i8 %53, ptr %49, align 2
  %54 = load i16, ptr %1, align 2
  %55 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %38, i32 0, i32 %2, i32 2
  %56 = load i16, ptr %55, align 2
  %57 = lshr i16 %56, 5
  %58 = tail call i16 @llvm.umin.i16(i16 %54, i16 %57)
  store i16 %58, ptr %1, align 2
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %59

59:                                               ; preds = %33, %32, %18, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @freq_reg_info(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_set_wmm_default(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ieee80211_tx_queue_params, align 2
  %5 = zext i1 %2 to i8
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %4) #21
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ieee80211_ops, ptr %9, i32 0, i32 40
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %131, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 11
  %15 = load i16, ptr %14, align 4
  %16 = icmp ult i16 %15, 4
  br i1 %16, label %131, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %4, i32 6
  store i64 0, ptr %18, align 2
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %21, align 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %17
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %34

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 8
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  %33 = select i1 %32, i32 31, i32 15
  br label %34

34:                                               ; preds = %28, %27
  %35 = phi i1 [ false, %27 ], [ %32, %28 ]
  %36 = phi i32 [ 15, %27 ], [ %33, %28 ]
  %37 = load i32, ptr %19, align 8
  %38 = icmp eq i32 %37, 11
  %39 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %4, i32 0, i32 2
  store i16 1023, ptr %39, align 2
  %40 = trunc i32 %36 to i16
  %41 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %4, i32 0, i32 1
  store i16 %40, ptr %41, align 2
  store i16 0, ptr %4, align 2
  %42 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %4, i32 0, i32 3
  store i8 2, ptr %42, align 2
  %43 = add nuw nsw i32 %36, 1
  %44 = lshr exact i32 %43, 1
  %45 = trunc i32 %44 to i16
  %46 = add nsw i16 %45, -1
  %47 = select i1 %35, i16 188, i16 94
  %48 = lshr exact i32 %43, 2
  %49 = trunc i32 %48 to i16
  %50 = add nsw i16 %49, -1
  %51 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1
  %52 = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %4, i32 0, i32 5
  %53 = select i1 %38, i8 9, i8 7
  %54 = select i1 %38, i8 6, i8 3
  br label %55

55:                                               ; preds = %120, %34
  %56 = phi i32 [ 0, %34 ], [ %124, %120 ]
  br i1 %2, label %57, label %70

57:                                               ; preds = %55
  switch i32 %56, label %59 [
    i32 3, label %58
    i32 0, label %63
    i32 1, label %60
  ]

58:                                               ; preds = %57
  store i16 1023, ptr %39, align 2
  store i16 %40, ptr %41, align 2
  store i16 0, ptr %4, align 2
  br label %68

59:                                               ; preds = %57
  store i16 1023, ptr %39, align 2
  store i16 %40, ptr %41, align 2
  store i16 0, ptr %4, align 2
  br label %68

60:                                               ; preds = %57
  store i16 %40, ptr %39, align 2
  store i16 %46, ptr %41, align 2
  br i1 %38, label %61, label %62

61:                                               ; preds = %60
  store i16 0, ptr %4, align 2
  br label %68

62:                                               ; preds = %60
  store i16 %47, ptr %4, align 2
  br label %68

63:                                               ; preds = %57
  store i16 %46, ptr %39, align 2
  store i16 %50, ptr %41, align 2
  br i1 %38, label %64, label %65

64:                                               ; preds = %63
  store i16 0, ptr %4, align 2
  br label %68

65:                                               ; preds = %63
  br i1 %35, label %66, label %67

66:                                               ; preds = %65
  store i16 102, ptr %4, align 2
  br label %68

67:                                               ; preds = %65
  store i16 47, ptr %4, align 2
  br label %68

68:                                               ; preds = %67, %66, %64, %62, %61, %59, %58
  %69 = phi i8 [ 2, %62 ], [ 3, %61 ], [ %53, %58 ], [ %54, %59 ], [ 2, %66 ], [ 2, %67 ], [ 2, %64 ]
  store i8 %69, ptr %42, align 2
  br label %70

70:                                               ; preds = %68, %55
  %71 = load i32, ptr %19, align 8
  %72 = and i32 %71, -2
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %120

74:                                               ; preds = %70
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %75 = load volatile ptr, ptr %20, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %75, align 4
  %79 = getelementptr inbounds %struct.ieee80211_channel, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = trunc i32 %80 to i16
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77, %74
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %120

84:                                               ; preds = %77
  %85 = load ptr, ptr %51, align 8
  %86 = and i32 %80, 65535
  %87 = mul nuw nsw i32 %86, 1000
  %88 = call ptr @freq_reg_info(ptr noundef %85, i32 noundef %87) #21
  %89 = icmp eq ptr %88, null
  %90 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  %91 = or i1 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %88, i32 0, i32 5
  %94 = load i8, ptr %93, align 4, !range !10
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %84
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %120

97:                                               ; preds = %92
  %98 = load i32, ptr %19, align 8
  %99 = icmp eq i32 %98, 3
  %100 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %88, i32 0, i32 2, i32 1
  %101 = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %88, i32 0, i32 2
  %102 = select i1 %99, ptr %100, ptr %101
  %103 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %102, i32 0, i32 %56
  %104 = load i16, ptr %41, align 2
  %105 = load i16, ptr %103, align 2
  %106 = call i16 @llvm.umax.i16(i16 %104, i16 %105) #21
  store i16 %106, ptr %41, align 2
  %107 = load i16, ptr %39, align 2
  %108 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %102, i32 0, i32 %56, i32 1
  %109 = load i16, ptr %108, align 2
  %110 = call i16 @llvm.umax.i16(i16 %107, i16 %109) #21
  store i16 %110, ptr %39, align 2
  %111 = load i8, ptr %42, align 2
  %112 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %102, i32 0, i32 %56, i32 3
  %113 = load i8, ptr %112, align 2
  %114 = call i8 @llvm.umax.i8(i8 %111, i8 %113) #21
  store i8 %114, ptr %42, align 2
  %115 = load i16, ptr %4, align 2
  %116 = getelementptr [4 x %struct.ieee80211_wmm_ac], ptr %102, i32 0, i32 %56, i32 2
  %117 = load i16, ptr %116, align 2
  %118 = lshr i16 %117, 5
  %119 = call i16 @llvm.umin.i16(i16 %115, i16 %118) #21
  store i16 %119, ptr %4, align 2
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %120

120:                                              ; preds = %97, %96, %83, %70
  store i8 0, ptr %52, align 2
  %121 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 26, i32 %56
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(14) %121, ptr noundef nonnull align 2 dereferenceable(14) %4, i32 14, i1 false)
  %122 = trunc i32 %56 to i16
  %123 = call i32 @drv_conf_tx(ptr noundef %7, ptr noundef %0, i16 noundef zeroext %122, ptr noundef nonnull %4) #21
  %124 = add nuw nsw i32 %56, 1
  %125 = icmp eq i32 %124, 4
  br i1 %125, label %126, label %55

126:                                              ; preds = %120
  %127 = load i32, ptr %19, align 8
  switch i32 %127, label %128 [
    i32 6, label %131
    i32 10, label %131
    i32 12, label %131
  ]

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 36
  store i8 %5, ptr %129, align 4
  br i1 %1, label %130, label %131

130:                                              ; preds = %128
  call void @ieee80211_bss_info_change_notify(ptr noundef %0, i32 noundef 8192) #21
  br label %131

131:                                              ; preds = %130, %128, %126, %126, %126, %13, %3
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %4) #21
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_conf_tx(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_send_auth(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr noundef %8, i8 noundef zeroext %9, i8 noundef zeroext %10, i32 noundef %11) local_unnamed_addr #0 {
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ieee80211_hw, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %5, 38
  %18 = add i32 %17, %16
  %19 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %18, i32 noundef 2592) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %66, label %21

21:                                               ; preds = %12
  %22 = load i32, ptr %15, align 4
  %23 = add i32 %22, 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 %23
  store ptr %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 14
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr i8, ptr %28, i32 %23
  store ptr %29, ptr %27, align 8
  %30 = tail call ptr @skb_put(ptr noundef nonnull %19, i32 noundef 30) #21
  %31 = getelementptr inbounds i8, ptr %30, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(30) %31, i8 0, i32 28, i1 false) #21
  store i16 176, ptr %30, align 2
  %32 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %30, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %32, ptr noundef align 1 dereferenceable(6) %6, i32 6, i1 false)
  %33 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %30, i32 0, i32 3
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %33, ptr noundef align 8 dereferenceable(6) %34, i32 6, i1 false)
  %35 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %30, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %35, ptr noundef align 1 dereferenceable(6) %7, i32 6, i1 false)
  %36 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %30, i32 0, i32 6
  store i16 %2, ptr %36, align 2
  %37 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %30, i32 0, i32 6, i32 0, i32 1
  store i16 %1, ptr %37, align 2
  %38 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %30, i32 0, i32 6, i32 0, i32 2
  store i16 %3, ptr %38, align 2
  %39 = icmp eq ptr %4, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %21
  %41 = tail call ptr @skb_put(ptr noundef nonnull %19, i32 noundef %5) #21
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %41, ptr nonnull align 1 %4, i32 %5, i1 false) #21
  br label %42

42:                                               ; preds = %40, %21
  %43 = icmp eq i16 %2, 1
  %44 = icmp eq i16 %1, 3
  %45 = and i1 %44, %43
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i16, ptr %30, align 2
  %48 = or i16 %47, 16384
  store i16 %48, ptr %30, align 2
  %49 = zext i8 %9 to i32
  %50 = zext i8 %10 to i32
  %51 = tail call i32 @ieee80211_wep_encrypt(ptr noundef %14, ptr noundef nonnull %19, ptr noundef %8, i32 noundef %49, i32 noundef %50) #21
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53, !prof !22

53:                                               ; preds = %46
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1728, i32 noundef 9, ptr noundef null) #21
  tail call void @kfree_skb_reason(ptr noundef nonnull %19, i32 noundef 0) #21
  br label %66

54:                                               ; preds = %46, %42
  %55 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3
  %56 = load i32, ptr %55, align 8
  %57 = or i32 %56, %11
  %58 = or i32 %57, 65536
  store i32 %58, ptr %55, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %59 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %60 = load volatile ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63, !prof !8

62:                                               ; preds = %54
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 2200, i32 noundef 9, ptr noundef null) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  tail call void @kfree_skb_reason(ptr noundef nonnull %19, i32 noundef 0) #21
  br label %66

63:                                               ; preds = %54
  %64 = load ptr, ptr %60, align 4
  %65 = load i32, ptr %64, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %0, ptr noundef nonnull %19, i32 noundef 7, i32 noundef %65) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %66

66:                                               ; preds = %63, %62, %53, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wep_encrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_send_deauth_disassoc(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i1 noundef zeroext %5, ptr nocapture noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  store i16 %3, ptr %6, align 2
  %10 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %6, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %6, i32 0, i32 5
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %6, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %12, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false)
  %13 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %6, i32 0, i32 3
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %13, ptr noundef align 8 dereferenceable(6) %15, i32 6, i1 false)
  %16 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %6, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %16, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false)
  %17 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %6, i32 0, i32 6
  store i16 %4, ptr %17, align 2
  br i1 %5, label %18, label %52

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 26
  %22 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %21, i32 noundef 2592) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %52, label %24

24:                                               ; preds = %18
  %25 = load i32, ptr %19, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %25
  store ptr %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 14
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr i8, ptr %30, i32 %25
  store ptr %31, ptr %29, align 8
  %32 = tail call ptr @skb_put(ptr noundef nonnull %22, i32 noundef 26) #21
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(26) %32, ptr noundef align 1 dereferenceable(26) %6, i32 26, i1 false) #21
  %33 = load i32, ptr %14, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 24, i32 9
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35, %24
  %41 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3
  %42 = load i32, ptr %41, align 8
  %43 = or i32 %42, 65536
  store i32 %43, ptr %41, align 8
  br label %44

44:                                               ; preds = %40, %35
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %45 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %46 = load volatile ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49, !prof !8

48:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 2200, i32 noundef 9, ptr noundef null) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  tail call void @kfree_skb_reason(ptr noundef nonnull %22, i32 noundef 0) #21
  br label %52

49:                                               ; preds = %44
  %50 = load ptr, ptr %46, align 4
  %51 = load i32, ptr %50, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %0, ptr noundef nonnull %22, i32 noundef 7, i32 noundef %51) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %52

52:                                               ; preds = %49, %48, %18, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_build_preq_ies(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = alloca [32 x i8], align 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %3, i8 0, i32 56, i1 false)
  %12 = zext i8 %6 to i32
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %14 = getelementptr i8, ptr %1, i32 %2
  %15 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %14 to i32
  %17 = icmp ne ptr %4, null
  %18 = icmp ne i32 %5, 0
  %19 = and i1 %17, %18
  %20 = and i32 %9, 2
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 3
  br label %24

24:                                               ; preds = %412, %10
  %25 = phi i32 [ 0, %10 ], [ %415, %412 ]
  %26 = phi i32 [ 0, %10 ], [ %416, %412 ]
  %27 = phi i32 [ 0, %10 ], [ %414, %412 ]
  %28 = phi i32 [ 0, %10 ], [ %413, %412 ]
  %29 = shl nuw nsw i32 1, %26
  %30 = and i32 %29, %12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %412, label %32

32:                                               ; preds = %24
  %33 = getelementptr i8, ptr %1, i32 %25
  %34 = sub i32 %2, %25
  %35 = getelementptr i32, ptr %7, i32 %26
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %11, i8 0, i32 32, i1 false) #21, !annotation !29
  %38 = getelementptr inbounds %struct.ieee80211_hw, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr %struct.wiphy, ptr %39, i32 0, i32 53, i32 %26
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  %43 = load i1, ptr @ieee80211_build_preq_ies_band.__already_done, align 1
  %44 = xor i1 %43, true
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %47, !prof !8

46:                                               ; preds = %32
  store i1 true, ptr @ieee80211_build_preq_ies_band.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1815, i32 noundef 9, ptr noundef null) #21
  br label %47

47:                                               ; preds = %46, %32
  br i1 %42, label %404, label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %15, align 4
  %50 = icmp eq i32 %49, 7
  %51 = select i1 %50, i32 64, i32 0
  %52 = icmp eq i32 %49, 6
  %53 = select i1 %52, i32 32, i32 %51
  %54 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %48
  %58 = zext i1 %50 to i32
  %59 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 1
  %60 = shl nuw nsw i32 5, %58
  %61 = select i1 %52, i32 20, i32 %60
  %62 = add nsw i32 %61, -1
  br label %63

63:                                               ; preds = %84, %57
  %64 = phi i32 [ 0, %57 ], [ %86, %84 ]
  %65 = phi i32 [ 0, %57 ], [ %85, %84 ]
  %66 = shl nuw i32 1, %64
  %67 = and i32 %66, %36
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %63
  %70 = load ptr, ptr %59, align 4
  %71 = getelementptr %struct.ieee80211_rate, ptr %70, i32 %64
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, %53
  %74 = icmp eq i32 %73, %53
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = getelementptr %struct.ieee80211_rate, ptr %70, i32 %64, i32 1
  %77 = load i16, ptr %76, align 4
  %78 = zext i16 %77 to i32
  %79 = add nsw i32 %62, %78
  %80 = sdiv i32 %79, %61
  %81 = trunc i32 %80 to i8
  %82 = add i32 %65, 1
  %83 = getelementptr [32 x i8], ptr %11, i32 0, i32 %65
  store i8 %81, ptr %83, align 1
  br label %84

84:                                               ; preds = %75, %69, %63
  %85 = phi i32 [ %65, %63 ], [ %65, %69 ], [ %82, %75 ]
  %86 = add nuw nsw i32 %64, 1
  %87 = icmp eq i32 %86, %55
  br i1 %87, label %88, label %63

88:                                               ; preds = %84, %48
  %89 = phi i32 [ 0, %48 ], [ %85, %84 ]
  %90 = tail call i32 @llvm.smin.i32(i32 %89, i32 8) #21
  %91 = ptrtoint ptr %33 to i32
  %92 = add nsw i32 %90, 2
  %93 = icmp sgt i32 %92, %34
  br i1 %93, label %394, label %94

94:                                               ; preds = %88
  %95 = getelementptr i8, ptr %33, i32 1
  store i8 1, ptr %33, align 1
  %96 = trunc i32 %90 to i8
  %97 = getelementptr i8, ptr %33, i32 2
  store i8 %96, ptr %95, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %97, ptr nonnull align 1 %11, i32 %90, i1 false) #21
  %98 = getelementptr i8, ptr %97, i32 %90
  br i1 %19, label %99, label %106

99:                                               ; preds = %94
  %100 = tail call i32 @ieee80211_ie_split_ric(ptr noundef nonnull %4, i32 noundef %5, ptr noundef nonnull @ieee80211_build_preq_ies_band.before_extrates, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #21
  %101 = ptrtoint ptr %98 to i32
  %102 = sub i32 %16, %101
  %103 = icmp ult i32 %102, %100
  br i1 %103, label %394, label %104

104:                                              ; preds = %99
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %98, ptr nonnull align 1 %4, i32 %100, i1 false) #21
  %105 = getelementptr i8, ptr %98, i32 %100
  br label %106

106:                                              ; preds = %104, %94
  %107 = phi i32 [ %100, %104 ], [ 0, %94 ]
  %108 = phi ptr [ %105, %104 ], [ %98, %94 ]
  %109 = sub i32 %89, %90
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = ptrtoint ptr %108 to i32
  %113 = sub i32 %16, %112
  %114 = add nuw i32 %109, 2
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %394, label %116

116:                                              ; preds = %111
  %117 = getelementptr i8, ptr %108, i32 1
  store i8 50, ptr %108, align 1
  %118 = trunc i32 %109 to i8
  %119 = getelementptr i8, ptr %108, i32 2
  store i8 %118, ptr %117, align 1
  %120 = getelementptr i8, ptr %11, i32 %90
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %119, ptr align 1 %120, i32 %109, i1 false) #21
  %121 = getelementptr i8, ptr %119, i32 %109
  br label %122

122:                                              ; preds = %116, %106
  %123 = phi ptr [ %121, %116 ], [ %108, %106 ]
  %124 = load ptr, ptr %8, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %144, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = ptrtoint ptr %123 to i32
  %132 = sub i32 %16, %131
  %133 = icmp slt i32 %132, 3
  br i1 %133, label %394, label %134

134:                                              ; preds = %130
  %135 = getelementptr i8, ptr %123, i32 1
  store i8 3, ptr %123, align 1
  %136 = getelementptr i8, ptr %123, i32 2
  store i8 1, ptr %135, align 1
  %137 = load ptr, ptr %8, align 4
  %138 = getelementptr inbounds %struct.ieee80211_channel, ptr %137, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = mul i32 %139, 1000
  %141 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %140) #21
  %142 = trunc i32 %141 to i8
  %143 = getelementptr i8, ptr %123, i32 3
  store i8 %142, ptr %136, align 1
  br label %144

144:                                              ; preds = %134, %126, %122
  %145 = phi ptr [ %143, %134 ], [ %123, %126 ], [ %123, %122 ]
  br i1 %21, label %146, label %399

146:                                              ; preds = %144
  br i1 %19, label %147, label %156

147:                                              ; preds = %146
  %148 = tail call i32 @ieee80211_ie_split_ric(ptr noundef nonnull %4, i32 noundef %5, ptr noundef nonnull @ieee80211_build_preq_ies_band.before_ht, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef %107) #21
  %149 = ptrtoint ptr %145 to i32
  %150 = sub i32 %16, %149
  %151 = sub i32 %148, %107
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %394, label %153

153:                                              ; preds = %147
  %154 = getelementptr i8, ptr %4, i32 %107
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %145, ptr align 1 %154, i32 %151, i1 false) #21
  %155 = getelementptr i8, ptr %145, i32 %151
  br label %156

156:                                              ; preds = %153, %146
  %157 = phi i32 [ %148, %153 ], [ %107, %146 ]
  %158 = phi ptr [ %155, %153 ], [ %145, %146 ]
  %159 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 5
  %160 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 5, i32 1
  %161 = load i8, ptr %160, align 2, !range !10
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %181, label %163

163:                                              ; preds = %156
  %164 = ptrtoint ptr %158 to i32
  %165 = sub i32 %16, %164
  %166 = icmp ult i32 %165, 28
  br i1 %166, label %394, label %167

167:                                              ; preds = %163
  %168 = load i16, ptr %159, align 4
  %169 = getelementptr i8, ptr %158, i32 1
  store i8 45, ptr %158, align 1
  %170 = getelementptr i8, ptr %158, i32 2
  store i8 26, ptr %169, align 1
  %171 = getelementptr i8, ptr %158, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(26) %171, i8 0, i32 24, i1 false) #21
  store i16 %168, ptr %170, align 1
  %172 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 5, i32 2
  %173 = load i8, ptr %172, align 1
  %174 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 5, i32 3
  %175 = load i8, ptr %174, align 2
  %176 = shl i8 %175, 2
  %177 = or i8 %176, %173
  %178 = getelementptr i8, ptr %158, i32 5
  store i8 %177, ptr %171, align 1
  %179 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 5, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %178, ptr noundef align 1 dereferenceable(16) %179, i32 16, i1 false) #21
  %180 = getelementptr i8, ptr %158, i32 28
  br label %181

181:                                              ; preds = %167, %156
  %182 = phi ptr [ %180, %167 ], [ %158, %156 ]
  br i1 %19, label %183, label %192

183:                                              ; preds = %181
  %184 = tail call i32 @ieee80211_ie_split_ric(ptr noundef nonnull %4, i32 noundef %5, ptr noundef nonnull @ieee80211_build_preq_ies_band.before_vht, i32 noundef 6, ptr noundef null, i32 noundef 0, i32 noundef %157) #21
  %185 = ptrtoint ptr %182 to i32
  %186 = sub i32 %16, %185
  %187 = sub i32 %184, %157
  %188 = icmp ult i32 %186, %187
  br i1 %188, label %394, label %189

189:                                              ; preds = %183
  %190 = getelementptr i8, ptr %4, i32 %157
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %182, ptr align 1 %190, i32 %187, i1 false) #21
  %191 = getelementptr i8, ptr %182, i32 %187
  br label %192

192:                                              ; preds = %189, %181
  %193 = phi i32 [ %184, %189 ], [ %157, %181 ]
  %194 = phi ptr [ %191, %189 ], [ %182, %181 ]
  %195 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 3
  %196 = load i32, ptr %195, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %235

198:                                              ; preds = %192
  %199 = load ptr, ptr %41, align 4
  %200 = getelementptr %struct.ieee80211_channel, ptr %199, i32 0, i32 4
  %201 = load i32, ptr %200, align 4
  %202 = and i32 %201, 129
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %215, label %204

204:                                              ; preds = %208, %198
  %205 = phi i32 [ %206, %208 ], [ 0, %198 ]
  %206 = add nuw nsw i32 %205, 1
  %207 = icmp eq i32 %206, %196
  br i1 %207, label %235, label %208

208:                                              ; preds = %204
  %209 = getelementptr %struct.ieee80211_channel, ptr %199, i32 %206, i32 4
  %210 = load i32, ptr %209, align 4
  %211 = and i32 %210, 129
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %204

213:                                              ; preds = %208
  %214 = icmp slt i32 %206, %196
  br label %215

215:                                              ; preds = %213, %198
  %216 = phi i1 [ true, %198 ], [ %214, %213 ]
  %217 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 6
  %218 = load i8, ptr %217, align 4, !range !10
  %219 = icmp eq i8 %218, 0
  %220 = xor i1 %216, true
  %221 = select i1 %219, i1 true, i1 %220
  br i1 %221, label %235, label %222

222:                                              ; preds = %215
  %223 = ptrtoint ptr %194 to i32
  %224 = sub i32 %16, %223
  %225 = icmp ult i32 %224, 14
  br i1 %225, label %394, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 6, i32 1
  %228 = load i32, ptr %227, align 4
  %229 = getelementptr i8, ptr %194, i32 1
  store i8 -65, ptr %194, align 1
  %230 = getelementptr i8, ptr %194, i32 2
  store i8 12, ptr %229, align 1
  %231 = getelementptr i8, ptr %194, i32 6
  store i64 0, ptr %231, align 1
  store i32 %228, ptr %230, align 1
  %232 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 6, i32 2
  %233 = load i64, ptr %232, align 4
  store i64 %233, ptr %231, align 1
  %234 = getelementptr i8, ptr %194, i32 14
  br label %235

235:                                              ; preds = %226, %215, %204, %192
  %236 = phi ptr [ %234, %226 ], [ %194, %215 ], [ %194, %192 ], [ %194, %204 ]
  br i1 %19, label %237, label %246

237:                                              ; preds = %235
  %238 = tail call i32 @ieee80211_ie_split_ric(ptr noundef nonnull %4, i32 noundef %5, ptr noundef nonnull @ieee80211_build_preq_ies_band.before_he, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef %193) #21
  %239 = ptrtoint ptr %236 to i32
  %240 = sub i32 %16, %239
  %241 = sub i32 %238, %193
  %242 = icmp ult i32 %240, %241
  br i1 %242, label %394, label %243

243:                                              ; preds = %237
  %244 = getelementptr i8, ptr %4, i32 %193
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %236, ptr align 1 %244, i32 %241, i1 false) #21
  %245 = getelementptr i8, ptr %236, i32 %241
  br label %246

246:                                              ; preds = %243, %235
  %247 = phi i32 [ %238, %243 ], [ %193, %235 ]
  %248 = phi ptr [ %245, %243 ], [ %236, %235 ]
  %249 = load i32, ptr %22, align 8
  %250 = load i8, ptr %23, align 2, !range !10
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %246
  switch i32 %249, label %254 [
    i32 2, label %258
    i32 3, label %253
  ]

253:                                              ; preds = %252
  br label %258

254:                                              ; preds = %252, %246
  %255 = trunc i32 %249 to i8
  %256 = and i32 %249, 255
  %257 = icmp ugt i8 %255, 11
  br i1 %257, label %268, label %258, !prof !8

258:                                              ; preds = %254, %253, %252
  %259 = phi i32 [ %256, %254 ], [ 8, %252 ], [ 9, %253 ]
  %260 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 9
  %261 = load i16, ptr %260, align 4
  %262 = zext i16 %261 to i32
  %263 = icmp eq i16 %261, 0
  br i1 %263, label %296, label %264

264:                                              ; preds = %258
  %265 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 10
  %266 = load ptr, ptr %265, align 4
  %267 = shl nuw i32 1, %259
  br label %272

268:                                              ; preds = %254
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 510, i32 noundef 9, ptr noundef null) #21
  br label %296

269:                                              ; preds = %272
  %270 = add nuw nsw i32 %273, 1
  %271 = icmp eq i32 %270, %262
  br i1 %271, label %296, label %272

272:                                              ; preds = %269, %264
  %273 = phi i32 [ 0, %264 ], [ %270, %269 ]
  %274 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %266, i32 %273
  %275 = load i16, ptr %274, align 4
  %276 = zext i16 %275 to i32
  %277 = and i32 %267, %276
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %269, label %279

279:                                              ; preds = %272
  %280 = icmp eq ptr %274, null
  br i1 %280, label %296, label %281

281:                                              ; preds = %279
  %282 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %266, i32 %273, i32 1
  %283 = load i8, ptr %282, align 2, !range !10
  %284 = icmp eq i8 %283, 0
  %285 = icmp eq ptr %282, null
  %286 = or i1 %285, %284
  br i1 %286, label %296, label %287

287:                                              ; preds = %281
  %288 = load ptr, ptr %38, align 8
  %289 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 2
  %290 = load i32, ptr %289, align 4
  %291 = shl nuw i32 1, %290
  %292 = tail call zeroext i1 @cfg80211_any_usable_channels(ptr noundef %288, i32 noundef %291, i32 noundef 8192) #21
  br i1 %292, label %293, label %296

293:                                              ; preds = %287
  %294 = tail call ptr @ieee80211_ie_build_he_cap(ptr noundef %248, ptr noundef nonnull %282, ptr noundef %14) #21
  %295 = icmp eq ptr %294, null
  br i1 %295, label %394, label %296

296:                                              ; preds = %293, %287, %281, %279, %269, %268, %258
  %297 = phi ptr [ %294, %293 ], [ %248, %287 ], [ %248, %258 ], [ %248, %268 ], [ %248, %279 ], [ %248, %281 ], [ %248, %269 ]
  %298 = load ptr, ptr %38, align 8
  %299 = tail call zeroext i1 @cfg80211_any_usable_channels(ptr noundef %298, i32 noundef 8, i32 noundef 8192) #21
  br i1 %299, label %300, label %390

300:                                              ; preds = %296
  %301 = load ptr, ptr %38, align 8
  %302 = getelementptr %struct.wiphy, ptr %301, i32 0, i32 53, i32 3
  %303 = load ptr, ptr %302, align 4
  %304 = load i32, ptr %22, align 8
  %305 = load i8, ptr %23, align 2, !range !10
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %309, label %307

307:                                              ; preds = %300
  switch i32 %304, label %309 [
    i32 2, label %313
    i32 3, label %308
  ]

308:                                              ; preds = %307
  br label %313

309:                                              ; preds = %307, %300
  %310 = trunc i32 %304 to i8
  %311 = and i32 %304, 255
  %312 = icmp ugt i8 %310, 11
  br i1 %312, label %323, label %313, !prof !8

313:                                              ; preds = %309, %308, %307
  %314 = phi i32 [ %311, %309 ], [ 8, %307 ], [ 9, %308 ]
  %315 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %303, i32 0, i32 9
  %316 = load i16, ptr %315, align 4
  %317 = zext i16 %316 to i32
  %318 = icmp eq i16 %316, 0
  br i1 %318, label %390, label %319

319:                                              ; preds = %313
  %320 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %303, i32 0, i32 10
  %321 = load ptr, ptr %320, align 4
  %322 = shl nuw i32 1, %314
  br label %327

323:                                              ; preds = %309
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 510, i32 noundef 9, ptr noundef null) #21
  br label %390

324:                                              ; preds = %327
  %325 = add nuw nsw i32 %328, 1
  %326 = icmp eq i32 %325, %317
  br i1 %326, label %390, label %327

327:                                              ; preds = %324, %319
  %328 = phi i32 [ 0, %319 ], [ %325, %324 ]
  %329 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %321, i32 %328
  %330 = load i16, ptr %329, align 4
  %331 = zext i16 %330 to i32
  %332 = and i32 %322, %331
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %324, label %334

334:                                              ; preds = %327
  %335 = icmp eq ptr %329, null
  br i1 %335, label %390, label %336

336:                                              ; preds = %334
  %337 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %321, i32 %328, i32 1
  %338 = load i8, ptr %337, align 2, !range !10
  %339 = icmp eq i8 %338, 0
  %340 = icmp eq ptr %337, null
  %341 = or i1 %340, %339
  br i1 %341, label %390, label %342

342:                                              ; preds = %336
  br i1 %306, label %345, label %343

343:                                              ; preds = %342
  switch i32 %304, label %345 [
    i32 2, label %349
    i32 3, label %344
  ]

344:                                              ; preds = %343
  br label %349

345:                                              ; preds = %343, %342
  %346 = trunc i32 %304 to i8
  %347 = and i32 %304, 255
  %348 = icmp ugt i8 %346, 11
  br i1 %348, label %359, label %349, !prof !8

349:                                              ; preds = %345, %344, %343
  %350 = phi i32 [ %347, %345 ], [ 8, %343 ], [ 9, %344 ]
  %351 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 9
  %352 = load i16, ptr %351, align 4
  %353 = zext i16 %352 to i32
  %354 = icmp eq i16 %352, 0
  br i1 %354, label %376, label %355

355:                                              ; preds = %349
  %356 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 10
  %357 = load ptr, ptr %356, align 4
  %358 = shl nuw i32 1, %350
  br label %363

359:                                              ; preds = %345
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 510, i32 noundef 9, ptr noundef null) #21
  br label %376

360:                                              ; preds = %363
  %361 = add nuw nsw i32 %364, 1
  %362 = icmp eq i32 %361, %353
  br i1 %362, label %376, label %363

363:                                              ; preds = %360, %355
  %364 = phi i32 [ 0, %355 ], [ %361, %360 ]
  %365 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %357, i32 %364
  %366 = load i16, ptr %365, align 4
  %367 = zext i16 %366 to i32
  %368 = and i32 %358, %367
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %360, label %370

370:                                              ; preds = %363
  %371 = icmp eq ptr %365, null
  br i1 %371, label %376, label %372

372:                                              ; preds = %370
  %373 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %357, i32 %364, i32 1
  %374 = load i8, ptr %373, align 2, !range !10
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %376, label %377, !prof !8

376:                                              ; preds = %372, %370, %360, %359, %349
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 558, i32 noundef 9, ptr noundef null) #21
  br label %380

377:                                              ; preds = %372
  %378 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %357, i32 %364, i32 2
  %379 = load i16, ptr %378, align 1
  br label %380

380:                                              ; preds = %377, %376
  %381 = phi i16 [ 0, %376 ], [ %379, %377 ]
  %382 = ptrtoint ptr %297 to i32
  %383 = sub i32 %16, %382
  %384 = icmp slt i32 %383, 5
  br i1 %384, label %390, label %385

385:                                              ; preds = %380
  %386 = getelementptr i8, ptr %297, i32 1
  store i8 -1, ptr %297, align 1
  %387 = getelementptr i8, ptr %297, i32 2
  store i8 3, ptr %386, align 1
  %388 = getelementptr i8, ptr %297, i32 3
  store i8 59, ptr %387, align 1
  store i16 %381, ptr %388, align 1
  %389 = getelementptr i8, ptr %297, i32 5
  br label %390

390:                                              ; preds = %385, %380, %336, %334, %324, %323, %313, %296
  %391 = phi ptr [ %297, %296 ], [ %389, %385 ], [ %297, %380 ], [ %297, %313 ], [ %297, %323 ], [ %297, %334 ], [ %297, %336 ], [ %297, %324 ]
  %392 = ptrtoint ptr %391 to i32
  %393 = sub i32 %392, %91
  br label %404

394:                                              ; preds = %293, %237, %222, %183, %163, %147, %130, %111, %99, %88
  %395 = phi i32 [ 0, %88 ], [ 0, %99 ], [ %107, %111 ], [ %107, %147 ], [ %157, %183 ], [ %193, %237 ], [ %247, %293 ], [ %193, %222 ], [ %157, %163 ], [ %107, %130 ]
  %396 = phi ptr [ %33, %88 ], [ %98, %99 ], [ %108, %111 ], [ %145, %147 ], [ %182, %183 ], [ %236, %237 ], [ null, %293 ], [ %194, %222 ], [ %158, %163 ], [ %123, %130 ]
  %397 = load i1, ptr @ieee80211_build_preq_ies_band.__already_done.17, align 1
  br i1 %397, label %399, label %398, !prof !22

398:                                              ; preds = %394
  store i1 true, ptr @ieee80211_build_preq_ies_band.__already_done.17, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2007, i32 noundef 9, ptr noundef nonnull @.str.18) #21
  br label %399

399:                                              ; preds = %398, %394, %144
  %400 = phi i32 [ %395, %394 ], [ %395, %398 ], [ %107, %144 ]
  %401 = phi ptr [ %396, %394 ], [ %396, %398 ], [ %145, %144 ]
  %402 = ptrtoint ptr %401 to i32
  %403 = sub i32 %402, %91
  br label %404

404:                                              ; preds = %399, %390, %47
  %405 = phi i32 [ 0, %47 ], [ %400, %399 ], [ %247, %390 ]
  %406 = phi i32 [ 0, %47 ], [ %403, %399 ], [ %393, %390 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #21
  %407 = add i32 %406, %25
  %408 = getelementptr i8, ptr %1, i32 %27
  %409 = getelementptr [6 x ptr], ptr %3, i32 0, i32 %26
  store ptr %408, ptr %409, align 4
  %410 = sub i32 %407, %27
  %411 = getelementptr %struct.ieee80211_scan_ies, ptr %3, i32 0, i32 1, i32 %26
  store i32 %410, ptr %411, align 4
  br label %412

412:                                              ; preds = %404, %24
  %413 = phi i32 [ %28, %24 ], [ %405, %404 ]
  %414 = phi i32 [ %27, %24 ], [ %407, %404 ]
  %415 = phi i32 [ %25, %24 ], [ %407, %404 ]
  %416 = add nuw nsw i32 %26, 1
  %417 = icmp eq i32 %416, 6
  br i1 %417, label %418, label %24

418:                                              ; preds = %412
  br i1 %19, label %419, label %434

419:                                              ; preds = %418
  %420 = sub i32 %2, %415
  %421 = sub i32 %5, %413
  %422 = icmp ult i32 %420, %421
  %423 = load i1, ptr @ieee80211_build_preq_ies.__already_done, align 1
  %424 = xor i1 %423, true
  %425 = select i1 %422, i1 %424, i1 false
  br i1 %425, label %426, label %427, !prof !8

426:                                              ; preds = %419
  store i1 true, ptr @ieee80211_build_preq_ies.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2044, i32 noundef 9, ptr noundef nonnull @.str.1) #21
  br label %427

427:                                              ; preds = %426, %419
  br i1 %422, label %434, label %428

428:                                              ; preds = %427
  %429 = getelementptr i8, ptr %1, i32 %415
  %430 = getelementptr i8, ptr %4, i32 %413
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %429, ptr align 1 %430, i32 %421, i1 false)
  %431 = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %3, i32 0, i32 2
  store ptr %429, ptr %431, align 4
  %432 = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %3, i32 0, i32 3
  store i32 %421, ptr %432, align 4
  %433 = add i32 %415, %421
  br label %434

434:                                              ; preds = %428, %427, %418
  %435 = phi i32 [ %415, %427 ], [ %433, %428 ], [ %415, %418 ]
  ret i32 %435
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_build_probe_req(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = alloca %struct.cfg80211_chan_def, align 4
  %12 = alloca [6 x i32], align 4
  %13 = alloca %struct.ieee80211_scan_ies, align 4
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #21
  %16 = getelementptr inbounds i8, ptr %11, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %16, i8 0, i32 20, i1 false), !annotation !29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #21
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %11, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = and i32 %9, 1
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr %4, ptr null
  store ptr %22, ptr %11, align 4
  %23 = getelementptr inbounds %struct.ieee80211_local, ptr %15, i32 0, i32 75
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %8
  %26 = tail call ptr @ieee80211_probereq_get(ptr noundef %15, ptr noundef %1, ptr noundef %5, i32 noundef %6, i32 noundef %25) #21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %58, label %28

28:                                               ; preds = %10
  %29 = load i32, ptr %4, align 4
  %30 = getelementptr [6 x i32], ptr %12, i32 0, i32 %29
  store i32 %3, ptr %30, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 14
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = ptrtoint ptr %32 to i32
  %41 = sub i32 %39, %40
  br label %42

42:                                               ; preds = %36, %28
  %43 = phi i32 [ %41, %36 ], [ 0, %28 ]
  %44 = shl nuw i32 1, %29
  %45 = trunc i32 %44 to i8
  %46 = call i32 @ieee80211_build_preq_ies(ptr noundef %0, ptr noundef %32, i32 noundef %43, ptr noundef nonnull %13, ptr noundef %7, i32 noundef %8, i8 noundef zeroext %45, ptr noundef nonnull %12, ptr noundef nonnull %11, i32 noundef %9)
  %47 = tail call ptr @skb_put(ptr noundef nonnull %26, i32 noundef %46) #21
  %48 = icmp eq ptr %2, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 17
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %51, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %52, ptr noundef nonnull align 1 dereferenceable(6) %2, i32 6, i1 false)
  %53 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %51, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %53, ptr noundef nonnull align 1 dereferenceable(6) %2, i32 6, i1 false)
  br label %54

54:                                               ; preds = %49, %42
  %55 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3
  %56 = load i32, ptr %55, align 8
  %57 = or i32 %56, 65536
  store i32 %57, ptr %55, align 8
  br label %58

58:                                               ; preds = %54, %10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #21
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_probereq_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_sta_get_rates(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr %struct.wiphy, ptr %8, i32 0, i32 53, i32 %2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2116, i32 noundef 9, ptr noundef null) #21
  br label %119

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 7
  %17 = select i1 %16, i32 64, i32 0
  %18 = icmp eq i32 %15, 6
  %19 = select i1 %18, i32 32, i32 %17
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %21, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 7
  %27 = zext i1 %26 to i32
  %28 = icmp eq i32 %25, 6
  %29 = select i1 %28, i32 2, i32 %27
  br label %30

30:                                               ; preds = %23, %13
  %31 = phi i32 [ %29, %23 ], [ 0, %13 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  %32 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %10, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ieee802_11_elems, ptr %1, i32 0, i32 59
  %35 = getelementptr inbounds %struct.ieee802_11_elems, ptr %1, i32 0, i32 63
  %36 = load i8, ptr %34, align 2
  %37 = zext i8 %36 to i32
  %38 = load i8, ptr %35, align 2
  %39 = zext i8 %38 to i32
  %40 = sub nsw i32 0, %37
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %119, label %42

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.ieee802_11_elems, ptr %1, i32 0, i32 13
  %44 = getelementptr inbounds %struct.ieee802_11_elems, ptr %1, i32 0, i32 7
  %45 = icmp eq i32 %33, 0
  %46 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %10, i32 0, i32 1
  %47 = shl nuw nsw i32 1, %31
  %48 = add nsw i32 %47, -1
  %49 = icmp eq ptr %3, null
  br label %50

50:                                               ; preds = %110, %42
  %51 = phi i8 [ %38, %42 ], [ %111, %110 ]
  %52 = phi i8 [ %36, %42 ], [ %112, %110 ]
  %53 = phi i32 [ %37, %42 ], [ %115, %110 ]
  %54 = phi i32 [ 0, %42 ], [ %114, %110 ]
  %55 = phi i32 [ 0, %42 ], [ %113, %110 ]
  %56 = icmp ult i32 %54, %53
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load ptr, ptr %44, align 4
  %59 = getelementptr i8, ptr %58, i32 %54
  br label %66

60:                                               ; preds = %50
  %61 = load ptr, ptr %43, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = sub nsw i32 %54, %53
  %65 = getelementptr i8, ptr %61, i32 %64
  br label %66

66:                                               ; preds = %63, %57
  %67 = phi ptr [ %65, %63 ], [ %59, %57 ]
  %68 = load i8, ptr %67, align 1
  br label %69

69:                                               ; preds = %66, %60
  %70 = phi i8 [ 0, %60 ], [ %68, %66 ]
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 127
  %73 = mul nuw nsw i32 %72, 5
  %74 = and i32 %71, 128
  %75 = icmp eq i32 %74, 0
  %76 = xor i1 %75, true
  %77 = icmp eq i32 %72, 127
  %78 = select i1 %76, i1 %77, i1 false
  %79 = select i1 %78, i1 true, i1 %45
  br i1 %79, label %110, label %80

80:                                               ; preds = %69
  %81 = select i1 %49, i1 true, i1 %75
  br label %82

82:                                               ; preds = %103, %80
  %83 = phi i32 [ 0, %80 ], [ %105, %103 ]
  %84 = phi i32 [ %55, %80 ], [ %104, %103 ]
  %85 = load ptr, ptr %46, align 4
  %86 = getelementptr %struct.ieee80211_rate, ptr %85, i32 %83
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, %19
  %89 = icmp eq i32 %88, %19
  br i1 %89, label %90, label %103

90:                                               ; preds = %82
  %91 = getelementptr %struct.ieee80211_rate, ptr %85, i32 %83, i32 1
  %92 = load i16, ptr %91, align 4
  %93 = zext i16 %92 to i32
  %94 = add i32 %48, %93
  %95 = sdiv i32 %94, %47
  %96 = icmp eq i32 %95, %73
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = shl nuw i32 1, %83
  %99 = or i32 %98, %84
  br i1 %81, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr %3, align 4
  %102 = or i32 %101, %98
  store i32 %102, ptr %3, align 4
  br label %103

103:                                              ; preds = %100, %97, %90, %82
  %104 = phi i32 [ %84, %82 ], [ %99, %100 ], [ %99, %97 ], [ %84, %90 ]
  %105 = add nuw i32 %83, 1
  %106 = icmp eq i32 %105, %33
  br i1 %106, label %107, label %82

107:                                              ; preds = %103
  %108 = load i8, ptr %34, align 2
  %109 = load i8, ptr %35, align 2
  br label %110

110:                                              ; preds = %107, %69
  %111 = phi i8 [ %51, %69 ], [ %109, %107 ]
  %112 = phi i8 [ %52, %69 ], [ %108, %107 ]
  %113 = phi i32 [ %55, %69 ], [ %104, %107 ]
  %114 = add nuw nsw i32 %54, 1
  %115 = zext i8 %112 to i32
  %116 = zext i8 %111 to i32
  %117 = add nuw nsw i32 %116, %115
  %118 = icmp ult i32 %114, %117
  br i1 %118, label %50, label %119

119:                                              ; preds = %110, %30, %12
  %120 = phi i32 [ 1, %12 ], [ 0, %30 ], [ %113, %110 ]
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_stop_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 28
  %3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %2) #21
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  tail call void @flush_workqueue(ptr noundef %5) #21
  tail call void @drv_stop(ptr noundef %0) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_stop(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_reconfig(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 31
  %4 = load i8, ptr %3, align 1, !range !10
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 13
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %828, label %9

9:                                                ; preds = %1
  br i1 %5, label %12, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 33
  store i8 1, ptr %11, align 1
  br label %12

12:                                               ; preds = %10, %9
  %13 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 37
  %14 = load i8, ptr %13, align 1, !range !10
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  store i8 0, ptr %3, align 1
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_resume, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = tail call ptr @llvm.thread.pointer() #21
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !30
  %31 = tail call i32 @__traceiter_drv_resume(ptr noundef null, ptr noundef %0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !31
  br label %32

32:                                               ; preds = %30, %19, %16
  %33 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ieee80211_ops, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %0) #21
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %32
  %41 = tail call ptr @llvm.thread.pointer() #21
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  %52 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %37) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !33
  br label %53

53:                                               ; preds = %51, %40, %32
  store i8 0, ptr %13, align 1
  %54 = icmp slt i32 %37, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 33
  store i8 0, ptr %56, align 1
  br label %1025

57:                                               ; preds = %53
  switch i32 %37, label %58 [
    i32 0, label %828
    i32 1, label %59
  ], !prof !34

58:                                               ; preds = %57
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2349, i32 noundef 9, ptr noundef null) #21
  br label %59

59:                                               ; preds = %58, %57
  store i8 1, ptr %3, align 1
  br label %60

60:                                               ; preds = %59, %12
  br i1 %5, label %73, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 36
  %63 = load i8, ptr %62, align 2, !range !10
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %64, i1 true, i1 %15
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 101
  %68 = tail call zeroext i1 @cancel_work_sync(ptr noundef %67) #21
  br label %69

69:                                               ; preds = %66, %61
  %70 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 35
  store i8 0, ptr %70, align 1
  %71 = tail call i32 @drv_start(ptr noundef %0) #21
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %77

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 35
  store i8 0, ptr %74, align 1
  %75 = tail call i32 @drv_start(ptr noundef %0) #21
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %78

77:                                               ; preds = %69
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2381, i32 noundef 9, ptr noundef nonnull @.str.2) #21
  br label %79

78:                                               ; preds = %73
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2383, i32 noundef 9, ptr noundef nonnull @.str.3) #21
  br label %79

79:                                               ; preds = %78, %77
  %80 = phi i32 [ %75, %78 ], [ %71, %77 ]
  tail call fastcc void @ieee80211_handle_reconfig_failure(ptr noundef %0)
  br label %1025

81:                                               ; preds = %73, %69
  %82 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 35
  %85 = load i32, ptr %84, align 8
  %86 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_set_frag_threshold, i32 0, i32 1), align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %81
  %89 = tail call ptr @llvm.thread.pointer() #21
  %90 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 2
  %91 = load i32, ptr %90, align 8
  %92 = lshr i32 %91, 5
  %93 = getelementptr i32, ptr @__cpu_online_mask, i32 %92
  %94 = load volatile i32, ptr %93, align 4
  %95 = and i32 %91, 31
  %96 = shl nuw i32 1, %95
  %97 = and i32 %96, %94
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %88
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !35
  %100 = tail call i32 @__traceiter_drv_set_frag_threshold(ptr noundef null, ptr noundef %0, i32 noundef %85) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !36
  br label %101

101:                                              ; preds = %99, %88, %81
  %102 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.ieee80211_ops, ptr %103, i32 0, i32 29
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %101
  %108 = tail call i32 %105(ptr noundef %0, i32 noundef %85) #21
  br label %109

109:                                              ; preds = %107, %101
  %110 = phi i32 [ %108, %107 ], [ 0, %101 ]
  %111 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %109
  %114 = tail call ptr @llvm.thread.pointer() #21
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
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  %125 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %110) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !33
  br label %126

126:                                              ; preds = %124, %113, %109
  %127 = load ptr, ptr %82, align 8
  %128 = getelementptr inbounds %struct.wiphy, ptr %127, i32 0, i32 36
  %129 = load i32, ptr %128, align 4
  %130 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_set_rts_threshold, i32 0, i32 1), align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %126
  %133 = tail call ptr @llvm.thread.pointer() #21
  %134 = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 2
  %135 = load i32, ptr %134, align 8
  %136 = lshr i32 %135, 5
  %137 = getelementptr i32, ptr @__cpu_online_mask, i32 %136
  %138 = load volatile i32, ptr %137, align 4
  %139 = and i32 %135, 31
  %140 = shl nuw i32 1, %139
  %141 = and i32 %140, %138
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %132
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  %144 = tail call i32 @__traceiter_drv_set_rts_threshold(ptr noundef null, ptr noundef %0, i32 noundef %129) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !38
  br label %145

145:                                              ; preds = %143, %132, %126
  %146 = load ptr, ptr %102, align 4
  %147 = getelementptr inbounds %struct.ieee80211_ops, ptr %146, i32 0, i32 30
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %145
  %151 = tail call i32 %148(ptr noundef %0, i32 noundef %129) #21
  br label %152

152:                                              ; preds = %150, %145
  %153 = phi i32 [ %151, %150 ], [ 0, %145 ]
  %154 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %152
  %157 = tail call ptr @llvm.thread.pointer() #21
  %158 = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 2
  %159 = load i32, ptr %158, align 8
  %160 = lshr i32 %159, 5
  %161 = getelementptr i32, ptr @__cpu_online_mask, i32 %160
  %162 = load volatile i32, ptr %161, align 4
  %163 = and i32 %159, 31
  %164 = shl nuw i32 1, %163
  %165 = and i32 %164, %162
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %156
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  %168 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %153) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !33
  br label %169

169:                                              ; preds = %167, %156, %152
  %170 = load ptr, ptr %82, align 8
  %171 = getelementptr inbounds %struct.wiphy, ptr %170, i32 0, i32 37
  %172 = load i8, ptr %171, align 16
  %173 = zext i8 %172 to i16
  %174 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_set_coverage_class, i32 0, i32 1), align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %169
  %177 = tail call ptr @llvm.thread.pointer() #21
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
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !39
  %188 = tail call i32 @__traceiter_drv_set_coverage_class(ptr noundef null, ptr noundef %0, i16 noundef signext %173) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !40
  br label %189

189:                                              ; preds = %187, %176, %169
  %190 = load ptr, ptr %102, align 4
  %191 = getelementptr inbounds %struct.ieee80211_ops, ptr %190, i32 0, i32 49
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %189
  tail call void %192(ptr noundef %0, i16 noundef signext %173) #21
  br label %195

195:                                              ; preds = %194, %189
  %196 = phi i32 [ 0, %194 ], [ -95, %189 ]
  %197 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %212

199:                                              ; preds = %195
  %200 = tail call ptr @llvm.thread.pointer() #21
  %201 = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 2
  %202 = load i32, ptr %201, align 8
  %203 = lshr i32 %202, 5
  %204 = getelementptr i32, ptr @__cpu_online_mask, i32 %203
  %205 = load volatile i32, ptr %204, align 4
  %206 = and i32 %202, 31
  %207 = shl nuw i32 1, %206
  %208 = and i32 %207, %205
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %199
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  %211 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %196) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !33
  br label %212

212:                                              ; preds = %210, %199, %195
  %213 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 111
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %225, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 33
  %218 = load i8, ptr %217, align 1, !range !10
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %221, label %220, !prof !22

220:                                              ; preds = %216
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2405, i32 noundef 9, ptr noundef null) #21
  br label %221

221:                                              ; preds = %220, %216
  %222 = tail call i32 @drv_add_interface(ptr noundef %0, ptr noundef nonnull %214) #21
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %225, label %224, !prof !22

224:                                              ; preds = %221
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2407, i32 noundef 9, ptr noundef null) #21
  store volatile ptr null, ptr %213, align 4
  tail call void @synchronize_net() #21
  tail call void @kfree(ptr noundef nonnull %214) #21
  br label %225

225:                                              ; preds = %224, %221, %212
  %226 = phi i32 [ %222, %224 ], [ 0, %212 ], [ 0, %221 ]
  %227 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %228 = load ptr, ptr %227, align 8
  %229 = icmp eq ptr %228, %227
  br i1 %229, label %248, label %230

230:                                              ; preds = %244, %225
  %231 = phi ptr [ %246, %244 ], [ %228, %225 ]
  %232 = phi i32 [ %245, %244 ], [ %226, %225 ]
  %233 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %231, i32 0, i32 58
  %234 = load i32, ptr %233, align 8
  switch i32 %234, label %235 [
    i32 4, label %244
    i32 6, label %244
  ]

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %231, i32 0, i32 9
  %237 = load volatile i32, ptr %236, align 4
  %238 = and i32 %237, 1
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %235
  %241 = tail call i32 @drv_add_interface(ptr noundef %0, ptr noundef %231) #21
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %244, label %243, !prof !22

243:                                              ; preds = %240
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2419, i32 noundef 9, ptr noundef null) #21
  br label %251

244:                                              ; preds = %240, %235, %230, %230
  %245 = phi i32 [ %232, %235 ], [ %232, %230 ], [ %232, %230 ], [ 0, %240 ]
  %246 = load ptr, ptr %231, align 8
  %247 = icmp eq ptr %246, %227
  br i1 %247, label %248, label %230

248:                                              ; preds = %244, %225
  %249 = phi i32 [ %226, %225 ], [ %245, %244 ]
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %272, label %251

251:                                              ; preds = %248, %243
  %252 = phi i32 [ %241, %243 ], [ %249, %248 ]
  %253 = phi ptr [ %231, %243 ], [ %227, %248 ]
  %254 = getelementptr inbounds %struct.list_head, ptr %253, i32 0, i32 1
  %255 = load ptr, ptr %254, align 4
  %256 = icmp eq ptr %255, %227
  br i1 %256, label %271, label %257

257:                                              ; preds = %267, %251
  %258 = phi ptr [ %269, %267 ], [ %255, %251 ]
  %259 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %258, i32 0, i32 58
  %260 = load i32, ptr %259, align 8
  switch i32 %260, label %261 [
    i32 4, label %267
    i32 6, label %267
  ]

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %258, i32 0, i32 9
  %263 = load volatile i32, ptr %262, align 4
  %264 = and i32 %263, 1
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %261
  tail call void @drv_remove_interface(ptr noundef %0, ptr noundef %258) #21
  br label %267

267:                                              ; preds = %266, %261, %257, %257
  %268 = getelementptr inbounds %struct.list_head, ptr %258, i32 0, i32 1
  %269 = load ptr, ptr %268, align 4
  %270 = icmp eq ptr %269, %227
  br i1 %270, label %271, label %257

271:                                              ; preds = %267, %251
  tail call fastcc void @ieee80211_handle_reconfig_failure(ptr noundef %0)
  br label %1025

272:                                              ; preds = %248
  %273 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 26
  %274 = load i8, ptr %273, align 1, !range !10
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %344, label %276

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %277) #21
  %278 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 88
  %279 = load ptr, ptr %278, align 4
  %280 = icmp eq ptr %279, %278
  br i1 %280, label %335, label %281

281:                                              ; preds = %332, %276
  %282 = phi ptr [ %333, %332 ], [ %279, %276 ]
  %283 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %282, i32 0, i32 4
  %284 = load i32, ptr %283, align 4
  %285 = icmp eq i32 %284, 2
  br i1 %285, label %332, label %286

286:                                              ; preds = %281
  %287 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_add_chanctx, i32 0, i32 1), align 4
  %288 = icmp sgt i32 %287, 0
  br i1 %288, label %289, label %302

289:                                              ; preds = %286
  %290 = tail call ptr @llvm.thread.pointer() #21
  %291 = getelementptr inbounds %struct.thread_info, ptr %290, i32 0, i32 2
  %292 = load i32, ptr %291, align 8
  %293 = lshr i32 %292, 5
  %294 = getelementptr i32, ptr @__cpu_online_mask, i32 %293
  %295 = load volatile i32, ptr %294, align 4
  %296 = and i32 %292, 31
  %297 = shl nuw i32 1, %296
  %298 = and i32 %297, %295
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %289
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !41
  %301 = tail call i32 @__traceiter_drv_add_chanctx(ptr noundef null, ptr noundef %0, ptr noundef %282) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !42
  br label %302

302:                                              ; preds = %300, %289, %286
  %303 = load ptr, ptr %102, align 4
  %304 = getelementptr inbounds %struct.ieee80211_ops, ptr %303, i32 0, i32 69
  %305 = load ptr, ptr %304, align 4
  %306 = icmp eq ptr %305, null
  br i1 %306, label %310, label %307

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %282, i32 0, i32 8
  %309 = tail call i32 %305(ptr noundef %0, ptr noundef %308) #21
  br label %310

310:                                              ; preds = %307, %302
  %311 = phi i32 [ %309, %307 ], [ -95, %302 ]
  %312 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %313 = icmp sgt i32 %312, 0
  br i1 %313, label %314, label %327

314:                                              ; preds = %310
  %315 = tail call ptr @llvm.thread.pointer() #21
  %316 = getelementptr inbounds %struct.thread_info, ptr %315, i32 0, i32 2
  %317 = load i32, ptr %316, align 8
  %318 = lshr i32 %317, 5
  %319 = getelementptr i32, ptr @__cpu_online_mask, i32 %318
  %320 = load volatile i32, ptr %319, align 4
  %321 = and i32 %317, 31
  %322 = shl nuw i32 1, %321
  %323 = and i32 %322, %320
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %327, label %325

325:                                              ; preds = %314
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  %326 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %311) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !33
  br label %327

327:                                              ; preds = %325, %314, %310
  %328 = icmp eq i32 %311, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %327
  %330 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %282, i32 0, i32 7
  store i8 1, ptr %330, align 4
  br label %332

331:                                              ; preds = %327
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2444, i32 noundef 9, ptr noundef null) #21
  br label %332

332:                                              ; preds = %331, %329, %281
  %333 = load ptr, ptr %282, align 4
  %334 = icmp eq ptr %333, %278
  br i1 %334, label %335, label %281

335:                                              ; preds = %332, %276
  tail call void @mutex_unlock(ptr noundef %277) #21
  %336 = load ptr, ptr %213, align 4
  %337 = icmp eq ptr %336, null
  br i1 %337, label %344, label %338

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %336, i32 0, i32 9
  %340 = load volatile i32, ptr %339, align 4
  %341 = and i32 %340, 1
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %344, label %343

343:                                              ; preds = %338
  tail call fastcc void @ieee80211_assign_chanctx(ptr noundef %0, ptr noundef nonnull %336)
  br label %344

344:                                              ; preds = %343, %338, %335, %272
  %345 = tail call i32 @ieee80211_hw_config(ptr noundef %0, i32 noundef -1) #21
  tail call void @ieee80211_configure_filter(ptr noundef %0) #21
  %346 = load ptr, ptr %227, align 8
  %347 = icmp eq ptr %346, %227
  br i1 %347, label %746, label %348

348:                                              ; preds = %743, %344
  %349 = phi ptr [ %744, %743 ], [ %346, %344 ]
  %350 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 9
  %351 = load volatile i32, ptr %350, align 4
  %352 = and i32 %351, 1
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %743, label %354

354:                                              ; preds = %348
  call fastcc void @ieee80211_assign_chanctx(ptr noundef %0, ptr noundef %349)
  %355 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 58
  %356 = load i32, ptr %355, align 8
  switch i32 %356, label %420 [
    i32 4, label %466
    i32 6, label %466
    i32 1, label %357
    i32 3, label %456
  ]

357:                                              ; preds = %354
  %358 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 58, i32 1, i32 11
  %359 = load i8, ptr %358, align 8, !range !10
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %420, label %361

361:                                              ; preds = %357
  %362 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 8
  %363 = load i32, ptr %362, align 8
  %364 = and i32 %363, 32
  %365 = icmp eq i32 %364, 0
  %366 = load i1, ptr @drv_join_ibss.__already_done, align 1
  %367 = xor i1 %366, true
  %368 = select i1 %365, i1 %367, i1 false
  br i1 %368, label %369, label %375, !prof !8

369:                                              ; preds = %361
  store i1 true, ptr @drv_join_ibss.__already_done, align 1
  %370 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 6
  %371 = load ptr, ptr %370, align 8
  %372 = icmp eq ptr %371, null
  %373 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 10
  %374 = select i1 %372, ptr %373, ptr %371
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1114, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %374, i32 noundef %363) #21
  br label %375

375:                                              ; preds = %369, %361
  br i1 %365, label %419, label %376

376:                                              ; preds = %375
  %377 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 58, i32 1
  %378 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_join_ibss, i32 0, i32 1), align 4
  %379 = icmp sgt i32 %378, 0
  br i1 %379, label %380, label %393

380:                                              ; preds = %376
  %381 = tail call ptr @llvm.thread.pointer() #21
  %382 = getelementptr inbounds %struct.thread_info, ptr %381, i32 0, i32 2
  %383 = load i32, ptr %382, align 8
  %384 = lshr i32 %383, 5
  %385 = getelementptr i32, ptr @__cpu_online_mask, i32 %384
  %386 = load volatile i32, ptr %385, align 4
  %387 = and i32 %383, 31
  %388 = shl nuw i32 1, %387
  %389 = and i32 %388, %386
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %393, label %391

391:                                              ; preds = %380
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !43
  %392 = call i32 @__traceiter_drv_join_ibss(ptr noundef null, ptr noundef %0, ptr noundef %349, ptr noundef %377) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !44
  br label %393

393:                                              ; preds = %391, %380, %376
  %394 = load ptr, ptr %102, align 4
  %395 = getelementptr inbounds %struct.ieee80211_ops, ptr %394, i32 0, i32 82
  %396 = load ptr, ptr %395, align 4
  %397 = icmp eq ptr %396, null
  br i1 %397, label %400, label %398

398:                                              ; preds = %393
  %399 = call i32 %396(ptr noundef %0, ptr noundef %355) #21
  br label %400

400:                                              ; preds = %398, %393
  %401 = phi i32 [ %399, %398 ], [ 0, %393 ]
  %402 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %403 = icmp sgt i32 %402, 0
  br i1 %403, label %404, label %417

404:                                              ; preds = %400
  %405 = tail call ptr @llvm.thread.pointer() #21
  %406 = getelementptr inbounds %struct.thread_info, ptr %405, i32 0, i32 2
  %407 = load i32, ptr %406, align 8
  %408 = lshr i32 %407, 5
  %409 = getelementptr i32, ptr @__cpu_online_mask, i32 %408
  %410 = load volatile i32, ptr %409, align 4
  %411 = and i32 %407, 31
  %412 = shl nuw i32 1, %411
  %413 = and i32 %412, %410
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %417, label %415

415:                                              ; preds = %404
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  %416 = call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %401) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !33
  br label %417

417:                                              ; preds = %415, %404, %400
  %418 = icmp eq i32 %401, 0
  br i1 %418, label %420, label %419, !prof !22

419:                                              ; preds = %417, %375
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2473, i32 noundef 9, ptr noundef null) #21
  br label %420

420:                                              ; preds = %419, %417, %357, %354
  %421 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 7
  %422 = load ptr, ptr %421, align 4
  %423 = getelementptr inbounds %struct.ieee80211_local, ptr %422, i32 0, i32 46
  call void @mutex_lock(ptr noundef %423) #21
  %424 = getelementptr inbounds %struct.ieee80211_local, ptr %422, i32 0, i32 49
  %425 = load ptr, ptr %424, align 4
  %426 = icmp eq ptr %425, %424
  br i1 %426, label %455, label %427

427:                                              ; preds = %452, %420
  %428 = phi ptr [ %453, %452 ], [ %425, %420 ]
  %429 = getelementptr inbounds %struct.sta_info, ptr %428, i32 0, i32 21
  %430 = load i8, ptr %429, align 4, !range !10
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %452, label %432

432:                                              ; preds = %427
  %433 = getelementptr inbounds %struct.sta_info, ptr %428, i32 0, i32 6
  %434 = load ptr, ptr %433, align 4
  %435 = icmp eq ptr %434, %349
  br i1 %435, label %436, label %452

436:                                              ; preds = %432
  %437 = getelementptr inbounds %struct.sta_info, ptr %428, i32 0, i32 22
  %438 = load i32, ptr %437, align 8
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %452, label %440

440:                                              ; preds = %450, %436
  %441 = phi ptr [ %451, %450 ], [ %349, %436 ]
  %442 = phi i32 [ %443, %450 ], [ 0, %436 ]
  %443 = add nuw i32 %442, 1
  %444 = call i32 @drv_sta_state(ptr noundef %422, ptr noundef %441, ptr noundef %428, i32 noundef %442, i32 noundef %443) #21
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %447, label %446, !prof !22

446:                                              ; preds = %440
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2266, i32 noundef 9, ptr noundef null) #21
  br label %447

447:                                              ; preds = %446, %440
  %448 = load i32, ptr %437, align 8
  %449 = icmp ult i32 %443, %448
  br i1 %449, label %450, label %452

450:                                              ; preds = %447
  %451 = load ptr, ptr %433, align 4
  br label %440

452:                                              ; preds = %447, %436, %432, %427
  %453 = load ptr, ptr %428, align 4
  %454 = icmp eq ptr %453, %424
  br i1 %454, label %455, label %427

455:                                              ; preds = %452, %420
  call void @mutex_unlock(ptr noundef %423) #21
  br label %456

456:                                              ; preds = %455, %354
  %457 = getelementptr %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 26, i32 0
  %458 = call i32 @drv_conf_tx(ptr noundef %0, ptr noundef %349, i16 noundef zeroext 0, ptr noundef %457) #21
  %459 = getelementptr %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 26, i32 1
  %460 = call i32 @drv_conf_tx(ptr noundef %0, ptr noundef %349, i16 noundef zeroext 1, ptr noundef %459) #21
  %461 = getelementptr %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 26, i32 2
  %462 = call i32 @drv_conf_tx(ptr noundef %0, ptr noundef %349, i16 noundef zeroext 2, ptr noundef %461) #21
  %463 = getelementptr %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 26, i32 3
  %464 = call i32 @drv_conf_tx(ptr noundef %0, ptr noundef %349, i16 noundef zeroext 3, ptr noundef %463) #21
  %465 = load i32, ptr %355, align 8
  br label %466

466:                                              ; preds = %456, %354, %354
  %467 = phi i32 [ %465, %456 ], [ %356, %354 ], [ %356, %354 ]
  %468 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 58, i32 5
  %469 = load i8, ptr %468, align 8, !range !10
  %470 = icmp eq i8 %469, 0
  %471 = select i1 %470, i32 33842430, i32 42231038
  switch i32 %467, label %743 [
    i32 2, label %472
    i32 11, label %490
    i32 1, label %492
    i32 3, label %494
    i32 7, label %575
    i32 12, label %582
    i32 5, label %740
    i32 9, label %740
    i32 8, label %740
    i32 0, label %740
    i32 13, label %740
  ]

472:                                              ; preds = %466
  %473 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 57, i32 0, i32 23, i32 3
  %474 = load i8, ptr %473, align 4, !range !10
  %475 = icmp eq i8 %474, 0
  %476 = select i1 %475, i32 135169, i32 1183745
  %477 = or i32 %476, %471
  %478 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 58, i32 1, i32 46
  %479 = load i16, ptr %478, align 8
  %480 = icmp eq i16 %479, 0
  br i1 %480, label %481, label %485

481:                                              ; preds = %472
  %482 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 58, i32 1, i32 47
  %483 = load i8, ptr %482, align 2, !range !10
  %484 = icmp eq i8 %483, 0
  br i1 %484, label %487, label %485

485:                                              ; preds = %481, %472
  %486 = or i32 %477, 16777216
  br label %487

487:                                              ; preds = %485, %481
  %488 = phi i32 [ %486, %485 ], [ %477, %481 ]
  %489 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 1, i32 7
  call void @mutex_lock(ptr noundef %489) #21
  call void @ieee80211_bss_info_change_notify(ptr noundef %349, i32 noundef %488) #21
  call void @mutex_unlock(ptr noundef %489) #21
  br label %743

490:                                              ; preds = %466
  %491 = or i32 %471, 4194304
  call void @ieee80211_bss_info_change_notify(ptr noundef %349, i32 noundef %491) #21
  br label %743

492:                                              ; preds = %466
  %493 = or i32 %471, 2048
  br label %494

494:                                              ; preds = %492, %466
  %495 = phi i32 [ %471, %466 ], [ %493, %492 ]
  %496 = or i32 %495, 557056
  %497 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 58, i32 1, i32 48
  %498 = load i8, ptr %497, align 1, !range !10
  %499 = icmp eq i8 %498, 0
  br i1 %499, label %511, label %500

500:                                              ; preds = %494
  %501 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 7
  %502 = load ptr, ptr %501, align 4
  %503 = getelementptr inbounds %struct.ieee80211_hw, ptr %502, i32 0, i32 1
  %504 = load ptr, ptr %503, align 8
  %505 = getelementptr %struct.wiphy, ptr %504, i32 0, i32 14, i32 4
  %506 = load i8, ptr %505, align 1
  %507 = and i8 %506, 1
  %508 = icmp eq i8 %507, 0
  %509 = or i32 %495, 67665920
  %510 = select i1 %508, i32 %496, i32 %509
  br label %511

511:                                              ; preds = %500, %494
  %512 = phi i32 [ %496, %494 ], [ %510, %500 ]
  %513 = icmp eq i32 %467, 3
  br i1 %513, label %514, label %575

514:                                              ; preds = %511
  %515 = or i32 %512, 65536
  %516 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 57
  %517 = load volatile ptr, ptr %516, align 8
  %518 = icmp eq ptr %517, null
  br i1 %518, label %575, label %519

519:                                              ; preds = %514
  %520 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 8
  %521 = load i32, ptr %520, align 8
  %522 = and i32 %521, 32
  %523 = icmp eq i32 %522, 0
  %524 = load i1, ptr @drv_start_ap.__already_done, align 1
  %525 = xor i1 %524, true
  %526 = select i1 %523, i1 %525, i1 false
  br i1 %526, label %527, label %533, !prof !8

527:                                              ; preds = %519
  store i1 true, ptr @drv_start_ap.__already_done, align 1
  %528 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 6
  %529 = load ptr, ptr %528, align 8
  %530 = icmp eq ptr %529, null
  %531 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 10
  %532 = select i1 %530, ptr %531, ptr %529
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 969, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %532, i32 noundef %521) #21
  br label %533

533:                                              ; preds = %527, %519
  br i1 %523, label %575, label %534

534:                                              ; preds = %533
  %535 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 58, i32 1
  %536 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_start_ap, i32 0, i32 1), align 4
  %537 = icmp sgt i32 %536, 0
  br i1 %537, label %538, label %551

538:                                              ; preds = %534
  %539 = tail call ptr @llvm.thread.pointer() #21
  %540 = getelementptr inbounds %struct.thread_info, ptr %539, i32 0, i32 2
  %541 = load i32, ptr %540, align 8
  %542 = lshr i32 %541, 5
  %543 = getelementptr i32, ptr @__cpu_online_mask, i32 %542
  %544 = load volatile i32, ptr %543, align 4
  %545 = and i32 %541, 31
  %546 = shl nuw i32 1, %545
  %547 = and i32 %546, %544
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %551, label %549

549:                                              ; preds = %538
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !45
  %550 = call i32 @__traceiter_drv_start_ap(ptr noundef null, ptr noundef %0, ptr noundef %349, ptr noundef %535) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !46
  br label %551

551:                                              ; preds = %549, %538, %534
  %552 = load ptr, ptr %102, align 4
  %553 = getelementptr inbounds %struct.ieee80211_ops, ptr %552, i32 0, i32 11
  %554 = load ptr, ptr %553, align 4
  %555 = icmp eq ptr %554, null
  br i1 %555, label %558, label %556

556:                                              ; preds = %551
  %557 = call i32 %554(ptr noundef %0, ptr noundef %355) #21
  br label %558

558:                                              ; preds = %556, %551
  %559 = phi i32 [ %557, %556 ], [ 0, %551 ]
  %560 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %561 = icmp sgt i32 %560, 0
  br i1 %561, label %562, label %575

562:                                              ; preds = %558
  %563 = tail call ptr @llvm.thread.pointer() #21
  %564 = getelementptr inbounds %struct.thread_info, ptr %563, i32 0, i32 2
  %565 = load i32, ptr %564, align 8
  %566 = lshr i32 %565, 5
  %567 = getelementptr i32, ptr @__cpu_online_mask, i32 %566
  %568 = load volatile i32, ptr %567, align 4
  %569 = and i32 %565, 31
  %570 = shl nuw i32 1, %569
  %571 = and i32 %570, %568
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %575, label %573

573:                                              ; preds = %562
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  %574 = call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %559) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !33
  br label %575

575:                                              ; preds = %573, %562, %558, %533, %514, %511, %466
  %576 = phi i32 [ %471, %466 ], [ %515, %514 ], [ %512, %511 ], [ %515, %533 ], [ %515, %558 ], [ %515, %562 ], [ %515, %573 ]
  %577 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 58, i32 1, i32 17
  %578 = load i8, ptr %577, align 1, !range !10
  %579 = icmp eq i8 %578, 0
  br i1 %579, label %743, label %580

580:                                              ; preds = %575
  %581 = or i32 %576, 768
  call void @ieee80211_bss_info_change_notify(ptr noundef %349, i32 noundef %581) #21
  br label %743

582:                                              ; preds = %466
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !annotation !29
  %583 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 7
  %584 = load ptr, ptr %583, align 4
  %585 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 57
  %586 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 8
  %587 = load i32, ptr %586, align 8
  %588 = and i32 %587, 32
  %589 = icmp eq i32 %588, 0
  %590 = load i1, ptr @drv_start_nan.__already_done, align 1
  %591 = xor i1 %590, true
  %592 = select i1 %589, i1 %591, i1 false
  br i1 %592, label %593, label %599, !prof !8

593:                                              ; preds = %582
  store i1 true, ptr @drv_start_nan.__already_done, align 1
  %594 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 6
  %595 = load ptr, ptr %594, align 8
  %596 = icmp eq ptr %595, null
  %597 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 10
  %598 = select i1 %596, ptr %597, ptr %595
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1309, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %598, i32 noundef %587) #21
  br label %599

599:                                              ; preds = %593, %582
  %600 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_start_nan, i32 0, i32 1), align 4
  %601 = icmp sgt i32 %600, 0
  br i1 %601, label %602, label %615

602:                                              ; preds = %599
  %603 = tail call ptr @llvm.thread.pointer() #21
  %604 = getelementptr inbounds %struct.thread_info, ptr %603, i32 0, i32 2
  %605 = load i32, ptr %604, align 8
  %606 = lshr i32 %605, 5
  %607 = getelementptr i32, ptr @__cpu_online_mask, i32 %606
  %608 = load volatile i32, ptr %607, align 4
  %609 = and i32 %605, 31
  %610 = shl nuw i32 1, %609
  %611 = and i32 %610, %608
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %615, label %613

613:                                              ; preds = %602
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !47
  %614 = call i32 @__traceiter_drv_start_nan(ptr noundef null, ptr noundef %584, ptr noundef %349, ptr noundef %585) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !48
  br label %615

615:                                              ; preds = %613, %602, %599
  %616 = getelementptr inbounds %struct.ieee80211_local, ptr %584, i32 0, i32 8
  %617 = load ptr, ptr %616, align 4
  %618 = getelementptr inbounds %struct.ieee80211_ops, ptr %617, i32 0, i32 91
  %619 = load ptr, ptr %618, align 4
  %620 = call i32 %619(ptr noundef %584, ptr noundef %355, ptr noundef %585) #21
  %621 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %622 = icmp sgt i32 %621, 0
  br i1 %622, label %623, label %636

623:                                              ; preds = %615
  %624 = tail call ptr @llvm.thread.pointer() #21
  %625 = getelementptr inbounds %struct.thread_info, ptr %624, i32 0, i32 2
  %626 = load i32, ptr %625, align 8
  %627 = lshr i32 %626, 5
  %628 = getelementptr i32, ptr @__cpu_online_mask, i32 %627
  %629 = load volatile i32, ptr %628, align 4
  %630 = and i32 %626, 31
  %631 = shl nuw i32 1, %630
  %632 = and i32 %631, %629
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %636, label %634

634:                                              ; preds = %623
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  %635 = call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %584, i32 noundef %620) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !33
  br label %636

636:                                              ; preds = %634, %623, %615
  %637 = icmp eq i32 %620, 0
  br i1 %637, label %638, label %738, !prof !22

638:                                              ; preds = %636
  %639 = load ptr, ptr %583, align 4
  %640 = getelementptr inbounds %struct.ieee80211_hw, ptr %639, i32 0, i32 29
  %641 = load i8, ptr %640, align 8
  %642 = zext i8 %641 to i32
  %643 = shl nuw nsw i32 %642, 2
  %644 = add nuw nsw i32 %643, 4
  %645 = call noalias align 64 ptr @__kmalloc(i32 noundef %644, i32 noundef 3520) #24
  %646 = icmp eq ptr %645, null
  br i1 %646, label %647, label %648

647:                                              ; preds = %638
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %741

648:                                              ; preds = %638
  %649 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 57, i32 0, i32 0, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %649) #21
  %650 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 57, i32 0, i32 0, i32 1
  store i32 0, ptr %2, align 4
  %651 = call ptr @idr_get_next(ptr noundef %650, ptr noundef nonnull %2) #21
  %652 = icmp eq ptr %651, null
  br i1 %652, label %662, label %653

653:                                              ; preds = %653, %648
  %654 = phi ptr [ %660, %653 ], [ %651, %648 ]
  %655 = phi i32 [ %656, %653 ], [ 0, %648 ]
  %656 = add i32 %655, 1
  %657 = getelementptr ptr, ptr %645, i32 %655
  store ptr %654, ptr %657, align 4
  %658 = load i32, ptr %2, align 4
  %659 = add i32 %658, 1
  store i32 %659, ptr %2, align 4
  %660 = call ptr @idr_get_next(ptr noundef %650, ptr noundef nonnull %2) #21
  %661 = icmp eq ptr %660, null
  br i1 %661, label %662, label %653

662:                                              ; preds = %653, %648
  call void @_raw_spin_unlock_bh(ptr noundef %649) #21
  %663 = load ptr, ptr %645, align 64
  %664 = icmp eq ptr %663, null
  br i1 %664, label %737, label %665

665:                                              ; preds = %662
  %666 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 6
  %667 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %349, i32 0, i32 10
  br label %668

668:                                              ; preds = %732, %665
  %669 = phi ptr [ %663, %665 ], [ %735, %732 ]
  %670 = phi ptr [ %645, %665 ], [ %734, %732 ]
  %671 = phi i32 [ 0, %665 ], [ %733, %732 ]
  %672 = load ptr, ptr %583, align 4
  %673 = load i32, ptr %586, align 8
  %674 = and i32 %673, 32
  %675 = icmp eq i32 %674, 0
  %676 = load i1, ptr @drv_add_nan_func.__already_done, align 1
  %677 = xor i1 %676, true
  %678 = select i1 %675, i1 %677, i1 false
  br i1 %678, label %679, label %683, !prof !8

679:                                              ; preds = %668
  store i1 true, ptr @drv_add_nan_func.__already_done, align 1
  %680 = load ptr, ptr %666, align 8
  %681 = icmp eq ptr %680, null
  %682 = select i1 %681, ptr %667, ptr %680
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1356, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %682, i32 noundef %673) #21
  br label %683

683:                                              ; preds = %679, %668
  %684 = getelementptr inbounds %struct.ieee80211_local, ptr %672, i32 0, i32 8
  %685 = load ptr, ptr %684, align 4
  %686 = getelementptr inbounds %struct.ieee80211_ops, ptr %685, i32 0, i32 94
  %687 = load ptr, ptr %686, align 4
  %688 = icmp eq ptr %687, null
  br i1 %688, label %728, label %689

689:                                              ; preds = %683
  %690 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_add_nan_func, i32 0, i32 1), align 4
  %691 = icmp sgt i32 %690, 0
  br i1 %691, label %692, label %708

692:                                              ; preds = %689
  %693 = tail call ptr @llvm.thread.pointer() #21
  %694 = getelementptr inbounds %struct.thread_info, ptr %693, i32 0, i32 2
  %695 = load i32, ptr %694, align 8
  %696 = lshr i32 %695, 5
  %697 = getelementptr i32, ptr @__cpu_online_mask, i32 %696
  %698 = load volatile i32, ptr %697, align 4
  %699 = and i32 %695, 31
  %700 = shl nuw i32 1, %699
  %701 = and i32 %700, %698
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %708, label %703

703:                                              ; preds = %692
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !49
  %704 = call i32 @__traceiter_drv_add_nan_func(ptr noundef null, ptr noundef %672, ptr noundef %349, ptr noundef nonnull %669) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !50
  %705 = load ptr, ptr %684, align 4
  %706 = getelementptr inbounds %struct.ieee80211_ops, ptr %705, i32 0, i32 94
  %707 = load ptr, ptr %706, align 4
  br label %708

708:                                              ; preds = %703, %692, %689
  %709 = phi ptr [ %687, %689 ], [ %687, %692 ], [ %707, %703 ]
  %710 = call i32 %709(ptr noundef %672, ptr noundef %355, ptr noundef nonnull %669) #21
  %711 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %712 = icmp sgt i32 %711, 0
  br i1 %712, label %713, label %726

713:                                              ; preds = %708
  %714 = tail call ptr @llvm.thread.pointer() #21
  %715 = getelementptr inbounds %struct.thread_info, ptr %714, i32 0, i32 2
  %716 = load i32, ptr %715, align 8
  %717 = lshr i32 %716, 5
  %718 = getelementptr i32, ptr @__cpu_online_mask, i32 %717
  %719 = load volatile i32, ptr %718, align 4
  %720 = and i32 %716, 31
  %721 = shl nuw i32 1, %720
  %722 = and i32 %721, %719
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %726, label %724

724:                                              ; preds = %713
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  %725 = call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %672, i32 noundef %710) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !33
  br label %726

726:                                              ; preds = %724, %713, %708
  %727 = icmp eq i32 %710, 0
  br i1 %727, label %732, label %728, !prof !22

728:                                              ; preds = %726, %683
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2300, i32 noundef 9, ptr noundef null) #21
  %729 = load ptr, ptr %670, align 4
  %730 = getelementptr inbounds %struct.cfg80211_nan_func, ptr %729, i32 0, i32 22
  %731 = load i8, ptr %730, align 2
  call void @ieee80211_nan_func_terminated(ptr noundef %355, i8 noundef zeroext %731, i32 noundef 2, i32 noundef 3264) #21
  br label %732

732:                                              ; preds = %728, %726
  %733 = add i32 %671, 1
  %734 = getelementptr ptr, ptr %645, i32 %733
  %735 = load ptr, ptr %734, align 4
  %736 = icmp eq ptr %735, null
  br i1 %736, label %737, label %668

737:                                              ; preds = %732, %662
  call void @kfree(ptr noundef nonnull %645) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %743

738:                                              ; preds = %636
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2278, i32 noundef 9, ptr noundef null) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  %739 = icmp slt i32 %620, 0
  br i1 %739, label %741, label %743

740:                                              ; preds = %466, %466, %466, %466, %466
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2566, i32 noundef 9, ptr noundef null) #21
  br label %743

741:                                              ; preds = %738, %647
  %742 = phi i32 [ -12, %647 ], [ %620, %738 ]
  call fastcc void @ieee80211_handle_reconfig_failure(ptr noundef %0)
  br label %1025

743:                                              ; preds = %740, %738, %737, %580, %575, %490, %487, %466, %348
  %744 = load ptr, ptr %349, align 8
  %745 = icmp eq ptr %744, %227
  br i1 %745, label %746, label %348

746:                                              ; preds = %743, %344
  call void @ieee80211_recalc_ps(ptr noundef %0) #21
  %747 = load i32, ptr %0, align 8
  %748 = and i32 %747, 2
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %750, label %766

750:                                              ; preds = %746
  %751 = load ptr, ptr %227, align 8
  %752 = icmp eq ptr %751, %227
  br i1 %752, label %766, label %753

753:                                              ; preds = %763, %750
  %754 = phi ptr [ %764, %763 ], [ %751, %750 ]
  %755 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %754, i32 0, i32 58
  %756 = load i32, ptr %755, align 8
  %757 = icmp eq i32 %756, 2
  br i1 %757, label %758, label %763

758:                                              ; preds = %753
  %759 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %754, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %760 = load ptr, ptr %759, align 8
  %761 = icmp eq ptr %760, null
  br i1 %761, label %763, label %762

762:                                              ; preds = %758
  call void @ieee80211_send_nullfunc(ptr noundef %0, ptr noundef %754, i1 noundef zeroext false) #21
  br label %763

763:                                              ; preds = %762, %758, %753
  %764 = load ptr, ptr %754, align 8
  %765 = icmp eq ptr %764, %227
  br i1 %765, label %766, label %753

766:                                              ; preds = %763, %750, %746
  %767 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 46
  call void @mutex_lock(ptr noundef %767) #21
  %768 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 49
  %769 = load ptr, ptr %768, align 4
  %770 = icmp eq ptr %769, %768
  br i1 %770, label %802, label %771

771:                                              ; preds = %799, %766
  %772 = phi ptr [ %800, %799 ], [ %769, %766 ]
  %773 = getelementptr inbounds %struct.sta_info, ptr %772, i32 0, i32 21
  %774 = load i8, ptr %773, align 4, !range !10
  %775 = icmp eq i8 %774, 0
  br i1 %775, label %799, label %776

776:                                              ; preds = %771
  %777 = getelementptr inbounds %struct.sta_info, ptr %772, i32 0, i32 6
  %778 = load ptr, ptr %777, align 4
  %779 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %778, i32 0, i32 58
  %780 = load i32, ptr %779, align 8
  %781 = add i32 %780, -3
  %782 = icmp ult i32 %781, 2
  br i1 %782, label %783, label %799

783:                                              ; preds = %776
  %784 = getelementptr inbounds %struct.sta_info, ptr %772, i32 0, i32 22
  %785 = load i32, ptr %784, align 8
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %799, label %787

787:                                              ; preds = %797, %783
  %788 = phi ptr [ %798, %797 ], [ %778, %783 ]
  %789 = phi i32 [ %790, %797 ], [ 0, %783 ]
  %790 = add nuw i32 %789, 1
  %791 = call i32 @drv_sta_state(ptr noundef %0, ptr noundef %788, ptr noundef %772, i32 noundef %789, i32 noundef %790) #21
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %794, label %793, !prof !22

793:                                              ; preds = %787
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2605, i32 noundef 9, ptr noundef null) #21
  br label %794

794:                                              ; preds = %793, %787
  %795 = load i32, ptr %784, align 8
  %796 = icmp ult i32 %790, %795
  br i1 %796, label %797, label %799

797:                                              ; preds = %794
  %798 = load ptr, ptr %777, align 4
  br label %787

799:                                              ; preds = %794, %783, %776, %771
  %800 = load ptr, ptr %772, align 4
  %801 = icmp eq ptr %800, %768
  br i1 %801, label %802, label %771

802:                                              ; preds = %799, %766
  call void @mutex_unlock(ptr noundef %767) #21
  %803 = load ptr, ptr %227, align 8
  %804 = icmp eq ptr %803, %227
  br i1 %804, label %809, label %805

805:                                              ; preds = %805, %802
  %806 = phi ptr [ %807, %805 ], [ %803, %802 ]
  call void @ieee80211_reenable_keys(ptr noundef %806) #21
  %807 = load ptr, ptr %806, align 8
  %808 = icmp eq ptr %807, %227
  br i1 %808, label %809, label %805

809:                                              ; preds = %805, %802
  %810 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 66
  call void @mutex_lock(ptr noundef %810) #21
  %811 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 79
  %812 = load ptr, ptr %811, align 8
  %813 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 80
  %814 = load ptr, ptr %813, align 4
  %815 = icmp ne ptr %812, null
  %816 = icmp ne ptr %814, null
  %817 = select i1 %815, i1 %816, i1 false
  br i1 %817, label %818, label %827

818:                                              ; preds = %809
  %819 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %814, i32 0, i32 13
  %820 = load i32, ptr %819, align 8
  %821 = icmp sgt i32 %820, 1
  br i1 %821, label %825, label %822

822:                                              ; preds = %818
  %823 = call i32 @__ieee80211_request_sched_scan_start(ptr noundef nonnull %812, ptr noundef nonnull %814) #21
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %827, label %825

825:                                              ; preds = %822, %818
  store volatile ptr null, ptr %811, align 8
  store volatile ptr null, ptr %813, align 4
  call void @mutex_unlock(ptr noundef %810) #21
  %826 = load ptr, ptr %82, align 8
  call void @cfg80211_sched_scan_stopped_locked(ptr noundef %826, i64 noundef 0) #21
  br label %828

827:                                              ; preds = %822, %809
  call void @mutex_unlock(ptr noundef %810) #21
  br label %828

828:                                              ; preds = %827, %825, %57, %1
  %829 = phi i1 [ false, %57 ], [ %15, %825 ], [ %15, %827 ], [ false, %1 ]
  %830 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 14
  %831 = load i32, ptr %830, align 4
  %832 = load i32, ptr %6, align 8
  %833 = icmp eq i32 %831, %832
  %834 = icmp sgt i32 %831, 0
  %835 = and i1 %834, %833
  br i1 %835, label %836, label %838

836:                                              ; preds = %828
  %837 = call i32 @ieee80211_add_virtual_monitor(ptr noundef %0) #21
  br label %838

838:                                              ; preds = %836, %828
  %839 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 4
  %840 = load volatile i32, ptr %839, align 4
  %841 = and i32 %840, 128
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %860, label %843

843:                                              ; preds = %838
  %844 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 46
  call void @mutex_lock(ptr noundef %844) #21
  %845 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 49
  %846 = load ptr, ptr %845, align 4
  %847 = icmp eq ptr %846, %845
  br i1 %847, label %859, label %848

848:                                              ; preds = %843
  %849 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 33
  br label %850

850:                                              ; preds = %855, %848
  %851 = phi ptr [ %846, %848 ], [ %857, %855 ]
  %852 = load i8, ptr %849, align 1, !range !10
  %853 = icmp eq i8 %852, 0
  br i1 %853, label %854, label %855

854:                                              ; preds = %850
  call void @ieee80211_sta_tear_down_BA_sessions(ptr noundef %851, i32 noundef 1) #21
  br label %855

855:                                              ; preds = %854, %850
  %856 = getelementptr inbounds %struct.sta_info, ptr %851, i32 0, i32 23
  call void @_clear_bit(i32 noundef 8, ptr noundef %856) #21
  %857 = load ptr, ptr %851, align 4
  %858 = icmp eq ptr %857, %845
  br i1 %858, label %859, label %850

859:                                              ; preds = %855, %843
  call void @mutex_unlock(ptr noundef %844) #21
  br label %860

860:                                              ; preds = %859, %838
  %861 = load i32, ptr %6, align 8
  %862 = icmp ne i32 %861, 0
  %863 = select i1 %5, i1 true, i1 %829
  %864 = select i1 %862, i1 %863, i1 false
  br i1 %864, label %865, label %904

865:                                              ; preds = %860
  %866 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_reconfig_complete, i32 0, i32 1), align 4
  %867 = icmp sgt i32 %866, 0
  br i1 %867, label %868, label %881

868:                                              ; preds = %865
  %869 = tail call ptr @llvm.thread.pointer() #21
  %870 = getelementptr inbounds %struct.thread_info, ptr %869, i32 0, i32 2
  %871 = load i32, ptr %870, align 8
  %872 = lshr i32 %871, 5
  %873 = getelementptr i32, ptr @__cpu_online_mask, i32 %872
  %874 = load volatile i32, ptr %873, align 4
  %875 = and i32 %871, 31
  %876 = shl nuw i32 1, %875
  %877 = and i32 %876, %874
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %881, label %879

879:                                              ; preds = %868
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !51
  %880 = call i32 @__traceiter_drv_reconfig_complete(ptr noundef null, ptr noundef %0, i32 noundef 0) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !52
  br label %881

881:                                              ; preds = %879, %868, %865
  %882 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %883 = load ptr, ptr %882, align 4
  %884 = getelementptr inbounds %struct.ieee80211_ops, ptr %883, i32 0, i32 75
  %885 = load ptr, ptr %884, align 4
  %886 = icmp eq ptr %885, null
  br i1 %886, label %888, label %887

887:                                              ; preds = %881
  call void %885(ptr noundef %0, i32 noundef 0) #21
  br label %888

888:                                              ; preds = %887, %881
  %889 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %890 = icmp sgt i32 %889, 0
  br i1 %890, label %891, label %904

891:                                              ; preds = %888
  %892 = tail call ptr @llvm.thread.pointer() #21
  %893 = getelementptr inbounds %struct.thread_info, ptr %892, i32 0, i32 2
  %894 = load i32, ptr %893, align 8
  %895 = lshr i32 %894, 5
  %896 = getelementptr i32, ptr @__cpu_online_mask, i32 %895
  %897 = load volatile i32, ptr %896, align 4
  %898 = and i32 %894, 31
  %899 = shl nuw i32 1, %898
  %900 = and i32 %899, %897
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %904, label %902

902:                                              ; preds = %891
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !27
  %903 = call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !28
  br label %904

904:                                              ; preds = %902, %891, %888, %860
  %905 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 36
  %906 = load i8, ptr %905, align 2, !range !10
  %907 = icmp eq i8 %906, 0
  br i1 %907, label %936, label %908

908:                                              ; preds = %904
  store i8 0, ptr %905, align 2
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !53
  %909 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 66
  call void @mutex_lock(ptr noundef %909) #21
  call void @ieee80211_start_next_roc(ptr noundef %0) #21
  call void @mutex_unlock(ptr noundef %909) #21
  %910 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %911 = load ptr, ptr %910, align 8
  %912 = icmp eq ptr %911, %910
  br i1 %912, label %936, label %913

913:                                              ; preds = %908
  %914 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 34
  %915 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 33
  %916 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 9
  br label %917

917:                                              ; preds = %933, %913
  %918 = phi ptr [ %911, %913 ], [ %934, %933 ]
  %919 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %918, i32 0, i32 40
  %920 = load i8, ptr %914, align 8, !range !10
  %921 = icmp eq i8 %920, 0
  br i1 %921, label %922, label %928

922:                                              ; preds = %917
  %923 = load i8, ptr %3, align 1, !range !10
  %924 = icmp eq i8 %923, 0
  br i1 %924, label %930, label %925

925:                                              ; preds = %922
  %926 = load i8, ptr %915, align 1, !range !10
  %927 = icmp eq i8 %926, 0
  br i1 %927, label %928, label %930

928:                                              ; preds = %925, %917
  %929 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #22
  br label %933

930:                                              ; preds = %925, %922
  %931 = load ptr, ptr %916, align 8
  %932 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %931, ptr noundef %919) #21
  br label %933

933:                                              ; preds = %930, %928
  %934 = load ptr, ptr %918, align 8
  %935 = icmp eq ptr %934, %910
  br i1 %935, label %936, label %917

936:                                              ; preds = %933, %908, %904
  call void @ieee80211_wake_queues_by_reason(ptr noundef %0, i32 noundef 65535, i32 noundef 4, i1 noundef zeroext false)
  br i1 %5, label %1025, label %937

937:                                              ; preds = %936
  store i8 0, ptr %3, align 1
  call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !54
  call void @arm_heavy_mb() #21
  %938 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 33
  store i8 0, ptr %938, align 1
  %939 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 67
  %940 = load volatile i32, ptr %939, align 4
  %941 = and i32 %940, 8
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %959, label %943

943:                                              ; preds = %937
  %944 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 84
  %945 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 34
  %946 = load i8, ptr %945, align 8, !range !10
  %947 = icmp eq i8 %946, 0
  br i1 %947, label %948, label %951

948:                                              ; preds = %943
  %949 = load i8, ptr %3, align 1, !range !10
  %950 = icmp eq i8 %949, 0
  br i1 %950, label %953, label %951

951:                                              ; preds = %948, %943
  %952 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #22
  br label %957

953:                                              ; preds = %948
  %954 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 9
  %955 = load ptr, ptr %954, align 8
  %956 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %955, ptr noundef %944, i32 noundef 0) #21
  br label %957

957:                                              ; preds = %953, %951
  %958 = call zeroext i1 @flush_delayed_work(ptr noundef %944) #21
  br label %959

959:                                              ; preds = %957, %937
  %960 = load i32, ptr %6, align 8
  %961 = icmp eq i32 %960, 0
  %962 = select i1 %961, i1 true, i1 %829
  br i1 %962, label %1002, label %963

963:                                              ; preds = %959
  %964 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_reconfig_complete, i32 0, i32 1), align 4
  %965 = icmp sgt i32 %964, 0
  br i1 %965, label %966, label %979

966:                                              ; preds = %963
  %967 = tail call ptr @llvm.thread.pointer() #21
  %968 = getelementptr inbounds %struct.thread_info, ptr %967, i32 0, i32 2
  %969 = load i32, ptr %968, align 8
  %970 = lshr i32 %969, 5
  %971 = getelementptr i32, ptr @__cpu_online_mask, i32 %970
  %972 = load volatile i32, ptr %971, align 4
  %973 = and i32 %969, 31
  %974 = shl nuw i32 1, %973
  %975 = and i32 %974, %972
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %979, label %977

977:                                              ; preds = %966
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !51
  %978 = call i32 @__traceiter_drv_reconfig_complete(ptr noundef null, ptr noundef %0, i32 noundef 1) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !52
  br label %979

979:                                              ; preds = %977, %966, %963
  %980 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %981 = load ptr, ptr %980, align 4
  %982 = getelementptr inbounds %struct.ieee80211_ops, ptr %981, i32 0, i32 75
  %983 = load ptr, ptr %982, align 4
  %984 = icmp eq ptr %983, null
  br i1 %984, label %986, label %985

985:                                              ; preds = %979
  call void %983(ptr noundef %0, i32 noundef 1) #21
  br label %986

986:                                              ; preds = %985, %979
  %987 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), align 4
  %988 = icmp sgt i32 %987, 0
  br i1 %988, label %989, label %1002

989:                                              ; preds = %986
  %990 = tail call ptr @llvm.thread.pointer() #21
  %991 = getelementptr inbounds %struct.thread_info, ptr %990, i32 0, i32 2
  %992 = load i32, ptr %991, align 8
  %993 = lshr i32 %992, 5
  %994 = getelementptr i32, ptr @__cpu_online_mask, i32 %993
  %995 = load volatile i32, ptr %994, align 4
  %996 = and i32 %992, 31
  %997 = shl nuw i32 1, %996
  %998 = and i32 %997, %995
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1002, label %1000

1000:                                             ; preds = %989
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !27
  %1001 = call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %0) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !28
  br label %1002

1002:                                             ; preds = %1000, %989, %986, %959
  %1003 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %1004 = load ptr, ptr %1003, align 8
  %1005 = icmp eq ptr %1004, %1003
  br i1 %1005, label %1020, label %1006

1006:                                             ; preds = %1017, %1002
  %1007 = phi ptr [ %1018, %1017 ], [ %1004, %1002 ]
  %1008 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1007, i32 0, i32 9
  %1009 = load volatile i32, ptr %1008, align 4
  %1010 = and i32 %1009, 1
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1017, label %1012

1012:                                             ; preds = %1006
  %1013 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1007, i32 0, i32 58
  %1014 = load i32, ptr %1013, align 8
  %1015 = icmp eq i32 %1014, 2
  br i1 %1015, label %1016, label %1017

1016:                                             ; preds = %1012
  call void @ieee80211_sta_restart(ptr noundef %1007) #21
  br label %1017

1017:                                             ; preds = %1016, %1012, %1006
  %1018 = load ptr, ptr %1007, align 8
  %1019 = icmp eq ptr %1018, %1003
  br i1 %1019, label %1020, label %1006

1020:                                             ; preds = %1017, %1002
  %1021 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 51
  %1022 = load volatile i32, ptr @jiffies, align 64
  %1023 = add i32 %1022, 1
  %1024 = call i32 @mod_timer(ptr noundef %1021, i32 noundef %1023) #21
  br label %1025

1025:                                             ; preds = %1020, %936, %741, %271, %79, %55
  %1026 = phi i32 [ %37, %55 ], [ 0, %1020 ], [ %80, %79 ], [ %252, %271 ], [ %742, %741 ], [ 0, %936 ]
  ret i32 %1026
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_start(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_handle_reconfig_failure(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 33
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 31
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 36
  store i8 0, ptr %4, align 2
  %5 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 67
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %1
  tail call void @_set_bit(i32 noundef 4, ptr noundef %5) #21
  %10 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 84
  %11 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 34
  %12 = load i8, ptr %11, align 8, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i8, ptr %3, align 1, !range !10
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i8, ptr %2, align 1, !range !10
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %9
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #22
  br label %26

22:                                               ; preds = %17, %14
  %23 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 9
  %24 = load ptr, ptr %23, align 8
  %25 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %24, ptr noundef %10, i32 noundef 0) #21
  br label %26

26:                                               ; preds = %22, %20
  %27 = tail call zeroext i1 @flush_delayed_work(ptr noundef %10) #21
  br label %28

28:                                               ; preds = %26, %1
  tail call void @ieee80211_sched_scan_end(ptr noundef %0) #21
  %29 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %39, label %32

32:                                               ; preds = %32, %28
  %33 = phi ptr [ %37, %32 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %33, i32 0, i32 8
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, -33
  store i32 %36, ptr %34, align 8
  %37 = load ptr, ptr %33, align 8
  %38 = icmp eq ptr %37, %29
  br i1 %38, label %39, label %32

39:                                               ; preds = %32, %28
  %40 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %40) #21
  %41 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 88
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %49, label %44

44:                                               ; preds = %44, %39
  %45 = phi ptr [ %47, %44 ], [ %42, %39 ]
  %46 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %45, i32 0, i32 7
  store i8 0, ptr %46, align 4
  %47 = load ptr, ptr %45, align 4
  %48 = icmp eq ptr %47, %41
  br i1 %48, label %49, label %44

49:                                               ; preds = %44, %39
  tail call void @mutex_unlock(ptr noundef %40) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_add_interface(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_remove_interface(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ieee80211_assign_chanctx(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 26
  %4 = load i8, ptr %3, align 1, !range !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %82, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %7) #21
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %81, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %9, i32 -48
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  %17 = load i1, ptr @drv_assign_vif_chanctx.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %26, !prof !8

20:                                               ; preds = %11
  store i1 true, ptr @drv_assign_vif_chanctx.__already_done, align 1
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 6
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %25 = select i1 %23, ptr %24, ptr %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 924, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %25, i32 noundef %14) #21
  br label %26

26:                                               ; preds = %20, %11
  br i1 %16, label %81, label %27

27:                                               ; preds = %26
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_assign_vif_chanctx, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = tail call ptr @llvm.thread.pointer() #21
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
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !55
  %42 = tail call i32 @__traceiter_drv_assign_vif_chanctx(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %12) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !56
  br label %43

43:                                               ; preds = %41, %30, %27
  %44 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ieee80211_ops, ptr %45, i32 0, i32 72
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %43
  %50 = getelementptr i8, ptr %9, i32 -4
  %51 = load i8, ptr %50, align 4, !range !10
  %52 = icmp eq i8 %51, 0
  %53 = load i1, ptr @drv_assign_vif_chanctx.__already_done.19, align 1
  %54 = xor i1 %53, true
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %60, !prof !8

56:                                               ; preds = %49
  store i1 true, ptr @drv_assign_vif_chanctx.__already_done.19, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 929, i32 noundef 9, ptr noundef null) #21
  %57 = load ptr, ptr %44, align 4
  %58 = getelementptr inbounds %struct.ieee80211_ops, ptr %57, i32 0, i32 72
  %59 = load ptr, ptr %58, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = phi ptr [ %59, %56 ], [ %47, %49 ]
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %63 = tail call i32 %61(ptr noundef %0, ptr noundef %62, ptr noundef nonnull %9) #21
  br label %64

64:                                               ; preds = %60, %43
  %65 = phi i32 [ %63, %60 ], [ 0, %43 ]
  %66 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = tail call ptr @llvm.thread.pointer() #21
  %70 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = lshr i32 %71, 5
  %73 = getelementptr i32, ptr @__cpu_online_mask, i32 %72
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %71, 31
  %76 = shl nuw i32 1, %75
  %77 = and i32 %76, %74
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %68
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  %80 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %0, i32 noundef %65) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !33
  br label %81

81:                                               ; preds = %79, %68, %64, %26, %6
  tail call void @mutex_unlock(ptr noundef %7) #21
  br label %82

82:                                               ; preds = %81, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_hw_config(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_configure_filter(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_ps(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_nullfunc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_sta_state(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_reenable_keys(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ieee80211_request_sched_scan_start(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_stopped_locked(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_add_virtual_monitor(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_tear_down_BA_sessions(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_start_next_roc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_restart(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_resume_disconnect(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2727, i32 noundef 9, ptr noundef null) #21
  br label %31

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -1908
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 33
  %8 = load i8, ptr %7, align 1, !range !10
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2733, i32 noundef 9, ptr noundef null) #21
  br label %31

11:                                               ; preds = %4
  %12 = load i32, ptr %0, align 8
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %15, label %14, !prof !22

14:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2736, i32 noundef 9, ptr noundef null) #21
  br label %31

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %0, i32 -1904
  %17 = load i32, ptr %16, align 8
  %18 = or i32 %17, 16
  store i32 %18, ptr %16, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, ptr %6, i32 0, i32 65
  tail call void @mutex_lock(ptr noundef %19) #21
  %20 = getelementptr i8, ptr %0, i32 -1972
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %30, label %23

23:                                               ; preds = %23, %15
  %24 = phi ptr [ %28, %23 ], [ %21, %15 ]
  %25 = getelementptr i8, ptr %24, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 2
  store i32 %27, ptr %25, align 4
  %28 = load ptr, ptr %24, align 4
  %29 = icmp eq ptr %28, %20
  br i1 %29, label %30, label %23

30:                                               ; preds = %23, %15
  tail call void @mutex_unlock(ptr noundef %19) #21
  br label %31

31:                                               ; preds = %30, %14, %10, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_recalc_smps(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %4) #21
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %6, i32 -48
  tail call void @ieee80211_recalc_smps_chanctx(ptr noundef %3, ptr noundef %9) #21
  br label %10

10:                                               ; preds = %8, %1
  tail call void @mutex_unlock(ptr noundef %4) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_smps_chanctx(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_recalc_min_chandef(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 89
  tail call void @mutex_lock(ptr noundef %4) #21
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @ieee80211_recalc_min_chandef.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %1
  store i1 true, ptr @ieee80211_recalc_min_chandef.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2785, i32 noundef 9, ptr noundef null) #21
  br label %12

12:                                               ; preds = %11, %1
  br i1 %7, label %15, label %13

13:                                               ; preds = %12
  %14 = getelementptr i8, ptr %6, i32 -48
  tail call void @ieee80211_recalc_chanctx_min_def(ptr noundef %3, ptr noundef %14) #21
  br label %15

15:                                               ; preds = %13, %12
  tail call void @mutex_unlock(ptr noundef %4) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_chanctx_min_def(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ieee80211_ie_split_vendor(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = icmp ult i32 %2, %1
  br i1 %4, label %5, label %18

5:                                                ; preds = %10, %3
  %6 = phi i32 [ %16, %10 ], [ %2, %3 ]
  %7 = getelementptr i8, ptr %0, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, -35
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = add nuw i32 %6, 1
  %12 = getelementptr i8, ptr %0, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = add i32 %6, 2
  %16 = add i32 %15, %14
  %17 = icmp ult i32 %16, %1
  br i1 %17, label %5, label %18

18:                                               ; preds = %10, %5, %3
  %19 = phi i32 [ %2, %3 ], [ %16, %10 ], [ %6, %5 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_enable_rssi_reports(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -2264
  %5 = icmp slt i32 %1, %2
  br i1 %5, label %7, label %6, !prof !22

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2829, i32 noundef 9, ptr noundef null) #21
  br label %7

7:                                                ; preds = %6, %3
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_enable_rssi_reports, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = tail call ptr @llvm.thread.pointer() #21
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
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !57
  %22 = tail call i32 @__traceiter_api_enable_rssi_reports(ptr noundef null, ptr noundef %4, i32 noundef %1, i32 noundef %2) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !58
  br label %23

23:                                               ; preds = %21, %10, %7
  %24 = load i32, ptr %0, align 8
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %27, label %26, !prof !22

26:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2810, i32 noundef 9, ptr noundef null) #21
  br label %32

27:                                               ; preds = %23
  %28 = shl i32 %1, 4
  %29 = getelementptr i8, ptr %0, i32 -592
  store i32 %28, ptr %29, align 8
  %30 = shl i32 %2, 4
  %31 = getelementptr i8, ptr %0, i32 -588
  store i32 %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %27, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_disable_rssi_reports(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -2264
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_enable_rssi_reports, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #21
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !57
  %17 = tail call i32 @__traceiter_api_enable_rssi_reports(ptr noundef null, ptr noundef %2, i32 noundef 0, i32 noundef 0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !58
  br label %18

18:                                               ; preds = %16, %5, %1
  %19 = load i32, ptr %0, align 8
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %22, label %21, !prof !22

21:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2810, i32 noundef 9, ptr noundef null) #21
  br label %25

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i32 -592
  store i32 0, ptr %23, align 8
  %24 = getelementptr i8, ptr %0, i32 -588
  store i32 0, ptr %24, align 4
  br label %25

25:                                               ; preds = %22, %21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @ieee80211_ie_build_ht_cap(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) local_unnamed_addr #10 {
  %4 = getelementptr i8, ptr %0, i32 1
  store i8 45, ptr %0, align 1
  %5 = getelementptr i8, ptr %0, i32 2
  store i8 26, ptr %4, align 1
  %6 = getelementptr i8, ptr %0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(26) %6, i8 0, i32 24, i1 false)
  store i16 %2, ptr %5, align 1
  %7 = getelementptr i8, ptr %0, i32 4
  %8 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %1, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %1, i32 0, i32 3
  %11 = load i8, ptr %10, align 2
  %12 = shl i8 %11, 2
  %13 = or i8 %12, %9
  %14 = getelementptr i8, ptr %0, i32 5
  store i8 %13, ptr %7, align 1
  %15 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %1, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %14, ptr noundef align 1 dereferenceable(16) %15, i32 16, i1 false)
  %16 = getelementptr i8, ptr %0, i32 28
  ret ptr %16
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @ieee80211_ie_build_vht_cap(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = getelementptr i8, ptr %0, i32 1
  store i8 -65, ptr %0, align 1
  %5 = getelementptr i8, ptr %0, i32 2
  store i8 12, ptr %4, align 1
  %6 = getelementptr i8, ptr %0, i32 6
  store i64 0, ptr %6, align 1
  store i32 %2, ptr %5, align 1
  %7 = getelementptr i8, ptr %0, i32 6
  %8 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %1, i32 0, i32 2
  %9 = load i64, ptr %8, align 4
  store i64 %9, ptr %7, align 1
  %10 = getelementptr i8, ptr %0, i32 14
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @ieee80211_ie_len_he_cap(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %80

9:                                                ; preds = %2
  %10 = load ptr, ptr %6, align 4
  %11 = load i32, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  %12 = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr %struct.wiphy, ptr %13, i32 0, i32 53, i32 %11
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %80, label %17

17:                                               ; preds = %9
  %18 = zext i8 %1 to i32
  %19 = icmp ugt i8 %1, 11
  br i1 %19, label %29, label %20, !prof !8

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %15, i32 0, i32 9
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = icmp eq i16 %22, 0
  br i1 %24, label %80, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %15, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = shl nuw i32 1, %18
  br label %33

29:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 510, i32 noundef 9, ptr noundef null) #21
  br label %80

30:                                               ; preds = %33
  %31 = add nuw nsw i32 %34, 1
  %32 = icmp eq i32 %31, %23
  br i1 %32, label %80, label %33

33:                                               ; preds = %30, %25
  %34 = phi i32 [ 0, %25 ], [ %31, %30 ]
  %35 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %27, i32 %34
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  %38 = and i32 %28, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %30, label %40

40:                                               ; preds = %33
  %41 = icmp eq ptr %35, null
  br i1 %41, label %80, label %42

42:                                               ; preds = %40
  %43 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %27, i32 %34, i32 1
  %44 = load i8, ptr %43, align 2, !range !10
  %45 = icmp eq i8 %44, 0
  %46 = icmp eq ptr %43, null
  %47 = or i1 %46, %45
  br i1 %47, label %80, label %48

48:                                               ; preds = %42
  %49 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %27, i32 %34, i32 1, i32 1, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = and i8 %50, 8
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i8 4, i8 8
  %54 = and i8 %50, 16
  %55 = icmp eq i8 %54, 0
  %56 = add nuw nsw i8 %53, 4
  %57 = select i1 %55, i8 %53, i8 %56
  %58 = add nuw nsw i8 %57, 20
  %59 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %27, i32 %34, i32 1, i32 1, i32 1, i32 6
  %60 = load i8, ptr %59, align 1
  %61 = icmp sgt i8 %60, -1
  br i1 %61, label %77, label %62

62:                                               ; preds = %48
  %63 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %27, i32 %34, i32 1, i32 3
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 120
  %67 = tail call i32 @__sw_hweight8(i32 noundef %66) #21
  %68 = and i32 %65, 7
  %69 = mul nuw nsw i32 %68, 6
  %70 = add nuw nsw i32 %69, 6
  %71 = mul i32 %67, %70
  %72 = add i32 %71, 7
  %73 = and i32 %72, 255
  %74 = add nuw nsw i32 %73, 7
  %75 = lshr i32 %74, 3
  %76 = trunc i32 %75 to i8
  br label %77

77:                                               ; preds = %62, %48
  %78 = phi i8 [ %76, %62 ], [ 0, %48 ]
  %79 = add nuw nsw i8 %58, %78
  br label %80

80:                                               ; preds = %77, %42, %40, %30, %29, %20, %9, %8
  %81 = phi i8 [ %79, %77 ], [ 0, %9 ], [ 0, %8 ], [ 0, %20 ], [ 0, %29 ], [ 0, %40 ], [ 0, %42 ], [ 0, %30 ]
  ret i8 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_ie_build_he_cap(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %75, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ieee80211_sta_he_cap, ptr %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.ieee80211_sta_he_cap, ptr %1, i32 0, i32 1, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i8 4, i8 8
  %12 = and i8 %8, 16
  %13 = icmp eq i8 %12, 0
  %14 = add nuw nsw i8 %11, 4
  %15 = select i1 %13, i8 %11, i8 %14
  %16 = add nuw nsw i8 %15, 20
  %17 = getelementptr inbounds %struct.ieee80211_sta_he_cap, ptr %1, i32 0, i32 3
  %18 = getelementptr %struct.ieee80211_sta_he_cap, ptr %1, i32 0, i32 1, i32 1, i32 6
  %19 = load i8, ptr %18, align 1
  %20 = icmp sgt i8 %19, -1
  br i1 %20, label %35, label %21

21:                                               ; preds = %5
  %22 = load i8, ptr %17, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 120
  %25 = tail call i32 @__sw_hweight8(i32 noundef %24) #21
  %26 = and i32 %23, 7
  %27 = mul nuw nsw i32 %26, 6
  %28 = add nuw nsw i32 %27, 6
  %29 = mul i32 %25, %28
  %30 = add i32 %29, 7
  %31 = and i32 %30, 255
  %32 = add nuw nsw i32 %31, 7
  %33 = lshr i32 %32, 3
  %34 = trunc i32 %33 to i8
  br label %35

35:                                               ; preds = %21, %5
  %36 = phi i8 [ %34, %21 ], [ 0, %5 ]
  %37 = add nuw nsw i8 %16, %36
  %38 = ptrtoint ptr %2 to i32
  %39 = ptrtoint ptr %0 to i32
  %40 = sub i32 %38, %39
  %41 = zext i8 %37 to i32
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %75, label %43

43:                                               ; preds = %35
  %44 = zext i8 %15 to i32
  %45 = getelementptr i8, ptr %0, i32 1
  store i8 -1, ptr %0, align 1
  %46 = getelementptr i8, ptr %0, i32 2
  %47 = getelementptr i8, ptr %0, i32 3
  store i8 35, ptr %46, align 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(17) %47, ptr noundef align 1 dereferenceable(17) %6, i32 17, i1 false)
  %48 = getelementptr i8, ptr %0, i32 20
  %49 = getelementptr inbounds %struct.ieee80211_sta_he_cap, ptr %1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %48, ptr noundef align 1 %49, i32 %44, i1 false)
  %50 = getelementptr i8, ptr %48, i32 %44
  %51 = load i8, ptr %18, align 1
  %52 = icmp sgt i8 %51, -1
  br i1 %52, label %69, label %53

53:                                               ; preds = %43
  %54 = load i8, ptr %17, align 1
  %55 = and i8 %54, 120
  %56 = zext i8 %55 to i32
  %57 = tail call i32 @__sw_hweight8(i32 noundef %56) #21
  %58 = load i8, ptr %17, align 1
  %59 = and i8 %58, 7
  %60 = add nuw nsw i8 %59, 1
  %61 = trunc i32 %57 to i8
  %62 = mul i8 %61, 6
  %63 = mul i8 %62, %60
  %64 = add i8 %63, 7
  %65 = zext i8 %64 to i32
  %66 = add nuw nsw i32 %65, 7
  %67 = lshr i32 %66, 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %50, ptr align 1 %17, i32 %67, i1 false)
  %68 = getelementptr i8, ptr %50, i32 %67
  br label %69

69:                                               ; preds = %53, %43
  %70 = phi ptr [ %50, %43 ], [ %68, %53 ]
  %71 = ptrtoint ptr %70 to i32
  %72 = sub i32 %71, %39
  %73 = trunc i32 %72 to i8
  %74 = add i8 %73, -2
  store i8 %74, ptr %45, align 1
  br label %75

75:                                               ; preds = %69, %35, %3
  %76 = phi ptr [ %70, %69 ], [ %0, %3 ], [ %0, %35 ]
  ret ptr %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_ie_build_he_6ghz_cap(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 3
  %6 = load i8, ptr %5, align 2, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  switch i32 %4, label %10 [
    i32 2, label %12
    i32 3, label %9
  ]

9:                                                ; preds = %8
  br label %12

10:                                               ; preds = %8, %2
  %11 = trunc i32 %4 to i8
  br label %12

12:                                               ; preds = %10, %9, %8
  %13 = phi i8 [ %11, %10 ], [ 9, %9 ], [ 8, %8 ]
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ieee80211_hw, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = tail call zeroext i1 @cfg80211_any_usable_channels(ptr noundef %17, i32 noundef 8, i32 noundef 8192) #21
  br i1 %18, label %19, label %68

19:                                               ; preds = %12
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr inbounds %struct.ieee80211_hw, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr %struct.wiphy, ptr %22, i32 0, i32 53, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = zext i8 %13 to i32
  %26 = icmp ugt i8 %13, 11
  br i1 %26, label %36, label %27, !prof !8

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %24, i32 0, i32 9
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = icmp eq i16 %29, 0
  br i1 %31, label %68, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %24, i32 0, i32 10
  %34 = load ptr, ptr %33, align 4
  %35 = shl nuw i32 1, %25
  br label %40

36:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 510, i32 noundef 9, ptr noundef null) #21
  br label %68

37:                                               ; preds = %40
  %38 = add nuw nsw i32 %41, 1
  %39 = icmp eq i32 %38, %30
  br i1 %39, label %68, label %40

40:                                               ; preds = %37, %32
  %41 = phi i32 [ 0, %32 ], [ %38, %37 ]
  %42 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %34, i32 %41
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i32
  %45 = and i32 %35, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %37, label %47

47:                                               ; preds = %40
  %48 = icmp eq ptr %42, null
  br i1 %48, label %68, label %49

49:                                               ; preds = %47
  %50 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %34, i32 %41, i32 2
  %51 = load i16, ptr %50, align 1
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %49
  %54 = and i16 %51, -1537
  %55 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 44
  %56 = load i32, ptr %55, align 8
  switch i32 %56, label %62 [
    i32 0, label %57
    i32 4, label %57
    i32 1, label %58
    i32 3, label %60
  ]

57:                                               ; preds = %53, %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3017, i32 noundef 9, ptr noundef null) #21
  br label %58

58:                                               ; preds = %57, %53
  %59 = or i16 %51, 1536
  br label %62

60:                                               ; preds = %53
  %61 = or i16 %54, 512
  br label %62

62:                                               ; preds = %60, %58, %53
  %63 = phi i16 [ %61, %60 ], [ %59, %58 ], [ %54, %53 ]
  %64 = tail call ptr @skb_put(ptr noundef %1, i32 noundef 5) #21
  %65 = getelementptr i8, ptr %64, i32 1
  store i8 -1, ptr %64, align 1
  %66 = getelementptr i8, ptr %64, i32 2
  store i8 3, ptr %65, align 1
  %67 = getelementptr i8, ptr %64, i32 3
  store i8 59, ptr %66, align 1
  store i16 %63, ptr %67, align 1
  br label %68

68:                                               ; preds = %62, %49, %47, %37, %36, %27, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_any_usable_channels(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_ie_build_ht_oper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr i8, ptr %0, i32 1
  store i8 61, ptr %0, align 1
  %7 = getelementptr i8, ptr %0, i32 2
  store i8 22, ptr %6, align 1
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.ieee80211_channel, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, 1000
  %12 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %11) #21
  %13 = trunc i32 %12 to i8
  store i8 %13, ptr %7, align 1
  %14 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -2
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.ieee80211_channel, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %20, %23
  %25 = getelementptr i8, ptr %0, i32 3
  br i1 %24, label %26, label %27

26:                                               ; preds = %18
  store i8 1, ptr %25, align 1
  br label %30

27:                                               ; preds = %18
  store i8 3, ptr %25, align 1
  br label %30

28:                                               ; preds = %5
  %29 = getelementptr i8, ptr %0, i32 3
  store i8 0, ptr %29, align 1
  br label %30

30:                                               ; preds = %28, %27, %26
  %31 = phi i8 [ 1, %26 ], [ 3, %27 ], [ 0, %28 ]
  %32 = load i16, ptr %1, align 2
  %33 = and i16 %32, 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load i32, ptr %14, align 4
  %37 = icmp ult i32 %36, 2
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = getelementptr i8, ptr %0, i32 3
  %40 = or i8 %31, 4
  store i8 %40, ptr %39, align 1
  br label %41

41:                                               ; preds = %38, %35, %30
  %42 = phi i8 [ %31, %35 ], [ %40, %38 ], [ %31, %30 ]
  br i1 %4, label %43, label %46

43:                                               ; preds = %41
  %44 = getelementptr i8, ptr %0, i32 3
  %45 = or i8 %42, 8
  store i8 %45, ptr %44, align 1
  br label %46

46:                                               ; preds = %43, %41
  %47 = getelementptr i8, ptr %0, i32 4
  store i16 %3, ptr %47, align 1
  %48 = getelementptr i8, ptr %0, i32 6
  %49 = getelementptr i8, ptr %0, i32 8
  %50 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %1, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(18) %48, i8 0, i64 18, i1 false)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %49, ptr noundef align 1 dereferenceable(10) %50, i32 10, i1 false)
  %51 = getelementptr i8, ptr %0, i32 24
  ret ptr %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_ie_build_wide_bw_cs(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 1
  store i8 -62, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i32 2
  store i8 3, ptr %3, align 1
  %5 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -3
  %8 = icmp ult i32 %7, 3
  %9 = trunc i32 %7 to i24
  %10 = shl i24 %9, 3
  %11 = lshr i24 131841, %10
  %12 = trunc i24 %11 to i8
  %13 = select i1 %8, i8 %12, i8 0
  store i8 %13, ptr %4, align 1
  %14 = getelementptr i8, ptr %0, i32 3
  %15 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, 1000
  %18 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %17) #21
  %19 = trunc i32 %18 to i8
  store i8 %19, ptr %14, align 1
  %20 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = mul i32 %21, 1000
  %25 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %24) #21
  %26 = trunc i32 %25 to i8
  br label %27

27:                                               ; preds = %23, %2
  %28 = phi i8 [ %26, %23 ], [ 0, %2 ]
  %29 = getelementptr i8, ptr %0, i32 4
  store i8 %28, ptr %29, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_ie_build_vht_oper(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 1
  store i8 -64, ptr %0, align 1
  %5 = getelementptr i8, ptr %0, i32 2
  store i8 5, ptr %4, align 1
  %6 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, 1000
  %9 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %8) #21
  %10 = trunc i32 %9 to i8
  %11 = getelementptr i8, ptr %0, i32 3
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = mul i32 %13, 1000
  %17 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %16) #21
  %18 = trunc i32 %17 to i8
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi i8 [ %18, %15 ], [ 0, %3 ]
  %21 = getelementptr i8, ptr %0, i32 4
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %37 [
    i32 5, label %24
    i32 4, label %35
    i32 3, label %36
  ]

24:                                               ; preds = %19
  store i8 1, ptr %5, align 1
  %25 = load i8, ptr %11, align 1
  store i8 %25, ptr %21, align 1
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.ieee80211_channel, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %6, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = add i8 %25, -8
  store i8 %32, ptr %11, align 1
  br label %38

33:                                               ; preds = %24
  %34 = add i8 %25, 8
  store i8 %34, ptr %11, align 1
  br label %38

35:                                               ; preds = %19
  store i8 1, ptr %5, align 1
  br label %38

36:                                               ; preds = %19
  store i8 1, ptr %5, align 1
  br label %38

37:                                               ; preds = %19
  store i8 0, ptr %5, align 1
  br label %38

38:                                               ; preds = %37, %36, %35, %33, %31
  %39 = getelementptr i8, ptr %0, i32 5
  store i16 -1, ptr %39, align 1
  %40 = getelementptr i8, ptr %0, i32 7
  ret ptr %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_ie_build_he_oper(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 3
  %6 = select i1 %5, i8 12, i8 7
  %7 = getelementptr i8, ptr %0, i32 1
  store i8 -1, ptr %0, align 1
  %8 = getelementptr i8, ptr %0, i32 2
  store i8 %6, ptr %7, align 1
  %9 = getelementptr i8, ptr %0, i32 3
  store i8 36, ptr %8, align 1
  %10 = load ptr, ptr %1, align 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 3
  %13 = select i1 %12, i32 -2147270672, i32 -2147401744
  store i32 %13, ptr %9, align 1
  %14 = getelementptr i8, ptr %0, i32 7
  store i16 -1, ptr %14, align 1
  %15 = getelementptr i8, ptr %0, i32 9
  %16 = load ptr, ptr %1, align 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %62

19:                                               ; preds = %2
  %20 = getelementptr i8, ptr %0, i32 13
  store i8 6, ptr %20, align 1
  %21 = load ptr, ptr %1, align 4
  %22 = getelementptr inbounds %struct.ieee80211_channel, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, 1000
  %25 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %24) #21
  %26 = trunc i32 %25 to i8
  store i8 %26, ptr %15, align 1
  %27 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = mul i32 %28, 1000
  %30 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %29) #21
  %31 = trunc i32 %30 to i8
  %32 = getelementptr i8, ptr %0, i32 11
  store i8 %31, ptr %32, align 1
  %33 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %19
  %37 = mul i32 %34, 1000
  %38 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %37) #21
  %39 = trunc i32 %38 to i8
  br label %40

40:                                               ; preds = %36, %19
  %41 = phi i8 [ %39, %36 ], [ 0, %19 ]
  %42 = getelementptr i8, ptr %0, i32 12
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  switch i32 %44, label %57 [
    i32 5, label %45
    i32 4, label %58
    i32 3, label %55
    i32 2, label %56
  ]

45:                                               ; preds = %40
  %46 = getelementptr i8, ptr %0, i32 10
  store i8 3, ptr %46, align 1
  %47 = load i8, ptr %32, align 1
  store i8 %47, ptr %42, align 1
  %48 = load ptr, ptr %1, align 4
  %49 = getelementptr inbounds %struct.ieee80211_channel, ptr %48, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %27, align 4
  %52 = icmp ult i32 %50, %51
  %53 = select i1 %52, i8 -8, i8 8
  %54 = add i8 %47, %53
  store i8 %54, ptr %32, align 1
  br label %58

55:                                               ; preds = %40
  br label %58

56:                                               ; preds = %40
  br label %58

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %56, %55, %45, %40
  %59 = phi i8 [ 0, %57 ], [ 1, %56 ], [ 2, %55 ], [ 3, %45 ], [ 3, %40 ]
  %60 = getelementptr i8, ptr %0, i32 10
  store i8 %59, ptr %60, align 1
  %61 = getelementptr i8, ptr %0, i32 14
  br label %62

62:                                               ; preds = %58, %2
  %63 = phi ptr [ %15, %2 ], [ %61, %58 ]
  ret ptr %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ieee80211_chandef_ht_oper(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ieee80211_ht_operation, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 3
  %8 = zext i8 %7 to i32
  switch i32 %8, label %14 [
    i32 0, label %11
    i32 1, label %9
    i32 3, label %10
  ]

9:                                                ; preds = %4
  br label %11

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %10, %9, %4
  %12 = phi i32 [ 2, %10 ], [ 3, %9 ], [ 1, %4 ]
  %13 = load ptr, ptr %1, align 4
  tail call void @cfg80211_chandef_create(ptr noundef %1, ptr noundef %13, i32 noundef %12) #21
  br label %14

14:                                               ; preds = %11, %4, %2
  %15 = phi i1 [ true, %11 ], [ false, %2 ], [ false, %4 ]
  ret i1 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ieee80211_chandef_vht_oper(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.cfg80211_chan_def, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef align 4 dereferenceable(28) %4, i32 28, i1 false)
  %7 = lshr i32 %1, 30
  %8 = icmp ne ptr %2, null
  %9 = icmp ne ptr %3, null
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %98

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %4, align 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.wiphy, ptr %13, i32 0, i32 53, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %17, i32 0, i32 6, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -1073741812
  %21 = icmp ne i32 %20, 0
  %22 = and i32 %19, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %11
  %25 = and i32 %19, 4
  %26 = icmp ne i32 %25, 0
  %27 = icmp ugt i32 %19, 1073741823
  %28 = icmp slt i32 %19, 0
  %29 = and i1 %27, %26
  %30 = or i1 %28, %29
  br label %31

31:                                               ; preds = %24, %11
  %32 = phi i1 [ true, %11 ], [ %30, %24 ]
  %33 = getelementptr inbounds %struct.ieee80211_vht_operation, ptr %2, i32 0, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct.ieee80211_vht_operation, ptr %2, i32 0, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.ieee80211_ht_operation, ptr %3, i32 0, i32 2
  %40 = load i16, ptr %39, align 1
  %41 = lshr i16 %40, 5
  %42 = and i16 %41, 255
  %43 = zext i16 %42 to i32
  %44 = getelementptr %struct.ieee80211_hw, ptr %0, i32 0, i32 4, i32 1
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 2048
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 0, i32 %7
  %49 = shl i32 %1, 2
  %50 = and i32 %49, 48
  %51 = or i32 %48, %50
  switch i32 %51, label %60 [
    i32 35, label %59
    i32 1, label %52
    i32 2, label %53
    i32 3, label %53
    i32 16, label %55
    i32 17, label %56
    i32 18, label %56
    i32 19, label %59
    i32 32, label %59
  ]

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52, %31, %31
  %54 = phi i1 [ %32, %31 ], [ %32, %31 ], [ false, %52 ]
  br label %60

55:                                               ; preds = %31
  br label %60

56:                                               ; preds = %31, %31
  %57 = icmp eq i8 %37, 0
  %58 = select i1 %57, i32 %43, i32 %38
  br label %60

59:                                               ; preds = %31, %31, %31
  br label %60

60:                                               ; preds = %59, %56, %55, %53, %31
  %61 = phi i32 [ %38, %55 ], [ %43, %53 ], [ %38, %59 ], [ 0, %31 ], [ %58, %56 ]
  %62 = phi i1 [ %32, %55 ], [ %54, %53 ], [ %32, %59 ], [ false, %31 ], [ %32, %56 ]
  %63 = phi i1 [ %21, %55 ], [ %21, %53 ], [ %21, %59 ], [ false, %31 ], [ %21, %56 ]
  %64 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %35, i32 noundef %15) #21
  %65 = udiv i32 %64, 1000
  %66 = load ptr, ptr %4, align 4
  %67 = load i32, ptr %66, align 4
  %68 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %61, i32 noundef %67) #21
  %69 = udiv i32 %68, 1000
  %70 = load i8, ptr %2, align 1
  switch i8 %70, label %98 [
    i8 0, label %95
    i8 1, label %71
    i8 2, label %88
    i8 3, label %91
  ]

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 1
  store i32 3, ptr %72, align 4
  %73 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 2
  store i32 %65, ptr %73, align 4
  %74 = icmp eq i32 %61, 0
  br i1 %74, label %95, label %75

75:                                               ; preds = %71
  %76 = sub nsw i32 %61, %35
  %77 = tail call i32 @llvm.abs.i32(i32 %76, i1 true)
  %78 = icmp ne i32 %77, 8
  %79 = xor i1 %63, true
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  store i32 5, ptr %72, align 4
  store i32 %69, ptr %73, align 4
  br label %95

82:                                               ; preds = %75
  %83 = icmp ult i32 %77, 9
  %84 = xor i1 %62, true
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %95, label %86

86:                                               ; preds = %82
  store i32 4, ptr %72, align 4
  %87 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 3
  store i32 %69, ptr %87, align 4
  br label %95

88:                                               ; preds = %60
  %89 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 1
  store i32 5, ptr %89, align 4
  %90 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 2
  store i32 %65, ptr %90, align 4
  br label %95

91:                                               ; preds = %60
  %92 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 1
  store i32 4, ptr %92, align 4
  %93 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 2
  store i32 %65, ptr %93, align 4
  %94 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %6, i32 0, i32 3
  store i32 %69, ptr %94, align 4
  br label %95

95:                                               ; preds = %91, %88, %86, %82, %81, %71, %60
  %96 = call zeroext i1 @cfg80211_chandef_valid(ptr noundef nonnull %6) #21
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %6, i32 28, i1 false)
  br label %98

98:                                               ; preds = %97, %95, %60, %5
  %99 = phi i1 [ true, %97 ], [ false, %5 ], [ false, %60 ], [ false, %95 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #21
  ret i1 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ieee80211_chandef_he_6ghz_oper(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.cfg80211_chan_def, align 4
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 3
  %10 = load i8, ptr %9, align 2, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  switch i32 %8, label %14 [
    i32 2, label %15
    i32 3, label %13
  ]

13:                                               ; preds = %12
  br label %15

14:                                               ; preds = %12, %3
  br label %15

15:                                               ; preds = %14, %13, %12
  %16 = phi i32 [ %8, %14 ], [ 9, %13 ], [ 8, %12 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef align 4 dereferenceable(28) %2, i32 28, i1 false)
  %17 = load ptr, ptr %2, align 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %180

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr %struct.wiphy, ptr %22, i32 0, i32 53, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = trunc i32 %16 to i8
  %26 = and i32 %16, 255
  %27 = icmp ugt i8 %25, 11
  br i1 %27, label %37, label %28, !prof !8

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %24, i32 0, i32 9
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = icmp eq i16 %30, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %24, i32 0, i32 10
  %35 = load ptr, ptr %34, align 4
  %36 = shl nuw i32 1, %26
  br label %41

37:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 510, i32 noundef 9, ptr noundef null) #21
  br label %56

38:                                               ; preds = %41
  %39 = add nuw nsw i32 %42, 1
  %40 = icmp eq i32 %39, %31
  br i1 %40, label %56, label %41

41:                                               ; preds = %38, %33
  %42 = phi i32 [ 0, %33 ], [ %39, %38 ]
  %43 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %35, i32 %42
  %44 = load i16, ptr %43, align 4
  %45 = zext i16 %44 to i32
  %46 = and i32 %36, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %38, label %48

48:                                               ; preds = %41
  %49 = icmp eq ptr %43, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %48
  %51 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %35, i32 %42, i32 1
  %52 = load i8, ptr %51, align 2, !range !10
  %53 = icmp eq i8 %52, 0
  %54 = icmp eq ptr %51, null
  %55 = or i1 %54, %53
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %48, %38, %37, %28
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %57) #22
  br label %180

59:                                               ; preds = %50
  %60 = getelementptr %struct.ieee80211_sband_iftype_data, ptr %35, i32 %42, i32 1, i32 1, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 8
  %64 = icmp eq i32 %63, 0
  %65 = and i32 %62, 16
  %66 = icmp eq i32 %65, 0
  %67 = icmp eq ptr %1, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %70 = getelementptr inbounds %struct.ieee80211_channel, ptr %17, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %69, i32 noundef %71) #22
  br label %180

73:                                               ; preds = %59
  %74 = load i32, ptr %1, align 1
  %75 = and i32 %74, 131072
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.ieee80211_he_operation, ptr %1, i32 0, i32 2
  %79 = and i32 %74, 16384
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 0, i32 3
  %82 = getelementptr i8, ptr %78, i32 %81
  %83 = lshr i32 %74, 15
  %84 = and i32 %83, 1
  %85 = getelementptr i8, ptr %82, i32 %84
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %77, %73
  %88 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %89 = getelementptr inbounds %struct.ieee80211_channel, ptr %17, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %88, i32 noundef %90) #22
  br label %180

92:                                               ; preds = %77
  %93 = load i8, ptr %85, align 1
  %94 = zext i8 %93 to i32
  %95 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %94, i32 noundef 3) #21
  %96 = load ptr, ptr %5, align 4
  %97 = getelementptr inbounds %struct.ieee80211_hw, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8
  %99 = urem i32 %95, 1000
  %100 = sub i32 %95, %99
  %101 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %98, i32 noundef %100) #21
  store ptr %101, ptr %4, align 4
  %102 = getelementptr inbounds %struct.ieee80211_he_6ghz_oper, ptr %85, i32 0, i32 1
  %103 = load i8, ptr %102, align 1
  %104 = lshr i8 %103, 3
  %105 = trunc i8 %104 to i3
  %106 = icmp eq i3 %105, 1
  %107 = select i1 %106, i32 2, i32 0
  %108 = icmp eq i3 %105, 0
  %109 = select i1 %108, i32 1, i32 %107
  %110 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 63
  store i32 %109, ptr %110, align 4
  %111 = load i8, ptr %102, align 1
  %112 = trunc i8 %111 to i2
  switch i2 %112, label %135 [
    i2 0, label %113
    i2 1, label %115
    i2 -2, label %117
    i2 -1, label %119
  ]

113:                                              ; preds = %92
  %114 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %4, i32 0, i32 1
  store i32 1, ptr %114, align 4
  br label %144

115:                                              ; preds = %92
  %116 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %4, i32 0, i32 1
  store i32 2, ptr %116, align 4
  br label %144

117:                                              ; preds = %92
  %118 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %4, i32 0, i32 1
  store i32 3, ptr %118, align 4
  br label %144

119:                                              ; preds = %92
  %120 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %4, i32 0, i32 1
  store i32 3, ptr %120, align 4
  %121 = getelementptr inbounds %struct.ieee80211_he_6ghz_oper, ptr %85, i32 0, i32 3
  %122 = load i8, ptr %121, align 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %144, label %124

124:                                              ; preds = %119
  %125 = zext i8 %122 to i32
  %126 = getelementptr inbounds %struct.ieee80211_he_6ghz_oper, ptr %85, i32 0, i32 2
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  %129 = sub nsw i32 %125, %128
  %130 = tail call i32 @llvm.abs.i32(i32 %129, i1 true)
  %131 = icmp eq i32 %130, 8
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br i1 %64, label %144, label %136

133:                                              ; preds = %124
  br i1 %66, label %144, label %134

134:                                              ; preds = %133
  store i32 4, ptr %120, align 4
  br label %144

135:                                              ; preds = %92
  unreachable

136:                                              ; preds = %132
  store i32 5, ptr %120, align 4
  %137 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %4, i32 0, i32 1
  %138 = getelementptr inbounds %struct.ieee80211_he_6ghz_oper, ptr %85, i32 0, i32 3
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i32
  %141 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %140, i32 noundef 3) #21
  %142 = udiv i32 %141, 1000
  %143 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %4, i32 0, i32 2
  store i32 %142, ptr %143, align 4
  br label %161

144:                                              ; preds = %134, %133, %132, %119, %117, %115, %113
  %145 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %4, i32 0, i32 1
  %146 = getelementptr inbounds %struct.ieee80211_he_6ghz_oper, ptr %85, i32 0, i32 2
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %148, i32 noundef 3) #21
  %150 = udiv i32 %149, 1000
  %151 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %4, i32 0, i32 2
  store i32 %150, ptr %151, align 4
  %152 = and i32 %62, 24
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %144
  %155 = getelementptr inbounds %struct.ieee80211_he_6ghz_oper, ptr %85, i32 0, i32 3
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i32
  %158 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %157, i32 noundef 3) #21
  %159 = udiv i32 %158, 1000
  %160 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %4, i32 0, i32 3
  store i32 %159, ptr %160, align 4
  br label %161

161:                                              ; preds = %154, %144, %136
  %162 = phi ptr [ %145, %144 ], [ %145, %154 ], [ %137, %136 ]
  %163 = call zeroext i1 @cfg80211_chandef_valid(ptr noundef nonnull %4) #21
  br i1 %163, label %179, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 10
  %166 = load ptr, ptr %4, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.ieee80211_channel, ptr %166, i32 0, i32 1
  %170 = load i32, ptr %169, align 4
  br label %171

171:                                              ; preds = %168, %164
  %172 = phi i32 [ %170, %168 ], [ 0, %164 ]
  %173 = load i32, ptr %162, align 4
  %174 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %4, i32 0, i32 2
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %4, i32 0, i32 3
  %177 = load i32, ptr %176, align 4
  %178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %165, i32 noundef %172, i32 noundef %173, i32 noundef %175, i32 noundef %177) #22
  br label %180

179:                                              ; preds = %161
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) %4, i32 28, i1 false)
  br label %180

180:                                              ; preds = %179, %171, %87, %68, %56, %15
  %181 = phi i1 [ true, %179 ], [ false, %171 ], [ false, %87 ], [ false, %68 ], [ false, %56 ], [ true, %15 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #21
  ret i1 %181
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ieee80211_chandef_s1g_oper(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 15
  %8 = zext i8 %7 to i32
  switch i32 %8, label %27 [
    i32 0, label %13
    i32 1, label %9
    i32 3, label %10
    i32 7, label %11
    i32 15, label %12
  ]

9:                                                ; preds = %4
  br label %13

10:                                               ; preds = %4
  br label %13

11:                                               ; preds = %4
  br label %13

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12, %11, %10, %9, %4
  %14 = phi i32 [ 12, %12 ], [ 11, %11 ], [ 10, %10 ], [ 9, %9 ], [ 8, %4 ]
  %15 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ieee80211_s1g_oper_ie, ptr %0, i32 0, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %18, i32 noundef 4) #21
  %20 = freeze i32 %19
  %21 = udiv i32 %20, 1000
  %22 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = mul i32 %21, 1000
  %24 = sub i32 %20, %23
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 5
  store i16 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %13, %4, %2
  %28 = phi i1 [ true, %13 ], [ false, %2 ], [ false, %4 ]
  ret i1 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_parse_bitrates(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #3 {
  %6 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 7
  %9 = select i1 %8, i32 64, i32 0
  %10 = icmp eq i32 %7, 6
  %11 = select i1 %10, i32 32, i32 %9
  store i32 0, ptr %4, align 4
  %12 = icmp sgt i32 %3, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %5
  %14 = zext i1 %8 to i32
  %15 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 4
  %16 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 1
  %17 = shl nuw nsw i32 5, %14
  %18 = select i1 %10, i32 20, i32 %17
  %19 = add nsw i32 %18, -1
  br label %20

20:                                               ; preds = %52, %13
  %21 = phi i32 [ 0, %13 ], [ %53, %52 ]
  %22 = phi i32 [ 0, %13 ], [ %54, %52 ]
  %23 = phi i32 [ 0, %13 ], [ %55, %52 ]
  %24 = getelementptr i8, ptr %2, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 127
  %27 = zext i8 %26 to i32
  %28 = load i32, ptr %15, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %20
  %31 = load ptr, ptr %16, align 4
  br label %32

32:                                               ; preds = %49, %30
  %33 = phi i32 [ 0, %30 ], [ %50, %49 ]
  %34 = getelementptr %struct.ieee80211_rate, ptr %31, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, %11
  %37 = icmp eq i32 %36, %11
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = getelementptr %struct.ieee80211_rate, ptr %31, i32 %33, i32 1
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = add nsw i32 %19, %41
  %43 = sdiv i32 %42, %18
  %44 = icmp eq i32 %43, %27
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = shl nuw i32 1, %33
  %47 = or i32 %21, %46
  store i32 %47, ptr %4, align 4
  %48 = add i32 %22, 1
  br label %52

49:                                               ; preds = %38, %32
  %50 = add nuw nsw i32 %33, 1
  %51 = icmp eq i32 %50, %28
  br i1 %51, label %52, label %32

52:                                               ; preds = %49, %45, %20
  %53 = phi i32 [ %47, %45 ], [ %21, %20 ], [ %21, %49 ]
  %54 = phi i32 [ %48, %45 ], [ %22, %20 ], [ %22, %49 ]
  %55 = add nuw nsw i32 %23, 1
  %56 = icmp eq i32 %55, %3
  br i1 %56, label %57, label %20

57:                                               ; preds = %52, %5
  %58 = phi i32 [ 0, %5 ], [ %54, %52 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_add_srates_ie(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 24
  %8 = load i32, ptr %7, align 8
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %10, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 7
  %16 = zext i1 %15 to i32
  %17 = icmp eq i32 %14, 6
  %18 = select i1 %17, i32 2, i32 %16
  br label %19

19:                                               ; preds = %12, %4
  %20 = phi i32 [ %18, %12 ], [ 0, %4 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 7
  %24 = select i1 %23, i32 64, i32 0
  %25 = icmp eq i32 %22, 6
  %26 = select i1 %25, i32 32, i32 %24
  %27 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr %struct.wiphy, ptr %28, i32 0, i32 53, i32 %3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %30, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %30, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi i32 [ 0, %34 ], [ %48, %37 ]
  %39 = phi i8 [ 0, %34 ], [ %46, %37 ]
  %40 = phi i8 [ 0, %34 ], [ %47, %37 ]
  %41 = getelementptr %struct.ieee80211_rate, ptr %36, i32 %38
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, %26
  %44 = icmp eq i32 %43, %26
  %45 = zext i1 %44 to i8
  %46 = add i8 %39, %45
  %47 = add i8 %40, 1
  %48 = zext i8 %47 to i32
  %49 = icmp sgt i32 %32, %48
  br i1 %49, label %37, label %50

50:                                               ; preds = %37, %19
  %51 = phi i8 [ 0, %19 ], [ %46, %37 ]
  %52 = tail call i8 @llvm.umin.i8(i8 %51, i8 8)
  %53 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %236

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %60 = load ptr, ptr %59, align 8
  %61 = ptrtoint ptr %58 to i32
  %62 = ptrtoint ptr %60 to i32
  %63 = sub i32 %61, %62
  %64 = add nuw nsw i8 %52, 2
  %65 = zext i8 %64 to i32
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %236, label %67

67:                                               ; preds = %56
  %68 = tail call ptr @skb_put(ptr noundef %1, i32 noundef %65) #21
  %69 = getelementptr i8, ptr %68, i32 1
  store i8 1, ptr %68, align 1
  store i8 %52, ptr %69, align 1
  %70 = icmp eq i8 %52, 0
  br i1 %70, label %236, label %71

71:                                               ; preds = %67
  %72 = getelementptr i8, ptr %68, i32 2
  %73 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %30, i32 0, i32 1
  %74 = shl i32 5, %20
  %75 = add i32 %74, -1
  %76 = load ptr, ptr %73, align 4
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, %26
  %79 = icmp eq i32 %78, %26
  br i1 %79, label %80, label %91

80:                                               ; preds = %71
  %81 = shl i32 %8, 7
  %82 = select i1 %2, i32 %81, i32 0
  %83 = getelementptr %struct.ieee80211_rate, ptr %76, i32 0, i32 1
  %84 = load i16, ptr %83, align 4
  %85 = zext i16 %84 to i32
  %86 = add i32 %75, %85
  %87 = sdiv i32 %86, %74
  %88 = or i32 %87, %82
  %89 = trunc i32 %88 to i8
  %90 = getelementptr i8, ptr %68, i32 3
  store i8 %89, ptr %72, align 1
  br label %91

91:                                               ; preds = %80, %71
  %92 = phi ptr [ %90, %80 ], [ %72, %71 ]
  %93 = icmp eq i8 %52, 1
  br i1 %93, label %236, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %73, align 4
  %96 = getelementptr %struct.ieee80211_rate, ptr %95, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, %26
  %99 = icmp eq i32 %98, %26
  br i1 %99, label %100, label %112

100:                                              ; preds = %94
  %101 = shl i32 %8, 6
  %102 = and i32 %101, 128
  %103 = select i1 %2, i32 %102, i32 0
  %104 = getelementptr %struct.ieee80211_rate, ptr %95, i32 1, i32 1
  %105 = load i16, ptr %104, align 4
  %106 = zext i16 %105 to i32
  %107 = add i32 %75, %106
  %108 = sdiv i32 %107, %74
  %109 = or i32 %108, %103
  %110 = trunc i32 %109 to i8
  %111 = getelementptr i8, ptr %92, i32 1
  store i8 %110, ptr %92, align 1
  br label %112

112:                                              ; preds = %100, %94
  %113 = phi ptr [ %111, %100 ], [ %92, %94 ]
  %114 = icmp eq i8 %52, 2
  br i1 %114, label %236, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %73, align 4
  %117 = getelementptr %struct.ieee80211_rate, ptr %116, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, %26
  %120 = icmp eq i32 %119, %26
  br i1 %120, label %121, label %133

121:                                              ; preds = %115
  %122 = shl i32 %8, 5
  %123 = and i32 %122, 128
  %124 = select i1 %2, i32 %123, i32 0
  %125 = getelementptr %struct.ieee80211_rate, ptr %116, i32 2, i32 1
  %126 = load i16, ptr %125, align 4
  %127 = zext i16 %126 to i32
  %128 = add i32 %75, %127
  %129 = sdiv i32 %128, %74
  %130 = or i32 %129, %124
  %131 = trunc i32 %130 to i8
  %132 = getelementptr i8, ptr %113, i32 1
  store i8 %131, ptr %113, align 1
  br label %133

133:                                              ; preds = %121, %115
  %134 = phi ptr [ %132, %121 ], [ %113, %115 ]
  %135 = icmp eq i8 %52, 3
  br i1 %135, label %236, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr %73, align 4
  %138 = getelementptr %struct.ieee80211_rate, ptr %137, i32 3
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, %26
  %141 = icmp eq i32 %140, %26
  br i1 %141, label %142, label %154

142:                                              ; preds = %136
  %143 = shl i32 %8, 4
  %144 = and i32 %143, 128
  %145 = select i1 %2, i32 %144, i32 0
  %146 = getelementptr %struct.ieee80211_rate, ptr %137, i32 3, i32 1
  %147 = load i16, ptr %146, align 4
  %148 = zext i16 %147 to i32
  %149 = add i32 %75, %148
  %150 = sdiv i32 %149, %74
  %151 = or i32 %150, %145
  %152 = trunc i32 %151 to i8
  %153 = getelementptr i8, ptr %134, i32 1
  store i8 %152, ptr %134, align 1
  br label %154

154:                                              ; preds = %142, %136
  %155 = phi ptr [ %153, %142 ], [ %134, %136 ]
  %156 = icmp eq i8 %52, 4
  br i1 %156, label %236, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr %73, align 4
  %159 = getelementptr %struct.ieee80211_rate, ptr %158, i32 4
  %160 = load i32, ptr %159, align 4
  %161 = and i32 %160, %26
  %162 = icmp eq i32 %161, %26
  br i1 %162, label %163, label %175

163:                                              ; preds = %157
  %164 = shl i32 %8, 3
  %165 = and i32 %164, 128
  %166 = select i1 %2, i32 %165, i32 0
  %167 = getelementptr %struct.ieee80211_rate, ptr %158, i32 4, i32 1
  %168 = load i16, ptr %167, align 4
  %169 = zext i16 %168 to i32
  %170 = add i32 %75, %169
  %171 = sdiv i32 %170, %74
  %172 = or i32 %171, %166
  %173 = trunc i32 %172 to i8
  %174 = getelementptr i8, ptr %155, i32 1
  store i8 %173, ptr %155, align 1
  br label %175

175:                                              ; preds = %163, %157
  %176 = phi ptr [ %174, %163 ], [ %155, %157 ]
  %177 = icmp eq i8 %52, 5
  br i1 %177, label %236, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr %73, align 4
  %180 = getelementptr %struct.ieee80211_rate, ptr %179, i32 5
  %181 = load i32, ptr %180, align 4
  %182 = and i32 %181, %26
  %183 = icmp eq i32 %182, %26
  br i1 %183, label %184, label %196

184:                                              ; preds = %178
  %185 = shl i32 %8, 2
  %186 = and i32 %185, 128
  %187 = select i1 %2, i32 %186, i32 0
  %188 = getelementptr %struct.ieee80211_rate, ptr %179, i32 5, i32 1
  %189 = load i16, ptr %188, align 4
  %190 = zext i16 %189 to i32
  %191 = add i32 %75, %190
  %192 = sdiv i32 %191, %74
  %193 = or i32 %192, %187
  %194 = trunc i32 %193 to i8
  %195 = getelementptr i8, ptr %176, i32 1
  store i8 %194, ptr %176, align 1
  br label %196

196:                                              ; preds = %184, %178
  %197 = phi ptr [ %195, %184 ], [ %176, %178 ]
  %198 = icmp eq i8 %52, 6
  br i1 %198, label %236, label %199

199:                                              ; preds = %196
  %200 = load ptr, ptr %73, align 4
  %201 = getelementptr %struct.ieee80211_rate, ptr %200, i32 6
  %202 = load i32, ptr %201, align 4
  %203 = and i32 %202, %26
  %204 = icmp eq i32 %203, %26
  br i1 %204, label %205, label %217

205:                                              ; preds = %199
  %206 = shl i32 %8, 1
  %207 = and i32 %206, 128
  %208 = select i1 %2, i32 %207, i32 0
  %209 = getelementptr %struct.ieee80211_rate, ptr %200, i32 6, i32 1
  %210 = load i16, ptr %209, align 4
  %211 = zext i16 %210 to i32
  %212 = add i32 %75, %211
  %213 = sdiv i32 %212, %74
  %214 = or i32 %213, %208
  %215 = trunc i32 %214 to i8
  %216 = getelementptr i8, ptr %197, i32 1
  store i8 %215, ptr %197, align 1
  br label %217

217:                                              ; preds = %205, %199
  %218 = phi ptr [ %216, %205 ], [ %197, %199 ]
  %219 = icmp eq i8 %52, 7
  br i1 %219, label %236, label %220

220:                                              ; preds = %217
  %221 = load ptr, ptr %73, align 4
  %222 = getelementptr %struct.ieee80211_rate, ptr %221, i32 7
  %223 = load i32, ptr %222, align 4
  %224 = and i32 %223, %26
  %225 = icmp eq i32 %224, %26
  br i1 %225, label %226, label %236

226:                                              ; preds = %220
  %227 = and i32 %8, 128
  %228 = select i1 %2, i32 %227, i32 0
  %229 = getelementptr %struct.ieee80211_rate, ptr %221, i32 7, i32 1
  %230 = load i16, ptr %229, align 4
  %231 = zext i16 %230 to i32
  %232 = add i32 %75, %231
  %233 = sdiv i32 %232, %74
  %234 = or i32 %233, %228
  %235 = trunc i32 %234 to i8
  store i8 %235, ptr %218, align 1
  br label %236

236:                                              ; preds = %226, %220, %217, %196, %175, %154, %133, %112, %91, %67, %56, %50
  %237 = phi i32 [ -12, %56 ], [ -12, %50 ], [ 0, %67 ], [ 0, %220 ], [ 0, %226 ], [ 0, %217 ], [ 0, %196 ], [ 0, %175 ], [ 0, %154 ], [ 0, %133 ], [ 0, %112 ], [ 0, %91 ]
  ret i32 %237
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_add_ext_srates_ie(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 24
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 32, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 7
  %12 = select i1 %11, i32 64, i32 0
  %13 = icmp eq i32 %10, 6
  %14 = select i1 %13, i32 32, i32 %12
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %16, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 7
  %22 = zext i1 %21 to i32
  %23 = icmp eq i32 %20, 6
  %24 = select i1 %23, i32 2, i32 %22
  br label %25

25:                                               ; preds = %18, %4
  %26 = phi i32 [ %24, %18 ], [ 0, %4 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  %27 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr %struct.wiphy, ptr %28, i32 0, i32 53, i32 %3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %30, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %30, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi i32 [ 0, %34 ], [ %48, %37 ]
  %39 = phi i8 [ 0, %34 ], [ %46, %37 ]
  %40 = phi i8 [ 0, %34 ], [ %47, %37 ]
  %41 = getelementptr %struct.ieee80211_rate, ptr %36, i32 %38
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, %14
  %44 = icmp eq i32 %43, %14
  %45 = zext i1 %44 to i8
  %46 = add i8 %39, %45
  %47 = add i8 %40, 1
  %48 = zext i8 %47 to i32
  %49 = icmp sgt i32 %32, %48
  br i1 %49, label %37, label %50

50:                                               ; preds = %37, %25
  %51 = phi i8 [ 0, %25 ], [ %46, %37 ]
  %52 = tail call i8 @llvm.usub.sat.i8(i8 %51, i8 8)
  %53 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %110

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %60 = load ptr, ptr %59, align 8
  %61 = ptrtoint ptr %58 to i32
  %62 = ptrtoint ptr %60 to i32
  %63 = sub i32 %61, %62
  %64 = add nuw i8 %52, 2
  %65 = zext i8 %64 to i32
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %110, label %67

67:                                               ; preds = %56
  %68 = icmp ult i8 %51, 9
  br i1 %68, label %110, label %69

69:                                               ; preds = %67
  %70 = tail call ptr @skb_put(ptr noundef %1, i32 noundef %65) #21
  %71 = getelementptr i8, ptr %70, i32 1
  store i8 50, ptr %70, align 1
  store i8 %52, ptr %71, align 1
  %72 = load i32, ptr %31, align 4
  %73 = icmp sgt i32 %72, 8
  br i1 %73, label %74, label %110

74:                                               ; preds = %69
  %75 = getelementptr i8, ptr %70, i32 2
  %76 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %30, i32 0, i32 1
  %77 = shl i32 5, %26
  %78 = add i32 %77, -1
  br label %79

79:                                               ; preds = %104, %74
  %80 = phi i32 [ %72, %74 ], [ %105, %104 ]
  %81 = phi i32 [ 8, %74 ], [ %108, %104 ]
  %82 = phi ptr [ %75, %74 ], [ %106, %104 ]
  %83 = phi i8 [ 8, %74 ], [ %107, %104 ]
  %84 = load ptr, ptr %76, align 4
  %85 = getelementptr %struct.ieee80211_rate, ptr %84, i32 %81
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, %14
  %88 = icmp eq i32 %87, %14
  br i1 %88, label %89, label %104

89:                                               ; preds = %79
  %90 = shl nuw i32 1, %81
  %91 = and i32 %90, %8
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 0, i32 128
  %94 = select i1 %2, i32 %93, i32 0
  %95 = getelementptr %struct.ieee80211_rate, ptr %84, i32 %81, i32 1
  %96 = load i16, ptr %95, align 4
  %97 = zext i16 %96 to i32
  %98 = add i32 %78, %97
  %99 = sdiv i32 %98, %77
  %100 = or i32 %99, %94
  %101 = trunc i32 %100 to i8
  %102 = getelementptr i8, ptr %82, i32 1
  store i8 %101, ptr %82, align 1
  %103 = load i32, ptr %31, align 4
  br label %104

104:                                              ; preds = %89, %79
  %105 = phi i32 [ %103, %89 ], [ %80, %79 ]
  %106 = phi ptr [ %102, %89 ], [ %82, %79 ]
  %107 = add i8 %83, 1
  %108 = zext i8 %107 to i32
  %109 = icmp sgt i32 %105, %108
  br i1 %109, label %79, label %110

110:                                              ; preds = %104, %69, %67, %56, %50
  %111 = phi i32 [ -12, %56 ], [ 0, %67 ], [ -12, %50 ], [ 0, %69 ], [ 0, %104 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_ave_rssi(ptr nocapture noundef readonly %0) #0 {
  %2 = load i32, ptr %0, align 8
  %3 = icmp ne i32 %2, 2
  %4 = load i1, ptr @ieee80211_ave_rssi.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  store i1 true, ptr @ieee80211_ave_rssi.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3682, i32 noundef 9, ptr noundef null) #21
  br label %8

8:                                                ; preds = %7, %1
  br i1 %3, label %14, label %9

9:                                                ; preds = %8
  %10 = getelementptr i8, ptr %0, i32 -608
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 4
  %13 = sub nsw i32 0, %12
  br label %14

14:                                               ; preds = %9, %8
  %15 = phi i32 [ %13, %9 ], [ 0, %8 ]
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @ieee80211_mcs_to_chains(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr [10 x i8], ptr %0, i32 0, i32 3
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr [10 x i8], ptr %0, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr [10 x i8], ptr %0, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i8 1, i8 2
  br label %16

16:                                               ; preds = %11, %7, %3, %1
  %17 = phi i8 [ 1, %1 ], [ 4, %3 ], [ 3, %7 ], [ %15, %11 ]
  ret i8 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ieee80211_calculate_rx_timestamp(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.rate_info, align 2
  %6 = load i64, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #21
  %7 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65664
  %10 = icmp eq i32 %9, 65664
  %11 = load i1, ptr @ieee80211_have_rx_timestamp.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %16, !prof !8

14:                                               ; preds = %4
  store i1 true, ptr @ieee80211_have_rx_timestamp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1763, i32 noundef 9, ptr noundef null) #21
  %15 = load i32, ptr %7, align 8
  br label %16

16:                                               ; preds = %14, %4
  %17 = phi i32 [ %15, %14 ], [ %8, %4 ]
  %18 = and i32 %17, 65668
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3727, i32 noundef 9, ptr noundef null) #21
  br label %187

21:                                               ; preds = %16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(10) %5, i8 0, i32 10, i1 false)
  %22 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 7
  %23 = load i16, ptr %22, align 1
  %24 = trunc i16 %23 to i8
  %25 = lshr i8 %24, 2
  %26 = and i8 %25, 7
  %27 = getelementptr inbounds %struct.rate_info, ptr %5, i32 0, i32 4
  store i8 %26, ptr %27, align 1
  %28 = and i16 %23, 3
  %29 = zext i16 %28 to i32
  switch i32 %29, label %102 [
    i32 3, label %30
    i32 1, label %50
    i32 2, label %74
    i32 0, label %103
  ]

30:                                               ; preds = %21
  store i8 16, ptr %5, align 2
  %31 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 8
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr inbounds %struct.rate_info, ptr %5, i32 0, i32 1
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 9
  %35 = load i8, ptr %34, align 2
  %36 = getelementptr inbounds %struct.rate_info, ptr %5, i32 0, i32 3
  store i8 %35, ptr %36, align 2
  %37 = lshr i8 %24, 5
  %38 = getelementptr inbounds %struct.rate_info, ptr %5, i32 0, i32 7
  store i8 %37, ptr %38, align 2
  %39 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 6
  %40 = load i8, ptr %39, align 2
  %41 = and i8 %40, 4
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %30
  store i8 20, ptr %5, align 2
  br label %44

44:                                               ; preds = %43, %30
  %45 = and i32 %17, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %149, label %47

47:                                               ; preds = %44
  %48 = add i32 %3, 2
  %49 = add i64 %6, 36
  br label %149

50:                                               ; preds = %21
  %51 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 8
  %52 = load i8, ptr %51, align 1
  %53 = getelementptr inbounds %struct.rate_info, ptr %5, i32 0, i32 1
  store i8 %52, ptr %53, align 1
  store i8 1, ptr %5, align 2
  %54 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 6
  %55 = load i8, ptr %54, align 2
  %56 = and i8 %55, 4
  %57 = or i8 %56, 1
  store i8 %57, ptr %5, align 2
  %58 = and i32 %17, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %149, label %60

60:                                               ; preds = %50
  %61 = add i32 %3, 2
  %62 = and i8 %55, 8
  %63 = icmp eq i8 %62, 0
  %64 = select i1 %63, i64 32, i64 24
  %65 = lshr i8 %52, 3
  %66 = and i8 %65, 3
  %67 = add nuw nsw i8 %66, 1
  %68 = icmp eq i8 %67, 3
  %69 = shl nuw nsw i8 %67, 2
  %70 = select i1 %68, i8 16, i8 %69
  %71 = zext i8 %70 to i64
  %72 = add i64 %6, %71
  %73 = add i64 %72, %64
  br label %149

74:                                               ; preds = %21
  store i8 2, ptr %5, align 2
  %75 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 8
  %76 = load i8, ptr %75, align 1
  %77 = getelementptr inbounds %struct.rate_info, ptr %5, i32 0, i32 1
  store i8 %76, ptr %77, align 1
  %78 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 9
  %79 = load i8, ptr %78, align 2
  %80 = getelementptr inbounds %struct.rate_info, ptr %5, i32 0, i32 3
  store i8 %79, ptr %80, align 2
  %81 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 6
  %82 = load i8, ptr %81, align 2
  %83 = and i8 %82, 4
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %74
  store i8 6, ptr %5, align 2
  br label %86

86:                                               ; preds = %85, %74
  %87 = and i32 %17, 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %149, label %89

89:                                               ; preds = %86
  %90 = add i32 %3, 2
  %91 = add i64 %6, 36
  %92 = icmp ne i8 %79, 1
  %93 = and i8 %79, 1
  %94 = icmp ne i8 %93, 0
  %95 = and i1 %92, %94
  %96 = zext i1 %95 to i8
  %97 = add i8 %79, %96
  %98 = zext i8 %97 to i32
  %99 = shl nuw nsw i32 %98, 2
  %100 = zext i32 %99 to i64
  %101 = add i64 %91, %100
  br label %149

102:                                              ; preds = %21
  unreachable

103:                                              ; preds = %21
  %104 = lshr i16 %23, 2
  %105 = and i16 %104, 7
  %106 = icmp eq i16 %105, 1
  %107 = select i1 %106, i32 2, i32 0
  %108 = icmp eq i16 %105, 2
  %109 = select i1 %108, i32 1, i32 %107
  %110 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 11
  %113 = load i8, ptr %112, align 4
  %114 = zext i8 %113 to i32
  %115 = getelementptr %struct.wiphy, ptr %111, i32 0, i32 53, i32 %114
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %116, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 8
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  %122 = getelementptr %struct.ieee80211_rate, ptr %118, i32 %121, i32 1
  %123 = load i16, ptr %122, align 4
  %124 = zext i16 %123 to i32
  %125 = shl nsw i32 -1, %109
  %126 = xor i32 %125, -1
  %127 = add nuw nsw i32 %126, %124
  %128 = lshr i32 %127, %109
  %129 = trunc i32 %128 to i16
  %130 = getelementptr inbounds %struct.rate_info, ptr %5, i32 0, i32 2
  store i16 %129, ptr %130, align 2
  %131 = and i32 %17, 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %149, label %133

133:                                              ; preds = %103
  %134 = icmp eq i8 %113, 1
  br i1 %134, label %135, label %140

135:                                              ; preds = %133
  %136 = shl nuw nsw i32 20, %109
  %137 = zext i32 %136 to i64
  %138 = add i64 %6, %137
  %139 = add i32 %3, 2
  br label %149

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 6
  %142 = load i8, ptr %141, align 2
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %140
  %146 = add i64 %6, 96
  br label %149

147:                                              ; preds = %140
  %148 = add i64 %6, 192
  br label %149

149:                                              ; preds = %147, %145, %135, %103, %89, %86, %60, %50, %47, %44
  %150 = phi i64 [ %101, %89 ], [ %6, %86 ], [ %73, %60 ], [ %6, %50 ], [ %49, %47 ], [ %6, %44 ], [ %138, %135 ], [ %146, %145 ], [ %148, %147 ], [ %6, %103 ]
  %151 = phi i32 [ %90, %89 ], [ %3, %86 ], [ %61, %60 ], [ %3, %50 ], [ %48, %47 ], [ %3, %44 ], [ %139, %135 ], [ %3, %145 ], [ %3, %147 ], [ %3, %103 ]
  %152 = call i32 @cfg80211_calculate_bitrate(ptr noundef nonnull %5) #21
  %153 = trunc i32 %152 to i16
  %154 = icmp eq i16 %153, 0
  %155 = load i1, ptr @ieee80211_calculate_rx_timestamp.__already_done, align 1
  %156 = xor i1 %155, true
  %157 = select i1 %154, i1 %156, i1 false
  br i1 %157, label %158, label %167, !prof !8

158:                                              ; preds = %149
  store i1 true, ptr @ieee80211_calculate_rx_timestamp.__already_done, align 1
  %159 = load i32, ptr %7, align 8
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 8
  %162 = load i8, ptr %161, align 1
  %163 = zext i8 %162 to i32
  %164 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 9
  %165 = load i8, ptr %164, align 2
  %166 = zext i8 %165 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3852, i32 noundef 9, ptr noundef nonnull @.str.8, i64 noundef %160, i32 noundef %163, i32 noundef %166) #21
  br label %167

167:                                              ; preds = %158, %149
  br i1 %154, label %187, label %168

168:                                              ; preds = %167
  %169 = load i32, ptr %7, align 8
  %170 = and i32 %169, 65536
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = and i32 %152, 65535
  br label %180

174:                                              ; preds = %168
  %175 = mul i32 %2, 80
  %176 = and i32 %152, 65535
  %177 = udiv i32 %175, %176
  %178 = zext i32 %177 to i64
  %179 = sub i64 %150, %178
  br label %180

180:                                              ; preds = %174, %172
  %181 = phi i32 [ %173, %172 ], [ %176, %174 ]
  %182 = phi i64 [ %150, %172 ], [ %179, %174 ]
  %183 = mul i32 %151, 80
  %184 = udiv i32 %183, %181
  %185 = zext i32 %184 to i64
  %186 = add i64 %182, %185
  br label %187

187:                                              ; preds = %180, %167, %20
  %188 = phi i64 [ 0, %20 ], [ %186, %180 ], [ 0, %167 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #21
  ret i64 %188
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_calculate_bitrate(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_dfs_cac_cancel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.cfg80211_chan_def, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false), !annotation !29
  %3 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 66
  tail call void @mutex_lock(ptr noundef %3) #21
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %21, label %7

7:                                                ; preds = %18, %1
  %8 = phi ptr [ %19, %18 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %8, i32 0, i32 48
  %10 = call zeroext i1 @cancel_delayed_work(ptr noundef %9) #21
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %8, i32 0, i32 1, i32 36
  %12 = load i8, ptr %11, align 1, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %8, i32 0, i32 58, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef align 4 dereferenceable(28) %15, i32 28, i1 false)
  call void @ieee80211_vif_release_channel(ptr noundef %8) #21
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %8, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  call void @cfg80211_cac_event(ptr noundef %17, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 3264) #21
  br label %18

18:                                               ; preds = %14, %7
  %19 = load ptr, ptr %8, align 8
  %20 = icmp eq ptr %19, %4
  br i1 %20, label %21, label %7

21:                                               ; preds = %18, %1
  call void @mutex_unlock(ptr noundef %3) #21
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vif_release_channel(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_cac_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_dfs_radar_detected_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.cfg80211_chan_def, align 4
  %3 = alloca %struct.cfg80211_chan_def, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #21
  %4 = getelementptr i8, ptr %0, i32 -1384
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef align 4 dereferenceable(28) %4, i32 28, i1 false)
  %5 = getelementptr i8, ptr %0, i32 2996
  tail call void @mutex_lock(ptr noundef %5) #21
  %6 = getelementptr i8, ptr %0, i32 2988
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %22, label %9

9:                                                ; preds = %18, %1
  %10 = phi ptr [ %20, %18 ], [ %7, %1 ]
  %11 = phi i32 [ %19, %18 ], [ 0, %1 ]
  %12 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %10, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = add i32 %11, 1
  %17 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %10, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef align 4 dereferenceable(28) %17, i32 28, i1 false)
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i32 [ %11, %9 ], [ %16, %15 ]
  %20 = load ptr, ptr %10, align 4
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %22, label %9

22:                                               ; preds = %18, %1
  %23 = phi i32 [ 0, %1 ], [ %19, %18 ]
  tail call void @mutex_unlock(ptr noundef %5) #21
  %24 = getelementptr i8, ptr %0, i32 -1348
  %25 = load ptr, ptr %24, align 8
  tail call void @mutex_lock(ptr noundef %25) #21
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false) #21, !annotation !29
  %26 = getelementptr i8, ptr %0, i32 2732
  tail call void @mutex_lock(ptr noundef %26) #21
  %27 = getelementptr i8, ptr %0, i32 2676
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %44, label %30

30:                                               ; preds = %41, %22
  %31 = phi ptr [ %42, %41 ], [ %28, %22 ]
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %31, i32 0, i32 48
  %33 = call zeroext i1 @cancel_delayed_work(ptr noundef %32) #21
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %31, i32 0, i32 1, i32 36
  %35 = load i8, ptr %34, align 1, !range !10
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %31, i32 0, i32 58, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef align 4 dereferenceable(28) %38, i32 28, i1 false) #21
  call void @ieee80211_vif_release_channel(ptr noundef %31) #21
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %31, i32 0, i32 6
  %40 = load ptr, ptr %39, align 8
  call void @cfg80211_cac_event(ptr noundef %40, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 3264) #21
  br label %41

41:                                               ; preds = %37, %30
  %42 = load ptr, ptr %31, align 8
  %43 = icmp eq ptr %42, %27
  br i1 %43, label %44, label %30

44:                                               ; preds = %41, %22
  call void @mutex_unlock(ptr noundef %26) #21
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #21
  %45 = load ptr, ptr %24, align 8
  call void @mutex_unlock(ptr noundef %45) #21
  %46 = icmp sgt i32 %23, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3916, i32 noundef 9, ptr noundef null) #21
  br label %50

48:                                               ; preds = %44
  %49 = load ptr, ptr %24, align 8
  call void @__cfg80211_radar_event(ptr noundef %49, ptr noundef nonnull %3, i1 noundef zeroext false, i32 noundef 3264) #21
  br label %50

50:                                               ; preds = %48, %47
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_radar_detected(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_radar_detected, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #21
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !59
  %16 = tail call i32 @__traceiter_api_radar_detected(ptr noundef null, ptr noundef %0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !60
  br label %17

17:                                               ; preds = %15, %4, %1
  %18 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 38
  %19 = load ptr, ptr @system_wq, align 4
  %20 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %18) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_chandef_downgrade(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %34 [
    i32 1, label %4
    i32 2, label %5
    i32 3, label %10
    i32 4, label %21
    i32 5, label %23
    i32 7, label %38
    i32 8, label %38
    i32 9, label %38
    i32 10, label %38
    i32 11, label %38
    i32 12, label %38
    i32 6, label %38
  ]

4:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %41

5:                                                ; preds = %1
  store i32 1, ptr %2, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.ieee80211_channel, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  store i32 %8, ptr %9, align 4
  br label %41

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.ieee80211_channel, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 30
  %15 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = urem i32 %17, 40
  %19 = add i32 %13, 10
  %20 = sub i32 %19, %18
  store i32 %20, ptr %15, align 4
  store i32 2, ptr %2, align 4
  br label %41

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 3
  store i32 0, ptr %22, align 4
  store i32 3, ptr %2, align 4
  br label %41

23:                                               ; preds = %1
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr inbounds %struct.ieee80211_channel, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 70
  %28 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %27, %29
  %31 = urem i32 %30, 80
  %32 = add i32 %26, 30
  %33 = sub i32 %32, %31
  store i32 %33, ptr %28, align 4
  store i32 3, ptr %2, align 4
  br label %41

34:                                               ; preds = %1
  %35 = load i1, ptr @ieee80211_chandef_downgrade.__already_done, align 1
  br i1 %35, label %37, label %36, !prof !22

36:                                               ; preds = %34
  store i1 true, ptr @ieee80211_chandef_downgrade.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3974, i32 noundef 9, ptr noundef null) #21
  br label %37

37:                                               ; preds = %36, %34
  store i32 0, ptr %2, align 4
  br label %41

38:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %39 = load i1, ptr @ieee80211_chandef_downgrade.__already_done.9, align 1
  br i1 %39, label %41, label %40, !prof !22

40:                                               ; preds = %38
  store i1 true, ptr @ieee80211_chandef_downgrade.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3985, i32 noundef 9, ptr noundef null) #21
  br label %41

41:                                               ; preds = %40, %38, %37, %23, %21, %10, %5, %4
  %42 = phi i32 [ 2064, %37 ], [ 12288, %23 ], [ 12288, %21 ], [ 2048, %10 ], [ 3072, %5 ], [ 2064, %4 ], [ 2064, %40 ], [ 2064, %38 ]
  %43 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %0) #21
  %44 = load i1, ptr @ieee80211_chandef_downgrade.__already_done.10, align 1
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %47, label %46, !prof !22

46:                                               ; preds = %41
  store i1 true, ptr @ieee80211_chandef_downgrade.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3991, i32 noundef 9, ptr noundef null) #21
  br label %47

47:                                               ; preds = %46, %41
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ieee80211_smps_is_restrictive(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 0
  %4 = icmp eq i32 %1, 0
  %5 = or i1 %3, %4
  %6 = load i1, ptr @ieee80211_smps_is_restrictive.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %2
  store i1 true, ptr @ieee80211_smps_is_restrictive.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4004, i32 noundef 9, ptr noundef null) #21
  br label %10

10:                                               ; preds = %9, %2
  br i1 %5, label %17, label %11

11:                                               ; preds = %10
  switch i32 %0, label %16 [
    i32 2, label %17
    i32 3, label %12
    i32 1, label %14
  ]

12:                                               ; preds = %11
  %13 = icmp eq i32 %1, 2
  br label %17

14:                                               ; preds = %11
  %15 = icmp ne i32 %1, 1
  br label %17

16:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4015, i32 noundef 9, ptr noundef null) #21
  br label %17

17:                                               ; preds = %16, %14, %12, %11, %10
  %18 = phi i1 [ false, %16 ], [ %15, %14 ], [ %13, %12 ], [ false, %10 ], [ false, %11 ]
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_send_action_csa(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %4 = load i32, ptr %3, align 8
  switch i32 %4, label %109 [
    i32 1, label %5
    i32 7, label %5
  ]

5:                                                ; preds = %2, %2
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 41
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, 47
  %11 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %10, i32 noundef 2592) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %109, label %13

13:                                               ; preds = %5
  %14 = load i32, ptr %8, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %14
  store ptr %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 %14
  store ptr %20, ptr %18, align 8
  %21 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef 26) #21
  %22 = getelementptr inbounds i8, ptr %21, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(26) %22, i8 0, i32 24, i1 false) #21
  store i16 208, ptr %21, align 2
  %23 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %21, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %23, i8 -1, i32 6, i1 false) #21
  %24 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %21, i32 0, i32 3
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %24, ptr noundef align 8 dereferenceable(6) %25, i32 6, i1 false)
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57
  %27 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %21, i32 0, i32 4
  %28 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %26, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %27, ptr noundef align 2 dereferenceable(6) %28, i32 6, i1 false)
  %29 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %21, i32 0, i32 6
  store i8 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.anon.167, ptr %29, i32 0, i32 1
  store i8 4, ptr %30, align 1
  %31 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef 5) #21
  %32 = getelementptr i8, ptr %31, i32 1
  store i8 37, ptr %31, align 1
  %33 = getelementptr i8, ptr %31, i32 2
  store i8 3, ptr %32, align 1
  %34 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %1, i32 0, i32 8
  %35 = load i8, ptr %34, align 1, !range !10
  %36 = getelementptr i8, ptr %31, i32 3
  store i8 %35, ptr %33, align 1
  %37 = load ptr, ptr %1, align 4
  %38 = getelementptr inbounds %struct.ieee80211_channel, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, 1000
  %41 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %40) #21
  %42 = trunc i32 %41 to i8
  %43 = getelementptr i8, ptr %31, i32 4
  store i8 %42, ptr %36, align 1
  %44 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %1, i32 0, i32 9
  %45 = load i8, ptr %44, align 2
  %46 = getelementptr i8, ptr %31, i32 5
  store i8 %45, ptr %43, align 1
  %47 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %68

50:                                               ; preds = %13
  %51 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef 3) #21
  %52 = getelementptr i8, ptr %31, i32 6
  store i8 62, ptr %46, align 1
  %53 = getelementptr i8, ptr %31, i32 7
  store i8 1, ptr %52, align 1
  %54 = load i32, ptr %47, align 4
  switch i32 %54, label %62 [
    i32 0, label %63
    i32 1, label %63
    i32 2, label %55
  ]

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %1, align 4
  %59 = getelementptr inbounds %struct.ieee80211_channel, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp ugt i32 %57, %60
  br i1 %61, label %64, label %63

62:                                               ; preds = %50
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 778, i32 noundef 9, ptr noundef null) #21
  br label %63

63:                                               ; preds = %62, %55, %50, %50
  br label %64

64:                                               ; preds = %63, %55
  %65 = phi i8 [ 3, %63 ], [ 1, %55 ]
  %66 = getelementptr i8, ptr %31, i32 8
  store i8 %65, ptr %53, align 1
  %67 = load i32, ptr %47, align 4
  br label %68

68:                                               ; preds = %64, %13
  %69 = phi i32 [ %67, %64 ], [ %48, %13 ]
  %70 = phi ptr [ %66, %64 ], [ %46, %13 ]
  %71 = add i32 %69, -3
  %72 = icmp ult i32 %71, 3
  br i1 %72, label %73, label %101

73:                                               ; preds = %68
  %74 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef 5) #21
  %75 = getelementptr i8, ptr %70, i32 1
  store i8 -62, ptr %70, align 1
  %76 = getelementptr i8, ptr %70, i32 2
  store i8 3, ptr %75, align 1
  %77 = load i32, ptr %47, align 4
  %78 = add i32 %77, -3
  %79 = icmp ult i32 %78, 3
  %80 = trunc i32 %78 to i24
  %81 = shl i24 %80, 3
  %82 = lshr i24 131841, %81
  %83 = trunc i24 %82 to i8
  %84 = select i1 %79, i8 %83, i8 0
  store i8 %84, ptr %76, align 1
  %85 = getelementptr i8, ptr %70, i32 3
  %86 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = mul i32 %87, 1000
  %89 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %88) #21
  %90 = trunc i32 %89 to i8
  store i8 %90, ptr %85, align 1
  %91 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %1, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %73
  %95 = mul i32 %92, 1000
  %96 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %95) #21
  %97 = trunc i32 %96 to i8
  br label %98

98:                                               ; preds = %94, %73
  %99 = phi i8 [ %97, %94 ], [ 0, %73 ]
  %100 = getelementptr i8, ptr %70, i32 4
  store i8 %99, ptr %100, align 1
  br label %101

101:                                              ; preds = %98, %68
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %102 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 9
  %103 = load volatile ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %106, !prof !8

105:                                              ; preds = %101
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 2200, i32 noundef 9, ptr noundef null) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  tail call void @kfree_skb_reason(ptr noundef nonnull %11, i32 noundef 0) #21
  br label %109

106:                                              ; preds = %101
  %107 = load ptr, ptr %103, align 4
  %108 = load i32, ptr %107, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 7, i32 noundef %108) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !12
  br label %109

109:                                              ; preds = %106, %105, %5, %2
  %110 = phi i32 [ -95, %2 ], [ -12, %5 ], [ 0, %105 ], [ 0, %106 ]
  ret i32 %110
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ieee80211_cs_valid(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %0, i32 0, i32 2
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %0, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %0, i32 0, i32 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %15, %12
  %17 = icmp ugt i32 %16, %9
  br i1 %17, label %30, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %0, i32 0, i32 5
  %20 = load i8, ptr %19, align 1
  %21 = icmp ugt i8 %8, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %0, i32 0, i32 7
  %24 = load i8, ptr %23, align 1
  %25 = icmp ugt i8 %24, 7
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ieee80211_cipher_scheme, ptr %0, i32 0, i32 6
  %28 = load i8, ptr %27, align 2
  %29 = icmp ne i8 %28, 0
  br label %30

30:                                               ; preds = %26, %22, %18, %6, %3, %1
  %31 = phi i1 [ false, %22 ], [ false, %18 ], [ false, %6 ], [ false, %3 ], [ false, %1 ], [ %29, %26 ]
  ret i1 %31
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @ieee80211_cs_list_valid(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %43

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %43, label %13

6:                                                ; preds = %39
  %7 = add nuw nsw i32 %15, 1
  %8 = icmp slt i32 %7, %1
  %9 = icmp eq i32 %7, %1
  %10 = getelementptr %struct.ieee80211_cipher_scheme, ptr %0, i32 %7
  %11 = icmp eq ptr %10, null
  %12 = or i1 %9, %11
  br i1 %12, label %43, label %13

13:                                               ; preds = %6, %4
  %14 = phi ptr [ %10, %6 ], [ %0, %4 ]
  %15 = phi i32 [ %7, %6 ], [ 0, %4 ]
  %16 = phi i1 [ %8, %6 ], [ true, %4 ]
  %17 = load i32, ptr %14, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %13
  %20 = getelementptr %struct.ieee80211_cipher_scheme, ptr %0, i32 %15, i32 2
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = getelementptr %struct.ieee80211_cipher_scheme, ptr %0, i32 %15, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr %struct.ieee80211_cipher_scheme, ptr %0, i32 %15, i32 4
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = add nuw nsw i32 %28, %25
  %30 = icmp ugt i32 %29, %22
  br i1 %30, label %43, label %31

31:                                               ; preds = %19
  %32 = getelementptr %struct.ieee80211_cipher_scheme, ptr %0, i32 %15, i32 5
  %33 = load i8, ptr %32, align 1
  %34 = icmp ugt i8 %21, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = getelementptr %struct.ieee80211_cipher_scheme, ptr %0, i32 %15, i32 7
  %37 = load i8, ptr %36, align 1
  %38 = icmp ugt i8 %37, 7
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr %struct.ieee80211_cipher_scheme, ptr %0, i32 %15, i32 6
  %41 = load i8, ptr %40, align 2
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %6

43:                                               ; preds = %39, %35, %31, %19, %13, %6, %4, %2
  %44 = phi i1 [ false, %2 ], [ true, %4 ], [ %16, %39 ], [ %8, %6 ], [ %16, %35 ], [ %16, %31 ], [ %16, %19 ], [ %16, %13 ]
  %45 = xor i1 %44, true
  ret i1 %45
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @ieee80211_cs_get(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 28
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 27
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %15, %3
  %11 = phi i32 [ %16, %15 ], [ 0, %3 ]
  %12 = getelementptr %struct.ieee80211_cipher_scheme, ptr %5, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i32 %11, 1
  %17 = icmp eq i32 %16, %8
  br i1 %17, label %28, label %10

18:                                               ; preds = %10
  %19 = icmp eq ptr %12, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  %21 = getelementptr %struct.ieee80211_cipher_scheme, ptr %5, i32 %11, i32 1
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = shl nuw i32 1, %2
  %25 = and i32 %24, %23
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr null, ptr %12
  br label %28

28:                                               ; preds = %20, %18, %15, %3
  %29 = phi ptr [ null, %18 ], [ %27, %20 ], [ null, %3 ], [ null, %15 ]
  ret ptr %29
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ieee80211_cs_headroom(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.cfg80211_crypto_settings, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  %7 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 28
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 27
  %10 = load i8, ptr %9, align 2
  %11 = zext i8 %10 to i32
  br i1 %6, label %12, label %45

12:                                               ; preds = %3
  %13 = icmp eq i8 %10, 0
  %14 = shl nuw i32 1, %2
  br label %15

15:                                               ; preds = %41, %12
  %16 = phi i32 [ 0, %12 ], [ %43, %41 ]
  %17 = phi i32 [ 8, %12 ], [ %42, %41 ]
  %18 = getelementptr %struct.cfg80211_crypto_settings, ptr %1, i32 0, i32 3, i32 %16
  %19 = load i32, ptr %18, align 4
  br i1 %13, label %41, label %20

20:                                               ; preds = %25, %15
  %21 = phi i32 [ %26, %25 ], [ 0, %15 ]
  %22 = getelementptr %struct.ieee80211_cipher_scheme, ptr %8, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %19
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = add nuw nsw i32 %21, 1
  %27 = icmp eq i32 %26, %11
  br i1 %27, label %41, label %20

28:                                               ; preds = %20
  %29 = icmp eq ptr %22, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %28
  %31 = getelementptr %struct.ieee80211_cipher_scheme, ptr %8, i32 %21, i32 1
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = and i32 %14, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = getelementptr %struct.ieee80211_cipher_scheme, ptr %8, i32 %21, i32 2
  %38 = load i8, ptr %37, align 2
  %39 = zext i8 %38 to i32
  %40 = tail call i32 @llvm.smax.i32(i32 %17, i32 %39)
  br label %41

41:                                               ; preds = %36, %30, %28, %25, %15
  %42 = phi i32 [ %40, %36 ], [ %17, %28 ], [ %17, %15 ], [ %17, %30 ], [ %17, %25 ]
  %43 = add nuw nsw i32 %16, 1
  %44 = icmp eq i32 %43, %5
  br i1 %44, label %45, label %15

45:                                               ; preds = %41, %3
  %46 = phi i32 [ 8, %3 ], [ %42, %41 ]
  %47 = getelementptr inbounds %struct.cfg80211_crypto_settings, ptr %1, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i8 %10, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %55, %45
  %51 = phi i32 [ %56, %55 ], [ 0, %45 ]
  %52 = getelementptr %struct.ieee80211_cipher_scheme, ptr %8, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, %48
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = add nuw nsw i32 %51, 1
  %57 = icmp eq i32 %56, %11
  br i1 %57, label %72, label %50

58:                                               ; preds = %50
  %59 = icmp eq ptr %52, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %58
  %61 = getelementptr %struct.ieee80211_cipher_scheme, ptr %8, i32 %51, i32 1
  %62 = load i16, ptr %61, align 4
  %63 = zext i16 %62 to i32
  %64 = shl nuw i32 1, %2
  %65 = and i32 %64, %63
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  %68 = getelementptr %struct.ieee80211_cipher_scheme, ptr %8, i32 %51, i32 2
  %69 = load i8, ptr %68, align 2
  %70 = zext i8 %69 to i32
  %71 = tail call i32 @llvm.smax.i32(i32 %46, i32 %70)
  br label %72

72:                                               ; preds = %67, %60, %58, %55, %45
  %73 = phi i32 [ %71, %67 ], [ %46, %58 ], [ %46, %45 ], [ %46, %60 ], [ %46, %55 ]
  ret i32 %73
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_update_p2p_noa(ptr nocapture noundef %0, i32 noundef %1) #13 {
  %3 = getelementptr inbounds %struct.ieee80211_noa_data, ptr %0, i32 0, i32 2
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %struct.ieee80211_noa_data, ptr %0, i32 0, i32 1
  store i8 0, ptr %4, align 4
  %5 = xor i32 %1, -1
  br label %6

6:                                                ; preds = %57, %2
  %7 = phi i32 [ 0, %2 ], [ %59, %57 ]
  %8 = phi i32 [ 2147483647, %2 ], [ %58, %57 ]
  %9 = getelementptr %struct.ieee80211_noa_data, ptr %0, i32 0, i32 3, i32 %7
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %57, label %12

12:                                               ; preds = %6
  %13 = getelementptr %struct.ieee80211_noa_data, ptr %0, i32 0, i32 4, i32 %7
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.ieee80211_noa_data, ptr %0, i32 0, i32 4, i32 %7, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = add i32 %17, %5
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %46, label %20

20:                                               ; preds = %12
  %21 = zext i8 %10 to i32
  %22 = icmp eq i8 %10, 1
  br i1 %22, label %46, label %23

23:                                               ; preds = %20
  %24 = getelementptr %struct.ieee80211_noa_data, ptr %0, i32 0, i32 4, i32 %7, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %23
  %28 = sub i32 %1, %17
  %29 = add i32 %28, %25
  %30 = udiv i32 %29, %25
  %31 = icmp eq i8 %10, -1
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = icmp slt i32 %30, %21
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  store i8 0, ptr %9, align 1
  %35 = load i32, ptr %13, align 4
  br label %46

36:                                               ; preds = %32
  %37 = trunc i32 %30 to i8
  %38 = sub i8 %10, %37
  store i8 %38, ptr %9, align 1
  %39 = load i32, ptr %24, align 4
  %40 = load i32, ptr %13, align 4
  br label %41

41:                                               ; preds = %36, %27
  %42 = phi i32 [ %40, %36 ], [ %14, %27 ]
  %43 = phi i32 [ %39, %36 ], [ %25, %27 ]
  %44 = mul i32 %43, %30
  %45 = add i32 %44, %42
  store i32 %45, ptr %13, align 4
  br label %46

46:                                               ; preds = %41, %34, %23, %20, %12
  %47 = phi i32 [ %14, %12 ], [ %14, %20 ], [ %14, %23 ], [ %35, %34 ], [ %45, %41 ]
  %48 = sub i32 %47, %1
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = shl nuw nsw i32 1, %7
  %52 = load i8, ptr %3, align 1
  %53 = trunc i32 %51 to i8
  %54 = or i8 %52, %53
  store i8 %54, ptr %3, align 1
  br label %55

55:                                               ; preds = %50, %46
  %56 = tail call i32 @llvm.umin.i32(i32 %8, i32 %48)
  store i8 1, ptr %4, align 4
  br label %57

57:                                               ; preds = %55, %6
  %58 = phi i32 [ %56, %55 ], [ %8, %6 ]
  %59 = add nuw nsw i32 %7, 1
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %6

61:                                               ; preds = %57
  %62 = load i8, ptr %3, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %182, label %64

64:                                               ; preds = %114, %61
  %65 = phi i32 [ %115, %114 ], [ 0, %61 ]
  %66 = phi i32 [ %116, %114 ], [ 0, %61 ]
  %67 = getelementptr %struct.ieee80211_noa_data, ptr %0, i32 0, i32 3, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %114, label %70

70:                                               ; preds = %64
  %71 = add i32 %65, %1
  %72 = getelementptr %struct.ieee80211_noa_data, ptr %0, i32 0, i32 4, i32 %66
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr %struct.ieee80211_noa_data, ptr %0, i32 0, i32 4, i32 %66, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, %73
  %77 = xor i32 %71, -1
  %78 = add i32 %76, %77
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %106, label %80

80:                                               ; preds = %70
  %81 = zext i8 %68 to i32
  %82 = icmp eq i8 %68, 1
  br i1 %82, label %106, label %83

83:                                               ; preds = %80
  %84 = getelementptr %struct.ieee80211_noa_data, ptr %0, i32 0, i32 4, i32 %66, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %106, label %87

87:                                               ; preds = %83
  %88 = sub i32 %71, %76
  %89 = add i32 %88, %85
  %90 = udiv i32 %89, %85
  %91 = icmp eq i8 %68, -1
  br i1 %91, label %101, label %92

92:                                               ; preds = %87
  %93 = icmp slt i32 %90, %81
  br i1 %93, label %96, label %94

94:                                               ; preds = %92
  store i8 0, ptr %67, align 1
  %95 = load i32, ptr %72, align 4
  br label %106

96:                                               ; preds = %92
  %97 = trunc i32 %90 to i8
  %98 = sub i8 %68, %97
  store i8 %98, ptr %67, align 1
  %99 = load i32, ptr %84, align 4
  %100 = load i32, ptr %72, align 4
  br label %101

101:                                              ; preds = %96, %87
  %102 = phi i32 [ %100, %96 ], [ %73, %87 ]
  %103 = phi i32 [ %99, %96 ], [ %85, %87 ]
  %104 = mul i32 %103, %90
  %105 = add i32 %104, %102
  store i32 %105, ptr %72, align 4
  br label %106

106:                                              ; preds = %101, %94, %83, %80, %70
  %107 = phi i32 [ %95, %94 ], [ %105, %101 ], [ %73, %70 ], [ %73, %80 ], [ %73, %83 ]
  %108 = sub i32 %107, %1
  %109 = icmp sgt i32 %108, %65
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i32, ptr %74, align 4
  %112 = add i32 %111, %108
  %113 = tail call i32 @llvm.smax.i32(i32 %112, i32 %65) #21
  br label %114

114:                                              ; preds = %110, %106, %64
  %115 = phi i32 [ %65, %64 ], [ %65, %106 ], [ %113, %110 ]
  %116 = add nuw nsw i32 %66, 1
  %117 = icmp eq i32 %116, 4
  br i1 %117, label %118, label %64

118:                                              ; preds = %178, %114
  %119 = phi i32 [ %174, %178 ], [ %115, %114 ]
  %120 = phi i32 [ %179, %178 ], [ 0, %114 ]
  br label %121

121:                                              ; preds = %173, %118
  %122 = phi i32 [ %119, %118 ], [ %174, %173 ]
  %123 = phi i32 [ 0, %118 ], [ %176, %173 ]
  %124 = phi i1 [ false, %118 ], [ %175, %173 ]
  %125 = getelementptr %struct.ieee80211_noa_data, ptr %0, i32 0, i32 3, i32 %123
  %126 = load i8, ptr %125, align 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %173, label %128

128:                                              ; preds = %121
  %129 = add i32 %122, %1
  %130 = getelementptr %struct.ieee80211_noa_data, ptr %0, i32 0, i32 4, i32 %123
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr %struct.ieee80211_noa_data, ptr %0, i32 0, i32 4, i32 %123, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, %131
  %135 = xor i32 %129, -1
  %136 = add i32 %134, %135
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %164, label %138

138:                                              ; preds = %128
  %139 = zext i8 %126 to i32
  %140 = icmp eq i8 %126, 1
  br i1 %140, label %164, label %141

141:                                              ; preds = %138
  %142 = getelementptr %struct.ieee80211_noa_data, ptr %0, i32 0, i32 4, i32 %123, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %164, label %145

145:                                              ; preds = %141
  %146 = sub i32 %129, %134
  %147 = add i32 %146, %143
  %148 = udiv i32 %147, %143
  %149 = icmp eq i8 %126, -1
  br i1 %149, label %159, label %150

150:                                              ; preds = %145
  %151 = icmp slt i32 %148, %139
  br i1 %151, label %154, label %152

152:                                              ; preds = %150
  store i8 0, ptr %125, align 1
  %153 = load i32, ptr %130, align 4
  br label %164

154:                                              ; preds = %150
  %155 = trunc i32 %148 to i8
  %156 = sub i8 %126, %155
  store i8 %156, ptr %125, align 1
  %157 = load i32, ptr %142, align 4
  %158 = load i32, ptr %130, align 4
  br label %159

159:                                              ; preds = %154, %145
  %160 = phi i32 [ %158, %154 ], [ %131, %145 ]
  %161 = phi i32 [ %157, %154 ], [ %143, %145 ]
  %162 = mul i32 %161, %148
  %163 = add i32 %162, %160
  store i32 %163, ptr %130, align 4
  br label %164

164:                                              ; preds = %159, %152, %141, %138, %128
  %165 = phi i32 [ %153, %152 ], [ %163, %159 ], [ %131, %128 ], [ %131, %138 ], [ %131, %141 ]
  %166 = phi i1 [ %124, %152 ], [ true, %159 ], [ %124, %128 ], [ %124, %138 ], [ %124, %141 ]
  %167 = sub i32 %165, %1
  %168 = icmp sgt i32 %167, %122
  br i1 %168, label %173, label %169

169:                                              ; preds = %164
  %170 = load i32, ptr %132, align 4
  %171 = add i32 %170, %167
  %172 = tail call i32 @llvm.smax.i32(i32 %171, i32 %122) #21
  br label %173

173:                                              ; preds = %169, %164, %121
  %174 = phi i32 [ %122, %121 ], [ %122, %164 ], [ %172, %169 ]
  %175 = phi i1 [ %124, %121 ], [ %166, %164 ], [ %166, %169 ]
  %176 = add nuw nsw i32 %123, 1
  %177 = icmp eq i32 %176, 4
  br i1 %177, label %178, label %121

178:                                              ; preds = %173
  %179 = add nuw nsw i32 %120, 1
  %180 = icmp ult i32 %120, 4
  %181 = select i1 %175, i1 %180, i1 false
  br i1 %181, label %118, label %182

182:                                              ; preds = %178, %61
  %183 = phi i32 [ %58, %61 ], [ %174, %178 ]
  %184 = add i32 %183, %1
  store i32 %184, ptr %0, align 4
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_parse_p2p_noa(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #13 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(60) %1, i8 0, i32 60, i1 false)
  %4 = xor i32 %2, -1
  br label %5

5:                                                ; preds = %58, %3
  %6 = phi i32 [ 0, %3 ], [ %60, %58 ]
  %7 = phi i32 [ 0, %3 ], [ %59, %58 ]
  %8 = getelementptr %struct.ieee80211_p2p_noa_attr, ptr %0, i32 0, i32 2, i32 %6
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %58, label %11

11:                                               ; preds = %5
  %12 = getelementptr %struct.ieee80211_p2p_noa_attr, ptr %0, i32 0, i32 2, i32 %6, i32 1
  %13 = load i32, ptr %12, align 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %58, label %15

15:                                               ; preds = %11
  %16 = getelementptr %struct.ieee80211_noa_data, ptr %1, i32 0, i32 3, i32 %6
  store i8 %9, ptr %16, align 1
  %17 = getelementptr %struct.ieee80211_p2p_noa_attr, ptr %0, i32 0, i32 2, i32 %6, i32 3
  %18 = load i32, ptr %17, align 1
  %19 = getelementptr %struct.ieee80211_noa_data, ptr %1, i32 0, i32 4, i32 %6
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %12, align 1
  %21 = getelementptr %struct.ieee80211_noa_data, ptr %1, i32 0, i32 4, i32 %6, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr %struct.ieee80211_p2p_noa_attr, ptr %0, i32 0, i32 2, i32 %6, i32 2
  %23 = load i32, ptr %22, align 1
  %24 = getelementptr %struct.ieee80211_noa_data, ptr %1, i32 0, i32 4, i32 %6, i32 2
  store i32 %23, ptr %24, align 4
  %25 = load i8, ptr %16, align 1
  %26 = icmp ugt i8 %25, 1
  %27 = icmp ult i32 %23, %20
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %58, label %29

29:                                               ; preds = %15
  %30 = add i32 %20, %18
  %31 = add i32 %30, %4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %29
  %34 = zext i8 %25 to i32
  %35 = icmp eq i8 %25, 1
  %36 = icmp eq i32 %23, 0
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %56, label %38

38:                                               ; preds = %33
  %39 = sub i32 %2, %30
  %40 = add i32 %39, %23
  %41 = udiv i32 %40, %23
  %42 = icmp eq i8 %25, -1
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = icmp slt i32 %41, %34
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  store i8 0, ptr %16, align 1
  br label %56

46:                                               ; preds = %43
  %47 = trunc i32 %41 to i8
  %48 = sub i8 %25, %47
  store i8 %48, ptr %16, align 1
  %49 = load i32, ptr %24, align 4
  %50 = load i32, ptr %19, align 4
  br label %51

51:                                               ; preds = %46, %38
  %52 = phi i32 [ %50, %46 ], [ %18, %38 ]
  %53 = phi i32 [ %49, %46 ], [ %23, %38 ]
  %54 = mul i32 %53, %41
  %55 = add i32 %54, %52
  store i32 %55, ptr %19, align 4
  br label %56

56:                                               ; preds = %51, %45, %33, %29
  %57 = add i32 %7, 1
  br label %58

58:                                               ; preds = %56, %15, %11, %5
  %59 = phi i32 [ %57, %56 ], [ %7, %11 ], [ %7, %5 ], [ %7, %15 ]
  %60 = add nuw nsw i32 %6, 1
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %5

62:                                               ; preds = %58
  %63 = icmp eq i32 %59, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %62
  tail call void @ieee80211_update_p2p_noa(ptr noundef %1, i32 noundef %2)
  br label %65

65:                                               ; preds = %64, %62
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_recalc_dtim(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @drv_get_tsf(ptr noundef %0, ptr noundef %1) #21
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 1, i32 19
  %5 = load i16, ptr %4, align 2
  %6 = shl i16 %5, 10
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58, i32 1, i32 18
  %8 = load i8, ptr %7, align 8
  %9 = icmp ne i64 %3, -1
  %10 = icmp ne i16 %6, 0
  %11 = select i1 %9, i1 %10, i1 false
  %12 = icmp ne i8 %8, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %53

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 58
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, -3
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %53

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 49
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %53, label %23

23:                                               ; preds = %19
  %24 = zext i16 %6 to i32
  %25 = icmp ult i64 %3, 4294967296
  br i1 %25, label %26, label %30, !prof !22

26:                                               ; preds = %23
  %27 = trunc i64 %3 to i32
  %28 = udiv i32 %27, %24
  %29 = zext i32 %28 to i64
  br label %33

30:                                               ; preds = %23
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %3) #26, !srcloc !61
  %32 = extractvalue { i64, i64 } %31, 1
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i64 [ %29, %26 ], [ %32, %30 ]
  %35 = zext i8 %8 to i32
  %36 = icmp ult i64 %34, 4294967296
  br i1 %36, label %37, label %40, !prof !22

37:                                               ; preds = %33
  %38 = trunc i64 %34 to i32
  %39 = urem i32 %38, %35
  br label %45

40:                                               ; preds = %33
  %41 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %34) #26, !srcloc !61
  %42 = extractvalue { i64, i64 } %41, 0
  %43 = lshr i64 %42, 32
  %44 = trunc i64 %43 to i32
  br label %45

45:                                               ; preds = %40, %37
  %46 = phi i32 [ %39, %37 ], [ %44, %40 ]
  %47 = trunc i32 %46 to i8
  %48 = icmp eq i8 %47, 0
  %49 = and i32 %46, 255
  %50 = sub nsw i32 %35, %49
  %51 = select i1 %48, i32 0, i32 %50
  %52 = getelementptr inbounds %struct.ieee80211_if_ap, ptr %21, i32 0, i32 6, i32 3
  store i32 %51, ptr %52, align 4
  br label %53

53:                                               ; preds = %45, %19, %14, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drv_get_tsf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_check_combinations(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.iface_combination_params, align 4
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  %10 = getelementptr inbounds %struct.iface_combination_params, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  store i8 %3, ptr %10, align 4
  %11 = zext i8 %3 to i32
  %12 = tail call i32 @__sw_hweight32(i32 noundef %11) #21
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4409, i32 noundef 9, ptr noundef null) #21
  br label %114

15:                                               ; preds = %4
  %16 = icmp ne ptr %1, null
  %17 = icmp eq i32 %2, 0
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load ptr, ptr %1, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4413, i32 noundef 9, ptr noundef null) #21
  br label %114

23:                                               ; preds = %19, %15
  %24 = icmp ugt i32 %9, 12
  br i1 %24, label %25, label %26, !prof !8

25:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4416, i32 noundef 9, ptr noundef null) #21
  br label %114

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %28 = load i32, ptr %27, align 8
  switch i32 %28, label %34 [
    i32 3, label %29
    i32 7, label %29
  ]

29:                                               ; preds = %26, %26
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58, i32 1, i32 19
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.iface_combination_params, ptr %5, i32 0, i32 3
  store i32 %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %29, %26
  %35 = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = tail call zeroext i1 @cfg80211_iftype_allowed(ptr noundef %36, i32 noundef %9, i1 noundef zeroext false, i8 noundef zeroext 1) #21
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = icmp eq i8 %3, 0
  %40 = select i1 %39, i32 0, i32 -22
  br label %114

41:                                               ; preds = %34
  br i1 %16, label %42, label %43

42:                                               ; preds = %41
  store i32 1, ptr %5, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = icmp eq i32 %9, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = getelementptr %struct.iface_combination_params, ptr %5, i32 0, i32 2, i32 %9
  store i32 1, ptr %46, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 88
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %77, label %51

51:                                               ; preds = %74, %47
  %52 = phi ptr [ %75, %74 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %52, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %74, label %56

56:                                               ; preds = %51
  %57 = tail call fastcc zeroext i8 @ieee80211_chanctx_radar_detect(ptr noundef %52)
  %58 = load i8, ptr %10, align 4
  %59 = or i8 %58, %57
  store i8 %59, ptr %10, align 4
  %60 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %52, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, ptr %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %5, align 4
  br label %74

66:                                               ; preds = %56
  br i1 %18, label %67, label %71

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %52, i32 0, i32 8
  %69 = tail call ptr @cfg80211_chandef_compatible(ptr noundef nonnull %1, ptr noundef %68) #21
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %67, %66
  %72 = load i32, ptr %5, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %5, align 4
  br label %74

74:                                               ; preds = %71, %67, %63, %51
  %75 = load ptr, ptr %52, align 4
  %76 = icmp eq ptr %75, %48
  br i1 %76, label %77, label %51

77:                                               ; preds = %74, %47
  %78 = getelementptr inbounds %struct.ieee80211_local, ptr %7, i32 0, i32 62
  %79 = load volatile ptr, ptr %78, align 8
  %80 = icmp eq ptr %79, %78
  br i1 %80, label %105, label %81

81:                                               ; preds = %101, %77
  %82 = phi ptr [ %103, %101 ], [ %79, %77 ]
  %83 = phi i32 [ %102, %101 ], [ 1, %77 ]
  %84 = icmp eq ptr %82, %0
  br i1 %84, label %101, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %82, i32 0, i32 9
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr %35, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %82, i32 0, i32 1, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = tail call zeroext i1 @cfg80211_iftype_allowed(ptr noundef %91, i32 noundef %93, i1 noundef zeroext false, i8 noundef zeroext 1) #21
  br i1 %94, label %101, label %95

95:                                               ; preds = %90
  %96 = load i32, ptr %92, align 4
  %97 = getelementptr %struct.iface_combination_params, ptr %5, i32 0, i32 2, i32 %96
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %97, align 4
  %100 = add i32 %83, 1
  br label %101

101:                                              ; preds = %95, %90, %85, %81
  %102 = phi i32 [ %100, %95 ], [ %83, %90 ], [ %83, %85 ], [ %83, %81 ]
  %103 = load volatile ptr, ptr %82, align 8
  %104 = icmp eq ptr %103, %78
  br i1 %104, label %105, label %81

105:                                              ; preds = %101, %77
  %106 = phi i32 [ 1, %77 ], [ %102, %101 ]
  %107 = icmp ne i32 %106, 1
  %108 = load i8, ptr %10, align 4
  %109 = icmp ne i8 %108, 0
  %110 = select i1 %107, i1 true, i1 %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load ptr, ptr %35, align 8
  %113 = call i32 @cfg80211_check_combinations(ptr noundef %112, ptr noundef nonnull %5) #21
  br label %114

114:                                              ; preds = %111, %105, %38, %25, %22, %14
  %115 = phi i32 [ -22, %14 ], [ -22, %22 ], [ -22, %25 ], [ %113, %111 ], [ %40, %38 ], [ 0, %105 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  ret i32 %115
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_iftype_allowed(ptr noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ieee80211_chanctx_radar_detect(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4372, i32 noundef 9, ptr noundef null) #21
  br label %54

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %26, label %10

10:                                               ; preds = %22, %6
  %11 = phi ptr [ %24, %22 ], [ %8, %6 ]
  %12 = phi i8 [ %23, %22 ], [ 0, %6 ]
  %13 = getelementptr i8, ptr %11, i32 40
  %14 = load i8, ptr %13, align 8, !range !10
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %11, i32 16
  %18 = load i32, ptr %17, align 4
  %19 = shl nuw i32 1, %18
  %20 = trunc i32 %19 to i8
  %21 = or i8 %12, %20
  br label %22

22:                                               ; preds = %16, %10
  %23 = phi i8 [ %21, %16 ], [ %12, %10 ]
  %24 = load ptr, ptr %11, align 4
  %25 = icmp eq ptr %24, %7
  br i1 %25, label %26, label %10

26:                                               ; preds = %22, %6
  %27 = phi i8 [ 0, %6 ], [ %23, %22 ]
  %28 = icmp eq i32 %3, 2
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %0, i32 0, i32 2
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %34, label %33, !prof !22

33:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4384, i32 noundef 9, ptr noundef null) #21
  br label %34

34:                                               ; preds = %33, %29, %26
  %35 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %54, label %38

38:                                               ; preds = %50, %34
  %39 = phi ptr [ %52, %50 ], [ %36, %34 ]
  %40 = phi i8 [ %51, %50 ], [ %27, %34 ]
  %41 = getelementptr i8, ptr %39, i32 132
  %42 = load i8, ptr %41, align 4, !range !10
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = getelementptr i8, ptr %39, i32 1376
  %46 = load i32, ptr %45, align 4
  %47 = shl nuw i32 1, %46
  %48 = trunc i32 %47 to i8
  %49 = or i8 %40, %48
  br label %50

50:                                               ; preds = %44, %38
  %51 = phi i8 [ %49, %44 ], [ %40, %38 ]
  %52 = load ptr, ptr %39, align 4
  %53 = icmp eq ptr %52, %35
  br i1 %53, label %54, label %38

54:                                               ; preds = %50, %34, %5
  %55 = phi i8 [ 0, %5 ], [ %27, %34 ], [ %51, %50 ]
  ret i8 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_chandef_compatible(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_check_combinations(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_max_num_channels(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iface_combination_params, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 1, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false)
  %4 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 88
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.iface_combination_params, ptr %3, i32 0, i32 1
  br label %9

9:                                                ; preds = %20, %7
  %10 = phi i8 [ 0, %7 ], [ %21, %20 ]
  %11 = phi i32 [ 0, %7 ], [ %22, %20 ]
  %12 = phi ptr [ %5, %7 ], [ %23, %20 ]
  %13 = getelementptr inbounds %struct.ieee80211_chanctx, ptr %12, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = add i32 %11, 1
  store i32 %17, ptr %3, align 4
  %18 = tail call fastcc zeroext i8 @ieee80211_chanctx_radar_detect(ptr noundef %12)
  %19 = or i8 %10, %18
  store i8 %19, ptr %8, align 4
  br label %20

20:                                               ; preds = %16, %9
  %21 = phi i8 [ %10, %9 ], [ %19, %16 ]
  %22 = phi i32 [ %11, %9 ], [ %17, %16 ]
  %23 = load ptr, ptr %12, align 4
  %24 = icmp eq ptr %23, %4
  br i1 %24, label %25, label %9

25:                                               ; preds = %20, %1
  %26 = getelementptr inbounds %struct.ieee80211_local, ptr %0, i32 0, i32 62
  %27 = load volatile ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %38, label %29

29:                                               ; preds = %29, %25
  %30 = phi ptr [ %36, %29 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %30, i32 0, i32 1, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.iface_combination_params, ptr %3, i32 0, i32 2, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = load volatile ptr, ptr %30, align 8
  %37 = icmp eq ptr %36, %26
  br i1 %37, label %38, label %29

38:                                               ; preds = %29, %25
  %39 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = call i32 @cfg80211_iter_combinations(ptr noundef %40, ptr noundef nonnull %3, ptr noundef nonnull @ieee80211_iter_max_chans, ptr noundef nonnull %2) #21
  %42 = icmp slt i32 %41, 0
  %43 = load i32, ptr %2, align 4
  %44 = select i1 %42, i32 %41, i32 %43
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_iter_combinations(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ieee80211_iter_max_chans(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #10 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.ieee80211_iface_combination, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %3, i32 %5)
  store i32 %6, ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_add_s1g_capab_ie(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 58
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %8, label %7, !prof !22

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4530, i32 noundef 9, ptr noundef null) #21
  br label %179

8:                                                ; preds = %3
  %9 = load i8, ptr %1, align 1, !range !10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %179, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ieee80211_sta_s1g_cap, ptr %1, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr inbounds %struct.ieee80211_sta_s1g_cap, ptr %1, i32 0, i32 1, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds %struct.ieee80211_sta_s1g_cap, ptr %1, i32 0, i32 1, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr inbounds %struct.ieee80211_sta_s1g_cap, ptr %1, i32 0, i32 1, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr inbounds %struct.ieee80211_sta_s1g_cap, ptr %1, i32 0, i32 1, i32 4
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds %struct.ieee80211_sta_s1g_cap, ptr %1, i32 0, i32 1, i32 5
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.ieee80211_sta_s1g_cap, ptr %1, i32 0, i32 1, i32 6
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds %struct.ieee80211_sta_s1g_cap, ptr %1, i32 0, i32 1, i32 7
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr inbounds %struct.ieee80211_sta_s1g_cap, ptr %1, i32 0, i32 1, i32 8
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr inbounds %struct.ieee80211_sta_s1g_cap, ptr %1, i32 0, i32 1, i32 9
  %31 = load i8, ptr %30, align 1
  %32 = getelementptr inbounds %struct.ieee80211_sta_s1g_cap, ptr %1, i32 0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr inbounds %struct.ieee80211_sta_s1g_cap, ptr %1, i32 0, i32 2, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = getelementptr inbounds %struct.ieee80211_sta_s1g_cap, ptr %1, i32 0, i32 2, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = getelementptr inbounds %struct.ieee80211_sta_s1g_cap, ptr %1, i32 0, i32 2, i32 3
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr inbounds %struct.ieee80211_sta_s1g_cap, ptr %1, i32 0, i32 2, i32 4
  %41 = load i8, ptr %40, align 1
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 31
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 16
  %44 = load i8, ptr %42, align 1
  %45 = xor i8 %44, -1
  %46 = and i8 %13, %45
  %47 = load i8, ptr %43, align 1
  %48 = and i8 %47, %44
  %49 = or i8 %48, %46
  %50 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 32
  %51 = load i8, ptr %50, align 1
  %52 = xor i8 %51, -1
  %53 = and i8 %15, %52
  %54 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 17
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, %51
  %57 = or i8 %56, %53
  %58 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 33
  %59 = load i8, ptr %58, align 1
  %60 = xor i8 %59, -1
  %61 = and i8 %17, %60
  %62 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 18
  %63 = load i8, ptr %62, align 1
  %64 = and i8 %63, %59
  %65 = or i8 %64, %61
  %66 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 34
  %67 = load i8, ptr %66, align 1
  %68 = xor i8 %67, -1
  %69 = and i8 %19, %68
  %70 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 19
  %71 = load i8, ptr %70, align 1
  %72 = and i8 %71, %67
  %73 = or i8 %72, %69
  %74 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 35
  %75 = load i8, ptr %74, align 1
  %76 = xor i8 %75, -1
  %77 = and i8 %21, %76
  %78 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 20
  %79 = load i8, ptr %78, align 1
  %80 = and i8 %79, %75
  %81 = or i8 %80, %77
  %82 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 36
  %83 = load i8, ptr %82, align 1
  %84 = xor i8 %83, -1
  %85 = and i8 %23, %84
  %86 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 21
  %87 = load i8, ptr %86, align 1
  %88 = and i8 %87, %83
  %89 = or i8 %88, %85
  %90 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 37
  %91 = load i8, ptr %90, align 1
  %92 = xor i8 %91, -1
  %93 = and i8 %25, %92
  %94 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 22
  %95 = load i8, ptr %94, align 1
  %96 = and i8 %95, %91
  %97 = or i8 %96, %93
  %98 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 38
  %99 = load i8, ptr %98, align 1
  %100 = xor i8 %99, -1
  %101 = and i8 %27, %100
  %102 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 23
  %103 = load i8, ptr %102, align 1
  %104 = and i8 %103, %99
  %105 = or i8 %104, %101
  %106 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 39
  %107 = load i8, ptr %106, align 1
  %108 = xor i8 %107, -1
  %109 = and i8 %29, %108
  %110 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 24
  %111 = load i8, ptr %110, align 1
  %112 = and i8 %111, %107
  %113 = or i8 %112, %109
  %114 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 40
  %115 = load i8, ptr %114, align 1
  %116 = xor i8 %115, -1
  %117 = and i8 %31, %116
  %118 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 25
  %119 = load i8, ptr %118, align 1
  %120 = and i8 %119, %115
  %121 = or i8 %120, %117
  %122 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 41
  %123 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 26
  %124 = load i8, ptr %122, align 1
  %125 = xor i8 %124, -1
  %126 = and i8 %33, %125
  %127 = load i8, ptr %123, align 1
  %128 = and i8 %127, %124
  %129 = or i8 %128, %126
  %130 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 42
  %131 = load i8, ptr %130, align 1
  %132 = xor i8 %131, -1
  %133 = and i8 %35, %132
  %134 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 27
  %135 = load i8, ptr %134, align 1
  %136 = and i8 %135, %131
  %137 = or i8 %136, %133
  %138 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 43
  %139 = load i8, ptr %138, align 1
  %140 = xor i8 %139, -1
  %141 = and i8 %37, %140
  %142 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 28
  %143 = load i8, ptr %142, align 1
  %144 = and i8 %143, %139
  %145 = or i8 %144, %141
  %146 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 44
  %147 = load i8, ptr %146, align 1
  %148 = xor i8 %147, -1
  %149 = and i8 %39, %148
  %150 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 29
  %151 = load i8, ptr %150, align 1
  %152 = and i8 %151, %147
  %153 = or i8 %152, %149
  %154 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 45
  %155 = load i8, ptr %154, align 1
  %156 = xor i8 %155, -1
  %157 = and i8 %41, %156
  %158 = getelementptr %struct.ieee80211_sub_if_data, ptr %0, i32 0, i32 57, i32 0, i32 40, i32 0, i32 30
  %159 = load i8, ptr %158, align 1
  %160 = and i8 %159, %155
  %161 = or i8 %160, %157
  %162 = tail call ptr @skb_put(ptr noundef %2, i32 noundef 17) #21
  %163 = getelementptr i8, ptr %162, i32 1
  store i8 -39, ptr %162, align 1
  %164 = getelementptr i8, ptr %162, i32 2
  store i8 15, ptr %163, align 1
  store i8 %49, ptr %164, align 1
  %165 = getelementptr i8, ptr %162, i32 3
  store i8 %57, ptr %165, align 1
  %166 = getelementptr i8, ptr %162, i32 4
  store i8 %65, ptr %166, align 1
  %167 = getelementptr i8, ptr %162, i32 5
  store i8 %73, ptr %167, align 1
  %168 = getelementptr i8, ptr %162, i32 6
  store i8 %81, ptr %168, align 1
  %169 = getelementptr i8, ptr %162, i32 7
  store i8 %89, ptr %169, align 1
  %170 = getelementptr i8, ptr %162, i32 8
  store i8 %97, ptr %170, align 1
  %171 = getelementptr i8, ptr %162, i32 9
  store i8 %105, ptr %171, align 1
  %172 = getelementptr i8, ptr %162, i32 10
  store i8 %113, ptr %172, align 1
  %173 = getelementptr i8, ptr %162, i32 11
  store i8 %121, ptr %173, align 1
  %174 = getelementptr i8, ptr %162, i32 12
  store i8 %129, ptr %174, align 1
  %175 = getelementptr i8, ptr %162, i32 13
  store i8 %137, ptr %175, align 1
  %176 = getelementptr i8, ptr %162, i32 14
  store i8 %145, ptr %176, align 1
  %177 = getelementptr i8, ptr %162, i32 15
  store i8 %153, ptr %177, align 1
  %178 = getelementptr i8, ptr %162, i32 16
  store i8 %161, ptr %178, align 1
  br label %179

179:                                              ; preds = %11, %8, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_add_aid_request_ie(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @skb_put(ptr noundef %1, i32 noundef 3) #21
  %4 = getelementptr i8, ptr %3, i32 1
  store i8 -46, ptr %3, align 1
  %5 = getelementptr i8, ptr %3, i32 2
  store i8 1, ptr %4, align 1
  store i8 0, ptr %5, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @ieee80211_add_wmm_info_ie(ptr noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #14 {
  %3 = getelementptr i8, ptr %0, i32 1
  store i8 -35, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i32 2
  store i8 7, ptr %3, align 1
  %5 = getelementptr i8, ptr %0, i32 3
  store i8 0, ptr %4, align 1
  %6 = getelementptr i8, ptr %0, i32 4
  store i8 80, ptr %5, align 1
  %7 = getelementptr i8, ptr %0, i32 5
  store i8 -14, ptr %6, align 1
  %8 = getelementptr i8, ptr %0, i32 6
  store i8 2, ptr %7, align 1
  %9 = getelementptr i8, ptr %0, i32 7
  store i8 0, ptr %8, align 1
  %10 = getelementptr i8, ptr %0, i32 8
  store i8 1, ptr %9, align 1
  %11 = getelementptr i8, ptr %0, i32 9
  store i8 %1, ptr %10, align 1
  ret ptr %11
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_txq_get_depth(ptr noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %17, label %7

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %15, %7 ], [ %5, %3 ]
  %9 = phi i32 [ %14, %7 ], [ 0, %3 ]
  %10 = phi i32 [ %11, %7 ], [ 0, %3 ]
  %11 = add i32 %10, 1
  %12 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, %9
  %15 = load ptr, ptr %8, align 4
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %7

17:                                               ; preds = %7, %3
  %18 = phi i32 [ 0, %3 ], [ %11, %7 ]
  %19 = phi i32 [ 0, %3 ], [ %14, %7 ]
  %20 = icmp eq ptr %1, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %0, i32 -100
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %18
  store i32 %24, ptr %1, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = icmp eq ptr %2, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %25
  %28 = getelementptr i8, ptr %0, i32 -104
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %19
  store i32 %30, ptr %2, align 4
  br label %31

31:                                               ; preds = %27, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @ieee80211_encode_usf(i32 noundef %0) local_unnamed_addr #0 {
  %2 = srem i32 %0, 10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = srem i32 %0, 1000
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = srem i32 %0, 10000
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 3, i32 2
  br label %11

11:                                               ; preds = %7, %4, %1
  %12 = phi i32 [ 0, %1 ], [ 1, %4 ], [ %10, %7 ]
  %13 = getelementptr [4 x i32], ptr @ieee80211_encode_usf.listen_int_usf, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = sdiv i32 %0, %14
  %16 = and i32 %15, 49152
  %17 = icmp ne i32 %16, 0
  %18 = load i1, ptr @ieee80211_encode_usf.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !8

21:                                               ; preds = %11
  store i1 true, ptr @ieee80211_encode_usf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4630, i32 noundef 9, ptr noundef null) #21
  br label %22

22:                                               ; preds = %21, %11
  %23 = shl nuw nsw i32 %12, 14
  %24 = and i32 %15, 16383
  %25 = or i32 %24, %23
  %26 = trunc i32 %25 to i16
  ret i16 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #15 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_wake_tx_queue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_wake_queue(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_stop_queue(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_flush(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_merge_profile(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_is_element_inherited(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_ie_split_ric(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_resume(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sched_scan_end(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_set_frag_threshold(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_set_rts_threshold(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_set_coverage_class(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_add_chanctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_assign_vif_chanctx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_join_ibss(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_start_ap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_nan_func_terminated(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_start_nan(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_add_nan_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_reconfig_complete(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_enable_rssi_reports(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cfg80211_radar_event(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_radar_detected(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.usub.sat.i8(i8, i8) #20

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #17 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { nounwind }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { nounwind readnone }

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
!9 = !{i64 2156023122, i64 2156023610, i64 2156023159, i64 2156023215, i64 2156023249, i64 2156023273, i64 2156023314, i64 2156023335, i64 2156023363, i64 2156023397}
!10 = !{i8 0, i8 2}
!11 = !{i64 2149726292}
!12 = !{i64 2149726509}
!13 = !{i64 2149403617}
!14 = !{i64 2149573588}
!15 = !{i64 2149569412}
!16 = !{i64 2149569487, i64 2149569514, i64 2149569561, i64 2149569583, i64 2149569611, i64 2149569631}
!17 = !{i64 2149596591}
!18 = !{i64 2159470896}
!19 = !{i64 2159471076}
!20 = !{i64 2159271523}
!21 = !{i64 2159271695}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2159284636}
!24 = !{i64 2159284808}
!25 = !{i64 2158383344}
!26 = !{i64 2158383512}
!27 = !{i64 2157618783}
!28 = !{i64 2157618935}
!29 = !{!"auto-init"}
!30 = !{i64 2157754983}
!31 = !{i64 2157755125}
!32 = !{i64 2157631653}
!33 = !{i64 2157631813}
!34 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!35 = !{i64 2158073052}
!36 = !{i64 2158073232}
!37 = !{i64 2158090631}
!38 = !{i64 2158090809}
!39 = !{i64 2158104141}
!40 = !{i64 2158104321}
!41 = !{i64 2158656449}
!42 = !{i64 2158656611}
!43 = !{i64 2158809199}
!44 = !{i64 2158809373}
!45 = !{i64 2158749968}
!46 = !{i64 2158750140}
!47 = !{i64 2158849921}
!48 = !{i64 2158850095}
!49 = !{i64 2158895656}
!50 = !{i64 2158895836}
!51 = !{i64 2158776654}
!52 = !{i64 2158776848}
!53 = !{i64 2160089775}
!54 = !{i64 2160093239}
!55 = !{i64 2158717094}
!56 = !{i64 2158717284}
!57 = !{i64 2159212920}
!58 = !{i64 2159213152}
!59 = !{i64 2159316055}
!60 = !{i64 2159316213}
!61 = !{i64 2148798026, i64 2148798306, i64 2148798640, i64 2148798974}
