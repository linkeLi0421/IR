; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/cfp.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/cfp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.region_code_mapping = type { i8, [3 x i8] }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mwifiex_802_11d_domain_reg = type { [3 x i8], i8, [83 x %struct.ieee80211_country_ie_triplet] }
%struct.ieee80211_country_ie_triplet = type { %union.anon.138 }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { i8, i8, i8 }
%struct.mwifiex_sleep_params = type { i16, i16, i16, i8, i8, i16 }
%struct.mwifiex_sleep_period = type { i16, i16 }
%struct.mwifiex_hs_config_param = type <{ i32, i8, i8 }>
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mwifiex_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_wait_queue = type { %struct.wait_queue_head, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mwifiex_private = type <{ ptr, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i32, i8, [3 x i8], ptr, %struct.net_device_stats, i32, i32, i32, i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, [18 x i16], [2 x i8], i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i8], ptr, %struct.cfg80211_ssid, [6 x i8], i8, %struct.mwifiex_current_bss_params, i16, i8, i8, i16, i16, i8, i8, i8, i8, %struct.mwifiex_802_11_security, [4 x %struct.mwifiex_wep_key], i16, [256 x i8], i16, i8, %struct.host_cmd_ds_802_11_key_material, %struct.host_cmd_ds_802_11_key_material_v2, [256 x i8], i8, i16, ptr, i16, i8, i8, i8, [3 x i8], %struct.mwifiex_wmm_desc, [4 x %struct.atomic_t], %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, [8 x %struct.mwifiex_tx_aggr], %struct.mwifiex_add_ba_param, [8 x i16], [8 x i8], %struct.list_head, %struct.spinlock, [500 x i8], i32, [256 x i8], i8, i8, [8 x %struct.mwifiex_vendor_spec_cfg_ie], [256 x i8], i8, i8, ptr, i32, %struct.spinlock, %struct.wireless_dev, %struct.mwifiex_chan_freq_power, i32, [128 x i8], ptr, i16, [2 x i8], %struct.mutex, ptr, [6 x i8], %struct.wps, i8, i32, i32, i8, i8, %struct.mwifiex_ds_misc_subsc_evt, [16 x %struct.mwifiex_ie], i16, i16, i16, i16, i8, i8, i32, [4 x i8], %struct.mwifiex_roc_cfg, i8, i8, i8, i8, i32, i8, i8, [2 x i8], %struct.mwifiex_uap_bss_param, %struct.cfg80211_chan_def, ptr, %struct.sk_buff_head, i8, [3 x i8], %struct.timer_list, i8, [3 x i8], %struct.idr, %struct.spinlock, ptr, %struct.cfg80211_chan_def, ptr, %struct.delayed_work, %struct.timer_list, ptr, %struct.delayed_work, %struct.cfg80211_beacon_data, %struct.mwifiex_11h_intf_state, [2 x i8], %struct.mwifiex_ds_mem_rw, %struct.sk_buff_head, [50 x %struct.mwifiex_user_scan_chan], i8, i8, [2 x i8] }>
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.mwifiex_current_bss_params = type { %struct.mwifiex_bssdescriptor, i8, i8, i8, i32, [14 x i8] }
%struct.mwifiex_bssdescriptor = type <{ [6 x i8], %struct.cfg80211_ssid, i8, i32, i32, i32, i32, i16, i8, i8, i32, [14 x i8], [14 x i8], i16, [2 x i8], i64, i64, %union.ieee_types_phy_param_set, %union.ieee_types_ss_param_set, i8, i16, %struct.ieee_types_wmm_parameter, i8, [3 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, i8, i8, ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i32, i8, i8, i8, [5 x i8] }>
%union.ieee_types_phy_param_set = type { %struct.ieee_types_fh_param_set }
%struct.ieee_types_fh_param_set = type <{ i8, i8, i16, i8, i8, i8 }>
%union.ieee_types_ss_param_set = type { %struct.ieee_types_cf_param_set }
%struct.ieee_types_cf_param_set = type { i8, i8, i8, i8, i16, i16 }
%struct.ieee_types_wmm_parameter = type { %struct.ieee_types_vendor_header, i8, i8, i8, i8, [4 x %struct.ieee_types_wmm_ac_parameters] }
%struct.ieee_types_vendor_header = type { i8, i8, %struct.anon.141 }
%struct.anon.141 = type { [3 x i8], i8 }
%struct.ieee_types_wmm_ac_parameters = type { i8, i8, i16 }
%struct.mwifiex_802_11_security = type { i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.mwifiex_wep_key = type { i32, i32, i32, [16 x i8] }
%struct.host_cmd_ds_802_11_key_material = type { i16, %struct.mwifiex_ie_type_key_param_set }
%struct.mwifiex_ie_type_key_param_set = type { i16, i16, i16, i16, i16, [50 x i8] }
%struct.host_cmd_ds_802_11_key_material_v2 = type { i16, %struct.mwifiex_ie_type_key_param_set_v2 }
%struct.mwifiex_ie_type_key_param_set_v2 = type { i16, i16, [6 x i8], i8, i8, i16, %union.anon.142 }
%union.anon.142 = type { %struct.mwifiex_wapi_param }
%struct.mwifiex_wapi_param = type { [16 x i8], i16, [32 x i8] }
%struct.mwifiex_wmm_desc = type { [8 x %struct.mwifiex_tid_tbl], [8 x i32], [8 x i32], %struct.spinlock, [4 x %struct.mwifiex_wmm_ac_status], [4 x i8], i32, [4 x i8], [8 x i32], %struct.atomic_t, %struct.atomic_t }
%struct.mwifiex_tid_tbl = type { %struct.list_head }
%struct.mwifiex_wmm_ac_status = type { i8, i8, i8 }
%struct.mwifiex_tx_aggr = type { i8, i8, i8 }
%struct.mwifiex_add_ba_param = type { i32, i32, i32, i8, i8 }
%struct.mwifiex_vendor_spec_cfg_ie = type { i16, i16, [256 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mwifiex_chan_freq_power = type { i16, i32, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wps = type { i8 }
%struct.mwifiex_ds_misc_subsc_evt = type { i16, i16, %struct.subsc_evt_cfg, %struct.subsc_evt_cfg }
%struct.subsc_evt_cfg = type { i8, i8 }
%struct.mwifiex_ie = type { i16, i16, i16, [256 x i8] }
%struct.mwifiex_roc_cfg = type { i64, %struct.ieee80211_channel }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_uap_bss_param = type <{ i8, i8, i16, i16, i8, i8, %struct.mwifiex_802_11_ssid, i8, i8, i8, i8, i16, i16, i16, i16, i16, [2 x i8], %struct.wpa_param, [4 x %struct.wep_key], %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, [14 x i8], i32, i32, i8, i8, %struct.mwifiex_types_wmm_info, [2 x i8] }>
%struct.mwifiex_802_11_ssid = type { i32, [32 x i8] }
%struct.wpa_param = type { i8, i8, i8, i32, [64 x i8] }
%struct.wep_key = type { i8, i8, i16, [13 x i8] }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.mwifiex_types_wmm_info = type { [4 x i8], i8, i8, i8, i8, [4 x %struct.ieee_types_wmm_ac_parameters] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_11h_intf_state = type { i8, i8 }
%struct.mwifiex_ds_mem_rw = type { i32, i32 }
%struct.mwifiex_user_scan_chan = type { i8, i8, i8, i8, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.137, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.137 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }

@region_code_index = dso_local local_unnamed_addr global [9 x i16] [i16 0, i16 16, i16 32, i16 48, i16 49, i16 50, i16 64, i16 65, i16 80], align 2
@region_code_mapping_t = internal global [8 x %struct.region_code_mapping] [%struct.region_code_mapping { i8 16, [3 x i8] c"US " }, %struct.region_code_mapping { i8 32, [3 x i8] c"CA " }, %struct.region_code_mapping { i8 48, [3 x i8] c"FR " }, %struct.region_code_mapping { i8 49, [3 x i8] c"ES " }, %struct.region_code_mapping { i8 50, [3 x i8] c"FR " }, %struct.region_code_mapping { i8 64, [3 x i8] c"JP " }, %struct.region_code_mapping { i8 65, [3 x i8] c"JP " }, %struct.region_code_mapping { i8 80, [3 x i8] c"CN " }], align 1
@ac_mcs_rate_nss2 = internal unnamed_addr constant [8 x [10 x i16]] [[10 x i16] [i16 234, i16 468, i16 702, i16 936, i16 1404, i16 1872, i16 2106, i16 2340, i16 2808, i16 3120], [10 x i16] [i16 260, i16 520, i16 780, i16 1040, i16 1560, i16 2080, i16 2340, i16 2600, i16 3120, i16 3467], [10 x i16] [i16 117, i16 234, i16 351, i16 468, i16 702, i16 936, i16 1053, i16 1170, i16 1404, i16 1560], [10 x i16] [i16 130, i16 260, i16 390, i16 520, i16 780, i16 1040, i16 1170, i16 1300, i16 1560, i16 1734], [10 x i16] [i16 54, i16 108, i16 162, i16 216, i16 324, i16 432, i16 486, i16 540, i16 648, i16 720], [10 x i16] [i16 60, i16 120, i16 180, i16 240, i16 360, i16 480, i16 540, i16 600, i16 720, i16 800], [10 x i16] [i16 26, i16 52, i16 74, i16 104, i16 156, i16 208, i16 234, i16 260, i16 312, i16 0], [10 x i16] [i16 29, i16 58, i16 87, i16 116, i16 174, i16 230, i16 260, i16 289, i16 347, i16 0]], align 2
@ac_mcs_rate_nss1 = internal unnamed_addr constant [8 x [10 x i16]] [[10 x i16] [i16 117, i16 234, i16 351, i16 468, i16 702, i16 936, i16 1053, i16 1170, i16 1404, i16 1560], [10 x i16] [i16 130, i16 260, i16 390, i16 520, i16 780, i16 1040, i16 1170, i16 1300, i16 1560, i16 1734], [10 x i16] [i16 59, i16 117, i16 176, i16 234, i16 351, i16 468, i16 527, i16 585, i16 702, i16 780], [10 x i16] [i16 65, i16 130, i16 195, i16 260, i16 390, i16 520, i16 585, i16 650, i16 780, i16 867], [10 x i16] [i16 27, i16 54, i16 81, i16 108, i16 162, i16 216, i16 243, i16 270, i16 324, i16 360], [10 x i16] [i16 30, i16 60, i16 90, i16 120, i16 180, i16 240, i16 270, i16 300, i16 360, i16 400], [10 x i16] [i16 13, i16 26, i16 39, i16 52, i16 78, i16 104, i16 117, i16 130, i16 156, i16 0], [10 x i16] [i16 15, i16 29, i16 44, i16 58, i16 87, i16 116, i16 130, i16 145, i16 174, i16 0]], align 2
@mcs_rate = internal unnamed_addr constant [4 x [16 x i16]] [[16 x i16] [i16 27, i16 54, i16 81, i16 108, i16 162, i16 216, i16 243, i16 270, i16 54, i16 108, i16 162, i16 216, i16 324, i16 432, i16 486, i16 540], [16 x i16] [i16 30, i16 60, i16 90, i16 120, i16 180, i16 240, i16 270, i16 300, i16 60, i16 120, i16 180, i16 240, i16 360, i16 480, i16 540, i16 600], [16 x i16] [i16 13, i16 26, i16 39, i16 52, i16 78, i16 104, i16 117, i16 130, i16 26, i16 52, i16 78, i16 104, i16 156, i16 208, i16 234, i16 260], [16 x i16] [i16 14, i16 28, i16 43, i16 57, i16 86, i16 115, i16 130, i16 144, i16 28, i16 57, i16 86, i16 115, i16 173, i16 231, i16 260, i16 288]], align 2
@mwifiex_data_rates = internal unnamed_addr constant [32 x i16] [i16 2, i16 4, i16 11, i16 22, i16 0, i16 12, i16 18, i16 24, i16 36, i16 48, i16 72, i16 96, i16 108, i16 144, i16 13, i16 26, i16 39, i16 52, i16 78, i16 104, i16 117, i16 130, i16 12, i16 27, i16 54, i16 81, i16 108, i16 162, i16 216, i16 243, i16 270, i16 0], align 2
@.str = private unnamed_addr constant [32 x i8] c"%s: cannot find cfp by band %d\0A\00", align 1
@__func__.mwifiex_get_cfp = private unnamed_addr constant [16 x i8] c"mwifiex_get_cfp\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"%s: cannot find cfp by band %d\09& channel=%d freq=%d\0A\00", align 1
@mwifiex_get_rates_from_cfg80211.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"drivers/net/wireless/marvell/mwifiex/cfp.c\00", align 1
@mwifiex_get_rates_from_cfg80211.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"info: infra band=%d\09supported_rates_b\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"info: infra band=%d\09supported_rates_g\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"info: infra band=%d\09supported_rates_bg\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"info: infra band=%d\09supported_rates_a\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"info: infra band=%d\09supported_rates_n\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"info: adhoc B\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"info: adhoc G only\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"info: adhoc BG\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"info: adhoc A\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @mwifiex_11d_code_2_region(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @region_code_mapping_t, align 1
  %3 = icmp eq i8 %2, %0
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr getelementptr inbounds ([8 x %struct.region_code_mapping], ptr @region_code_mapping_t, i32 0, i32 1), align 1
  %6 = icmp eq i8 %5, %0
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = load i8, ptr getelementptr inbounds ([8 x %struct.region_code_mapping], ptr @region_code_mapping_t, i32 0, i32 2), align 1
  %9 = icmp eq i8 %8, %0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = load i8, ptr getelementptr inbounds ([8 x %struct.region_code_mapping], ptr @region_code_mapping_t, i32 0, i32 3), align 1
  %12 = icmp eq i8 %11, %0
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  %14 = load i8, ptr getelementptr inbounds ([8 x %struct.region_code_mapping], ptr @region_code_mapping_t, i32 0, i32 4), align 1
  %15 = icmp eq i8 %14, %0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = load i8, ptr getelementptr inbounds ([8 x %struct.region_code_mapping], ptr @region_code_mapping_t, i32 0, i32 5), align 1
  %18 = icmp eq i8 %17, %0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i8, ptr getelementptr inbounds ([8 x %struct.region_code_mapping], ptr @region_code_mapping_t, i32 0, i32 6), align 1
  %21 = icmp eq i8 %20, %0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i8, ptr getelementptr inbounds ([8 x %struct.region_code_mapping], ptr @region_code_mapping_t, i32 0, i32 7), align 1
  %24 = icmp eq i8 %23, %0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19, %16, %13, %10, %7, %4, %1
  %26 = phi i32 [ 0, %1 ], [ 1, %4 ], [ 2, %7 ], [ 3, %10 ], [ 4, %13 ], [ 5, %16 ], [ 6, %19 ], [ 7, %22 ]
  %27 = getelementptr [8 x %struct.region_code_mapping], ptr @region_code_mapping_t, i32 0, i32 %26, i32 1
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi ptr [ %27, %25 ], [ null, %22 ]
  ret ptr %29
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_index_to_acs_data_rate(ptr nocapture readnone %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = trunc i8 %2 to i2
  switch i2 %4, label %46 [
    i2 -2, label %5
    i2 1, label %24
  ]

5:                                                ; preds = %3
  %6 = zext i8 %1 to i32
  %7 = and i32 %6, 15
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 9)
  %9 = lshr i8 %2, 4
  %10 = and i8 %9, 1
  %11 = and i32 %6, 240
  %12 = icmp eq i32 %11, 16
  %13 = lshr i8 %2, 1
  %14 = and i8 %13, 6
  %15 = or i8 %14, %10
  %16 = xor i8 %15, 6
  %17 = zext i8 %16 to i32
  br i1 %12, label %18, label %21

18:                                               ; preds = %5
  %19 = getelementptr [8 x [10 x i16]], ptr @ac_mcs_rate_nss2, i32 0, i32 %17, i32 %8
  %20 = load i16, ptr %19, align 2
  br label %52

21:                                               ; preds = %5
  %22 = getelementptr [8 x [10 x i16]], ptr @ac_mcs_rate_nss1, i32 0, i32 %17, i32 %8
  %23 = load i16, ptr %22, align 2
  br label %52

24:                                               ; preds = %3
  %25 = lshr i8 %2, 2
  %26 = and i8 %25, 3
  %27 = lshr i8 %2, 4
  %28 = and i8 %27, 1
  %29 = zext i8 %1 to i32
  %30 = icmp eq i8 %1, 32
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = icmp eq i8 %28, 0
  %33 = select i1 %32, i16 12, i16 13
  br label %52

34:                                               ; preds = %24
  %35 = icmp ult i8 %1, 16
  %36 = icmp ult i8 %26, 2
  %37 = and i1 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = shl nuw nsw i8 %26, 1
  %40 = zext i8 %39 to i32
  %41 = sub nuw nsw i32 2, %40
  %42 = zext i8 %28 to i32
  %43 = or i32 %41, %42
  %44 = getelementptr [4 x [16 x i16]], ptr @mcs_rate, i32 0, i32 %43, i32 %29
  %45 = load i16, ptr %44, align 2
  br label %52

46:                                               ; preds = %3
  %47 = icmp ugt i8 %1, 31
  %48 = select i1 %47, i8 0, i8 %1
  %49 = zext i8 %48 to i32
  %50 = getelementptr [32 x i16], ptr @mwifiex_data_rates, i32 0, i32 %49
  %51 = load i16, ptr %50, align 2
  br label %52

52:                                               ; preds = %46, %38, %34, %31, %21, %18
  %53 = phi i16 [ %20, %18 ], [ %23, %21 ], [ %45, %38 ], [ %51, %46 ], [ %33, %31 ], [ 2, %34 ]
  %54 = zext i16 %53 to i32
  ret i32 %54
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_index_to_data_rate(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 115
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 34
  %8 = select i1 %7, i32 16, i32 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 128
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %61, label %12

12:                                               ; preds = %3
  %13 = trunc i8 %2 to i2
  switch i2 %13, label %55 [
    i2 -2, label %14
    i2 1, label %33
  ]

14:                                               ; preds = %12
  %15 = zext i8 %1 to i32
  %16 = and i32 %15, 15
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 9) #7
  %18 = lshr i8 %2, 4
  %19 = and i8 %18, 1
  %20 = and i32 %15, 240
  %21 = icmp eq i32 %20, 16
  %22 = lshr i8 %2, 1
  %23 = and i8 %22, 6
  %24 = or i8 %23, %19
  %25 = xor i8 %24, 6
  %26 = zext i8 %25 to i32
  br i1 %21, label %27, label %30

27:                                               ; preds = %14
  %28 = getelementptr [8 x [10 x i16]], ptr @ac_mcs_rate_nss2, i32 0, i32 %26, i32 %17
  %29 = load i16, ptr %28, align 2
  br label %99

30:                                               ; preds = %14
  %31 = getelementptr [8 x [10 x i16]], ptr @ac_mcs_rate_nss1, i32 0, i32 %26, i32 %17
  %32 = load i16, ptr %31, align 2
  br label %99

33:                                               ; preds = %12
  %34 = lshr i8 %2, 2
  %35 = and i8 %34, 3
  %36 = lshr i8 %2, 4
  %37 = and i8 %36, 1
  %38 = zext i8 %1 to i32
  %39 = icmp eq i8 %1, 32
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = icmp eq i8 %37, 0
  %42 = select i1 %41, i16 12, i16 13
  br label %99

43:                                               ; preds = %33
  %44 = icmp ult i8 %1, 16
  %45 = icmp ult i8 %35, 2
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %99

47:                                               ; preds = %43
  %48 = shl nuw nsw i8 %35, 1
  %49 = zext i8 %48 to i32
  %50 = sub nuw nsw i32 2, %49
  %51 = zext i8 %37 to i32
  %52 = or i32 %50, %51
  %53 = getelementptr [4 x [16 x i16]], ptr @mcs_rate, i32 0, i32 %52, i32 %38
  %54 = load i16, ptr %53, align 2
  br label %99

55:                                               ; preds = %12
  %56 = icmp ugt i8 %1, 31
  %57 = select i1 %56, i8 0, i8 %1
  %58 = zext i8 %57 to i32
  %59 = getelementptr [32 x i16], ptr @mwifiex_data_rates, i32 0, i32 %58
  %60 = load i16, ptr %59, align 2
  br label %99

61:                                               ; preds = %3
  %62 = zext i8 %2 to i32
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %93, label %65

65:                                               ; preds = %61
  %66 = zext i8 %1 to i32
  %67 = icmp eq i8 %1, 32
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = and i32 %62, 4
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i16 12, i16 13
  br label %99

72:                                               ; preds = %65
  %73 = icmp ugt i32 %8, %66
  br i1 %73, label %74, label %99

74:                                               ; preds = %72
  %75 = and i32 %62, 2
  %76 = icmp eq i32 %75, 0
  %77 = and i32 %62, 4
  %78 = icmp eq i32 %77, 0
  br i1 %76, label %86, label %79

79:                                               ; preds = %74
  br i1 %78, label %83, label %80

80:                                               ; preds = %79
  %81 = getelementptr [4 x [16 x i16]], ptr @mcs_rate, i32 0, i32 1, i32 %66
  %82 = load i16, ptr %81, align 2
  br label %99

83:                                               ; preds = %79
  %84 = getelementptr [16 x i16], ptr @mcs_rate, i32 0, i32 %66
  %85 = load i16, ptr %84, align 2
  br label %99

86:                                               ; preds = %74
  br i1 %78, label %90, label %87

87:                                               ; preds = %86
  %88 = getelementptr [4 x [16 x i16]], ptr @mcs_rate, i32 0, i32 3, i32 %66
  %89 = load i16, ptr %88, align 2
  br label %99

90:                                               ; preds = %86
  %91 = getelementptr [4 x [16 x i16]], ptr @mcs_rate, i32 0, i32 2, i32 %66
  %92 = load i16, ptr %91, align 2
  br label %99

93:                                               ; preds = %61
  %94 = icmp ugt i8 %1, 31
  %95 = select i1 %94, i8 0, i8 %1
  %96 = zext i8 %95 to i32
  %97 = getelementptr [32 x i16], ptr @mwifiex_data_rates, i32 0, i32 %96
  %98 = load i16, ptr %97, align 2
  br label %99

99:                                               ; preds = %93, %90, %87, %83, %80, %72, %68, %55, %47, %43, %40, %30, %27
  %100 = phi i16 [ %29, %27 ], [ %32, %30 ], [ %54, %47 ], [ %60, %55 ], [ %42, %40 ], [ 2, %43 ], [ %82, %80 ], [ %85, %83 ], [ %89, %87 ], [ %92, %90 ], [ %98, %93 ], [ %71, %68 ], [ 2, %72 ]
  %101 = zext i16 %100 to i32
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_active_data_rates(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %4 = load i8, ptr %3, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @mwifiex_get_supported_rates(ptr noundef %0, ptr noundef %1)
  br label %24

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 5
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %20, %8
  %14 = phi i32 [ %22, %20 ], [ 0, %8 ]
  %15 = getelementptr i8, ptr %9, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  %18 = icmp ugt i32 %14, 13
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %1, i32 %14
  store i8 %16, ptr %21, align 1
  %22 = add nuw nsw i32 %14, 1
  %23 = icmp eq i32 %22, %11
  br i1 %23, label %24, label %13

24:                                               ; preds = %20, %13, %8, %6
  %25 = phi i32 [ %7, %6 ], [ 0, %8 ], [ %14, %13 ], [ %11, %20 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_supported_rates(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %49 [
    i32 2, label %6
    i32 8, label %6
  ]

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 84
  %8 = load i8, ptr %7, align 2
  switch i8 %8, label %85 [
    i8 1, label %9
    i8 2, label %12
    i8 10, label %12
    i8 3, label %20
    i8 7, label %20
    i8 5, label %20
    i8 31, label %20
    i8 63, label %20
    i8 11, label %20
    i8 4, label %32
    i8 6, label %32
    i8 16, label %40
    i8 20, label %40
    i8 52, label %40
    i8 30, label %40
    i8 62, label %40
    i8 8, label %48
  ]

9:                                                ; preds = %6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.4, i32 noundef 1) #7
  store i8 2, ptr %1, align 1
  %10 = getelementptr i8, ptr %1, i32 1
  store i8 4, ptr %10, align 1
  %11 = getelementptr i8, ptr %1, i32 2
  store i8 11, ptr %11, align 1
  br label %80

12:                                               ; preds = %6, %6
  %13 = zext i8 %8 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.5, i32 noundef %13) #7
  store i8 12, ptr %1, align 1
  %14 = getelementptr i8, ptr %1, i32 1
  store i8 18, ptr %14, align 1
  %15 = getelementptr i8, ptr %1, i32 2
  store i8 24, ptr %15, align 1
  %16 = getelementptr i8, ptr %1, i32 3
  store i8 36, ptr %16, align 1
  %17 = getelementptr i8, ptr %1, i32 4
  store i8 48, ptr %17, align 1
  %18 = getelementptr i8, ptr %1, i32 5
  store i8 72, ptr %18, align 1
  %19 = getelementptr i8, ptr %1, i32 6
  store i8 96, ptr %19, align 1
  br label %80

20:                                               ; preds = %6, %6, %6, %6, %6, %6
  %21 = zext i8 %8 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.6, i32 noundef %21) #7
  store i8 2, ptr %1, align 1
  %22 = getelementptr i8, ptr %1, i32 1
  store i8 4, ptr %22, align 1
  %23 = getelementptr i8, ptr %1, i32 2
  store i8 11, ptr %23, align 1
  %24 = getelementptr i8, ptr %1, i32 3
  store i8 12, ptr %24, align 1
  %25 = getelementptr i8, ptr %1, i32 4
  store i8 18, ptr %25, align 1
  %26 = getelementptr i8, ptr %1, i32 5
  store i8 22, ptr %26, align 1
  %27 = getelementptr i8, ptr %1, i32 6
  store i8 24, ptr %27, align 1
  %28 = getelementptr i8, ptr %1, i32 7
  store i8 36, ptr %28, align 1
  %29 = getelementptr i8, ptr %1, i32 8
  store i8 48, ptr %29, align 1
  %30 = getelementptr i8, ptr %1, i32 9
  store i8 72, ptr %30, align 1
  %31 = getelementptr i8, ptr %1, i32 10
  store i8 96, ptr %31, align 1
  br label %80

32:                                               ; preds = %6, %6
  %33 = zext i8 %8 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.7, i32 noundef %33) #7
  store i8 12, ptr %1, align 1
  %34 = getelementptr i8, ptr %1, i32 1
  store i8 18, ptr %34, align 1
  %35 = getelementptr i8, ptr %1, i32 2
  store i8 24, ptr %35, align 1
  %36 = getelementptr i8, ptr %1, i32 3
  store i8 36, ptr %36, align 1
  %37 = getelementptr i8, ptr %1, i32 4
  store i8 -80, ptr %37, align 1
  %38 = getelementptr i8, ptr %1, i32 5
  store i8 72, ptr %38, align 1
  %39 = getelementptr i8, ptr %1, i32 6
  store i8 96, ptr %39, align 1
  br label %80

40:                                               ; preds = %6, %6, %6, %6, %6
  %41 = zext i8 %8 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.7, i32 noundef %41) #7
  store i8 12, ptr %1, align 1
  %42 = getelementptr i8, ptr %1, i32 1
  store i8 18, ptr %42, align 1
  %43 = getelementptr i8, ptr %1, i32 2
  store i8 24, ptr %43, align 1
  %44 = getelementptr i8, ptr %1, i32 3
  store i8 36, ptr %44, align 1
  %45 = getelementptr i8, ptr %1, i32 4
  store i8 -80, ptr %45, align 1
  %46 = getelementptr i8, ptr %1, i32 5
  store i8 72, ptr %46, align 1
  %47 = getelementptr i8, ptr %1, i32 6
  store i8 96, ptr %47, align 1
  br label %80

48:                                               ; preds = %6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.8, i32 noundef 8) #7
  store i8 2, ptr %1, align 1
  br label %80

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 83
  %51 = load i8, ptr %50, align 1
  switch i8 %51, label %85 [
    i8 1, label %52
    i8 2, label %55
    i8 10, label %55
    i8 3, label %62
    i8 11, label %62
    i8 4, label %73
    i8 20, label %73
  ]

52:                                               ; preds = %49
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.9) #7
  store i8 -126, ptr %1, align 1
  %53 = getelementptr i8, ptr %1, i32 1
  store i8 -124, ptr %53, align 1
  %54 = getelementptr i8, ptr %1, i32 2
  store i8 -117, ptr %54, align 1
  br label %80

55:                                               ; preds = %49, %49
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.10) #7
  store i8 -116, ptr %1, align 1
  %56 = getelementptr i8, ptr %1, i32 1
  store i8 18, ptr %56, align 1
  %57 = getelementptr i8, ptr %1, i32 2
  store i8 -104, ptr %57, align 1
  %58 = getelementptr i8, ptr %1, i32 3
  store i8 36, ptr %58, align 1
  %59 = getelementptr i8, ptr %1, i32 4
  store i8 -80, ptr %59, align 1
  %60 = getelementptr i8, ptr %1, i32 5
  store i8 72, ptr %60, align 1
  %61 = getelementptr i8, ptr %1, i32 6
  store i8 96, ptr %61, align 1
  br label %80

62:                                               ; preds = %49, %49
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.11) #7
  store i8 -126, ptr %1, align 1
  %63 = getelementptr i8, ptr %1, i32 1
  store i8 -124, ptr %63, align 1
  %64 = getelementptr i8, ptr %1, i32 2
  store i8 -117, ptr %64, align 1
  %65 = getelementptr i8, ptr %1, i32 3
  store i8 -106, ptr %65, align 1
  %66 = getelementptr i8, ptr %1, i32 4
  store i8 12, ptr %66, align 1
  %67 = getelementptr i8, ptr %1, i32 5
  store i8 18, ptr %67, align 1
  %68 = getelementptr i8, ptr %1, i32 6
  store i8 24, ptr %68, align 1
  %69 = getelementptr i8, ptr %1, i32 7
  store i8 36, ptr %69, align 1
  %70 = getelementptr i8, ptr %1, i32 8
  store i8 48, ptr %70, align 1
  %71 = getelementptr i8, ptr %1, i32 9
  store i8 72, ptr %71, align 1
  %72 = getelementptr i8, ptr %1, i32 10
  store i8 96, ptr %72, align 1
  br label %80

