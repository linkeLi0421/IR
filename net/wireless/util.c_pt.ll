; ModuleID = '/llk/IR/net/wireless/util.c_pt.bc'
source_filename = "../net/wireless/util.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_response_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_response_rate\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_response_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_mandatory_rates:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_mandatory_rates\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_mandatory_rates:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_channel_to_freq_khz:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_channel_to_freq_khz\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_channel_to_freq_khz:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_s1g_channel_width:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_s1g_channel_width\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_s1g_channel_width:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_freq_khz_to_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_freq_khz_to_channel\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_freq_khz_to_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_channel_khz:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_channel_khz\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_channel_khz:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_hdrlen:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_hdrlen\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_hdrlen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_hdrlen_from_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_hdrlen_from_skb\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_hdrlen_from_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_mesh_hdrlen:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_mesh_hdrlen\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_mesh_hdrlen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_data_to_8023_exthdr:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_data_to_8023_exthdr\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_data_to_8023_exthdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_amsdu_to_8023s:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_amsdu_to_8023s\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_amsdu_to_8023s:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_classify8021d:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_classify8021d\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_classify8021d:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_bss_get_elem:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_bss_get_elem\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_bss_get_elem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_calculate_bitrate:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_calculate_bitrate\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_calculate_bitrate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_get_p2p_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_get_p2p_attr\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_get_p2p_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_ie_split_ric:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_ie_split_ric\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_ie_split_ric:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_operating_class_to_band:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_operating_class_to_band\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_operating_class_to_band:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_chandef_to_operating_class:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_chandef_to_operating_class\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_chandef_to_operating_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_iter_combinations:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_iter_combinations\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_iter_combinations:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_check_combinations:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_check_combinations\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_check_combinations:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_num_supported_channels:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_num_supported_channels\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_num_supported_channels:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_get_station:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_get_station\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_get_station:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_free_nan_func:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_free_nan_func\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_free_nan_func:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_sinfo_alloc_tid_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_sinfo_alloc_tid_stats\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_sinfo_alloc_tid_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rfc1042_header:\09\09\09\09\09"
module asm "\09.asciz \09\22rfc1042_header\22\09\09\09\09\09"
module asm "__kstrtabns_rfc1042_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bridge_tunnel_header:\09\09\09\09\09"
module asm "\09.asciz \09\22bridge_tunnel_header\22\09\09\09\09\09"
module asm "__kstrtabns_bridge_tunnel_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_send_layer2_update:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_send_layer2_update\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_send_layer2_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_vht_max_nss:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_vht_max_nss\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_vht_max_nss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfg80211_iftype_allowed:\09\09\09\09\09"
module asm "\09.asciz \09\22cfg80211_iftype_allowed\22\09\09\09\09\09"
module asm "__kstrtabns_cfg80211_iftype_allowed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.141, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
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
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type {}
%struct.anon.141 = type { i64, i64, i8 }
%struct.cfg80211_registered_device = type { ptr, %struct.list_head, %struct.rfkill_ops, %struct.work_struct, [2 x i8], ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.rb_root, i32, i32, ptr, ptr, ptr, %struct.list_head, i64, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, %struct.delayed_work, %struct.work_struct, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.cfg80211_chan_def, %struct.work_struct, %struct.work_struct, %struct.spinlock, [24 x i8], %struct.wiphy }
%struct.rfkill_ops = type { ptr, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.anon.145 = type { [6 x i8], i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.page = type { i32, %union.anon.16, %union.anon.31, %struct.atomic_t }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.31 = type { %struct.atomic_t }
%struct.mpls_label = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.cfg80211_qos_map = type { i8, [21 x %struct.cfg80211_dscp_exception], [8 x %struct.cfg80211_dscp_range] }
%struct.cfg80211_dscp_exception = type { i8, i8 }
%struct.cfg80211_dscp_range = type { i8, i8 }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.cfg80211_bss_ies = type { i64, %struct.callback_head, i32, i8, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cfg80211_cached_keys = type { [4 x %struct.key_params], [4 x [13 x i8]], i32 }
%struct.cfg80211_event = type { %struct.list_head, i32, %union.anon.146 }
%union.anon.146 = type { %struct.cfg80211_connect_resp_params }
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }
%struct.anon.147 = type { ptr, i32, i16, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.102, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.ref_tracker_dir = type {}
%union.anon.102 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.vif_params = type { i32, i32, [6 x i8], ptr, ptr }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.iface_combination_params = type { i32, i8, [13 x i32], i32 }
%struct.ieee80211_regdomain = type { %struct.callback_head, i32, [3 x i8], i32, [0 x %struct.ieee80211_reg_rule] }
%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range, %struct.ieee80211_power_rule, %struct.ieee80211_wmm_rule, i32, i32, i8 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.ieee80211_power_rule = type { i32, i32 }
%struct.ieee80211_wmm_rule = type { [4 x %struct.ieee80211_wmm_ac], [4 x %struct.ieee80211_wmm_ac] }
%struct.ieee80211_wmm_ac = type { i16, i16, i16, i8 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.cfg80211_nan_func = type { i32, [6 x i8], i8, i8, i8, i8, i8, i8, %struct.mac_address, i32, ptr, i8, i8, ptr, i8, i8, ptr, i32, ptr, ptr, i8, i8, i8, i64 }
%struct.mac_address = type { [6 x i8] }
%struct.cfg80211_nan_func_filter = type { ptr, i8 }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.iapp_layer2_update = type { [6 x i8], [6 x i8], i16, i8, i8, i8, [3 x i8] }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }

@__kstrtab_ieee80211_get_response_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_response_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_response_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_response_rate to i32), ptr @__kstrtab_ieee80211_get_response_rate, ptr @__kstrtabns_ieee80211_get_response_rate }, section "___ksymtab+ieee80211_get_response_rate", align 4
@.str = private unnamed_addr constant [20 x i8] c"net/wireless/util.c\00", align 1
@__kstrtab_ieee80211_mandatory_rates = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_mandatory_rates = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_mandatory_rates = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_mandatory_rates to i32), ptr @__kstrtab_ieee80211_mandatory_rates, ptr @__kstrtabns_ieee80211_mandatory_rates }, section "___ksymtab+ieee80211_mandatory_rates", align 4
@__kstrtab_ieee80211_channel_to_freq_khz = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_channel_to_freq_khz = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_channel_to_freq_khz = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_channel_to_freq_khz to i32), ptr @__kstrtab_ieee80211_channel_to_freq_khz, ptr @__kstrtabns_ieee80211_channel_to_freq_khz }, section "___ksymtab+ieee80211_channel_to_freq_khz", align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"\013unknown channel width for channel at %dKHz?\0A\00", align 1
@__kstrtab_ieee80211_s1g_channel_width = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_s1g_channel_width = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_s1g_channel_width = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_s1g_channel_width to i32), ptr @__kstrtab_ieee80211_s1g_channel_width, ptr @__kstrtabns_ieee80211_s1g_channel_width }, section "___ksymtab+ieee80211_s1g_channel_width", align 4
@__kstrtab_ieee80211_freq_khz_to_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_freq_khz_to_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_freq_khz_to_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_freq_khz_to_channel to i32), ptr @__kstrtab_ieee80211_freq_khz_to_channel, ptr @__kstrtabns_ieee80211_freq_khz_to_channel }, section "___ksymtab+ieee80211_freq_khz_to_channel", align 4
@__kstrtab_ieee80211_get_channel_khz = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_channel_khz = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_channel_khz = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_channel_khz to i32), ptr @__kstrtab_ieee80211_get_channel_khz, ptr @__kstrtabns_ieee80211_get_channel_khz }, section "___ksymtab+ieee80211_get_channel_khz", align 4
@__kstrtab_ieee80211_hdrlen = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_hdrlen = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_hdrlen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_hdrlen to i32), ptr @__kstrtab_ieee80211_hdrlen, ptr @__kstrtabns_ieee80211_hdrlen }, section "___ksymtab+ieee80211_hdrlen", align 4
@__kstrtab_ieee80211_get_hdrlen_from_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_hdrlen_from_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_hdrlen_from_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_hdrlen_from_skb to i32), ptr @__kstrtab_ieee80211_get_hdrlen_from_skb, ptr @__kstrtabns_ieee80211_get_hdrlen_from_skb }, section "___ksymtab+ieee80211_get_hdrlen_from_skb", align 4
@__kstrtab_ieee80211_get_mesh_hdrlen = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_mesh_hdrlen = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_mesh_hdrlen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_mesh_hdrlen to i32), ptr @__kstrtab_ieee80211_get_mesh_hdrlen, ptr @__kstrtabns_ieee80211_get_mesh_hdrlen }, section "___ksymtab+ieee80211_get_mesh_hdrlen", align 4
@rfc1042_header = dso_local constant [6 x i8] c"\AA\AA\03\00\00\00", align 2
@bridge_tunnel_header = dso_local constant [6 x i8] c"\AA\AA\03\00\00\F8", align 2
@__kstrtab_ieee80211_data_to_8023_exthdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_data_to_8023_exthdr = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_data_to_8023_exthdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_data_to_8023_exthdr to i32), ptr @__kstrtab_ieee80211_data_to_8023_exthdr, ptr @__kstrtabns_ieee80211_data_to_8023_exthdr }, section "___ksymtab+ieee80211_data_to_8023_exthdr", align 4
@__kstrtab_ieee80211_amsdu_to_8023s = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_amsdu_to_8023s = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_amsdu_to_8023s = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_amsdu_to_8023s to i32), ptr @__kstrtab_ieee80211_amsdu_to_8023s, ptr @__kstrtabns_ieee80211_amsdu_to_8023s }, section "___ksymtab+ieee80211_amsdu_to_8023s", align 4
@__kstrtab_cfg80211_classify8021d = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_classify8021d = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_classify8021d = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_classify8021d to i32), ptr @__kstrtab_cfg80211_classify8021d, ptr @__kstrtabns_cfg80211_classify8021d }, section "___ksymtab+cfg80211_classify8021d", align 4
@__kstrtab_ieee80211_bss_get_elem = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_bss_get_elem = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_bss_get_elem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_bss_get_elem to i32), ptr @__kstrtab_ieee80211_bss_get_elem, ptr @__kstrtabns_ieee80211_bss_get_elem }, section "___ksymtab+ieee80211_bss_get_elem", align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to set key %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to set defkey %d\0A\00", align 1
@__kstrtab_cfg80211_calculate_bitrate = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_calculate_bitrate = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_calculate_bitrate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_calculate_bitrate to i32), ptr @__kstrtab_cfg80211_calculate_bitrate, ptr @__kstrtabns_cfg80211_calculate_bitrate }, section "___ksymtab+cfg80211_calculate_bitrate", align 4
@__kstrtab_cfg80211_get_p2p_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_get_p2p_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_get_p2p_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_get_p2p_attr to i32), ptr @__kstrtab_cfg80211_get_p2p_attr, ptr @__kstrtabns_cfg80211_get_p2p_attr }, section "___ksymtab+cfg80211_get_p2p_attr", align 4
@__kstrtab_ieee80211_ie_split_ric = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_ie_split_ric = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_ie_split_ric = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_ie_split_ric to i32), ptr @__kstrtab_ieee80211_ie_split_ric, ptr @__kstrtabns_ieee80211_ie_split_ric }, section "___ksymtab+ieee80211_ie_split_ric", align 4
@__kstrtab_ieee80211_operating_class_to_band = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_operating_class_to_band = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_operating_class_to_band = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_operating_class_to_band to i32), ptr @__kstrtab_ieee80211_operating_class_to_band, ptr @__kstrtabns_ieee80211_operating_class_to_band }, section "___ksymtab+ieee80211_operating_class_to_band", align 4
@__kstrtab_ieee80211_chandef_to_operating_class = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_chandef_to_operating_class = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_chandef_to_operating_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_chandef_to_operating_class to i32), ptr @__kstrtab_ieee80211_chandef_to_operating_class, ptr @__kstrtabns_ieee80211_chandef_to_operating_class }, section "___ksymtab+ieee80211_chandef_to_operating_class", align 4
@cfg80211_regdomain = external dso_local global ptr, align 4
@__kstrtab_cfg80211_iter_combinations = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_iter_combinations = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_iter_combinations = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_iter_combinations to i32), ptr @__kstrtab_cfg80211_iter_combinations, ptr @__kstrtabns_cfg80211_iter_combinations }, section "___ksymtab+cfg80211_iter_combinations", align 4
@__kstrtab_cfg80211_check_combinations = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_check_combinations = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_check_combinations = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_check_combinations to i32), ptr @__kstrtab_cfg80211_check_combinations, ptr @__kstrtabns_cfg80211_check_combinations }, section "___ksymtab+cfg80211_check_combinations", align 4
@__kstrtab_ieee80211_get_num_supported_channels = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_num_supported_channels = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_num_supported_channels = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_num_supported_channels to i32), ptr @__kstrtab_ieee80211_get_num_supported_channels, ptr @__kstrtabns_ieee80211_get_num_supported_channels }, section "___ksymtab+ieee80211_get_num_supported_channels", align 4
@__kstrtab_cfg80211_get_station = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_get_station = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_get_station = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_get_station to i32), ptr @__kstrtab_cfg80211_get_station, ptr @__kstrtabns_cfg80211_get_station }, section "___ksymtab+cfg80211_get_station", align 4
@__kstrtab_cfg80211_free_nan_func = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_free_nan_func = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_free_nan_func = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_free_nan_func to i32), ptr @__kstrtab_cfg80211_free_nan_func, ptr @__kstrtabns_cfg80211_free_nan_func }, section "___ksymtab+cfg80211_free_nan_func", align 4
@__kstrtab_cfg80211_sinfo_alloc_tid_stats = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_sinfo_alloc_tid_stats = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_sinfo_alloc_tid_stats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_sinfo_alloc_tid_stats to i32), ptr @__kstrtab_cfg80211_sinfo_alloc_tid_stats, ptr @__kstrtabns_cfg80211_sinfo_alloc_tid_stats }, section "___ksymtab+cfg80211_sinfo_alloc_tid_stats", align 4
@__kstrtab_rfc1042_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_rfc1042_header = external dso_local constant [0 x i8], align 1
@__ksymtab_rfc1042_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rfc1042_header to i32), ptr @__kstrtab_rfc1042_header, ptr @__kstrtabns_rfc1042_header }, section "___ksymtab+rfc1042_header", align 4
@__kstrtab_bridge_tunnel_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_bridge_tunnel_header = external dso_local constant [0 x i8], align 1
@__ksymtab_bridge_tunnel_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bridge_tunnel_header to i32), ptr @__kstrtab_bridge_tunnel_header, ptr @__kstrtabns_bridge_tunnel_header }, section "___ksymtab+bridge_tunnel_header", align 4
@__kstrtab_cfg80211_send_layer2_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_send_layer2_update = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_send_layer2_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_send_layer2_update to i32), ptr @__kstrtab_cfg80211_send_layer2_update, ptr @__kstrtabns_cfg80211_send_layer2_update }, section "___ksymtab+cfg80211_send_layer2_update", align 4
@__kstrtab_ieee80211_get_vht_max_nss = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_vht_max_nss = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_vht_max_nss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_vht_max_nss to i32), ptr @__kstrtab_ieee80211_get_vht_max_nss, ptr @__kstrtabns_ieee80211_get_vht_max_nss }, section "___ksymtab+ieee80211_get_vht_max_nss", align 4
@__kstrtab_cfg80211_iftype_allowed = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfg80211_iftype_allowed = external dso_local constant [0 x i8], align 1
@__ksymtab_cfg80211_iftype_allowed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfg80211_iftype_allowed to i32), ptr @__kstrtab_cfg80211_iftype_allowed, ptr @__kstrtabns_cfg80211_iftype_allowed }, section "___ksymtab+cfg80211_iftype_allowed", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_rdev_add_key = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_rdev_return_int = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_set_default_key = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_set_qos_map = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_change_virtual_intf = external dso_local global %struct.tracepoint, align 4
@cfg80211_calculate_bitrate_ht.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cfg80211_calculate_bitrate_dmg.__mcs2bitrate = internal unnamed_addr constant [32 x i32] [i32 275, i32 3850, i32 7700, i32 9625, i32 11550, i32 12512, i32 15400, i32 19250, i32 23100, i32 25025, i32 30800, i32 38500, i32 46200, i32 6930, i32 8662, i32 13860, i32 17325, i32 20790, i32 27720, i32 34650, i32 41580, i32 45045, i32 51975, i32 62370, i32 67568, i32 6260, i32 8340, i32 11120, i32 12510, i32 16680, i32 22240, i32 25030], align 4
@cfg80211_calculate_bitrate_dmg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cfg80211_calculate_bitrate_extended_sc_dmg.__mcs2bitrate = internal unnamed_addr constant [7 x i32] [i32 26950, i32 50050, i32 53900, i32 57750, i32 63900, i32 75075, i32 80850], align 4
@cfg80211_calculate_bitrate_extended_sc_dmg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cfg80211_calculate_bitrate_edmg.__mcs2bitrate = internal unnamed_addr constant [21 x i32] [i32 275, i32 3850, i32 7700, i32 9625, i32 11550, i32 12512, i32 13475, i32 15400, i32 19250, i32 23100, i32 25025, i32 26950, i32 30800, i32 38500, i32 46200, i32 50050, i32 53900, i32 57750, i32 69300, i32 75075, i32 80850], align 4
@cfg80211_calculate_bitrate_edmg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cfg80211_calculate_bitrate_vht.base = internal unnamed_addr constant [4 x [12 x i32]] [[12 x i32] [i32 6500000, i32 13000000, i32 19500000, i32 26000000, i32 39000000, i32 52000000, i32 58500000, i32 65000000, i32 78000000, i32 86700000, i32 97500000, i32 108300000], [12 x i32] [i32 13500000, i32 27000000, i32 40500000, i32 54000000, i32 81000000, i32 108000000, i32 121500000, i32 135000000, i32 162000000, i32 180000000, i32 202500000, i32 225000000], [12 x i32] [i32 29300000, i32 58500000, i32 87800000, i32 117000000, i32 175500000, i32 234000000, i32 263300000, i32 292500000, i32 351000000, i32 390000000, i32 438800000, i32 487500000], [12 x i32] [i32 58500000, i32 117000000, i32 175500000, i32 234000000, i32 351000000, i32 468000000, i32 526500000, i32 585000000, i32 702000000, i32 780000000, i32 877500000, i32 975000000]], align 4
@cfg80211_calculate_bitrate_vht.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"invalid rate bw=%d, mcs=%d, nss=%d\0A\00", align 1
@__const.cfg80211_calculate_bitrate_he.mcs_divisors = private unnamed_addr constant [14 x i32] [i32 102399, i32 51201, i32 34134, i32 25599, i32 17067, i32 12801, i32 11769, i32 10239, i32 8532, i32 7680, i32 6828, i32 6144, i32 5690, i32 5120], align 4
@__const.cfg80211_calculate_bitrate_he.rates_160M = private unnamed_addr constant [3 x i32] [i32 960777777, i32 907400000, i32 816666666], align 4
@__const.cfg80211_calculate_bitrate_he.rates_969 = private unnamed_addr constant [3 x i32] [i32 480388888, i32 453700000, i32 408333333], align 4
@__const.cfg80211_calculate_bitrate_he.rates_484 = private unnamed_addr constant [3 x i32] [i32 229411111, i32 216666666, i32 195000000], align 4
@__const.cfg80211_calculate_bitrate_he.rates_242 = private unnamed_addr constant [3 x i32] [i32 114711111, i32 108333333, i32 97500000], align 4
@__const.cfg80211_calculate_bitrate_he.rates_106 = private unnamed_addr constant [3 x i32] [i32 40000000, i32 37777777, i32 34000000], align 4
@__const.cfg80211_calculate_bitrate_he.rates_52 = private unnamed_addr constant [3 x i32] [i32 18820000, i32 17777777, i32 16000000], align 4
@__const.cfg80211_calculate_bitrate_he.rates_26 = private unnamed_addr constant [3 x i32] [i32 9411111, i32 8888888, i32 8000000], align 4
@cfg80211_calculate_bitrate_he.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cfg80211_calculate_bitrate_he.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cfg80211_calculate_bitrate_he.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cfg80211_calculate_bitrate_he.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"invalid HE MCS: bw:%d, ru:%d\0A\00", align 1
@__tracepoint_rdev_get_station = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_return_int_station_info = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [29 x ptr] [ptr @__ksymtab_bridge_tunnel_header, ptr @__ksymtab_cfg80211_calculate_bitrate, ptr @__ksymtab_cfg80211_check_combinations, ptr @__ksymtab_cfg80211_classify8021d, ptr @__ksymtab_cfg80211_free_nan_func, ptr @__ksymtab_cfg80211_get_p2p_attr, ptr @__ksymtab_cfg80211_get_station, ptr @__ksymtab_cfg80211_iftype_allowed, ptr @__ksymtab_cfg80211_iter_combinations, ptr @__ksymtab_cfg80211_send_layer2_update, ptr @__ksymtab_cfg80211_sinfo_alloc_tid_stats, ptr @__ksymtab_ieee80211_amsdu_to_8023s, ptr @__ksymtab_ieee80211_bss_get_elem, ptr @__ksymtab_ieee80211_chandef_to_operating_class, ptr @__ksymtab_ieee80211_channel_to_freq_khz, ptr @__ksymtab_ieee80211_data_to_8023_exthdr, ptr @__ksymtab_ieee80211_freq_khz_to_channel, ptr @__ksymtab_ieee80211_get_channel_khz, ptr @__ksymtab_ieee80211_get_hdrlen_from_skb, ptr @__ksymtab_ieee80211_get_mesh_hdrlen, ptr @__ksymtab_ieee80211_get_num_supported_channels, ptr @__ksymtab_ieee80211_get_response_rate, ptr @__ksymtab_ieee80211_get_vht_max_nss, ptr @__ksymtab_ieee80211_hdrlen, ptr @__ksymtab_ieee80211_ie_split_ric, ptr @__ksymtab_ieee80211_mandatory_rates, ptr @__ksymtab_ieee80211_operating_class_to_band, ptr @__ksymtab_ieee80211_s1g_channel_width, ptr @__ksymtab_rfc1042_header], section "llvm.metadata"
@switch.table.cfg80211_calculate_bitrate = private unnamed_addr constant [6 x i32] [i32 0, i32 3, i32 3, i32 1, i32 2, i32 3], align 4
@switch.table.cfg80211_calculate_bitrate_he = private unnamed_addr constant [6 x ptr] [ptr @__const.cfg80211_calculate_bitrate_he.rates_26, ptr @__const.cfg80211_calculate_bitrate_he.rates_52, ptr @__const.cfg80211_calculate_bitrate_he.rates_106, ptr @__const.cfg80211_calculate_bitrate_he.rates_242, ptr @__const.cfg80211_calculate_bitrate_he.rates_484, ptr @__const.cfg80211_calculate_bitrate_he.rates_969], align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @ieee80211_get_response_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %22, %3
  %10 = phi i32 [ %24, %22 ], [ 0, %3 ]
  %11 = phi ptr [ %23, %22 ], [ %5, %3 ]
  %12 = shl nuw i32 1, %10
  %13 = and i32 %12, %1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr %struct.ieee80211_rate, ptr %5, i32 %10, i32 1
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = icmp sgt i32 %18, %2
  %20 = getelementptr %struct.ieee80211_rate, ptr %5, i32 %10
  %21 = select i1 %19, ptr %11, ptr %20
  br label %22

