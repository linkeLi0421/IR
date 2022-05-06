; ModuleID = '/llk/IR/net/mac80211/rc80211_minstrel_ht.c_pt.bc'
source_filename = "../net/mac80211/rc80211_minstrel_ht.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.90 }
%union.anon.90 = type { ptr }
%struct.mcs_group = type { i16, i8, i8, i8, [10 x i16] }
%struct.rate_control_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.minstrel_ht_sta = type { ptr, i32, i32, i32, [4 x i16], i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, [3 x %struct.minstrel_sample_category], [42 x i16], [42 x %struct.minstrel_mcs_group_data] }
%struct.minstrel_sample_category = type { i8, [5 x i16], [5 x i16] }
%struct.minstrel_mcs_group_data = type { i8, i8, [4 x i16], i16, [10 x %struct.minstrel_rate_stats] }
%struct.minstrel_rate_stats = type { i16, i16, i16, i16, i32, i32, i16, i16, i8, i8, i8 }
%struct.minstrel_priv = type { ptr, i8, i32, i32, i32, i32, i32, [4 x i8], [6 x [8 x i8]] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.121, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.121 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.116, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.possible_net_t = type {}
%struct.anon.116 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_tx_status = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.122 }
%union.anon.122 = type { %struct.anon.126, [32 x i8] }
%struct.anon.126 = type { i64 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.ieee80211_tx_rate_control = type { ptr, ptr, ptr, ptr, %struct.ieee80211_tx_rate, i8, i8, i32, ptr, i8 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_sta_rates = type { %struct.callback_head, [4 x %struct.anon.118] }
%struct.callback_head = type { ptr, ptr }
%struct.anon.118 = type { i8, i8, i8, i8, i16 }

@__param_str_minstrel_vht_only = internal constant [18 x i8] c"minstrel_vht_only\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@minstrel_vht_only = internal global i8 1, align 1
@__param_minstrel_vht_only = internal constant %struct.kernel_param { ptr @__param_str_minstrel_vht_only, ptr @__this_module, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @minstrel_vht_only } }, section "__param", align 4
@__UNIQUE_ID_minstrel_vht_onlytype805 = internal constant [32 x i8] c"parmtype=minstrel_vht_only:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_minstrel_vht_only806 = internal constant [72 x i8] c"parm=minstrel_vht_only:Use only VHT rates when VHT is supported by sta.\00", section ".modinfo", align 1
@minstrel_mcs_groups = dso_local constant [42 x %struct.mcs_group] [%struct.mcs_group { i16 8, i8 1, i8 5, i8 0, [10 x i16] [i16 -19380, i16 23078, i16 15390, i16 11539, i16 7695, i16 5773, i16 5132, i16 4617, i16 0, i16 0] }, %struct.mcs_group { i16 8, i8 2, i8 4, i8 0, [10 x i16] [i16 -19380, i16 23078, i16 15390, i16 11546, i16 7703, i16 5781, i16 5140, i16 4625, i16 0, i16 0] }, %struct.mcs_group { i16 8, i8 3, i8 3, i8 0, [10 x i16] [i16 -3974, i16 30781, i16 20531, i16 15406, i16 10281, i16 7718, i16 6843, i16 6156, i16 0, i16 0] }, %struct.mcs_group { i16 8, i8 4, i8 3, i8 0, [10 x i16] [i16 -19380, i16 23093, i16 15406, i16 11562, i16 7718, i16 5781, i16 5156, i16 4625, i16 0, i16 0] }, %struct.mcs_group { i16 136, i8 1, i8 5, i8 0, [10 x i16] [i16 -23994, i16 20771, i16 13853, i16 10386, i16 6927, i16 5197, i16 4621, i16 4157, i16 0, i16 0] }, %struct.mcs_group { i16 136, i8 2, i8 4, i8 0, [10 x i16] [i16 -23993, i16 20773, i16 13854, i16 10395, i16 6935, i16 5206, i16 4629, i16 4165, i16 0, i16 0] }, %struct.mcs_group { i16 136, i8 3, i8 3, i8 0, [10 x i16] [i16 -10124, i16 27709, i16 18484, i16 13871, i16 9259, i16 6953, i16 6165, i16 5546, i16 0, i16 0] }, %struct.mcs_group { i16 136, i8 4, i8 3, i8 0, [10 x i16] [i16 -23990, i16 20790, i16 13871, i16 10412, i16 6953, i16 5209, i16 4646, i16 4168, i16 0, i16 0] }, %struct.mcs_group { i16 40, i8 1, i8 4, i8 1, [10 x i16] [i16 -21083, i16 22234, i16 14828, i16 11125, i16 7421, i16 5562, i16 4953, i16 4453, i16 0, i16 0] }, %struct.mcs_group { i16 40, i8 2, i8 3, i8 1, [10 x i16] [i16 -21068, i16 22250, i16 14843, i16 11125, i16 7437, i16 5562, i16 4968, i16 4468, i16 0, i16 0] }, %struct.mcs_group { i16 40, i8 3, i8 2, i8 1, [10 x i16] [i16 -6224, i16 29687, i16 19812, i16 14875, i16 9937, i16 7437, i16 6625, i16 5937, i16 0, i16 0] }, %struct.mcs_group { i16 40, i8 4, i8 2, i8 1, [10 x i16] [i16 -21036, i16 22250, i16 14875, i16 11125, i16 7437, i16 5562, i16 5000, i16 4500, i16 0, i16 0] }, %struct.mcs_group { i16 168, i8 1, i8 4, i8 1, [10 x i16] [i16 -25526, i16 20014, i16 13348, i16 10015, i16 6682, i16 5009, i16 4460, i16 4010, i16 0, i16 0] }, %struct.mcs_group { i16 168, i8 2, i8 3, i8 1, [10 x i16] [i16 -25508, i16 20031, i16 13365, i16 10018, i16 6700, i16 5012, i16 4478, i16 4028, i16 0, i16 0] }, %struct.mcs_group { i16 168, i8 3, i8 2, i8 1, [10 x i16] [i16 -12143, i16 26731, i16 17843, i16 13400, i16 8956, i16 6706, i16 5975, i16 5356, i16 0, i16 0] }, %struct.mcs_group { i16 168, i8 4, i8 2, i8 1, [10 x i16] [i16 -25474, i16 20037, i16 13400, i16 10025, i16 6706, i16 5018, i16 4512, i16 4062, i16 0, i16 0] }, %struct.mcs_group { i16 0, i8 1, i8 8, i8 0, [10 x i16] [i16 -27122, i16 19601, i16 7628, i16 4207, i16 -27497, i16 19226, i16 7253, i16 3832, i16 0, i16 0] }, %struct.mcs_group { i16 0, i8 1, i8 5, i8 0, [10 x i16] [i16 -14286, i16 -31036, i16 26125, i16 17750, i16 13625, i16 9375, i16 7375, i16 6625, i16 0, i16 0] }, %struct.mcs_group { i16 256, i8 1, i8 5, i8 0, [10 x i16] [i16 -19380, i16 23078, i16 15390, i16 11539, i16 7695, i16 5773, i16 5132, i16 4617, i16 3851, i16 3468] }, %struct.mcs_group { i16 256, i8 2, i8 4, i8 0, [10 x i16] [i16 -19380, i16 23078, i16 15390, i16 11546, i16 7703, i16 5781, i16 5140, i16 4625, i16 3859, i16 3468] }, %struct.mcs_group { i16 256, i8 3, i8 3, i8 0, [10 x i16] [i16 -3974, i16 30781, i16 20531, i16 15406, i16 10281, i16 7718, i16 6843, i16 6156, i16 5156, i16 4625] }, %struct.mcs_group { i16 256, i8 4, i8 3, i8 0, [10 x i16] [i16 -19380, i16 23093, i16 15406, i16 11562, i16 7718, i16 5781, i16 5156, i16 4625, i16 3875, i16 3468] }, %struct.mcs_group { i16 384, i8 1, i8 5, i8 0, [10 x i16] [i16 -23994, i16 20771, i16 13853, i16 10386, i16 6927, i16 5197, i16 4621, i16 4157, i16 3467, i16 3123] }, %struct.mcs_group { i16 384, i8 2, i8 4, i8 0, [10 x i16] [i16 -23993, i16 20773, i16 13854, i16 10395, i16 6935, i16 5206, i16 4629, i16 4165, i16 3476, i16 3125] }, %struct.mcs_group { i16 384, i8 3, i8 3, i8 0, [10 x i16] [i16 -10124, i16 27709, i16 18484, i16 13871, i16 9259, i16 6953, i16 6165, i16 5546, i16 4646, i16 4168] }, %struct.mcs_group { i16 384, i8 4, i8 3, i8 0, [10 x i16] [i16 -23990, i16 20790, i16 13871, i16 10412, i16 6953, i16 5209, i16 4646, i16 4168, i16 3493, i16 3128] }, %struct.mcs_group { i16 288, i8 1, i8 4, i8 1, [10 x i16] [i16 -21083, i16 22234, i16 14828, i16 11125, i16 7421, i16 5562, i16 4953, i16 4453, i16 3718, i16 3343] }, %struct.mcs_group { i16 288, i8 2, i8 3, i8 1, [10 x i16] [i16 -21068, i16 22250, i16 14843, i16 11125, i16 7437, i16 5562, i16 4968, i16 4468, i16 3718, i16 3343] }, %struct.mcs_group { i16 288, i8 3, i8 2, i8 1, [10 x i16] [i16 -6224, i16 29687, i16 19812, i16 14875, i16 9937, i16 7437, i16 6625, i16 5937, i16 5000, i16 4500] }, %struct.mcs_group { i16 288, i8 4, i8 2, i8 1, [10 x i16] [i16 -21036, i16 22250, i16 14875, i16 11125, i16 7437, i16 5562, i16 5000, i16 4500, i16 3750, i16 3375] }, %struct.mcs_group { i16 416, i8 1, i8 4, i8 1, [10 x i16] [i16 -25526, i16 20014, i16 13348, i16 10015, i16 6682, i16 5009, i16 4460, i16 4010, i16 3350, i16 3012] }, %struct.mcs_group { i16 416, i8 2, i8 3, i8 1, [10 x i16] [i16 -25508, i16 20031, i16 13365, i16 10018, i16 6700, i16 5012, i16 4478, i16 4028, i16 3353, i16 3015] }, %struct.mcs_group { i16 416, i8 3, i8 2, i8 1, [10 x i16] [i16 -12143, i16 26731, i16 17843, i16 13400, i16 8956, i16 6706, i16 5975, i16 5356, i16 4512, i16 4062] }, %struct.mcs_group { i16 416, i8 4, i8 2, i8 1, [10 x i16] [i16 -25474, i16 20037, i16 13400, i16 10025, i16 6706, i16 5018, i16 4512, i16 4062, i16 3387, i16 3050] }, %struct.mcs_group { i16 768, i8 1, i8 3, i8 2, [10 x i16] [i16 -24505, i16 20531, i16 13687, i16 10281, i16 6843, i16 5156, i16 4562, i16 4125, i16 3437, i16 3093] }, %struct.mcs_group { i16 768, i8 2, i8 2, i8 2, [10 x i16] [i16 -24474, i16 20562, i16 13687, i16 10312, i16 6875, i16 5187, i16 4562, i16 4125, i16 3437, i16 3125] }, %struct.mcs_group { i16 768, i8 3, i8 1, i8 2, [10 x i16] [i16 -10786, i16 27375, i16 18250, i16 13750, i16 9125, i16 6875, i16 6125, i16 5500, i16 4625, i16 4125] }, %struct.mcs_group { i16 768, i8 4, i8 1, i8 2, [10 x i16] [i16 -24411, i16 20625, i16 13750, i16 10375, i16 6875, i16 5250, i16 4625, i16 4125, i16 3500, i16 3125] }, %struct.mcs_group { i16 896, i8 1, i8 3, i8 2, [10 x i16] [i16 -28602, i16 18484, i16 12325, i16 9259, i16 6165, i16 4646, i16 4112, i16 3718, i16 3100, i16 2790] }, %struct.mcs_group { i16 896, i8 2, i8 2, i8 2, [10 x i16] [i16 -28568, i16 18518, i16 12331, i16 9293, i16 6200, i16 4681, i16 4118, i16 3725, i16 3106, i16 2825] }, %struct.mcs_group { i16 896, i8 3, i8 1, i8 2, [10 x i16] [i16 -16236, i16 24662, i16 16450, i16 12400, i16 8237, i16 6212, i16 5537, i16 4975, i16 4187, i16 3737] }, %struct.mcs_group { i16 896, i8 4, i8 1, i8 2, [10 x i16] [i16 -28499, i16 18587, i16 12400, i16 9362, i16 6212, i16 4750, i16 4187, i16 3737, i16 3175, i16 2837] }], align 2
@minstrel_cck_bitrates = dso_local local_unnamed_addr constant [4 x i16] [i16 10, i16 20, i16 55, i16 110], align 2
@minstrel_ofdm_bitrates = dso_local local_unnamed_addr constant [8 x i16] [i16 60, i16 90, i16 120, i16 180, i16 240, i16 360, i16 480, i16 540], align 2
@mac80211_minstrel_ht = internal constant %struct.rate_control_ops { i32 2, ptr @.str, ptr @minstrel_ht_alloc, ptr null, ptr @minstrel_ht_free, ptr @minstrel_ht_alloc_sta, ptr @minstrel_ht_rate_init, ptr @minstrel_ht_rate_update, ptr @minstrel_ht_free_sta, ptr @minstrel_ht_tx_status, ptr null, ptr @minstrel_ht_get_rate, ptr null, ptr @minstrel_ht_get_expected_throughput }, align 4
@sample_table = internal unnamed_addr global [10 x [10 x i8]] zeroinitializer, section ".data..read_mostly", align 1
@.str = private unnamed_addr constant [12 x i8] c"minstrel_ht\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [35 x i8] c"net/mac80211/rc80211_minstrel_ht.c\00", align 1
@rate_lowest_index.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"include/net/mac80211.h\00", align 1
@minstrel_sample_seq = internal unnamed_addr constant [6 x i8] c"\00\01\00\01\00\02", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_minstrel_vht_only806, ptr @__UNIQUE_ID_minstrel_vht_onlytype805, ptr @__param_minstrel_vht_only], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @minstrel_ht_get_tp_avg(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %3, 409
  br i1 %7, label %60, label %8

8:                                                ; preds = %4
  %9 = and i32 %1, -2
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %0, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  br label %42

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = lshr i32 %16, 12
  br label %42

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %0, i32 0, i32 4
  %22 = load i16, ptr %21, align 4
  %23 = and i16 %22, -32
  %24 = icmp eq i16 %23, 256
  br i1 %24, label %42, label %25

25:                                               ; preds = %20
  %26 = zext i16 %22 to i32
  %27 = lshr i32 %26, 4
  %28 = and i32 %26, 15
  %29 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %27, i32 4, i32 %28
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %27, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 %31, %34
  %36 = icmp sgt i32 %35, 400000
  br i1 %36, label %42, label %37

37:                                               ; preds = %25
  %38 = icmp sgt i32 %35, 250000
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = icmp sgt i32 %35, 150000
  %41 = select i1 %40, i32 8, i32 16
  br label %42

42:                                               ; preds = %39, %37, %25, %20, %18, %11
  %43 = phi i32 [ %13, %11 ], [ %6, %18 ], [ %6, %20 ], [ %6, %25 ], [ %6, %37 ], [ %6, %39 ]
  %44 = phi i32 [ 1, %11 ], [ %19, %18 ], [ 1, %20 ], [ 2, %25 ], [ 4, %37 ], [ %41, %39 ]
  %45 = mul i32 %43, 1000
  %46 = udiv i32 %45, %44
  %47 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %1, i32 4, i32 %2
  %48 = load i16, ptr %47, align 2
  %49 = zext i16 %48 to i32
  %50 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %1, i32 2
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl i32 %49, %52
  %54 = add i32 %53, %46
  %55 = tail call i32 @llvm.smin.i32(i32 %3, i32 3686)
  %56 = mul nuw i32 %55, 1000000
  %57 = udiv i32 %56, %54
  %58 = mul i32 %57, 100
  %59 = lshr i32 %58, 12
  br label %60

60:                                               ; preds = %42, %4
  %61 = phi i32 [ %59, %42 ], [ 0, %4 ]
  ret i32 %61
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @rc80211_minstrel_init() local_unnamed_addr #2 section ".init.text" {
  tail call fastcc void @init_sample_table() #14
  %1 = tail call i32 @ieee80211_rate_control_register(ptr noundef nonnull @mac80211_minstrel_ht) #15
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @init_sample_table() unnamed_addr #2 section ".init.text" {
  %1 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %1) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %1, i8 0, i32 10, i1 false), !annotation !8
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) @sample_table, i8 -1, i32 100, i1 false)
  br label %2

2:                                                ; preds = %21, %0
  %3 = phi i32 [ 0, %0 ], [ %22, %21 ]
  call void @prandom_bytes(ptr noundef nonnull %1, i32 noundef 10) #15
  br label %4

4:                                                ; preds = %17, %2
  %5 = phi i32 [ 0, %2 ], [ %19, %17 ]
  %6 = getelementptr [10 x i8], ptr %1, i32 0, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = add nuw nsw i32 %5, %8
  br label %10

10:                                               ; preds = %10, %4
  %11 = phi i32 [ %9, %4 ], [ %16, %10 ]
  %12 = srem i32 %11, 10
  %13 = getelementptr [10 x [10 x i8]], ptr @sample_table, i32 0, i32 %3, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, -1
  %16 = add nsw i32 %12, 1
  br i1 %15, label %17, label %10

17:                                               ; preds = %10
  %18 = trunc i32 %5 to i8
  store i8 %18, ptr %13, align 1
  %19 = add nuw nsw i32 %5, 1
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %21, label %4

21:                                               ; preds = %17
  %22 = add nuw nsw i32 %3, 1
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %2

24:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_rate_control_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rc80211_minstrel_exit() local_unnamed_addr #4 {
  tail call void @ieee80211_rate_control_unregister(ptr noundef nonnull @mac80211_minstrel_ht) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rate_control_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @minstrel_ht_alloc(ptr noundef %0) #4 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 80) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %112, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.minstrel_priv, ptr %3, i32 0, i32 2
  store i32 15, ptr %6, align 8
  %7 = getelementptr inbounds %struct.minstrel_priv, ptr %3, i32 0, i32 3
  store i32 1023, ptr %7, align 4
  %8 = getelementptr inbounds %struct.minstrel_priv, ptr %3, i32 0, i32 5
  store i32 6000, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 16
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i8 7, i8 %10
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.minstrel_priv, ptr %3, i32 0, i32 4
  store i32 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 14
  %16 = load i8, ptr %15, align 1
  %17 = icmp ugt i8 %16, 3
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.minstrel_priv, ptr %3, i32 0, i32 1
  store i8 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %5
  store ptr %0, ptr %3, align 8
  %21 = getelementptr inbounds %struct.minstrel_priv, ptr %3, i32 0, i32 6
  store i32 5, ptr %21, align 8
  %22 = getelementptr inbounds %struct.ieee80211_conf, ptr %0, i32 0, i32 7, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 7
  %25 = select i1 %24, i32 64, i32 0
  %26 = icmp eq i32 %23, 6
  %27 = select i1 %26, i32 32, i32 %25
  %28 = getelementptr inbounds %struct.minstrel_priv, ptr %3, i32 0, i32 7
  store i32 -1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ieee80211_hw, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 53
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %60, label %34

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %32, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %32, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %57, %38
  %42 = phi i32 [ 0, %38 ], [ %58, %57 ]
  %43 = getelementptr %struct.ieee80211_rate, ptr %40, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, %27
  %46 = icmp eq i32 %45, %27
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = getelementptr %struct.ieee80211_rate, ptr %40, i32 %42, i32 1
  %49 = load i16, ptr %48, align 4
  switch i16 %49, label %57 [
    i16 10, label %53
    i16 20, label %50
    i16 55, label %51
    i16 110, label %52
  ]

50:                                               ; preds = %47
  br label %53

51:                                               ; preds = %47
  br label %53

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %51, %50, %47
  %54 = phi i32 [ 0, %47 ], [ 1, %50 ], [ 2, %51 ], [ 3, %52 ]
  %55 = trunc i32 %42 to i8
  %56 = getelementptr i8, ptr %28, i32 %54
  store i8 %55, ptr %56, align 1
  br label %57

57:                                               ; preds = %53, %47, %41
  %58 = add nuw nsw i32 %42, 1
  %59 = icmp eq i32 %58, %36
  br i1 %59, label %60, label %41