73:                                               ; preds = %49, %49
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.12) #7
  store i8 -116, ptr %1, align 1
  %74 = getelementptr i8, ptr %1, i32 1
  store i8 18, ptr %74, align 1
  %75 = getelementptr i8, ptr %1, i32 2
  store i8 -104, ptr %75, align 1
  %76 = getelementptr i8, ptr %1, i32 3
  store i8 36, ptr %76, align 1
  %77 = getelementptr i8, ptr %1, i32 4
  store i8 -80, ptr %77, align 1
  %78 = getelementptr i8, ptr %1, i32 5
  store i8 72, ptr %78, align 1
  %79 = getelementptr i8, ptr %1, i32 6
  store i8 96, ptr %79, align 1
  br label %80

80:                                               ; preds = %73, %62, %55, %52, %48, %40, %32, %20, %12, %9
  %81 = phi i32 [ 3, %52 ], [ 7, %55 ], [ 11, %62 ], [ 7, %73 ], [ 3, %9 ], [ 7, %12 ], [ 11, %20 ], [ 7, %32 ], [ 7, %40 ], [ 1, %48 ]
  %82 = phi i8 [ -106, %52 ], [ 108, %55 ], [ 108, %62 ], [ 108, %73 ], [ 22, %9 ], [ 108, %12 ], [ 108, %20 ], [ 108, %32 ], [ 108, %40 ], [ 4, %48 ]
  %83 = phi i32 [ 4, %52 ], [ 8, %55 ], [ 12, %62 ], [ 8, %73 ], [ 4, %9 ], [ 8, %12 ], [ 12, %20 ], [ 8, %32 ], [ 8, %40 ], [ 2, %48 ]
  %84 = getelementptr i8, ptr %1, i32 %81
  store i8 %82, ptr %84, align 1
  br label %85