22:                                               ; preds = %15, %9
  %23 = phi ptr [ %11, %9 ], [ %21, %15 ]
  %24 = add nuw nsw i32 %10, 1
  %25 = icmp eq i32 %24, %7
  br i1 %25, label %26, label %9

26:                                               ; preds = %22, %3
  %27 = phi ptr [ %5, %3 ], [ %23, %22 ]
  ret ptr %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_mandatory_rates(ptr noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef null) #19
  br label %30

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = add i32 %1, -1
  %10 = icmp ult i32 %9, 2
  %11 = select i1 %10, i32 8, i32 4
  %12 = select i1 %8, i32 %11, i32 2
  %13 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %18, %5
  %19 = phi i32 [ %28, %18 ], [ 0, %5 ]
  %20 = phi i32 [ %27, %18 ], [ 0, %5 ]
  %21 = getelementptr %struct.ieee80211_rate, ptr %14, i32 %19
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %12
  %24 = icmp eq i32 %23, 0
  %25 = shl nuw i32 1, %19
  %26 = select i1 %24, i32 0, i32 %25
  %27 = or i32 %26, %20
  %28 = add nuw nsw i32 %19, 1
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %30, label %18

30:                                               ; preds = %18, %5, %4
  %31 = phi i32 [ 1, %4 ], [ 0, %5 ], [ %27, %18 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef %0, i32 noundef %1) #4 {
  %3 = icmp slt i32 %0, 1
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  switch i32 %1, label %35 [
    i32 0, label %5
    i32 5, label %5
    i32 1, label %12
    i32 3, label %20
    i32 2, label %27
    i32 4, label %32
  ]

5:                                                ; preds = %4, %4
  %6 = icmp eq i32 %0, 14
  br i1 %6, label %35, label %7

7:                                                ; preds = %5
  %8 = icmp ult i32 %0, 14
  br i1 %8, label %9, label %35

9:                                                ; preds = %7
  %10 = mul nuw nsw i32 %0, 5000
  %11 = add nuw nsw i32 %10, 2407000
  br label %35

12:                                               ; preds = %4
  %13 = add nsw i32 %0, -182
  %14 = icmp ult i32 %13, 15
  %15 = mul i32 %0, 5000
  br i1 %14, label %16, label %18

16:                                               ; preds = %12
  %17 = add nuw nsw i32 %15, 4000000
  br label %35

18:                                               ; preds = %12
  %19 = add i32 %15, 5000000
  br label %35

20:                                               ; preds = %4
  %21 = icmp eq i32 %0, 2
  br i1 %21, label %35, label %22

22:                                               ; preds = %20
  %23 = icmp ult i32 %0, 234
  br i1 %23, label %24, label %35

24:                                               ; preds = %22
  %25 = mul nuw nsw i32 %0, 5000
  %26 = add nuw nsw i32 %25, 5950000
  br label %35

27:                                               ; preds = %4
  %28 = icmp ult i32 %0, 7
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = mul nuw nsw i32 %0, 2160000
  %31 = add nuw nsw i32 %30, 56160000
  br label %35

32:                                               ; preds = %4
  %33 = mul i32 %0, 500
  %34 = add i32 %33, 902000
  br label %35

35:                                               ; preds = %32, %29, %27, %24, %22, %20, %18, %16, %9, %7, %5, %4, %2
  %36 = phi i32 [ %34, %32 ], [ %31, %29 ], [ %26, %24 ], [ %17, %16 ], [ %19, %18 ], [ %11, %9 ], [ 0, %2 ], [ 2484000, %5 ], [ 5935000, %20 ], [ 0, %4 ], [ 0, %27 ], [ 0, %22 ], [ 0, %7 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_s1g_channel_width(ptr noundef readonly %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %3, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef null) #19
  br label %33

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ieee80211_channel, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 16384
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %7
  %13 = and i32 %9, 32768
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = and i32 %9, 65536
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = and i32 %9, 131072
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = and i32 %9, 262144
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ieee80211_channel, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = mul i32 %26, 1000
  %28 = getelementptr inbounds %struct.ieee80211_channel, ptr %0, i32 0, i32 2
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = add i32 %27, %30
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %31) #20
  br label %33

33:                                               ; preds = %24, %21, %18, %15, %12, %7, %6
  %34 = phi i32 [ 0, %6 ], [ 8, %24 ], [ 8, %7 ], [ 9, %12 ], [ 10, %15 ], [ 11, %18 ], [ 12, %21 ]
  ret i32 %34
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef %0) #4 {
  %2 = udiv i32 %0, 1000
  %3 = add i32 %0, -2484000
  %4 = icmp ult i32 %3, 1000
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = icmp ult i32 %0, 2484000
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = add nsw i32 %2, -2407
  %9 = udiv i32 %8, 5
  br label %35

10:                                               ; preds = %5
  %11 = add i32 %0, -4910000
  %12 = icmp ult i32 %11, 71000
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = add nsw i32 %2, -4000
  %15 = udiv i32 %14, 5
  br label %35

16:                                               ; preds = %10
  %17 = icmp ult i32 %0, 5925000
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = add nsw i32 %2, -5000
  %20 = udiv i32 %19, 5
  br label %35

21:                                               ; preds = %16
  %22 = add i32 %0, -5935000
  %23 = icmp ult i32 %22, 1000
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = icmp ult i32 %0, 45001000
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = add nsw i32 %2, -5950
  %28 = udiv i32 %27, 5
  br label %35

29:                                               ; preds = %24
  %30 = add i32 %0, -58320000
  %31 = icmp ult i32 %30, 11881000
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = add nsw i32 %2, -56160
  %34 = udiv i32 %33, 2160
  br label %35

