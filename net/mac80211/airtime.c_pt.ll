; ModuleID = '/llk/IR/net/mac80211/airtime.c_pt.bc'
source_filename = "../net/mac80211/airtime.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_calc_rx_airtime:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_calc_rx_airtime\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_calc_rx_airtime:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_calc_tx_airtime:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_calc_tx_airtime\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_calc_tx_airtime:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mcs_group = type { i8, [12 x i16] }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.118, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.118 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.117, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
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
%struct.anon.117 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.119 }
%union.anon.119 = type { %struct.anon.126, [32 x i8] }
%struct.anon.126 = type { i64 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.123, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.123 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.124] }
%struct.anon.124 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }

@ieee80211_calc_rx_airtime.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [23 x i8] c"net/mac80211/airtime.c\00", align 1
@__kstrtab_ieee80211_calc_rx_airtime = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_calc_rx_airtime = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_calc_rx_airtime = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_calc_rx_airtime to i32), ptr @__kstrtab_ieee80211_calc_rx_airtime, ptr @__kstrtabns_ieee80211_calc_rx_airtime }, section "___ksymtab_gpl+ieee80211_calc_rx_airtime", align 4
@__kstrtab_ieee80211_calc_tx_airtime = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_calc_tx_airtime = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_calc_tx_airtime = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_calc_tx_airtime to i32), ptr @__kstrtab_ieee80211_calc_tx_airtime, ptr @__kstrtabns_ieee80211_calc_tx_airtime }, section "___ksymtab_gpl+ieee80211_calc_tx_airtime", align 4
@ieee80211_get_rate_duration.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_get_rate_duration.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_get_rate_duration.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@airtime_mcs_groups = internal unnamed_addr constant [144 x %struct.mcs_group] [%struct.mcs_group { i8 5, [12 x i16] [i16 -25207, i16 20165, i16 13443, i16 10082, i16 6721, i16 5041, i16 4481, i16 4033, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -25206, i16 20165, i16 13443, i16 10082, i16 6721, i16 5041, i16 4481, i16 4033, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -11763, i16 26887, i16 17924, i16 13443, i16 8962, i16 6722, i16 5975, i16 5377, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -25206, i16 20165, i16 13443, i16 10082, i16 6722, i16 5041, i16 4481, i16 4033, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 5, [12 x i16] [i16 -29240, i16 18148, i16 12099, i16 9074, i16 6049, i16 4537, i16 4033, i16 3629, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -29239, i16 18148, i16 12099, i16 9074, i16 6049, i16 4537, i16 4033, i16 3629, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -17140, i16 24198, i16 16132, i16 12099, i16 8066, i16 6049, i16 5377, i16 4839, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -29239, i16 18148, i16 12099, i16 9074, i16 6049, i16 4537, i16 4033, i16 3629, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -26700, i16 19418, i16 12945, i16 9709, i16 6472, i16 4854, i16 4315, i16 3883, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -26700, i16 19418, i16 12945, i16 9709, i16 6473, i16 4855, i16 4315, i16 3884, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -13754, i16 25891, i16 17261, i16 12946, i16 8631, i16 6473, i16 5754, i16 5179, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -26699, i16 19419, i16 12946, i16 9710, i16 6473, i16 4855, i16 4316, i16 3884, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -30584, i16 17476, i16 11650, i16 8738, i16 5825, i16 4369, i16 3883, i16 3495, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -30584, i16 17476, i16 11650, i16 8738, i16 5825, i16 4369, i16 3883, i16 3495, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -18933, i16 23301, i16 15534, i16 11651, i16 7767, i16 5825, i16 5178, i16 4661, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -30583, i16 17477, i16 11651, i16 8739, i16 5825, i16 4369, i16 3884, i16 3495, i16 0, i16 0, i16 0, i16 0] }, %struct.mcs_group { i8 5, [12 x i16] [i16 -25207, i16 20165, i16 13443, i16 10082, i16 6721, i16 5041, i16 4481, i16 4033, i16 3360, i16 3030, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -25206, i16 20165, i16 13443, i16 10082, i16 6721, i16 5041, i16 4481, i16 4033, i16 3361, i16 3030, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -11763, i16 26887, i16 17924, i16 13443, i16 8962, i16 6722, i16 5975, i16 5377, i16 4481, i16 4041, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -25206, i16 20165, i16 13443, i16 10082, i16 6722, i16 5041, i16 4481, i16 4033, i16 3361, i16 3031, i16 0, i16 0] }, %struct.mcs_group { i8 5, [12 x i16] [i16 -29240, i16 18148, i16 12099, i16 9074, i16 6049, i16 4537, i16 4033, i16 3629, i16 3024, i16 2727, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -29239, i16 18148, i16 12099, i16 9074, i16 6049, i16 4537, i16 4033, i16 3629, i16 3024, i16 2727, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -17140, i16 24198, i16 16132, i16 12099, i16 8066, i16 6049, i16 5377, i16 4839, i16 4033, i16 3636, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -29239, i16 18148, i16 12099, i16 9074, i16 6049, i16 4537, i16 4033, i16 3629, i16 3024, i16 2727, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -26700, i16 19418, i16 12945, i16 9709, i16 6472, i16 4854, i16 4315, i16 3883, i16 3236, i16 2912, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -26700, i16 19418, i16 12945, i16 9709, i16 6473, i16 4855, i16 4315, i16 3884, i16 3236, i16 2913, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -13754, i16 25891, i16 17261, i16 12946, i16 8631, i16 6473, i16 5754, i16 5179, i16 4316, i16 3884, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -26699, i16 19419, i16 12946, i16 9710, i16 6473, i16 4855, i16 4316, i16 3884, i16 3237, i16 2913, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -30584, i16 17476, i16 11650, i16 8738, i16 5825, i16 4369, i16 3883, i16 3495, i16 2912, i16 2621, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -30584, i16 17476, i16 11650, i16 8738, i16 5825, i16 4369, i16 3883, i16 3495, i16 2912, i16 2621, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -18933, i16 23301, i16 15534, i16 11651, i16 7767, i16 5825, i16 5178, i16 4661, i16 3884, i16 3495, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -30583, i16 17477, i16 11651, i16 8739, i16 5825, i16 4369, i16 3884, i16 3495, i16 2913, i16 2621, i16 0, i16 0] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -29687, i16 17924, i16 11950, i16 8962, i16 5975, i16 4481, i16 3983, i16 3585, i16 2987, i16 2689, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -29687, i16 17925, i16 11950, i16 8963, i16 5975, i16 4482, i16 3984, i16 3585, i16 2988, i16 2689, i16 0, i16 0] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -17736, i16 23900, i16 15934, i16 11950, i16 7968, i16 5976, i16 5312, i16 4780, i16 3984, i16 3586, i16 0, i16 0] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -29686, i16 17926, i16 11950, i16 8964, i16 5976, i16 4482, i16 3984, i16 3586, i16 2988, i16 2690, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -1008, i16 32264, i16 21510, i16 16132, i16 10755, i16 8066, i16 7170, i16 6453, i16 5377, i16 4840, i16 0, i16 0] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -1008, i16 32265, i16 21510, i16 16133, i16 10755, i16 8067, i16 7171, i16 6453, i16 5378, i16 4840, i16 0, i16 0] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -22516, i16 21510, i16 14340, i16 10755, i16 7171, i16 5378, i16 4780, i16 4302, i16 3585, i16 3227, i16 0, i16 0] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -1006, i16 32266, i16 21510, i16 16135, i16 10756, i16 8067, i16 7171, i16 6454, i16 5378, i16 4842, i16 0, i16 0] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -29687, i16 17925, i16 11950, i16 8963, i16 5975, i16 4482, i16 3984, i16 3585, i16 2988, i16 2689, i16 0, i16 0] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -29686, i16 17926, i16 11950, i16 8964, i16 5976, i16 4482, i16 3984, i16 3586, i16 2988, i16 2690, i16 0, i16 0] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -17736, i16 23900, i16 15936, i16 11952, i16 7968, i16 5976, i16 5312, i16 4780, i16 3984, i16 3588, i16 0, i16 0] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -29684, i16 17928, i16 11952, i16 8964, i16 5976, i16 4484, i16 3984, i16 3588, i16 2988, i16 2692, i16 0, i16 0] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -1008, i16 32265, i16 21510, i16 16133, i16 10755, i16 8067, i16 7171, i16 6453, i16 5378, i16 4840, i16 0, i16 0] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -1006, i16 32266, i16 21510, i16 16135, i16 10756, i16 8067, i16 7171, i16 6454, i16 5378, i16 4842, i16 0, i16 0] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -22516, i16 21510, i16 14342, i16 10756, i16 7171, i16 5378, i16 4780, i16 4302, i16 3585, i16 3229, i16 0, i16 0] }, %struct.mcs_group { i8 0, [12 x i16] [i16 32266, i16 16135, i16 10756, i16 8067, i16 5378, i16 4035, i16 3585, i16 3229, i16 2689, i16 2422, i16 0, i16 0] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -3533, i16 31002, i16 20667, i16 15011, i16 10114, i16 7618, i16 6784, i16 6115, i16 5054, i16 4585, i16 4061, i16 3668] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -3532, i16 31002, i16 20668, i16 15012, i16 10115, i16 7619, i16 6784, i16 6116, i16 5054, i16 4586, i16 4061, i16 3668] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -24201, i16 20668, i16 13778, i16 10007, i16 6743, i16 5079, i16 4523, i16 4078, i16 3369, i16 3058, i16 2708, i16 2446] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -3531, i16 31004, i16 20668, i16 15014, i16 10115, i16 7619, i16 6786, i16 6116, i16 5055, i16 4586, i16 4063, i16 3668] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -15934, i16 24803, i16 16534, i16 12012, i16 8092, i16 6096, i16 5429, i16 4892, i16 4046, i16 3668, i16 3250, i16 2937] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -24199, i16 20668, i16 13780, i16 10009, i16 6745, i16 5079, i16 4525, i16 4080, i16 3369, i16 3060, i16 2709, i16 2448] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -30105, i16 17717, i16 11811, i16 8578, i16 5780, i16 4355, i16 3879, i16 3495, i16 2890, i16 2621, i16 2322, i16 2097] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -3527, i16 31008, i16 20672, i16 15014, i16 10118, i16 7622, i16 6786, i16 6120, i16 5059, i16 4590, i16 4066, i16 3672] }, %struct.mcs_group { i8 5, [12 x i16] [i16 -32711, i16 16412, i16 10941, i16 7947, i16 5354, i16 4033, i16 3591, i16 3237, i16 2675, i16 2427, i16 2150, i16 1942] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -32711, i16 16413, i16 10942, i16 7947, i16 5355, i16 4033, i16 3591, i16 3238, i16 2675, i16 2428, i16 2150, i16 1942] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -21769, i16 21884, i16 14589, i16 10596, i16 7140, i16 5378, i16 4789, i16 4318, i16 3567, i16 3238, i16 2867, i16 2590] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -32710, i16 16414, i16 10942, i16 7948, i16 5355, i16 4033, i16 3592, i16 3238, i16 2676, i16 2428, i16 2151, i16 1942] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -13016, i16 26262, i16 17506, i16 12718, i16 8568, i16 6454, i16 5749, i16 5180, i16 4284, i16 3884, i16 3441, i16 3110] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -21768, i16 21884, i16 14590, i16 10598, i16 7142, i16 5378, i16 4791, i16 4320, i16 3567, i16 3240, i16 2869, i16 2592] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -28021, i16 18759, i16 12506, i16 9082, i16 6120, i16 4611, i16 4107, i16 3700, i16 3060, i16 2775, i16 2458, i16 2221] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -32708, i16 16416, i16 10944, i16 7948, i16 5356, i16 4035, i16 3592, i16 3240, i16 2678, i16 2430, i16 2152, i16 1944] }, %struct.mcs_group { i8 5, [12 x i16] [i16 -29064, i16 18236, i16 12157, i16 8830, i16 5949, i16 4481, i16 3991, i16 3597, i16 2973, i16 2697, i16 2389, i16 2158] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -29063, i16 18237, i16 12158, i16 8831, i16 5950, i16 4482, i16 3991, i16 3598, i16 2973, i16 2698, i16 2389, i16 2158] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -16906, i16 24316, i16 16210, i16 11774, i16 7934, i16 5976, i16 5322, i16 4798, i16 3964, i16 3598, i16 3186, i16 2878] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -29062, i16 18238, i16 12158, i16 8832, i16 5950, i16 4482, i16 3992, i16 3598, i16 2974, i16 2698, i16 2390, i16 2158] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -7180, i16 29180, i16 19452, i16 14132, i16 9520, i16 7172, i16 6388, i16 5756, i16 4760, i16 4316, i16 3824, i16 3456] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -16904, i16 24316, i16 16212, i16 11776, i16 7936, i16 5976, i16 5324, i16 4800, i16 3964, i16 3600, i16 3188, i16 2880] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -23852, i16 20844, i16 13896, i16 10092, i16 6800, i16 5124, i16 4564, i16 4112, i16 3400, i16 3084, i16 2732, i16 2468] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -29060, i16 18240, i16 12160, i16 8832, i16 5952, i16 4484, i16 3992, i16 3600, i16 2976, i16 2700, i16 2392, i16 2160] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -3532, i16 30023, i16 20228, i16 15237, i16 10108, i16 7619, i16 6784, i16 6077, i16 5079, i16 4566, i16 4059, i16 3655] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -3531, i16 30025, i16 20230, i16 15238, i16 10108, i16 7619, i16 6786, i16 6079, i16 5079, i16 4566, i16 4059, i16 3655] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -24199, i16 20015, i16 13487, i16 10159, i16 6738, i16 5079, i16 4525, i16 4052, i16 3386, i16 3046, i16 2706, i16 2437] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -3527, i16 30028, i16 20230, i16 15238, i16 10111, i16 7622, i16 6786, i16 6079, i16 5079, i16 4569, i16 4059, i16 3658] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -15930, i16 24024, i16 16184, i16 12192, i16 8092, i16 6099, i16 5433, i16 4862, i16 4066, i16 3658, i16 3250, i16 2924] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -24199, i16 20019, i16 13491, i16 10159, i16 6738, i16 5079, i16 4528, i16 4052, i16 3386, i16 3046, i16 2706, i16 2441] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -30102, i16 17156, i16 11560, i16 8710, i16 5780, i16 4358, i16 3882, i16 3474, i16 2903, i16 2611, i16 2325, i16 2094] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -3520, i16 30028, i16 20236, i16 15245, i16 10118, i16 7629, i16 6786, i16 6079, i16 5086, i16 4569, i16 4066, i16 3658] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -32711, i16 15894, i16 10709, i16 8066, i16 5351, i16 4033, i16 3591, i16 3217, i16 2689, i16 2417, i16 2149, i16 1935] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -32710, i16 15895, i16 10710, i16 8067, i16 5351, i16 4033, i16 3592, i16 3218, i16 2689, i16 2417, i16 2149, i16 1935] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -21768, i16 21193, i16 14281, i16 10756, i16 7135, i16 5378, i16 4791, i16 4291, i16 3585, i16 3225, i16 2865, i16 2581] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -32708, i16 15897, i16 10710, i16 8067, i16 5353, i16 4035, i16 3592, i16 3218, i16 2689, i16 2419, i16 2149, i16 1936] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -13012, i16 25437, i16 17136, i16 12909, i16 8568, i16 6458, i16 5752, i16 5148, i16 4305, i16 3873, i16 3441, i16 3096] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -21768, i16 21196, i16 14284, i16 10756, i16 7135, i16 5378, i16 4795, i16 4291, i16 3585, i16 3225, i16 2865, i16 2584] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -28017, i16 18165, i16 12240, i16 9223, i16 6120, i16 4615, i16 4111, i16 3679, i16 3074, i16 2764, i16 2462, i16 2217] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -32704, i16 15897, i16 10713, i16 8071, i16 5356, i16 4039, i16 3592, i16 3218, i16 2692, i16 2419, i16 2152, i16 1936] }, %struct.mcs_group { i8 4, [12 x i16] [i16 -29063, i16 17661, i16 11899, i16 8963, i16 5946, i16 4482, i16 3991, i16 3575, i16 2988, i16 2686, i16 2388, i16 2150] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -29062, i16 17662, i16 11900, i16 8964, i16 5946, i16 4482, i16 3992, i16 3576, i16 2988, i16 2686, i16 2388, i16 2150] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -16904, i16 23548, i16 15868, i16 11952, i16 7928, i16 5976, i16 5324, i16 4768, i16 3984, i16 3584, i16 3184, i16 2868] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -29060, i16 17664, i16 11900, i16 8964, i16 5948, i16 4484, i16 3992, i16 3576, i16 2988, i16 2688, i16 2388, i16 2152] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -7176, i16 28264, i16 19040, i16 14344, i16 9520, i16 7176, i16 6392, i16 5720, i16 4784, i16 4304, i16 3824, i16 3440] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -16904, i16 23552, i16 15872, i16 11952, i16 7928, i16 5976, i16 5328, i16 4768, i16 3984, i16 3584, i16 3184, i16 2872] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -23848, i16 20184, i16 13600, i16 10248, i16 6800, i16 5128, i16 4568, i16 4088, i16 3416, i16 3072, i16 2736, i16 2464] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -29056, i16 17664, i16 11904, i16 8968, i16 5952, i16 4488, i16 3992, i16 3576, i16 2992, i16 2688, i16 2392, i16 2152] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -7209, i16 29134, i16 19431, i16 14569, i16 9713, i16 7286, i16 6473, i16 5827, i16 4855, i16 4375, i16 3886, i16 3495] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -7206, i16 29138, i16 19434, i16 14572, i16 9717, i16 7289, i16 6473, i16 5827, i16 4855, i16 4379, i16 3889, i16 3495] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -26647, i16 19427, i16 12954, i16 9717, i16 6480, i16 4862, i16 4318, i16 3889, i16 3236, i16 2917, i16 2590, i16 2332] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -7206, i16 29144, i16 19434, i16 14579, i16 9724, i16 7289, i16 6473, i16 5834, i16 4855, i16 4379, i16 3889, i16 3495] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -18875, i16 23310, i16 15544, i16 11655, i16 7779, i16 5834, i16 5181, i16 4664, i16 3889, i16 3508, i16 3114, i16 2801] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -26640, i16 19434, i16 12960, i16 9724, i16 6487, i16 4868, i16 4324, i16 3889, i16 3236, i16 2924, i16 2597, i16 2339] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -32203, i16 16660, i16 11111, i16 8336, i16 5562, i16 4175, i16 3699, i16 3332, i16 2774, i16 2502, i16 2230, i16 1999] }, %struct.mcs_group { i8 0, [12 x i16] [i16 29172, i16 14579, i16 9724, i16 7289, i16 4868, i16 3644, i16 3236, i16 2924, i16 2434, i16 2189, i16 1944, i16 1754] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -3778, i16 30848, i16 20574, i16 15426, i16 10285, i16 7714, i16 6854, i16 6170, i16 5140, i16 4633, i16 4114, i16 3700] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -3775, i16 30852, i16 20577, i16 15429, i16 10288, i16 7718, i16 6854, i16 6170, i16 5140, i16 4636, i16 4118, i16 3700] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -24360, i16 20570, i16 13716, i16 10288, i16 6861, i16 5148, i16 4572, i16 4118, i16 3427, i16 3088, i16 2743, i16 2469] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -3775, i16 30859, i16 20577, i16 15436, i16 10296, i16 7718, i16 6854, i16 6177, i16 5140, i16 4636, i16 4118, i16 3700] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -16130, i16 24681, i16 16459, i16 12340, i16 8236, i16 6177, i16 5486, i16 4939, i16 4118, i16 3715, i16 3297, i16 2966] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -24352, i16 20577, i16 13723, i16 10296, i16 6868, i16 5155, i16 4579, i16 4118, i16 3427, i16 3096, i16 2750, i16 2476] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -30242, i16 17640, i16 11764, i16 8827, i16 5889, i16 4420, i16 3916, i16 3528, i16 2937, i16 2649, i16 2361, i16 2116] }, %struct.mcs_group { i8 0, [12 x i16] [i16 30888, i16 15436, i16 10296, i16 7718, i16 5155, i16 3859, i16 3427, i16 3096, i16 2577, i16 2318, i16 2059, i16 1857] }, %struct.mcs_group { i8 3, [12 x i16] [i16 -31226, i16 17138, i16 11430, i16 8570, i16 5714, i16 4286, i16 3808, i16 3428, i16 2856, i16 2574, i16 2286, i16 2056] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -31224, i16 17140, i16 11432, i16 8572, i16 5716, i16 4288, i16 3808, i16 3428, i16 2856, i16 2576, i16 2288, i16 2056] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -19784, i16 22856, i16 15240, i16 11432, i16 7624, i16 5720, i16 5080, i16 4576, i16 3808, i16 3432, i16 3048, i16 2744] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -31224, i16 17144, i16 11432, i16 8576, i16 5720, i16 4288, i16 3808, i16 3432, i16 2856, i16 2576, i16 2288, i16 2056] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -10640, i16 27424, i16 18288, i16 13712, i16 9152, i16 6864, i16 6096, i16 5488, i16 4576, i16 4128, i16 3664, i16 3296] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -19776, i16 22864, i16 15248, i16 11440, i16 7632, i16 5728, i16 5088, i16 4576, i16 3808, i16 3440, i16 3056, i16 2752] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -26320, i16 19600, i16 13072, i16 9808, i16 6544, i16 4912, i16 4352, i16 3920, i16 3264, i16 2944, i16 2624, i16 2352] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -31216, i16 17152, i16 11440, i16 8576, i16 5728, i16 4288, i16 3808, i16 3440, i16 2864, i16 2576, i16 2288, i16 2064] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -7267, i16 29138, i16 19427, i16 14572, i16 9710, i16 7282, i16 6466, i16 5820, i16 4855, i16 4372, i16 3882, i16 3495] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -7260, i16 29144, i16 19434, i16 14579, i16 9710, i16 7289, i16 6473, i16 5820, i16 4855, i16 4379, i16 3889, i16 3495] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -26681, i16 19434, i16 12960, i16 9724, i16 6473, i16 4855, i16 4311, i16 3889, i16 3236, i16 2924, i16 2597, i16 2339] }, %struct.mcs_group { i8 0, [12 x i16] [i16 29144, i16 14579, i16 9724, i16 7289, i16 4855, i16 3644, i16 3236, i16 2910, i16 2434, i16 2189, i16 1944, i16 1754] }, %struct.mcs_group { i8 0, [12 x i16] [i16 23310, i16 11655, i16 7779, i16 5834, i16 3889, i16 2924, i16 2597, i16 2339, i16 1944, i16 1754, i16 1564, i16 1400] }, %struct.mcs_group { i8 0, [12 x i16] [i16 19434, i16 9724, i16 6487, i16 4868, i16 3236, i16 2434, i16 2162, i16 1944, i16 1618, i16 1468, i16 1305, i16 1169] }, %struct.mcs_group { i8 0, [12 x i16] [i16 16660, i16 8336, i16 5562, i16 4175, i16 2774, i16 2080, i16 1849, i16 1672, i16 1387, i16 1251, i16 1115, i16 1006] }, %struct.mcs_group { i8 0, [12 x i16] [i16 14579, i16 7289, i16 4868, i16 3644, i16 2434, i16 1822, i16 1618, i16 1455, i16 1224, i16 1101, i16 979, i16 884] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -3840, i16 30852, i16 20570, i16 15429, i16 10281, i16 7711, i16 6847, i16 6163, i16 5140, i16 4629, i16 4111, i16 3700] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -3832, i16 30859, i16 20577, i16 15436, i16 10281, i16 7718, i16 6854, i16 6163, i16 5140, i16 4636, i16 4118, i16 3700] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -24396, i16 20577, i16 13723, i16 10296, i16 6854, i16 5140, i16 4564, i16 4118, i16 3427, i16 3096, i16 2750, i16 2476] }, %struct.mcs_group { i8 0, [12 x i16] [i16 30859, i16 15436, i16 10296, i16 7718, i16 5140, i16 3859, i16 3427, i16 3081, i16 2577, i16 2318, i16 2059, i16 1857] }, %struct.mcs_group { i8 0, [12 x i16] [i16 24681, i16 12340, i16 8236, i16 6177, i16 4118, i16 3096, i16 2750, i16 2476, i16 2059, i16 1857, i16 1656, i16 1483] }, %struct.mcs_group { i8 0, [12 x i16] [i16 20577, i16 10296, i16 6868, i16 5155, i16 3427, i16 2577, i16 2289, i16 2059, i16 1713, i16 1555, i16 1382, i16 1238] }, %struct.mcs_group { i8 0, [12 x i16] [i16 17640, i16 8827, i16 5889, i16 4420, i16 2937, i16 2203, i16 1958, i16 1771, i16 1468, i16 1324, i16 1180, i16 1065] }, %struct.mcs_group { i8 0, [12 x i16] [i16 15436, i16 7718, i16 5155, i16 3859, i16 2577, i16 1929, i16 1713, i16 1540, i16 1296, i16 1166, i16 1036, i16 936] }, %struct.mcs_group { i8 2, [12 x i16] [i16 -31260, i16 17140, i16 11428, i16 8572, i16 5712, i16 4284, i16 3804, i16 3424, i16 2856, i16 2572, i16 2284, i16 2056] }, %struct.mcs_group { i8 1, [12 x i16] [i16 -31256, i16 17144, i16 11432, i16 8576, i16 5712, i16 4288, i16 3808, i16 3424, i16 2856, i16 2576, i16 2288, i16 2056] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -19824, i16 22864, i16 15248, i16 11440, i16 7616, i16 5712, i16 5072, i16 4576, i16 3808, i16 3440, i16 3056, i16 2752] }, %struct.mcs_group { i8 0, [12 x i16] [i16 -31248, i16 17152, i16 11440, i16 8576, i16 5712, i16 4288, i16 3808, i16 3424, i16 2864, i16 2576, i16 2288, i16 2064] }, %struct.mcs_group { i8 0, [12 x i16] [i16 27424, i16 13712, i16 9152, i16 6864, i16 4576, i16 3440, i16 3056, i16 2752, i16 2288, i16 2064, i16 1840, i16 1648] }, %struct.mcs_group { i8 0, [12 x i16] [i16 22864, i16 11440, i16 7632, i16 5728, i16 3808, i16 2864, i16 2544, i16 2288, i16 1904, i16 1728, i16 1536, i16 1376] }, %struct.mcs_group { i8 0, [12 x i16] [i16 19600, i16 9808, i16 6544, i16 4912, i16 3264, i16 2448, i16 2176, i16 1968, i16 1632, i16 1472, i16 1312, i16 1184] }, %struct.mcs_group { i8 0, [12 x i16] [i16 17152, i16 8576, i16 5728, i16 4288, i16 2864, i16 2144, i16 1904, i16 1712, i16 1440, i16 1296, i16 1152, i16 1040] }], align 2
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ieee80211_calc_rx_airtime, ptr @__ksymtab_ieee80211_calc_tx_airtime], section "llvm.metadata"
@switch.table.ieee80211_get_rate_duration = private unnamed_addr constant [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 2, i32 3], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_calc_rx_airtime(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 7
  %6 = load i16, ptr %5, align 1
  %7 = and i16 %6, 3
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 6
  %11 = load i8, ptr %10, align 2
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 11
  %15 = load i8, ptr %14, align 4
  %16 = icmp ugt i8 %15, 1
  %17 = load i1, ptr @ieee80211_calc_rx_airtime.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %9
  store i1 true, ptr @ieee80211_calc_rx_airtime.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 480, i32 noundef 9, ptr noundef null) #6
  br label %21