60:                                               ; preds = %57, %34, %20
  br label %61

61:                                               ; preds = %108, %60
  %62 = phi i32 [ %111, %108 ], [ %23, %60 ]
  %63 = phi i32 [ %106, %108 ], [ 0, %60 ]
  %64 = icmp eq i32 %62, 7
  %65 = select i1 %64, i32 64, i32 0
  %66 = icmp eq i32 %62, 6
  %67 = select i1 %66, i32 32, i32 %65
  %68 = getelementptr %struct.minstrel_priv, ptr %3, i32 0, i32 8, i32 %63
  store i64 -1, ptr %68, align 8
  %69 = load ptr, ptr %3, align 8
  %70 = getelementptr inbounds %struct.ieee80211_hw, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr %struct.wiphy, ptr %71, i32 0, i32 53, i32 %63
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %105, label %75

75:                                               ; preds = %61
  %76 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %73, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %73, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  br label %82

82:                                               ; preds = %102, %79
  %83 = phi i32 [ 0, %79 ], [ %103, %102 ]
  %84 = getelementptr %struct.ieee80211_rate, ptr %81, i32 %83
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, %67
  %87 = icmp eq i32 %86, %67
  br i1 %87, label %88, label %102

88:                                               ; preds = %82
  %89 = getelementptr %struct.ieee80211_rate, ptr %81, i32 %83, i32 1
  %90 = load i16, ptr %89, align 4
  switch i16 %90, label %102 [
    i16 60, label %98
    i16 90, label %91
    i16 120, label %92
    i16 180, label %93
    i16 240, label %94
    i16 360, label %95
    i16 480, label %96
    i16 540, label %97
  ]

91:                                               ; preds = %88
  br label %98

92:                                               ; preds = %88
  br label %98

93:                                               ; preds = %88
  br label %98

94:                                               ; preds = %88
  br label %98

95:                                               ; preds = %88
  br label %98

96:                                               ; preds = %88
  br label %98

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %96, %95, %94, %93, %92, %91, %88
  %99 = phi i32 [ 0, %88 ], [ 1, %91 ], [ 2, %92 ], [ 3, %93 ], [ 4, %94 ], [ 5, %95 ], [ 6, %96 ], [ 7, %97 ]
  %100 = trunc i32 %83 to i8
  %101 = getelementptr i8, ptr %68, i32 %99
  store i8 %100, ptr %101, align 1
  br label %102

102:                                              ; preds = %98, %88, %82
  %103 = add nuw nsw i32 %83, 1
  %104 = icmp eq i32 %103, %77
  br i1 %104, label %105, label %82

105:                                              ; preds = %102, %75, %61
  %106 = add nuw nsw i32 %63, 1
  %107 = icmp eq i32 %106, 6
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %3, align 8
  %110 = getelementptr inbounds %struct.ieee80211_conf, ptr %109, i32 0, i32 7, i32 1
  %111 = load i32, ptr %110, align 4
  br label %61