35:                                               ; preds = %32, %29, %26, %21, %18, %13, %7, %1
  %36 = phi i32 [ %9, %7 ], [ %15, %13 ], [ %20, %18 ], [ %28, %26 ], [ %34, %32 ], [ 14, %1 ], [ 2, %21 ], [ 0, %29 ]
  ret i32 %36
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @ieee80211_get_channel_khz(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 0
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %4, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load ptr, ptr %4, align 4
  br label %12

12:                                               ; preds = %22, %10
  %13 = phi i32 [ 0, %10 ], [ %23, %22 ]
  %14 = getelementptr %struct.ieee80211_channel, ptr %11, i32 %13, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, 1000
  %17 = getelementptr %struct.ieee80211_channel, ptr %11, i32 %13, i32 2
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = add i32 %16, %19
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %140, label %22

22:                                               ; preds = %12
  %23 = add nuw nsw i32 %13, 1
  %24 = icmp eq i32 %23, %8
  br i1 %24, label %25, label %12

25:                                               ; preds = %22, %6, %2
  %26 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %27, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load ptr, ptr %27, align 4
  br label %35

35:                                               ; preds = %45, %33
  %36 = phi i32 [ 0, %33 ], [ %46, %45 ]
  %37 = getelementptr %struct.ieee80211_channel, ptr %34, i32 %36, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = mul i32 %38, 1000
  %40 = getelementptr %struct.ieee80211_channel, ptr %34, i32 %36, i32 2
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = add i32 %39, %42
  %44 = icmp eq i32 %43, %1
  br i1 %44, label %140, label %45

45:                                               ; preds = %35
  %46 = add nuw nsw i32 %36, 1
  %47 = icmp eq i32 %46, %31
  br i1 %47, label %48, label %35

48:                                               ; preds = %45, %29, %25
  %49 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %71, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %50, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load ptr, ptr %50, align 4
  br label %58

58:                                               ; preds = %68, %56
  %59 = phi i32 [ 0, %56 ], [ %69, %68 ]
  %60 = getelementptr %struct.ieee80211_channel, ptr %57, i32 %59, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = mul i32 %61, 1000
  %63 = getelementptr %struct.ieee80211_channel, ptr %57, i32 %59, i32 2
  %64 = load i16, ptr %63, align 4
  %65 = zext i16 %64 to i32
  %66 = add i32 %62, %65
  %67 = icmp eq i32 %66, %1
  br i1 %67, label %140, label %68

68:                                               ; preds = %58
  %69 = add nuw nsw i32 %59, 1
  %70 = icmp eq i32 %69, %54
  br i1 %70, label %71, label %58

71:                                               ; preds = %68, %52, %48
  %72 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %94, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %73, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load ptr, ptr %73, align 4
  br label %81

81:                                               ; preds = %91, %79
  %82 = phi i32 [ 0, %79 ], [ %92, %91 ]
  %83 = getelementptr %struct.ieee80211_channel, ptr %80, i32 %82, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = mul i32 %84, 1000
  %86 = getelementptr %struct.ieee80211_channel, ptr %80, i32 %82, i32 2
  %87 = load i16, ptr %86, align 4
  %88 = zext i16 %87 to i32
  %89 = add i32 %85, %88
  %90 = icmp eq i32 %89, %1
  br i1 %90, label %140, label %91

91:                                               ; preds = %81
  %92 = add nuw nsw i32 %82, 1
  %93 = icmp eq i32 %92, %77
  br i1 %93, label %94, label %81

94:                                               ; preds = %91, %75, %71
  %95 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 4
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %117, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %96, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %98
  %103 = load ptr, ptr %96, align 4
  br label %104

104:                                              ; preds = %114, %102
  %105 = phi i32 [ 0, %102 ], [ %115, %114 ]
  %106 = getelementptr %struct.ieee80211_channel, ptr %103, i32 %105, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = mul i32 %107, 1000
  %109 = getelementptr %struct.ieee80211_channel, ptr %103, i32 %105, i32 2
  %110 = load i16, ptr %109, align 4
  %111 = zext i16 %110 to i32
  %112 = add i32 %108, %111
  %113 = icmp eq i32 %112, %1
  br i1 %113, label %140, label %114

114:                                              ; preds = %104
  %115 = add nuw nsw i32 %105, 1
  %116 = icmp eq i32 %115, %100
  br i1 %116, label %117, label %104

117:                                              ; preds = %114, %98, %94
  %118 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 5
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %144, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %119, i32 0, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %121
  %126 = load ptr, ptr %119, align 4
  br label %127

127:                                              ; preds = %137, %125
  %128 = phi i32 [ 0, %125 ], [ %138, %137 ]
  %129 = getelementptr %struct.ieee80211_channel, ptr %126, i32 %128, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = mul i32 %130, 1000
  %132 = getelementptr %struct.ieee80211_channel, ptr %126, i32 %128, i32 2
  %133 = load i16, ptr %132, align 4
  %134 = zext i16 %133 to i32
  %135 = add i32 %131, %134
  %136 = icmp eq i32 %135, %1
  br i1 %136, label %140, label %137

137:                                              ; preds = %127
  %138 = add nuw nsw i32 %128, 1
  %139 = icmp eq i32 %138, %123
  br i1 %139, label %144, label %127

140:                                              ; preds = %127, %104, %81, %58, %35, %12
  %141 = phi ptr [ %126, %127 ], [ %103, %104 ], [ %80, %81 ], [ %57, %58 ], [ %34, %35 ], [ %11, %12 ]
  %142 = phi i32 [ %128, %127 ], [ %105, %104 ], [ %82, %81 ], [ %59, %58 ], [ %36, %35 ], [ %13, %12 ]
  %143 = getelementptr %struct.ieee80211_channel, ptr %141, i32 %142
  br label %144

144:                                              ; preds = %140, %137, %121, %117
  %145 = phi ptr [ %143, %140 ], [ null, %121 ], [ null, %117 ], [ null, %137 ]
  ret ptr %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_set_bitrate_flags(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  br label %2

2:                                                ; preds = %88, %1
  %3 = phi i32 [ 0, %1 ], [ %89, %88 ]
  %4 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %88, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %86 [
    i32 1, label %10
    i32 3, label %10
    i32 0, label %36
    i32 5, label %36
    i32 2, label %71
    i32 4, label %81
  ]

10:                                               ; preds = %7, %7
  %11 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %86

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 1
  br label %16

16:                                               ; preds = %29, %14
  %17 = phi i32 [ %12, %14 ], [ %30, %29 ]
  %18 = phi i32 [ 0, %14 ], [ %32, %29 ]
  %19 = phi i32 [ 3, %14 ], [ %31, %29 ]
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr %struct.ieee80211_rate, ptr %20, i32 %18, i32 1
  %22 = load i16, ptr %21, align 4
  switch i16 %22, label %29 [
    i16 60, label %23
    i16 120, label %23
    i16 240, label %23
  ]

23:                                               ; preds = %16, %16, %16
  %24 = getelementptr %struct.ieee80211_rate, ptr %20, i32 %18
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 2
  store i32 %26, ptr %24, align 4
  %27 = add i32 %19, -1
  %28 = load i32, ptr %11, align 4
  br label %29

29:                                               ; preds = %23, %16
  %30 = phi i32 [ %28, %23 ], [ %17, %16 ]
  %31 = phi i32 [ %27, %23 ], [ %19, %16 ]
  %32 = add nuw nsw i32 %18, 1
  %33 = icmp slt i32 %32, %30
  br i1 %33, label %16, label %34

34:                                               ; preds = %29
  %35 = icmp eq i32 %31, 0
  br i1 %35, label %88, label %86, !prof !9

36:                                               ; preds = %7, %7
  %37 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 1
  br label %42

42:                                               ; preds = %65, %40
  %43 = phi i32 [ 0, %40 ], [ %67, %65 ]
  %44 = phi i32 [ 7, %40 ], [ %66, %65 ]
  %45 = load ptr, ptr %41, align 4
  %46 = getelementptr %struct.ieee80211_rate, ptr %45, i32 %43, i32 1
  %47 = load i16, ptr %46, align 4
  switch i16 %47, label %59 [
    i16 10, label %48
    i16 20, label %48
    i16 55, label %48
    i16 110, label %48
    i16 60, label %53
    i16 120, label %53
    i16 240, label %53
  ]

48:                                               ; preds = %42, %42, %42, %42
  %49 = getelementptr %struct.ieee80211_rate, ptr %45, i32 %43
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %50, 12
  store i32 %51, ptr %49, align 4
  %52 = add i32 %44, -1
  br label %65

53:                                               ; preds = %42, %42, %42
  %54 = getelementptr %struct.ieee80211_rate, ptr %45, i32 %43
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %55, 8
  store i32 %56, ptr %54, align 4
  %57 = add i32 %44, -1
  %58 = load ptr, ptr %41, align 4
  br label %59

59:                                               ; preds = %53, %42
  %60 = phi ptr [ %45, %42 ], [ %58, %53 ]
  %61 = phi i32 [ %44, %42 ], [ %57, %53 ]
  %62 = getelementptr %struct.ieee80211_rate, ptr %60, i32 %43
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, 16
  store i32 %64, ptr %62, align 4
  br label %65

65:                                               ; preds = %59, %48
  %66 = phi i32 [ %61, %59 ], [ %52, %48 ]
  %67 = add nuw nsw i32 %43, 1
  %68 = load i32, ptr %37, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %42, label %70

70:                                               ; preds = %65
  switch i32 %66, label %86 [
    i32 3, label %88
    i32 0, label %88
  ]

71:                                               ; preds = %7
  %72 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 5, i32 1
  %73 = load i8, ptr %72, align 2, !range !10
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %76, !prof !8

75:                                               ; preds = %71
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef null) #19
  br label %76

76:                                               ; preds = %75, %71
  %77 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 5, i32 4
  %78 = load i8, ptr %77, align 1
  %79 = and i8 %78, 30
  %80 = icmp eq i8 %79, 30
  br i1 %80, label %88, label %86, !prof !9

81:                                               ; preds = %7
  %82 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 7, i32 2
  %83 = load i8, ptr %82, align 1
  %84 = and i8 %83, 3
  %85 = icmp eq i8 %84, 3
  br i1 %85, label %86, label %88, !prof !8

86:                                               ; preds = %81, %76, %70, %36, %34, %10, %7
  %87 = phi i32 [ 210, %10 ], [ 210, %34 ], [ 239, %36 ], [ 239, %70 ], [ 244, %76 ], [ 250, %81 ], [ 254, %7 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %87, i32 noundef 9, ptr noundef null) #19
  br label %88

88:                                               ; preds = %86, %81, %76, %70, %70, %34, %2
  %89 = add nuw nsw i32 %3, 1
  %90 = icmp eq i32 %89, 6
  br i1 %90, label %91, label %2

91:                                               ; preds = %88
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @cfg80211_supported_cipher_suite(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 27
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 28
  %8 = load ptr, ptr %7, align 16
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %21, label %11

11:                                               ; preds = %15, %6
  %12 = phi i32 [ %13, %15 ], [ 0, %6 ]
  %13 = add nuw nsw i32 %12, 1
  %14 = icmp eq i32 %13, %4
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr i32, ptr %8, i32 %13
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %11

19:                                               ; preds = %15, %11
  %20 = icmp slt i32 %13, %4
  br label %21

21:                                               ; preds = %19, %6, %2
  %22 = phi i1 [ false, %2 ], [ true, %6 ], [ %20, %19 ]
  ret i1 %22
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @cfg80211_valid_key_idx(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  br i1 %2, label %28, label %4

4:                                                ; preds = %3
  %5 = getelementptr %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 14, i32 5
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 66
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 27
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 28
  %15 = load ptr, ptr %14, align 16
  br label %16

16:                                               ; preds = %21, %13
  %17 = phi i1 [ true, %13 ], [ %23, %21 ]
  %18 = phi i32 [ 0, %13 ], [ %22, %21 ]
  %19 = getelementptr i32, ptr %15, i32 %18
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %21 [
    i32 1027078, label %25
    i32 1027085, label %25
    i32 1027083, label %25
    i32 1027084, label %25
  ]

21:                                               ; preds = %16
  %22 = add nuw nsw i32 %18, 1
  %23 = icmp slt i32 %22, %11
  %24 = icmp eq i32 %22, %11
  br i1 %24, label %25, label %16

25:                                               ; preds = %21, %16, %16, %16, %16
  %26 = phi i1 [ %23, %21 ], [ %17, %16 ], [ %17, %16 ], [ %17, %16 ], [ %17, %16 ]
  %27 = select i1 %26, i32 5, i32 3
  br label %28

28:                                               ; preds = %25, %9, %4, %3
  %29 = phi i32 [ 3, %3 ], [ 7, %4 ], [ 3, %9 ], [ %27, %25 ]
  %30 = icmp sgt i32 %1, -1
  %31 = icmp sge i32 %29, %1
  %32 = select i1 %30, i1 %31, i1 false
  ret i1 %32
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @cfg80211_validate_key_settings(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef readnone %4) local_unnamed_addr #0 {
  br i1 %3, label %30, label %6

6:                                                ; preds = %5
  %7 = getelementptr %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 14, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 66
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 27
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 28
  %17 = load ptr, ptr %16, align 16
  br label %18

18:                                               ; preds = %23, %15
  %19 = phi i1 [ true, %15 ], [ %25, %23 ]
  %20 = phi i32 [ 0, %15 ], [ %24, %23 ]
  %21 = getelementptr i32, ptr %17, i32 %20
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %23 [
    i32 1027078, label %27
    i32 1027085, label %27
    i32 1027083, label %27
    i32 1027084, label %27
  ]

23:                                               ; preds = %18
  %24 = add nuw nsw i32 %20, 1
  %25 = icmp slt i32 %24, %13
  %26 = icmp eq i32 %24, %13
  br i1 %26, label %27, label %18

27:                                               ; preds = %23, %18, %18, %18, %18
  %28 = phi i1 [ %25, %23 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ]
  %29 = select i1 %28, i32 5, i32 3
  br label %30

30:                                               ; preds = %27, %11, %6, %5
  %31 = phi i32 [ 3, %5 ], [ 7, %6 ], [ 3, %11 ], [ %29, %27 ]
  %32 = icmp sgt i32 %2, -1
  %33 = icmp sge i32 %31, %2
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %154

35:                                               ; preds = %30
  %36 = xor i1 %3, true
  %37 = icmp ne ptr %4, null
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 11
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 256
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %154, label %46

44:                                               ; preds = %35
  %45 = or i1 %37, %36
  br i1 %45, label %46, label %154

46:                                               ; preds = %44, %39
  %47 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  switch i32 %48, label %125 [
    i32 1027074, label %49
    i32 1027076, label %56
    i32 1027082, label %56
    i32 1027080, label %56
    i32 1027081, label %56
    i32 1027078, label %75
    i32 1027085, label %75
    i32 1027083, label %75
    i32 1027084, label %75
    i32 1027073, label %78
    i32 1027077, label %78
  ]

49:                                               ; preds = %46
  %50 = icmp ne i32 %2, 0
  %51 = and i1 %50, %3
  br i1 %51, label %154, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %85, label %154

56:                                               ; preds = %46, %46, %46, %46
  %57 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = icmp ne i32 %58, 1
  %60 = or i1 %59, %3
  %61 = xor i1 %60, true
  %62 = icmp eq i32 %58, 2
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %154, label %64

64:                                               ; preds = %56
  %65 = getelementptr %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 14, i32 4
  %66 = load i8, ptr %65, align 1
  %67 = and i8 %66, 16
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = icmp ugt i32 %2, 1
  %71 = and i1 %70, %3
  br i1 %71, label %154, label %80

72:                                               ; preds = %64
  %73 = icmp ne i32 %2, 0
  %74 = and i1 %73, %3
  br i1 %74, label %154, label %80

75:                                               ; preds = %46, %46, %46, %46
  %76 = icmp ult i32 %2, 4
  %77 = or i1 %76, %3
  br i1 %77, label %154, label %80

78:                                               ; preds = %46, %46
  %79 = icmp ugt i32 %2, 3
  br i1 %79, label %154, label %80

80:                                               ; preds = %78, %75, %72, %69
  switch i32 %48, label %125 [
    i32 1027073, label %81
    i32 1027074, label %85
    i32 1027076, label %89
    i32 1027082, label %93
    i32 1027080, label %97
    i32 1027081, label %101
    i32 1027077, label %105
    i32 1027078, label %109
    i32 1027085, label %113
    i32 1027083, label %117
    i32 1027084, label %121
  ]

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 5
  br i1 %84, label %125, label %154

85:                                               ; preds = %80, %52
  %86 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 32
  br i1 %88, label %125, label %154

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 16
  br i1 %92, label %125, label %154

93:                                               ; preds = %80
  %94 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 32
  br i1 %96, label %125, label %154

97:                                               ; preds = %80
  %98 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 16
  br i1 %100, label %125, label %154

101:                                              ; preds = %80
  %102 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 32
  br i1 %104, label %125, label %154

105:                                              ; preds = %80
  %106 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 13
  br i1 %108, label %125, label %154

109:                                              ; preds = %80
  %110 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 16
  br i1 %112, label %125, label %154

113:                                              ; preds = %80
  %114 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 32
  br i1 %116, label %125, label %154

117:                                              ; preds = %80
  %118 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, 16
  br i1 %120, label %125, label %154

121:                                              ; preds = %80
  %122 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 32
  br i1 %124, label %125, label %154

125:                                              ; preds = %121, %117, %113, %109, %105, %101, %97, %93, %89, %85, %81, %80, %46
  %126 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %125
  switch i32 %48, label %134 [
    i32 1027073, label %154
    i32 1027077, label %154
    i32 1027074, label %130
    i32 1027076, label %130
    i32 1027082, label %130
    i32 1027080, label %130
    i32 1027081, label %130
    i32 1027078, label %130
    i32 1027085, label %130
    i32 1027083, label %130
    i32 1027084, label %130
  ]

130:                                              ; preds = %129, %129, %129, %129, %129, %129, %129, %129, %129
  %131 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 6
  br i1 %133, label %134, label %154

134:                                              ; preds = %130, %129, %125
  %135 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 27
  %136 = load i32, ptr %135, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 28
  %140 = load ptr, ptr %139, align 16
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, %48
  br i1 %142, label %154, label %143

143:                                              ; preds = %147, %138
  %144 = phi i32 [ %145, %147 ], [ 0, %138 ]
  %145 = add nuw nsw i32 %144, 1
  %146 = icmp eq i32 %145, %136
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = getelementptr i32, ptr %140, i32 %145
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, %48
  br i1 %150, label %151, label %143

151:                                              ; preds = %147, %143
  %152 = icmp slt i32 %145, %136
  %153 = select i1 %152, i32 0, i32 -22
  br label %154

154:                                              ; preds = %151, %138, %134, %130, %129, %129, %121, %117, %113, %109, %105, %101, %97, %93, %89, %85, %81, %78, %75, %72, %69, %56, %52, %49, %44, %39, %30
  %155 = phi i32 [ -22, %30 ], [ -22, %39 ], [ -22, %44 ], [ -22, %49 ], [ -22, %52 ], [ -22, %56 ], [ -22, %69 ], [ -22, %72 ], [ -22, %75 ], [ -22, %78 ], [ -22, %81 ], [ -22, %85 ], [ -22, %89 ], [ -22, %93 ], [ -22, %97 ], [ -22, %101 ], [ -22, %105 ], [ -22, %109 ], [ -22, %113 ], [ -22, %117 ], [ -22, %121 ], [ -22, %129 ], [ -22, %129 ], [ -22, %130 ], [ -22, %134 ], [ 0, %138 ], [ %153, %151 ]
  ret i32 %155
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext %0) #4 {
  %2 = lshr i16 %0, 2
  %3 = trunc i16 %2 to i2
  switch i2 %3, label %21 [
    i2 -1, label %22
    i2 -2, label %4
    i2 0, label %14
    i2 1, label %17
  ]

4:                                                ; preds = %1
  %5 = and i16 %0, 768
  %6 = icmp eq i16 %5, 768
  %7 = select i1 %6, i32 30, i32 24
  %8 = and i16 %0, 140
  %9 = icmp eq i16 %8, 136
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = icmp slt i16 %0, 0
  %12 = select i1 %11, i32 6, i32 2
  %13 = add nuw nsw i32 %7, %12
  br label %22

14:                                               ; preds = %1
  %15 = icmp slt i16 %0, 0
  %16 = select i1 %15, i32 28, i32 24
  br label %22

17:                                               ; preds = %1
  %18 = and i16 %0, 224
  %19 = icmp eq i16 %18, 192
  %20 = select i1 %19, i32 10, i32 16
  br label %22

21:                                               ; preds = %1
  unreachable

22:                                               ; preds = %17, %14, %10, %4, %1
  %23 = phi i32 [ %7, %4 ], [ 4, %1 ], [ %13, %10 ], [ %16, %14 ], [ %20, %17 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee80211_get_hdrlen_from_skb(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = icmp ult i32 %3, 10
  br i1 %4, label %33, label %5, !prof !8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = load i16, ptr %7, align 2
  %9 = lshr i16 %8, 2
  %10 = trunc i16 %9 to i2
  switch i2 %10, label %28 [
    i2 -1, label %29
    i2 -2, label %11
    i2 0, label %21
    i2 1, label %24
  ]

11:                                               ; preds = %5
  %12 = and i16 %8, 768
  %13 = icmp eq i16 %12, 768
  %14 = select i1 %13, i32 30, i32 24
  %15 = and i16 %8, 140
  %16 = icmp eq i16 %15, 136
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = icmp slt i16 %8, 0
  %19 = select i1 %18, i32 6, i32 2
  %20 = add nuw nsw i32 %14, %19
  br label %29

21:                                               ; preds = %5
  %22 = icmp slt i16 %8, 0
  %23 = select i1 %22, i32 28, i32 24
  br label %29

24:                                               ; preds = %5
  %25 = and i16 %8, 224
  %26 = icmp eq i16 %25, 192
  %27 = select i1 %26, i32 10, i32 16
  br label %29

28:                                               ; preds = %5
  unreachable

29:                                               ; preds = %24, %21, %17, %11, %5
  %30 = phi i32 [ %14, %11 ], [ 4, %5 ], [ %20, %17 ], [ %23, %21 ], [ %27, %24 ]
  %31 = icmp ugt i32 %30, %3
  %32 = select i1 %31, i32 0, i32 %30, !prof !8
  br label %33

33:                                               ; preds = %29, %1
  %34 = phi i32 [ 0, %1 ], [ %32, %29 ]
  ret i32 %34
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee80211_get_mesh_hdrlen(ptr nocapture noundef readonly %0) #7 {
  %2 = load i8, ptr %0, align 2
  %3 = and i8 %2, 3
  %4 = icmp eq i8 %3, 1
  %5 = select i1 %4, i32 12, i32 6
  %6 = icmp eq i8 %3, 2
  %7 = select i1 %6, i32 18, i32 %5
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_data_to_8023_exthdr(ptr noundef %0, ptr noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4, i1 noundef zeroext %5) #2 {
  %7 = alloca %struct.anon.145, align 8
  %8 = alloca %struct.ethhdr, align 4
  %9 = alloca i8, align 1
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store i64 0, ptr %7, align 8, !annotation !11
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %8) #19
  %12 = getelementptr inbounds i8, ptr %8, i32 12
  store i16 0, ptr %12, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #19
  store i8 0, ptr %9, align 1
  %13 = load i16, ptr %11, align 2
  %14 = and i16 %13, 76
  %15 = icmp eq i16 %14, 8
  br i1 %15, label %16, label %187, !prof !9

16:                                               ; preds = %6
  %17 = lshr i16 %13, 2
  %18 = trunc i16 %17 to i2
  switch i2 %18, label %36 [
    i2 -1, label %37
    i2 -2, label %19
    i2 0, label %29
    i2 1, label %32
  ]

19:                                               ; preds = %16
  %20 = and i16 %13, 768
  %21 = icmp eq i16 %20, 768
  %22 = select i1 %21, i32 30, i32 24
  %23 = and i16 %13, 140
  %24 = icmp eq i16 %23, 136
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = icmp slt i16 %13, 0
  %27 = select i1 %26, i32 6, i32 2
  %28 = add nuw nsw i32 %22, %27
  br label %37

29:                                               ; preds = %16
  %30 = icmp slt i16 %13, 0
  %31 = select i1 %30, i32 28, i32 24
  br label %37

32:                                               ; preds = %16
  %33 = and i16 %13, 224
  %34 = icmp eq i16 %33, 192
  %35 = select i1 %34, i32 10, i32 16
  br label %37

36:                                               ; preds = %16
  unreachable

37:                                               ; preds = %32, %29, %25, %19, %16
  %38 = phi i32 [ %22, %19 ], [ 4, %16 ], [ %28, %25 ], [ %31, %29 ], [ %35, %32 ]
  %39 = zext i8 %4 to i32
  %40 = add nuw nsw i32 %38, %39
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %42 = load i32, ptr %41, align 8
  %43 = add nuw nsw i32 %40, 8
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %187, label %45

45:                                               ; preds = %37
  %46 = and i16 %13, 256
  %47 = icmp eq i16 %46, 0
  %48 = getelementptr inbounds %struct.ieee80211_hdr, ptr %11, i32 0, i32 4
  %49 = getelementptr inbounds %struct.ieee80211_hdr, ptr %11, i32 0, i32 2
  %50 = select i1 %47, ptr %49, ptr %48
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %8, ptr noundef align 1 dereferenceable(6) %50, i32 6, i1 false)
  %51 = getelementptr inbounds %struct.ethhdr, ptr %8, i32 0, i32 1
  %52 = load i16, ptr %11, align 2
  %53 = and i16 %52, 768
  %54 = icmp eq i16 %53, 768
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.ieee80211_hdr, ptr %11, i32 0, i32 6
  br label %62

57:                                               ; preds = %45
  %58 = and i16 %52, 512
  %59 = icmp eq i16 %58, 0
  %60 = getelementptr inbounds %struct.ieee80211_hdr, ptr %11, i32 0, i32 3
  %61 = select i1 %59, ptr %60, ptr %48
  br label %62

62:                                               ; preds = %57, %55
  %63 = phi ptr [ %56, %55 ], [ %61, %57 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %51, ptr noundef align 1 dereferenceable(6) %63, i32 6, i1 false)
  %64 = icmp eq i32 %3, 7
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = call i32 @skb_copy_bits(ptr noundef %0, i32 noundef %40, ptr noundef nonnull %9, i32 noundef 1) #19
  %67 = load i8, ptr %9, align 1
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i8 [ %67, %65 ], [ 0, %62 ]
  %70 = and i8 %69, 3
  store i8 %70, ptr %9, align 1
  %71 = load i16, ptr %11, align 2
  %72 = lshr i16 %71, 8
  %73 = and i16 %72, 3
  %74 = zext i16 %73 to i32
  switch i32 %74, label %125 [
    i32 1, label %75
    i32 3, label %76
    i32 2, label %92
    i32 0, label %124
  ]

75:                                               ; preds = %68
  switch i32 %3, label %187 [
    i32 9, label %126
    i32 4, label %126
    i32 3, label %126
  ]

76:                                               ; preds = %68
  switch i32 %3, label %187 [
    i32 7, label %77
    i32 4, label %77
    i32 2, label %77
  ]

77:                                               ; preds = %76, %76, %76
  br i1 %64, label %78, label %126

78:                                               ; preds = %77
  %79 = trunc i8 %69 to i2
  switch i2 %79, label %84 [
    i2 1, label %187
    i2 -2, label %80
  ]

80:                                               ; preds = %78
  %81 = add nuw nsw i32 %40, 6
  %82 = call i32 @skb_copy_bits(ptr noundef %0, i32 noundef %81, ptr noundef nonnull %8, i32 noundef 12) #19
  %83 = load i8, ptr %9, align 1
  br label %84

84:                                               ; preds = %80, %78
  %85 = phi i8 [ %70, %78 ], [ %83, %80 ]
  %86 = and i8 %85, 3
  %87 = icmp eq i8 %86, 1
  %88 = select i1 %87, i32 12, i32 6
  %89 = icmp eq i8 %86, 2
  %90 = select i1 %89, i32 18, i32 %88
  %91 = add nuw nsw i32 %90, %40
  br label %126

92:                                               ; preds = %68
  switch i32 %3, label %187 [
    i32 8, label %93
    i32 7, label %93
    i32 2, label %93
  ]

93:                                               ; preds = %92, %92, %92
  %94 = load i32, ptr %8, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %51, align 4
  %99 = load i32, ptr %2, align 4
  %100 = xor i32 %99, %98
  %101 = getelementptr inbounds %struct.ethhdr, ptr %8, i32 0, i32 1, i32 4
  %102 = load i16, ptr %101, align 2
  %103 = getelementptr i8, ptr %2, i32 4
  %104 = load i16, ptr %103, align 2
  %105 = xor i16 %104, %102
  %106 = zext i16 %105 to i32
  %107 = or i32 %100, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %187, label %109

109:                                              ; preds = %97, %93
  br i1 %64, label %110, label %126

110:                                              ; preds = %109
  %111 = trunc i8 %69 to i2
  switch i2 %111, label %116 [
    i2 -2, label %187
    i2 1, label %112
  ]

112:                                              ; preds = %110
  %113 = add nuw nsw i32 %40, 6
  %114 = call i32 @skb_copy_bits(ptr noundef %0, i32 noundef %113, ptr noundef %51, i32 noundef 6) #19
  %115 = load i8, ptr %9, align 1
  br label %116

116:                                              ; preds = %112, %110
  %117 = phi i8 [ %70, %110 ], [ %115, %112 ]
  %118 = and i8 %117, 3
  %119 = icmp eq i8 %118, 1
  %120 = select i1 %119, i32 12, i32 6
  %121 = icmp eq i8 %118, 2
  %122 = select i1 %121, i32 18, i32 %120
  %123 = add nuw nsw i32 %122, %40
  br label %126

124:                                              ; preds = %68
  switch i32 %3, label %187 [
    i32 11, label %126
    i32 2, label %126
    i32 1, label %126
  ]

125:                                              ; preds = %68
  unreachable

126:                                              ; preds = %124, %124, %124, %116, %109, %84, %77, %75, %75, %75
  %127 = phi i32 [ %40, %124 ], [ %123, %116 ], [ %40, %109 ], [ %91, %84 ], [ %40, %77 ], [ %40, %75 ], [ %40, %124 ], [ %40, %124 ], [ %40, %75 ], [ %40, %75 ]
  %128 = call i32 @skb_copy_bits(ptr noundef %0, i32 noundef %127, ptr noundef nonnull %7, i32 noundef 8) #19
  %129 = getelementptr inbounds %struct.anon.145, ptr %7, i32 0, i32 1
  %130 = load i16, ptr %129, align 2
  %131 = getelementptr inbounds %struct.ethhdr, ptr %8, i32 0, i32 2
  store i16 %130, ptr %131, align 4
  %132 = load i32, ptr %7, align 8
  br i1 %5, label %133, label %137

133:                                              ; preds = %126
  %134 = getelementptr inbounds i8, ptr %7, i32 4
  %135 = load i16, ptr %134, align 4
  %136 = xor i32 %132, 240298
  br label %146

137:                                              ; preds = %126
  %138 = xor i32 %132, 240298
  %139 = getelementptr inbounds i8, ptr %7, i32 4
  %140 = load i16, ptr %139, align 4
  %141 = zext i16 %140 to i32
  %142 = or i32 %138, %141
  %143 = freeze i32 %142
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  switch i16 %130, label %153 [
    i16 -3200, label %146
    i16 14209, label %146
  ]

146:                                              ; preds = %145, %145, %137, %133
  %147 = phi i32 [ %136, %133 ], [ %138, %145 ], [ %138, %145 ], [ %138, %137 ]
  %148 = phi i16 [ %135, %133 ], [ %140, %145 ], [ %140, %145 ], [ %140, %137 ]
  %149 = xor i16 %148, -2048
  %150 = zext i16 %149 to i32
  %151 = or i32 %147, %150
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156, !prof !9

153:                                              ; preds = %146, %145
  %154 = add nuw nsw i32 %127, 8
  %155 = load i32, ptr %41, align 8
  br label %161

156:                                              ; preds = %146
  %157 = load i32, ptr %41, align 8
  %158 = sub i32 %157, %127
  %159 = trunc i32 %158 to i16
  %160 = call i16 @llvm.bswap.i16(i16 %159)
  store i16 %160, ptr %131, align 4
  br label %161

161:                                              ; preds = %156, %153
  %162 = phi i32 [ %155, %153 ], [ %157, %156 ]
  %163 = phi i32 [ %154, %153 ], [ %127, %156 ]
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %181, label %165, !prof !8

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %167 = load i32, ptr %166, align 4
  %168 = sub i32 %162, %167
  %169 = icmp ugt i32 %163, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = sub i32 %163, %168
  %172 = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %171) #19
  %173 = icmp eq ptr %172, null
  br i1 %173, label %181, label %174

174:                                              ; preds = %170
  %175 = load i32, ptr %41, align 8
  br label %176

176:                                              ; preds = %174, %165
  %177 = phi i32 [ %175, %174 ], [ %162, %165 ]
  %178 = sub i32 %177, %163
  store i32 %178, ptr %41, align 8
  %179 = load ptr, ptr %10, align 4
  %180 = getelementptr i8, ptr %179, i32 %163
  store ptr %180, ptr %10, align 4
  br label %181

181:                                              ; preds = %176, %170, %161
  %182 = icmp eq ptr %1, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %181
  %184 = call ptr @skb_push(ptr noundef %0, i32 noundef 14) #19
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi ptr [ %1, %181 ], [ %184, %183 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(14) %186, ptr noundef nonnull align 4 dereferenceable(14) %8, i32 14, i1 false)
  br label %187

187:                                              ; preds = %185, %124, %110, %97, %92, %78, %76, %75, %37, %6
  %188 = phi i32 [ 0, %185 ], [ -1, %6 ], [ -1, %37 ], [ -1, %75 ], [ -1, %78 ], [ -1, %92 ], [ -1, %97 ], [ -1, %110 ], [ -1, %124 ], [ -1, %76 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  ret i32 %188
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ieee80211_amsdu_to_8023s(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, i32 %3, i32 noundef %4, ptr noundef readonly %5, ptr noundef readonly %6) #2 {
  %8 = alloca %struct.ethhdr, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %8) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(14) %8, i8 0, i32 14, i1 false), !annotation !11
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 32
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br label %19