21:                                               ; preds = %20, %9
  br i1 %16, label %60, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = load i8, ptr %14, align 4
  %26 = zext i8 %25 to i32
  %27 = getelementptr %struct.wiphy, ptr %24, i32 0, i32 53, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %60, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %1, i32 0, i32 8
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %28, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %35, %33
  br i1 %36, label %37, label %60

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %28, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr %struct.ieee80211_rate, ptr %39, i32 %33
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr %struct.ieee80211_rate, ptr %39, i32 %33, i32 1
  %45 = load i16, ptr %44, align 4
  %46 = select i1 %13, i32 202, i32 106
  %47 = select i1 %43, i32 36, i32 %46
  %48 = mul i32 %2, 80
  %49 = zext i16 %45 to i32
  %50 = sdiv i32 %48, %49
  %51 = add i32 %47, %50
  br label %60

52:                                               ; preds = %3
  %53 = call fastcc i32 @ieee80211_get_rate_duration(ptr noundef %1, ptr noundef nonnull %4)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = mul i32 %53, %2
  %57 = lshr i32 %56, 20
  %58 = load i32, ptr %4, align 4
  %59 = add i32 %58, %57
  br label %60

60:                                               ; preds = %55, %52, %37, %30, %22, %21
  %61 = phi i32 [ %59, %55 ], [ %51, %37 ], [ 0, %21 ], [ 0, %30 ], [ 0, %22 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %61
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_get_rate_duration(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 6
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 4
  %6 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 7
  %7 = load i16, ptr %6, align 1
  %8 = lshr i16 %7, 2
  %9 = and i16 %8, 7
  %10 = zext i16 %9 to i32
  %11 = icmp ult i16 %9, 6
  br i1 %11, label %15, label %12

12:                                               ; preds = %15, %2
  %13 = load i1, ptr @ieee80211_get_rate_duration.__already_done, align 1
  br i1 %13, label %97, label %14, !prof !9

14:                                               ; preds = %12
  store i1 true, ptr @ieee80211_get_rate_duration.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 431, i32 noundef 9, ptr noundef null) #6
  br label %97

15:                                               ; preds = %2
  %16 = trunc i16 %9 to i8
  %17 = lshr i8 57, %16
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %12, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds [6 x i32], ptr @switch.table.ieee80211_get_rate_duration, i32 0, i32 %10
  %22 = load i32, ptr %21, align 4
  %23 = and i16 %7, 3
  %24 = zext i16 %23 to i32
  switch i32 %24, label %57 [
    i32 2, label %25
    i32 1, label %34
    i32 3, label %46
  ]

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 9
  %27 = load i8, ptr %26, align 2
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %22, 3
  %30 = or i8 %5, 16
  %31 = zext i8 %30 to i32
  %32 = add nuw nsw i32 %29, %31
  %33 = add nuw nsw i32 %32, %28
  br label %60

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 8
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = lshr i32 %37, 3
  %39 = and i32 %38, 3
  %40 = add nuw nsw i32 %39, 1
  %41 = and i32 %37, 7
  %42 = shl nuw nsw i32 %22, 3
  %43 = zext i8 %5 to i32
  %44 = or i32 %42, %43
  %45 = or i32 %39, %44
  br label %70

46:                                               ; preds = %20
  %47 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 9
  %48 = load i8, ptr %47, align 2
  %49 = zext i8 %48 to i32
  %50 = mul nuw nsw i32 %22, 24
  %51 = lshr i16 %7, 5
  %52 = and i16 %51, 24
  %53 = add nuw nsw i16 %52, 48
  %54 = zext i16 %53 to i32
  %55 = add nuw nsw i32 %50, %54
  %56 = add nuw nsw i32 %55, %49
  br label %60

57:                                               ; preds = %20
  %58 = load i1, ptr @ieee80211_get_rate_duration.__already_done.1, align 1
  br i1 %58, label %97, label %59, !prof !9

59:                                               ; preds = %57
  store i1 true, ptr @ieee80211_get_rate_duration.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 452, i32 noundef 9, ptr noundef null) #6
  br label %97