85:                                               ; preds = %80, %49, %6
  %86 = phi i32 [ 0, %6 ], [ 0, %49 ], [ %83, %80 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mwifiex_get_cfp(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = icmp ne i16 %2, 0
  %6 = icmp ne i32 %3, 0
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %69

8:                                                ; preds = %4
  %9 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %1) #7
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 53
  %14 = getelementptr %struct.wiphy, ptr %12, i32 0, i32 53, i32 1
  %15 = select i1 %10, ptr %13, ptr %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %16, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %18
  %23 = load ptr, ptr %16, align 4
  %24 = icmp eq i16 %2, 255
  br label %28

25:                                               ; preds = %8
  %26 = load ptr, ptr %0, align 8
  %27 = zext i8 %1 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %26, i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mwifiex_get_cfp, i32 noundef %27) #7
  br label %69

28:                                               ; preds = %44, %22
  %29 = phi i32 [ 0, %22 ], [ %45, %44 ]
  %30 = getelementptr %struct.ieee80211_channel, ptr %23, i32 %29, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  br i1 %6, label %35, label %39

35:                                               ; preds = %34
  %36 = getelementptr %struct.ieee80211_channel, ptr %23, i32 %29, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %3
  br i1 %38, label %47, label %44

39:                                               ; preds = %34
  %40 = getelementptr %struct.ieee80211_channel, ptr %23, i32 %29, i32 3
  %41 = load i16, ptr %40, align 2
  %42 = icmp eq i16 %41, %2
  %43 = or i1 %24, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %39, %35, %28
  %45 = add nuw nsw i32 %29, 1
  %46 = icmp eq i32 %45, %20
  br i1 %46, label %51, label %28