19:                                               ; preds = %13, %7
  %20 = phi i1 [ false, %7 ], [ %18, %13 ]
  %21 = getelementptr inbounds %struct.ethhdr, ptr %8, i32 0, i32 2
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %23 = getelementptr inbounds i8, ptr %8, i32 4
  %24 = icmp eq ptr %5, null
  %25 = getelementptr i8, ptr %5, i32 4
  %26 = icmp eq ptr %6, null
  %27 = getelementptr inbounds %struct.ethhdr, ptr %8, i32 0, i32 1
  %28 = getelementptr i8, ptr %6, i32 4
  %29 = getelementptr inbounds %struct.ethhdr, ptr %8, i32 0, i32 1, i32 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %31 = add i32 %4, 19
  %32 = and i32 %31, -4
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %36 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 5
  %38 = getelementptr inbounds %struct.sk_buff_list, ptr %1, i32 0, i32 1
  %39 = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 1
  br label %40

40:                                               ; preds = %277, %19
  %41 = phi i1 [ false, %19 ], [ %279, %277 ]
  %42 = phi i32 [ 0, %19 ], [ %278, %277 ]
  %43 = call i32 @skb_copy_bits(ptr noundef %0, i32 noundef %42, ptr noundef nonnull %8, i32 noundef 14) #19
  %44 = load i16, ptr %21, align 4
  %45 = call i16 @llvm.bswap.i16(i16 %44)
  %46 = zext i16 %45 to i32
  %47 = add nuw nsw i32 %46, 14
  %48 = sub i16 2, %45
  %49 = and i16 %48, 3
  %50 = zext i16 %49 to i32
  %51 = load i32, ptr %22, align 8
  %52 = sub i32 %51, %42
  %53 = icmp ugt i32 %47, %52
  br i1 %53, label %281, label %54

54:                                               ; preds = %40
  %55 = load i32, ptr %8, align 4
  %56 = xor i32 %55, 240298
  %57 = load i16, ptr %23, align 4
  %58 = zext i16 %57 to i32
  %59 = or i32 %56, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %281, label %61

61:                                               ; preds = %54
  %62 = add i32 %42, 14
  %63 = add nuw nsw i32 %47, %50
  %64 = icmp ugt i32 %52, %63
  %65 = and i32 %55, 1
  %66 = icmp ne i32 %65, 0
  %67 = select i1 %24, i1 true, i1 %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %61
  %69 = load i32, ptr %5, align 4
  %70 = xor i32 %69, %55
  %71 = load i16, ptr %25, align 2
  %72 = xor i16 %71, %57
  %73 = zext i16 %72 to i32
  %74 = or i32 %70, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %68, %61
  br i1 %26, label %90, label %77

77:                                               ; preds = %76
  %78 = load i32, ptr %6, align 4
  %79 = load i32, ptr %27, align 4
  %80 = xor i32 %79, %78
  %81 = load i16, ptr %28, align 2
  %82 = load i16, ptr %29, align 2
  %83 = xor i16 %82, %81
  %84 = zext i16 %83 to i32
  %85 = or i32 %80, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %77, %68
  %88 = add i32 %62, %46
  %89 = add i32 %88, %50
  br label %277

90:                                               ; preds = %77, %76
  %91 = load i32, ptr %30, align 4
  %92 = icmp ne i32 %91, 0
  %93 = select i1 %92, i1 true, i1 %20
  %94 = select i1 %93, i1 true, i1 %64
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = call ptr @skb_pull(ptr noundef %0, i32 noundef %62) #19
  br label %229

97:                                               ; preds = %90
  %98 = sub i32 %51, %62
  %99 = icmp ult i32 %98, %46
  br i1 %99, label %281, label %100

100:                                              ; preds = %97
  %101 = call i32 @llvm.smin.i32(i32 %46, i32 32) #19
  %102 = select i1 %20, i32 %101, i32 %46
  %103 = add i32 %102, %32
  %104 = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %103, i32 noundef 2592) #19
  %105 = icmp eq ptr %104, null
  br i1 %105, label %281, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 17
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr i8, ptr %108, i32 %32
  store ptr %109, ptr %107, align 4
  %110 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 14
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr i8, ptr %111, i32 %32
  store ptr %112, ptr %110, align 8
  %113 = call ptr @skb_put(ptr noundef nonnull %104, i32 noundef %102) #19
  %114 = call i32 @skb_copy_bits(ptr noundef %0, i32 noundef %62, ptr noundef %113, i32 noundef %102) #19
  %115 = icmp eq i32 %102, %46
  br i1 %115, label %226, label %116

116:                                              ; preds = %106
  %117 = sub nsw i32 %46, %102
  %118 = add i32 %102, %62
  %119 = load ptr, ptr %33, align 4
  %120 = getelementptr inbounds %struct.skb_shared_info, ptr %119, i32 0, i32 12
  %121 = load i32, ptr %22, align 8
  %122 = load i32, ptr %30, align 4
  %123 = sub i32 %121, %122
  %124 = load ptr, ptr %34, align 8
  %125 = load ptr, ptr @mem_map, align 4
  %126 = ptrtoint ptr %124 to i32
  %127 = add i32 %126, 1073741824
  %128 = lshr i32 %127, 12
  %129 = getelementptr %struct.page, ptr %125, i32 %128, i32 1
  %130 = load volatile i32, ptr %129, align 4
  %131 = and i32 %130, 1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133, !prof !9

133:                                              ; preds = %116
  %134 = add i32 %130, -1
  br label %138

135:                                              ; preds = %116
  %136 = getelementptr %struct.page, ptr %125, i32 %128
  %137 = ptrtoint ptr %136 to i32
  br label %138

138:                                              ; preds = %135, %133
  %139 = phi i32 [ %134, %133 ], [ %137, %135 ]
  %140 = inttoptr i32 %139 to ptr
  %141 = load ptr, ptr %35, align 4
  %142 = icmp sgt i32 %123, %118
  br i1 %142, label %158, label %143

143:                                              ; preds = %143, %138
  %144 = phi i32 [ %147, %143 ], [ %118, %138 ]
  %145 = phi ptr [ %152, %143 ], [ %120, %138 ]
  %146 = phi i32 [ %151, %143 ], [ %123, %138 ]
  %147 = sub i32 %144, %146
  %148 = load ptr, ptr %145, align 4
  %149 = call ptr @page_address(ptr noundef %148) #19
  %150 = getelementptr inbounds %struct.bio_vec, ptr %145, i32 0, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr %struct.bio_vec, ptr %145, i32 1
  %153 = icmp slt i32 %147, %151
  br i1 %153, label %154, label %143

154:                                              ; preds = %143
  %155 = getelementptr inbounds %struct.bio_vec, ptr %145, i32 0, i32 2
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr i8, ptr %149, i32 %156
  br label %158

158:                                              ; preds = %154, %138
  %159 = phi i32 [ %151, %154 ], [ %123, %138 ]
  %160 = phi ptr [ %157, %154 ], [ %141, %138 ]
  %161 = phi ptr [ %148, %154 ], [ %140, %138 ]
  %162 = phi ptr [ %152, %154 ], [ %120, %138 ]
  %163 = phi i32 [ %147, %154 ], [ %118, %138 ]
  %164 = getelementptr i8, ptr %160, i32 %163
  %165 = sub i32 %159, %163
  %166 = call i32 @llvm.smin.i32(i32 %165, i32 %117) #19
  %167 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 15
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.page, ptr %161, i32 0, i32 1
  %170 = load volatile i32, ptr %169, align 4
  %171 = and i32 %170, 1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %175, label %173, !prof !9

173:                                              ; preds = %158
  %174 = add i32 %170, -1
  br label %177

175:                                              ; preds = %158
  %176 = ptrtoint ptr %161 to i32
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi i32 [ %174, %173 ], [ %176, %175 ]
  %179 = inttoptr i32 %178 to ptr
  %180 = getelementptr inbounds %struct.page, ptr %179, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %180) #19, !srcloc !12
  %181 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %180, ptr %180, i32 1, ptr elementtype(i32) %180) #19, !srcloc !13
  %182 = call ptr @page_address(ptr noundef %161) #19
  %183 = ptrtoint ptr %164 to i32
  %184 = ptrtoint ptr %182 to i32
  %185 = sub i32 %183, %184
  %186 = getelementptr inbounds %struct.skb_shared_info, ptr %168, i32 0, i32 2
  %187 = load i8, ptr %186, align 2
  %188 = zext i8 %187 to i32
  call void @skb_add_rx_frag(ptr noundef nonnull %104, i32 noundef %188, ptr noundef %161, i32 noundef %185, i32 noundef %166, i32 noundef %159) #19
  %189 = sub i32 %117, %166
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %226

191:                                              ; preds = %211, %177
  %192 = phi i32 [ %223, %211 ], [ %189, %177 ]
  %193 = phi ptr [ %224, %211 ], [ %162, %177 ]
  %194 = getelementptr inbounds %struct.bio_vec, ptr %193, i32 0, i32 1
  %195 = load i32, ptr %194, align 4
  %196 = call i32 @llvm.smin.i32(i32 %192, i32 %195) #19
  %197 = load ptr, ptr %193, align 4
  %198 = call ptr @page_address(ptr noundef %197) #19
  %199 = getelementptr inbounds %struct.bio_vec, ptr %193, i32 0, i32 2
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr i8, ptr %198, i32 %200
  %202 = load ptr, ptr %167, align 4
  %203 = getelementptr inbounds %struct.page, ptr %197, i32 0, i32 1
  %204 = load volatile i32, ptr %203, align 4
  %205 = and i32 %204, 1
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %209, label %207, !prof !9

207:                                              ; preds = %191
  %208 = add i32 %204, -1
  br label %211

209:                                              ; preds = %191
  %210 = ptrtoint ptr %197 to i32
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i32 [ %208, %207 ], [ %210, %209 ]
  %213 = inttoptr i32 %212 to ptr
  %214 = getelementptr inbounds %struct.page, ptr %213, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %214) #19, !srcloc !12
  %215 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %214, ptr %214, i32 1, ptr elementtype(i32) %214) #19, !srcloc !13
  %216 = call ptr @page_address(ptr noundef %197) #19
  %217 = ptrtoint ptr %201 to i32
  %218 = ptrtoint ptr %216 to i32
  %219 = sub i32 %217, %218
  %220 = getelementptr inbounds %struct.skb_shared_info, ptr %202, i32 0, i32 2
  %221 = load i8, ptr %220, align 2
  %222 = zext i8 %221 to i32
  call void @skb_add_rx_frag(ptr noundef nonnull %104, i32 noundef %222, ptr noundef %197, i32 noundef %219, i32 noundef %196, i32 noundef %195) #19
  %223 = sub i32 %192, %196
  %224 = getelementptr %struct.bio_vec, ptr %193, i32 1
  %225 = icmp sgt i32 %223, 0
  br i1 %225, label %191, label %226

226:                                              ; preds = %211, %177, %106
  %227 = add i32 %62, %46
  %228 = add i32 %227, %50
  br label %229

229:                                              ; preds = %226, %95
  %230 = phi ptr [ %104, %226 ], [ %0, %95 ]
  %231 = phi i32 [ %228, %226 ], [ %62, %95 ]
  %232 = phi i1 [ %41, %226 ], [ true, %95 ]
  %233 = getelementptr inbounds %struct.sk_buff, ptr %230, i32 0, i32 17
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr inbounds %struct.sk_buff, ptr %230, i32 0, i32 16
  %236 = load ptr, ptr %235, align 8
  %237 = ptrtoint ptr %234 to i32
  %238 = ptrtoint ptr %236 to i32
  %239 = sub i32 %237, %238
  %240 = trunc i32 %239 to i16
  %241 = getelementptr inbounds %struct.sk_buff, ptr %230, i32 0, i32 13, i32 0, i32 18
  store i16 %240, ptr %241, align 4
  %242 = load ptr, ptr %36, align 8
  %243 = getelementptr inbounds %struct.anon.43, ptr %230, i32 0, i32 2
  store ptr %242, ptr %243, align 8
  %244 = load i32, ptr %37, align 8
  %245 = getelementptr inbounds %struct.sk_buff, ptr %230, i32 0, i32 13, i32 0, i32 5
  store i32 %244, ptr %245, align 8
  %246 = getelementptr i8, ptr %234, i32 6
  %247 = load i8, ptr %246, align 1
  %248 = zext i8 %247 to i16
  %249 = shl nuw i16 %248, 8
  %250 = getelementptr i8, ptr %234, i32 7
  %251 = load i8, ptr %250, align 1
  %252 = zext i8 %251 to i16
  %253 = or i16 %249, %252
  %254 = load i32, ptr %234, align 4
  %255 = xor i32 %254, 240298
  %256 = getelementptr i8, ptr %234, i32 4
  %257 = load i16, ptr %256, align 2
  %258 = zext i16 %257 to i32
  %259 = or i32 %255, %258
  %260 = freeze i32 %259
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %229
  switch i16 %253, label %268 [
    i16 -32457, label %263
    i16 -32525, label %263
  ]

263:                                              ; preds = %262, %262, %229
  %264 = xor i16 %257, -2048
  %265 = zext i16 %264 to i32
  %266 = or i32 %255, %265
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %271, !prof !9

268:                                              ; preds = %263, %262
  %269 = call i16 @llvm.bswap.i16(i16 %253)
  store i16 %269, ptr %21, align 4
  %270 = call ptr @skb_pull(ptr noundef %230, i32 noundef 8) #19
  br label %271

271:                                              ; preds = %268, %263
  %272 = call ptr @skb_push(ptr noundef %230, i32 noundef 14) #19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(14) %272, ptr noundef nonnull align 4 dereferenceable(14) %8, i32 14, i1 false)
  %273 = load ptr, ptr %38, align 4
  store volatile ptr %1, ptr %230, align 8
  %274 = getelementptr inbounds %struct.anon.43, ptr %230, i32 0, i32 1
  store volatile ptr %273, ptr %274, align 4
  store volatile ptr %230, ptr %38, align 4
  store volatile ptr %230, ptr %273, align 4
  %275 = load i32, ptr %39, align 4
  %276 = add i32 %275, 1
  store volatile i32 %276, ptr %39, align 4
  br label %277

277:                                              ; preds = %271, %87
  %278 = phi i32 [ %231, %271 ], [ %89, %87 ]
  %279 = phi i1 [ %232, %271 ], [ %41, %87 ]
  br i1 %64, label %40, label %280

280:                                              ; preds = %277
  br i1 %279, label %299, label %298

281:                                              ; preds = %100, %97, %54, %40
  %282 = load ptr, ptr %1, align 4
  %283 = icmp eq ptr %282, %1
  %284 = icmp eq ptr %282, null
  %285 = or i1 %283, %284
  br i1 %285, label %298, label %286

286:                                              ; preds = %286, %281
  %287 = phi ptr [ %294, %286 ], [ %282, %281 ]
  %288 = load i32, ptr %39, align 4
  %289 = add i32 %288, -1
  store volatile i32 %289, ptr %39, align 4
  %290 = load ptr, ptr %287, align 8
  %291 = getelementptr inbounds %struct.anon.43, ptr %287, i32 0, i32 1
  %292 = load ptr, ptr %291, align 4
  store ptr null, ptr %291, align 4
  store ptr null, ptr %287, align 8
  %293 = getelementptr inbounds %struct.anon.43, ptr %290, i32 0, i32 1
  store volatile ptr %292, ptr %293, align 4
  store volatile ptr %290, ptr %292, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %287, i32 noundef 0) #19
  %294 = load ptr, ptr %1, align 4
  %295 = icmp eq ptr %294, %1
  %296 = icmp eq ptr %294, null
  %297 = or i1 %295, %296
  br i1 %297, label %298, label %286

298:                                              ; preds = %286, %281, %280
  call void @consume_skb(ptr noundef %0) #19
  br label %299

299:                                              ; preds = %298, %280
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %8) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_classify8021d(ptr noundef %0, ptr noundef readonly %1) #2 {
  %3 = alloca %struct.mpls_label, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -8
  %7 = icmp eq i32 %6, 256
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = add nsw i32 %5, -256
  br label %168

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %12 = load i16, ptr %11, align 2
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 9
  %17 = load i16, ptr %16, align 2
  %18 = icmp ult i16 %17, 8192
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = lshr i16 %17, 13
  %21 = zext i16 %20 to i32
  br label %168

22:                                               ; preds = %15, %10
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %24 = load i16, ptr %23, align 8
  switch i16 %24, label %69 [
    i16 8, label %25
    i16 -8826, label %34
    i16 18312, label %45
    i16 18568, label %45
    i16 6025, label %172
  ]

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = getelementptr i8, ptr %27, i32 %30
  %32 = getelementptr inbounds %struct.iphdr, ptr %31, i32 0, i32 1
  %33 = load i8, ptr %32, align 1
  br label %70

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = getelementptr i8, ptr %36, i32 %39
  %41 = load i16, ptr %40, align 2
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #19
  %43 = lshr i16 %42, 4
  %44 = trunc i16 %43 to i8
  br label %70

45:                                               ; preds = %22, %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  store i32 0, ptr %3, align 4, !annotation !11
  %46 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %47, -14
  %51 = sub i32 %50, %49
  %52 = icmp sgt i32 %51, 3
  br i1 %52, label %58, label %53, !prof !9

53:                                               ; preds = %45
  %54 = icmp eq ptr %0, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %53
  %56 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef 14, ptr noundef nonnull %3, i32 noundef 4) #19
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %63, label %64

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 14
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %55, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  br label %172

64:                                               ; preds = %58, %55
  %65 = phi ptr [ %61, %58 ], [ %3, %55 ]
  %66 = load i32, ptr %65, align 4
  %67 = lshr i32 %66, 17
  %68 = and i32 %67, 7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  br label %168

69:                                               ; preds = %22
  br label %172