60:                                               ; preds = %46, %25
  %61 = phi i32 [ %56, %46 ], [ %33, %25 ]
  %62 = phi i32 [ %49, %46 ], [ %28, %25 ]
  %63 = add nsw i32 %61, -1
  %64 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 8
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp ne i16 %23, 3
  %68 = icmp ugt i32 %62, 4
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %77, label %70

70:                                               ; preds = %60, %34
  %71 = phi i32 [ %40, %34 ], [ %62, %60 ]
  %72 = phi i32 [ %45, %34 ], [ %63, %60 ]
  %73 = phi i32 [ %41, %34 ], [ %66, %60 ]
  %74 = icmp eq i16 %23, 3
  %75 = icmp ugt i32 %71, 8
  %76 = select i1 %74, i1 %75, i1 false
  br label %77

77:                                               ; preds = %70, %60
  %78 = phi i32 [ %71, %70 ], [ %62, %60 ]
  %79 = phi i32 [ %72, %70 ], [ %63, %60 ]
  %80 = phi i32 [ %73, %70 ], [ %66, %60 ]
  %81 = phi i1 [ %76, %70 ], [ true, %60 ]
  %82 = load i1, ptr @ieee80211_get_rate_duration.__already_done.2, align 1
  %83 = xor i1 %82, true
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %86, !prof !8