47:                                               ; preds = %39, %35
  %48 = icmp eq i32 %29, %20
  br i1 %48, label %51, label %55

49:                                               ; preds = %18
  %50 = icmp eq i32 %20, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %49, %47, %44
  %52 = load ptr, ptr %0, align 8
  %53 = zext i8 %1 to i32
  %54 = zext i16 %2 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %52, i32 noundef 536870912, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mwifiex_get_cfp, i32 noundef %53, i32 noundef %54, i32 noundef %3) #7
  br label %69

55:                                               ; preds = %47
  %56 = getelementptr %struct.ieee80211_channel, ptr %23, i32 %29
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %55
  %59 = getelementptr %struct.ieee80211_channel, ptr %23, i32 %29, i32 3
  %60 = load i16, ptr %59, align 2
  %61 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 104
  store i16 %60, ptr %61, align 4
  %62 = getelementptr %struct.ieee80211_channel, ptr %23, i32 %29, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 104, i32 1
  store i32 %63, ptr %64, align 4
  %65 = getelementptr %struct.ieee80211_channel, ptr %23, i32 %29, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = trunc i32 %66 to i16
  %68 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 104, i32 2
  store i16 %67, ptr %68, align 4
  br label %69

69:                                               ; preds = %58, %55, %51, %49, %25, %4
  %70 = phi ptr [ null, %25 ], [ null, %4 ], [ null, %55 ], [ null, %51 ], [ %61, %58 ], [ null, %49 ]
  ret ptr %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i8 @mwifiex_is_rate_auto(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 0
  %3 = load i16, ptr %2, align 2
  %4 = icmp ne i16 %3, 0
  %5 = zext i1 %4 to i32
  %6 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = icmp ne i16 %7, 0
  %9 = zext i1 %8 to i32
  %10 = add nuw nsw i32 %5, %9
  %11 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 2
  %12 = load i16, ptr %11, align 2
  %13 = icmp ne i16 %12, 0
  %14 = zext i1 %13 to i32
  %15 = add nuw nsw i32 %10, %14
  %16 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 3
  %17 = load i16, ptr %16, align 2
  %18 = icmp ne i16 %17, 0
  %19 = zext i1 %18 to i32
  %20 = add nuw nsw i32 %15, %19
  %21 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 4
  %22 = load i16, ptr %21, align 2
  %23 = icmp ne i16 %22, 0
  %24 = zext i1 %23 to i32
  %25 = add nuw nsw i32 %20, %24
  %26 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 5
  %27 = load i16, ptr %26, align 2
  %28 = icmp ne i16 %27, 0
  %29 = zext i1 %28 to i32
  %30 = add nuw nsw i32 %25, %29
  %31 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 6
  %32 = load i16, ptr %31, align 2
  %33 = icmp ne i16 %32, 0
  %34 = zext i1 %33 to i32
  %35 = add nuw nsw i32 %30, %34
  %36 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 7
  %37 = load i16, ptr %36, align 2
  %38 = icmp ne i16 %37, 0
  %39 = zext i1 %38 to i32
  %40 = add nuw nsw i32 %35, %39
  %41 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 8
  %42 = load i16, ptr %41, align 2
  %43 = icmp ne i16 %42, 0
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %40, %44
  %46 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 9
  %47 = load i16, ptr %46, align 2
  %48 = icmp ne i16 %47, 0
  %49 = zext i1 %48 to i32
  %50 = add nuw nsw i32 %45, %49
  %51 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 10
  %52 = load i16, ptr %51, align 2
  %53 = icmp ne i16 %52, 0
  %54 = zext i1 %53 to i32
  %55 = add nuw nsw i32 %50, %54
  %56 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 11
  %57 = load i16, ptr %56, align 2
  %58 = icmp ne i16 %57, 0
  %59 = zext i1 %58 to i32
  %60 = add nuw nsw i32 %55, %59
  %61 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 12
  %62 = load i16, ptr %61, align 2
  %63 = icmp ne i16 %62, 0
  %64 = zext i1 %63 to i32
  %65 = add nuw nsw i32 %60, %64
  %66 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 13
  %67 = load i16, ptr %66, align 2
  %68 = icmp ne i16 %67, 0
  %69 = zext i1 %68 to i32
  %70 = add nuw nsw i32 %65, %69
  %71 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 14
  %72 = load i16, ptr %71, align 2
  %73 = icmp ne i16 %72, 0
  %74 = zext i1 %73 to i32
  %75 = add nuw nsw i32 %70, %74
  %76 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 15
  %77 = load i16, ptr %76, align 2
  %78 = icmp ne i16 %77, 0
  %79 = zext i1 %78 to i32
  %80 = add nuw nsw i32 %75, %79
  %81 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 16
  %82 = load i16, ptr %81, align 2
  %83 = icmp ne i16 %82, 0
  %84 = zext i1 %83 to i32
  %85 = add nuw nsw i32 %80, %84
  %86 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 17
  %87 = load i16, ptr %86, align 2
  %88 = icmp ne i16 %87, 0
  %89 = zext i1 %88 to i32
  %90 = add nuw nsw i32 %85, %89
  %91 = icmp ugt i32 %90, 1
  %92 = zext i1 %91 to i8
  ret i8 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_rates_from_cfg80211(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 111
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq i8 %2, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = getelementptr %struct.wiphy, ptr %6, i32 0, i32 53, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = load i1, ptr @mwifiex_get_rates_from_cfg80211.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %10
  store i1 true, ptr @mwifiex_get_rates_from_cfg80211.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 401, i32 noundef 9, ptr noundef null) #7
  br label %18

18:                                               ; preds = %17, %10
  br i1 %13, label %62, label %19

19:                                               ; preds = %18
  %20 = getelementptr %struct.cfg80211_scan_request, ptr %8, i32 0, i32 9, i32 1
  br label %32

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 53
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  %25 = load i1, ptr @mwifiex_get_rates_from_cfg80211.__already_done.3, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %21
  store i1 true, ptr @mwifiex_get_rates_from_cfg80211.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 406, i32 noundef 9, ptr noundef null) #7
  br label %29