70:                                               ; preds = %34, %25
  %71 = phi i8 [ %44, %34 ], [ %33, %25 ]
  %72 = and i8 %71, -4
  %73 = zext i8 %72 to i32
  %74 = icmp eq ptr %1, null
  br i1 %74, label %166, label %75

75:                                               ; preds = %70
  %76 = lshr exact i32 %73, 2
  %77 = load i8, ptr %1, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i8 %77, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %96, %75
  %81 = trunc i32 %76 to i8
  %82 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 2, i32 0
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp ult i32 %76, %84
  br i1 %85, label %103, label %99

86:                                               ; preds = %96, %75
  %87 = phi i32 [ %97, %96 ], [ 0, %75 ]
  %88 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 1, i32 %87
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %76, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 1, i32 %87, i32 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  br label %168

96:                                               ; preds = %86
  %97 = add nuw nsw i32 %87, 1
  %98 = icmp eq i32 %97, %78
  br i1 %98, label %80, label %86

99:                                               ; preds = %80
  %100 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 2, i32 0, i32 1
  %101 = load i8, ptr %100, align 1
  %102 = icmp ult i8 %101, %81
  br i1 %102, label %103, label %168

103:                                              ; preds = %99, %80
  %104 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 2, i32 1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp ult i32 %76, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 2, i32 1, i32 1
  %110 = load i8, ptr %109, align 1
  %111 = icmp ult i8 %110, %81
  br i1 %111, label %112, label %168

112:                                              ; preds = %108, %103
  %113 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 2, i32 2
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp ult i32 %76, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 2, i32 2, i32 1
  %119 = load i8, ptr %118, align 1
  %120 = icmp ult i8 %119, %81
  br i1 %120, label %121, label %168

121:                                              ; preds = %117, %112
  %122 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 2, i32 3
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp ult i32 %76, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %121
  %127 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 2, i32 3, i32 1
  %128 = load i8, ptr %127, align 1
  %129 = icmp ult i8 %128, %81
  br i1 %129, label %130, label %168

130:                                              ; preds = %126, %121
  %131 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 2, i32 4
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp ult i32 %76, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %130
  %136 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 2, i32 4, i32 1
  %137 = load i8, ptr %136, align 1
  %138 = icmp ult i8 %137, %81
  br i1 %138, label %139, label %168

139:                                              ; preds = %135, %130
  %140 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 2, i32 5
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp ult i32 %76, %142
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 2, i32 5, i32 1
  %146 = load i8, ptr %145, align 1
  %147 = icmp ult i8 %146, %81
  br i1 %147, label %148, label %168

148:                                              ; preds = %144, %139
  %149 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 2, i32 6
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp ult i32 %76, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %148
  %154 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 2, i32 6, i32 1
  %155 = load i8, ptr %154, align 1
  %156 = icmp ult i8 %155, %81
  br i1 %156, label %157, label %168

157:                                              ; preds = %153, %148
  %158 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 2, i32 7
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp ult i32 %76, %160
  br i1 %161, label %166, label %162

162:                                              ; preds = %157
  %163 = getelementptr %struct.cfg80211_qos_map, ptr %1, i32 0, i32 2, i32 7, i32 1
  %164 = load i8, ptr %163, align 1
  %165 = icmp ult i8 %164, %81
  br i1 %165, label %166, label %168

166:                                              ; preds = %162, %157, %70
  %167 = lshr i32 %73, 5
  br label %168

168:                                              ; preds = %166, %162, %153, %144, %135, %126, %117, %108, %99, %92, %64, %19, %8
  %169 = phi i32 [ %9, %8 ], [ %21, %19 ], [ %68, %64 ], [ %167, %166 ], [ %95, %92 ], [ 0, %99 ], [ 1, %108 ], [ 2, %117 ], [ 3, %126 ], [ 4, %135 ], [ 5, %144 ], [ 6, %153 ], [ 7, %162 ]
  %170 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %169, i32 16) #19, !srcloc !14
  %171 = and i32 %170, %169
  br label %172

172:                                              ; preds = %168, %69, %63, %22
  %173 = phi i32 [ %171, %168 ], [ 0, %69 ], [ 7, %22 ], [ 0, %63 ]
  ret i32 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ieee80211_bss_get_elem(ptr noundef %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.cfg80211_bss, ptr %0, i32 0, i32 2
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %4, i32 0, i32 4
  %8 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %4, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext %1, ptr noundef %7, i32 noundef %9, ptr noundef null, i32 noundef 0, i32 noundef 0) #19
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi ptr [ %10, %6 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_upload_connect_keys(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #19, !srcloc !15
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %2, i32 -544
  %7 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 18
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %111, label %12

12:                                               ; preds = %106, %5
  %13 = phi ptr [ %109, %106 ], [ %10, %5 ]
  %14 = phi i32 [ %107, %106 ], [ 0, %5 ]
  %15 = getelementptr [4 x %struct.key_params], ptr %13, i32 0, i32 %14, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %106, label %18

18:                                               ; preds = %12
  %19 = getelementptr [4 x %struct.key_params], ptr %13, i32 0, i32 %14
  %20 = trunc i32 %14 to i8
  %21 = getelementptr [4 x %struct.key_params], ptr %13, i32 0, i32 %14, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i8
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_add_key, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %18
  %27 = tail call ptr @llvm.thread.pointer() #19
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 5
  %31 = getelementptr i32, ptr @__cpu_online_mask, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %29, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %38 = tail call i32 @__traceiter_rdev_add_key(ptr noundef null, ptr noundef nonnull %2, ptr noundef %8, i8 noundef zeroext %20, i1 noundef zeroext false, ptr noundef null, i8 noundef zeroext %23) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !17
  br label %39

39:                                               ; preds = %37, %26, %18
  %40 = load ptr, ptr %6, align 32
  %41 = getelementptr inbounds %struct.cfg80211_ops, ptr %40, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %42(ptr noundef nonnull %2, ptr noundef %8, i8 noundef zeroext %20, i1 noundef zeroext false, ptr noundef null, ptr noundef %19) #19
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = tail call ptr @llvm.thread.pointer() #19
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 5
  %51 = getelementptr i32, ptr @__cpu_online_mask, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !18
  %58 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef nonnull %2, i32 noundef %43) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !19
  br label %59

59:                                               ; preds = %57, %46, %39
  %60 = icmp eq i32 %43, 0
  br i1 %60, label %61, label %104

61:                                               ; preds = %59
  %62 = load ptr, ptr %9, align 4
  %63 = getelementptr inbounds %struct.cfg80211_cached_keys, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, %14
  br i1 %65, label %66, label %106

66:                                               ; preds = %61
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_set_default_key, i32 0, i32 1), align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = tail call ptr @llvm.thread.pointer() #19
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 5
  %74 = getelementptr i32, ptr @__cpu_online_mask, i32 %73
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %72, 31
  %77 = shl nuw i32 1, %76
  %78 = and i32 %77, %75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !20
  %81 = tail call i32 @__traceiter_rdev_set_default_key(ptr noundef null, ptr noundef nonnull %2, ptr noundef %8, i8 noundef zeroext %20, i1 noundef zeroext true, i1 noundef zeroext true) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  br label %82

82:                                               ; preds = %80, %69, %66
  %83 = load ptr, ptr %6, align 32
  %84 = getelementptr inbounds %struct.cfg80211_ops, ptr %83, i32 0, i32 9
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 %85(ptr noundef nonnull %2, ptr noundef %8, i8 noundef zeroext %20, i1 noundef zeroext true, i1 noundef zeroext true) #19
  %87 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %82
  %90 = tail call ptr @llvm.thread.pointer() #19
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
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !18
  %101 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef nonnull %2, i32 noundef %86) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !19
  br label %102

102:                                              ; preds = %100, %89, %82
  %103 = icmp eq i32 %86, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %102, %59
  %105 = phi ptr [ @.str.2, %59 ], [ @.str.3, %102 ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull %105, i32 noundef %14) #20
  br label %106

106:                                              ; preds = %104, %102, %61, %12
  %107 = add nuw nsw i32 %14, 1
  %108 = icmp eq i32 %107, 4
  %109 = load ptr, ptr %9, align 4
  br i1 %108, label %110, label %12

110:                                              ; preds = %106
  tail call void @kfree_sensitive(ptr noundef %109) #19
  store ptr null, ptr %9, align 4
  br label %111

111:                                              ; preds = %110, %5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_process_wdev_events(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 24
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #19
  %4 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 23
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %54, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 7
  %9 = getelementptr inbounds %struct.wireless_dev, ptr %0, i32 0, i32 3
  br label %10

10:                                               ; preds = %50, %7
  %11 = phi ptr [ %5, %7 ], [ %52, %50 ]
  %12 = phi i32 [ %3, %7 ], [ %51, %50 ]
  %13 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %12) #19
  tail call void @mutex_lock(ptr noundef %8) #19
  %17 = getelementptr inbounds %struct.cfg80211_event, ptr %11, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %50 [
    i32 0, label %19
    i32 1, label %24
    i32 2, label %26
    i32 3, label %37
    i32 4, label %42
    i32 5, label %48
  ]

19:                                               ; preds = %10
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr inbounds %struct.cfg80211_event, ptr %11, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  tail call void @__cfg80211_connect_result(ptr noundef %20, ptr noundef %21, i1 noundef zeroext %23) #19
  br label %50

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.cfg80211_event, ptr %11, i32 0, i32 2
  tail call void @__cfg80211_roamed(ptr noundef %0, ptr noundef %25) #19
  br label %50

26:                                               ; preds = %10
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr inbounds %struct.cfg80211_event, ptr %11, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.cfg80211_event, ptr %11, i32 0, i32 2, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.cfg80211_event, ptr %11, i32 0, i32 2, i32 0, i32 2
  %33 = load i16, ptr %32, align 4
  %34 = getelementptr inbounds %struct.anon.147, ptr %28, i32 0, i32 3
  %35 = load i8, ptr %34, align 2, !range !10
  %36 = icmp eq i8 %35, 0
  tail call void @__cfg80211_disconnected(ptr noundef %27, ptr noundef %29, i32 noundef %31, i16 noundef zeroext %33, i1 noundef zeroext %36) #19
  br label %50

37:                                               ; preds = %10
  %38 = load ptr, ptr %9, align 4
  %39 = getelementptr inbounds %struct.cfg80211_event, ptr %11, i32 0, i32 2
  %40 = getelementptr inbounds %struct.cfg80211_event, ptr %11, i32 0, i32 2, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  tail call void @__cfg80211_ibss_joined(ptr noundef %38, ptr noundef %39, ptr noundef %41) #19
  br label %50

42:                                               ; preds = %10
  %43 = load ptr, ptr %0, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46, !prof !8

45:                                               ; preds = %42
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #19, !srcloc !15
  unreachable

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %43, i32 -544
  tail call void @__cfg80211_leave(ptr noundef %47, ptr noundef %0) #19
  br label %50

48:                                               ; preds = %10
  %49 = getelementptr inbounds %struct.cfg80211_event, ptr %11, i32 0, i32 2
  tail call void @__cfg80211_port_authorized(ptr noundef %0, ptr noundef %49) #19
  br label %50

50:                                               ; preds = %48, %46, %37, %26, %24, %19, %10
  tail call void @mutex_unlock(ptr noundef %8) #19
  tail call void @kfree(ptr noundef %11) #19
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #19
  %52 = load volatile ptr, ptr %4, align 4
  %53 = icmp eq ptr %52, %4
  br i1 %53, label %54, label %10

54:                                               ; preds = %50, %1
  %55 = phi i32 [ %3, %1 ], [ %51, %50 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %55) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cfg80211_connect_result(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cfg80211_roamed(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cfg80211_disconnected(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cfg80211_ibss_joined(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cfg80211_leave(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cfg80211_port_authorized(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_process_rdev_events(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 61
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -8
  tail call void @cfg80211_process_wdev_events(ptr noundef %7)
  %8 = load ptr, ptr %6, align 4
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_change_iface(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %180, label %10

10:                                               ; preds = %4
  switch i32 %2, label %11 [
    i32 12, label %180
    i32 10, label %180
  ]

11:                                               ; preds = %10
  %12 = load ptr, ptr %0, align 32
  %13 = getelementptr inbounds %struct.cfg80211_ops, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %180, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 9
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = shl nuw i32 1, %2
  %21 = and i32 %20, %19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %180, label %23

23:                                               ; preds = %16
  %24 = icmp eq i32 %8, %2
  br i1 %24, label %105, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %27 = load i64, ptr %26, align 16
  %28 = and i64 %27, 512
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  switch i32 %2, label %31 [
    i32 8, label %180
    i32 2, label %180
    i32 1, label %180
  ]

31:                                               ; preds = %30, %25
  %32 = getelementptr inbounds %struct.wireless_dev, ptr %6, i32 0, i32 8
  store i8 0, ptr %32, align 4
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds %struct.wireless_dev, ptr %33, i32 0, i32 16
  store i8 0, ptr %34, align 4
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds %struct.wireless_dev, ptr %35, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %36) #19
  %37 = load ptr, ptr %0, align 32
  %38 = getelementptr inbounds %struct.cfg80211_ops, ptr %37, i32 0, i32 87
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %79, label %41

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_set_qos_map, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = tail call ptr @llvm.thread.pointer() #19
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 5
  %50 = getelementptr i32, ptr @__cpu_online_mask, i32 %49
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %48, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %53, %51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !22
  %57 = tail call i32 @__traceiter_rdev_set_qos_map(ptr noundef null, ptr noundef %42, ptr noundef %1, ptr noundef null) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !23
  %58 = load ptr, ptr %0, align 32
  %59 = getelementptr inbounds %struct.cfg80211_ops, ptr %58, i32 0, i32 87
  %60 = load ptr, ptr %59, align 4
  br label %61

61:                                               ; preds = %56, %45, %41
  %62 = phi ptr [ %39, %41 ], [ %39, %45 ], [ %60, %56 ]
  %63 = tail call i32 %62(ptr noundef %42, ptr noundef %1, ptr noundef null) #19
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = tail call ptr @llvm.thread.pointer() #19
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %66
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !18
  %78 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %42, i32 noundef %63) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !19
  br label %79

79:                                               ; preds = %77, %66, %61, %31
  %80 = load ptr, ptr %5, align 8
  %81 = getelementptr inbounds %struct.wireless_dev, ptr %80, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %81) #19
  switch i32 %8, label %94 [
    i32 3, label %82
    i32 9, label %82
    i32 1, label %84
    i32 2, label %86
    i32 8, label %86
    i32 11, label %92
  ]

82:                                               ; preds = %79, %79
  %83 = tail call i32 @cfg80211_stop_ap(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true) #19
  br label %94

84:                                               ; preds = %79
  %85 = tail call i32 @cfg80211_leave_ibss(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false) #19
  br label %94

86:                                               ; preds = %79, %79
  %87 = load ptr, ptr %5, align 8
  %88 = getelementptr inbounds %struct.wireless_dev, ptr %87, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %88) #19
  %89 = tail call i32 @cfg80211_disconnect(ptr noundef %0, ptr noundef %1, i16 noundef zeroext 3, i1 noundef zeroext true) #19
  %90 = load ptr, ptr %5, align 8
  %91 = getelementptr inbounds %struct.wireless_dev, ptr %90, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %91) #19
  br label %94

92:                                               ; preds = %79
  %93 = tail call i32 @cfg80211_leave_ocb(ptr noundef %0, ptr noundef %1) #19
  br label %94

94:                                               ; preds = %92, %86, %84, %82, %79
  %95 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48, i32 61
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, %95
  br i1 %97, label %103, label %98

98:                                               ; preds = %98, %94
  %99 = phi ptr [ %101, %98 ], [ %96, %94 ]
  %100 = getelementptr i8, ptr %99, i32 -8
  tail call void @cfg80211_process_wdev_events(ptr noundef %100) #19
  %101 = load ptr, ptr %99, align 4
  %102 = icmp eq ptr %101, %95
  br i1 %102, label %103, label %98

103:                                              ; preds = %98, %94
  %104 = load ptr, ptr %5, align 8
  tail call void @cfg80211_mlme_purge_registrations(ptr noundef %104) #19
  br label %105

105:                                              ; preds = %103, %23
  %106 = getelementptr inbounds %struct.cfg80211_registered_device, ptr %0, i32 0, i32 48
  %107 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_change_virtual_intf, i32 0, i32 1), align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = tail call ptr @llvm.thread.pointer() #19
  %111 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 2
  %112 = load i32, ptr %111, align 8
  %113 = lshr i32 %112, 5
  %114 = getelementptr i32, ptr @__cpu_online_mask, i32 %113
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %112, 31
  %117 = shl nuw i32 1, %116
  %118 = and i32 %117, %115
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %109
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !24
  %121 = tail call i32 @__traceiter_rdev_change_virtual_intf(ptr noundef null, ptr noundef %106, ptr noundef %1, i32 noundef %2) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !25
  br label %122

122:                                              ; preds = %120, %109, %105
  %123 = load ptr, ptr %0, align 32
  %124 = getelementptr inbounds %struct.cfg80211_ops, ptr %123, i32 0, i32 5
  %125 = load ptr, ptr %124, align 4
  %126 = tail call i32 %125(ptr noundef %106, ptr noundef %1, i32 noundef %2, ptr noundef %3) #19
  %127 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %122
  %130 = tail call ptr @llvm.thread.pointer() #19
  %131 = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 2
  %132 = load i32, ptr %131, align 8
  %133 = lshr i32 %132, 5
  %134 = getelementptr i32, ptr @__cpu_online_mask, i32 %133
  %135 = load volatile i32, ptr %134, align 4
  %136 = and i32 %132, 31
  %137 = shl nuw i32 1, %136
  %138 = and i32 %137, %135
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %129
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !18
  %141 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %106, i32 noundef %126) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !19
  br label %142

142:                                              ; preds = %140, %129, %122
  %143 = icmp eq i32 %126, 0
  br i1 %143, label %144, label %180

144:                                              ; preds = %142
  %145 = load ptr, ptr %5, align 8
  %146 = getelementptr inbounds %struct.wireless_dev, ptr %145, i32 0, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, %2
  br i1 %148, label %150, label %149, !prof !9

149:                                              ; preds = %144
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1078, i32 noundef 9, ptr noundef null) #19
  br label %150

150:                                              ; preds = %149, %144
  %151 = icmp eq ptr %3, null
  br i1 %151, label %161, label %152

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.vif_params, ptr %3, i32 0, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %161, label %156

156:                                              ; preds = %152
  %157 = icmp ne i32 %154, 0
  %158 = load ptr, ptr %5, align 8
  %159 = getelementptr inbounds %struct.wireless_dev, ptr %158, i32 0, i32 8
  %160 = zext i1 %157 to i8
  store i8 %160, ptr %159, align 4
  br label %161

161:                                              ; preds = %156, %152, %150
  %162 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %163 = load i64, ptr %162, align 16
  %164 = and i64 %163, -65
  store i64 %164, ptr %162, align 16
  switch i32 %2, label %173 [
    i32 2, label %165
    i32 11, label %170
    i32 8, label %170
    i32 1, label %170
    i32 5, label %172
    i32 10, label %172
    i32 12, label %172
  ]

165:                                              ; preds = %161
  %166 = load ptr, ptr %5, align 8
  %167 = getelementptr inbounds %struct.wireless_dev, ptr %166, i32 0, i32 8
  %168 = load i8, ptr %167, align 4, !range !10
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165, %161, %161, %161
  %171 = or i64 %163, 64
  store i64 %171, ptr %162, align 16
  br label %173

172:                                              ; preds = %161, %161, %161
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1111, i32 noundef 9, ptr noundef null) #19
  br label %173

173:                                              ; preds = %172, %170, %165, %161
  br i1 %24, label %180, label %174

174:                                              ; preds = %173
  %175 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %176 = load volatile i32, ptr %175, align 4
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  tail call void @cfg80211_update_iface_num(ptr noundef %0, i32 noundef %2, i32 noundef 1) #19
  tail call void @cfg80211_update_iface_num(ptr noundef %0, i32 noundef %8, i32 noundef -1) #19
  br label %180