112:                                              ; preds = %105, %1
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @minstrel_ht_free(ptr noundef %0) #4 {
  tail call void @kfree(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @minstrel_ht_alloc_sta(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #4 {
  %4 = or i32 %2, 256
  %5 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 10804, i32 noundef %4, i32 noundef 2) #17
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @minstrel_ht_rate_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) #4 {
  tail call fastcc void @minstrel_ht_update_caps(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @minstrel_ht_rate_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #4 {
  tail call fastcc void @minstrel_ht_update_caps(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @minstrel_ht_free_sta(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #4 {
  tail call void @kfree(ptr noundef %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @minstrel_ht_tx_status(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #4 {
  %5 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.minstrel_priv, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %6, align 8
  %11 = and i32 %10, 4
  %12 = icmp ne i32 %11, 0
  %13 = and i32 %10, 1088
  %14 = icmp eq i32 %13, 64
  %15 = or i1 %12, %14
  br i1 %15, label %310, label %16

16:                                               ; preds = %4
  %17 = and i32 %10, 1024
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %6, i32 0, i32 2, i32 1, i32 9
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  br label %29

23:                                               ; preds = %16
  %24 = lshr i32 %10, 9
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %6, i32 0, i32 2, i32 1, i32 8
  store i8 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %6, i32 0, i32 2, i32 1, i32 9
  store i8 1, ptr %28, align 1
  br label %29

29:                                               ; preds = %23, %19
  %30 = phi i32 [ %22, %19 ], [ 1, %23 ]
  %31 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %2, i32 0, i32 11
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %6, i32 0, i32 2, i32 1, i32 9
  %34 = xor i32 %30, -1
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  store i32 0, ptr %31, align 4
  %37 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %2, i32 0, i32 12
  store i32 0, ptr %37, align 4
  %38 = load i8, ptr %33, align 1
  %39 = zext i8 %38 to i32
  br label %40

40:                                               ; preds = %36, %29
  %41 = phi i32 [ %39, %36 ], [ %30, %29 ]
  %42 = phi i32 [ 0, %36 ], [ %32, %29 ]
  %43 = add i32 %42, %41
  store i32 %43, ptr %31, align 4
  %44 = load i32, ptr %6, align 8
  %45 = and i32 %44, 4096
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = load i8, ptr %33, align 1
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %2, i32 0, i32 12
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %49
  store i32 %52, ptr %50, align 4
  br label %53

53:                                               ; preds = %47, %40
  %54 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %2, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  %57 = load i8, ptr %33, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %2, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, %58
  store i32 %61, ptr %59, align 4
  %62 = tail call fastcc zeroext i1 @minstrel_ht_txstat_valid(ptr noundef %0, ptr noundef %2, ptr noundef %7)
  br i1 %62, label %63, label %214

63:                                               ; preds = %53
  %64 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 7, i32 0
  %65 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 7, i32 1
  %66 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 7, i32 2
  %67 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 7, i32 3
  %68 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %2, i32 0, i32 14
  %69 = getelementptr %struct.minstrel_ht_sta, ptr %2, i32 0, i32 19, i32 16
  %70 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %6, i32 0, i32 2, i32 1, i32 8
  br label %71

71:                                               ; preds = %205, %63
  %72 = phi i32 [ 0, %63 ], [ %213, %205 ]
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = add i32 %72, 1
  %76 = getelementptr %struct.ieee80211_tx_rate, ptr %7, i32 %75
  %77 = tail call fastcc zeroext i1 @minstrel_ht_txstat_valid(ptr noundef %0, ptr noundef %2, ptr noundef %76)
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %74, %71
  %80 = phi i1 [ true, %71 ], [ %78, %74 ]
  %81 = getelementptr %struct.ieee80211_tx_rate, ptr %7, i32 %72
  %82 = getelementptr %struct.ieee80211_tx_rate, ptr %7, i32 %72, i32 1
  %83 = load i16, ptr %82, align 1
  %84 = lshr i16 %83, 5
  %85 = zext i16 %84 to i32
  %86 = and i32 %85, 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %102, label %88

88:                                               ; preds = %79
  %89 = lshr i32 %85, 2
  %90 = and i32 %89, 8
  %91 = lshr i32 %85, 5
  %92 = and i32 %91, 4
  %93 = load i8, ptr %81, align 1
  %94 = freeze i8 %93
  %95 = sdiv i8 %94, 8
  %96 = sext i8 %95 to i32
  %97 = or i32 %90, %92
  %98 = add nsw i32 %97, %96
  %99 = mul i8 %95, 8
  %100 = sub i8 %94, %99
  %101 = sext i8 %100 to i32
  br label %194

102:                                              ; preds = %79
  %103 = and i32 %85, 256
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i8, ptr %81, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8, ptr %64, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %128, label %139

111:                                              ; preds = %102
  %112 = lshr i32 %85, 5
  %113 = and i32 %112, 1
  %114 = lshr i32 %85, 8
  %115 = and i32 %114, 2
  %116 = or i32 %113, %115
  %117 = shl nuw nsw i32 %116, 3
  %118 = and i32 %112, 4
  %119 = load i8, ptr %81, align 1
  %120 = ashr i8 %119, 4
  %121 = add nsw i8 %120, 1
  %122 = zext i8 %121 to i32
  %123 = or i32 %118, 17
  %124 = add nuw nsw i32 %123, %117
  %125 = add nuw nsw i32 %124, %122
  %126 = and i8 %119, 15
  %127 = zext i8 %126 to i32
  br label %194

128:                                              ; preds = %147, %143, %139, %105
  %129 = phi i32 [ 0, %105 ], [ 1, %139 ], [ 2, %143 ], [ 3, %147 ]
  %130 = load i16, ptr %69, align 2
  %131 = zext i16 %130 to i32
  %132 = shl nuw nsw i32 16, %129
  %133 = and i32 %132, %131
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %194, label %135

135:                                              ; preds = %128
  %136 = and i16 %84, 4
  %137 = zext i16 %136 to i32
  %138 = or i32 %129, %137
  br label %194

139:                                              ; preds = %105
  %140 = load i8, ptr %65, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %107, %141
  br i1 %142, label %128, label %143

143:                                              ; preds = %139
  %144 = load i8, ptr %66, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %107, %145
  br i1 %146, label %128, label %147

147:                                              ; preds = %143
  %148 = load i8, ptr %67, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %107, %149
  br i1 %150, label %128, label %151

151:                                              ; preds = %147
  %152 = load i8, ptr %68, align 4
  %153 = zext i8 %152 to i32
  %154 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %153, i32 0
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %107, %156
  br i1 %157, label %194, label %158

158:                                              ; preds = %151
  %159 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %153, i32 1
  %160 = load i8, ptr %159, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %107, %161
  br i1 %162, label %194, label %163

163:                                              ; preds = %158
  %164 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %153, i32 2
  %165 = load i8, ptr %164, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp eq i32 %107, %166
  br i1 %167, label %194, label %168

168:                                              ; preds = %163
  %169 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %153, i32 3
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp eq i32 %107, %171
  br i1 %172, label %194, label %173

173:                                              ; preds = %168
  %174 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %153, i32 4
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp eq i32 %107, %176
  br i1 %177, label %194, label %178

178:                                              ; preds = %173
  %179 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %153, i32 5
  %180 = load i8, ptr %179, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp eq i32 %107, %181
  br i1 %182, label %194, label %183

183:                                              ; preds = %178
  %184 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %153, i32 6
  %185 = load i8, ptr %184, align 1
  %186 = zext i8 %185 to i32
  %187 = icmp eq i32 %107, %186
  br i1 %187, label %194, label %188

188:                                              ; preds = %183
  %189 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %153, i32 7
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp eq i32 %107, %191
  %193 = select i1 %192, i32 7, i32 0
  br label %194

194:                                              ; preds = %188, %183, %178, %173, %168, %163, %158, %151, %135, %128, %111, %88
  %195 = phi i32 [ %98, %88 ], [ %125, %111 ], [ 16, %128 ], [ 16, %135 ], [ 17, %183 ], [ 17, %178 ], [ 17, %173 ], [ 17, %168 ], [ 17, %163 ], [ 17, %158 ], [ 17, %151 ], [ 17, %188 ]
  %196 = phi i32 [ %101, %88 ], [ %127, %111 ], [ %129, %128 ], [ %138, %135 ], [ 6, %183 ], [ 5, %178 ], [ 4, %173 ], [ 3, %168 ], [ 2, %163 ], [ 1, %158 ], [ 0, %151 ], [ %193, %188 ]
  %197 = getelementptr %struct.minstrel_ht_sta, ptr %2, i32 0, i32 20, i32 %195, i32 4, i32 %196
  br i1 %80, label %198, label %205

198:                                              ; preds = %194
  %199 = load i8, ptr %70, align 8
  %200 = zext i8 %199 to i16
  %201 = getelementptr %struct.minstrel_ht_sta, ptr %2, i32 0, i32 20, i32 %195, i32 4, i32 %196, i32 2
  %202 = load i16, ptr %201, align 4
  %203 = add i16 %202, %200
  store i16 %203, ptr %201, align 4
  %204 = load i16, ptr %82, align 1
  br label %205

205:                                              ; preds = %198, %194
  %206 = phi i16 [ %204, %198 ], [ %83, %194 ]
  %207 = and i16 %206, 31
  %208 = load i8, ptr %33, align 1
  %209 = zext i8 %208 to i16
  %210 = mul nuw nsw i16 %207, %209
  %211 = load i16, ptr %197, align 4
  %212 = add i16 %210, %211
  store i16 %212, ptr %197, align 4
  %213 = add i32 %72, 1
  br i1 %80, label %214, label %71

214:                                              ; preds = %205, %53
  %215 = load ptr, ptr %0, align 4
  %216 = getelementptr inbounds %struct.ieee80211_hw, ptr %215, i32 0, i32 14
  %217 = load i8, ptr %216, align 1
  %218 = icmp ugt i8 %217, 1
  br i1 %218, label %219, label %300

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %2, i32 0, i32 4
  %221 = load i16, ptr %220, align 4
  %222 = zext i16 %221 to i32
  %223 = lshr i32 %222, 4
  %224 = and i32 %222, 15
  %225 = getelementptr %struct.minstrel_ht_sta, ptr %2, i32 0, i32 20, i32 %223, i32 4, i32 %224
  %226 = load i16, ptr %225, align 4
  %227 = icmp ugt i16 %226, 30
  br i1 %227, label %228, label %255

228:                                              ; preds = %219
  %229 = getelementptr %struct.minstrel_ht_sta, ptr %2, i32 0, i32 20, i32 %223, i32 4, i32 %224, i32 2
  %230 = load i16, ptr %229, align 4
  %231 = lshr i16 %226, 2
  %232 = icmp ult i16 %230, %231
  br i1 %232, label %233, label %255

233:                                              ; preds = %228
  %234 = icmp ult i16 %221, 16
  br i1 %234, label %255, label %235

235:                                              ; preds = %233
  %236 = lshr i16 %221, 4
  %237 = zext i16 %236 to i32
  %238 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %237, i32 1
  br label %239

239:                                              ; preds = %245, %235
  %240 = phi i32 [ %237, %235 ], [ %241, %245 ]
  %241 = add nsw i32 %240, -1
  %242 = getelementptr %struct.minstrel_ht_sta, ptr %2, i32 0, i32 19, i32 %241
  %243 = load i16, ptr %242, align 2
  %244 = icmp eq i16 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %247, %239
  %246 = icmp ugt i32 %240, 1
  br i1 %246, label %239, label %255

247:                                              ; preds = %239
  %248 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %241, i32 1
  %249 = load i8, ptr %248, align 2
  %250 = load i8, ptr %238, align 2
  %251 = icmp ugt i8 %249, %250
  br i1 %251, label %245, label %252

252:                                              ; preds = %247
  %253 = getelementptr %struct.minstrel_ht_sta, ptr %2, i32 0, i32 20, i32 %241, i32 2
  %254 = load i16, ptr %253, align 2
  store i16 %254, ptr %220, align 2
  br label %255

255:                                              ; preds = %252, %245, %233, %228, %219
  %256 = phi i1 [ false, %228 ], [ false, %219 ], [ true, %233 ], [ true, %252 ], [ true, %245 ]
  %257 = getelementptr %struct.minstrel_ht_sta, ptr %2, i32 0, i32 4, i32 1
  %258 = load i16, ptr %257, align 2
  %259 = zext i16 %258 to i32
  %260 = lshr i32 %259, 4
  %261 = and i32 %259, 15
  %262 = getelementptr %struct.minstrel_ht_sta, ptr %2, i32 0, i32 20, i32 %260, i32 4, i32 %261
  %263 = load i16, ptr %262, align 4
  %264 = icmp ugt i16 %263, 30
  br i1 %264, label %265, label %292

265:                                              ; preds = %255
  %266 = getelementptr %struct.minstrel_ht_sta, ptr %2, i32 0, i32 20, i32 %260, i32 4, i32 %261, i32 2
  %267 = load i16, ptr %266, align 4
  %268 = lshr i16 %263, 2
  %269 = icmp ult i16 %267, %268
  br i1 %269, label %270, label %292

270:                                              ; preds = %265
  %271 = icmp ult i16 %258, 16
  br i1 %271, label %292, label %272

272:                                              ; preds = %270
  %273 = lshr i16 %258, 4
  %274 = zext i16 %273 to i32
  %275 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %274, i32 1
  br label %276

276:                                              ; preds = %282, %272
  %277 = phi i32 [ %274, %272 ], [ %278, %282 ]
  %278 = add nsw i32 %277, -1
  %279 = getelementptr %struct.minstrel_ht_sta, ptr %2, i32 0, i32 19, i32 %278
  %280 = load i16, ptr %279, align 2
  %281 = icmp eq i16 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %284, %276
  %283 = icmp ugt i32 %277, 1
  br i1 %283, label %276, label %292

284:                                              ; preds = %276
  %285 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %278, i32 1
  %286 = load i8, ptr %285, align 2
  %287 = load i8, ptr %275, align 2
  %288 = icmp ugt i8 %286, %287
  br i1 %288, label %282, label %289

289:                                              ; preds = %284
  %290 = getelementptr %struct.minstrel_ht_sta, ptr %2, i32 0, i32 20, i32 %278, i32 2, i32 1
  %291 = load i16, ptr %290, align 2
  store i16 %291, ptr %257, align 2
  br label %292

292:                                              ; preds = %289, %282, %270, %265, %255
  %293 = phi i1 [ %256, %265 ], [ %256, %255 ], [ true, %270 ], [ true, %289 ], [ true, %282 ]
  %294 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %2, i32 0, i32 6
  %295 = load i32, ptr %294, align 4
  %296 = add i32 %295, %9
  %297 = load volatile i32, ptr @jiffies, align 64
  %298 = sub i32 %296, %297
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %307, label %308

300:                                              ; preds = %214
  %301 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %2, i32 0, i32 6
  %302 = load i32, ptr %301, align 4
  %303 = add i32 %302, %9
  %304 = load volatile i32, ptr @jiffies, align 64
  %305 = sub i32 %303, %304
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %300, %292
  tail call fastcc void @minstrel_ht_update_stats(ptr noundef %0, ptr noundef %2)
  br label %309

308:                                              ; preds = %292
  br i1 %293, label %309, label %310

309:                                              ; preds = %308, %307
  tail call fastcc void @minstrel_ht_update_rates(ptr noundef %0, ptr noundef %2)
  br label %310

310:                                              ; preds = %309, %308, %300, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @minstrel_ht_get_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) #4 {
  %5 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 8
  %9 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %2, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %7, align 8
  %12 = or i32 %11, %10
  store i32 %12, ptr %7, align 8
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 14
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 32
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %136

22:                                               ; preds = %17, %4
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %2, i32 0, i32 17
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %23, %25
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %136, label %28

28:                                               ; preds = %22
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = add i32 %29, 2
  store i32 %30, ptr %24, align 4
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.ieee80211_hw, ptr %31, i32 0, i32 14
  %33 = load i8, ptr %32, align 1
  %34 = icmp ugt i8 %33, 1
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %2, i32 0, i32 15
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = zext i8 %37 to i16
  %40 = add nuw nsw i16 %39, 1
  %41 = urem i16 %40, 6
  %42 = trunc i16 %41 to i8
  store i8 %42, ptr %36, align 1
  %43 = getelementptr [6 x i8], ptr @minstrel_sample_seq, i32 0, i32 %38
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  br label %46

46:                                               ; preds = %35, %28
  %47 = phi i32 [ %45, %35 ], [ 0, %28 ]
  %48 = getelementptr %struct.minstrel_ht_sta, ptr %2, i32 0, i32 18, i32 %47, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = getelementptr i16, ptr %48, i32 1
  %53 = load i16, ptr %52, align 2
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = getelementptr i16, ptr %48, i32 2
  %57 = load i16, ptr %56, align 2
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = getelementptr i16, ptr %48, i32 3
  %61 = load i16, ptr %60, align 2
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr i16, ptr %48, i32 4
  %65 = load i16, ptr %64, align 2
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %136, label %67

67:                                               ; preds = %63, %59, %55, %51, %46
  %68 = phi ptr [ %48, %46 ], [ %52, %51 ], [ %56, %55 ], [ %60, %59 ], [ %64, %63 ]
  %69 = phi i16 [ %49, %46 ], [ %53, %51 ], [ %57, %55 ], [ %61, %59 ], [ %65, %63 ]
  store i16 0, ptr %68, align 2
  %70 = lshr i16 %69, 4
  %71 = zext i16 %70 to i32
  %72 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %71
  %73 = and i16 %69, 15
  %74 = icmp eq ptr %72, getelementptr inbounds ([42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 16)
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = icmp ugt i16 %73, 3
  %77 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %3, i32 0, i32 6
  %78 = load i8, ptr %77, align 4, !range !9
  %79 = zext i1 %76 to i8
  %80 = icmp eq i8 %78, %79
  br i1 %80, label %81, label %136

81:                                               ; preds = %75, %67
  %82 = load i32, ptr %7, align 8
  %83 = or i32 %82, 4096
  store i32 %83, ptr %7, align 8
  %84 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 9
  %85 = load i16, ptr %84, align 1
  %86 = and i16 %85, -32
  %87 = or i16 %86, 1
  store i16 %87, ptr %84, align 1
  br i1 %74, label %88, label %93

88:                                               ; preds = %81
  %89 = and i16 %69, 3
  %90 = zext i16 %89 to i32
  %91 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 7, i32 %90
  %92 = load i8, ptr %91, align 1
  br label %129

93:                                               ; preds = %81
  %94 = icmp eq ptr %72, getelementptr inbounds ([42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 17)
  br i1 %94, label %95, label %103

95:                                               ; preds = %93
  %96 = and i16 %69, 7
  %97 = zext i16 %96 to i32
  %98 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %2, i32 0, i32 14
  %99 = load i8, ptr %98, align 4
  %100 = zext i8 %99 to i32
  %101 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %100, i32 %97
  %102 = load i8, ptr %101, align 1
  br label %129

103:                                              ; preds = %93
  %104 = load i16, ptr %72, align 2
  %105 = and i16 %104, 256
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %103
  %108 = trunc i16 %69 to i8
  %109 = and i8 %108, 15
  %110 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %71, i32 1
  %111 = load i8, ptr %110, align 2
  %112 = zext i8 %111 to i32
  %113 = add nsw i32 %112, -1
  %114 = icmp ult i32 %113, 8
  br i1 %114, label %117, label %115, !prof !10

115:                                              ; preds = %107
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 997, i32 noundef 9, ptr noundef null) #15
  %116 = load i16, ptr %84, align 1
  br label %117

117:                                              ; preds = %115, %107
  %118 = phi i16 [ %87, %107 ], [ %116, %115 ]
  %119 = trunc i32 %113 to i8
  %120 = shl i8 %119, 4
  %121 = or i8 %120, %109
  br label %129

122:                                              ; preds = %103
  %123 = trunc i16 %73 to i8
  %124 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %71, i32 1
  %125 = load i8, ptr %124, align 2
  %126 = shl i8 %125, 3
  %127 = add nsw i8 %123, -8
  %128 = add i8 %127, %126
  br label %129

129:                                              ; preds = %122, %117, %95, %88
  %130 = phi i8 [ %102, %95 ], [ %128, %122 ], [ %121, %117 ], [ %92, %88 ]
  %131 = phi i16 [ %87, %95 ], [ %87, %122 ], [ %118, %117 ], [ %87, %88 ]
  store i8 %130, ptr %8, align 1
  %132 = load i16, ptr %72, align 2
  %133 = shl i16 %132, 5
  %134 = and i16 %131, 31
  %135 = or i16 %134, %133
  store i16 %135, ptr %84, align 1
  br label %136

136:                                              ; preds = %129, %75, %63, %22, %17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @minstrel_ht_get_expected_throughput(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 4
  %4 = zext i16 %3 to i32
  %5 = lshr i32 %4, 4
  %6 = and i32 %4, 15
  %7 = getelementptr %struct.minstrel_ht_sta, ptr %0, i32 0, i32 20, i32 %5, i32 4, i32 %6, i32 6
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i16 %8, 409
  br i1 %12, label %62, label %13

13:                                               ; preds = %1
  %14 = and i32 %4, 65504
  %15 = icmp eq i32 %14, 256
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %0, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  br label %42

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = lshr i32 %21, 12
  br label %42

25:                                               ; preds = %19
  %26 = and i16 %3, -32
  %27 = icmp eq i16 %26, 256
  br i1 %27, label %42, label %28

28:                                               ; preds = %25
  %29 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %5, i32 4, i32 %6
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %5, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 %31, %34
  %36 = icmp sgt i32 %35, 400000
  br i1 %36, label %42, label %37

37:                                               ; preds = %28
  %38 = icmp sgt i32 %35, 250000
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = icmp sgt i32 %35, 150000
  %41 = select i1 %40, i32 8, i32 16
  br label %42

42:                                               ; preds = %39, %37, %28, %25, %23, %16
  %43 = phi i32 [ %18, %16 ], [ %11, %23 ], [ %11, %25 ], [ %11, %28 ], [ %11, %37 ], [ %11, %39 ]
  %44 = phi i32 [ 1, %16 ], [ %24, %23 ], [ 1, %25 ], [ 2, %28 ], [ 4, %37 ], [ %41, %39 ]
  %45 = mul i32 %43, 1000
  %46 = udiv i32 %45, %44
  %47 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %5, i32 4, i32 %6
  %48 = load i16, ptr %47, align 2
  %49 = zext i16 %48 to i32
  %50 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %5, i32 2
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl i32 %49, %52
  %54 = add i32 %53, %46
  %55 = tail call i32 @llvm.smin.i32(i32 %9, i32 3686) #15
  %56 = mul nuw i32 %55, 1000000
  %57 = udiv i32 %56, %54
  %58 = mul i32 %57, 100
  %59 = lshr i32 %58, 12
  %60 = mul i32 %59, 96000
  %61 = sdiv i32 %60, 1024
  br label %62

62:                                               ; preds = %42, %1
  %63 = phi i32 [ %61, %42 ], [ 0, %1 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @minstrel_ht_update_caps(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 3
  %7 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 3, i32 4
  %8 = load i16, ptr %6, align 4
  %9 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 5
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 5, i32 2, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = icmp ne i16 %14, -1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %12, %5
  %18 = phi i32 [ %16, %12 ], [ 0, %5 ]
  %19 = getelementptr inbounds i8, ptr %4, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(10804) %19, i8 0, i32 10800, i1 false)
  store ptr %3, ptr %4, align 4
  %20 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %4, i32 0, i32 14
  store i8 %22, ptr %23, align 4
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %4, i32 0, i32 6
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr %20, align 4
  %27 = tail call i32 @ieee80211_frame_duration(i32 noundef %26, i32 noundef 10, i32 noundef 60, i32 noundef 1, i32 noundef 1, i32 noundef 0) #15
  %28 = load i32, ptr %20, align 4
  %29 = tail call i32 @ieee80211_frame_duration(i32 noundef %28, i32 noundef 0, i32 noundef 60, i32 noundef 1, i32 noundef 1, i32 noundef 0) #15
  %30 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %4, i32 0, i32 7
  %31 = add i32 %29, %27
  store i32 %31, ptr %30, align 4
  %32 = shl i32 %27, 1
  %33 = add i32 %31, %32
  %34 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %4, i32 0, i32 8
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %17
  %41 = icmp eq ptr %3, null
  br i1 %41, label %57, label %42

42:                                               ; preds = %40
  %43 = load i32, ptr %20, align 4
  %44 = getelementptr [6 x i32], ptr %3, i32 0, i32 %43
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %51, %42
  %47 = phi i32 [ 0, %42 ], [ %52, %51 ]
  %48 = shl nuw i32 1, %47
  %49 = and i32 %45, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = add nuw nsw i32 %47, 1
  %53 = icmp eq i32 %52, %38
  br i1 %53, label %54, label %46

54:                                               ; preds = %51, %17
  %55 = load i1, ptr @rate_lowest_index.__already_done, align 1
  br i1 %55, label %57, label %56, !prof !10

56:                                               ; preds = %54
  store i1 true, ptr @rate_lowest_index.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 6355, i32 noundef 9, ptr noundef null) #15
  br label %57

57:                                               ; preds = %56, %54, %46, %40
  %58 = phi i32 [ 0, %56 ], [ 0, %54 ], [ 0, %40 ], [ %47, %46 ]
  %59 = shl i32 %58, 24
  %60 = ashr exact i32 %59, 24
  %61 = getelementptr %struct.ieee80211_rate, ptr %36, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %20, align 4
  %64 = getelementptr %struct.ieee80211_rate, ptr %36, i32 %60, i32 1
  %65 = load i16, ptr %64, align 4
  %66 = zext i16 %65 to i32
  %67 = lshr i32 %62, 4
  %68 = and i32 %67, 1
  %69 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 7
  %72 = zext i1 %71 to i32
  %73 = icmp eq i32 %70, 6
  %74 = select i1 %73, i32 2, i32 %72
  %75 = tail call i32 @ieee80211_frame_duration(i32 noundef %63, i32 noundef 10, i32 noundef %66, i32 noundef %68, i32 noundef 1, i32 noundef %74) #15
  %76 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %4, i32 0, i32 9
  store i32 %75, ptr %76, align 4
  %77 = mul i32 %75, 3
  %78 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %4, i32 0, i32 10
  store i32 %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %4, i32 0, i32 3
  store i32 4096, ptr %79, align 4
  %80 = icmp eq i32 %18, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %57
  %82 = lshr i16 %8, 8
  %83 = and i16 %82, 3
  %84 = zext i16 %83 to i32
  %85 = and i16 %8, 1
  %86 = icmp ne i16 %85, 0
  br label %94

87:                                               ; preds = %57
  %88 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 5, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = lshr i32 %89, 8
  %91 = and i32 %90, 7
  %92 = and i32 %89, 16
  %93 = icmp ne i32 %92, 0
  br label %94

94:                                               ; preds = %87, %81
  %95 = phi i1 [ %93, %87 ], [ %86, %81 ]
  %96 = phi i32 [ %91, %87 ], [ %84, %81 ]
  %97 = shl nuw nsw i32 %96, 23
  %98 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %4, i32 0, i32 13
  %99 = load i32, ptr %98, align 4
  %100 = or i32 %99, %97
  %101 = or i32 %100, 4194304
  %102 = select i1 %95, i32 %101, i32 %100
  store i32 %102, ptr %98, align 4
  %103 = and i16 %8, 64
  %104 = icmp eq i16 %103, 0
  %105 = and i16 %8, 32
  %106 = icmp eq i16 %105, 0
  %107 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 14
  %108 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 15
  %109 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 5, i32 1
  %110 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 5, i32 2, i32 2
  br label %111

111:                                              ; preds = %201, %94
  %112 = phi i32 [ 0, %94 ], [ %202, %201 ]
  %113 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %112
  %114 = load i16, ptr %113, align 2
  %115 = zext i16 %114 to i32
  %116 = getelementptr %struct.minstrel_ht_sta, ptr %4, i32 0, i32 19, i32 %112
  store i16 0, ptr %116, align 2
  %117 = and i32 %112, 2147483646
  %118 = icmp eq i32 %117, 16
  br i1 %118, label %201, label %119

119:                                              ; preds = %111
  %120 = and i32 %115, 128
  %121 = icmp eq i32 %120, 0
  %122 = and i32 %115, 32
  %123 = icmp eq i32 %122, 0
  br i1 %121, label %127, label %124

124:                                              ; preds = %119
  br i1 %123, label %126, label %125

125:                                              ; preds = %124
  br i1 %104, label %201, label %128

126:                                              ; preds = %124
  br i1 %106, label %201, label %131

127:                                              ; preds = %119
  br i1 %123, label %131, label %128

128:                                              ; preds = %127, %125
  %129 = load i32, ptr %107, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %201, label %131

131:                                              ; preds = %128, %127, %126
  %132 = phi i1 [ false, %128 ], [ true, %127 ], [ true, %126 ]
  %133 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %112, i32 1
  %134 = load i8, ptr %133, align 2
  %135 = zext i8 %134 to i32
  %136 = load i32, ptr %108, align 4
  %137 = icmp eq i32 %136, 2
  %138 = icmp ugt i8 %134, 1
  %139 = select i1 %137, i1 %138, i1 false
  br i1 %139, label %201, label %140

140:                                              ; preds = %131
  %141 = and i32 %115, 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %140
  %144 = load i8, ptr @minstrel_vht_only, align 1
  %145 = icmp eq i8 %144, 0
  %146 = select i1 %80, i1 true, i1 %145
  br i1 %146, label %147, label %201

147:                                              ; preds = %143
  %148 = add nsw i32 %135, -1
  %149 = getelementptr [10 x i8], ptr %7, i32 0, i32 %148
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i16
  store i16 %151, ptr %116, align 2
  br label %201

152:                                              ; preds = %140
  %153 = load i8, ptr %9, align 4, !range !9
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %201, label %155

155:                                              ; preds = %152
  %156 = and i32 %115, 256
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159, !prof !11

158:                                              ; preds = %155
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1675, i32 noundef 9, ptr noundef null) #15
  br label %201

159:                                              ; preds = %155
  %160 = and i32 %115, 1024
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %163, label %162, !prof !10

162:                                              ; preds = %159
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1676, i32 noundef 9, ptr noundef null) #15
  br label %201

163:                                              ; preds = %159
  %164 = and i32 %115, 512
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %163
  %167 = load i32, ptr %107, align 4
  %168 = icmp ult i32 %167, 2
  br i1 %168, label %201, label %169

169:                                              ; preds = %166
  br i1 %121, label %174, label %170

170:                                              ; preds = %169
  %171 = load i32, ptr %109, align 4
  %172 = and i32 %171, 32
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %201, label %174

174:                                              ; preds = %170, %169, %163
  %175 = lshr exact i32 %164, 8
  %176 = select i1 %132, i32 %175, i32 1
  %177 = load i16, ptr %110, align 4
  switch i32 %176, label %185 [
    i32 0, label %178
    i32 2, label %181
  ]

178:                                              ; preds = %174
  %179 = icmp eq i8 %134, 3
  %180 = select i1 %179, i16 0, i16 512
  br label %185

181:                                              ; preds = %174
  %182 = and i32 %135, 251
  %183 = icmp eq i32 %182, 3
  %184 = select i1 %183, i16 64, i16 0
  br label %185

185:                                              ; preds = %181, %178, %174
  %186 = phi i16 [ 0, %174 ], [ %180, %178 ], [ %184, %181 ]
  %187 = zext i16 %177 to i32
  %188 = shl nuw nsw i32 %135, 1
  %189 = add nsw i32 %188, -2
  %190 = lshr i32 %187, %189
  %191 = and i32 %190, 3
  switch i32 %191, label %196 [
    i32 0, label %192
    i32 1, label %194
    i32 2, label %197
  ]

192:                                              ; preds = %185
  %193 = or i16 %186, 768
  br label %197

194:                                              ; preds = %185
  %195 = or i16 %186, 512
  br label %197

196:                                              ; preds = %185
  br label %197

197:                                              ; preds = %196, %194, %192, %185
  %198 = phi i16 [ 1023, %196 ], [ %186, %185 ], [ %195, %194 ], [ %193, %192 ]
  %199 = and i16 %198, 1023
  %200 = xor i16 %199, 1023
  store i16 %200, ptr %116, align 2
  br label %201

201:                                              ; preds = %197, %170, %166, %162, %158, %152, %147, %143, %131, %128, %126, %125, %111
  %202 = add nuw nsw i32 %112, 1
  %203 = icmp eq i32 %202, 42
  br i1 %203, label %204, label %111

204:                                              ; preds = %201
  %205 = load i32, ptr %20, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %322

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 3, i32 1
  %209 = load i8, ptr %208, align 2, !range !9
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %217, label %211

211:                                              ; preds = %207
  %212 = load ptr, ptr %0, align 4
  %213 = getelementptr inbounds %struct.ieee80211_hw, ptr %212, i32 0, i32 4
  %214 = load volatile i32, ptr %213, align 4
  %215 = and i32 %214, 33554432
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %322, label %217

217:                                              ; preds = %211, %207
  %218 = icmp eq ptr %3, null
  %219 = getelementptr %struct.minstrel_ht_sta, ptr %4, i32 0, i32 19, i32 16
  %220 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 7, i32 0
  %221 = load i8, ptr %220, align 1
  %222 = icmp eq i8 %221, -1
  br i1 %222, label %239, label %223

223:                                              ; preds = %217
  br i1 %218, label %230, label %224

224:                                              ; preds = %223
  %225 = zext i8 %221 to i32
  %226 = load i32, ptr %3, align 4
  %227 = shl nuw i32 1, %225
  %228 = and i32 %226, %227
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %243, label %230

230:                                              ; preds = %224, %223
  %231 = load i16, ptr %219, align 2
  %232 = or i16 %231, 1
  store i16 %232, ptr %219, align 2
  %233 = load ptr, ptr %35, align 4
  %234 = load i32, ptr %233, align 4
  %235 = and i32 %234, 1
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %230
  %238 = or i16 %231, 17
  store i16 %238, ptr %219, align 2
  br label %239

239:                                              ; preds = %237, %230, %217
  %240 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 7, i32 1
  %241 = load i8, ptr %240, align 1
  %242 = icmp eq i8 %241, -1
  br i1 %242, label %269, label %247

243:                                              ; preds = %224
  %244 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 7, i32 1
  %245 = load i8, ptr %244, align 1
  %246 = icmp eq i8 %245, -1
  br i1 %246, label %269, label %252

247:                                              ; preds = %239
  br i1 %218, label %259, label %248

248:                                              ; preds = %247
  %249 = load i32, ptr %20, align 4
  %250 = getelementptr [6 x i32], ptr %3, i32 0, i32 %249
  %251 = load i32, ptr %250, align 4
  br label %252

252:                                              ; preds = %248, %243
  %253 = phi i32 [ %251, %248 ], [ %226, %243 ]
  %254 = phi i8 [ %241, %248 ], [ %245, %243 ]
  %255 = zext i8 %254 to i32
  %256 = shl nuw i32 1, %255
  %257 = and i32 %253, %256
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %269, label %259

259:                                              ; preds = %252, %247
  %260 = load i16, ptr %219, align 2
  %261 = or i16 %260, 2
  store i16 %261, ptr %219, align 2
  %262 = load ptr, ptr %35, align 4
  %263 = getelementptr %struct.ieee80211_rate, ptr %262, i32 1
  %264 = load i32, ptr %263, align 4
  %265 = and i32 %264, 1
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %259
  %268 = or i16 %260, 34
  store i16 %268, ptr %219, align 2
  br label %269

269:                                              ; preds = %267, %259, %252, %243, %239
  %270 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 7, i32 2
  %271 = load i8, ptr %270, align 1
  %272 = icmp eq i8 %271, -1
  br i1 %272, label %292, label %273

273:                                              ; preds = %269
  br i1 %218, label %282, label %274

274:                                              ; preds = %273
  %275 = load i32, ptr %20, align 4
  %276 = zext i8 %271 to i32
  %277 = getelementptr [6 x i32], ptr %3, i32 0, i32 %275
  %278 = load i32, ptr %277, align 4
  %279 = shl nuw i32 1, %276
  %280 = and i32 %278, %279
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %296, label %282

282:                                              ; preds = %274, %273
  %283 = load i16, ptr %219, align 2
  %284 = or i16 %283, 4
  store i16 %284, ptr %219, align 2
  %285 = load ptr, ptr %35, align 4
  %286 = getelementptr %struct.ieee80211_rate, ptr %285, i32 2
  %287 = load i32, ptr %286, align 4
  %288 = and i32 %287, 1
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %282
  %291 = or i16 %283, 68
  store i16 %291, ptr %219, align 2
  br label %292

292:                                              ; preds = %290, %282, %269
  %293 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 7, i32 3
  %294 = load i8, ptr %293, align 1
  %295 = icmp eq i8 %294, -1
  br i1 %295, label %322, label %300

296:                                              ; preds = %274
  %297 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 7, i32 3
  %298 = load i8, ptr %297, align 1
  %299 = icmp eq i8 %298, -1
  br i1 %299, label %322, label %305

300:                                              ; preds = %292
  br i1 %218, label %312, label %301

301:                                              ; preds = %300
  %302 = load i32, ptr %20, align 4
  %303 = getelementptr [6 x i32], ptr %3, i32 0, i32 %302
  %304 = load i32, ptr %303, align 4
  br label %305

305:                                              ; preds = %301, %296
  %306 = phi i32 [ %304, %301 ], [ %278, %296 ]
  %307 = phi i8 [ %294, %301 ], [ %298, %296 ]
  %308 = zext i8 %307 to i32
  %309 = shl nuw i32 1, %308
  %310 = and i32 %306, %309
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %322, label %312

312:                                              ; preds = %305, %300
  %313 = load i16, ptr %219, align 2
  %314 = or i16 %313, 8
  store i16 %314, ptr %219, align 2
  %315 = load ptr, ptr %35, align 4
  %316 = getelementptr %struct.ieee80211_rate, ptr %315, i32 3
  %317 = load i32, ptr %316, align 4
  %318 = and i32 %317, 1
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %322, label %320

320:                                              ; preds = %312
  %321 = or i16 %313, 136
  store i16 %321, ptr %219, align 2
  br label %322

322:                                              ; preds = %320, %312, %305, %296, %292, %211, %204
  %323 = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 3, i32 1
  %324 = load i8, ptr %323, align 2, !range !9
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %326, label %484

326:                                              ; preds = %322
  %327 = load i32, ptr %20, align 4
  %328 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %327
  %329 = icmp eq ptr %3, null
  %330 = getelementptr %struct.minstrel_ht_sta, ptr %4, i32 0, i32 19, i32 17
  %331 = load i8, ptr %328, align 1
  %332 = icmp eq i8 %331, -1
  br i1 %332, label %344, label %333

333:                                              ; preds = %326
  br i1 %329, label %341, label %334

334:                                              ; preds = %333
  %335 = zext i8 %331 to i32
  %336 = getelementptr [6 x i32], ptr %3, i32 0, i32 %327
  %337 = load i32, ptr %336, align 4
  %338 = shl nuw i32 1, %335
  %339 = and i32 %337, %338
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %348, label %341

341:                                              ; preds = %334, %333
  %342 = load i16, ptr %330, align 2
  %343 = or i16 %342, 1
  store i16 %343, ptr %330, align 2
  br label %344

344:                                              ; preds = %341, %326
  %345 = getelementptr i8, ptr %328, i32 1
  %346 = load i8, ptr %345, align 1
  %347 = icmp eq i8 %346, -1
  br i1 %347, label %367, label %352

348:                                              ; preds = %334
  %349 = getelementptr i8, ptr %328, i32 1
  %350 = load i8, ptr %349, align 1
  %351 = icmp eq i8 %350, -1
  br i1 %351, label %367, label %357

352:                                              ; preds = %344
  br i1 %329, label %364, label %353

353:                                              ; preds = %352
  %354 = load i32, ptr %20, align 4
  %355 = getelementptr [6 x i32], ptr %3, i32 0, i32 %354
  %356 = load i32, ptr %355, align 4
  br label %357

357:                                              ; preds = %353, %348
  %358 = phi i32 [ %356, %353 ], [ %337, %348 ]
  %359 = phi i8 [ %346, %353 ], [ %350, %348 ]
  %360 = zext i8 %359 to i32
  %361 = shl nuw i32 1, %360
  %362 = and i32 %358, %361
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %367, label %364

364:                                              ; preds = %357, %352
  %365 = load i16, ptr %330, align 2
  %366 = or i16 %365, 2
  store i16 %366, ptr %330, align 2
  br label %367

367:                                              ; preds = %364, %357, %348, %344
  %368 = getelementptr i8, ptr %328, i32 2
  %369 = load i8, ptr %368, align 1
  %370 = icmp eq i8 %369, -1
  br i1 %370, label %383, label %371

371:                                              ; preds = %367
  br i1 %329, label %380, label %372

372:                                              ; preds = %371
  %373 = load i32, ptr %20, align 4
  %374 = zext i8 %369 to i32
  %375 = getelementptr [6 x i32], ptr %3, i32 0, i32 %373
  %376 = load i32, ptr %375, align 4
  %377 = shl nuw i32 1, %374
  %378 = and i32 %376, %377
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %387, label %380

380:                                              ; preds = %372, %371
  %381 = load i16, ptr %330, align 2
  %382 = or i16 %381, 4
  store i16 %382, ptr %330, align 2
  br label %383

383:                                              ; preds = %380, %367
  %384 = getelementptr i8, ptr %328, i32 3
  %385 = load i8, ptr %384, align 1
  %386 = icmp eq i8 %385, -1
  br i1 %386, label %406, label %391

387:                                              ; preds = %372
  %388 = getelementptr i8, ptr %328, i32 3
  %389 = load i8, ptr %388, align 1
  %390 = icmp eq i8 %389, -1
  br i1 %390, label %406, label %396

391:                                              ; preds = %383
  br i1 %329, label %403, label %392

392:                                              ; preds = %391
  %393 = load i32, ptr %20, align 4
  %394 = getelementptr [6 x i32], ptr %3, i32 0, i32 %393
  %395 = load i32, ptr %394, align 4
  br label %396

396:                                              ; preds = %392, %387
  %397 = phi i32 [ %395, %392 ], [ %376, %387 ]
  %398 = phi i8 [ %385, %392 ], [ %389, %387 ]
  %399 = zext i8 %398 to i32
  %400 = shl nuw i32 1, %399
  %401 = and i32 %397, %400
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %406, label %403

403:                                              ; preds = %396, %391
  %404 = load i16, ptr %330, align 2
  %405 = or i16 %404, 8
  store i16 %405, ptr %330, align 2
  br label %406

406:                                              ; preds = %403, %396, %387, %383
  %407 = getelementptr i8, ptr %328, i32 4
  %408 = load i8, ptr %407, align 1
  %409 = icmp eq i8 %408, -1
  br i1 %409, label %422, label %410

410:                                              ; preds = %406
  br i1 %329, label %419, label %411

411:                                              ; preds = %410
  %412 = load i32, ptr %20, align 4
  %413 = zext i8 %408 to i32
  %414 = getelementptr [6 x i32], ptr %3, i32 0, i32 %412
  %415 = load i32, ptr %414, align 4
  %416 = shl nuw i32 1, %413
  %417 = and i32 %415, %416
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %426, label %419

419:                                              ; preds = %411, %410
  %420 = load i16, ptr %330, align 2
  %421 = or i16 %420, 16
  store i16 %421, ptr %330, align 2
  br label %422

422:                                              ; preds = %419, %406
  %423 = getelementptr i8, ptr %328, i32 5
  %424 = load i8, ptr %423, align 1
  %425 = icmp eq i8 %424, -1
  br i1 %425, label %445, label %430

426:                                              ; preds = %411
  %427 = getelementptr i8, ptr %328, i32 5
  %428 = load i8, ptr %427, align 1
  %429 = icmp eq i8 %428, -1
  br i1 %429, label %445, label %435

430:                                              ; preds = %422
  br i1 %329, label %442, label %431

431:                                              ; preds = %430
  %432 = load i32, ptr %20, align 4
  %433 = getelementptr [6 x i32], ptr %3, i32 0, i32 %432
  %434 = load i32, ptr %433, align 4
  br label %435

435:                                              ; preds = %431, %426
  %436 = phi i32 [ %434, %431 ], [ %415, %426 ]
  %437 = phi i8 [ %424, %431 ], [ %428, %426 ]
  %438 = zext i8 %437 to i32
  %439 = shl nuw i32 1, %438
  %440 = and i32 %436, %439
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %445, label %442

442:                                              ; preds = %435, %430
  %443 = load i16, ptr %330, align 2
  %444 = or i16 %443, 32
  store i16 %444, ptr %330, align 2
  br label %445

445:                                              ; preds = %442, %435, %426, %422
  %446 = getelementptr i8, ptr %328, i32 6
  %447 = load i8, ptr %446, align 1
  %448 = icmp eq i8 %447, -1
  br i1 %448, label %461, label %449

449:                                              ; preds = %445
  br i1 %329, label %458, label %450

450:                                              ; preds = %449
  %451 = load i32, ptr %20, align 4
  %452 = zext i8 %447 to i32
  %453 = getelementptr [6 x i32], ptr %3, i32 0, i32 %451
  %454 = load i32, ptr %453, align 4
  %455 = shl nuw i32 1, %452
  %456 = and i32 %454, %455
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %465, label %458

458:                                              ; preds = %450, %449
  %459 = load i16, ptr %330, align 2
  %460 = or i16 %459, 64
  store i16 %460, ptr %330, align 2
  br label %461

461:                                              ; preds = %458, %445
  %462 = getelementptr i8, ptr %328, i32 7
  %463 = load i8, ptr %462, align 1
  %464 = icmp eq i8 %463, -1
  br i1 %464, label %484, label %469

465:                                              ; preds = %450
  %466 = getelementptr i8, ptr %328, i32 7
  %467 = load i8, ptr %466, align 1
  %468 = icmp eq i8 %467, -1
  br i1 %468, label %484, label %474

469:                                              ; preds = %461
  br i1 %329, label %481, label %470

470:                                              ; preds = %469
  %471 = load i32, ptr %20, align 4
  %472 = getelementptr [6 x i32], ptr %3, i32 0, i32 %471
  %473 = load i32, ptr %472, align 4
  br label %474

474:                                              ; preds = %470, %465
  %475 = phi i32 [ %473, %470 ], [ %454, %465 ]
  %476 = phi i8 [ %463, %470 ], [ %467, %465 ]
  %477 = zext i8 %476 to i32
  %478 = shl nuw i32 1, %477
  %479 = and i32 %475, %478
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %484, label %481

481:                                              ; preds = %474, %469
  %482 = load i16, ptr %330, align 2
  %483 = or i16 %482, 128
  store i16 %483, ptr %330, align 2
  br label %484

484:                                              ; preds = %481, %474, %465, %461, %322
  tail call fastcc void @minstrel_ht_update_stats(ptr noundef %0, ptr noundef %4)
  tail call fastcc void @minstrel_ht_update_rates(ptr noundef %0, ptr noundef %4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_frame_duration(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @minstrel_ht_update_stats(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca [4 x i16], align 8
  %4 = alloca [4 x i16], align 8
  %5 = alloca [4 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.ieee80211_sta, ptr %6, i32 0, i32 3, i32 1
  %8 = load i8, ptr %7, align 2, !range !9
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr %struct.ieee80211_hw, ptr %14, i32 0, i32 4, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 8192
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 3
  br i1 %18, label %20, label %30

20:                                               ; preds = %13
  %21 = load i32, ptr %19, align 4
  %22 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %23, 12
  %25 = udiv i32 %24, %11
  %26 = sub i32 %25, %21
  %27 = shl i32 %26, 5
  %28 = sdiv i32 %27, 128
  %29 = add i32 %28, %21
  br label %30

30:                                               ; preds = %20, %13
  %31 = phi i32 [ %29, %20 ], [ 0, %13 ]
  store i32 %31, ptr %19, align 4
  %32 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 1
  store i32 0, ptr %32, align 4
  store i32 0, ptr %10, align 4
  br label %33

33:                                               ; preds = %30, %2
  %34 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 19, i32 16
  %35 = load i16, ptr %34, align 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 19, i32 17
  %39 = load i16, ptr %38, align 2
  %40 = icmp eq i16 %39, 0
  %41 = select i1 %40, i16 0, i16 272
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi i16 [ 272, %37 ], [ 256, %33 ]
  %44 = phi i16 [ %41, %37 ], [ 256, %33 ]
  store i16 %44, ptr %5, align 8
  %45 = getelementptr inbounds [4 x i16], ptr %5, i32 0, i32 1
  store i16 %44, ptr %45, align 2
  %46 = getelementptr inbounds [4 x i16], ptr %5, i32 0, i32 2
  store i16 %44, ptr %46, align 4
  %47 = getelementptr inbounds [4 x i16], ptr %5, i32 0, i32 3
  store i16 %44, ptr %47, align 2
  %48 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 19, i32 18
  %49 = load i16, ptr %48, align 2
  %50 = icmp ne i16 %49, 0
  %51 = xor i1 %9, true
  %52 = select i1 %50, i1 true, i1 %51
  %53 = select i1 %50, i16 288, i16 0
  %54 = select i1 %52, i16 %53, i16 %43
  store i16 %54, ptr %3, align 8
  %55 = getelementptr inbounds [4 x i16], ptr %3, i32 0, i32 1
  store i16 %54, ptr %55, align 2
  %56 = getelementptr inbounds [4 x i16], ptr %3, i32 0, i32 2
  store i16 %54, ptr %56, align 4
  %57 = getelementptr inbounds [4 x i16], ptr %3, i32 0, i32 3
  store i16 %54, ptr %57, align 2
  %58 = select i1 %9, ptr %3, ptr %5
  %59 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 7
  %60 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 3
  %61 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 4
  %62 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 9
  %63 = getelementptr inbounds [4 x i16], ptr %4, i32 0, i32 1
  %64 = getelementptr inbounds [4 x i16], ptr %4, i32 0, i32 2
  %65 = getelementptr inbounds [4 x i16], ptr %4, i32 0, i32 3
  br label %66

66:                                               ; preds = %210, %42
  %67 = phi i32 [ 0, %42 ], [ %211, %210 ]
  %68 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 19, i32 %67
  %69 = load i16, ptr %68, align 2
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %210, label %71

71:                                               ; preds = %66
  %72 = trunc i32 %67 to i16
  %73 = shl i16 %72, 4
  store i16 %73, ptr %4, align 8
  store i16 %73, ptr %63, align 2
  store i16 %73, ptr %64, align 4
  store i16 %73, ptr %65, align 2
  %74 = icmp eq i32 %67, 16
  %75 = select i1 %74, ptr %58, ptr %3
  %76 = shl i32 %67, 4
  %77 = and i32 %67, 2147483646
  %78 = icmp eq i32 %77, 16
  %79 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %67, i32 2
  br label %80

80:                                               ; preds = %204, %71
  %81 = phi i16 [ %69, %71 ], [ %206, %204 ]
  %82 = phi i32 [ 9, %71 ], [ %205, %204 ]
  %83 = phi i16 [ 0, %71 ], [ %202, %204 ]
  %84 = zext i16 %81 to i32
  %85 = shl nuw i32 1, %82
  %86 = and i32 %85, %84
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %201, label %88

88:                                               ; preds = %80
  %89 = or i32 %82, %76
  %90 = trunc i32 %89 to i16
  %91 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %67, i32 4, i32 %82
  %92 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %67, i32 4, i32 %82, i32 10
  store i8 0, ptr %92, align 2
  %93 = load i16, ptr %91, align 4
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %95, label %100, !prof !10

95:                                               ; preds = %88
  %96 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %67, i32 4, i32 %82, i32 2
  %97 = load i16, ptr %96, align 4
  %98 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %67, i32 4, i32 %82, i32 4
  %99 = load i32, ptr %98, align 4
  br label %137

100:                                              ; preds = %88
  %101 = zext i16 %93 to i32
  %102 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %67, i32 4, i32 %82, i32 2
  %103 = load i16, ptr %102, align 4
  %104 = zext i16 %103 to i32
  %105 = shl nuw nsw i32 %104, 12
  %106 = udiv i32 %105, %101
  %107 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %67, i32 4, i32 %82, i32 6
  %108 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %67, i32 4, i32 %82, i32 7
  %109 = load i16, ptr %107, align 2
  %110 = icmp ult i32 %105, %101
  %111 = select i1 %110, i32 1, i32 %106
  %112 = icmp eq i16 %109, 0
  br i1 %112, label %126, label %113

113:                                              ; preds = %100
  %114 = load i16, ptr %108, align 2
  %115 = zext i16 %114 to i32
  %116 = zext i16 %109 to i32
  %117 = mul i32 %111, 1173
  %118 = mul nuw nsw i32 %116, 5273
  %119 = add i32 %117, %118
  %120 = mul nsw i32 %115, -2350
  %121 = add i32 %119, %120
  %122 = ashr i32 %121, 12
  %123 = tail call i32 @llvm.smin.i32(i32 %122, i32 4096) #15
  %124 = icmp slt i32 %123, 0
  %125 = select i1 %124, i32 1, i32 %123
  br label %126

126:                                              ; preds = %113, %100
  %127 = phi i32 [ %116, %113 ], [ %111, %100 ]
  %128 = phi i32 [ %125, %113 ], [ %111, %100 ]
  %129 = trunc i32 %127 to i16
  store i16 %129, ptr %108, align 2
  %130 = trunc i32 %128 to i16
  store i16 %130, ptr %107, align 2
  %131 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %67, i32 4, i32 %82, i32 4
  %132 = load i32, ptr %131, align 4
  %133 = add i32 %132, %101
  store i32 %133, ptr %131, align 4
  %134 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %67, i32 4, i32 %82, i32 5
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %135, %104
  store i32 %136, ptr %134, align 4
  br label %137

137:                                              ; preds = %126, %95
  %138 = phi i32 [ %99, %95 ], [ %133, %126 ]
  %139 = phi i16 [ %97, %95 ], [ %103, %126 ]
  %140 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %67, i32 4, i32 %82, i32 2
  %141 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %67, i32 4, i32 %82, i32 3
  store i16 %139, ptr %141, align 2
  %142 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %67, i32 4, i32 %82, i32 1
  store i16 %93, ptr %142, align 2
  store i16 0, ptr %140, align 4
  store i16 0, ptr %91, align 4
  %143 = icmp eq i32 %138, 0
  %144 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %67, i32 4, i32 %82, i32 6
  %145 = load i16, ptr %144, align 4
  %146 = tail call i16 @llvm.umax.i16(i16 %83, i16 %145)
  br i1 %143, label %147, label %148

147:                                              ; preds = %137
  store i16 %146, ptr %144, align 4
  br label %148

148:                                              ; preds = %147, %137
  %149 = phi i16 [ %146, %147 ], [ %145, %137 ]
  %150 = phi i16 [ %83, %147 ], [ %146, %137 ]
  %151 = zext i16 %149 to i32
  %152 = load i32, ptr %59, align 4
  %153 = icmp ult i16 %149, 409
  br i1 %153, label %201, label %154

154:                                              ; preds = %148
  br i1 %78, label %155, label %157

155:                                              ; preds = %154
  %156 = load i32, ptr %62, align 4
  br label %183

157:                                              ; preds = %154
  %158 = load i32, ptr %60, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %157
  %161 = lshr i32 %158, 12
  br label %183

162:                                              ; preds = %157
  %163 = load i16, ptr %61, align 4
  %164 = and i16 %163, -32
  %165 = icmp eq i16 %164, 256
  br i1 %165, label %183, label %166

166:                                              ; preds = %162
  %167 = zext i16 %163 to i32
  %168 = lshr i32 %167, 4
  %169 = and i32 %167, 15
  %170 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %168, i32 4, i32 %169
  %171 = load i16, ptr %170, align 2
  %172 = zext i16 %171 to i32
  %173 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %168, i32 2
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = shl i32 %172, %175
  %177 = icmp sgt i32 %176, 400000
  br i1 %177, label %183, label %178

178:                                              ; preds = %166
  %179 = icmp sgt i32 %176, 250000
  br i1 %179, label %183, label %180

180:                                              ; preds = %178
  %181 = icmp sgt i32 %176, 150000
  %182 = select i1 %181, i32 8, i32 16
  br label %183

183:                                              ; preds = %180, %178, %166, %162, %160, %155
  %184 = phi i32 [ %156, %155 ], [ %152, %160 ], [ %152, %162 ], [ %152, %166 ], [ %152, %178 ], [ %152, %180 ]
  %185 = phi i32 [ 1, %155 ], [ %161, %160 ], [ 1, %162 ], [ 2, %166 ], [ 4, %178 ], [ %182, %180 ]
  %186 = mul i32 %184, 1000
  %187 = udiv i32 %186, %185
  %188 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %67, i32 4, i32 %82
  %189 = load i16, ptr %188, align 2
  %190 = zext i16 %189 to i32
  %191 = load i8, ptr %79, align 1
  %192 = zext i8 %191 to i32
  %193 = shl i32 %190, %192
  %194 = add i32 %193, %187
  %195 = tail call i32 @llvm.smin.i32(i32 %151, i32 3686) #15
  %196 = mul nuw i32 %195, 1000000
  %197 = udiv i32 %196, %194
  %198 = mul i32 %197, 100
  %199 = icmp ult i32 %198, 4096
  br i1 %199, label %201, label %200

200:                                              ; preds = %183
  call fastcc void @minstrel_ht_sort_best_tp_rates(ptr noundef %1, i16 noundef zeroext %90, ptr noundef nonnull %75)
  call fastcc void @minstrel_ht_sort_best_tp_rates(ptr noundef %1, i16 noundef zeroext %90, ptr noundef nonnull %4)
  br label %201

201:                                              ; preds = %200, %183, %148, %80
  %202 = phi i16 [ %150, %183 ], [ %150, %200 ], [ %83, %80 ], [ %150, %148 ]
  %203 = icmp eq i32 %82, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %201
  %205 = add nsw i32 %82, -1
  %206 = load i16, ptr %68, align 2
  br label %80

207:                                              ; preds = %201
  %208 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %67, i32 2
  %209 = load i64, ptr %4, align 8
  store i64 %209, ptr %208, align 2
  br label %210

210:                                              ; preds = %207, %66
  %211 = add nuw nsw i32 %67, 1
  %212 = icmp eq i32 %211, 42
  br i1 %212, label %213, label %66

213:                                              ; preds = %210
  %214 = load i16, ptr %5, align 8
  %215 = zext i16 %214 to i32
  %216 = lshr i32 %215, 4
  %217 = and i32 %215, 15
  %218 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %216, i32 4, i32 %217, i32 6
  %219 = load i16, ptr %218, align 4
  %220 = zext i16 %219 to i32
  %221 = load i32, ptr %59, align 4
  %222 = icmp ult i16 %219, 409
  br i1 %222, label %272, label %223

223:                                              ; preds = %213
  %224 = and i32 %215, 65504
  %225 = icmp eq i32 %224, 256
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = load i32, ptr %62, align 4
  br label %254

228:                                              ; preds = %223
  %229 = load i32, ptr %60, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %228
  %232 = lshr i32 %229, 12
  br label %254

233:                                              ; preds = %228
  %234 = load i16, ptr %61, align 4
  %235 = and i16 %234, -32
  %236 = icmp eq i16 %235, 256
  br i1 %236, label %254, label %237

237:                                              ; preds = %233
  %238 = zext i16 %234 to i32
  %239 = lshr i32 %238, 4
  %240 = and i32 %238, 15
  %241 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %239, i32 4, i32 %240
  %242 = load i16, ptr %241, align 2
  %243 = zext i16 %242 to i32
  %244 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %239, i32 2
  %245 = load i8, ptr %244, align 1
  %246 = zext i8 %245 to i32
  %247 = shl i32 %243, %246
  %248 = icmp sgt i32 %247, 400000
  br i1 %248, label %254, label %249

249:                                              ; preds = %237
  %250 = icmp sgt i32 %247, 250000
  br i1 %250, label %254, label %251

251:                                              ; preds = %249
  %252 = icmp sgt i32 %247, 150000
  %253 = select i1 %252, i32 8, i32 16
  br label %254

254:                                              ; preds = %251, %249, %237, %233, %231, %226
  %255 = phi i32 [ %227, %226 ], [ %221, %231 ], [ %221, %233 ], [ %221, %237 ], [ %221, %249 ], [ %221, %251 ]
  %256 = phi i32 [ 1, %226 ], [ %232, %231 ], [ 1, %233 ], [ 2, %237 ], [ 4, %249 ], [ %253, %251 ]
  %257 = mul i32 %255, 1000
  %258 = udiv i32 %257, %256
  %259 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %216, i32 4, i32 %217
  %260 = load i16, ptr %259, align 2
  %261 = zext i16 %260 to i32
  %262 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %216, i32 2
  %263 = load i8, ptr %262, align 1
  %264 = zext i8 %263 to i32
  %265 = shl i32 %261, %264
  %266 = add i32 %265, %258
  %267 = tail call i32 @llvm.smin.i32(i32 %220, i32 3686) #15
  %268 = mul nuw i32 %267, 1000000
  %269 = udiv i32 %268, %266
  %270 = mul i32 %269, 100
  %271 = lshr i32 %270, 12
  br label %272

272:                                              ; preds = %254, %213
  %273 = phi i32 [ %271, %254 ], [ 0, %213 ]
  %274 = load i16, ptr %3, align 8
  %275 = zext i16 %274 to i32
  %276 = lshr i32 %275, 4
  %277 = and i32 %275, 15
  %278 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %276, i32 4, i32 %277, i32 6
  %279 = load i16, ptr %278, align 4
  %280 = zext i16 %279 to i32
  %281 = icmp ult i16 %279, 409
  br i1 %281, label %331, label %282

282:                                              ; preds = %272
  %283 = and i32 %275, 65504
  %284 = icmp eq i32 %283, 256
  br i1 %284, label %285, label %287

285:                                              ; preds = %282
  %286 = load i32, ptr %62, align 4
  br label %313

287:                                              ; preds = %282
  %288 = load i32, ptr %60, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %287
  %291 = lshr i32 %288, 12
  br label %313

292:                                              ; preds = %287
  %293 = load i16, ptr %61, align 4
  %294 = and i16 %293, -32
  %295 = icmp eq i16 %294, 256
  br i1 %295, label %313, label %296

296:                                              ; preds = %292
  %297 = zext i16 %293 to i32
  %298 = lshr i32 %297, 4
  %299 = and i32 %297, 15
  %300 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %298, i32 4, i32 %299
  %301 = load i16, ptr %300, align 2
  %302 = zext i16 %301 to i32
  %303 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %298, i32 2
  %304 = load i8, ptr %303, align 1
  %305 = zext i8 %304 to i32
  %306 = shl i32 %302, %305
  %307 = icmp sgt i32 %306, 400000
  br i1 %307, label %313, label %308

308:                                              ; preds = %296
  %309 = icmp sgt i32 %306, 250000
  br i1 %309, label %313, label %310

310:                                              ; preds = %308
  %311 = icmp sgt i32 %306, 150000
  %312 = select i1 %311, i32 8, i32 16
  br label %313

313:                                              ; preds = %310, %308, %296, %292, %290, %285
  %314 = phi i32 [ %286, %285 ], [ %221, %290 ], [ %221, %292 ], [ %221, %296 ], [ %221, %308 ], [ %221, %310 ]
  %315 = phi i32 [ 1, %285 ], [ %291, %290 ], [ 1, %292 ], [ 2, %296 ], [ 4, %308 ], [ %312, %310 ]
  %316 = mul i32 %314, 1000
  %317 = udiv i32 %316, %315
  %318 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %276, i32 4, i32 %277
  %319 = load i16, ptr %318, align 2
  %320 = zext i16 %319 to i32
  %321 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %276, i32 2
  %322 = load i8, ptr %321, align 1
  %323 = zext i8 %322 to i32
  %324 = shl i32 %320, %323
  %325 = add i32 %324, %317
  %326 = tail call i32 @llvm.smin.i32(i32 %280, i32 3686) #15
  %327 = mul nuw i32 %326, 1000000
  %328 = udiv i32 %327, %325
  %329 = mul i32 %328, 100
  %330 = lshr i32 %329, 12
  br label %331

331:                                              ; preds = %313, %272
  %332 = phi i32 [ %330, %313 ], [ 0, %272 ]
  %333 = icmp ugt i32 %273, %332
  br i1 %333, label %334, label %338

334:                                              ; preds = %331
  call fastcc void @minstrel_ht_sort_best_tp_rates(ptr noundef %1, i16 noundef zeroext %214, ptr noundef nonnull %3) #15
  %335 = load i16, ptr %45, align 2
  call fastcc void @minstrel_ht_sort_best_tp_rates(ptr noundef %1, i16 noundef zeroext %335, ptr noundef nonnull %3) #15
  %336 = load i16, ptr %46, align 4
  call fastcc void @minstrel_ht_sort_best_tp_rates(ptr noundef %1, i16 noundef zeroext %336, ptr noundef nonnull %3) #15
  %337 = load i16, ptr %47, align 2
  call fastcc void @minstrel_ht_sort_best_tp_rates(ptr noundef %1, i16 noundef zeroext %337, ptr noundef nonnull %3) #15
  br label %338

338:                                              ; preds = %334, %331
  %339 = load i64, ptr %3, align 8
  store i64 %339, ptr %61, align 4
  %340 = trunc i64 %339 to i16
  %341 = and i16 %340, -32
  %342 = icmp eq i16 %341, 256
  %343 = trunc i64 %339 to i32
  %344 = lshr i32 %343, 4
  %345 = and i32 %344, 4095
  %346 = and i32 %343, 15
  %347 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %345, i32 4, i32 %346
  %348 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %345, i32 2
  %349 = trunc i64 %339 to i32
  %350 = and i32 %349, 65504
  %351 = icmp eq i32 %350, 256
  %352 = lshr i32 %349, 4
  %353 = and i32 %352, 4095
  %354 = and i32 %349, 15
  %355 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %353, i32 4, i32 %354, i32 6
  %356 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %353, i32 4, i32 %354
  %357 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %353, i32 2
  %358 = and i16 %340, -32
  %359 = icmp eq i16 %358, 256
  %360 = and i16 %340, -32
  %361 = icmp eq i16 %360, 256
  br label %362

362:                                              ; preds = %547, %338
  %363 = phi i32 [ 0, %338 ], [ %549, %547 ]
  %364 = phi i16 [ %54, %338 ], [ %548, %547 ]
  %365 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 19, i32 %363
  %366 = load i16, ptr %365, align 2
  %367 = icmp eq i16 %366, 0
  br i1 %367, label %547, label %368

368:                                              ; preds = %362
  %369 = shl nuw nsw i32 %363, 4
  %370 = trunc i32 %369 to i16
  %371 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %363, i32 3
  store i16 %370, ptr %371, align 2
  %372 = and i32 %363, 4094
  %373 = icmp eq i32 %372, 16
  %374 = xor i1 %373, true
  %375 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %363, i32 2
  %376 = select i1 %374, i1 true, i1 %351
  br label %377

377:                                              ; preds = %542, %368
  %378 = phi i16 [ %370, %368 ], [ %543, %542 ]
  %379 = phi i32 [ 0, %368 ], [ %545, %542 ]
  %380 = phi i16 [ %364, %368 ], [ %544, %542 ]
  %381 = load i16, ptr %365, align 2
  %382 = zext i16 %381 to i32
  %383 = shl nuw nsw i32 1, %379
  %384 = and i32 %383, %382
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %542, label %386

386:                                              ; preds = %377
  %387 = or i32 %379, %369
  %388 = trunc i32 %387 to i16
  %389 = zext i16 %380 to i32
  %390 = lshr i32 %389, 4
  %391 = and i32 %389, 15
  %392 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %390, i32 4, i32 %391, i32 6
  %393 = load i16, ptr %392, align 4
  %394 = zext i16 %393 to i32
  %395 = load i32, ptr %59, align 4
  %396 = icmp ult i16 %393, 409
  br i1 %396, label %438, label %397

397:                                              ; preds = %386
  %398 = and i32 %389, 65504
  %399 = icmp eq i32 %398, 256
  br i1 %399, label %400, label %402

400:                                              ; preds = %397
  %401 = load i32, ptr %62, align 4
  br label %420

402:                                              ; preds = %397
  %403 = load i32, ptr %60, align 4
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %407, label %405

405:                                              ; preds = %402
  %406 = lshr i32 %403, 12
  br label %420

407:                                              ; preds = %402
  br i1 %342, label %420, label %408

408:                                              ; preds = %407
  %409 = load i16, ptr %347, align 2
  %410 = zext i16 %409 to i32
  %411 = load i8, ptr %348, align 1
  %412 = zext i8 %411 to i32
  %413 = shl i32 %410, %412
  %414 = icmp sgt i32 %413, 400000
  br i1 %414, label %420, label %415

415:                                              ; preds = %408
  %416 = icmp sgt i32 %413, 250000
  br i1 %416, label %420, label %417

417:                                              ; preds = %415
  %418 = icmp sgt i32 %413, 150000
  %419 = select i1 %418, i32 8, i32 16
  br label %420

420:                                              ; preds = %417, %415, %408, %407, %405, %400
  %421 = phi i32 [ %401, %400 ], [ %395, %405 ], [ %395, %407 ], [ %395, %408 ], [ %395, %415 ], [ %395, %417 ]
  %422 = phi i32 [ 1, %400 ], [ %406, %405 ], [ 1, %407 ], [ 2, %408 ], [ 4, %415 ], [ %419, %417 ]
  %423 = mul i32 %421, 1000
  %424 = udiv i32 %423, %422
  %425 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %390, i32 4, i32 %391
  %426 = load i16, ptr %425, align 2
  %427 = zext i16 %426 to i32
  %428 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %390, i32 2
  %429 = load i8, ptr %428, align 1
  %430 = zext i8 %429 to i32
  %431 = shl i32 %427, %430
  %432 = add i32 %431, %424
  %433 = tail call i32 @llvm.smin.i32(i32 %394, i32 3686) #15
  %434 = mul nuw i32 %433, 1000000
  %435 = udiv i32 %434, %432
  %436 = mul i32 %435, 100
  %437 = lshr i32 %436, 12
  br label %438

438:                                              ; preds = %420, %386
  %439 = phi i32 [ %437, %420 ], [ 0, %386 ]
  br i1 %376, label %440, label %542

440:                                              ; preds = %438
  %441 = load i16, ptr %355, align 4
  %442 = load i16, ptr %356, align 2
  %443 = zext i16 %442 to i32
  %444 = load i8, ptr %357, align 1
  %445 = zext i8 %444 to i32
  %446 = shl i32 %443, %445
  %447 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %363, i32 4, i32 %379
  %448 = load i16, ptr %447, align 2
  %449 = zext i16 %448 to i32
  %450 = load i8, ptr %375, align 1
  %451 = zext i8 %450 to i32
  %452 = shl i32 %449, %451
  %453 = icmp sgt i32 %446, %452
  %454 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %363, i32 4, i32 %379, i32 6
  %455 = load i16, ptr %454, align 4
  %456 = icmp ult i16 %455, %441
  %457 = select i1 %453, i1 %456, i1 false
  br i1 %457, label %542, label %458

458:                                              ; preds = %440
  %459 = zext i16 %378 to i32
  %460 = lshr i32 %459, 4
  %461 = and i32 %459, 15
  %462 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %460, i32 4, i32 %461, i32 6
  %463 = load i16, ptr %462, align 4
  %464 = zext i16 %463 to i32
  %465 = icmp ugt i16 %455, 3072
  br i1 %465, label %466, label %536

466:                                              ; preds = %458
  %467 = zext i16 %455 to i32
  br i1 %373, label %468, label %470

468:                                              ; preds = %466
  %469 = load i32, ptr %62, align 4
  br label %483

470:                                              ; preds = %466
  %471 = load i32, ptr %60, align 4
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %475, label %473

473:                                              ; preds = %470
  %474 = lshr i32 %471, 12
  br label %483

475:                                              ; preds = %470
  br i1 %359, label %483, label %476

476:                                              ; preds = %475
  %477 = icmp sgt i32 %446, 400000
  br i1 %477, label %483, label %478

478:                                              ; preds = %476
  %479 = icmp sgt i32 %446, 250000
  br i1 %479, label %483, label %480

480:                                              ; preds = %478
  %481 = icmp sgt i32 %446, 150000
  %482 = select i1 %481, i32 8, i32 16
  br label %483

483:                                              ; preds = %480, %478, %476, %475, %473, %468
  %484 = phi i32 [ %469, %468 ], [ %395, %473 ], [ %395, %475 ], [ %395, %476 ], [ %395, %478 ], [ %395, %480 ]
  %485 = phi i32 [ 1, %468 ], [ %474, %473 ], [ 1, %475 ], [ 2, %476 ], [ 4, %478 ], [ %482, %480 ]
  %486 = mul i32 %484, 1000
  %487 = udiv i32 %486, %485
  %488 = add i32 %487, %452
  %489 = tail call i32 @llvm.smin.i32(i32 %467, i32 3686) #15
  %490 = mul nuw i32 %489, 1000000
  %491 = udiv i32 %490, %488
  %492 = mul i32 %491, 100
  %493 = lshr i32 %492, 12
  %494 = icmp ugt i32 %493, %439
  %495 = select i1 %494, i16 %388, i16 %380
  %496 = icmp ult i16 %463, 409
  br i1 %496, label %533, label %497

497:                                              ; preds = %483
  %498 = and i32 %459, 65504
  %499 = icmp eq i32 %498, 256
  br i1 %499, label %500, label %502

500:                                              ; preds = %497
  %501 = load i32, ptr %62, align 4
  br label %515

502:                                              ; preds = %497
  %503 = load i32, ptr %60, align 4
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %507, label %505

505:                                              ; preds = %502
  %506 = lshr i32 %503, 12
  br label %515

507:                                              ; preds = %502
  br i1 %361, label %515, label %508

508:                                              ; preds = %507
  %509 = icmp sgt i32 %446, 400000
  br i1 %509, label %515, label %510

510:                                              ; preds = %508
  %511 = icmp sgt i32 %446, 250000
  br i1 %511, label %515, label %512

512:                                              ; preds = %510
  %513 = icmp sgt i32 %446, 150000
  %514 = select i1 %513, i32 8, i32 16
  br label %515

515:                                              ; preds = %512, %510, %508, %507, %505, %500
  %516 = phi i32 [ %501, %500 ], [ %395, %505 ], [ %395, %507 ], [ %395, %508 ], [ %395, %510 ], [ %395, %512 ]
  %517 = phi i32 [ 1, %500 ], [ %506, %505 ], [ 1, %507 ], [ 2, %508 ], [ 4, %510 ], [ %514, %512 ]
  %518 = mul i32 %516, 1000
  %519 = udiv i32 %518, %517
  %520 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %460, i32 4, i32 %461
  %521 = load i16, ptr %520, align 2
  %522 = zext i16 %521 to i32
  %523 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %460, i32 2
  %524 = load i8, ptr %523, align 1
  %525 = zext i8 %524 to i32
  %526 = shl i32 %522, %525
  %527 = add i32 %526, %519
  %528 = tail call i32 @llvm.smin.i32(i32 %464, i32 3686) #15
  %529 = mul nuw i32 %528, 1000000
  %530 = udiv i32 %529, %527
  %531 = mul i32 %530, 100
  %532 = lshr i32 %531, 12
  br label %533

533:                                              ; preds = %515, %483
  %534 = phi i32 [ %532, %515 ], [ 0, %483 ]
  %535 = icmp ugt i32 %493, %534
  br i1 %535, label %540, label %542

536:                                              ; preds = %458
  %537 = icmp ugt i16 %455, %393
  %538 = select i1 %537, i16 %388, i16 %380
  %539 = icmp ugt i16 %455, %463
  br i1 %539, label %540, label %542

540:                                              ; preds = %536, %533
  %541 = phi i16 [ %495, %533 ], [ %538, %536 ]
  store i16 %388, ptr %371, align 2
  br label %542

542:                                              ; preds = %540, %536, %533, %440, %438, %377
  %543 = phi i16 [ %378, %377 ], [ %378, %440 ], [ %388, %540 ], [ %378, %533 ], [ %378, %536 ], [ %378, %438 ]
  %544 = phi i16 [ %380, %377 ], [ %380, %440 ], [ %541, %540 ], [ %495, %533 ], [ %538, %536 ], [ %380, %438 ]
  %545 = add nuw nsw i32 %379, 1
  %546 = icmp eq i32 %545, 10
  br i1 %546, label %547, label %377

547:                                              ; preds = %542, %362
  %548 = phi i16 [ %364, %362 ], [ %544, %542 ]
  %549 = add nuw nsw i32 %363, 1
  %550 = icmp eq i32 %549, 42
  br i1 %550, label %551, label %362

551:                                              ; preds = %547
  %552 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 5
  store i16 %548, ptr %552, align 4
  %553 = load ptr, ptr %1, align 4
  %554 = getelementptr inbounds %struct.ieee80211_sta, ptr %553, i32 0, i32 3, i32 1
  %555 = load i8, ptr %554, align 2, !range !9
  %556 = icmp eq i8 %555, 0
  br i1 %556, label %557, label %562

557:                                              ; preds = %551
  %558 = trunc i64 %339 to i32
  %559 = lshr i32 %558, 4
  %560 = and i32 %559, 4095
  %561 = and i32 %558, 15
  br label %689

562:                                              ; preds = %551
  %563 = lshr i16 %340, 4
  %564 = zext i16 %563 to i32
  %565 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %564, i32 1
  %566 = load i8, ptr %565, align 2
  %567 = and i16 %340, -32
  %568 = icmp eq i16 %567, 256
  %569 = trunc i64 %339 to i32
  %570 = lshr i32 %569, 4
  %571 = and i32 %570, 4095
  %572 = and i32 %569, 15
  %573 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %571, i32 4, i32 %572
  %574 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %571, i32 2
  br label %575

575:                                              ; preds = %684, %562
  %576 = phi i16 [ %548, %562 ], [ %685, %684 ]
  %577 = phi i32 [ 0, %562 ], [ %686, %684 ]
  %578 = phi i32 [ 0, %562 ], [ %687, %684 ]
  %579 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 19, i32 %578
  %580 = load i16, ptr %579, align 2
  %581 = icmp eq i16 %580, 0
  %582 = icmp eq i32 %578, 16
  %583 = select i1 %581, i1 true, i1 %582
  br i1 %583, label %684, label %584

584:                                              ; preds = %575
  %585 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %578, i32 3
  %586 = load i16, ptr %585, align 2
  %587 = and i16 %586, 15
  %588 = zext i16 %587 to i32
  %589 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %578, i32 4, i32 %588, i32 6
  %590 = load i16, ptr %589, align 4
  %591 = zext i16 %590 to i32
  %592 = load i32, ptr %59, align 4
  %593 = icmp ult i16 %590, 409
  br i1 %593, label %635, label %594

594:                                              ; preds = %584
  %595 = and i32 %578, 2147483646
  %596 = icmp eq i32 %595, 16
  br i1 %596, label %597, label %599

597:                                              ; preds = %594
  %598 = load i32, ptr %62, align 4
  br label %617

599:                                              ; preds = %594
  %600 = load i32, ptr %60, align 4
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %604, label %602

602:                                              ; preds = %599
  %603 = lshr i32 %600, 12
  br label %617

604:                                              ; preds = %599
  br i1 %568, label %617, label %605

605:                                              ; preds = %604
  %606 = load i16, ptr %573, align 2
  %607 = zext i16 %606 to i32
  %608 = load i8, ptr %574, align 1
  %609 = zext i8 %608 to i32
  %610 = shl i32 %607, %609
  %611 = icmp sgt i32 %610, 400000
  br i1 %611, label %617, label %612

612:                                              ; preds = %605
  %613 = icmp sgt i32 %610, 250000
  br i1 %613, label %617, label %614

614:                                              ; preds = %612
  %615 = icmp sgt i32 %610, 150000
  %616 = select i1 %615, i32 8, i32 16
  br label %617

617:                                              ; preds = %614, %612, %605, %604, %602, %597
  %618 = phi i32 [ %598, %597 ], [ %592, %602 ], [ %592, %604 ], [ %592, %605 ], [ %592, %612 ], [ %592, %614 ]
  %619 = phi i32 [ 1, %597 ], [ %603, %602 ], [ 1, %604 ], [ 2, %605 ], [ 4, %612 ], [ %616, %614 ]
  %620 = mul i32 %618, 1000
  %621 = udiv i32 %620, %619
  %622 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %578, i32 4, i32 %588
  %623 = load i16, ptr %622, align 2
  %624 = zext i16 %623 to i32
  %625 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %578, i32 2
  %626 = load i8, ptr %625, align 1
  %627 = zext i8 %626 to i32
  %628 = shl i32 %624, %627
  %629 = add i32 %628, %621
  %630 = tail call i32 @llvm.smin.i32(i32 %591, i32 3686) #15
  %631 = mul nuw i32 %630, 1000000
  %632 = udiv i32 %631, %629
  %633 = mul i32 %632, 100
  %634 = lshr i32 %633, 12
  br label %635

635:                                              ; preds = %617, %584
  %636 = phi i32 [ %634, %617 ], [ 0, %584 ]
  %637 = icmp slt i32 %577, %636
  br i1 %637, label %638, label %684

638:                                              ; preds = %635
  %639 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %578, i32 1
  %640 = load i8, ptr %639, align 2
  %641 = icmp ult i8 %640, %566
  br i1 %641, label %642, label %684

642:                                              ; preds = %638
  store i16 %586, ptr %552, align 4
  br i1 %593, label %684, label %643

643:                                              ; preds = %642
  %644 = and i32 %578, 2147483646
  %645 = icmp eq i32 %644, 16
  br i1 %645, label %646, label %648

646:                                              ; preds = %643
  %647 = load i32, ptr %62, align 4
  br label %666

648:                                              ; preds = %643
  %649 = load i32, ptr %60, align 4
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %653, label %651

651:                                              ; preds = %648
  %652 = lshr i32 %649, 12
  br label %666

653:                                              ; preds = %648
  br i1 %568, label %666, label %654

654:                                              ; preds = %653
  %655 = load i16, ptr %573, align 2
  %656 = zext i16 %655 to i32
  %657 = load i8, ptr %574, align 1
  %658 = zext i8 %657 to i32
  %659 = shl i32 %656, %658
  %660 = icmp sgt i32 %659, 400000
  br i1 %660, label %666, label %661

661:                                              ; preds = %654
  %662 = icmp sgt i32 %659, 250000
  br i1 %662, label %666, label %663

663:                                              ; preds = %661
  %664 = icmp sgt i32 %659, 150000
  %665 = select i1 %664, i32 8, i32 16
  br label %666

666:                                              ; preds = %663, %661, %654, %653, %651, %646
  %667 = phi i32 [ %647, %646 ], [ %592, %651 ], [ %592, %653 ], [ %592, %654 ], [ %592, %661 ], [ %592, %663 ]
  %668 = phi i32 [ 1, %646 ], [ %652, %651 ], [ 1, %653 ], [ 2, %654 ], [ 4, %661 ], [ %665, %663 ]
  %669 = mul i32 %667, 1000
  %670 = udiv i32 %669, %668
  %671 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %578, i32 4, i32 %588
  %672 = load i16, ptr %671, align 2
  %673 = zext i16 %672 to i32
  %674 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %578, i32 2
  %675 = load i8, ptr %674, align 1
  %676 = zext i8 %675 to i32
  %677 = shl i32 %673, %676
  %678 = add i32 %677, %670
  %679 = tail call i32 @llvm.smin.i32(i32 %591, i32 3686) #15
  %680 = mul nuw i32 %679, 1000000
  %681 = udiv i32 %680, %678
  %682 = mul i32 %681, 100
  %683 = lshr i32 %682, 12
  br label %684

684:                                              ; preds = %666, %642, %638, %635, %575
  %685 = phi i16 [ %576, %575 ], [ %576, %638 ], [ %576, %635 ], [ %586, %666 ], [ %586, %642 ]
  %686 = phi i32 [ %577, %575 ], [ %577, %638 ], [ %577, %635 ], [ %683, %666 ], [ 0, %642 ]
  %687 = add nuw nsw i32 %578, 1
  %688 = icmp eq i32 %687, 42
  br i1 %688, label %689, label %575

689:                                              ; preds = %684, %557
  %690 = phi i32 [ %561, %557 ], [ %572, %684 ]
  %691 = phi i32 [ %560, %557 ], [ %571, %684 ]
  %692 = phi i16 [ %548, %557 ], [ %685, %684 ]
  %693 = zext i16 %692 to i32
  %694 = lshr i32 %693, 4
  %695 = and i32 %693, 15
  %696 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %694, i32 4, i32 %695
  %697 = load i16, ptr %696, align 2
  %698 = zext i16 %697 to i32
  %699 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %694, i32 2
  %700 = load i8, ptr %699, align 1
  %701 = zext i8 %700 to i32
  %702 = shl i32 %698, %701
  %703 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %691, i32 4, i32 %690
  %704 = load i16, ptr %703, align 2
  %705 = zext i16 %704 to i32
  %706 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %691, i32 2
  %707 = load i8, ptr %706, align 1
  %708 = zext i8 %707 to i32
  %709 = shl i32 %705, %708
  %710 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 4, i32 1
  %711 = load i16, ptr %710, align 2
  %712 = zext i16 %711 to i32
  %713 = lshr i32 %712, 4
  %714 = and i32 %712, 15
  %715 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %713, i32 4, i32 %714
  %716 = load i16, ptr %715, align 2
  %717 = zext i16 %716 to i32
  %718 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %713, i32 2
  %719 = load i8, ptr %718, align 1
  %720 = zext i8 %719 to i32
  %721 = shl i32 %717, %720
  %722 = tail call i32 @llvm.umin.i32(i32 %709, i32 %721) #15
  %723 = tail call i32 @llvm.umin.i32(i32 %722, i32 %702) #15
  %724 = tail call i32 @llvm.umax.i32(i32 %709, i32 %721) #15
  %725 = tail call i32 @llvm.umax.i32(i32 %724, i32 %702) #15
  %726 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18, i32 0, i32 1
  %727 = tail call fastcc i32 @minstrel_ht_move_sample_rates(ptr noundef %1, i32 noundef 0, i32 noundef %723, i32 noundef %725) #15
  %728 = icmp slt i32 %727, 5
  br i1 %728, label %729, label %818

729:                                              ; preds = %689
  %730 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18
  %731 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18, i32 0, i32 1, i32 4
  %732 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18, i32 0, i32 1, i32 1
  %733 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18, i32 0, i32 1, i32 2
  %734 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18, i32 0, i32 1, i32 3
  br label %735

735:                                              ; preds = %810, %729
  %736 = phi i32 [ %727, %729 ], [ %815, %810 ]
  %737 = load i8, ptr %730, align 2
  br label %738

738:                                              ; preds = %804, %735
  %739 = phi i32 [ 0, %735 ], [ %805, %804 ]
  %740 = phi i8 [ %737, %735 ], [ %744, %804 ]
  %741 = zext i8 %740 to i16
  %742 = add nuw nsw i16 %741, 1
  %743 = urem i16 %742, 42
  %744 = trunc i16 %743 to i8
  %745 = zext i16 %743 to i32
  %746 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 19, i32 %745
  %747 = load i16, ptr %746, align 2
  %748 = icmp eq i16 %747, 0
  br i1 %748, label %804, label %749

749:                                              ; preds = %738
  %750 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %745, i32 2
  br label %751

751:                                              ; preds = %764, %749
  %752 = phi i16 [ %747, %749 ], [ %766, %764 ]
  %753 = phi i32 [ 0, %749 ], [ %765, %764 ]
  %754 = and i16 %752, 1
  %755 = icmp eq i16 %754, 0
  br i1 %755, label %764, label %756

756:                                              ; preds = %751
  %757 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %745, i32 4, i32 %753
  %758 = load i16, ptr %757, align 2
  %759 = zext i16 %758 to i32
  %760 = load i8, ptr %750, align 1
  %761 = zext i8 %760 to i32
  %762 = shl i32 %759, %761
  %763 = icmp ult i32 %762, %709
  br i1 %763, label %770, label %764

764:                                              ; preds = %756, %751
  %765 = add nuw nsw i32 %753, 1
  %766 = lshr i16 %752, 1
  %767 = icmp ult i32 %753, 9
  %768 = icmp ugt i16 %752, 1
  %769 = select i1 %767, i1 %768, i1 false
  br i1 %769, label %751, label %804

770:                                              ; preds = %756
  %771 = shl nuw nsw i32 %745, 4
  %772 = or i32 %753, %771
  %773 = load i16, ptr %726, align 2
  %774 = zext i16 %773 to i32
  %775 = icmp eq i32 %772, %774
  %776 = icmp eq i16 %773, 0
  %777 = select i1 %776, i32 2, i32 0
  %778 = select i1 %775, i32 1, i32 %777
  switch i32 %778, label %804 [
    i32 0, label %779
    i32 2, label %810
  ]

779:                                              ; preds = %770
  %780 = load i16, ptr %732, align 2
  %781 = zext i16 %780 to i32
  %782 = icmp eq i32 %772, %781
  %783 = icmp eq i16 %780, 0
  %784 = select i1 %783, i32 2, i32 0
  %785 = select i1 %782, i32 1, i32 %784
  switch i32 %785, label %804 [
    i32 0, label %786
    i32 2, label %810
  ]

786:                                              ; preds = %779
  %787 = load i16, ptr %733, align 2
  %788 = zext i16 %787 to i32
  %789 = icmp eq i32 %772, %788
  %790 = icmp eq i16 %787, 0
  %791 = select i1 %790, i32 2, i32 0
  %792 = select i1 %789, i32 1, i32 %791
  switch i32 %792, label %804 [
    i32 0, label %793
    i32 2, label %810
  ]

793:                                              ; preds = %786
  %794 = load i16, ptr %734, align 2
  %795 = zext i16 %794 to i32
  %796 = icmp eq i32 %772, %795
  %797 = icmp eq i16 %794, 0
  %798 = select i1 %797, i32 2, i32 0
  %799 = select i1 %796, i32 1, i32 %798
  switch i32 %799, label %804 [
    i32 0, label %800
    i32 2, label %810
  ]

800:                                              ; preds = %793
  %801 = load i16, ptr %731, align 2
  %802 = zext i16 %801 to i32
  %803 = icmp eq i32 %772, %802
  br i1 %803, label %804, label %810

804:                                              ; preds = %800, %793, %786, %779, %770, %764, %738
  %805 = add nuw nsw i32 %739, 1
  %806 = icmp eq i32 %805, 42
  br i1 %806, label %807, label %738

807:                                              ; preds = %804
  %808 = trunc i16 %743 to i8
  store i8 %808, ptr %730, align 2
  %809 = getelementptr i16, ptr %726, i32 %736
  store i16 0, ptr %809, align 2
  br label %818

810:                                              ; preds = %800, %793, %786, %779, %770
  %811 = trunc i16 %743 to i8
  store i8 %811, ptr %730, align 2
  %812 = trunc i32 %772 to i16
  %813 = getelementptr i16, ptr %726, i32 %736
  store i16 %812, ptr %813, align 2
  %814 = icmp ne i16 %812, 0
  %815 = add nsw i32 %736, 1
  %816 = icmp slt i32 %736, 4
  %817 = select i1 %814, i1 %816, i1 false
  br i1 %817, label %735, label %818

818:                                              ; preds = %810, %807, %689
  %819 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18, i32 1, i32 1
  %820 = tail call fastcc i32 @minstrel_ht_move_sample_rates(ptr noundef %1, i32 noundef 1, i32 noundef %723, i32 noundef %725) #15
  %821 = tail call fastcc i32 @minstrel_ht_move_sample_rates(ptr noundef %1, i32 noundef 2, i32 noundef %723, i32 noundef %725) #15
  %822 = icmp slt i32 %820, 5
  br i1 %822, label %823, label %978

823:                                              ; preds = %818
  %824 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18, i32 2, i32 1
  %825 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18, i32 1
  br label %826

826:                                              ; preds = %970, %823
  %827 = phi i32 [ %820, %823 ], [ %975, %970 ]
  %828 = phi i32 [ %821, %823 ], [ %833, %970 ]
  %829 = icmp sgt i32 %828, 4
  %830 = select i1 %829, i32 %723, i32 %725
  %831 = load i8, ptr %825, align 2
  br label %832

832:                                              ; preds = %962, %826
  %833 = phi i32 [ %828, %826 ], [ %963, %962 ]
  %834 = phi i8 [ %831, %826 ], [ %840, %962 ]
  %835 = phi i32 [ 0, %826 ], [ %965, %962 ]
  %836 = phi i32 [ %830, %826 ], [ %964, %962 ]
  %837 = zext i8 %834 to i16
  %838 = add nuw nsw i16 %837, 1
  %839 = urem i16 %838, 42
  %840 = trunc i16 %839 to i8
  %841 = zext i16 %839 to i32
  %842 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 19, i32 %841
  %843 = load i16, ptr %842, align 2
  %844 = icmp eq i16 %843, 0
  br i1 %844, label %962, label %845

845:                                              ; preds = %832
  %846 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %841, i32 2
  br label %847

847:                                              ; preds = %860, %845
  %848 = phi i16 [ %843, %845 ], [ %862, %860 ]
  %849 = phi i32 [ 0, %845 ], [ %861, %860 ]
  %850 = and i16 %848, 1
  %851 = icmp eq i16 %850, 0
  br i1 %851, label %860, label %852

852:                                              ; preds = %847
  %853 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %841, i32 4, i32 %849
  %854 = load i16, ptr %853, align 2
  %855 = zext i16 %854 to i32
  %856 = load i8, ptr %846, align 1
  %857 = zext i8 %856 to i32
  %858 = shl i32 %855, %857
  %859 = icmp ult i32 %858, %836
  br i1 %859, label %866, label %860

860:                                              ; preds = %852, %847
  %861 = add nuw nsw i32 %849, 1
  %862 = lshr i16 %848, 1
  %863 = icmp ult i32 %849, 9
  %864 = icmp ugt i16 %848, 1
  %865 = select i1 %863, i1 %864, i1 false
  br i1 %865, label %847, label %962

866:                                              ; preds = %852
  %867 = zext i8 %856 to i32
  %868 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %841
  %869 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %841, i32 1
  %870 = zext i16 %843 to i32
  %871 = load i8, ptr %869, align 1
  %872 = load i8, ptr %868, align 4
  br label %873

873:                                              ; preds = %896, %866
  %874 = phi i8 [ %872, %866 ], [ %888, %896 ]
  %875 = phi i8 [ %871, %866 ], [ %889, %896 ]
  %876 = phi i32 [ 0, %866 ], [ %897, %896 ]
  %877 = zext i8 %875 to i32
  %878 = zext i8 %874 to i32
  %879 = getelementptr [10 x [10 x i8]], ptr @sample_table, i32 0, i32 %877, i32 %878
  %880 = load i8, ptr %879, align 1
  %881 = add i8 %874, 1
  store i8 %881, ptr %868, align 4
  %882 = icmp ugt i8 %881, 9
  br i1 %882, label %883, label %887

883:                                              ; preds = %873
  store i8 0, ptr %868, align 4
  %884 = add i8 %875, 1
  %885 = icmp ugt i8 %884, 9
  %886 = select i1 %885, i8 0, i8 %884
  store i8 %886, ptr %869, align 1
  br label %887

887:                                              ; preds = %883, %873
  %888 = phi i8 [ 0, %883 ], [ %881, %873 ]
  %889 = phi i8 [ %886, %883 ], [ %875, %873 ]
  %890 = zext i8 %880 to i32
  %891 = icmp ugt i32 %849, %890
  br i1 %891, label %896, label %892

892:                                              ; preds = %887
  %893 = shl nuw i32 1, %890
  %894 = and i32 %893, %870
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %896, label %899

896:                                              ; preds = %892, %887
  %897 = add nuw nsw i32 %876, 1
  %898 = icmp eq i32 %897, 10
  br i1 %898, label %962, label %873

899:                                              ; preds = %892
  %900 = shl nuw nsw i32 %841, 4
  %901 = and i8 %880, 15
  %902 = zext i8 %901 to i32
  %903 = or i32 %900, %902
  %904 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %841, i32 4, i32 %902
  %905 = load i16, ptr %904, align 2
  %906 = zext i16 %905 to i32
  %907 = shl i32 %906, %867
  %908 = icmp ult i32 %907, %723
  %909 = select i1 %908, i32 1, i32 2
  %910 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18, i32 %909, i32 1, i32 0
  %911 = load i16, ptr %910, align 2
  %912 = zext i16 %911 to i32
  %913 = icmp eq i32 %903, %912
  %914 = icmp eq i16 %911, 0
  %915 = select i1 %914, i32 2, i32 0
  %916 = select i1 %913, i32 1, i32 %915
  switch i32 %916, label %962 [
    i32 0, label %917
    i32 2, label %941
  ]

917:                                              ; preds = %899
  %918 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18, i32 %909, i32 1, i32 1
  %919 = load i16, ptr %918, align 2
  %920 = zext i16 %919 to i32
  %921 = icmp eq i32 %903, %920
  %922 = icmp eq i16 %919, 0
  %923 = select i1 %922, i32 2, i32 0
  %924 = select i1 %921, i32 1, i32 %923
  switch i32 %924, label %962 [
    i32 0, label %925
    i32 2, label %941
  ]

925:                                              ; preds = %917
  %926 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18, i32 %909, i32 1, i32 2
  %927 = load i16, ptr %926, align 2
  %928 = zext i16 %927 to i32
  %929 = icmp eq i32 %903, %928
  %930 = icmp eq i16 %927, 0
  %931 = select i1 %930, i32 2, i32 0
  %932 = select i1 %929, i32 1, i32 %931
  switch i32 %932, label %962 [
    i32 0, label %933
    i32 2, label %941
  ]

933:                                              ; preds = %925
  %934 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18, i32 %909, i32 1, i32 3
  %935 = load i16, ptr %934, align 2
  %936 = zext i16 %935 to i32
  %937 = icmp eq i32 %903, %936
  %938 = icmp eq i16 %935, 0
  %939 = select i1 %938, i32 2, i32 0
  %940 = select i1 %937, i32 1, i32 %939
  switch i32 %940, label %962 [
    i32 0, label %942
    i32 2, label %941
  ]

941:                                              ; preds = %933, %925, %917, %899
  br i1 %908, label %970, label %948

942:                                              ; preds = %933
  %943 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18, i32 %909, i32 1, i32 4
  %944 = load i16, ptr %943, align 2
  %945 = zext i16 %944 to i32
  %946 = icmp eq i32 %903, %945
  br i1 %946, label %962, label %947

947:                                              ; preds = %942
  br i1 %908, label %970, label %948

948:                                              ; preds = %947, %941
  %949 = icmp slt i32 %833, 5
  %950 = icmp ult i32 %907, %725
  %951 = select i1 %949, i1 %950, i1 false
  br i1 %951, label %952, label %962

952:                                              ; preds = %948
  %953 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %841, i32 4, i32 %902, i32 6
  %954 = load i16, ptr %953, align 4
  %955 = icmp ugt i16 %954, 3891
  br i1 %955, label %962, label %956

956:                                              ; preds = %952
  %957 = trunc i32 %903 to i16
  %958 = add nsw i32 %833, 1
  %959 = getelementptr i16, ptr %824, i32 %833
  store i16 %957, ptr %959, align 2
  %960 = icmp sgt i32 %833, 3
  %961 = select i1 %960, i32 %723, i32 %836
  br label %962

962:                                              ; preds = %956, %952, %948, %942, %933, %925, %917, %899, %896, %860, %832
  %963 = phi i32 [ %833, %832 ], [ %833, %899 ], [ %833, %952 ], [ %958, %956 ], [ %833, %948 ], [ %833, %917 ], [ %833, %925 ], [ %833, %933 ], [ %833, %942 ], [ %833, %896 ], [ %833, %860 ]
  %964 = phi i32 [ %836, %832 ], [ %836, %899 ], [ %836, %952 ], [ %961, %956 ], [ %836, %948 ], [ %836, %917 ], [ %836, %925 ], [ %836, %933 ], [ %836, %942 ], [ %836, %896 ], [ %836, %860 ]
  %965 = add nuw nsw i32 %835, 1
  %966 = icmp eq i32 %965, 42
  br i1 %966, label %967, label %832

967:                                              ; preds = %962
  %968 = trunc i16 %839 to i8
  store i8 %968, ptr %825, align 2
  %969 = getelementptr i16, ptr %819, i32 %827
  store i16 0, ptr %969, align 2
  br label %978

970:                                              ; preds = %947, %941
  %971 = trunc i16 %839 to i8
  store i8 %971, ptr %825, align 2
  %972 = trunc i32 %903 to i16
  %973 = getelementptr i16, ptr %819, i32 %827
  store i16 %972, ptr %973, align 2
  %974 = icmp ne i16 %972, 0
  %975 = add nsw i32 %827, 1
  %976 = icmp slt i32 %827, 4
  %977 = select i1 %974, i1 %976, i1 false
  br i1 %977, label %826, label %978

978:                                              ; preds = %970, %967, %818
  %979 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(10) %979, ptr noundef align 2 dereferenceable(10) %726, i32 10, i1 false) #15
  %980 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18, i32 1, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(10) %980, ptr noundef align 2 dereferenceable(10) %819, i32 10, i1 false) #15
  %981 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18, i32 2, i32 2
  %982 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 18, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(10) %981, ptr noundef align 2 dereferenceable(10) %982, i32 10, i1 false) #15
  %983 = load volatile i32, ptr @jiffies, align 64
  %984 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 6
  store i32 %983, ptr %984, align 4
  %985 = load volatile i32, ptr @jiffies, align 64
  %986 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 17
  store i32 %985, ptr %986, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @minstrel_ht_update_rates(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #4 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2848, i32 noundef 32) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %75, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 4
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  tail call fastcc void @minstrel_ht_set_rate(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %9)
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 14
  %12 = load i8, ptr %11, align 1
  %13 = icmp ugt i8 %12, 2
  br i1 %13, label %14, label %21

14:                                               ; preds = %6
  %15 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 4, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  tail call fastcc void @minstrel_ht_set_rate(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 1, i32 noundef %17)
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.ieee80211_hw, ptr %18, i32 0, i32 14
  %20 = load i8, ptr %19, align 1
  br label %21

21:                                               ; preds = %14, %6
  %22 = phi i8 [ %20, %14 ], [ %12, %6 ]
  %23 = phi i32 [ 2, %14 ], [ 1, %6 ]
  %24 = icmp ugt i8 %22, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = add nuw nsw i32 %23, 1
  %27 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 5
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  tail call fastcc void @minstrel_ht_set_rate(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %23, i32 noundef %29)
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i32 [ %26, %25 ], [ %23, %21 ]
  %32 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 5
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = lshr i32 %34, 4
  %36 = and i32 %34, 15
  %37 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %35, i32 4, i32 %36, i32 6
  %38 = load i16, ptr %37, align 4
  %39 = icmp ult i16 %38, 2048
  br i1 %39, label %67, label %40

40:                                               ; preds = %30
  %41 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %35, i32 4, i32 %36
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %35, i32 2
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl i32 %43, %46
  %48 = icmp ugt i32 %47, 738500
  br i1 %48, label %67, label %49

49:                                               ; preds = %40
  %50 = icmp ugt i32 %47, 369250
  br i1 %50, label %67, label %51

51:                                               ; preds = %49
  %52 = icmp ugt i32 %47, 147750
  br i1 %52, label %67, label %53

53:                                               ; preds = %51
  %54 = load i16, ptr %7, align 4
  %55 = zext i16 %54 to i32
  %56 = lshr i32 %55, 4
  %57 = and i32 %55, 15
  %58 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %56, i32 4, i32 %57, i32 6
  %59 = load i16, ptr %58, align 4
  %60 = icmp ult i16 %59, 3072
  br i1 %60, label %67, label %61

61:                                               ; preds = %53
  %62 = load ptr, ptr %1, align 4
  %63 = getelementptr inbounds %struct.ieee80211_sta, ptr %62, i32 0, i32 5
  %64 = load i8, ptr %63, align 4, !range !9
  %65 = icmp eq i8 %64, 0
  %66 = select i1 %65, i16 4095, i16 0
  br label %67

67:                                               ; preds = %61, %53, %51, %49, %40, %30
  %68 = phi i16 [ 1, %30 ], [ 500, %40 ], [ 1600, %49 ], [ 3200, %53 ], [ 3200, %51 ], [ %66, %61 ]
  %69 = load ptr, ptr %1, align 4
  %70 = getelementptr inbounds %struct.ieee80211_sta, ptr %69, i32 0, i32 24
  store i16 %68, ptr %70, align 4
  %71 = getelementptr %struct.ieee80211_sta_rates, ptr %4, i32 0, i32 1, i32 %31
  store i8 -1, ptr %71, align 2
  %72 = load ptr, ptr %0, align 4
  %73 = load ptr, ptr %1, align 4
  %74 = tail call i32 @rate_control_set_rates(ptr noundef %72, ptr noundef %73, ptr noundef nonnull %4) #15
  br label %75

75:                                               ; preds = %67, %2
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @minstrel_ht_sort_best_tp_rates(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr nocapture noundef %2) unnamed_addr #8 {
  %4 = zext i16 %1 to i32
  %5 = lshr i32 %4, 4
  %6 = and i32 %4, 15
  %7 = getelementptr %struct.minstrel_ht_sta, ptr %0, i32 0, i32 20, i32 %5, i32 4, i32 %6, i32 6
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i16 %8, 409
  br i1 %12, label %65, label %13

13:                                               ; preds = %3
  %14 = and i32 %4, 65504
  %15 = icmp eq i32 %14, 256
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %0, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  br label %47

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = lshr i32 %21, 12
  br label %47

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %0, i32 0, i32 4
  %27 = load i16, ptr %26, align 4
  %28 = and i16 %27, -32
  %29 = icmp eq i16 %28, 256
  br i1 %29, label %47, label %30

30:                                               ; preds = %25
  %31 = zext i16 %27 to i32
  %32 = lshr i32 %31, 4
  %33 = and i32 %31, 15
  %34 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %32, i32 4, i32 %33
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %32, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %36, %39
  %41 = icmp sgt i32 %40, 400000
  br i1 %41, label %47, label %42

42:                                               ; preds = %30
  %43 = icmp sgt i32 %40, 250000
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = icmp sgt i32 %40, 150000
  %46 = select i1 %45, i32 8, i32 16
  br label %47

47:                                               ; preds = %44, %42, %30, %25, %23, %16
  %48 = phi i32 [ %18, %16 ], [ %11, %23 ], [ %11, %25 ], [ %11, %30 ], [ %11, %42 ], [ %11, %44 ]
  %49 = phi i32 [ 1, %16 ], [ %24, %23 ], [ 1, %25 ], [ 2, %30 ], [ 4, %42 ], [ %46, %44 ]
  %50 = mul i32 %48, 1000
  %51 = udiv i32 %50, %49
  %52 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %5, i32 4, i32 %6
  %53 = load i16, ptr %52, align 2
  %54 = zext i16 %53 to i32
  %55 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %5, i32 2
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %54, %57
  %59 = add i32 %58, %51
  %60 = tail call i32 @llvm.smin.i32(i32 %9, i32 3686) #15
  %61 = mul nuw i32 %60, 1000000
  %62 = udiv i32 %61, %59
  %63 = mul i32 %62, 100
  %64 = lshr i32 %63, 12
  br label %65

65:                                               ; preds = %47, %3
  %66 = phi i32 [ %64, %47 ], [ 0, %3 ]
  %67 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %0, i32 0, i32 3
  %68 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %0, i32 0, i32 4
  %69 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %0, i32 0, i32 9
  %70 = getelementptr i16, ptr %2, i32 3
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %71 to i32
  %73 = lshr i32 %72, 4
  %74 = and i32 %72, 15
  %75 = getelementptr %struct.minstrel_ht_sta, ptr %0, i32 0, i32 20, i32 %73, i32 4, i32 %74, i32 6
  %76 = load i16, ptr %75, align 4
  %77 = zext i16 %76 to i32
  %78 = icmp ult i16 %76, 409
  br i1 %78, label %128, label %79

79:                                               ; preds = %65
  %80 = and i32 %72, 65504
  %81 = icmp eq i32 %80, 256
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, ptr %69, align 4
  br label %110

84:                                               ; preds = %79
  %85 = load i32, ptr %67, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = lshr i32 %85, 12
  br label %110

89:                                               ; preds = %84
  %90 = load i16, ptr %68, align 4
  %91 = and i16 %90, -32
  %92 = icmp eq i16 %91, 256
  br i1 %92, label %110, label %93

93:                                               ; preds = %89
  %94 = zext i16 %90 to i32
  %95 = lshr i32 %94, 4
  %96 = and i32 %94, 15
  %97 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %95, i32 4, i32 %96
  %98 = load i16, ptr %97, align 2
  %99 = zext i16 %98 to i32
  %100 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %95, i32 2
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = shl i32 %99, %102
  %104 = icmp sgt i32 %103, 400000
  br i1 %104, label %110, label %105

105:                                              ; preds = %93
  %106 = icmp sgt i32 %103, 250000
  br i1 %106, label %110, label %107

107:                                              ; preds = %105
  %108 = icmp sgt i32 %103, 150000
  %109 = select i1 %108, i32 8, i32 16
  br label %110

110:                                              ; preds = %107, %105, %93, %89, %87, %82
  %111 = phi i32 [ %83, %82 ], [ %11, %87 ], [ %11, %89 ], [ %11, %93 ], [ %11, %105 ], [ %11, %107 ]
  %112 = phi i32 [ 1, %82 ], [ %88, %87 ], [ 1, %89 ], [ 2, %93 ], [ 4, %105 ], [ %109, %107 ]
  %113 = mul i32 %111, 1000
  %114 = udiv i32 %113, %112
  %115 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %73, i32 4, i32 %74
  %116 = load i16, ptr %115, align 2
  %117 = zext i16 %116 to i32
  %118 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %73, i32 2
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = shl i32 %117, %120
  %122 = add i32 %121, %114
  %123 = tail call i32 @llvm.smin.i32(i32 %77, i32 3686) #15
  %124 = mul nuw i32 %123, 1000000
  %125 = udiv i32 %124, %122
  %126 = mul i32 %125, 100
  %127 = lshr i32 %126, 12
  br label %128

128:                                              ; preds = %110, %65
  %129 = phi i32 [ %127, %110 ], [ 0, %65 ]
  %130 = icmp ult i32 %66, %129
  br i1 %130, label %344, label %131

131:                                              ; preds = %128
  %132 = icmp ne i32 %66, %129
  %133 = icmp ugt i16 %8, %76
  %134 = select i1 %132, i1 true, i1 %133
  br i1 %134, label %135, label %344

135:                                              ; preds = %131
  %136 = getelementptr i16, ptr %2, i32 2
  %137 = load i16, ptr %136, align 2
  %138 = zext i16 %137 to i32
  %139 = lshr i32 %138, 4
  %140 = and i32 %138, 15
  %141 = getelementptr %struct.minstrel_ht_sta, ptr %0, i32 0, i32 20, i32 %139, i32 4, i32 %140, i32 6
  %142 = load i16, ptr %141, align 4
  %143 = zext i16 %142 to i32
  %144 = icmp ult i16 %142, 409
  br i1 %144, label %194, label %145

145:                                              ; preds = %135
  %146 = and i32 %138, 65504
  %147 = icmp eq i32 %146, 256
  br i1 %147, label %174, label %148

148:                                              ; preds = %145
  %149 = load i32, ptr %67, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = lshr i32 %149, 12
  br label %176

153:                                              ; preds = %148
  %154 = load i16, ptr %68, align 4
  %155 = and i16 %154, -32
  %156 = icmp eq i16 %155, 256
  br i1 %156, label %176, label %157

157:                                              ; preds = %153
  %158 = zext i16 %154 to i32
  %159 = lshr i32 %158, 4
  %160 = and i32 %158, 15
  %161 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %159, i32 4, i32 %160
  %162 = load i16, ptr %161, align 2
  %163 = zext i16 %162 to i32
  %164 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %159, i32 2
  %165 = load i8, ptr %164, align 1
  %166 = zext i8 %165 to i32
  %167 = shl i32 %163, %166
  %168 = icmp sgt i32 %167, 400000
  br i1 %168, label %176, label %169

169:                                              ; preds = %157
  %170 = icmp sgt i32 %167, 250000
  br i1 %170, label %176, label %171

171:                                              ; preds = %169
  %172 = icmp sgt i32 %167, 150000
  %173 = select i1 %172, i32 8, i32 16
  br label %176

174:                                              ; preds = %145
  %175 = load i32, ptr %69, align 4
  br label %176

176:                                              ; preds = %174, %171, %169, %157, %153, %151
  %177 = phi i32 [ %175, %174 ], [ %11, %151 ], [ %11, %153 ], [ %11, %157 ], [ %11, %169 ], [ %11, %171 ]
  %178 = phi i32 [ 1, %174 ], [ %152, %151 ], [ 1, %153 ], [ 2, %157 ], [ 4, %169 ], [ %173, %171 ]
  %179 = mul i32 %177, 1000
  %180 = udiv i32 %179, %178
  %181 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %139, i32 4, i32 %140
  %182 = load i16, ptr %181, align 2
  %183 = zext i16 %182 to i32
  %184 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %139, i32 2
  %185 = load i8, ptr %184, align 1
  %186 = zext i8 %185 to i32
  %187 = shl i32 %183, %186
  %188 = add i32 %187, %180
  %189 = tail call i32 @llvm.smin.i32(i32 %143, i32 3686) #15
  %190 = mul nuw i32 %189, 1000000
  %191 = udiv i32 %190, %188
  %192 = mul i32 %191, 100
  %193 = lshr i32 %192, 12
  br label %194

194:                                              ; preds = %176, %135
  %195 = phi i32 [ %193, %176 ], [ 0, %135 ]
  %196 = icmp ult i32 %66, %195
  br i1 %196, label %341, label %197

197:                                              ; preds = %194
  %198 = icmp ne i32 %66, %195
  %199 = icmp ugt i16 %8, %142
  %200 = select i1 %198, i1 true, i1 %199
  br i1 %200, label %201, label %341

201:                                              ; preds = %197
  %202 = getelementptr i16, ptr %2, i32 1
  %203 = load i16, ptr %202, align 2
  %204 = zext i16 %203 to i32
  %205 = lshr i32 %204, 4
  %206 = and i32 %204, 15
  %207 = getelementptr %struct.minstrel_ht_sta, ptr %0, i32 0, i32 20, i32 %205, i32 4, i32 %206, i32 6
  %208 = load i16, ptr %207, align 4
  %209 = zext i16 %208 to i32
  %210 = icmp ult i16 %208, 409
  br i1 %210, label %260, label %211

211:                                              ; preds = %201
  %212 = and i32 %204, 65504
  %213 = icmp eq i32 %212, 256
  br i1 %213, label %240, label %214

214:                                              ; preds = %211
  %215 = load i32, ptr %67, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %214
  %218 = lshr i32 %215, 12
  br label %242

219:                                              ; preds = %214
  %220 = load i16, ptr %68, align 4
  %221 = and i16 %220, -32
  %222 = icmp eq i16 %221, 256
  br i1 %222, label %242, label %223

223:                                              ; preds = %219
  %224 = zext i16 %220 to i32
  %225 = lshr i32 %224, 4
  %226 = and i32 %224, 15
  %227 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %225, i32 4, i32 %226
  %228 = load i16, ptr %227, align 2
  %229 = zext i16 %228 to i32
  %230 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %225, i32 2
  %231 = load i8, ptr %230, align 1
  %232 = zext i8 %231 to i32
  %233 = shl i32 %229, %232
  %234 = icmp sgt i32 %233, 400000
  br i1 %234, label %242, label %235

235:                                              ; preds = %223
  %236 = icmp sgt i32 %233, 250000
  br i1 %236, label %242, label %237

237:                                              ; preds = %235
  %238 = icmp sgt i32 %233, 150000
  %239 = select i1 %238, i32 8, i32 16
  br label %242

240:                                              ; preds = %211
  %241 = load i32, ptr %69, align 4
  br label %242

242:                                              ; preds = %240, %237, %235, %223, %219, %217
  %243 = phi i32 [ %241, %240 ], [ %11, %217 ], [ %11, %219 ], [ %11, %223 ], [ %11, %235 ], [ %11, %237 ]
  %244 = phi i32 [ 1, %240 ], [ %218, %217 ], [ 1, %219 ], [ 2, %223 ], [ 4, %235 ], [ %239, %237 ]
  %245 = mul i32 %243, 1000
  %246 = udiv i32 %245, %244
  %247 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %205, i32 4, i32 %206
  %248 = load i16, ptr %247, align 2
  %249 = zext i16 %248 to i32
  %250 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %205, i32 2
  %251 = load i8, ptr %250, align 1
  %252 = zext i8 %251 to i32
  %253 = shl i32 %249, %252
  %254 = add i32 %253, %246
  %255 = tail call i32 @llvm.smin.i32(i32 %209, i32 3686) #15
  %256 = mul nuw i32 %255, 1000000
  %257 = udiv i32 %256, %254
  %258 = mul i32 %257, 100
  %259 = lshr i32 %258, 12
  br label %260

260:                                              ; preds = %242, %201
  %261 = phi i32 [ %259, %242 ], [ 0, %201 ]
  %262 = icmp ult i32 %66, %261
  br i1 %262, label %332, label %263

263:                                              ; preds = %260
  %264 = icmp ne i32 %66, %261
  %265 = icmp ugt i16 %8, %208
  %266 = select i1 %264, i1 true, i1 %265
  br i1 %266, label %267, label %332

267:                                              ; preds = %263
  %268 = load i16, ptr %2, align 2
  %269 = zext i16 %268 to i32
  %270 = lshr i32 %269, 4
  %271 = and i32 %269, 15
  %272 = getelementptr %struct.minstrel_ht_sta, ptr %0, i32 0, i32 20, i32 %270, i32 4, i32 %271, i32 6
  %273 = load i16, ptr %272, align 4
  %274 = zext i16 %273 to i32
  %275 = icmp ult i16 %273, 409
  br i1 %275, label %325, label %276

276:                                              ; preds = %267
  %277 = and i32 %269, 65504
  %278 = icmp eq i32 %277, 256
  br i1 %278, label %305, label %279

279:                                              ; preds = %276
  %280 = load i32, ptr %67, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %279
  %283 = lshr i32 %280, 12
  br label %307

284:                                              ; preds = %279
  %285 = load i16, ptr %68, align 4
  %286 = and i16 %285, -32
  %287 = icmp eq i16 %286, 256
  br i1 %287, label %307, label %288

288:                                              ; preds = %284
  %289 = zext i16 %285 to i32
  %290 = lshr i32 %289, 4
  %291 = and i32 %289, 15
  %292 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %290, i32 4, i32 %291
  %293 = load i16, ptr %292, align 2
  %294 = zext i16 %293 to i32
  %295 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %290, i32 2
  %296 = load i8, ptr %295, align 1
  %297 = zext i8 %296 to i32
  %298 = shl i32 %294, %297
  %299 = icmp sgt i32 %298, 400000
  br i1 %299, label %307, label %300

300:                                              ; preds = %288
  %301 = icmp sgt i32 %298, 250000
  br i1 %301, label %307, label %302

302:                                              ; preds = %300
  %303 = icmp sgt i32 %298, 150000
  %304 = select i1 %303, i32 8, i32 16
  br label %307

305:                                              ; preds = %276
  %306 = load i32, ptr %69, align 4
  br label %307

307:                                              ; preds = %305, %302, %300, %288, %284, %282
  %308 = phi i32 [ %306, %305 ], [ %11, %282 ], [ %11, %284 ], [ %11, %288 ], [ %11, %300 ], [ %11, %302 ]
  %309 = phi i32 [ 1, %305 ], [ %283, %282 ], [ 1, %284 ], [ 2, %288 ], [ 4, %300 ], [ %304, %302 ]
  %310 = mul i32 %308, 1000
  %311 = udiv i32 %310, %309
  %312 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %270, i32 4, i32 %271
  %313 = load i16, ptr %312, align 2
  %314 = zext i16 %313 to i32
  %315 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %270, i32 2
  %316 = load i8, ptr %315, align 1
  %317 = zext i8 %316 to i32
  %318 = shl i32 %314, %317
  %319 = add i32 %318, %311
  %320 = tail call i32 @llvm.smin.i32(i32 %274, i32 3686) #15
  %321 = mul nuw i32 %320, 1000000
  %322 = udiv i32 %321, %319
  %323 = mul i32 %322, 100
  %324 = lshr i32 %323, 12
  br label %325

325:                                              ; preds = %307, %267
  %326 = phi i32 [ %324, %307 ], [ 0, %267 ]
  %327 = icmp ult i32 %66, %326
  br i1 %327, label %332, label %328

328:                                              ; preds = %325
  %329 = icmp ne i32 %66, %326
  %330 = icmp ugt i16 %8, %273
  %331 = select i1 %329, i1 true, i1 %330
  br i1 %331, label %334, label %332

332:                                              ; preds = %328, %325, %263, %260
  %333 = phi i32 [ 2, %260 ], [ 2, %263 ], [ 1, %325 ], [ 1, %328 ]
  br label %334

334:                                              ; preds = %332, %328
  %335 = phi i32 [ 0, %328 ], [ %333, %332 ]
  %336 = add nuw nsw i32 %335, 1
  %337 = getelementptr i16, ptr %2, i32 %336
  %338 = getelementptr i16, ptr %2, i32 %335
  %339 = mul nsw i32 %335, -2
  %340 = add nsw i32 %339, 6
  tail call void @llvm.memmove.p0.p0.i32(ptr align 2 %337, ptr align 2 %338, i32 %340, i1 false)
  br label %341

341:                                              ; preds = %334, %197, %194
  %342 = phi i32 [ %335, %334 ], [ 3, %197 ], [ 3, %194 ]
  %343 = getelementptr i16, ptr %2, i32 %342
  store i16 %1, ptr %343, align 2
  br label %344

344:                                              ; preds = %341, %131, %128
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #9

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @minstrel_ht_move_sample_rates(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
  %5 = getelementptr %struct.minstrel_ht_sta, ptr %0, i32 0, i32 18, i32 %1, i32 1
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = zext i16 %6 to i32
  %10 = lshr i32 %9, 4
  %11 = and i32 %9, 15
  %12 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %10, i32 4, i32 %11
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %10, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 %14, %17
  switch i32 %1, label %25 [
    i32 2, label %21
    i32 0, label %19
    i32 1, label %19
  ]

19:                                               ; preds = %8, %8
  %20 = icmp ult i32 %18, %2
  br i1 %20, label %26, label %25

21:                                               ; preds = %8
  %22 = icmp ugt i32 %18, %2
  %23 = icmp ult i32 %18, %3
  %24 = and i1 %22, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %19, %8
  store i16 0, ptr %5, align 2
  br label %26

26:                                               ; preds = %25, %21, %19, %4
  %27 = getelementptr i16, ptr %5, i32 1
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %26
  %31 = zext i16 %28 to i32
  %32 = lshr i32 %31, 4
  %33 = and i32 %31, 15
  %34 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %32, i32 4, i32 %33
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %32, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %36, %39
  switch i32 %1, label %48 [
    i32 2, label %43
    i32 0, label %41
    i32 1, label %41
  ]

41:                                               ; preds = %30, %30
  %42 = icmp ult i32 %40, %2
  br i1 %42, label %47, label %48

43:                                               ; preds = %30
  %44 = icmp ugt i32 %40, %2
  %45 = icmp ult i32 %40, %3
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %41
  store i16 %28, ptr %5, align 2
  br label %48

48:                                               ; preds = %47, %43, %41, %30
  %49 = phi i32 [ 1, %47 ], [ 0, %43 ], [ 0, %41 ], [ 0, %30 ]
  store i16 0, ptr %27, align 2
  br label %50

50:                                               ; preds = %48, %26
  %51 = phi i32 [ 0, %26 ], [ %49, %48 ]
  %52 = getelementptr i16, ptr %5, i32 2
  %53 = load i16, ptr %52, align 2
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %50
  %56 = zext i16 %53 to i32
  %57 = lshr i32 %56, 4
  %58 = and i32 %56, 15
  %59 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %57, i32 4, i32 %58
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %57, i32 2
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl i32 %61, %64
  switch i32 %1, label %75 [
    i32 2, label %68
    i32 0, label %66
    i32 1, label %66
  ]

66:                                               ; preds = %55, %55
  %67 = icmp ult i32 %65, %2
  br i1 %67, label %72, label %75

68:                                               ; preds = %55
  %69 = icmp ugt i32 %65, %2
  %70 = icmp ult i32 %65, %3
  %71 = and i1 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68, %66
  %73 = add nuw nsw i32 %51, 1
  %74 = getelementptr i16, ptr %5, i32 %51
  store i16 %53, ptr %74, align 2
  br label %75

75:                                               ; preds = %72, %68, %66, %55
  %76 = phi i32 [ %73, %72 ], [ %51, %68 ], [ %51, %66 ], [ %51, %55 ]
  store i16 0, ptr %52, align 2
  br label %77

77:                                               ; preds = %75, %50
  %78 = phi i32 [ %51, %50 ], [ %76, %75 ]
  %79 = getelementptr i16, ptr %5, i32 3
  %80 = load i16, ptr %79, align 2
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %104, label %82

82:                                               ; preds = %77
  %83 = zext i16 %80 to i32
  %84 = lshr i32 %83, 4
  %85 = and i32 %83, 15
  %86 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %84, i32 4, i32 %85
  %87 = load i16, ptr %86, align 2
  %88 = zext i16 %87 to i32
  %89 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %84, i32 2
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl i32 %88, %91
  switch i32 %1, label %102 [
    i32 2, label %95
    i32 0, label %93
    i32 1, label %93
  ]

93:                                               ; preds = %82, %82
  %94 = icmp ult i32 %92, %2
  br i1 %94, label %99, label %102

95:                                               ; preds = %82
  %96 = icmp ugt i32 %92, %2
  %97 = icmp ult i32 %92, %3
  %98 = and i1 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95, %93
  %100 = add nuw nsw i32 %78, 1
  %101 = getelementptr i16, ptr %5, i32 %78
  store i16 %80, ptr %101, align 2
  br label %102

102:                                              ; preds = %99, %95, %93, %82
  %103 = phi i32 [ %100, %99 ], [ %78, %95 ], [ %78, %93 ], [ %78, %82 ]
  store i16 0, ptr %79, align 2
  br label %104

104:                                              ; preds = %102, %77
  %105 = phi i32 [ %78, %77 ], [ %103, %102 ]
  %106 = getelementptr i16, ptr %5, i32 4
  %107 = load i16, ptr %106, align 2
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %131, label %109

109:                                              ; preds = %104
  %110 = zext i16 %107 to i32
  %111 = lshr i32 %110, 4
  %112 = and i32 %110, 15
  %113 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %111, i32 4, i32 %112
  %114 = load i16, ptr %113, align 2
  %115 = zext i16 %114 to i32
  %116 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %111, i32 2
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl i32 %115, %118
  switch i32 %1, label %129 [
    i32 2, label %122
    i32 0, label %120
    i32 1, label %120
  ]

120:                                              ; preds = %109, %109
  %121 = icmp ult i32 %119, %2
  br i1 %121, label %126, label %129

122:                                              ; preds = %109
  %123 = icmp ugt i32 %119, %2
  %124 = icmp ult i32 %119, %3
  %125 = and i1 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122, %120
  %127 = add nuw nsw i32 %105, 1
  %128 = getelementptr i16, ptr %5, i32 %105
  store i16 %107, ptr %128, align 2
  br label %129

129:                                              ; preds = %126, %122, %120, %109
  %130 = phi i32 [ %127, %126 ], [ %105, %122 ], [ %105, %120 ], [ %105, %109 ]
  store i16 0, ptr %106, align 2
  br label %131

131:                                              ; preds = %129, %104
  %132 = phi i32 [ %105, %104 ], [ %130, %129 ]
  ret i32 %132
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @minstrel_ht_set_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #11 {
  %6 = lshr i32 %4, 4
  %7 = and i32 %6, 4095
  %8 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %7
  %9 = load i16, ptr %8, align 2
  %10 = and i32 %4, 15
  %11 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %7, i32 4, i32 %10, i32 10
  %12 = load i8, ptr %11, align 2, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %7, i32 4, i32 %10, i32 6
  %16 = load i16, ptr %15, align 4
  br label %129

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.minstrel_priv, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = lshr i32 %21, 12
  br label %47

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 4
  %27 = load i16, ptr %26, align 4
  %28 = and i16 %27, -32
  %29 = icmp eq i16 %28, 256
  br i1 %29, label %47, label %30

30:                                               ; preds = %25
  %31 = zext i16 %27 to i32
  %32 = lshr i32 %31, 4
  %33 = and i32 %31, 15
  %34 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %32, i32 4, i32 %33
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %32, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %36, %39
  %41 = icmp sgt i32 %40, 400000
  br i1 %41, label %47, label %42

42:                                               ; preds = %30
  %43 = icmp sgt i32 %40, 250000
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = icmp sgt i32 %40, 150000
  %46 = select i1 %45, i32 8, i32 16
  br label %47

47:                                               ; preds = %44, %42, %30, %25, %23
  %48 = phi i32 [ %24, %23 ], [ 1, %25 ], [ 2, %30 ], [ 4, %42 ], [ %46, %44 ]
  %49 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %7, i32 4, i32 %10, i32 6
  %50 = load i16, ptr %49, align 4
  %51 = icmp ult i16 %50, 409
  %52 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %7, i32 4, i32 %10, i32 8
  br i1 %51, label %53, label %55

53:                                               ; preds = %47
  store i8 1, ptr %52, align 4
  %54 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %7, i32 4, i32 %10, i32 9
  store i8 1, ptr %54, align 1
  br label %136

55:                                               ; preds = %47
  store i8 2, ptr %52, align 4
  %56 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %7, i32 4, i32 %10, i32 9
  store i8 2, ptr %56, align 1
  store i8 1, ptr %11, align 2
  %57 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %7, i32 4, i32 %10
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %7, i32 2
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 %59, %62
  %64 = mul i32 %63, %48
  %65 = udiv i32 %64, 1000
  %66 = mul i32 %19, 9
  %67 = lshr i32 %66, 1
  %68 = shl i32 %19, 1
  %69 = or i32 %68, 1
  %70 = getelementptr inbounds %struct.minstrel_priv, ptr %0, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 @llvm.umin.i32(i32 %69, i32 %71) #15
  %73 = mul i32 %72, 9
  %74 = lshr i32 %73, 1
  %75 = add nuw i32 %74, %67
  %76 = shl i32 %72, 1
  %77 = or i32 %76, 1
  %78 = tail call i32 @llvm.umin.i32(i32 %77, i32 %71) #15
  %79 = and i32 %4, 65504
  %80 = icmp eq i32 %79, 256
  %81 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 9
  %82 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 10
  %83 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 7
  %84 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 8
  %85 = select i1 %80, ptr %82, ptr %84
  %86 = select i1 %80, ptr %81, ptr %83
  %87 = load i32, ptr %86, align 4
  %88 = load i32, ptr %85, align 4
  %89 = add i32 %65, %87
  %90 = shl i32 %89, 1
  %91 = add i32 %90, %75
  %92 = add i32 %65, %88
  %93 = shl i32 %92, 1
  %94 = add i32 %93, %75
  %95 = getelementptr inbounds %struct.minstrel_priv, ptr %0, i32 0, i32 5
  %96 = getelementptr inbounds %struct.minstrel_priv, ptr %0, i32 0, i32 4
  br label %97

97:                                               ; preds = %127, %55
  %98 = phi i8 [ 2, %55 ], [ %123, %127 ]
  %99 = phi i8 [ 2, %55 ], [ %120, %127 ]
  %100 = phi i32 [ %71, %55 ], [ %128, %127 ]
  %101 = phi i32 [ %78, %55 ], [ %108, %127 ]
  %102 = phi i32 [ %94, %55 ], [ %112, %127 ]
  %103 = phi i32 [ %91, %55 ], [ %110, %127 ]
  %104 = mul i32 %101, 9
  %105 = lshr i32 %104, 1
  %106 = shl i32 %101, 1
  %107 = or i32 %106, 1
  %108 = tail call i32 @llvm.umin.i32(i32 %107, i32 %100) #15
  %109 = add i32 %105, %89
  %110 = add i32 %109, %103
  %111 = add i32 %102, %92
  %112 = add i32 %111, %105
  %113 = load i32, ptr %95, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %97
  %116 = add i8 %99, 1
  store i8 %116, ptr %56, align 1
  %117 = load i32, ptr %95, align 4
  br label %118

118:                                              ; preds = %115, %97
  %119 = phi i32 [ %113, %97 ], [ %117, %115 ]
  %120 = phi i8 [ %99, %97 ], [ %116, %115 ]
  %121 = icmp ult i32 %110, %119
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = add i8 %98, 1
  store i8 %123, ptr %52, align 4
  %124 = zext i8 %123 to i32
  %125 = load i32, ptr %96, align 4
  %126 = icmp ugt i32 %125, %124
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, ptr %70, align 4
  br label %97

129:                                              ; preds = %122, %118, %14
  %130 = phi i16 [ %16, %14 ], [ %50, %118 ], [ %50, %122 ]
  %131 = icmp ult i16 %130, 819
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %7, i32 4, i32 %10, i32 8
  %134 = load i8, ptr %133, align 4
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132, %129, %53
  %137 = getelementptr %struct.ieee80211_sta_rates, ptr %2, i32 0, i32 1, i32 %3, i32 1
  store i8 2, ptr %137, align 1
  %138 = getelementptr %struct.ieee80211_sta_rates, ptr %2, i32 0, i32 1, i32 %3, i32 3
  store i8 2, ptr %138, align 1
  %139 = getelementptr %struct.ieee80211_sta_rates, ptr %2, i32 0, i32 1, i32 %3, i32 2
  store i8 2, ptr %139, align 2
  br label %147

140:                                              ; preds = %132
  %141 = getelementptr %struct.ieee80211_sta_rates, ptr %2, i32 0, i32 1, i32 %3, i32 1
  store i8 %134, ptr %141, align 1
  %142 = load i8, ptr %133, align 4
  %143 = getelementptr %struct.ieee80211_sta_rates, ptr %2, i32 0, i32 1, i32 %3, i32 2
  store i8 %142, ptr %143, align 2
  %144 = getelementptr %struct.minstrel_ht_sta, ptr %1, i32 0, i32 20, i32 %7, i32 4, i32 %10, i32 9
  %145 = load i8, ptr %144, align 1
  %146 = getelementptr %struct.ieee80211_sta_rates, ptr %2, i32 0, i32 1, i32 %3, i32 3
  store i8 %145, ptr %146, align 1
  br label %147

147:                                              ; preds = %140, %136
  %148 = phi i8 [ 2, %136 ], [ %145, %140 ]
  switch i32 %7, label %160 [
    i32 16, label %149
    i32 17, label %153
  ]

149:                                              ; preds = %147
  %150 = and i32 %4, 3
  %151 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 7, i32 %150
  %152 = load i8, ptr %151, align 1
  br label %176

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 14
  %155 = load i8, ptr %154, align 4
  %156 = zext i8 %155 to i32
  %157 = and i32 %4, 7
  %158 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %156, i32 %157
  %159 = load i8, ptr %158, align 1
  br label %176

160:                                              ; preds = %147
  %161 = and i16 %9, 256
  %162 = icmp eq i16 %161, 0
  %163 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %7, i32 1
  %164 = load i8, ptr %163, align 2
  %165 = zext i8 %164 to i32
  br i1 %162, label %171, label %166

166:                                              ; preds = %160
  %167 = shl nuw nsw i32 %165, 4
  %168 = add nuw nsw i32 %167, 240
  %169 = or i32 %168, %10
  %170 = trunc i32 %169 to i8
  br label %176

171:                                              ; preds = %160
  %172 = shl nuw nsw i32 %165, 3
  %173 = add nuw nsw i32 %10, 248
  %174 = add nuw nsw i32 %173, %172
  %175 = trunc i32 %174 to i8
  br label %176

176:                                              ; preds = %171, %166, %153, %149
  %177 = phi i8 [ %152, %149 ], [ %159, %153 ], [ %170, %166 ], [ %175, %171 ]
  %178 = icmp sgt i32 %3, 0
  br i1 %178, label %188, label %179

179:                                              ; preds = %176
  %180 = load ptr, ptr %1, align 4
  %181 = getelementptr inbounds %struct.ieee80211_sta, ptr %180, i32 0, i32 15
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, 3
  br i1 %183, label %184, label %191

184:                                              ; preds = %179
  %185 = getelementptr [42 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %7, i32 1
  %186 = load i8, ptr %185, align 2
  %187 = icmp ugt i8 %186, 1
  br i1 %187, label %188, label %191

188:                                              ; preds = %184, %176
  %189 = getelementptr %struct.ieee80211_sta_rates, ptr %2, i32 0, i32 1, i32 %3, i32 1
  store i8 %148, ptr %189, align 1
  %190 = or i16 %9, 1
  br label %191

191:                                              ; preds = %188, %184, %179
  %192 = phi i16 [ %190, %188 ], [ %9, %184 ], [ %9, %179 ]
  %193 = getelementptr %struct.ieee80211_sta_rates, ptr %2, i32 0, i32 1, i32 %3
  store i8 %177, ptr %193, align 2
  %194 = getelementptr %struct.ieee80211_sta_rates, ptr %2, i32 0, i32 1, i32 %3, i32 4
  store i16 %192, ptr %194, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rate_control_set_rates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc zeroext i1 @minstrel_ht_txstat_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #12 {
  %4 = load i8, ptr %2, align 1
  %5 = icmp slt i8 %4, 0
  br i1 %5, label %65, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %2, i32 0, i32 1
  %8 = load i16, ptr %7, align 1
  %9 = and i16 %8, 31
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %65, label %11

11:                                               ; preds = %6
  %12 = and i16 %8, 8448
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %65

14:                                               ; preds = %11
  %15 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 7, i32 0
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %4, %16
  br i1 %17, label %65, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 7, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %4, %20
  br i1 %21, label %65, label %22

22:                                               ; preds = %18
  %23 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 7, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %4, %24
  br i1 %25, label %65, label %26

26:                                               ; preds = %22
  %27 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 7, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %4, %28
  br i1 %29, label %65, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 14
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i32
  %34 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %33, i32 0
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %4, %35
  br i1 %36, label %65, label %37

37:                                               ; preds = %30
  %38 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %33, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %4, %39
  br i1 %40, label %65, label %41

41:                                               ; preds = %37
  %42 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %33, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %4, %43
  br i1 %44, label %65, label %45

45:                                               ; preds = %41
  %46 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %33, i32 3
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %4, %47
  br i1 %48, label %65, label %49

49:                                               ; preds = %45
  %50 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %33, i32 4
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %4, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %33, i32 5
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %4, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %33, i32 6
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %4, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr %struct.minstrel_priv, ptr %0, i32 0, i32 8, i32 %33, i32 7
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %4, %63
  br label %65

65:                                               ; preds = %61, %57, %53, %49, %45, %41, %37, %30, %26, %22, %18, %14, %11, %6, %3
  %66 = phi i1 [ false, %3 ], [ false, %6 ], [ true, %11 ], [ true, %30 ], [ true, %37 ], [ true, %41 ], [ true, %45 ], [ true, %49 ], [ true, %53 ], [ true, %57 ], [ true, %26 ], [ true, %22 ], [ true, %18 ], [ true, %14 ], [ %64, %61 ]
  ret i1 %66
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { cold }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