29:                                               ; preds = %28, %21
  br i1 %24, label %62, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %8, i32 0, i32 9
  br label %32

32:                                               ; preds = %30, %19
  %33 = phi ptr [ %20, %19 ], [ %31, %30 ]
  %34 = phi ptr [ %12, %19 ], [ %23, %30 ]
  %35 = load i32, ptr %33, align 4
  %36 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %34, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %34, i32 0, i32 1
  br label %41

41:                                               ; preds = %57, %39
  %42 = phi i32 [ %37, %39 ], [ %58, %57 ]
  %43 = phi i32 [ 0, %39 ], [ %59, %57 ]
  %44 = phi i32 [ 0, %39 ], [ %60, %57 ]
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %35
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %41
  %49 = load ptr, ptr %40, align 4
  %50 = getelementptr %struct.ieee80211_rate, ptr %49, i32 %44, i32 1
  %51 = load i16, ptr %50, align 4
  %52 = udiv i16 %51, 5
  %53 = trunc i16 %52 to i8
  %54 = add i32 %43, 1
  %55 = getelementptr i8, ptr %1, i32 %43
  store i8 %53, ptr %55, align 1
  %56 = load i32, ptr %36, align 4
  br label %57

57:                                               ; preds = %48, %41
  %58 = phi i32 [ %42, %41 ], [ %56, %48 ]
  %59 = phi i32 [ %43, %41 ], [ %54, %48 ]
  %60 = add nuw nsw i32 %44, 1
  %61 = icmp slt i32 %60, %58
  br i1 %61, label %41, label %62

62:                                               ; preds = %57, %32, %29, %18
  %63 = phi i32 [ 0, %18 ], [ 0, %29 ], [ 0, %32 ], [ %59, %57 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mwifiex_adjust_data_rate(ptr nocapture noundef readnone %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = zext i8 %2 to i32
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i8 %1, 27
  br label %18

9:                                                ; preds = %3
  %10 = and i32 %4, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = add i8 %1, 12
  br label %18

14:                                               ; preds = %9
  %15 = icmp ugt i8 %1, 4
  %16 = sext i1 %15 to i8
  %17 = add i8 %16, %1
  br label %18

18:                                               ; preds = %14, %12, %7
  %19 = phi i8 [ %8, %7 ], [ %13, %12 ], [ %17, %14 ]
  %20 = tail call i8 @llvm.umin.i8(i8 %19, i8 73)
  ret i8 %20
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