180:                                              ; preds = %179, %174, %173, %142, %30, %30, %30, %16, %11, %10, %10, %4
  %181 = phi i32 [ -95, %4 ], [ -95, %10 ], [ -95, %10 ], [ -95, %16 ], [ -95, %11 ], [ -16, %30 ], [ -16, %30 ], [ -16, %30 ], [ 0, %179 ], [ 0, %174 ], [ 0, %173 ], [ %126, %142 ]
  ret i32 %181
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_stop_ap(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_leave_ibss(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_disconnect(ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_leave_ocb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_mlme_purge_registrations(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_update_iface_num(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_calculate_bitrate(ptr nocapture noundef readonly %0) #2 {
  %2 = load i8, ptr %0, align 2
  %3 = zext i8 %2 to i32
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %41, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = icmp ugt i8 %8, 31
  %10 = load i1, ptr @cfg80211_calculate_bitrate_ht.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %6
  store i1 true, ptr @cfg80211_calculate_bitrate_ht.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1129, i32 noundef 9, ptr noundef null) #19
  br label %14

14:                                               ; preds = %13, %6
  br i1 %9, label %150, label %15

15:                                               ; preds = %14
  %16 = load i8, ptr %7, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 7
  %19 = lshr i32 %17, 3
  %20 = add nuw nsw i32 %19, 1
  %21 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 4
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 3
  %24 = select i1 %23, i32 13500000, i32 6500000
  %25 = icmp ult i32 %18, 4
  %26 = add nuw nsw i32 %18, 1
  %27 = icmp eq i32 %18, 4
  %28 = add nuw nsw i32 %18, 3
  %29 = select i1 %27, i32 6, i32 %28
  %30 = select i1 %25, i32 %26, i32 %29
  %31 = mul nuw nsw i32 %20, %24
  %32 = mul i32 %31, %30
  %33 = load i8, ptr %0, align 2
  %34 = and i8 %33, 4
  %35 = icmp eq i8 %34, 0
  %36 = sdiv i32 %32, 9
  %37 = mul i32 %36, 10
  %38 = select i1 %35, i32 %32, i32 %37
  %39 = add i32 %38, 50000
  %40 = sdiv i32 %39, 100000
  br label %150

41:                                               ; preds = %1
  %42 = and i32 %3, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = icmp ugt i8 %46, 31
  %48 = load i1, ptr @cfg80211_calculate_bitrate_dmg.__already_done, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !8

51:                                               ; preds = %44
  store i1 true, ptr @cfg80211_calculate_bitrate_dmg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1194, i32 noundef 9, ptr noundef null) #19
  br label %52

52:                                               ; preds = %51, %44
  br i1 %47, label %150, label %53

53:                                               ; preds = %52
  %54 = load i8, ptr %45, align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr [32 x i32], ptr @cfg80211_calculate_bitrate_dmg.__mcs2bitrate, i32 0, i32 %55
  %57 = load i32, ptr %56, align 4
  br label %150

58:                                               ; preds = %41
  %59 = and i32 %3, 64
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 1
  %63 = load i8, ptr %62, align 1
  %64 = add i8 %63, -13
  %65 = icmp ult i8 %64, -7
  %66 = load i1, ptr @cfg80211_calculate_bitrate_extended_sc_dmg.__already_done, align 1
  %67 = xor i1 %66, true
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %69, label %70, !prof !8

69:                                               ; preds = %61
  store i1 true, ptr @cfg80211_calculate_bitrate_extended_sc_dmg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1213, i32 noundef 9, ptr noundef null) #19
  br label %70

70:                                               ; preds = %69, %61
  br i1 %65, label %150, label %71

71:                                               ; preds = %70
  %72 = load i8, ptr %62, align 1
  %73 = zext i8 %72 to i32
  %74 = add nsw i32 %73, -6
  %75 = getelementptr [7 x i32], ptr @cfg80211_calculate_bitrate_extended_sc_dmg.__mcs2bitrate, i32 0, i32 %74
  %76 = load i32, ptr %75, align 4
  br label %150

77:                                               ; preds = %58
  %78 = and i32 %3, 32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 1
  %82 = load i8, ptr %81, align 1
  %83 = icmp ugt i8 %82, 20
  %84 = load i1, ptr @cfg80211_calculate_bitrate_edmg.__already_done, align 1
  %85 = xor i1 %84, true
  %86 = select i1 %83, i1 %85, i1 false
  br i1 %86, label %87, label %88, !prof !8

87:                                               ; preds = %80
  store i1 true, ptr @cfg80211_calculate_bitrate_edmg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1247, i32 noundef 9, ptr noundef null) #19
  br label %88

88:                                               ; preds = %87, %80
  br i1 %83, label %150, label %89

89:                                               ; preds = %88
  %90 = load i8, ptr %81, align 1
  %91 = zext i8 %90 to i32
  %92 = getelementptr [21 x i32], ptr @cfg80211_calculate_bitrate_edmg.__mcs2bitrate, i32 0, i32 %91
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 8
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = mul i32 %93, %96
  br label %150

98:                                               ; preds = %77
  %99 = and i32 %3, 2
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %141, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 1
  %103 = load i8, ptr %102, align 1
  %104 = icmp ugt i8 %103, 11
  br i1 %104, label %131, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 4
  %107 = load i8, ptr %106, align 1
  %108 = icmp ult i8 %107, 6
  br i1 %108, label %109, label %131

109:                                              ; preds = %105
  %110 = lshr i8 57, %107
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %131, label %113

113:                                              ; preds = %109
  %114 = sext i8 %107 to i32
  %115 = getelementptr inbounds [6 x i32], ptr @switch.table.cfg80211_calculate_bitrate, i32 0, i32 %114
  %116 = load i32, ptr %115, align 4
  %117 = zext i8 %103 to i32
  %118 = getelementptr [4 x [12 x i32]], ptr @cfg80211_calculate_bitrate_vht.base, i32 0, i32 %116, i32 %117
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 3
  %121 = load i8, ptr %120, align 2
  %122 = zext i8 %121 to i32
  %123 = mul i32 %119, %122
  %124 = and i8 %2, 4
  %125 = icmp eq i8 %124, 0
  %126 = udiv i32 %123, 9
  %127 = mul i32 %126, 10
  %128 = select i1 %125, i32 %123, i32 %127
  %129 = add i32 %128, 50000
  %130 = udiv i32 %129, 100000
  br label %150

131:                                              ; preds = %109, %105, %101
  %132 = load i1, ptr @cfg80211_calculate_bitrate_vht.__already_done, align 1
  br i1 %132, label %150, label %133, !prof !9

133:                                              ; preds = %131
  store i1 true, ptr @cfg80211_calculate_bitrate_vht.__already_done, align 1
  %134 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 4
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = zext i8 %103 to i32
  %138 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 3
  %139 = load i8, ptr %138, align 2
  %140 = zext i8 %139 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1344, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %136, i32 noundef %137, i32 noundef %140) #19
  br label %150

141:                                              ; preds = %98
  %142 = and i32 %3, 16
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %141
  %145 = tail call fastcc i32 @cfg80211_calculate_bitrate_he(ptr noundef %0)
  br label %150

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 2
  %148 = load i16, ptr %147, align 2
  %149 = zext i16 %148 to i32
  br label %150

150:                                              ; preds = %146, %144, %133, %131, %113, %89, %88, %71, %70, %53, %52, %15, %14
  %151 = phi i32 [ %145, %144 ], [ %149, %146 ], [ %40, %15 ], [ 0, %14 ], [ %57, %53 ], [ 0, %52 ], [ %76, %71 ], [ 0, %70 ], [ %97, %89 ], [ 0, %88 ], [ %130, %113 ], [ 0, %133 ], [ 0, %131 ]
  ret i32 %151
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cfg80211_calculate_bitrate_he(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 1
  %4 = icmp ugt i8 %3, 13
  %5 = load i1, ptr @cfg80211_calculate_bitrate_he.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  store i1 true, ptr @cfg80211_calculate_bitrate_he.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1377, i32 noundef 9, ptr noundef null) #19
  br label %9

9:                                                ; preds = %8, %1
  br i1 %4, label %88, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 5
  %12 = load i8, ptr %11, align 2
  %13 = icmp ugt i8 %12, 2
  %14 = load i1, ptr @cfg80211_calculate_bitrate_he.__already_done.6, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %10
  store i1 true, ptr @cfg80211_calculate_bitrate_he.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1380, i32 noundef 9, ptr noundef null) #19
  br label %18

18:                                               ; preds = %17, %10
  br i1 %13, label %88, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 7
  %21 = load i8, ptr %20, align 2
  %22 = icmp ugt i8 %21, 6
  %23 = load i1, ptr @cfg80211_calculate_bitrate_he.__already_done.7, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27, !prof !8

26:                                               ; preds = %19
  store i1 true, ptr @cfg80211_calculate_bitrate_he.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1383, i32 noundef 9, ptr noundef null) #19
  br label %27

27:                                               ; preds = %26, %19
  br i1 %22, label %88, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 3
  %30 = load i8, ptr %29, align 2
  %31 = add i8 %30, -9
  %32 = icmp ult i8 %31, -8
  %33 = load i1, ptr @cfg80211_calculate_bitrate_he.__already_done.8, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37, !prof !8

36:                                               ; preds = %28
  store i1 true, ptr @cfg80211_calculate_bitrate_he.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1385, i32 noundef 9, ptr noundef null) #19
  br label %37

37:                                               ; preds = %36, %28
  br i1 %32, label %88, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 4
  %40 = load i8, ptr %39, align 1
  switch i8 %40, label %41 [
    i8 5, label %57
    i8 4, label %46
    i8 6, label %43
    i8 3, label %47
    i8 0, label %48
  ]

41:                                               ; preds = %38
  %42 = load i8, ptr %20, align 2
  br label %49

43:                                               ; preds = %38
  %44 = load i8, ptr %20, align 2
  %45 = icmp ult i8 %44, 6
  br i1 %45, label %53, label %49

46:                                               ; preds = %38
  br label %57

47:                                               ; preds = %38
  br label %57

48:                                               ; preds = %38
  br label %57

49:                                               ; preds = %43, %41
  %50 = phi i8 [ %42, %41 ], [ %44, %43 ]
  %51 = zext i8 %40 to i32
  %52 = zext i8 %50 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1413, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %51, i32 noundef %52) #19
  br label %88

53:                                               ; preds = %43
  %54 = sext i8 %44 to i32
  %55 = getelementptr inbounds [6 x ptr], ptr @switch.table.cfg80211_calculate_bitrate_he, i32 0, i32 %54
  %56 = load ptr, ptr %55, align 4
  br label %57

57:                                               ; preds = %53, %48, %47, %46, %38
  %58 = phi ptr [ @__const.cfg80211_calculate_bitrate_he.rates_969, %46 ], [ @__const.cfg80211_calculate_bitrate_he.rates_242, %48 ], [ @__const.cfg80211_calculate_bitrate_he.rates_484, %47 ], [ @__const.cfg80211_calculate_bitrate_he.rates_160M, %38 ], [ %56, %53 ]
  %59 = load i8, ptr %11, align 2
  %60 = zext i8 %59 to i32
  %61 = getelementptr [3 x i32], ptr %58, i32 0, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = zext i32 %62 to i64
  %64 = mul nuw nsw i64 %63, 6144
  %65 = load i8, ptr %2, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr [14 x i32], ptr @__const.cfg80211_calculate_bitrate_he.mcs_divisors, i32 0, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = icmp ult i64 %64, 4294967296
  br i1 %69, label %70, label %73, !prof !9

70:                                               ; preds = %57
  %71 = trunc i64 %64 to i32
  %72 = udiv i32 %71, %68
  br label %77

73:                                               ; preds = %57
  %74 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %68, i64 %64) #21, !srcloc !26
  %75 = extractvalue { i64, i64 } %74, 1
  %76 = trunc i64 %75 to i32
  br label %77

77:                                               ; preds = %73, %70
  %78 = phi i32 [ %72, %70 ], [ %76, %73 ]
  %79 = load i8, ptr %29, align 2
  %80 = zext i8 %79 to i32
  %81 = mul i32 %78, %80
  %82 = getelementptr inbounds %struct.rate_info, ptr %0, i32 0, i32 6
  %83 = load i8, ptr %82, align 1
  %84 = icmp eq i8 %83, 0
  %85 = select i1 %84, i32 3, i32 4
  %86 = lshr i32 %81, %85
  %87 = udiv i32 %86, 10000
  br label %88

88:                                               ; preds = %77, %49, %37, %27, %18, %9
  %89 = phi i32 [ %87, %77 ], [ 0, %49 ], [ 0, %9 ], [ 0, %18 ], [ 0, %27 ], [ 0, %37 ]
  ret i32 %89
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_get_p2p_attr(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3, i32 noundef %4) #11 {
  br label %6

6:                                                ; preds = %115, %5
  %7 = phi i16 [ 0, %5 ], [ %116, %115 ]
  %8 = phi i1 [ false, %5 ], [ %117, %115 ]
  %9 = phi i16 [ 0, %5 ], [ %118, %115 ]
  %10 = phi ptr [ %3, %5 ], [ %119, %115 ]
  %11 = phi i32 [ %4, %5 ], [ %120, %115 ]
  %12 = phi i32 [ %1, %5 ], [ %124, %115 ]
  %13 = phi ptr [ %0, %5 ], [ %125, %115 ]
  switch i32 %12, label %14 [
    i32 0, label %126
    i32 1, label %131
  ]

14:                                               ; preds = %6
  %15 = getelementptr i8, ptr %13, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = add nuw nsw i32 %17, 2
  %19 = icmp ugt i32 %18, %12
  br i1 %19, label %131, label %20

20:                                               ; preds = %14
  %21 = load i8, ptr %13, align 1
  %22 = icmp ne i8 %21, -35
  %23 = icmp ult i8 %16, 4
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %115, label %25

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %13, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 80
  br i1 %28, label %29, label %115

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %13, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 111
  br i1 %32, label %33, label %115

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %13, i32 4
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, -102
  br i1 %36, label %37, label %115

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %13, i32 5
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 9
  br i1 %40, label %41, label %115

41:                                               ; preds = %37
  %42 = add nsw i32 %17, -4
  %43 = getelementptr i8, ptr %13, i32 6
  %44 = zext i16 %9 to i32
  %45 = tail call i32 @llvm.umin.i32(i32 %42, i32 %44)
  %46 = icmp eq i32 %45, 0
  %47 = xor i1 %8, true
  %48 = select i1 %46, i1 true, i1 %47
  %49 = trunc i32 %45 to i16
  br i1 %48, label %63, label %50

50:                                               ; preds = %41
  %51 = add i16 %7, %49
  %52 = icmp eq ptr %10, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @llvm.umin.i32(i32 %11, i32 %45)
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %10, ptr align 1 %43, i32 %54, i1 false)
  %55 = getelementptr i8, ptr %10, i32 %54
  %56 = sub i32 %11, %54
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi ptr [ %55, %53 ], [ null, %50 ]
  %59 = phi i32 [ %56, %53 ], [ %11, %50 ]
  %60 = icmp ult i32 %42, %44
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = zext i16 %51 to i32
  br label %131

63:                                               ; preds = %57, %41
  %64 = phi i16 [ %51, %57 ], [ %7, %41 ]
  %65 = phi ptr [ %58, %57 ], [ %10, %41 ]
  %66 = phi i32 [ %59, %57 ], [ %11, %41 ]
  %67 = sub i16 %9, %49
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %115

69:                                               ; preds = %63
  %70 = sub nsw i32 %42, %45
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %115, label %72

72:                                               ; preds = %69
  %73 = getelementptr i8, ptr %43, i32 %45
  br label %74

74:                                               ; preds = %105, %72
  %75 = phi i32 [ %108, %105 ], [ %66, %72 ]
  %76 = phi ptr [ %107, %105 ], [ %65, %72 ]
  %77 = phi i16 [ %106, %105 ], [ %64, %72 ]
  %78 = phi i32 [ %110, %105 ], [ %70, %72 ]
  %79 = phi ptr [ %109, %105 ], [ %73, %72 ]
  %80 = icmp ult i32 %78, 3
  br i1 %80, label %131, label %81

81:                                               ; preds = %74
  %82 = load i8, ptr %79, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, %2
  %85 = getelementptr i8, ptr %79, i32 1
  %86 = load i16, ptr %85, align 1
  %87 = add i32 %78, -3
  %88 = getelementptr i8, ptr %79, i32 3
  %89 = zext i16 %86 to i32
  %90 = tail call i32 @llvm.umin.i32(i32 %87, i32 %89)
  br i1 %84, label %91, label %105

91:                                               ; preds = %81
  %92 = trunc i32 %90 to i16
  %93 = add i16 %77, %92
  %94 = icmp eq ptr %76, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = tail call i32 @llvm.umin.i32(i32 %75, i32 %90)
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %76, ptr align 1 %88, i32 %96, i1 false)
  %97 = getelementptr i8, ptr %76, i32 %96
  %98 = sub i32 %75, %96
  br label %99

99:                                               ; preds = %95, %91
  %100 = phi ptr [ %97, %95 ], [ null, %91 ]
  %101 = phi i32 [ %98, %95 ], [ %75, %91 ]
  %102 = icmp ult i32 %87, %89
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = zext i16 %93 to i32
  br label %131

105:                                              ; preds = %99, %81
  %106 = phi i16 [ %93, %99 ], [ %77, %81 ]
  %107 = phi ptr [ %100, %99 ], [ %76, %81 ]
  %108 = phi i32 [ %101, %99 ], [ %75, %81 ]
  %109 = getelementptr i8, ptr %88, i32 %90
  %110 = sub i32 %87, %90
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %74

112:                                              ; preds = %105
  %113 = trunc i32 %90 to i16
  %114 = sub i16 %86, %113
  br label %115

115:                                              ; preds = %112, %69, %63, %37, %33, %29, %25, %20
  %116 = phi i16 [ %7, %20 ], [ %7, %25 ], [ %7, %29 ], [ %7, %33 ], [ %7, %37 ], [ %64, %63 ], [ %106, %112 ], [ %64, %69 ]
  %117 = phi i1 [ %8, %20 ], [ %8, %25 ], [ %8, %29 ], [ %8, %33 ], [ %8, %37 ], [ %8, %63 ], [ %84, %112 ], [ %8, %69 ]
  %118 = phi i16 [ %9, %20 ], [ %9, %25 ], [ %9, %29 ], [ %9, %33 ], [ %9, %37 ], [ %67, %63 ], [ %114, %112 ], [ 0, %69 ]
  %119 = phi ptr [ %10, %20 ], [ %10, %25 ], [ %10, %29 ], [ %10, %33 ], [ %10, %37 ], [ %65, %63 ], [ %107, %112 ], [ %65, %69 ]
  %120 = phi i32 [ %11, %20 ], [ %11, %25 ], [ %11, %29 ], [ %11, %33 ], [ %11, %37 ], [ %66, %63 ], [ %108, %112 ], [ %66, %69 ]
  %121 = load i8, ptr %15, align 1
  %122 = zext i8 %121 to i32
  %123 = add nuw nsw i32 %122, 2
  %124 = sub i32 %12, %123
  %125 = getelementptr i8, ptr %13, i32 %123
  br label %6

126:                                              ; preds = %6
  %127 = icmp eq i16 %9, 0
  %128 = xor i1 %8, true
  %129 = select i1 %127, i1 true, i1 %128
  %130 = select i1 %129, i32 -2, i32 -84
  br label %131

131:                                              ; preds = %126, %103, %74, %61, %14, %6
  %132 = phi i32 [ %130, %126 ], [ %62, %61 ], [ %104, %103 ], [ -84, %74 ], [ -84, %6 ], [ -84, %14 ]
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_ie_split_ric(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #2 {
  %8 = icmp ult i32 %6, %1
  br i1 %8, label %9, label %164

9:                                                ; preds = %7
  %10 = add i32 %3, -1
  %11 = getelementptr i8, ptr %2, i32 %10
  %12 = icmp sgt i32 %3, 0
  %13 = icmp ne i32 %5, 0
  %14 = add i32 %5, -1
  %15 = getelementptr i8, ptr %4, i32 %14
  %16 = icmp sgt i32 %5, 0
  br label %17

17:                                               ; preds = %161, %9
  %18 = phi i32 [ %6, %9 ], [ %162, %161 ]
  %19 = getelementptr i8, ptr %0, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, -1
  %22 = select i1 %21, i32 2, i32 0
  %23 = add i32 %22, %18
  %24 = icmp ult i32 %23, %1
  br i1 %24, label %25, label %164

25:                                               ; preds = %17
  %26 = getelementptr i8, ptr %0, i32 %23
  %27 = load i8, ptr %26, align 1
  %28 = load i8, ptr %11, align 1
  %29 = icmp eq i8 %28, -1
  br i1 %29, label %31, label %30, !prof !8

30:                                               ; preds = %25
  br i1 %12, label %32, label %164

31:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1555, i32 noundef 9, ptr noundef null) #19
  br label %164