85:                                               ; preds = %77
  store i1 true, ptr @ieee80211_get_rate_duration.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 457, i32 noundef 9, ptr noundef null) #6
  br label %86

86:                                               ; preds = %85, %77
  br i1 %81, label %97, label %87

87:                                               ; preds = %86
  %88 = getelementptr [144 x %struct.mcs_group], ptr @airtime_mcs_groups, i32 0, i32 %79
  %89 = getelementptr [144 x %struct.mcs_group], ptr @airtime_mcs_groups, i32 0, i32 %79, i32 1, i32 %80
  %90 = load i16, ptr %89, align 2
  %91 = zext i16 %90 to i32
  %92 = load i8, ptr %88, align 2
  %93 = zext i8 %92 to i32
  %94 = shl i32 %91, %93
  %95 = shl nuw nsw i32 %78, 2
  %96 = add nuw nsw i32 %95, 36
  store i32 %96, ptr %1, align 4
  br label %97

97:                                               ; preds = %87, %86, %59, %57, %14, %12
  %98 = phi i32 [ %94, %87 ], [ 0, %14 ], [ 0, %12 ], [ 0, %59 ], [ 0, %57 ], [ 0, %86 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_calc_tx_airtime(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ieee80211_rx_status, align 8
  %5 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %1, i32 0, i32 2
  %6 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 7
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i32 48, i1 false) #6, !annotation !10
  %10 = call fastcc i32 @ieee80211_fill_rx_status(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %5, ptr noundef null, i8 noundef zeroext %9) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %48, %32, %17, %3
  %13 = phi i32 [ 0, %3 ], [ %22, %17 ], [ %38, %32 ], [ %54, %48 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #6
  br label %71

14:                                               ; preds = %3
  %15 = call i32 @ieee80211_calc_rx_airtime(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %71, label %17

17:                                               ; preds = %14
  %18 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %5, i32 0, i32 0, i32 1
  %19 = load i16, ptr %18, align 1
  %20 = and i16 %19, 31
  %21 = zext i16 %20 to i32
  %22 = mul i32 %15, %21
  %23 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %5, i32 0, i32 1
  %24 = load i32, ptr %6, align 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 7
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i32 48, i1 false) #6, !annotation !10
  %27 = call fastcc i32 @ieee80211_fill_rx_status(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %23, ptr noundef null, i8 noundef zeroext %26) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %12

29:                                               ; preds = %17
  %30 = call i32 @ieee80211_calc_rx_airtime(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %71, label %32

32:                                               ; preds = %29
  %33 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %5, i32 0, i32 1, i32 1
  %34 = load i16, ptr %33, align 1
  %35 = and i16 %34, 31
  %36 = zext i16 %35 to i32
  %37 = mul i32 %30, %36
  %38 = add i32 %37, %22
  %39 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %5, i32 0, i32 2
  %40 = load i32, ptr %6, align 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 7
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i32 48, i1 false) #6, !annotation !10
  %43 = call fastcc i32 @ieee80211_fill_rx_status(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %39, ptr noundef null, i8 noundef zeroext %42) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %12

45:                                               ; preds = %32
  %46 = call i32 @ieee80211_calc_rx_airtime(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %45
  %49 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %5, i32 0, i32 2, i32 1
  %50 = load i16, ptr %49, align 1
  %51 = and i16 %50, 31
  %52 = zext i16 %51 to i32
  %53 = mul i32 %46, %52
  %54 = add i32 %53, %38
  %55 = getelementptr %struct.ieee80211_tx_info, ptr %1, i32 0, i32 2, i32 1, i32 1
  %56 = load i32, ptr %6, align 4
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 7
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i32 48, i1 false) #6, !annotation !10
  %59 = call fastcc i32 @ieee80211_fill_rx_status(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %55, ptr noundef null, i8 noundef zeroext %58) #6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %12

61:                                               ; preds = %48
  %62 = call i32 @ieee80211_calc_rx_airtime(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #6
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = getelementptr %struct.ieee80211_tx_info, ptr %1, i32 0, i32 2, i32 1, i32 2
  %66 = load i16, ptr %65, align 1
  %67 = and i16 %66, 31
  %68 = zext i16 %67 to i32
  %69 = mul i32 %62, %68
  %70 = add i32 %69, %54
  br label %71

71:                                               ; preds = %64, %61, %45, %29, %14, %12
  %72 = phi i32 [ %13, %12 ], [ 0, %14 ], [ %22, %29 ], [ %38, %45 ], [ %54, %61 ], [ %70, %64 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ieee80211_calc_expected_tx_airtime(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ieee80211_rx_status, align 8
  %7 = alloca i32, align 4
  %8 = add i32 %3, 38
  %9 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 9
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = icmp eq ptr %2, null
  br i1 %13, label %92, label %19

14:                                               ; preds = %5
  %15 = load ptr, ptr %10, align 4
  %16 = load i32, ptr %15, align 4
  %17 = trunc i32 %16 to i8
  %18 = icmp eq ptr %2, null
  br i1 %18, label %57, label %19

19:                                               ; preds = %14, %12
  %20 = phi i8 [ %17, %14 ], [ 0, %12 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i32 48, i1 false), !annotation !10
  %21 = getelementptr i8, ptr %2, i32 -1016
  %22 = getelementptr i8, ptr %2, i32 -1012
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !annotation !10
  %23 = call fastcc i32 @ieee80211_fill_rx_status(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %21, ptr noundef %22, i8 noundef zeroext %20)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %6, i32 0, i32 7
  %27 = load i16, ptr %26, align 1
  %28 = and i16 %27, 3
  %29 = icmp ne i16 %28, 0
  %30 = and i1 %29, %4
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = call i32 @ieee80211_calc_rx_airtime(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %8)
  br label %55

33:                                               ; preds = %25
  %34 = call fastcc i32 @ieee80211_get_rate_duration(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %35 = icmp ugt i32 %34, 409600
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = icmp ugt i32 %34, 256000
  br i1 %37, label %47, label %38

38:                                               ; preds = %36
  %39 = icmp ugt i32 %34, 153600
  br i1 %39, label %47, label %40

40:                                               ; preds = %38
  %41 = icmp ugt i32 %34, 71680
  br i1 %41, label %47, label %42

42:                                               ; preds = %40
  %43 = icmp ne i16 %28, 3
  %44 = icmp ugt i32 %34, 20480
  %45 = select i1 %43, i1 true, i1 %44
  %46 = select i1 %45, i32 5, i32 6
  br label %47

47:                                               ; preds = %42, %40, %38, %36, %33
  %48 = phi i32 [ 1, %33 ], [ 2, %36 ], [ 3, %38 ], [ 4, %40 ], [ %46, %42 ]
  %49 = mul i32 %34, %8
  %50 = lshr i32 %49, 20
  %51 = load i32, ptr %7, align 4
  %52 = lshr i32 %51, %48
  %53 = add nuw i32 %52, %50
  %54 = tail call i32 @llvm.umax.i32(i32 %53, i32 4)
  br label %55

55:                                               ; preds = %47, %31, %19
  %56 = phi i32 [ %32, %31 ], [ %54, %47 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #6
  br label %92

57:                                               ; preds = %14
  %58 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %10, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 6
  %61 = icmp eq i32 %59, 7
  %62 = zext i1 %61 to i16
  %63 = select i1 %60, i16 2, i16 %62
  %64 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8
  %66 = and i32 %16, 255
  %67 = getelementptr %struct.wiphy, ptr %65, i32 0, i32 53, i32 %66
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 24
  %70 = load i32, ptr %69, align 8
  %71 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 15
  %72 = load i8, ptr %71, align 1, !range !11
  %73 = icmp eq i8 %72, 0
  %74 = icmp eq i32 %70, 0
  %75 = tail call i32 @llvm.cttz.i32(i32 %70, i1 true), !range !12
  %76 = select i1 %74, i32 0, i32 %75
  %77 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %68, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr %struct.ieee80211_rate, ptr %78, i32 %76
  %80 = getelementptr %struct.ieee80211_rate, ptr %78, i32 %76, i32 1
  %81 = load i16, ptr %80, align 4
  %82 = shl i16 %81, %63
  %83 = load i32, ptr %79, align 4
  %84 = and i32 %83, 4
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %73, i32 202, i32 106
  %87 = select i1 %85, i32 36, i32 %86
  %88 = mul i32 %8, 80
  %89 = zext i16 %82 to i32
  %90 = sdiv i32 %88, %89
  %91 = add i32 %87, %90
  br label %92

92:                                               ; preds = %57, %55, %12
  %93 = phi i32 [ %56, %55 ], [ %91, %57 ], [ 0, %12 ]
  ret i32 %93
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_fill_rx_status(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i8 noundef zeroext %4) unnamed_addr #4 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %0, i8 0, i32 48, i1 false)
  %6 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 11
  store i8 %4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = zext i8 %4 to i32
  %10 = getelementptr %struct.wiphy, ptr %8, i32 0, i32 53, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ne ptr %3, null
  %13 = icmp ne ptr %11, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %79

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.rate_info, ptr %3, i32 0, i32 4
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 7
  %19 = shl i8 %17, 2
  %20 = and i8 %19, 28
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %18, align 1
  %22 = getelementptr inbounds %struct.rate_info, ptr %3, i32 0, i32 3
  %23 = load i8, ptr %22, align 2
  %24 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 9
  store i8 %23, ptr %24, align 2
  %25 = getelementptr inbounds %struct.rate_info, ptr %3, i32 0, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 8
  store i8 %26, ptr %27, align 1
  %28 = load i8, ptr %3, align 2
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %15
  %33 = or i16 %21, 3
  br label %43

34:                                               ; preds = %15
  %35 = and i32 %29, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = or i16 %21, 2
  br label %43

39:                                               ; preds = %34
  %40 = and i8 %28, 1
  %41 = or i8 %20, %40
  %42 = zext i8 %41 to i16
  br label %43

43:                                               ; preds = %39, %37, %32
  %44 = phi i16 [ %38, %37 ], [ %33, %32 ], [ %42, %39 ]
  store i16 %44, ptr %18, align 1
  %45 = load i8, ptr %3, align 2
  %46 = and i8 %45, 4
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 6
  store i8 4, ptr %49, align 2
  br label %50

50:                                               ; preds = %48, %43
  %51 = getelementptr inbounds %struct.rate_info, ptr %3, i32 0, i32 5
  %52 = load i8, ptr %51, align 2
  %53 = and i8 %52, 3
  %54 = zext i8 %53 to i16
  %55 = shl nuw nsw i16 %54, 8
  %56 = and i16 %44, -769
  %57 = or i16 %55, %56
  store i16 %57, ptr %18, align 1
  %58 = and i16 %44, 3
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %149

60:                                               ; preds = %50
  store i8 0, ptr %27, align 1
  %61 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %11, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.rate_info, ptr %3, i32 0, i32 2
  %66 = load i16, ptr %65, align 2
  %67 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %11, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  br label %69

69:                                               ; preds = %76, %64
  %70 = phi i32 [ 0, %64 ], [ %77, %76 ]
  %71 = getelementptr %struct.ieee80211_rate, ptr %68, i32 %70, i32 1
  %72 = load i16, ptr %71, align 4
  %73 = icmp eq i16 %66, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = trunc i32 %70 to i8
  store i8 %75, ptr %27, align 1
  br label %149

76:                                               ; preds = %69
  %77 = add nuw nsw i32 %70, 1
  %78 = icmp eq i32 %77, %62
  br i1 %78, label %79, label %69

79:                                               ; preds = %76, %60, %5
  %80 = phi i16 [ 0, %5 ], [ %57, %60 ], [ %57, %76 ]
  %81 = load i8, ptr %2, align 1
  %82 = icmp slt i8 %81, 0
  br i1 %82, label %149, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %2, i32 0, i32 1
  %85 = load i16, ptr %84, align 1
  %86 = and i16 %85, 31
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %149, label %88

88:                                               ; preds = %83
  %89 = lshr i16 %85, 5
  %90 = zext i16 %89 to i32
  %91 = and i32 %90, 1024
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 7
  %95 = and i16 %80, -29
  %96 = or i16 %95, 20
  store i16 %96, ptr %94, align 1
  br label %112

97:                                               ; preds = %88
  %98 = and i32 %90, 512
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 7
  %102 = and i16 %80, -29
  %103 = or i16 %102, 16
  store i16 %103, ptr %101, align 1
  br label %112

104:                                              ; preds = %97
  %105 = and i32 %90, 32
  %106 = icmp eq i32 %105, 0
  %107 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 7
  %108 = and i16 %80, -29
  br i1 %106, label %111, label %109

109:                                              ; preds = %104
  %110 = or i16 %108, 12
  store i16 %110, ptr %107, align 1
  br label %112

111:                                              ; preds = %104
  store i16 %108, ptr %107, align 1
  br label %112

112:                                              ; preds = %111, %109, %100, %93
  %113 = phi i16 [ %103, %100 ], [ %108, %111 ], [ %110, %109 ], [ %96, %93 ]
  %114 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 6
  store i8 0, ptr %114, align 2
  %115 = load i16, ptr %84, align 1
  %116 = trunc i16 %115 to i8
  %117 = lshr i8 %116, 7
  store i8 %117, ptr %114, align 2
  %118 = load i16, ptr %84, align 1
  %119 = and i16 %118, 4096
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %112
  %122 = or i8 %117, 4
  store i8 %122, ptr %114, align 2
  br label %123

123:                                              ; preds = %121, %112
  %124 = load i8, ptr %2, align 1
  %125 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 8
  store i8 %124, ptr %125, align 1
  %126 = load i16, ptr %84, align 1
  %127 = lshr i16 %126, 5
  %128 = zext i16 %127 to i32
  %129 = and i32 %128, 256
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 7
  %133 = and i16 %113, -4
  %134 = or i16 %133, 2
  store i16 %134, ptr %132, align 1
  %135 = load i8, ptr %2, align 1
  %136 = and i8 %135, 15
  store i8 %136, ptr %125, align 1
  %137 = load i8, ptr %2, align 1
  %138 = ashr i8 %137, 4
  %139 = add nsw i8 %138, 1
  %140 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 9
  store i8 %139, ptr %140, align 2
  br label %149

141:                                              ; preds = %123
  %142 = and i32 %128, 8
  %143 = icmp eq i32 %142, 0
  %144 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %0, i32 0, i32 7
  %145 = and i16 %113, -4
  br i1 %143, label %148, label %146

146:                                              ; preds = %141
  %147 = or i16 %145, 1
  store i16 %147, ptr %144, align 1
  br label %149

148:                                              ; preds = %141
  store i16 %145, ptr %144, align 1
  br label %149

149:                                              ; preds = %148, %146, %131, %83, %79, %74, %50
  %150 = phi i32 [ -1, %83 ], [ -1, %79 ], [ 0, %146 ], [ 0, %148 ], [ 0, %131 ], [ 0, %50 ], [ 0, %74 ]
  ret i32 %150
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
!12 = !{i32 0, i32 33}