32:                                               ; preds = %43, %30
  %33 = phi i32 [ %45, %43 ], [ 0, %30 ]
  %34 = getelementptr i8, ptr %2, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, -1
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  br i1 %21, label %38, label %43

38:                                               ; preds = %37
  %39 = add nsw i32 %33, 1
  %40 = getelementptr i8, ptr %2, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, %27
  br i1 %42, label %138, label %43

43:                                               ; preds = %47, %38, %37
  %44 = phi i32 [ 1, %47 ], [ 2, %38 ], [ 2, %37 ]
  %45 = add i32 %44, %33
  %46 = icmp slt i32 %45, %3
  br i1 %46, label %32, label %164

47:                                               ; preds = %32
  %48 = icmp ne i8 %35, %27
  %49 = or i1 %21, %48
  br i1 %49, label %43, label %50

50:                                               ; preds = %47
  %51 = icmp eq i8 %20, 57
  %52 = and i1 %13, %51
  br i1 %52, label %53, label %138

53:                                               ; preds = %50
  %54 = add i32 %18, 1
  %55 = getelementptr i8, ptr %0, i32 %54
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = add i32 %18, 2
  %59 = add i32 %58, %57
  %60 = icmp eq i8 %56, -1
  %61 = icmp ult i32 %59, %1
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %76

63:                                               ; preds = %68, %53
  %64 = phi i32 [ %74, %68 ], [ %59, %53 ]
  %65 = getelementptr i8, ptr %0, i32 %64
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, -14
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = add nuw i32 %64, 1
  %70 = getelementptr i8, ptr %0, i32 %69
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = add i32 %64, 2
  %74 = add i32 %73, %72
  %75 = icmp ult i32 %74, %1
  br i1 %75, label %63, label %76

76:                                               ; preds = %68, %63, %53
  %77 = phi i32 [ %59, %53 ], [ %64, %63 ], [ %74, %68 ]
  %78 = icmp ult i32 %77, %1
  br i1 %78, label %79, label %161

79:                                               ; preds = %135, %76
  %80 = phi i32 [ %136, %135 ], [ %77, %76 ]
  %81 = getelementptr i8, ptr %0, i32 %80
  %82 = load i8, ptr %81, align 1
  %83 = icmp eq i8 %82, -1
  %84 = select i1 %83, i32 2, i32 0
  %85 = add i32 %84, %80
  %86 = icmp ult i32 %85, %1
  br i1 %86, label %87, label %161

87:                                               ; preds = %79
  %88 = getelementptr i8, ptr %0, i32 %85
  %89 = load i8, ptr %88, align 1
  %90 = load i8, ptr %15, align 1
  %91 = icmp eq i8 %90, -1
  br i1 %91, label %93, label %92, !prof !8

92:                                               ; preds = %87
  br i1 %16, label %94, label %112

93:                                               ; preds = %87
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1555, i32 noundef 9, ptr noundef null) #19
  br label %112

94:                                               ; preds = %105, %92
  %95 = phi i32 [ %107, %105 ], [ 0, %92 ]
  %96 = getelementptr i8, ptr %4, i32 %95
  %97 = load i8, ptr %96, align 1
  %98 = icmp eq i8 %97, -1
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  br i1 %83, label %100, label %105

100:                                              ; preds = %99
  %101 = add nsw i32 %95, 1
  %102 = getelementptr i8, ptr %4, i32 %101
  %103 = load i8, ptr %102, align 1
  %104 = icmp eq i8 %103, %89
  br i1 %104, label %161, label %105

105:                                              ; preds = %109, %100, %99
  %106 = phi i32 [ 1, %109 ], [ 2, %100 ], [ 2, %99 ]
  %107 = add i32 %106, %95
  %108 = icmp slt i32 %107, %5
  br i1 %108, label %94, label %112

109:                                              ; preds = %94
  %110 = icmp ne i8 %97, %89
  %111 = or i1 %83, %110
  br i1 %111, label %105, label %161

112:                                              ; preds = %105, %93, %92
  %113 = add i32 %80, 1
  %114 = getelementptr i8, ptr %0, i32 %113
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i32
  %117 = add i32 %80, 2
  %118 = add i32 %117, %116
  %119 = icmp eq i8 %115, -1
  %120 = icmp ult i32 %118, %1
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %122, label %135

122:                                              ; preds = %127, %112
  %123 = phi i32 [ %133, %127 ], [ %118, %112 ]
  %124 = getelementptr i8, ptr %0, i32 %123
  %125 = load i8, ptr %124, align 1
  %126 = icmp eq i8 %125, -14
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = add nuw i32 %123, 1
  %129 = getelementptr i8, ptr %0, i32 %128
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = add i32 %123, 2
  %133 = add i32 %132, %131
  %134 = icmp ult i32 %133, %1
  br i1 %134, label %122, label %135

135:                                              ; preds = %127, %122, %112
  %136 = phi i32 [ %118, %112 ], [ %123, %122 ], [ %133, %127 ]
  %137 = icmp ult i32 %136, %1
  br i1 %137, label %79, label %161

138:                                              ; preds = %50, %38
  %139 = add i32 %18, 1
  %140 = getelementptr i8, ptr %0, i32 %139
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = add i32 %18, 2
  %144 = add i32 %143, %142
  %145 = icmp eq i8 %141, -1
  %146 = icmp ult i32 %144, %1
  %147 = select i1 %145, i1 %146, i1 false
  br i1 %147, label %148, label %161

148:                                              ; preds = %153, %138
  %149 = phi i32 [ %159, %153 ], [ %144, %138 ]
  %150 = getelementptr i8, ptr %0, i32 %149
  %151 = load i8, ptr %150, align 1
  %152 = icmp eq i8 %151, -14
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = add nuw i32 %149, 1
  %155 = getelementptr i8, ptr %0, i32 %154
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i32
  %158 = add i32 %149, 2
  %159 = add i32 %158, %157
  %160 = icmp ult i32 %159, %1
  br i1 %160, label %148, label %161

161:                                              ; preds = %153, %148, %138, %135, %109, %100, %79, %76
  %162 = phi i32 [ %144, %138 ], [ %77, %76 ], [ %80, %100 ], [ %80, %109 ], [ %149, %148 ], [ %159, %153 ], [ %136, %135 ], [ %80, %79 ]
  %163 = icmp ult i32 %162, %1
  br i1 %163, label %17, label %164

164:                                              ; preds = %161, %43, %31, %30, %17, %7
  %165 = phi i32 [ %18, %31 ], [ %6, %7 ], [ %18, %43 ], [ %162, %161 ], [ %18, %17 ], [ %6, %30 ]
  ret i32 %165
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i1 @ieee80211_operating_class_to_band(i8 noundef zeroext %0, ptr nocapture noundef writeonly %1) #12 {
  switch i8 %0, label %8 [
    i8 112, label %6
    i8 -128, label %6
    i8 -127, label %6
    i8 -126, label %6
    i8 115, label %6
    i8 116, label %6
    i8 117, label %6
    i8 118, label %6
    i8 119, label %6
    i8 120, label %6
    i8 121, label %6
    i8 122, label %6
    i8 123, label %6
    i8 124, label %6
    i8 125, label %6
    i8 126, label %6
    i8 127, label %6
    i8 -125, label %3
    i8 -124, label %3
    i8 -123, label %3
    i8 -122, label %3
    i8 -121, label %3
    i8 81, label %4
    i8 82, label %4
    i8 83, label %4
    i8 84, label %4
    i8 -76, label %5
  ]

3:                                                ; preds = %2, %2, %2, %2, %2
  br label %6

4:                                                ; preds = %2, %2, %2, %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4, %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %7 = phi i32 [ 2, %5 ], [ 0, %4 ], [ 3, %3 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ]
  store i32 %7, ptr %1, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i1 [ false, %2 ], [ true, %6 ]
  ret i1 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ieee80211_chandef_to_operating_class(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) #13 {
  %3 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -2412
  %6 = icmp ult i32 %5, 61
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 2
  br i1 %10, label %95, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %9, 2
  br i1 %12, label %13, label %93

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.ieee80211_channel, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %4, %16
  %18 = select i1 %17, i8 83, i8 84
  br label %93

19:                                               ; preds = %2
  %20 = icmp eq i32 %4, 2484
  %21 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  br i1 %20, label %23, label %25

23:                                               ; preds = %19
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %93, label %95

25:                                               ; preds = %19
  switch i32 %22, label %41 [
    i32 3, label %28
    i32 5, label %26
    i32 4, label %27
    i32 7, label %95
    i32 6, label %95
  ]

26:                                               ; preds = %25
  br label %28

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27, %26, %25
  %29 = phi i8 [ -126, %27 ], [ -127, %26 ], [ -128, %25 ]
  %30 = add i32 %4, -5180
  %31 = icmp ult i32 %30, 61
  %32 = add i32 %4, -5260
  %33 = icmp ult i32 %32, 61
  %34 = or i1 %31, %33
  %35 = add i32 %4, -5500
  %36 = icmp ult i32 %35, 221
  %37 = select i1 %34, i1 true, i1 %36
  %38 = add i32 %4, -5745
  %39 = icmp ult i32 %38, 101
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %93, label %95

41:                                               ; preds = %25
  %42 = add i32 %4, -5180
  %43 = icmp ult i32 %42, 61
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = icmp eq i32 %22, 2
  br i1 %45, label %46, label %93

46:                                               ; preds = %44
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr inbounds %struct.ieee80211_channel, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %4, %49
  %51 = select i1 %50, i8 116, i8 117
  br label %93

52:                                               ; preds = %41
  %53 = add i32 %4, -5260
  %54 = icmp ult i32 %53, 61
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = icmp eq i32 %22, 2
  br i1 %56, label %57, label %93

57:                                               ; preds = %55
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr inbounds %struct.ieee80211_channel, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp ugt i32 %4, %60
  %62 = select i1 %61, i8 119, i8 120
  br label %93

63:                                               ; preds = %52
  %64 = add i32 %4, -5500
  %65 = icmp ult i32 %64, 221
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = icmp eq i32 %22, 2
  br i1 %67, label %68, label %93

68:                                               ; preds = %66
  %69 = load ptr, ptr %0, align 4
  %70 = getelementptr inbounds %struct.ieee80211_channel, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = icmp ugt i32 %4, %71
  %73 = select i1 %72, i8 122, i8 123
  br label %93

74:                                               ; preds = %63
  %75 = add i32 %4, -5745
  %76 = icmp ult i32 %75, 101
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = icmp eq i32 %22, 2
  br i1 %78, label %79, label %85

79:                                               ; preds = %77
  %80 = load ptr, ptr %0, align 4
  %81 = getelementptr inbounds %struct.ieee80211_channel, ptr %80, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = icmp ugt i32 %4, %82
  %84 = select i1 %83, i8 126, i8 127
  br label %93

85:                                               ; preds = %77
  %86 = icmp ult i32 %4, 5806
  %87 = select i1 %86, i8 124, i8 125
  br label %93

88:                                               ; preds = %74
  %89 = add i32 %4, -69121
  %90 = icmp ult i32 %89, -10801
  %91 = icmp ugt i32 %22, 1
  %92 = select i1 %90, i1 true, i1 %91
  br i1 %92, label %95, label %93

93:                                               ; preds = %88, %85, %79, %68, %66, %57, %55, %46, %44, %28, %23, %13, %11
  %94 = phi i8 [ %18, %13 ], [ 81, %11 ], [ 82, %23 ], [ %29, %28 ], [ %51, %46 ], [ 115, %44 ], [ %62, %57 ], [ 118, %55 ], [ %73, %68 ], [ 121, %66 ], [ %84, %79 ], [ %87, %85 ], [ -76, %88 ]
  store i8 %94, ptr %1, align 1
  br label %95

95:                                               ; preds = %93, %88, %28, %25, %25, %23, %7
  %96 = phi i1 [ false, %7 ], [ false, %23 ], [ false, %25 ], [ false, %25 ], [ false, %88 ], [ true, %93 ], [ false, %28 ]
  ret i1 %96
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @cfg80211_validate_beacon_int(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = add i32 %2, -10001
  %5 = icmp ult i32 %4, -9991
  %6 = select i1 %5, i32 -22, i32 0
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_iter_combinations(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) #2 {
  %5 = getelementptr inbounds %struct.iface_combination_params, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 61
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %28, label %10

10:                                               ; preds = %23, %4
  %11 = phi i32 [ %24, %23 ], [ 0, %4 ]
  %12 = phi i8 [ %25, %23 ], [ 0, %4 ]
  %13 = phi ptr [ %26, %23 ], [ %8, %4 ]
  %14 = getelementptr i8, ptr %13, i32 216
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = icmp eq i32 %11, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %17
  %20 = icmp eq i32 %15, %11
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = tail call i32 @gcd(i32 noundef %11, i32 noundef %15) #22
  br label %23

23:                                               ; preds = %21, %19, %17, %10
  %24 = phi i32 [ %11, %10 ], [ %11, %19 ], [ %22, %21 ], [ %15, %17 ]
  %25 = phi i8 [ %12, %10 ], [ %12, %19 ], [ 1, %21 ], [ %12, %17 ]
  %26 = load ptr, ptr %13, align 4
  %27 = icmp eq ptr %26, %7
  br i1 %27, label %28, label %10

28:                                               ; preds = %23, %4
  %29 = phi i32 [ 0, %4 ], [ %24, %23 ]
  %30 = phi i8 [ 0, %4 ], [ %25, %23 ]
  %31 = icmp eq i32 %6, 0
  %32 = icmp eq i32 %29, %6
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = icmp eq i32 %29, 0
  %36 = select i1 %35, i8 %30, i8 1
  %37 = tail call i32 @gcd(i32 noundef %29, i32 noundef %6) #22
  br label %38

38:                                               ; preds = %34, %28
  %39 = phi i32 [ %29, %28 ], [ %37, %34 ]
  %40 = phi i8 [ %30, %28 ], [ %36, %34 ]
  %41 = getelementptr inbounds %struct.iface_combination_params, ptr %1, i32 0, i32 1
  %42 = load i8, ptr %41, align 4
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !27
  %45 = load volatile ptr, ptr @cfg80211_regdomain, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %45, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i32 [ %49, %47 ], [ 0, %44 ]
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !28
  br label %52

52:                                               ; preds = %50, %38
  %53 = phi i32 [ %51, %50 ], [ 0, %38 ]
  %54 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 7
  %55 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 11
  br label %65

56:                                               ; preds = %88
  %57 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %202

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 5
  %62 = shl nuw i32 1, %53
  %63 = icmp eq i32 %39, 0
  %64 = icmp eq i8 %40, 0
  br label %92

65:                                               ; preds = %88, %52
  %66 = phi i32 [ 0, %52 ], [ %89, %88 ]
  %67 = phi i32 [ 0, %52 ], [ %71, %88 ]
  %68 = phi i32 [ 0, %52 ], [ %90, %88 ]
  %69 = getelementptr %struct.iface_combination_params, ptr %1, i32 0, i32 2, i32 %68
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, %67
  %72 = icmp sgt i32 %70, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %65
  %74 = icmp eq i32 %68, 4
  %75 = load i16, ptr %54, align 16
  %76 = zext i16 %75 to i32
  %77 = shl nuw nsw i32 1, %68
  %78 = and i32 %77, %76
  %79 = icmp eq i32 %78, 0
  %80 = and i1 %74, %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  br i1 %79, label %86, label %88

82:                                               ; preds = %73
  %83 = load i32, ptr %55, align 8
  %84 = and i32 %83, 32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82, %81
  %87 = or i32 %66, %77
  br label %88

88:                                               ; preds = %86, %82, %81, %65
  %89 = phi i32 [ %66, %82 ], [ %87, %86 ], [ %66, %65 ], [ %66, %81 ]
  %90 = add nuw nsw i32 %68, 1
  %91 = icmp eq i32 %90, 13
  br i1 %91, label %56, label %65

92:                                               ; preds = %198, %60
  %93 = phi i32 [ %58, %60 ], [ %199, %198 ]
  %94 = phi i32 [ 0, %60 ], [ %200, %198 ]
  %95 = load ptr, ptr %61, align 8
  %96 = getelementptr %struct.ieee80211_iface_combination, ptr %95, i32 %94
  %97 = getelementptr %struct.ieee80211_iface_combination, ptr %95, i32 %94, i32 2
  %98 = load i16, ptr %97, align 4
  %99 = zext i16 %98 to i32
  %100 = icmp sgt i32 %71, %99
  br i1 %100, label %198, label %101

101:                                              ; preds = %92
  %102 = load i32, ptr %1, align 4
  %103 = getelementptr %struct.ieee80211_iface_combination, ptr %95, i32 %94, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = icmp ugt i32 %102, %104
  br i1 %105, label %198, label %106

106:                                              ; preds = %101
  %107 = load ptr, ptr %96, align 4
  %108 = getelementptr %struct.ieee80211_iface_combination, ptr %95, i32 %94, i32 3
  %109 = load i8, ptr %108, align 2
  %110 = zext i8 %109 to i32
  %111 = shl nuw nsw i32 %110, 2
  %112 = tail call ptr @kmemdup(ptr noundef %107, i32 noundef %111, i32 noundef 3264) #19
  %113 = icmp eq ptr %112, null
  br i1 %113, label %202, label %114

114:                                              ; preds = %159, %106
  %115 = phi i32 [ %160, %159 ], [ 0, %106 ]
  %116 = phi i32 [ %161, %159 ], [ 0, %106 ]
  %117 = icmp eq i32 %116, 4
  %118 = load i16, ptr %54, align 16
  %119 = zext i16 %118 to i32
  %120 = shl nuw nsw i32 1, %116
  %121 = and i32 %120, %119
  %122 = icmp eq i32 %121, 0
  %123 = and i1 %117, %122
  br i1 %123, label %125, label %124

124:                                              ; preds = %114
  br i1 %122, label %129, label %159

125:                                              ; preds = %114
  %126 = load i32, ptr %55, align 8
  %127 = and i32 %126, 32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %159

129:                                              ; preds = %125, %124
  %130 = load i8, ptr %108, align 2
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %159, label %132

132:                                              ; preds = %129
  %133 = getelementptr %struct.iface_combination_params, ptr %1, i32 0, i32 2, i32 %116
  br label %134

134:                                              ; preds = %154, %132
  %135 = phi i8 [ %130, %132 ], [ %155, %154 ]
  %136 = phi i32 [ %115, %132 ], [ %142, %154 ]
  %137 = phi i32 [ 0, %132 ], [ %156, %154 ]
  %138 = getelementptr %struct.ieee80211_iface_limit, ptr %112, i32 %137
  %139 = getelementptr %struct.ieee80211_iface_limit, ptr %112, i32 %137, i32 1
  %140 = load i16, ptr %139, align 2
  %141 = zext i16 %140 to i32
  %142 = or i32 %136, %141
  %143 = and i32 %120, %141
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %134
  %146 = load i16, ptr %138, align 2
  %147 = zext i16 %146 to i32
  %148 = load i32, ptr %133, align 4
  %149 = icmp sgt i32 %148, %147
  br i1 %149, label %196, label %150

150:                                              ; preds = %145
  %151 = trunc i32 %148 to i16
  %152 = sub i16 %146, %151
  store i16 %152, ptr %138, align 2
  %153 = load i8, ptr %108, align 2
  br label %154

154:                                              ; preds = %150, %134
  %155 = phi i8 [ %135, %134 ], [ %153, %150 ]
  %156 = add nuw nsw i32 %137, 1
  %157 = zext i8 %155 to i32
  %158 = icmp ult i32 %156, %157
  br i1 %158, label %134, label %159

159:                                              ; preds = %154, %129, %125, %124
  %160 = phi i32 [ %115, %125 ], [ %115, %124 ], [ %115, %129 ], [ %142, %154 ]
  %161 = add nuw nsw i32 %116, 1
  %162 = icmp eq i32 %161, 13
  br i1 %162, label %163, label %114

163:                                              ; preds = %159
  %164 = load i8, ptr %41, align 4
  %165 = getelementptr %struct.ieee80211_iface_combination, ptr %95, i32 %94, i32 5
  %166 = load i8, ptr %165, align 4
  %167 = and i8 %166, %164
  %168 = icmp eq i8 %164, %167
  br i1 %168, label %169, label %196

169:                                              ; preds = %163
  %170 = icmp eq i8 %164, 0
  br i1 %170, label %182, label %171

171:                                              ; preds = %169
  %172 = getelementptr %struct.ieee80211_iface_combination, ptr %95, i32 %94, i32 6
  %173 = load i8, ptr %172, align 1
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %171
  %176 = zext i8 %173 to i32
  %177 = and i32 %62, %176
  %178 = icmp ne i32 %177, 0
  %179 = and i32 %160, %89
  %180 = icmp eq i32 %179, %89
  %181 = select i1 %178, i1 %180, i1 false
  br i1 %181, label %185, label %196

182:                                              ; preds = %171, %169
  %183 = and i32 %160, %89
  %184 = icmp eq i32 %183, %89
  br i1 %184, label %185, label %196

185:                                              ; preds = %182, %175
  br i1 %63, label %195, label %186

186:                                              ; preds = %185
  %187 = getelementptr %struct.ieee80211_iface_combination, ptr %95, i32 %94, i32 7
  %188 = load i32, ptr %187, align 4
  %189 = icmp ne i32 %188, 0
  %190 = icmp uge i32 %39, %188
  %191 = xor i1 %189, true
  %192 = select i1 %191, i1 true, i1 %190
  %193 = select i1 %189, i1 true, i1 %64
  %194 = select i1 %192, i1 %193, i1 false
  br i1 %194, label %195, label %196

195:                                              ; preds = %186, %185
  tail call void %2(ptr noundef %96, ptr noundef %3) #19
  br label %196

196:                                              ; preds = %195, %186, %182, %175, %163, %145
  tail call void @kfree(ptr noundef nonnull %112) #19
  %197 = load i32, ptr %57, align 4
  br label %198

198:                                              ; preds = %196, %101, %92
  %199 = phi i32 [ %197, %196 ], [ %93, %92 ], [ %93, %101 ]
  %200 = add nuw nsw i32 %94, 1
  %201 = icmp slt i32 %200, %199
  br i1 %201, label %92, label %202

202:                                              ; preds = %198, %106, %56
  %203 = phi i32 [ 0, %56 ], [ -12, %106 ], [ 0, %198 ]
  ret i32 %203
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cfg80211_iftype_allowed(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2, i8 noundef zeroext %3) #7 {
  %5 = icmp eq i32 %1, 4
  switch i8 %3, label %35 [
    i8 0, label %6
    i8 1, label %20
  ]

6:                                                ; preds = %4
  %7 = and i1 %5, %2
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 32
  %12 = icmp ne i32 %11, 0
  br label %35

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 9
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = shl nuw i32 1, %1
  %18 = and i32 %17, %16
  %19 = icmp ne i32 %18, 0
  br label %35

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 7
  %22 = load i16, ptr %21, align 16
  %23 = zext i16 %22 to i32
  %24 = shl nuw i32 1, %1
  %25 = and i32 %24, %23
  %26 = icmp eq i32 %25, 0
  %27 = and i1 %5, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 11
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 32
  %32 = icmp ne i32 %31, 0
  br label %35

33:                                               ; preds = %20
  %34 = icmp ne i32 %25, 0
  br label %35

35:                                               ; preds = %33, %28, %13, %8, %4
  %36 = phi i1 [ %34, %33 ], [ %32, %28 ], [ %12, %8 ], [ %19, %13 ], [ false, %4 ]
  ret i1 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_check_combinations(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  store i32 0, ptr %3, align 4
  %4 = call i32 @cfg80211_iter_combinations(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @cfg80211_iter_sum_ifcombs, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr %3, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 -16, i32 0
  %9 = select i1 %5, i32 %8, i32 %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @cfg80211_iter_sum_ifcombs(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #14 {
  %3 = load i32, ptr %1, align 4
  %4 = add i32 %3, 1
  store i32 %4, ptr %1, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_get_ratemask(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #15 {
  %5 = icmp eq ptr %0, null
  %6 = add i32 %2, -33
  %7 = icmp ult i32 %6, -32
  %8 = or i1 %5, %7
  br i1 %8, label %38, label %9

9:                                                ; preds = %4
  store i32 0, ptr %3, align 4
  %10 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %0, i32 0, i32 4
  %11 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %0, i32 0, i32 1
  br label %12

12:                                               ; preds = %30, %9
  %13 = phi i32 [ 0, %9 ], [ %32, %30 ]
  %14 = phi i32 [ 0, %9 ], [ %33, %30 ]
  %15 = getelementptr i8, ptr %1, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, 127
  %18 = zext i8 %17 to i32
  %19 = mul nuw nsw i32 %18, 5
  %20 = load i32, ptr %10, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %12
  %23 = load ptr, ptr %11, align 4
  br label %24

24:                                               ; preds = %35, %22
  %25 = phi i32 [ 0, %22 ], [ %36, %35 ]
  %26 = getelementptr %struct.ieee80211_rate, ptr %23, i32 %25, i32 1
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = icmp eq i32 %19, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = shl nuw i32 1, %25
  %32 = or i32 %13, %31
  store i32 %32, ptr %3, align 4
  %33 = add nuw i32 %14, 1
  %34 = icmp eq i32 %33, %2
  br i1 %34, label %38, label %12

35:                                               ; preds = %24
  %36 = add nuw nsw i32 %25, 1
  %37 = icmp eq i32 %36, %20
  br i1 %37, label %38, label %24

38:                                               ; preds = %35, %30, %12, %4
  %39 = phi i32 [ -22, %4 ], [ -22, %35 ], [ -22, %12 ], [ 0, %30 ]
  ret i32 %39
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ieee80211_get_num_supported_channels(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ]
  %10 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %11, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %9
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i32 [ %16, %13 ], [ %9, %8 ]
  %19 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %20, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %18
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i32 [ %25, %22 ], [ %18, %17 ]
  %28 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %29, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %27
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi i32 [ %34, %31 ], [ %27, %26 ]
  %37 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %38, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %36
  br label %44

44:                                               ; preds = %40, %35
  %45 = phi i32 [ %43, %40 ], [ %36, %35 ]
  %46 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %47, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %45
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi i32 [ %52, %49 ], [ %45, %44 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_get_station(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %53, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/wireless/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #19, !srcloc !15
  unreachable

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %8, i32 -544
  %13 = load ptr, ptr %12, align 32
  %14 = getelementptr inbounds %struct.cfg80211_ops, ptr %13, i32 0, i32 18
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %53, label %17

17:                                               ; preds = %11
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(208) %2, i8 0, i32 208, i1 false)
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_get_station, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = tail call ptr @llvm.thread.pointer() #19
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !29
  %32 = tail call i32 @__traceiter_rdev_get_station(ptr noundef null, ptr noundef nonnull %8, ptr noundef %0, ptr noundef %1) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !30
  br label %33

33:                                               ; preds = %31, %20, %17
  %34 = load ptr, ptr %12, align 32
  %35 = getelementptr inbounds %struct.cfg80211_ops, ptr %34, i32 0, i32 18
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef nonnull %8, ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int_station_info, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = tail call ptr @llvm.thread.pointer() #19
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
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !31
  %52 = tail call i32 @__traceiter_rdev_return_int_station_info(ptr noundef null, ptr noundef nonnull %8, i32 noundef %37, ptr noundef %2) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !32
  br label %53

53:                                               ; preds = %51, %40, %33, %11, %3
  %54 = phi i32 [ -95, %3 ], [ -95, %11 ], [ %37, %33 ], [ %37, %40 ], [ %37, %51 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_free_nan_func(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cfg80211_nan_func, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #19
  %6 = getelementptr inbounds %struct.cfg80211_nan_func, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #19
  %8 = getelementptr inbounds %struct.cfg80211_nan_func, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #19
  %10 = getelementptr inbounds %struct.cfg80211_nan_func, ptr %0, i32 0, i32 21
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.cfg80211_nan_func, ptr %0, i32 0, i32 18
  br label %21

15:                                               ; preds = %21, %3
  %16 = getelementptr inbounds %struct.cfg80211_nan_func, ptr %0, i32 0, i32 20
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cfg80211_nan_func, ptr %0, i32 0, i32 19
  br label %30

21:                                               ; preds = %21, %13
  %22 = phi i32 [ 0, %13 ], [ %26, %21 ]
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr %struct.cfg80211_nan_func_filter, ptr %23, i32 %22
  %25 = load ptr, ptr %24, align 4
  tail call void @kfree(ptr noundef %25) #19
  %26 = add nuw nsw i32 %22, 1
  %27 = load i8, ptr %10, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %21, label %15

30:                                               ; preds = %30, %19
  %31 = phi i32 [ 0, %19 ], [ %35, %30 ]
  %32 = load ptr, ptr %20, align 8
  %33 = getelementptr %struct.cfg80211_nan_func_filter, ptr %32, i32 %31
  %34 = load ptr, ptr %33, align 4
  tail call void @kfree(ptr noundef %34) #19
  %35 = add nuw nsw i32 %31, 1
  %36 = load i8, ptr %16, align 4
  %37 = zext i8 %36 to i32
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %30, label %39

39:                                               ; preds = %30, %15
  %40 = getelementptr inbounds %struct.cfg80211_nan_func, ptr %0, i32 0, i32 18
  %41 = load ptr, ptr %40, align 4
  tail call void @kfree(ptr noundef %41) #19
  %42 = getelementptr inbounds %struct.cfg80211_nan_func, ptr %0, i32 0, i32 19
  %43 = load ptr, ptr %42, align 8
  tail call void @kfree(ptr noundef %43) #19
  tail call void @kfree(ptr noundef nonnull %0) #19
  br label %44

44:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cfg80211_does_bw_fit_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = lshr i32 %2, 1
  %5 = sub i32 %1, %4
  %6 = load i32, ptr %0, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = add i32 %4, %1
  %10 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %3
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi i1 [ false, %13 ], [ true, %8 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cfg80211_sinfo_alloc_tid_stats(ptr nocapture noundef writeonly %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !9

5:                                                ; preds = %2
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 2
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %5 ]
  %11 = or i32 %1, 256
  %12 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %10, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef %11, i32 noundef 1496) #23
  %15 = getelementptr inbounds %struct.station_info, ptr %0, i32 0, i32 37
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  %17 = select i1 %16, i32 -12, i32 0
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cfg80211_send_layer2_update(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 20, i32 noundef 2592) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @skb_put(ptr noundef nonnull %3, i32 noundef 20) #19
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %6, i8 -1, i32 6, i1 false) #19
  %7 = getelementptr inbounds %struct.iapp_layer2_update, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %1, align 4
  store i32 %8, ptr %7, align 4
  %9 = getelementptr i8, ptr %1, i32 4
  %10 = load i16, ptr %9, align 2
  %11 = getelementptr %struct.iapp_layer2_update, ptr %6, i32 0, i32 1, i32 4
  store i16 %10, ptr %11, align 2
  %12 = getelementptr inbounds %struct.iapp_layer2_update, ptr %6, i32 0, i32 2
  store i16 1536, ptr %12, align 1
  %13 = getelementptr inbounds %struct.iapp_layer2_update, ptr %6, i32 0, i32 3
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.iapp_layer2_update, ptr %6, i32 0, i32 4
  store i8 1, ptr %14, align 1
  %15 = getelementptr inbounds %struct.iapp_layer2_update, ptr %6, i32 0, i32 5
  store i8 -81, ptr %15, align 1
  %16 = getelementptr inbounds %struct.iapp_layer2_update, ptr %6, i32 0, i32 6
  store i8 -127, ptr %16, align 1
  %17 = getelementptr %struct.iapp_layer2_update, ptr %6, i32 0, i32 6, i32 1
  store i8 1, ptr %17, align 1
  %18 = getelementptr %struct.iapp_layer2_update, ptr %6, i32 0, i32 6, i32 2
  store i8 0, ptr %18, align 1
  %19 = getelementptr inbounds %struct.anon.43, ptr %3, i32 0, i32 2
  store ptr %0, ptr %19, align 8
  %20 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %3, ptr noundef %0) #19
  %21 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 16
  store i16 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %22, i8 0, i32 48, i1 false)
  %23 = tail call i32 @netif_rx_ni(ptr noundef nonnull %3) #19
  br label %24

24:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_get_vht_max_nss(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.ieee80211_vht_cap, ptr %0, i32 0, i32 1
  %7 = load i16, ptr %6, align 1
  %8 = zext i16 %7 to i32
  %9 = icmp eq i16 %7, -1
  br i1 %9, label %137, label %10

10:                                               ; preds = %5
  %11 = icmp sgt i32 %2, 9
  %12 = icmp ugt i32 %4, 8
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2171, i32 noundef 9, ptr noundef null) #19
  br label %137

15:                                               ; preds = %10
  %16 = icmp slt i32 %2, 8
  %17 = icmp eq i32 %2, 8
  %18 = select i1 %17, i32 1, i32 2
  %19 = select i1 %16, i32 0, i32 %18
  %20 = icmp eq i32 %4, 0
  br i1 %20, label %21, label %68

21:                                               ; preds = %15
  %22 = lshr i32 %8, 14
  %23 = icmp eq i32 %22, 3
  %24 = icmp ult i32 %22, %19
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %68

26:                                               ; preds = %21
  %27 = lshr i32 %8, 12
  %28 = and i32 %27, 3
  %29 = icmp eq i32 %28, 3
  %30 = icmp ult i32 %28, %19
  %31 = or i1 %29, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %26
  %33 = lshr i32 %8, 10
  %34 = and i32 %33, 3
  %35 = icmp eq i32 %34, 3
  %36 = icmp ult i32 %34, %19
  %37 = or i1 %35, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %32
  %39 = lshr i32 %8, 8
  %40 = and i32 %39, 3
  %41 = icmp eq i32 %40, 3
  %42 = icmp ult i32 %40, %19
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %38
  %45 = lshr i32 %8, 6
  %46 = and i32 %45, 3
  %47 = icmp eq i32 %46, 3
  %48 = icmp ult i32 %46, %19
  %49 = or i1 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %44
  %51 = lshr i32 %8, 4
  %52 = and i32 %51, 3
  %53 = icmp eq i32 %52, 3
  %54 = icmp ult i32 %52, %19
  %55 = or i1 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = lshr i32 %8, 2
  %58 = and i32 %57, 3
  %59 = icmp eq i32 %58, 3
  %60 = icmp ult i32 %58, %19
  %61 = or i1 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = and i32 %8, 3
  %64 = icmp ne i32 %63, 3
  %65 = icmp uge i32 %63, %19
  %66 = and i1 %64, %65
  %67 = zext i1 %66 to i32
  br label %68

68:                                               ; preds = %62, %56, %50, %44, %38, %32, %26, %21, %15
  %69 = phi i32 [ %4, %15 ], [ 8, %21 ], [ 7, %26 ], [ 6, %32 ], [ 5, %38 ], [ 4, %44 ], [ 3, %50 ], [ 2, %56 ], [ %67, %62 ]
  %70 = getelementptr inbounds %struct.ieee80211_vht_cap, ptr %0, i32 0, i32 1, i32 2
  %71 = load i16, ptr %70, align 1
  %72 = and i16 %71, 8192
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %137, label %74

74:                                               ; preds = %68
  %75 = load i32, ptr %0, align 1
  %76 = lshr i32 %75, 30
  %77 = lshr i32 %75, 2
  %78 = and i32 %77, 3
  %79 = select i1 %3, i32 %76, i32 0
  switch i32 %78, label %83 [
    i32 3, label %137
    i32 2, label %80
  ]

80:                                               ; preds = %74
  %81 = add nsw i32 %79, -1
  %82 = icmp ult i32 %81, 2
  br i1 %82, label %137, label %83

83:                                               ; preds = %80, %74
  switch i32 %1, label %137 [
    i32 0, label %84
    i32 1, label %84
    i32 2, label %91
    i32 3, label %109
  ]

84:                                               ; preds = %83, %83
  %85 = add nsw i32 %78, -1
  %86 = icmp ult i32 %85, 2
  %87 = icmp eq i32 %79, 3
  %88 = select i1 %86, i1 %87, i1 false
  %89 = zext i1 %88 to i32
  %90 = shl nuw nsw i32 %69, %89
  br label %137

91:                                               ; preds = %83
  %92 = icmp eq i32 %78, 0
  %93 = add nsw i32 %79, -1
  %94 = icmp ult i32 %93, 2
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = lshr i32 %69, 1
  br label %137

98:                                               ; preds = %91
  %99 = icmp eq i32 %79, 3
  %100 = select i1 %92, i1 %99, i1 false
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = mul nuw nsw i32 %69, 3
  %103 = lshr i32 %102, 2
  br label %137

104:                                              ; preds = %98
  %105 = icmp eq i32 %78, 1
  %106 = select i1 %105, i1 %99, i1 false
  %107 = zext i1 %106 to i32
  %108 = shl nuw nsw i32 %69, %107
  br label %137

109:                                              ; preds = %83
  %110 = icmp eq i32 %78, 0
  %111 = icmp eq i32 %79, 1
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %137, label %113

113:                                              ; preds = %109
  %114 = icmp eq i32 %79, 2
  %115 = select i1 %110, i1 %114, i1 false
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = lshr i32 %69, 1
  br label %137

118:                                              ; preds = %113
  %119 = icmp eq i32 %79, 3
  %120 = select i1 %110, i1 %119, i1 false
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = mul nuw nsw i32 %69, 3
  %123 = lshr i32 %122, 2
  br label %137

124:                                              ; preds = %118
  %125 = icmp eq i32 %78, 1
  %126 = icmp eq i32 %79, 0
  %127 = select i1 %125, i1 %126, i1 false
  br i1 %127, label %137, label %128

128:                                              ; preds = %124
  %129 = select i1 %125, i1 %111, i1 false
  br i1 %129, label %130, label %132

130:                                              ; preds = %128
  %131 = lshr i32 %69, 1
  br label %137

132:                                              ; preds = %128
  %133 = select i1 %125, i1 %114, i1 false
  br i1 %133, label %134, label %137

134:                                              ; preds = %132
  %135 = mul nuw nsw i32 %69, 3
  %136 = lshr i32 %135, 2
  br label %137

137:                                              ; preds = %134, %132, %130, %124, %121, %116, %109, %104, %101, %96, %84, %83, %80, %74, %68, %14, %5
  %138 = phi i32 [ 0, %14 ], [ %117, %116 ], [ %123, %121 ], [ %131, %130 ], [ %136, %134 ], [ %97, %96 ], [ %103, %101 ], [ 0, %5 ], [ %69, %68 ], [ 0, %74 ], [ 0, %80 ], [ 0, %109 ], [ 0, %124 ], [ %69, %132 ], [ %69, %83 ], [ %90, %84 ], [ %108, %104 ]
  ret i32 %138
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_add_key(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_set_default_key(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_set_qos_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_change_virtual_intf(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_get_station(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_int_station_info(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #17 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind readnone willreturn }
attributes #23 = { nounwind allocsize(2) }

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
!10 = !{i8 0, i8 2}
!11 = !{!"auto-init"}
!12 = !{i64 421711, i64 2147911682, i64 2147911708, i64 2147911755, i64 2147911777, i64 2147911805, i64 2147911825}
!13 = !{i64 2147923894, i64 2147923920, i64 2147923949, i64 2147923983, i64 2147924014, i64 2147924037}
!14 = !{i64 372800, i64 372817, i64 2147856887}
!15 = !{i64 2157022124, i64 2157022608, i64 2157022161, i64 2157022217, i64 2157022251, i64 2157022275, i64 2157022316, i64 2157022337, i64 2157022365, i64 2157022399}
!16 = !{i64 2157448458}
!17 = !{i64 2157448694}
!18 = !{i64 2157263725}
!19 = !{i64 2157263887}
!20 = !{i64 2157462584}
!21 = !{i64 2157462824}
!22 = !{i64 2158731290}
!23 = !{i64 2158731478}
!24 = !{i64 2157402075}
!25 = !{i64 2157402273}
!26 = !{i64 2148536901, i64 2148537181, i64 2148537515, i64 2148537849}
!27 = !{i64 2149401208}
!28 = !{i64 2149401425}
!29 = !{i64 2157695317}
!30 = !{i64 2157695497}
!31 = !{i64 2157736010}
!32 = !{i64 2157736212}
