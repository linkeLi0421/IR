; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/scan.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/scan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.mwifiex_bssdescriptor = type <{ [6 x i8], %struct.cfg80211_ssid, i8, i32, i32, i32, i32, i16, i8, i8, i32, [14 x i8], [14 x i8], i16, [2 x i8], i64, i64, %union.ieee_types_phy_param_set, %union.ieee_types_ss_param_set, i8, i16, %struct.ieee_types_wmm_parameter, i8, [3 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, i8, i8, ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i16, [2 x i8], ptr, i32, i8, i8, i8, [5 x i8] }>
%union.ieee_types_phy_param_set = type { %struct.ieee_types_fh_param_set }
%struct.ieee_types_fh_param_set = type <{ i8, i8, i16, i8, i8, i8 }>
%union.ieee_types_ss_param_set = type { %struct.ieee_types_cf_param_set }
%struct.ieee_types_cf_param_set = type { i8, i8, i8, i8, i16, i16 }
%struct.ieee_types_wmm_parameter = type { %struct.ieee_types_vendor_header, i8, i8, i8, i8, [4 x %struct.ieee_types_wmm_ac_parameters] }
%struct.ieee_types_vendor_header = type { i8, i8, %struct.anon.137 }
%struct.anon.137 = type { [3 x i8], i8 }
%struct.ieee_types_wmm_ac_parameters = type { i8, i8, i16 }
%struct.ieee_types_ds_param_set = type { i8, i8, i8 }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mwifiex_802_11d_domain_reg = type { [3 x i8], i8, [83 x %struct.ieee80211_country_ie_triplet] }
%struct.ieee80211_country_ie_triplet = type { %union.anon.140 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { i8, i8, i8 }
%struct.mwifiex_sleep_params = type { i16, i16, i16, i8, i8, i16 }
%struct.mwifiex_sleep_period = type { i16, i16 }
%struct.mwifiex_hs_config_param = type <{ i32, i8, i8 }>
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mwifiex_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_wait_queue = type { %struct.wait_queue_head, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.50, i32, %struct.spinlock }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mwifiex_private = type <{ ptr, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i32, i8, [3 x i8], ptr, %struct.net_device_stats, i32, i32, i32, i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, [18 x i16], [2 x i8], i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i8], ptr, %struct.cfg80211_ssid, [6 x i8], i8, %struct.mwifiex_current_bss_params, i16, i8, i8, i16, i16, i8, i8, i8, i8, %struct.mwifiex_802_11_security, [4 x %struct.mwifiex_wep_key], i16, [256 x i8], i16, i8, %struct.host_cmd_ds_802_11_key_material, %struct.host_cmd_ds_802_11_key_material_v2, [256 x i8], i8, i16, ptr, i16, i8, i8, i8, [3 x i8], %struct.mwifiex_wmm_desc, [4 x %struct.atomic_t], %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, [8 x %struct.mwifiex_tx_aggr], %struct.mwifiex_add_ba_param, [8 x i16], [8 x i8], %struct.list_head, %struct.spinlock, [500 x i8], i32, [256 x i8], i8, i8, [8 x %struct.mwifiex_vendor_spec_cfg_ie], [256 x i8], i8, i8, ptr, i32, %struct.spinlock, %struct.wireless_dev, %struct.mwifiex_chan_freq_power, i32, [128 x i8], ptr, i16, [2 x i8], %struct.mutex, ptr, [6 x i8], %struct.wps, i8, i32, i32, i8, i8, %struct.mwifiex_ds_misc_subsc_evt, [16 x %struct.mwifiex_ie], i16, i16, i16, i16, i8, i8, i32, [4 x i8], %struct.mwifiex_roc_cfg, i8, i8, i8, i8, i32, i8, i8, [2 x i8], %struct.mwifiex_uap_bss_param, %struct.cfg80211_chan_def, ptr, %struct.sk_buff_head, i8, [3 x i8], %struct.timer_list, i8, [3 x i8], %struct.idr, %struct.spinlock, ptr, %struct.cfg80211_chan_def, ptr, %struct.delayed_work, %struct.timer_list, ptr, %struct.delayed_work, %struct.cfg80211_beacon_data, %struct.mwifiex_11h_intf_state, [2 x i8], %struct.mwifiex_ds_mem_rw, %struct.sk_buff_head, [50 x %struct.mwifiex_user_scan_chan], i8, i8, [2 x i8] }>
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_current_bss_params = type { %struct.mwifiex_bssdescriptor, i8, i8, i8, i32, [14 x i8] }
%struct.mwifiex_802_11_security = type { i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.mwifiex_wep_key = type { i32, i32, i32, [16 x i8] }
%struct.host_cmd_ds_802_11_key_material = type { i16, %struct.mwifiex_ie_type_key_param_set }
%struct.mwifiex_ie_type_key_param_set = type { i16, i16, i16, i16, i16, [50 x i8] }
%struct.host_cmd_ds_802_11_key_material_v2 = type { i16, %struct.mwifiex_ie_type_key_param_set_v2 }
%struct.mwifiex_ie_type_key_param_set_v2 = type { i16, i16, [6 x i8], i8, i8, i16, %union.anon.138 }
%union.anon.138 = type { %struct.mwifiex_wapi_param }
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
%struct.mwifiex_scan_cmd_config = type <{ i8, [6 x i8], i32, [1 x i8] }>
%struct.mwifiex_user_scan_cfg = type <{ i8, i8, i8, [6 x i8], ptr, i8, [50 x %struct.mwifiex_user_scan_chan], i16, [6 x i8] }>
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ie_types_wildcard_ssid_params = type { %struct.mwifiex_ie_types_header, i8, [1 x i8] }
%struct.mwifiex_ie_types_scan_chan_gap = type { %struct.mwifiex_ie_types_header, i16 }
%struct.mwifiex_ie_types_random_mac = type { %struct.mwifiex_ie_types_header, [6 x i8] }
%struct.mwifiex_ie_types_bss_mode = type <{ %struct.mwifiex_ie_types_header, i8 }>
%struct.mwifiex_ie_types_num_probes = type { %struct.mwifiex_ie_types_header, i16 }
%struct.mwifiex_ie_types_htcap = type { %struct.mwifiex_ie_types_header, %struct.ieee80211_ht_cap }
%struct.mwifiex_ie_types_vendor_param_set = type { %struct.mwifiex_ie_types_header, [256 x i8] }
%struct.mwifiex_chan_scan_param_set = type <{ i8, i8, i8, i16, i16 }>
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.135, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
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
%struct.anon.135 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mwifiex_ie_types_chan_list_param_set = type <{ %struct.mwifiex_ie_types_header, [1 x %struct.mwifiex_chan_scan_param_set] }>
%struct.mwifiex_ie_types_rates_param_set = type <{ %struct.mwifiex_ie_types_header, [1 x i8] }>
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.148 }
%union.anon.148 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
%struct.host_cmd_ds_802_11_scan = type { i8, [6 x i8], [1 x i8] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.host_cmd_ds_802_11_scan_rsp = type { i16, i8, [1 x i8] }
%struct.cfg80211_wowlan = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr }
%struct.mwifiex_ie_types_tsf_timestamp = type <{ %struct.mwifiex_ie_types_header, [1 x i8] }>
%struct.mwifiex_ie_types_chan_band_list_param_set = type { %struct.mwifiex_ie_types_header, [1 x %struct.chan_band_param_set] }
%struct.chan_band_param_set = type { i8, i8 }
%struct.cfg80211_wowlan_nd_info = type { i32, [0 x ptr] }
%struct.cfg80211_wowlan_nd_match = type { %struct.cfg80211_ssid, i32, [0 x i32] }
%struct.mwifiex_ie_types_data = type <{ %struct.mwifiex_ie_types_header, [1 x i8] }>
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.mwifiex_fixed_bcn_param = type <{ i64, i16, i16 }>
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cmd_ctrl_node = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.mwifiex_bg_scan_cfg = type <{ i16, i8, i8, i8, i32, i32, i8, i8, i8, i16, i16, ptr, i8, [38 x %struct.mwifiex_user_scan_chan], i16 }>
%struct.host_cmd_ds_802_11_bg_scan_config = type <{ i16, i8, i8, i8, i8, i16, i32, i32, i32, i16, [0 x i8] }>
%struct.mwifiex_ie_types_repeat_count = type { %struct.mwifiex_ie_types_header, i16 }
%struct.mwifiex_ie_types_min_rssi_threshold = type { %struct.mwifiex_ie_types_header, i16 }
%struct.cfg80211_match_set = type { %struct.cfg80211_ssid, [6 x i8], i32, [6 x i32] }
%struct.mwifiex_ie_types_bgscan_start_later = type { %struct.mwifiex_ie_types_header, i16 }
%struct.mwifiex_fw_chan_stats = type { i8, i8, i8, i8, i16, i16, i16 }
%struct.mwifiex_chan_stats = type { i8, i8, i8, i8, i16, i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }
%struct.mwifiex_event_scan_result = type <{ i16, i8, i8, i8, [3 x i8], i16, i8 }>
%struct.mwifiex_ie_types_bss_scan_info = type <{ %struct.mwifiex_ie_types_header, i16, i16, i8, i8, i8, i8, i64 }>
%struct.ieee_types_vendor_specific = type { %struct.ieee_types_vendor_header, [250 x i8] }
%struct.ie_body = type { [4 x i8], [2 x i8], [4 x i8] }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee_types_header = type { i8, i8 }

@__const.mwifiex_update_bss_desc_with_ie.wpa_oui = private unnamed_addr constant [4 x i8] c"\00P\F2\01", align 1
@__const.mwifiex_update_bss_desc_with_ie.wmm_oui = private unnamed_addr constant [4 x i8] c"\00P\F2\02", align 1
@.str = private unnamed_addr constant [60 x i8] c"err: InterpretIE: in processing\09IE, bytes left < IE length\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"info: InterpretIE: ssid: %-32s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"cmd: Scan already in process...\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"cmd: Scan is blocked during association...\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Ignore scan. Card removed or firmware in bad state\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"wait internal scan\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Incompatible network settings\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"info: aborting scan\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"SCAN_RESP: too many AP returned (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"info: SCAN_RESP: bss_descript_size %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"info: SCAN_RESP: returned %d APs before parsing\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"info: EXT scan returns successfully\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"error processing scan response TLVs\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Scan pending in command pending list\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"EXT_SCAN: Invalid number of AP returned (%d)!!\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"EXT_SCAN: size %d, returned %d APs...\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"EXT_SCAN buffer:\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"EXT_SCAN: Error bytes left < TLV length\0A\00", align 1
@.str.19 = private unnamed_addr constant [60 x i8] c"EXT_SCAN: Error in processing TLV,\09bytes left < TLV length\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"info: InterpretIE: RSSI=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"%s: acquire semaphore fail\0A\00", align 1
@__func__.mwifiex_request_scan = private unnamed_addr constant [21 x i8] c"mwifiex_request_scan\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Invalid param length!\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"info: current beacon saved %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"DIRECT-\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"info: scan: ssid[%d]: %s, %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"info: scan: channel gap = %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"info: scan: num_probes = %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"info: Scan: Using supplied channel list\0A\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"info: Scan: Scanning current channel only\0A\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"info: Scan: Creating full region channel list\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"info: Scan: Null detect: %p, %p, %p\0A\00", align 1
@.str.32 = private unnamed_addr constant [57 x i8] c"info: Scan: Chan(%3d), Radio(%d),\09Mode(%d, %d), Dur(%d)\0A\00", align 1
@.str.33 = private unnamed_addr constant [57 x i8] c"total scan time %dms\09is over limit (%dms), scan skipped\0A\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"info: SCAN_CMD: Rates size = %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"info: return success directly in WPS period\0A\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"Don't connect to AP with WLAN_EID_CHANNEL_SWITCH\0A\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"info: return success for WAPI AP\0A\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"info: Disable 11n in WEP mode.\0A\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"info: Disable 11n if AES\09is not supported by AP\0A\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@__func__.mwifiex_is_network_compatible = private unnamed_addr constant [30 x i8] c"mwifiex_is_network_compatible\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"WPA\00", align 1
@__func__.mwifiex_is_bss_wpa = private unnamed_addr constant [19 x i8] c"mwifiex_is_bss_wpa\00", align 1
@mwifiex_wpa_oui = internal global [2 x [4 x i8]] [[4 x i8] c"\00P\F2\02", [4 x i8] c"\00P\F2\04"], align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"WAP2\00", align 1
@__func__.mwifiex_is_bss_wpa2 = private unnamed_addr constant [20 x i8] c"mwifiex_is_bss_wpa2\00", align 1
@mwifiex_rsn_oui = internal global [2 x [4 x i8]] [[4 x i8] c"\00\0F\AC\02", [4 x i8] c"\00\0F\AC\04"], align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@__func__.mwifiex_is_bss_dynamic_wep = private unnamed_addr constant [27 x i8] c"mwifiex_is_bss_dynamic_wep\00", align 1
@.str.44 = private unnamed_addr constant [84 x i8] c"info: %s: %s:\09wpa_ie=%#x wpa2_ie=%#x WEP=%s WPA=%s WPA2=%s\09EncMode=%#x privacy=%#x\0A\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.47 = private unnamed_addr constant [36 x i8] c"info: SCAN_RESP: tlv_buf_size = %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"SCAN_RESP: TLV buffer corrupt\0A\00", align 1
@.str.49 = private unnamed_addr constant [46 x i8] c"info: SCAN_RESP: TSF\09timestamp TLV, len = %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [50 x i8] c"info: SCAN_RESP: channel\09band list TLV, len = %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"SCAN_RESP: unhandled TLV = %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"InterpretIE: not enough bytes left\0A\00", align 1
@.str.53 = private unnamed_addr constant [38 x i8] c"info: InterpretIE: capabilities=0x%X\0A\00", align 1
@.str.54 = private unnamed_addr constant [46 x i8] c"info: InterpretIE: IELength for this AP = %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"%s: bytes left < IE length\0A\00", align 1
@__func__.mwifiex_parse_single_response_buf = private unnamed_addr constant [34 x i8] c"mwifiex_parse_single_response_buf\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"Dropping entry on csa closed channel\0A\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"radar or passive channel %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"missing BSS channel IE\0A\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"found hidden SSID\0A\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"info: notifying scan done\0A\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"info: scan already aborted\0A\00", align 1
@__const.mwifiex_check_next_scan_command.info = private unnamed_addr constant { i64, [6 x i8], i8, [1 x i8] } { i64 0, [6 x i8] zeroinitializer, i8 1, [1 x i8] zeroinitializer }, align 8
@.str.62 = private unnamed_addr constant [47 x i8] c"No BSS with hidden SSID found on DFS channels\0A\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"scan failed: %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [47 x i8] c"FW reported too many channel results (max %d)\0A\00", align 1
@.str.65 = private unnamed_addr constant [72 x i8] c"chan=%d, noise=%d, total_network=%d scan_duration=%d, busy_duration=%d\0A\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"complete internal scan\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_ssid_cmp(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cfg80211_ssid, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.cfg80211_ssid, ptr %1, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = zext i8 %8 to i32
  %14 = tail call i32 @memcmp(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %13)
  br label %15

15:                                               ; preds = %12, %6, %2
  %16 = phi i32 [ %14, %12 ], [ -1, %6 ], [ -1, %2 ]
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_update_bss_desc_with_ie(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 55
  %4 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 56
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %187

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 42
  %10 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 43
  %11 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 33
  %12 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 34
  %13 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 30
  %14 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 31
  %15 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 39
  %16 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 40
  %17 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 44
  %18 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 36
  %19 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 37
  %20 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 27
  %21 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 28
  %22 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 24
  %23 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 25
  %24 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 52
  %25 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 53
  %26 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 49
  %27 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 50
  %28 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 21
  %29 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 46
  %30 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 47
  %31 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 12
  %32 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 11
  %33 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 59
  %34 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 57
  %35 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 58
  %36 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 8
  %37 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 18
  %38 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 5
  %39 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 17
  %40 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 1
  %41 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 1, i32 1
  br label %42

42:                                               ; preds = %181, %7
  %43 = phi i32 [ %5, %7 ], [ %185, %181 ]
  %44 = phi i8 [ 0, %7 ], [ %183, %181 ]
  %45 = phi i8 [ 0, %7 ], [ %182, %181 ]
  %46 = phi ptr [ %8, %7 ], [ %184, %181 ]
  %47 = getelementptr i8, ptr %46, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = add nuw nsw i32 %49, 2
  %51 = icmp ult i32 %43, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str) #15
  br label %187

53:                                               ; preds = %42
  %54 = load i8, ptr %46, align 1
  switch i8 %54, label %181 [
    i8 0, label %55
    i8 1, label %59
    i8 2, label %63
    i8 3, label %66
    i8 4, label %72
    i8 6, label %76
    i8 42, label %80
    i8 32, label %85
    i8 37, label %90
    i8 33, label %91
    i8 35, label %91
    i8 40, label %91
    i8 50, label %92
    i8 -35, label %104
    i8 48, label %123
    i8 68, label %129
    i8 45, label %135
    i8 61, label %142
    i8 -65, label %149
    i8 -64, label %156
    i8 72, label %163
    i8 127, label %169
    i8 -57, label %175
  ]

55:                                               ; preds = %53
  %56 = icmp ugt i8 %48, 32
  br i1 %56, label %187, label %57

57:                                               ; preds = %55
  store i8 %48, ptr %41, align 2
  %58 = getelementptr i8, ptr %46, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %40, ptr align 1 %58, i32 %49, i1 false)
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.1, ptr noundef %40) #15
  br label %181

59:                                               ; preds = %53
  %60 = icmp ugt i8 %48, 14
  br i1 %60, label %187, label %61

61:                                               ; preds = %59
  %62 = getelementptr i8, ptr %46, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %31, ptr align 1 %62, i32 %49, i1 false)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %32, ptr align 1 %62, i32 %49, i1 false)
  br label %181

63:                                               ; preds = %53
  %64 = icmp ult i8 %48, 5
  br i1 %64, label %187, label %65

65:                                               ; preds = %63
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(7) %39, ptr noundef align 1 dereferenceable(7) %46, i32 7, i1 false)
  br label %181

66:                                               ; preds = %53
  %67 = icmp eq i8 %48, 0
  br i1 %67, label %187, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.ieee_types_ds_param_set, ptr %46, i32 0, i32 2
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  store i32 %71, ptr %38, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(3) %39, ptr noundef align 1 dereferenceable(3) %46, i32 3, i1 false)
  br label %181

72:                                               ; preds = %53
  %73 = icmp ult i8 %48, 6
  br i1 %73, label %187, label %74

74:                                               ; preds = %72
  %75 = load i64, ptr %46, align 1
  store i64 %75, ptr %37, align 1
  br label %181

76:                                               ; preds = %53
  %77 = icmp ult i8 %48, 2
  br i1 %77, label %187, label %78

78:                                               ; preds = %76
  %79 = load i32, ptr %46, align 1
  store i32 %79, ptr %37, align 1
  br label %181

80:                                               ; preds = %53
  %81 = icmp eq i8 %48, 0
  br i1 %81, label %187, label %82

82:                                               ; preds = %80
  %83 = getelementptr i8, ptr %46, i32 2
  %84 = load i8, ptr %83, align 1
  store i8 %84, ptr %36, align 2
  br label %181

85:                                               ; preds = %53
  %86 = icmp eq i8 %48, 0
  br i1 %86, label %187, label %87

87:                                               ; preds = %85
  %88 = getelementptr i8, ptr %46, i32 2
  %89 = load i8, ptr %88, align 1
  store i8 %89, ptr %35, align 1
  store i8 1, ptr %34, align 8
  br label %181

90:                                               ; preds = %53
  store i8 1, ptr %33, align 2
  br label %91

91:                                               ; preds = %90, %53, %53, %53
  store i8 1, ptr %34, align 8
  br label %181

92:                                               ; preds = %53
  %93 = icmp eq i8 %44, 0
  br i1 %93, label %181, label %94

94:                                               ; preds = %92
  %95 = zext i8 %45 to i32
  %96 = add nuw nsw i32 %49, %95
  %97 = icmp ugt i32 %96, 14
  %98 = sub i8 14, %45
  %99 = select i1 %97, i8 %98, i8 %48
  %100 = getelementptr i8, ptr %31, i32 %95
  %101 = getelementptr i8, ptr %46, i32 2
  %102 = zext i8 %99 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %100, ptr align 1 %101, i32 %102, i1 false)
  %103 = getelementptr i8, ptr %32, i32 %95
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %103, ptr align 1 %101, i32 %102, i1 false)
  br label %181

104:                                              ; preds = %53
  %105 = icmp ult i8 %48, 3
  br i1 %105, label %187, label %106

106:                                              ; preds = %104
  %107 = icmp eq i8 %48, 3
  br i1 %107, label %181, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.ieee_types_vendor_header, ptr %46, i32 0, i32 2
  %110 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %109, ptr noundef nonnull dereferenceable(4) @__const.mwifiex_update_bss_desc_with_ie.wpa_oui, i32 4)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  store ptr %46, ptr %29, align 8
  %113 = load ptr, ptr %3, align 8
  %114 = ptrtoint ptr %46 to i32
  %115 = ptrtoint ptr %113 to i32
  %116 = sub i32 %114, %115
  %117 = trunc i32 %116 to i16
  store i16 %117, ptr %30, align 4
  br label %181

118:                                              ; preds = %108
  %119 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %109, ptr noundef nonnull dereferenceable(4) @__const.mwifiex_update_bss_desc_with_ie.wmm_oui, i32 4)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %181

121:                                              ; preds = %118
  switch i8 %48, label %181 [
    i8 24, label %122
    i8 7, label %122
  ]

122:                                              ; preds = %121, %121
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %28, ptr noundef align 1 %46, i32 %50, i1 false)
  br label %181

123:                                              ; preds = %53
  store ptr %46, ptr %26, align 8
  %124 = load ptr, ptr %3, align 8
  %125 = ptrtoint ptr %46 to i32
  %126 = ptrtoint ptr %124 to i32
  %127 = sub i32 %125, %126
  %128 = trunc i32 %127 to i16
  store i16 %128, ptr %27, align 4
  br label %181

129:                                              ; preds = %53
  store ptr %46, ptr %24, align 8
  %130 = load ptr, ptr %3, align 8
  %131 = ptrtoint ptr %46 to i32
  %132 = ptrtoint ptr %130 to i32
  %133 = sub i32 %131, %132
  %134 = trunc i32 %133 to i16
  store i16 %134, ptr %25, align 4
  br label %181

135:                                              ; preds = %53
  %136 = getelementptr i8, ptr %46, i32 2
  store ptr %136, ptr %22, align 8
  %137 = load ptr, ptr %3, align 8
  %138 = ptrtoint ptr %136 to i32
  %139 = ptrtoint ptr %137 to i32
  %140 = sub i32 %138, %139
  %141 = trunc i32 %140 to i16
  store i16 %141, ptr %23, align 4
  br label %181

142:                                              ; preds = %53
  %143 = getelementptr i8, ptr %46, i32 2
  store ptr %143, ptr %20, align 8
  %144 = load ptr, ptr %3, align 8
  %145 = ptrtoint ptr %143 to i32
  %146 = ptrtoint ptr %144 to i32
  %147 = sub i32 %145, %146
  %148 = trunc i32 %147 to i16
  store i16 %148, ptr %21, align 4
  br label %181

149:                                              ; preds = %53
  store i8 0, ptr %17, align 2
  %150 = getelementptr i8, ptr %46, i32 2
  store ptr %150, ptr %18, align 8
  %151 = load ptr, ptr %3, align 8
  %152 = ptrtoint ptr %150 to i32
  %153 = ptrtoint ptr %151 to i32
  %154 = sub i32 %152, %153
  %155 = trunc i32 %154 to i16
  store i16 %155, ptr %19, align 4
  br label %181

156:                                              ; preds = %53
  %157 = getelementptr i8, ptr %46, i32 2
  store ptr %157, ptr %15, align 8
  %158 = load ptr, ptr %3, align 8
  %159 = ptrtoint ptr %157 to i32
  %160 = ptrtoint ptr %158 to i32
  %161 = sub i32 %159, %160
  %162 = trunc i32 %161 to i16
  store i16 %162, ptr %16, align 4
  br label %181

163:                                              ; preds = %53
  store ptr %46, ptr %13, align 8
  %164 = load ptr, ptr %3, align 8
  %165 = ptrtoint ptr %46 to i32
  %166 = ptrtoint ptr %164 to i32
  %167 = sub i32 %165, %166
  %168 = trunc i32 %167 to i16
  store i16 %168, ptr %14, align 4
  br label %181

169:                                              ; preds = %53
  store ptr %46, ptr %11, align 8
  %170 = load ptr, ptr %3, align 8
  %171 = ptrtoint ptr %46 to i32
  %172 = ptrtoint ptr %170 to i32
  %173 = sub i32 %171, %172
  %174 = trunc i32 %173 to i16
  store i16 %174, ptr %12, align 4
  br label %181

175:                                              ; preds = %53
  store ptr %46, ptr %9, align 8
  %176 = load ptr, ptr %3, align 8
  %177 = ptrtoint ptr %46 to i32
  %178 = ptrtoint ptr %176 to i32
  %179 = sub i32 %177, %178
  %180 = trunc i32 %179 to i16
  store i16 %180, ptr %10, align 4
  br label %181

181:                                              ; preds = %175, %169, %163, %156, %149, %142, %135, %129, %123, %122, %121, %118, %112, %106, %94, %92, %91, %87, %82, %78, %74, %68, %65, %61, %57, %53
  %182 = phi i8 [ %45, %53 ], [ %45, %175 ], [ %45, %169 ], [ %45, %163 ], [ %45, %156 ], [ %45, %149 ], [ %45, %142 ], [ %45, %135 ], [ %45, %129 ], [ %45, %123 ], [ %45, %106 ], [ %45, %118 ], [ %45, %122 ], [ %45, %121 ], [ %45, %112 ], [ %45, %94 ], [ %45, %92 ], [ %45, %91 ], [ %45, %87 ], [ %45, %82 ], [ %45, %78 ], [ %45, %74 ], [ %45, %68 ], [ %45, %65 ], [ %48, %61 ], [ %45, %57 ]
  %183 = phi i8 [ %44, %53 ], [ %44, %175 ], [ %44, %169 ], [ %44, %163 ], [ %44, %156 ], [ %44, %149 ], [ %44, %142 ], [ %44, %135 ], [ %44, %129 ], [ %44, %123 ], [ %44, %106 ], [ %44, %118 ], [ %44, %122 ], [ %44, %121 ], [ %44, %112 ], [ 1, %94 ], [ 0, %92 ], [ %44, %91 ], [ %44, %87 ], [ %44, %82 ], [ %44, %78 ], [ %44, %74 ], [ %44, %68 ], [ %44, %65 ], [ 1, %61 ], [ %44, %57 ]
  %184 = getelementptr i8, ptr %46, i32 %50
  %185 = sub i32 %43, %50
  %186 = icmp ugt i32 %185, 1
  br i1 %186, label %42, label %187

187:                                              ; preds = %181, %104, %85, %80, %76, %72, %66, %63, %59, %55, %52, %2
  %188 = phi i32 [ -22, %52 ], [ 0, %2 ], [ -22, %55 ], [ -22, %59 ], [ -22, %63 ], [ -22, %66 ], [ -22, %72 ], [ -22, %76 ], [ -22, %80 ], [ -22, %85 ], [ -22, %104 ], [ 0, %181 ]
  ret i32 %188
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_scan_networks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  store i8 0, ptr %6, align 1, !annotation !8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 73
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 536870912, ptr noundef nonnull @.str.2) #15
  br label %70

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 114
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 536870912, ptr noundef nonnull @.str.3) #15
  br label %70

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 12
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load volatile i32, ptr %18, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %17
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 4, ptr noundef nonnull @.str.4) #15
  br label %70

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %28) #15
  store i32 1, ptr %8, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %28) #15
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 549) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %67, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %34 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 350) #16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %64, label %36

36:                                               ; preds = %32
  call fastcc void @mwifiex_config_scan(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %30, ptr noundef nonnull %3, ptr noundef nonnull %34, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %37 = load i8, ptr %6, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, ptr %4, align 1
  %40 = load ptr, ptr %3, align 4
  %41 = tail call fastcc i32 @mwifiex_scan_channel_list(ptr noundef %0, i32 noundef %38, i8 noundef zeroext %39, ptr noundef nonnull %30, ptr noundef %40, ptr noundef nonnull %34)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %44) #15
  %45 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 68
  %46 = load volatile ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %62, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %46, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %50, ptr %52, align 4
  store volatile ptr %51, ptr %50, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %46, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %49, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %44) #15
  tail call void @mwifiex_insert_cmd_to_pending_q(ptr noundef %7, ptr noundef %46) #15
  %53 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 24
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 25
  %56 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %54, ptr noundef %55) #15
  %57 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 111
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %48
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 1073741824, ptr noundef nonnull @.str.5) #15
  %61 = tail call i32 @mwifiex_wait_queue_complete(ptr noundef %7, ptr noundef %46) #15
  tail call void @kfree(ptr noundef nonnull %30) #15
  tail call void @kfree(ptr noundef nonnull %34) #15
  br label %70

62:                                               ; preds = %43
  tail call void @_raw_spin_unlock_bh(ptr noundef %44) #15
  tail call void @kfree(ptr noundef nonnull %30) #15
  tail call void @kfree(ptr noundef nonnull %34) #15
  br label %70

63:                                               ; preds = %36
  tail call void @kfree(ptr noundef nonnull %30) #15
  br label %64

64:                                               ; preds = %63, %32
  %65 = phi ptr [ %34, %63 ], [ %30, %32 ]
  %66 = phi i32 [ %41, %63 ], [ -12, %32 ]
  tail call void @kfree(ptr noundef nonnull %65) #15
  br label %67

67:                                               ; preds = %64, %27
  %68 = phi i32 [ -12, %27 ], [ %66, %64 ]
  tail call void @_raw_spin_lock_bh(ptr noundef %28) #15
  store i32 0, ptr %8, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %28) #15
  br label %70

69:                                               ; preds = %48
  tail call void @kfree(ptr noundef nonnull %30) #15
  tail call void @kfree(ptr noundef nonnull %34) #15
  br label %70

70:                                               ; preds = %69, %67, %62, %60, %26, %16, %11
  %71 = phi i32 [ -16, %11 ], [ -16, %16 ], [ -14, %26 ], [ %68, %67 ], [ 0, %69 ], [ 0, %60 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_config_scan(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef %6, ptr nocapture noundef writeonly %7) unnamed_addr #2 {
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %2, i32 0, i32 2
  store i32 0, ptr %10, align 1
  %11 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %2, i32 0, i32 3
  store i8 0, ptr %6, align 1
  store i8 0, ptr %7, align 1
  %12 = icmp eq ptr %1, null
  br i1 %12, label %135, label %13

13:                                               ; preds = %8
  %14 = load i8, ptr %1, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i8 %14, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 77
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i32 [ %19, %17 ], [ %15, %13 ]
  %22 = trunc i32 %21 to i8
  store i8 %22, ptr %2, align 1
  %23 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %1, i32 0, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i8 %24, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 76
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  br label %31

31:                                               ; preds = %27, %20
  %32 = phi i32 [ %30, %27 ], [ %25, %20 ]
  %33 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %2, i32 0, i32 1
  %34 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %1, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %33, ptr noundef align 1 dereferenceable(6) %34, i32 6, i1 false)
  %35 = load i32, ptr %33, align 1
  %36 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %2, i32 0, i32 1, i32 4
  %37 = load i16, ptr %36, align 1
  %38 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 137
  %39 = load i8, ptr %38, align 1, !range !9
  %40 = icmp eq i8 %39, 0
  %41 = zext i16 %37 to i32
  %42 = or i32 %35, %41
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %40, i1 true, i1 %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %31
  store i16 291, ptr %11, align 1
  %46 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %2, i32 1, i32 1
  store i16 6, ptr %46, align 1
  %47 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %2, i32 1, i32 1, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %47, ptr noundef align 1 dereferenceable(6) %34, i32 6, i1 false)
  %48 = getelementptr i8, ptr %11, i32 10
  br label %49

49:                                               ; preds = %45, %31
  %50 = phi ptr [ %11, %31 ], [ %48, %45 ]
  %51 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %1, i32 0, i32 5
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %100, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %1, i32 0, i32 4
  br label %56

56:                                               ; preds = %89, %54
  %57 = phi i8 [ 1, %54 ], [ %90, %89 ]
  %58 = phi i32 [ 0, %54 ], [ %91, %89 ]
  %59 = phi ptr [ %50, %54 ], [ %83, %89 ]
  %60 = load ptr, ptr %55, align 1
  %61 = getelementptr %struct.cfg80211_ssid, ptr %60, i32 %58, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  store i16 274, ptr %59, align 1
  %64 = zext i8 %62 to i16
  %65 = add nuw nsw i16 %64, 1
  %66 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %59, i32 0, i32 1
  store i16 %65, ptr %66, align 1
  %67 = icmp eq i8 %62, 0
  %68 = select i1 %67, i8 32, i8 0
  %69 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, ptr %59, i32 0, i32 1
  store i8 %68, ptr %69, align 1
  %70 = load ptr, ptr %55, align 1
  %71 = getelementptr %struct.cfg80211_ssid, ptr %70, i32 %58
  %72 = tail call i32 @bcmp(ptr noundef dereferenceable(7) %71, ptr noundef nonnull dereferenceable(7) @.str.24, i32 7)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %56
  store i8 -2, ptr %69, align 1
  %75 = load ptr, ptr %55, align 1
  br label %76

76:                                               ; preds = %74, %56
  %77 = phi i8 [ -2, %74 ], [ %68, %56 ]
  %78 = phi ptr [ %75, %74 ], [ %70, %56 ]
  %79 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, ptr %59, i32 0, i32 2
  %80 = getelementptr %struct.cfg80211_ssid, ptr %78, i32 %58
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %79, ptr align 1 %80, i32 %63, i1 false)
  %81 = zext i8 %62 to i32
  %82 = add nuw nsw i32 %81, 5
  %83 = getelementptr i8, ptr %59, i32 %82
  %84 = zext i8 %77 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 1073741824, ptr noundef nonnull @.str.25, i32 noundef %58, ptr noundef %79, i32 noundef %84) #15
  br i1 %67, label %85, label %89

85:                                               ; preds = %76
  %86 = load i8, ptr %69, align 1
  %87 = icmp eq i8 %86, 0
  %88 = select i1 %87, i8 %57, i8 0
  br label %89

89:                                               ; preds = %85, %76
  %90 = phi i8 [ %57, %76 ], [ %88, %85 ]
  %91 = add nuw nsw i32 %58, 1
  %92 = load i8, ptr %51, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp ult i32 %91, %93
  br i1 %94, label %56, label %95

95:                                               ; preds = %89
  %96 = load i32, ptr %33, align 1
  %97 = load i16, ptr %36, align 1
  %98 = zext i16 %97 to i32
  %99 = or i32 %96, %98
  br label %100

100:                                              ; preds = %95, %49
  %101 = phi i32 [ %99, %95 ], [ %42, %49 ]
  %102 = phi ptr [ %83, %95 ], [ %50, %49 ]
  %103 = phi i8 [ %90, %95 ], [ 1, %49 ]
  %104 = icmp eq i8 %103, 0
  %105 = select i1 %53, i1 true, i1 %104
  %106 = icmp eq i32 %101, 0
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %109, label %108

108:                                              ; preds = %100
  store i8 1, ptr %6, align 1
  br label %109

109:                                              ; preds = %108, %100
  %110 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %1, i32 0, i32 7
  %111 = load i16, ptr %110, align 1
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = zext i16 %111 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 1073741824, ptr noundef nonnull @.str.26, i32 noundef %114) #15
  store i8 14, ptr %5, align 1
  store i16 453, ptr %102, align 1
  %115 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %102, i32 0, i32 1
  store i16 2, ptr %115, align 1
  %116 = load i16, ptr %110, align 1
  %117 = getelementptr inbounds %struct.mwifiex_ie_types_scan_chan_gap, ptr %102, i32 0, i32 1
  store i16 %116, ptr %117, align 1
  %118 = getelementptr i8, ptr %102, i32 6
  br label %119

119:                                              ; preds = %113, %109
  %120 = phi ptr [ %102, %109 ], [ %118, %113 ]
  %121 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %1, i32 0, i32 8
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %1, i32 0, i32 8, i32 4
  %124 = load i16, ptr %123, align 2
  %125 = zext i16 %124 to i32
  %126 = or i32 %122, %125
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %142, label %128

128:                                              ; preds = %119
  store i16 492, ptr %120, align 1
  %129 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %120, i32 0, i32 1
  store i16 6, ptr %129, align 1
  %130 = getelementptr inbounds %struct.mwifiex_ie_types_random_mac, ptr %120, i32 0, i32 1
  %131 = load i32, ptr %121, align 4
  store i32 %131, ptr %130, align 4
  %132 = load i16, ptr %123, align 2
  %133 = getelementptr %struct.mwifiex_ie_types_random_mac, ptr %120, i32 0, i32 1, i32 4
  store i16 %132, ptr %133, align 2
  %134 = getelementptr i8, ptr %120, i32 10
  br label %142

135:                                              ; preds = %8
  %136 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 77
  %137 = load i32, ptr %136, align 4
  %138 = trunc i32 %137 to i8
  store i8 %138, ptr %2, align 1
  %139 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 76
  %140 = load i16, ptr %139, align 4
  %141 = zext i16 %140 to i32
  br label %142

142:                                              ; preds = %135, %128, %119
  %143 = phi ptr [ %11, %135 ], [ %120, %119 ], [ %134, %128 ]
  %144 = phi i32 [ %141, %135 ], [ %32, %119 ], [ %32, %128 ]
  %145 = load i8, ptr %6, align 1
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %149 = load i8, ptr %148, align 8
  %150 = icmp eq i8 %149, 0
  %151 = select i1 %150, i8 4, i8 2
  br label %152

152:                                              ; preds = %147, %142
  %153 = phi i8 [ 14, %142 ], [ %151, %147 ]
  store i8 %153, ptr %5, align 1
  %154 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 137
  %155 = load i8, ptr %154, align 1, !range !9
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  store i16 462, ptr %143, align 1
  %158 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %143, i32 0, i32 1
  store i16 1, ptr %158, align 1
  %159 = load i8, ptr %2, align 1
  %160 = getelementptr inbounds %struct.mwifiex_ie_types_bss_mode, ptr %143, i32 0, i32 1
  store i8 %159, ptr %160, align 1
  %161 = getelementptr i8, ptr %143, i32 5
  br label %162

162:                                              ; preds = %157, %152
  %163 = phi ptr [ %143, %152 ], [ %161, %157 ]
  %164 = icmp eq i32 %144, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %162
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 1073741824, ptr noundef nonnull @.str.27, i32 noundef %144) #15
  store i16 258, ptr %163, align 1
  %166 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %163, i32 0, i32 1
  store i16 2, ptr %166, align 1
  %167 = trunc i32 %144 to i16
  %168 = getelementptr inbounds %struct.mwifiex_ie_types_num_probes, ptr %163, i32 0, i32 1
  store i16 %167, ptr %168, align 1
  %169 = getelementptr i8, ptr %163, i32 6
  br label %170

170:                                              ; preds = %165, %162
  %171 = phi ptr [ %163, %162 ], [ %169, %165 ]
  %172 = load ptr, ptr %0, align 8
  %173 = getelementptr inbounds %struct.mwifiex_adapter, ptr %172, i32 0, i32 47
  %174 = load i32, ptr %173, align 4
  %175 = and i32 %174, 2048
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %192, label %177

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.mwifiex_adapter, ptr %172, i32 0, i32 84
  %179 = load i8, ptr %178, align 2
  %180 = and i8 %179, 24
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %192, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds i8, ptr %171, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(30) %183, i8 0, i32 26, i1 false)
  store i16 45, ptr %171, align 1
  %184 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %171, i32 0, i32 1
  store i16 26, ptr %184, align 1
  %185 = load ptr, ptr %0, align 8
  %186 = getelementptr inbounds %struct.mwifiex_adapter, ptr %185, i32 0, i32 84
  %187 = load i8, ptr %186, align 2
  %188 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %187) #15
  %189 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, ptr %171, i32 0, i32 1
  %190 = tail call i32 @mwifiex_fill_cap_info(ptr noundef %0, i8 noundef zeroext %188, ptr noundef %189) #15
  %191 = getelementptr i8, ptr %171, i32 30
  br label %192

192:                                              ; preds = %182, %177, %170
  %193 = phi ptr [ %171, %170 ], [ %171, %177 ], [ %191, %182 ]
  %194 = icmp eq ptr %193, null
  br i1 %194, label %349, label %195

195:                                              ; preds = %192
  %196 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 0
  %197 = load i16, ptr %196, align 2
  %198 = and i16 %197, 1
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %216, label %200

200:                                              ; preds = %195
  store i16 266, ptr %193, align 1
  %201 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 0, i32 2, i32 1
  %202 = load i8, ptr %201, align 1
  %203 = zext i8 %202 to i16
  %204 = add nuw nsw i16 %203, 2
  %205 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %193, i32 0, i32 1
  store i16 %204, ptr %205, align 1
  %206 = icmp eq i8 %202, -1
  br i1 %206, label %207, label %210

207:                                              ; preds = %336, %317, %298, %279, %260, %241, %222, %200
  %208 = phi ptr [ %193, %200 ], [ %217, %222 ], [ %236, %241 ], [ %255, %260 ], [ %274, %279 ], [ %293, %298 ], [ %312, %317 ], [ %331, %336 ]
  %209 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %209, i32 noundef 4, ptr noundef nonnull @.str.22) #15
  br label %349

210:                                              ; preds = %200
  %211 = zext i16 %204 to i32
  %212 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 0, i32 2
  %213 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %193, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %213, ptr noundef align 2 %212, i32 %211, i1 false) #15
  %214 = add nuw nsw i32 %211, 4
  %215 = getelementptr i8, ptr %193, i32 %214
  br label %216

216:                                              ; preds = %210, %195
  %217 = phi ptr [ %193, %195 ], [ %215, %210 ]
  %218 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 1
  %219 = load i16, ptr %218, align 2
  %220 = and i16 %219, 1
  %221 = icmp eq i16 %220, 0
  br i1 %221, label %235, label %222

222:                                              ; preds = %216
  store i16 266, ptr %217, align 1
  %223 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 1, i32 2, i32 1
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i16
  %226 = add nuw nsw i16 %225, 2
  %227 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %217, i32 0, i32 1
  store i16 %226, ptr %227, align 1
  %228 = icmp eq i8 %224, -1
  br i1 %228, label %207, label %229

229:                                              ; preds = %222
  %230 = zext i16 %226 to i32
  %231 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 1, i32 2
  %232 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %217, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %232, ptr noundef align 2 %231, i32 %230, i1 false) #15
  %233 = add nuw nsw i32 %230, 4
  %234 = getelementptr i8, ptr %217, i32 %233
  br label %235

235:                                              ; preds = %229, %216
  %236 = phi ptr [ %217, %216 ], [ %234, %229 ]
  %237 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 2
  %238 = load i16, ptr %237, align 2
  %239 = and i16 %238, 1
  %240 = icmp eq i16 %239, 0
  br i1 %240, label %254, label %241

241:                                              ; preds = %235
  store i16 266, ptr %236, align 1
  %242 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 2, i32 2, i32 1
  %243 = load i8, ptr %242, align 1
  %244 = zext i8 %243 to i16
  %245 = add nuw nsw i16 %244, 2
  %246 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %236, i32 0, i32 1
  store i16 %245, ptr %246, align 1
  %247 = icmp eq i8 %243, -1
  br i1 %247, label %207, label %248

248:                                              ; preds = %241
  %249 = zext i16 %245 to i32
  %250 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 2, i32 2
  %251 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %236, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %251, ptr noundef align 2 %250, i32 %249, i1 false) #15
  %252 = add nuw nsw i32 %249, 4
  %253 = getelementptr i8, ptr %236, i32 %252
  br label %254

254:                                              ; preds = %248, %235
  %255 = phi ptr [ %236, %235 ], [ %253, %248 ]
  %256 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 3
  %257 = load i16, ptr %256, align 2
  %258 = and i16 %257, 1
  %259 = icmp eq i16 %258, 0
  br i1 %259, label %273, label %260

260:                                              ; preds = %254
  store i16 266, ptr %255, align 1
  %261 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 3, i32 2, i32 1
  %262 = load i8, ptr %261, align 1
  %263 = zext i8 %262 to i16
  %264 = add nuw nsw i16 %263, 2
  %265 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %255, i32 0, i32 1
  store i16 %264, ptr %265, align 1
  %266 = icmp eq i8 %262, -1
  br i1 %266, label %207, label %267

267:                                              ; preds = %260
  %268 = zext i16 %264 to i32
  %269 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 3, i32 2
  %270 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %255, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %270, ptr noundef align 2 %269, i32 %268, i1 false) #15
  %271 = add nuw nsw i32 %268, 4
  %272 = getelementptr i8, ptr %255, i32 %271
  br label %273

273:                                              ; preds = %267, %254
  %274 = phi ptr [ %255, %254 ], [ %272, %267 ]
  %275 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 4
  %276 = load i16, ptr %275, align 2
  %277 = and i16 %276, 1
  %278 = icmp eq i16 %277, 0
  br i1 %278, label %292, label %279

279:                                              ; preds = %273
  store i16 266, ptr %274, align 1
  %280 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 4, i32 2, i32 1
  %281 = load i8, ptr %280, align 1
  %282 = zext i8 %281 to i16
  %283 = add nuw nsw i16 %282, 2
  %284 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %274, i32 0, i32 1
  store i16 %283, ptr %284, align 1
  %285 = icmp eq i8 %281, -1
  br i1 %285, label %207, label %286

286:                                              ; preds = %279
  %287 = zext i16 %283 to i32
  %288 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 4, i32 2
  %289 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %274, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %289, ptr noundef align 2 %288, i32 %287, i1 false) #15
  %290 = add nuw nsw i32 %287, 4
  %291 = getelementptr i8, ptr %274, i32 %290
  br label %292

292:                                              ; preds = %286, %273
  %293 = phi ptr [ %274, %273 ], [ %291, %286 ]
  %294 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 5
  %295 = load i16, ptr %294, align 2
  %296 = and i16 %295, 1
  %297 = icmp eq i16 %296, 0
  br i1 %297, label %311, label %298

298:                                              ; preds = %292
  store i16 266, ptr %293, align 1
  %299 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 5, i32 2, i32 1
  %300 = load i8, ptr %299, align 1
  %301 = zext i8 %300 to i16
  %302 = add nuw nsw i16 %301, 2
  %303 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %293, i32 0, i32 1
  store i16 %302, ptr %303, align 1
  %304 = icmp eq i8 %300, -1
  br i1 %304, label %207, label %305

305:                                              ; preds = %298
  %306 = zext i16 %302 to i32
  %307 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 5, i32 2
  %308 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %293, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %308, ptr noundef align 2 %307, i32 %306, i1 false) #15
  %309 = add nuw nsw i32 %306, 4
  %310 = getelementptr i8, ptr %293, i32 %309
  br label %311

311:                                              ; preds = %305, %292
  %312 = phi ptr [ %293, %292 ], [ %310, %305 ]
  %313 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 6
  %314 = load i16, ptr %313, align 2
  %315 = and i16 %314, 1
  %316 = icmp eq i16 %315, 0
  br i1 %316, label %330, label %317

317:                                              ; preds = %311
  store i16 266, ptr %312, align 1
  %318 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 6, i32 2, i32 1
  %319 = load i8, ptr %318, align 1
  %320 = zext i8 %319 to i16
  %321 = add nuw nsw i16 %320, 2
  %322 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %312, i32 0, i32 1
  store i16 %321, ptr %322, align 1
  %323 = icmp eq i8 %319, -1
  br i1 %323, label %207, label %324

324:                                              ; preds = %317
  %325 = zext i16 %321 to i32
  %326 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 6, i32 2
  %327 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %312, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %327, ptr noundef align 2 %326, i32 %325, i1 false) #15
  %328 = add nuw nsw i32 %325, 4
  %329 = getelementptr i8, ptr %312, i32 %328
  br label %330

330:                                              ; preds = %324, %311
  %331 = phi ptr [ %312, %311 ], [ %329, %324 ]
  %332 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 7
  %333 = load i16, ptr %332, align 2
  %334 = and i16 %333, 1
  %335 = icmp eq i16 %334, 0
  br i1 %335, label %349, label %336

336:                                              ; preds = %330
  store i16 266, ptr %331, align 1
  %337 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 7, i32 2, i32 1
  %338 = load i8, ptr %337, align 1
  %339 = zext i8 %338 to i16
  %340 = add nuw nsw i16 %339, 2
  %341 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %331, i32 0, i32 1
  store i16 %340, ptr %341, align 1
  %342 = icmp eq i8 %338, -1
  br i1 %342, label %207, label %343

343:                                              ; preds = %336
  %344 = zext i16 %340 to i32
  %345 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 7, i32 2
  %346 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %331, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %346, ptr noundef align 2 %345, i32 %344, i1 false) #15
  %347 = add nuw nsw i32 %344, 4
  %348 = getelementptr i8, ptr %331, i32 %347
  br label %349

349:                                              ; preds = %343, %330, %207, %192
  %350 = phi ptr [ null, %192 ], [ %208, %207 ], [ %331, %330 ], [ %348, %343 ]
  store ptr %350, ptr %3, align 4
  br i1 %12, label %414, label %351

351:                                              ; preds = %349
  %352 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %1, i32 0, i32 6
  %353 = load i8, ptr %352, align 1
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %414, label %355

355:                                              ; preds = %351
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 1073741824, ptr noundef nonnull @.str.28) #15
  %356 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 78
  %357 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 79
  %358 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 80
  br label %359

359:                                              ; preds = %399, %355
  %360 = phi i32 [ 0, %355 ], [ %403, %399 ]
  %361 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %1, i32 0, i32 6, i32 %360
  %362 = load i8, ptr %361, align 1
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %405, label %364

364:                                              ; preds = %359
  %365 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %4, i32 %360
  %366 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %4, i32 %360, i32 1
  store i8 %362, ptr %366, align 1
  %367 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %1, i32 0, i32 6, i32 %360, i32 1
  %368 = load i8, ptr %367, align 1
  store i8 %368, ptr %365, align 1
  %369 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %1, i32 0, i32 6, i32 %360, i32 2
  %370 = load i8, ptr %369, align 1
  %371 = icmp eq i8 %370, 2
  %372 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %4, i32 %360, i32 2
  %373 = load i8, ptr %372, align 1
  br i1 %371, label %374, label %380

374:                                              ; preds = %364
  %375 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %4, i32 %360, i32 2
  %376 = or i8 %373, 19
  store i8 %376, ptr %375, align 1
  %377 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %1, i32 0, i32 6, i32 %360, i32 4
  %378 = load i32, ptr %377, align 1
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %390, label %387

380:                                              ; preds = %364
  %381 = and i8 %373, -4
  %382 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %4, i32 %360, i32 2
  %383 = or i8 %381, 2
  store i8 %383, ptr %382, align 1
  %384 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %1, i32 0, i32 6, i32 %360, i32 4
  %385 = load i32, ptr %384, align 1
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %392, label %387

387:                                              ; preds = %380, %374
  %388 = phi i32 [ %385, %380 ], [ %378, %374 ]
  %389 = trunc i32 %388 to i16
  br label %399

390:                                              ; preds = %374
  %391 = load i16, ptr %358, align 4
  br label %399

392:                                              ; preds = %380
  %393 = load i8, ptr %6, align 1
  %394 = icmp eq i8 %393, 0
  br i1 %394, label %397, label %395

395:                                              ; preds = %392
  %396 = load i16, ptr %356, align 4
  br label %399

397:                                              ; preds = %392
  %398 = load i16, ptr %357, align 2
  br label %399

399:                                              ; preds = %397, %395, %390, %387
  %400 = phi i16 [ %389, %387 ], [ %391, %390 ], [ %396, %395 ], [ %398, %397 ]
  %401 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %4, i32 %360, i32 3
  store i16 %400, ptr %401, align 1
  %402 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %4, i32 %360, i32 4
  store i16 %400, ptr %402, align 1
  %403 = add nuw nsw i32 %360, 1
  %404 = icmp eq i32 %403, 50
  br i1 %404, label %494, label %359

405:                                              ; preds = %359
  %406 = icmp eq i32 %360, 1
  br i1 %406, label %407, label %494

407:                                              ; preds = %405
  %408 = load i8, ptr %352, align 1
  %409 = zext i8 %408 to i32
  %410 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 5
  %411 = load i32, ptr %410, align 8
  %412 = icmp eq i32 %411, %409
  br i1 %412, label %413, label %494

413:                                              ; preds = %407
  store i8 1, ptr %7, align 1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 1073741824, ptr noundef nonnull @.str.29) #15
  br label %494

414:                                              ; preds = %351, %349
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 1073741824, ptr noundef nonnull @.str.30) #15
  %415 = load i8, ptr %6, align 1
  %416 = load ptr, ptr %0, align 8
  %417 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103
  %418 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %1, i32 0, i32 6, i32 0, i32 4
  %419 = getelementptr inbounds %struct.mwifiex_adapter, ptr %416, i32 0, i32 80
  %420 = getelementptr inbounds %struct.mwifiex_adapter, ptr %416, i32 0, i32 79
  %421 = icmp eq i8 %415, 0
  %422 = getelementptr inbounds %struct.mwifiex_adapter, ptr %416, i32 0, i32 78
  br label %423

423:                                              ; preds = %490, %414
  %424 = phi i32 [ 0, %414 ], [ %491, %490 ]
  %425 = phi i32 [ 0, %414 ], [ %492, %490 ]
  %426 = load ptr, ptr %417, align 8
  %427 = getelementptr %struct.wiphy, ptr %426, i32 0, i32 53, i32 %425
  %428 = load ptr, ptr %427, align 4
  %429 = icmp eq ptr %428, null
  br i1 %429, label %490, label %430

430:                                              ; preds = %423
  %431 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %428, i32 0, i32 3
  %432 = load i32, ptr %431, align 4
  %433 = icmp sgt i32 %432, 0
  br i1 %433, label %434, label %490

434:                                              ; preds = %430
  %435 = trunc i32 %425 to i8
  br label %436

436:                                              ; preds = %485, %434
  %437 = phi i32 [ %432, %434 ], [ %486, %485 ]
  %438 = phi i32 [ 0, %434 ], [ %488, %485 ]
  %439 = phi i32 [ %424, %434 ], [ %487, %485 ]
  %440 = load ptr, ptr %428, align 4
  %441 = getelementptr %struct.ieee80211_channel, ptr %440, i32 %438, i32 4
  %442 = load i32, ptr %441, align 4
  %443 = and i32 %442, 1
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %485

445:                                              ; preds = %436
  %446 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %4, i32 %439
  store i8 %435, ptr %446, align 1
  br i1 %12, label %452, label %447

447:                                              ; preds = %445
  %448 = load i32, ptr %418, align 1
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %452, label %450

450:                                              ; preds = %447
  %451 = trunc i32 %448 to i16
  br label %460

452:                                              ; preds = %447, %445
  %453 = load i32, ptr %441, align 4
  %454 = and i32 %453, 10
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %458, label %456

456:                                              ; preds = %452
  %457 = load i16, ptr %419, align 4
  br label %460

458:                                              ; preds = %452
  %459 = load i16, ptr %420, align 2
  br label %460

460:                                              ; preds = %458, %456, %450
  %461 = phi i16 [ %457, %456 ], [ %459, %458 ], [ %451, %450 ]
  %462 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %4, i32 %439, i32 4
  store i16 %461, ptr %462, align 1
  %463 = load i32, ptr %441, align 4
  %464 = and i32 %463, 2
  %465 = icmp eq i32 %464, 0
  %466 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %4, i32 %439, i32 2
  %467 = load i8, ptr %466, align 1
  %468 = and i8 %467, -2
  %469 = or i8 %467, 17
  %470 = select i1 %465, i8 %468, i8 %469
  store i8 %470, ptr %466, align 1
  %471 = getelementptr %struct.ieee80211_channel, ptr %440, i32 %438, i32 3
  %472 = load i16, ptr %471, align 2
  %473 = trunc i16 %472 to i8
  %474 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %4, i32 %439, i32 1
  store i8 %473, ptr %474, align 1
  %475 = or i8 %470, 2
  store i8 %475, ptr %466, align 1
  br i1 %421, label %482, label %476

476:                                              ; preds = %460
  %477 = load i32, ptr %441, align 4
  %478 = and i32 %477, 10
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %482

480:                                              ; preds = %476
  %481 = load i16, ptr %422, align 4
  store i16 %481, ptr %462, align 1
  br label %482

482:                                              ; preds = %480, %476, %460
  %483 = add i32 %439, 1
  %484 = load i32, ptr %431, align 4
  br label %485

485:                                              ; preds = %482, %436
  %486 = phi i32 [ %437, %436 ], [ %484, %482 ]
  %487 = phi i32 [ %439, %436 ], [ %483, %482 ]
  %488 = add nuw nsw i32 %438, 1
  %489 = icmp slt i32 %488, %486
  br i1 %489, label %436, label %490

490:                                              ; preds = %485, %430, %423
  %491 = phi i32 [ %424, %423 ], [ %424, %430 ], [ %487, %485 ]
  %492 = add nuw nsw i32 %425, 1
  %493 = icmp eq i32 %492, 6
  br i1 %493, label %494, label %423

494:                                              ; preds = %490, %413, %407, %405, %399
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_scan_channel_list(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 {
  %7 = alloca [14 x i8], align 1
  %8 = load ptr, ptr %0, align 8
  %9 = icmp ne ptr %3, null
  %10 = icmp ne ptr %4, null
  %11 = and i1 %9, %10
  %12 = icmp ne ptr %5, null
  %13 = and i1 %11, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %8, i32 noundef 4, ptr noundef nonnull @.str.31, ptr noundef %3, ptr noundef %4, ptr noundef %5) #15
  br label %144

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 132
  %17 = load i8, ptr %16, align 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 134
  %21 = load i32, ptr %20, align 4
  %22 = load volatile i32, ptr @jiffies, align 64
  %23 = sub i32 %21, %22
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i8 0, ptr %16, align 2
  store i32 0, ptr %20, align 4
  br label %26

26:                                               ; preds = %25, %19, %15
  store i16 257, ptr %4, align 1
  %27 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %4, i32 0, i32 1
  %28 = icmp eq i32 %1, 0
  %29 = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, ptr %4, i32 0, i32 1
  %30 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %4 to i32
  %32 = ptrtoint ptr %30 to i32
  %33 = sub i32 %31, %32
  %34 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %3, i32 0, i32 2
  %35 = add i32 %33, 4
  %36 = icmp eq i8 %2, 0
  %37 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 111
  br label %38

38:                                               ; preds = %119, %26
  %39 = phi ptr [ %5, %26 ], [ %110, %119 ]
  %40 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, ptr %39, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %141, label %43

43:                                               ; preds = %38
  store i16 0, ptr %27, align 1
  br i1 %28, label %109, label %44

44:                                               ; preds = %97, %43
  %45 = phi i1 [ %100, %97 ], [ true, %43 ]
  %46 = phi i8 [ %66, %97 ], [ 0, %43 ]
  %47 = phi i32 [ %98, %97 ], [ 0, %43 ]
  %48 = phi i32 [ %87, %97 ], [ 0, %43 ]
  %49 = phi i32 [ %84, %97 ], [ 0, %43 ]
  %50 = phi ptr [ %99, %97 ], [ %39, %43 ]
  br label %51

51:                                               ; preds = %62, %44
  %52 = phi i32 [ %47, %44 ], [ 0, %62 ]
  %53 = phi ptr [ %50, %44 ], [ %63, %62 ]
  %54 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, ptr %53, i32 0, i32 1
  %55 = load i8, ptr %54, align 1
  %56 = icmp ne i8 %55, 0
  %57 = icmp eq i32 %52, 0
  %58 = and i1 %57, %56
  br i1 %58, label %59, label %102

59:                                               ; preds = %51
  %60 = load i8, ptr %16, align 2
  %61 = icmp eq i8 %55, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %53, i32 1
  br i1 %45, label %51, label %102

64:                                               ; preds = %59
  %65 = zext i8 %55 to i32
  %66 = load i8, ptr %53, align 1
  %67 = load ptr, ptr %0, align 8
  %68 = zext i8 %66 to i32
  %69 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, ptr %53, i32 0, i32 2
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 1
  %73 = lshr i32 %71, 1
  %74 = and i32 %73, 1
  %75 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, ptr %53, i32 0, i32 4
  %76 = load i16, ptr %75, align 1
  %77 = zext i16 %76 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %67, i32 noundef 1073741824, ptr noundef nonnull @.str.32, i32 noundef %65, i32 noundef %68, i32 noundef %72, i32 noundef %74, i32 noundef %77) #15
  %78 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %29, i32 %49
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %78, ptr noundef align 1 dereferenceable(7) %53, i32 7, i1 false)
  %79 = load i16, ptr %27, align 1
  %80 = add i16 %79, 7
  store i16 %80, ptr %27, align 1
  store i32 %33, ptr %34, align 1
  %81 = load i16, ptr %27, align 1
  %82 = zext i16 %81 to i32
  %83 = add i32 %35, %82
  store i32 %83, ptr %34, align 1
  %84 = add nuw i32 %49, 1
  %85 = load i16, ptr %75, align 1
  %86 = zext i16 %85 to i32
  %87 = add i32 %48, %86
  br i1 %36, label %88, label %97

88:                                               ; preds = %64
  %89 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, ptr %53, i32 0, i32 1
  %90 = load i8, ptr %89, align 1
  switch i8 %90, label %92 [
    i8 1, label %91
    i8 6, label %91
    i8 11, label %91
  ]

91:                                               ; preds = %88, %88, %88
  br label %92

92:                                               ; preds = %91, %88
  %93 = phi i32 [ 0, %88 ], [ 1, %91 ]
  %94 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %53, i32 1, i32 1
  %95 = load i8, ptr %94, align 1
  switch i8 %95, label %97 [
    i8 1, label %96
    i8 6, label %96
    i8 11, label %96
  ]

96:                                               ; preds = %92, %92, %92
  br label %97

97:                                               ; preds = %96, %92, %64
  %98 = phi i32 [ 1, %96 ], [ %93, %92 ], [ 0, %64 ]
  %99 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %53, i32 1
  %100 = icmp ult i32 %84, %1
  %101 = icmp eq i32 %84, %1
  br i1 %101, label %102, label %44

102:                                              ; preds = %97, %62, %51
  %103 = phi i32 [ %48, %62 ], [ %48, %51 ], [ %87, %97 ]
  %104 = phi i8 [ %46, %62 ], [ %46, %51 ], [ %66, %97 ]
  %105 = phi ptr [ %53, %51 ], [ %63, %62 ], [ %99, %97 ]
  %106 = icmp ugt i32 %103, 9000
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %108, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef %103, i32 noundef 9000) #15
  br label %141

109:                                              ; preds = %102, %43
  %110 = phi ptr [ %105, %102 ], [ %39, %43 ]
  %111 = phi i8 [ %104, %102 ], [ 0, %43 ]
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %7, i8 0, i64 14, i1 false) #15
  %112 = load i32, ptr %34, align 1
  %113 = load ptr, ptr %37, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %109
  %116 = call i32 @mwifiex_get_rates_from_cfg80211(ptr noundef %0, ptr noundef nonnull %7, i8 noundef zeroext %111) #15
  br label %119

117:                                              ; preds = %109
  %118 = call i32 @mwifiex_get_supported_rates(ptr noundef %0, ptr noundef nonnull %7) #15
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = getelementptr i8, ptr %30, i32 %112
  %122 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %122, i32 noundef 16, ptr noundef nonnull @.str.34, i32 noundef %120) #15
  store i16 1, ptr %121, align 1
  %123 = trunc i32 %120 to i16
  %124 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %121, i32 0, i32 1
  store i16 %123, ptr %124, align 1
  %125 = getelementptr inbounds %struct.mwifiex_ie_types_rates_param_set, ptr %121, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %125, ptr nonnull align 1 %7, i32 %120, i1 false) #15
  %126 = add i32 %120, 4
  %127 = load i32, ptr %34, align 1
  %128 = add i32 %127, %126
  store i32 %128, ptr %34, align 1
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %7) #15
  %129 = load ptr, ptr %0, align 8
  %130 = getelementptr inbounds %struct.mwifiex_adapter, ptr %129, i32 0, i32 85
  store ptr %39, ptr %130, align 4
  %131 = load ptr, ptr %0, align 8
  %132 = getelementptr inbounds %struct.mwifiex_adapter, ptr %131, i32 0, i32 137
  %133 = load i8, ptr %132, align 1, !range !9
  %134 = icmp eq i8 %133, 0
  %135 = select i1 %134, i16 6, i16 263
  %136 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext %135, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %3, i1 noundef zeroext false) #15
  %137 = load i32, ptr %34, align 1
  %138 = sub i32 %137, %126
  store i32 %138, ptr %34, align 1
  %139 = icmp eq i32 %136, 0
  br i1 %139, label %38, label %140

140:                                              ; preds = %119
  call void @mwifiex_cancel_pending_scan_cmd(ptr noundef %8) #15
  br label %141

141:                                              ; preds = %140, %107, %38
  %142 = xor i1 %42, true
  %143 = sext i1 %142 to i32
  br label %144

144:                                              ; preds = %141, %14
  %145 = phi i32 [ -1, %14 ], [ %143, %141 ]
  ret i32 %145
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_insert_cmd_to_pending_q(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_wait_queue_complete(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_cmd_802_11_scan(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %1, align 1
  store i8 %4, ptr %3, align 1
  %5 = getelementptr inbounds %struct.host_cmd_ds_802_11_scan, ptr %3, i32 0, i32 1
  %6 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %6, i32 6, i1 false)
  %7 = getelementptr inbounds %struct.host_cmd_ds_802_11_scan, ptr %3, i32 0, i32 2
  %8 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %1, i32 0, i32 3
  %9 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %7, ptr align 1 %8, i32 %10, i1 false)
  store i16 6, ptr %0, align 1
  %11 = load i32, ptr %9, align 1
  %12 = trunc i32 %11 to i16
  %13 = add i16 %12, 15
  %14 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 1
  store i16 %13, ptr %14, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_check_network_compatibility(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %146, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 13
  %6 = load i16, ptr %5, align 4
  %7 = trunc i16 %6 to i8
  %8 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = trunc i32 %9 to i16
  %11 = tail call ptr @mwifiex_get_cfp(ptr noundef %0, i8 noundef zeroext %7, i16 noundef zeroext %10, i32 noundef 0) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %146, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %15 = load i32, ptr %14, align 8
  %16 = add i32 %15, -1
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %146

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 22
  store i8 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %22 = load i8, ptr %21, align 8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load i32, ptr %14, align 8
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %146, label %31

31:                                               ; preds = %27, %24, %18
  %32 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 113
  %33 = load i8, ptr %32, align 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %19, i32 noundef 128, ptr noundef nonnull @.str.35) #15
  br label %146

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 59
  %38 = load i8, ptr %37, align 2
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %19, i32 noundef 1073741824, ptr noundef nonnull @.str.36) #15
  br label %144

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 2
  %43 = load i8, ptr %42, align 2
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 52
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8, ptr %47, align 1
  %51 = icmp eq i8 %50, 68
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %19, i32 noundef 1073741824, ptr noundef nonnull @.str.37) #15
  br label %146

53:                                               ; preds = %49, %45, %41
  %54 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 10
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, %15
  br i1 %56, label %57, label %144

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 4
  %59 = load i8, ptr %58, align 4
  %60 = icmp eq i8 %59, 0
  %61 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60
  %62 = load i8, ptr %61, align 4
  %63 = icmp eq i8 %62, 0
  br i1 %60, label %64, label %91

64:                                               ; preds = %57
  br i1 %63, label %65, label %101

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %101

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 46
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i8, ptr %71, align 1
  %75 = icmp eq i8 %74, -35
  br i1 %75, label %101, label %76

76:                                               ; preds = %73, %69
  %77 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 49
  %78 = load ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i8, ptr %78, align 1
  %82 = icmp eq i8 %81, 48
  br i1 %82, label %101, label %83

83:                                               ; preds = %80, %76
  %84 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 7
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 3
  %89 = load i32, ptr %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %146, label %101

91:                                               ; preds = %57
  br i1 %63, label %92, label %101

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 1
  %94 = load i8, ptr %93, align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 3
  %98 = load i32, ptr %97, align 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %19, i32 noundef 1073741824, ptr noundef nonnull @.str.38) #15
  store i8 1, ptr %20, align 4
  br label %146

101:                                              ; preds = %96, %92, %91, %87, %83, %80, %73, %65, %64
  %102 = tail call fastcc zeroext i1 @mwifiex_is_bss_wpa(ptr noundef %0, ptr noundef nonnull %1) #15
  br i1 %102, label %103, label %120

103:                                              ; preds = %101
  %104 = load ptr, ptr %0, align 8
  %105 = getelementptr inbounds %struct.mwifiex_adapter, ptr %104, i32 0, i32 84
  %106 = load i8, ptr %105, align 2
  %107 = and i8 %106, 24
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %146, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 24
  %111 = load ptr, ptr %110, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %146, label %113

113:                                              ; preds = %109
  %114 = tail call fastcc zeroext i8 @mwifiex_is_wpa_oui_present(ptr noundef nonnull %1, i32 noundef 1) #15
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %146

116:                                              ; preds = %113
  %117 = tail call fastcc zeroext i8 @mwifiex_is_wpa_oui_present(ptr noundef nonnull %1, i32 noundef 0) #15
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %144, label %119

119:                                              ; preds = %116
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %19, i32 noundef 1073741824, ptr noundef nonnull @.str.39) #15
  store i8 1, ptr %20, align 4
  br label %146

120:                                              ; preds = %101
  %121 = tail call fastcc zeroext i1 @mwifiex_is_bss_wpa2(ptr noundef %0, ptr noundef nonnull %1) #15
  br i1 %121, label %122, label %139

122:                                              ; preds = %120
  %123 = load ptr, ptr %0, align 8
  %124 = getelementptr inbounds %struct.mwifiex_adapter, ptr %123, i32 0, i32 84
  %125 = load i8, ptr %124, align 2
  %126 = and i8 %125, 24
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %146, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 24
  %130 = load ptr, ptr %129, align 8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %146, label %132

132:                                              ; preds = %128
  %133 = tail call fastcc zeroext i8 @mwifiex_is_rsn_oui_present(ptr noundef nonnull %1, i32 noundef 1) #15
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = tail call fastcc zeroext i8 @mwifiex_is_rsn_oui_present(ptr noundef nonnull %1, i32 noundef 0) #15
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %135
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %19, i32 noundef 1073741824, ptr noundef nonnull @.str.39) #15
  store i8 1, ptr %20, align 4
  br label %146

139:                                              ; preds = %120
  %140 = tail call fastcc zeroext i1 @mwifiex_is_bss_adhoc_aes(ptr noundef %0, ptr noundef nonnull %1) #15
  br i1 %140, label %146, label %141

141:                                              ; preds = %139
  %142 = tail call fastcc zeroext i1 @mwifiex_is_bss_dynamic_wep(ptr noundef %0, ptr noundef nonnull %1) #15
  br i1 %142, label %146, label %143

143:                                              ; preds = %141
  tail call fastcc void @_dbg_security_flags(i32 noundef 4, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.mwifiex_is_network_compatible, ptr noundef %0, ptr noundef nonnull %1) #15
  br label %144

144:                                              ; preds = %143, %135, %116, %53, %40
  %145 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %145, i32 noundef 4, ptr noundef nonnull @.str.6) #15
  br label %146

146:                                              ; preds = %144, %141, %139, %138, %132, %128, %122, %119, %113, %109, %103, %100, %87, %52, %35, %27, %13, %4, %2
  %147 = phi i32 [ -1, %2 ], [ -1, %144 ], [ -1, %4 ], [ 0, %13 ], [ 0, %35 ], [ 0, %52 ], [ 0, %100 ], [ 0, %27 ], [ 0, %103 ], [ 0, %119 ], [ 0, %113 ], [ 0, %109 ], [ 0, %122 ], [ 0, %138 ], [ 0, %132 ], [ 0, %128 ], [ 0, %139 ], [ 0, %141 ], [ 0, %87 ]
  ret i32 %147
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_cfp(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_cancel_scan(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.cfg80211_scan_info, align 8
  tail call void @mwifiex_cancel_pending_scan_cmd(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 73
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %7) #15
  store i32 0, ptr %3, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %25, %6
  %12 = phi i8 [ %26, %25 ], [ %9, %6 ]
  %13 = phi i32 [ %27, %25 ], [ 0, %6 ]
  %14 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.mwifiex_private, ptr %15, i32 0, i32 111
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @__const.mwifiex_check_next_scan_command.info, i32 16, i1 false)
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.7) #15
  %22 = load ptr, ptr %18, align 8
  call void @cfg80211_scan_done(ptr noundef %22, ptr noundef nonnull %2) #15
  store ptr null, ptr %18, align 8
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %15, i32 0, i32 130
  store i8 0, ptr %23, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  %24 = load i8, ptr %8, align 4
  br label %25

25:                                               ; preds = %21, %17, %11
  %26 = phi i8 [ %12, %17 ], [ %24, %21 ], [ %12, %11 ]
  %27 = add nuw nsw i32 %13, 1
  %28 = zext i8 %26 to i32
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %11, label %30

30:                                               ; preds = %25, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_cancel_pending_scan_cmd(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_scan_done(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_802_11_scan(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store ptr null, ptr %6, align 4, !annotation !8
  %8 = load i16, ptr %1, align 1
  %9 = icmp eq i16 %8, 108
  %10 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %12 = select i1 %9, ptr %10, ptr %11
  %13 = getelementptr inbounds %struct.host_cmd_ds_802_11_scan_rsp, ptr %12, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = icmp ugt i8 %14, 64
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = zext i8 %14 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %17) #15
  br label %114

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 132
  %20 = load i8, ptr %19, align 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 134
  %24 = load i32, ptr %23, align 4
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = sub i32 %24, %25
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i8 0, ptr %19, align 2
  store i32 0, ptr %23, align 4
  br label %29

29:                                               ; preds = %28, %22, %18
  %30 = load i16, ptr %12, align 1
  %31 = zext i16 %30 to i32
  store i32 %31, ptr %5, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 1073741824, ptr noundef nonnull @.str.9, i32 noundef %31) #15
  %32 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  %33 = load i16, ptr %32, align 1
  %34 = zext i16 %33 to i32
  %35 = load i8, ptr %13, align 1
  %36 = zext i8 %35 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 1073741824, ptr noundef nonnull @.str.10, i32 noundef %36) #15
  %37 = getelementptr inbounds %struct.host_cmd_ds_802_11_scan_rsp, ptr %12, i32 0, i32 2
  store ptr %37, ptr %4, align 4
  %38 = sub nuw nsw i32 -11, %31
  %39 = add nsw i32 %38, %34
  %40 = getelementptr i8, ptr %37, i32 %31
  call fastcc void @mwifiex_ret_802_11_scan_get_tlv_ptrs(ptr noundef %7, ptr noundef %40, i32 noundef %39, i32 noundef 275, ptr noundef nonnull %3)
  call fastcc void @mwifiex_ret_802_11_scan_get_tlv_ptrs(ptr noundef %7, ptr noundef %40, i32 noundef %39, i32 noundef 298, ptr noundef nonnull %6)
  %41 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.wiphy, ptr %42, i32 0, i32 41
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %61, label %46

46:                                               ; preds = %29
  %47 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %44, i32 0, i32 10
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %46
  %51 = load i8, ptr %13, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 2
  %54 = add nuw nsw i32 %53, 40
  %55 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %54, i32 noundef 2848) #17
  %56 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 162
  store ptr %55, ptr %56, align 4
  %57 = icmp eq ptr %55, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load i8, ptr %13, align 1
  %60 = zext i8 %59 to i32
  store i32 %60, ptr %55, align 64
  br label %61

61:                                               ; preds = %58, %50, %46, %29
  %62 = load i8, ptr %13, align 1
  %63 = icmp ne i8 %62, 0
  %64 = icmp ne i16 %30, 0
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %66, label %114

66:                                               ; preds = %61
  %67 = load ptr, ptr %3, align 4
  %68 = icmp eq ptr %67, null
  %69 = load ptr, ptr %6, align 4
  %70 = icmp eq ptr %69, null
  %71 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 162
  br label %80

72:                                               ; preds = %111
  %73 = add nuw nsw i32 %83, 1
  %74 = load i8, ptr %13, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp ult i32 %73, %75
  %77 = load i32, ptr %5, align 4
  %78 = icmp ne i32 %77, 0
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %114

80:                                               ; preds = %72, %66
  %81 = phi i64 [ 0, %66 ], [ %89, %72 ]
  %82 = phi ptr [ null, %66 ], [ %91, %72 ]
  %83 = phi i32 [ 0, %66 ], [ %73, %72 ]
  br i1 %68, label %88, label %84

84:                                               ; preds = %80
  %85 = shl i32 %83, 3
  %86 = getelementptr %struct.mwifiex_ie_types_tsf_timestamp, ptr %67, i32 0, i32 1, i32 %85
  %87 = load i64, ptr %86, align 1
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i64 [ %87, %84 ], [ %81, %80 ]
  %90 = getelementptr %struct.mwifiex_ie_types_chan_band_list_param_set, ptr %69, i32 0, i32 1, i32 %83
  %91 = select i1 %70, ptr %82, ptr %90
  %92 = select i1 %70, ptr null, ptr %90
  br i1 %70, label %111, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr %71, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %111, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %98 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %97, i32 noundef 2848, i32 noundef 44) #16
  %99 = load ptr, ptr %71, align 4
  %100 = getelementptr %struct.cfg80211_wowlan_nd_info, ptr %99, i32 0, i32 1, i32 %83
  store ptr %98, ptr %100, align 4
  %101 = load ptr, ptr %71, align 4
  %102 = getelementptr %struct.cfg80211_wowlan_nd_info, ptr %101, i32 0, i32 1, i32 %83
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.cfg80211_wowlan_nd_match, ptr %103, i32 0, i32 1
  store i32 1, ptr %106, align 4
  %107 = getelementptr inbounds %struct.chan_band_param_set, ptr %91, i32 0, i32 1
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = getelementptr inbounds %struct.cfg80211_wowlan_nd_match, ptr %103, i32 0, i32 2
  store i32 %109, ptr %110, align 4
  br label %111

111:                                              ; preds = %105, %96, %93, %88
  %112 = call fastcc i32 @mwifiex_parse_single_response_buf(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef %89, ptr noundef %92, i1 noundef zeroext false, i32 noundef 0)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %72, label %114

114:                                              ; preds = %111, %72, %61, %16
  %115 = phi i32 [ -1, %16 ], [ 0, %61 ], [ %112, %111 ], [ 0, %72 ]
  tail call fastcc void @mwifiex_check_next_scan_command(ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_802_11_scan_get_tlv_ptrs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #2 {
  store ptr null, ptr %4, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.47, i32 noundef %2) #15
  %6 = icmp ugt i32 %2, 3
  br i1 %6, label %7, label %34

7:                                                ; preds = %29, %5
  %8 = phi i32 [ %30, %29 ], [ %2, %5 ]
  %9 = phi ptr [ %32, %29 ], [ %1, %5 ]
  %10 = load i16, ptr %9, align 1
  %11 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %9, i32 0, i32 1
  %12 = load i16, ptr %11, align 1
  %13 = zext i16 %12 to i32
  %14 = add nuw nsw i32 %13, 4
  %15 = icmp ult i32 %8, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.48) #15
  br label %34

17:                                               ; preds = %7
  %18 = zext i16 %10 to i32
  %19 = icmp eq i32 %18, %3
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  switch i16 %10, label %23 [
    i16 275, label %21
    i16 298, label %22
  ]

21:                                               ; preds = %20
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.49, i32 noundef %13) #15
  store ptr %9, ptr %4, align 4
  br label %26

22:                                               ; preds = %20
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.50, i32 noundef %13) #15
  store ptr %9, ptr %4, align 4
  br label %26

23:                                               ; preds = %20
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.51, i32 noundef %3) #15
  br label %34

24:                                               ; preds = %17
  %25 = load ptr, ptr %4, align 4
  br label %26

26:                                               ; preds = %24, %22, %21
  %27 = phi ptr [ %25, %24 ], [ %9, %21 ], [ %9, %22 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = sub i32 %8, %14
  %31 = getelementptr inbounds %struct.mwifiex_ie_types_data, ptr %9, i32 0, i32 1
  %32 = getelementptr i8, ptr %31, i32 %13
  %33 = icmp ugt i32 %30, 3
  br i1 %33, label %7, label %34

34:                                               ; preds = %29, %26, %23, %16, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_parse_single_response_buf(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i64 noundef %3, ptr noundef readonly %4, i1 noundef zeroext %5, i32 noundef %6) unnamed_addr #2 {
  %8 = alloca %struct.cfg80211_inform_bss, align 8
  %9 = alloca [6 x i8], align 1
  %10 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #15
  %11 = load i32, ptr %2, align 4
  %12 = icmp ugt i32 %11, 1
  %13 = load ptr, ptr %1, align 4
  br i1 %12, label %14, label %26

14:                                               ; preds = %7
  %15 = load i16, ptr %13, align 1
  %16 = add i32 %11, -2
  store i32 %16, ptr %2, align 4
  %17 = load ptr, ptr %1, align 4
  %18 = getelementptr i8, ptr %17, i32 2
  store ptr %18, ptr %1, align 4
  %19 = icmp eq i16 %15, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, ptr %2, align 4
  br label %26

22:                                               ; preds = %14
  %23 = zext i16 %15 to i32
  %24 = load i32, ptr %2, align 4
  %25 = icmp ult i32 %24, %23
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %20, %7
  %27 = phi ptr [ %18, %20 ], [ %18, %22 ], [ %13, %7 ]
  %28 = phi i32 [ %21, %20 ], [ %24, %22 ], [ %11, %7 ]
  %29 = getelementptr i8, ptr %27, i32 %28
  store ptr %29, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %137

30:                                               ; preds = %22
  %31 = getelementptr i8, ptr %18, i32 %23
  store ptr %31, ptr %1, align 4
  %32 = load i32, ptr %2, align 4
  %33 = sub i32 %32, %23
  store i32 %33, ptr %2, align 4
  %34 = icmp ult i16 %15, 19
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.52) #15
  br label %137

36:                                               ; preds = %30
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %9, ptr noundef align 1 dereferenceable(6) %18, i32 6, i1 false)
  %37 = getelementptr i8, ptr %17, i32 8
  br i1 %5, label %44, label %38

38:                                               ; preds = %36
  %39 = load i8, ptr %37, align 1
  %40 = zext i8 %39 to i32
  %41 = mul nsw i32 %40, -100
  %42 = getelementptr i8, ptr %17, i32 9
  %43 = add nsw i32 %23, -7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 1073741824, ptr noundef nonnull @.str.20, i32 noundef %41) #15
  br label %46

44:                                               ; preds = %36
  %45 = add nsw i32 %23, -6
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi i32 [ %6, %44 ], [ %41, %38 ]
  %48 = phi i32 [ %45, %44 ], [ %43, %38 ]
  %49 = phi ptr [ %37, %44 ], [ %42, %38 ]
  %50 = getelementptr i8, ptr %49, i32 12
  %51 = add nsw i32 %48, -12
  %52 = load i64, ptr %49, align 1
  %53 = getelementptr inbounds %struct.mwifiex_fixed_bcn_param, ptr %49, i32 0, i32 1
  %54 = load i16, ptr %53, align 1
  %55 = getelementptr inbounds %struct.mwifiex_fixed_bcn_param, ptr %49, i32 0, i32 2
  %56 = load i16, ptr %55, align 1
  %57 = zext i16 %56 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 1073741824, ptr noundef nonnull @.str.53, i32 noundef %57) #15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 1073741824, ptr noundef nonnull @.str.54, i32 noundef %51) #15
  %58 = icmp ugt i32 %51, 1
  br i1 %58, label %59, label %136

59:                                               ; preds = %71, %46
  %60 = phi ptr [ %72, %71 ], [ %50, %46 ]
  %61 = phi i32 [ %73, %71 ], [ %51, %46 ]
  %62 = getelementptr i8, ptr %60, i32 1
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = add nuw nsw i32 %64, 2
  %66 = icmp ult i32 %61, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.mwifiex_parse_single_response_buf) #15
  br label %137

68:                                               ; preds = %59
  %69 = load i8, ptr %60, align 1
  %70 = icmp eq i8 %69, 3
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = getelementptr i8, ptr %60, i32 %65
  %73 = sub i32 %61, %65
  %74 = icmp ugt i32 %73, 1
  br i1 %74, label %59, label %136

75:                                               ; preds = %68
  %76 = getelementptr i8, ptr %60, i32 2
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i16
  %79 = icmp eq i8 %77, 0
  br i1 %79, label %136, label %80

80:                                               ; preds = %75
  %81 = zext i8 %77 to i32
  %82 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 132
  %83 = load i8, ptr %82, align 2
  %84 = icmp eq i8 %77, %83
  br i1 %84, label %135, label %85

85:                                               ; preds = %80
  %86 = icmp eq ptr %4, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %85
  %88 = load i8, ptr %4, align 1
  %89 = and i8 %88, 3
  %90 = icmp eq i8 %89, 1
  %91 = select i1 %90, i8 4, i8 2
  br label %92

92:                                               ; preds = %87, %85
  %93 = phi i8 [ %91, %87 ], [ 2, %85 ]
  %94 = tail call ptr @mwifiex_get_cfp(ptr noundef %0, i8 noundef zeroext %93, i16 noundef zeroext %78, i32 noundef 0) #15
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.mwifiex_chan_freq_power, ptr %94, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = mul i32 %98, 1000
  br label %100

100:                                              ; preds = %96, %92
  %101 = phi i32 [ %99, %96 ], [ 0, %92 ]
  %102 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103
  %103 = load ptr, ptr %102, align 8
  %104 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %103, i32 noundef %101) #15
  %105 = icmp eq ptr %104, null
  br i1 %105, label %137, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.ieee80211_channel, ptr %104, i32 0, i32 4
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %137

111:                                              ; preds = %106
  %112 = load ptr, ptr %102, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #15
  %113 = getelementptr inbounds i8, ptr %8, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(40) %113, i8 0, i64 40, i1 false) #15
  store ptr %104, ptr %8, align 8
  %114 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %8, i32 0, i32 1
  store i32 0, ptr %114, align 4
  store i32 %47, ptr %113, align 8
  %115 = call ptr @cfg80211_inform_bss_data(ptr noundef %112, ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %9, i64 noundef %52, i16 noundef zeroext %56, i16 noundef zeroext %54, ptr noundef %50, i32 noundef %51, i32 noundef 2592) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #15
  %116 = icmp eq ptr %115, null
  br i1 %116, label %137, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.cfg80211_bss, ptr %115, i32 0, i32 17
  store i8 %93, ptr %118, align 8
  %119 = getelementptr inbounds %struct.cfg80211_bss, ptr %115, i32 1, i32 2
  store i64 %3, ptr %119, align 8
  %120 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %121 = load i8, ptr %120, align 8
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50
  %125 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %9, ptr noundef dereferenceable(6) %124, i32 6)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  call fastcc void @mwifiex_update_curr_bss_params(ptr noundef %0, ptr noundef nonnull %115)
  br label %128

128:                                              ; preds = %127, %123, %117
  %129 = load i32, ptr %107, align 4
  %130 = and i32 %129, 10
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 1073741824, ptr noundef nonnull @.str.57, i32 noundef %81) #15
  call fastcc void @mwifiex_save_hidden_ssid_channels(ptr noundef %0, ptr noundef nonnull %115)
  br label %133

133:                                              ; preds = %132, %128
  %134 = load ptr, ptr %102, align 8
  call void @cfg80211_put_bss(ptr noundef %134, ptr noundef nonnull %115) #15
  br label %137

135:                                              ; preds = %80
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 536870912, ptr noundef nonnull @.str.56) #15
  br label %137

136:                                              ; preds = %75, %71, %46
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 536870912, ptr noundef nonnull @.str.58) #15
  br label %137

137:                                              ; preds = %136, %135, %133, %111, %106, %100, %67, %35, %26
  %138 = phi i32 [ -14, %26 ], [ -14, %35 ], [ 0, %135 ], [ -14, %67 ], [ 0, %136 ], [ 0, %100 ], [ 0, %106 ], [ 0, %133 ], [ 0, %111 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #15
  ret i32 %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_check_next_scan_command(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.cfg80211_scan_info, align 8
  %3 = alloca %struct.cfg80211_scan_info, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 68
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %9, label %99

9:                                                ; preds = %1
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #15
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 73
  store i32 0, ptr %11, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %10) #15
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 159
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 111
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 130
  %22 = load i8, ptr %21, align 8, !range !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %16, %9
  store i8 0, ptr %13, align 4
  br label %70

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 161
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 1073741824, ptr noundef nonnull @.str.62) #15
  br label %70

30:                                               ; preds = %25
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 422) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %70, label %34

34:                                               ; preds = %39, %30
  %35 = phi i32 [ %42, %39 ], [ 0, %30 ]
  %36 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 161, i32 %35
  %37 = load i8, ptr %36, align 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %32, i32 0, i32 6, i32 %35
  %41 = load i64, ptr %36, align 4
  store i64 %41, ptr %40, align 2
  %42 = add nuw nsw i32 %35, 1
  %43 = icmp eq i32 %42, 50
  br i1 %43, label %44, label %34

44:                                               ; preds = %39, %34
  store i8 1, ptr %13, align 4
  %45 = load ptr, ptr %17, align 8
  %46 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %45, i32 0, i32 8
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %32, i32 0, i32 8
  %52 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %45, i32 0, i32 11
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %51, align 8
  %54 = getelementptr %struct.cfg80211_scan_request, ptr %45, i32 0, i32 11, i32 4
  %55 = load i16, ptr %54, align 2
  %56 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %32, i32 0, i32 8, i32 4
  store i16 %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %50, %44
  %58 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %45, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %32, i32 0, i32 5
  store i8 %60, ptr %61, align 1
  %62 = load ptr, ptr %45, align 8
  %63 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %32, i32 0, i32 4
  store ptr %62, ptr %63, align 1
  %64 = tail call i32 @mwifiex_scan_networks(ptr noundef %0, ptr noundef nonnull %32) #15
  tail call void @kfree(ptr noundef nonnull %32) #15
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(400) %26, i8 0, i32 400, i1 false) #15
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %57
  %67 = load ptr, ptr %0, align 8
  %68 = getelementptr inbounds %struct.mwifiex_adapter, ptr %67, i32 0, i32 9
  %69 = load ptr, ptr %68, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.63, i32 noundef %64) #18
  br label %70

70:                                               ; preds = %66, %57, %30, %29, %24
  %71 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 137
  %72 = load i8, ptr %71, align 1, !range !9
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load ptr, ptr %0, align 8
  %76 = getelementptr inbounds %struct.mwifiex_adapter, ptr %75, i32 0, i32 150
  store i32 0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.mwifiex_adapter, ptr %75, i32 0, i32 60
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %78, i32 0, i32 7
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.mwifiex_adapter, ptr %75, i32 0, i32 121, i32 1
  store i32 0, ptr %83, align 4
  %84 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 111
  %85 = load ptr, ptr %84, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %75, i32 noundef 1073741824, ptr noundef nonnull @.str.66) #15
  %88 = load ptr, ptr %77, align 4
  %89 = tail call i32 @mwifiex_complete_cmd(ptr noundef %75, ptr noundef %88) #15
  br label %90

90:                                               ; preds = %87, %82, %74, %70
  %91 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 111
  %92 = load ptr, ptr %91, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false)
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.60) #15
  %95 = load ptr, ptr %91, align 8
  call void @cfg80211_scan_done(ptr noundef %95, ptr noundef nonnull %2) #15
  store ptr null, ptr %91, align 8
  %96 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 130
  store i8 0, ptr %96, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  br label %129

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 130
  store i8 0, ptr %98, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.61) #15
  br label %129

99:                                               ; preds = %1
  %100 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 130
  %101 = load i8, ptr %100, align 8, !range !9
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 111
  %105 = load ptr, ptr %104, align 8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %103, %99
  %108 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 114
  %109 = load i8, ptr %108, align 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %107, %103
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #15
  tail call void @mwifiex_cancel_pending_scan_cmd(ptr noundef %4) #15
  %112 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %112) #15
  %113 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 73
  store i32 0, ptr %113, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %112) #15
  %114 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 159
  %115 = load i8, ptr %114, align 4
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 111
  %119 = load ptr, ptr %118, align 8
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) @__const.mwifiex_check_next_scan_command.info, i32 16, i1 false)
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.7) #15
  %122 = load ptr, ptr %118, align 8
  call void @cfg80211_scan_done(ptr noundef %122, ptr noundef nonnull %3) #15
  store ptr null, ptr %118, align 8
  store i8 0, ptr %100, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  br label %129

123:                                              ; preds = %117
  store i8 0, ptr %100, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.61) #15
  br label %129

124:                                              ; preds = %107
  %125 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = load ptr, ptr %7, align 4
  %128 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  store ptr %126, ptr %128, align 4
  store volatile ptr %127, ptr %126, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %125, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #15
  tail call void @mwifiex_insert_cmd_to_pending_q(ptr noundef %4, ptr noundef %7) #15
  br label %129

129:                                              ; preds = %124, %123, %121, %111, %97, %94
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_cmd_802_11_scan_ext(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  %5 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %2, i32 0, i32 3
  %6 = getelementptr inbounds %struct.mwifiex_scan_cmd_config, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %4, ptr align 1 %5, i32 %7, i1 false)
  store i16 263, ptr %1, align 1
  %8 = load i32, ptr %6, align 1
  %9 = trunc i32 %8 to i16
  %10 = add i16 %9, 12
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 %10, ptr %11, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_802_11_bg_scan_config(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 8
  store i16 107, ptr %1, align 1
  %6 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 30, ptr %6, align 1
  %7 = load i16, ptr %2, align 1
  store i16 %7, ptr %4, align 1
  %8 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  store i8 %9, ptr %10, align 1
  %11 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.host_cmd_ds_802_11_bg_scan_config, ptr %4, i32 0, i32 2
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 4
  %15 = load i32, ptr %14, align 1
  %16 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  store i32 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 5
  %18 = load i32, ptr %17, align 1
  %19 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 5
  store i32 %18, ptr %19, align 1
  %20 = icmp eq i8 %9, 0
  br i1 %20, label %400, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 3
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 6
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 76
  %31 = load i16, ptr %30, align 4
  %32 = trunc i16 %31 to i8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28, %21
  %35 = phi i8 [ %32, %28 ], [ %26, %21 ]
  store i16 258, ptr %5, align 1
  %36 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 4
  store i16 2, ptr %36, align 1
  %37 = zext i8 %35 to i16
  %38 = getelementptr inbounds %struct.mwifiex_ie_types_num_probes, ptr %5, i32 0, i32 1
  store i16 %37, ptr %38, align 1
  %39 = getelementptr i8, ptr %5, i32 6
  br label %40

40:                                               ; preds = %34, %28
  %41 = phi ptr [ %5, %28 ], [ %39, %34 ]
  %42 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 9
  %43 = load i16, ptr %42, align 1
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  store i16 432, ptr %41, align 1
  %46 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %41, i32 0, i32 1
  store i16 2, ptr %46, align 1
  %47 = load i16, ptr %42, align 1
  %48 = getelementptr inbounds %struct.mwifiex_ie_types_repeat_count, ptr %41, i32 0, i32 1
  store i16 %47, ptr %48, align 1
  %49 = getelementptr i8, ptr %41, i32 6
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi ptr [ %41, %40 ], [ %49, %45 ]
  %52 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 7
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  store i16 260, ptr %51, align 1
  %56 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %51, i32 0, i32 1
  store i16 2, ptr %56, align 1
  %57 = load i8, ptr %52, align 1
  %58 = zext i8 %57 to i16
  %59 = getelementptr inbounds %struct.mwifiex_ie_types_min_rssi_threshold, ptr %51, i32 0, i32 1
  store i16 %58, ptr %59, align 1
  %60 = getelementptr i8, ptr %51, i32 6
  br label %61

61:                                               ; preds = %55, %50
  %62 = phi ptr [ %51, %50 ], [ %60, %55 ]
  %63 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 12
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %91, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 11
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i32 [ 0, %66 ], [ %87, %68 ]
  %70 = phi ptr [ %62, %66 ], [ %86, %68 ]
  %71 = load ptr, ptr %67, align 1
  %72 = getelementptr %struct.cfg80211_match_set, ptr %71, i32 %69, i32 0, i32 1
  %73 = load i8, ptr %72, align 4
  %74 = zext i8 %73 to i32
  store i16 274, ptr %70, align 1
  %75 = zext i8 %73 to i16
  %76 = add nuw nsw i16 %75, 1
  %77 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %70, i32 0, i32 1
  store i16 %76, ptr %77, align 1
  %78 = icmp eq i8 %73, 0
  %79 = select i1 %78, i8 32, i8 0
  %80 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, ptr %70, i32 0, i32 1
  store i8 %79, ptr %80, align 1
  %81 = getelementptr inbounds %struct.mwifiex_ie_types_wildcard_ssid_params, ptr %70, i32 0, i32 2
  %82 = load ptr, ptr %67, align 1
  %83 = getelementptr %struct.cfg80211_match_set, ptr %82, i32 %69
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %81, ptr align 4 %83, i32 %74, i1 false)
  %84 = zext i8 %73 to i32
  %85 = add nuw nsw i32 %84, 5
  %86 = getelementptr i8, ptr %70, i32 %85
  %87 = add nuw nsw i32 %69, 1
  %88 = load i8, ptr %63, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ult i32 %87, %89
  br i1 %90, label %68, label %91

91:                                               ; preds = %68, %61
  %92 = phi ptr [ %62, %61 ], [ %86, %68 ]
  %93 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 13
  %94 = load i8, ptr %93, align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %145, label %96

96:                                               ; preds = %91
  store i16 257, ptr %92, align 1
  %97 = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, ptr %92, i32 0, i32 1
  %98 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %92, i32 0, i32 1
  br label %99

99:                                               ; preds = %139, %96
  %100 = phi i32 [ 0, %96 ], [ %143, %139 ]
  %101 = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 13, i32 %100
  %102 = load i8, ptr %101, align 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %220, label %104

104:                                              ; preds = %99
  %105 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %97, i32 %100
  %106 = load i16, ptr %98, align 1
  %107 = add i16 %106, 7
  store i16 %107, ptr %98, align 1
  %108 = load i8, ptr %101, align 1
  %109 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %97, i32 %100, i32 1
  store i8 %108, ptr %109, align 1
  %110 = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 13, i32 %100, i32 1
  %111 = load i8, ptr %110, align 1
  store i8 %111, ptr %105, align 1
  %112 = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 13, i32 %100, i32 2
  %113 = load i8, ptr %112, align 1
  %114 = icmp eq i8 %113, 2
  %115 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %97, i32 %100, i32 2
  %116 = load i8, ptr %115, align 1
  br i1 %114, label %117, label %122

117:                                              ; preds = %104
  %118 = or i8 %116, 1
  store i8 %118, ptr %115, align 1
  %119 = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 13, i32 %100, i32 4
  %120 = load i32, ptr %119, align 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %130, label %127

122:                                              ; preds = %104
  %123 = and i8 %116, -2
  store i8 %123, ptr %115, align 1
  %124 = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 13, i32 %100, i32 4
  %125 = load i32, ptr %124, align 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %122, %117
  %128 = phi i32 [ %125, %122 ], [ %120, %117 ]
  %129 = trunc i32 %128 to i16
  br label %139

130:                                              ; preds = %117
  %131 = load ptr, ptr %0, align 8
  %132 = getelementptr inbounds %struct.mwifiex_adapter, ptr %131, i32 0, i32 80
  br label %136

133:                                              ; preds = %122
  %134 = load ptr, ptr %0, align 8
  %135 = getelementptr inbounds %struct.mwifiex_adapter, ptr %134, i32 0, i32 78
  br label %136

136:                                              ; preds = %133, %130
  %137 = phi ptr [ %132, %130 ], [ %135, %133 ]
  %138 = load i16, ptr %137, align 4
  br label %139

139:                                              ; preds = %136, %127
  %140 = phi i16 [ %129, %127 ], [ %138, %136 ]
  %141 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %97, i32 %100, i32 3
  store i16 %140, ptr %141, align 1
  %142 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %97, i32 %100, i32 4
  store i16 %140, ptr %142, align 1
  %143 = add nuw nsw i32 %100, 1
  %144 = icmp eq i32 %143, 38
  br i1 %144, label %220, label %99

145:                                              ; preds = %91
  %146 = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, ptr %92, i32 0, i32 1
  %147 = load ptr, ptr %0, align 8
  %148 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103
  %149 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 13, i32 0, i32 4
  %150 = getelementptr inbounds %struct.mwifiex_adapter, ptr %147, i32 0, i32 80
  %151 = getelementptr inbounds %struct.mwifiex_adapter, ptr %147, i32 0, i32 78
  br label %152

152:                                              ; preds = %210, %145
  %153 = phi i32 [ 0, %145 ], [ %211, %210 ]
  %154 = phi i32 [ 0, %145 ], [ %212, %210 ]
  %155 = load ptr, ptr %148, align 8
  %156 = getelementptr %struct.wiphy, ptr %155, i32 0, i32 53, i32 %154
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %210, label %159

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %157, i32 0, i32 3
  %161 = load i32, ptr %160, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %210

163:                                              ; preds = %159
  %164 = trunc i32 %154 to i8
  br label %165

165:                                              ; preds = %205, %163
  %166 = phi i32 [ %161, %163 ], [ %206, %205 ]
  %167 = phi i32 [ 0, %163 ], [ %208, %205 ]
  %168 = phi i32 [ %153, %163 ], [ %207, %205 ]
  %169 = load ptr, ptr %157, align 4
  %170 = getelementptr %struct.ieee80211_channel, ptr %169, i32 %167, i32 4
  %171 = load i32, ptr %170, align 4
  %172 = and i32 %171, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %205

174:                                              ; preds = %165
  %175 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %146, i32 %168
  store i8 %164, ptr %175, align 1
  %176 = load i32, ptr %149, align 1
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = trunc i32 %176 to i16
  br label %188

180:                                              ; preds = %174
  %181 = load i32, ptr %170, align 4
  %182 = and i32 %181, 2
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %180
  %185 = load i16, ptr %150, align 4
  br label %188

186:                                              ; preds = %180
  %187 = load i16, ptr %151, align 4
  br label %188

188:                                              ; preds = %186, %184, %178
  %189 = phi i16 [ %185, %184 ], [ %187, %186 ], [ %179, %178 ]
  %190 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %146, i32 %168, i32 4
  store i16 %189, ptr %190, align 1
  %191 = load i32, ptr %170, align 4
  %192 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %146, i32 %168, i32 2
  %193 = load i8, ptr %192, align 1
  %194 = and i8 %193, -2
  %195 = trunc i32 %191 to i8
  %196 = lshr i8 %195, 1
  %197 = and i8 %196, 1
  %198 = or i8 %197, %194
  store i8 %198, ptr %192, align 1
  %199 = getelementptr %struct.ieee80211_channel, ptr %169, i32 %167, i32 3
  %200 = load i16, ptr %199, align 2
  %201 = trunc i16 %200 to i8
  %202 = getelementptr %struct.mwifiex_chan_scan_param_set, ptr %146, i32 %168, i32 1
  store i8 %201, ptr %202, align 1
  %203 = add i32 %168, 1
  %204 = load i32, ptr %160, align 4
  br label %205

205:                                              ; preds = %188, %165
  %206 = phi i32 [ %166, %165 ], [ %204, %188 ]
  %207 = phi i32 [ %168, %165 ], [ %203, %188 ]
  %208 = add nuw nsw i32 %167, 1
  %209 = icmp slt i32 %208, %206
  br i1 %209, label %165, label %210

210:                                              ; preds = %205, %159, %152
  %211 = phi i32 [ %153, %152 ], [ %153, %159 ], [ %207, %205 ]
  %212 = add nuw nsw i32 %154, 1
  %213 = icmp eq i32 %212, 6
  br i1 %213, label %214, label %152

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %92, i32 0, i32 1
  %216 = trunc i32 %211 to i16
  %217 = mul i16 %216, 7
  %218 = load i16, ptr %215, align 1
  %219 = add i16 %218, %217
  store i16 %219, ptr %215, align 1
  br label %222

220:                                              ; preds = %139, %99
  %221 = load i16, ptr %98, align 1
  br label %222

222:                                              ; preds = %220, %214
  %223 = phi i16 [ %221, %220 ], [ %219, %214 ]
  %224 = zext i16 %223 to i32
  %225 = add nuw nsw i32 %224, 4
  %226 = getelementptr i8, ptr %92, i32 %225
  %227 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %2, i32 0, i32 10
  %228 = load i16, ptr %227, align 1
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %235, label %230

230:                                              ; preds = %222
  store i16 286, ptr %226, align 1
  %231 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %226, i32 0, i32 1
  store i16 2, ptr %231, align 1
  %232 = load i16, ptr %227, align 1
  %233 = getelementptr inbounds %struct.mwifiex_ie_types_bgscan_start_later, ptr %226, i32 0, i32 1
  store i16 %232, ptr %233, align 1
  %234 = getelementptr i8, ptr %226, i32 6
  br label %235

235:                                              ; preds = %230, %222
  %236 = phi ptr [ %226, %222 ], [ %234, %230 ]
  %237 = icmp eq ptr %236, null
  br i1 %237, label %392, label %238

238:                                              ; preds = %235
  %239 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 0
  %240 = load i16, ptr %239, align 2
  %241 = and i16 %240, 8
  %242 = icmp eq i16 %241, 0
  br i1 %242, label %259, label %243

243:                                              ; preds = %238
  store i16 266, ptr %236, align 1
  %244 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 0, i32 2, i32 1
  %245 = load i8, ptr %244, align 1
  %246 = zext i8 %245 to i16
  %247 = add nuw nsw i16 %246, 2
  %248 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %236, i32 0, i32 1
  store i16 %247, ptr %248, align 1
  %249 = icmp eq i8 %245, -1
  br i1 %249, label %250, label %253

250:                                              ; preds = %379, %360, %341, %322, %303, %284, %265, %243
  %251 = phi ptr [ %236, %243 ], [ %260, %265 ], [ %279, %284 ], [ %298, %303 ], [ %317, %322 ], [ %336, %341 ], [ %355, %360 ], [ %374, %379 ]
  %252 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %252, i32 noundef 4, ptr noundef nonnull @.str.22) #15
  br label %392

253:                                              ; preds = %243
  %254 = zext i16 %247 to i32
  %255 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 0, i32 2
  %256 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %236, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %256, ptr noundef align 2 %255, i32 %254, i1 false) #15
  %257 = add nuw nsw i32 %254, 4
  %258 = getelementptr i8, ptr %236, i32 %257
  br label %259

259:                                              ; preds = %253, %238
  %260 = phi ptr [ %236, %238 ], [ %258, %253 ]
  %261 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 1
  %262 = load i16, ptr %261, align 2
  %263 = and i16 %262, 8
  %264 = icmp eq i16 %263, 0
  br i1 %264, label %278, label %265

265:                                              ; preds = %259
  store i16 266, ptr %260, align 1
  %266 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 1, i32 2, i32 1
  %267 = load i8, ptr %266, align 1
  %268 = zext i8 %267 to i16
  %269 = add nuw nsw i16 %268, 2
  %270 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %260, i32 0, i32 1
  store i16 %269, ptr %270, align 1
  %271 = icmp eq i8 %267, -1
  br i1 %271, label %250, label %272

272:                                              ; preds = %265
  %273 = zext i16 %269 to i32
  %274 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 1, i32 2
  %275 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %260, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %275, ptr noundef align 2 %274, i32 %273, i1 false) #15
  %276 = add nuw nsw i32 %273, 4
  %277 = getelementptr i8, ptr %260, i32 %276
  br label %278

278:                                              ; preds = %272, %259
  %279 = phi ptr [ %260, %259 ], [ %277, %272 ]
  %280 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 2
  %281 = load i16, ptr %280, align 2
  %282 = and i16 %281, 8
  %283 = icmp eq i16 %282, 0
  br i1 %283, label %297, label %284

284:                                              ; preds = %278
  store i16 266, ptr %279, align 1
  %285 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 2, i32 2, i32 1
  %286 = load i8, ptr %285, align 1
  %287 = zext i8 %286 to i16
  %288 = add nuw nsw i16 %287, 2
  %289 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %279, i32 0, i32 1
  store i16 %288, ptr %289, align 1
  %290 = icmp eq i8 %286, -1
  br i1 %290, label %250, label %291

291:                                              ; preds = %284
  %292 = zext i16 %288 to i32
  %293 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 2, i32 2
  %294 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %279, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %294, ptr noundef align 2 %293, i32 %292, i1 false) #15
  %295 = add nuw nsw i32 %292, 4
  %296 = getelementptr i8, ptr %279, i32 %295
  br label %297

297:                                              ; preds = %291, %278
  %298 = phi ptr [ %279, %278 ], [ %296, %291 ]
  %299 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 3
  %300 = load i16, ptr %299, align 2
  %301 = and i16 %300, 8
  %302 = icmp eq i16 %301, 0
  br i1 %302, label %316, label %303

303:                                              ; preds = %297
  store i16 266, ptr %298, align 1
  %304 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 3, i32 2, i32 1
  %305 = load i8, ptr %304, align 1
  %306 = zext i8 %305 to i16
  %307 = add nuw nsw i16 %306, 2
  %308 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %298, i32 0, i32 1
  store i16 %307, ptr %308, align 1
  %309 = icmp eq i8 %305, -1
  br i1 %309, label %250, label %310

310:                                              ; preds = %303
  %311 = zext i16 %307 to i32
  %312 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 3, i32 2
  %313 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %298, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %313, ptr noundef align 2 %312, i32 %311, i1 false) #15
  %314 = add nuw nsw i32 %311, 4
  %315 = getelementptr i8, ptr %298, i32 %314
  br label %316

316:                                              ; preds = %310, %297
  %317 = phi ptr [ %298, %297 ], [ %315, %310 ]
  %318 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 4
  %319 = load i16, ptr %318, align 2
  %320 = and i16 %319, 8
  %321 = icmp eq i16 %320, 0
  br i1 %321, label %335, label %322

322:                                              ; preds = %316
  store i16 266, ptr %317, align 1
  %323 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 4, i32 2, i32 1
  %324 = load i8, ptr %323, align 1
  %325 = zext i8 %324 to i16
  %326 = add nuw nsw i16 %325, 2
  %327 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %317, i32 0, i32 1
  store i16 %326, ptr %327, align 1
  %328 = icmp eq i8 %324, -1
  br i1 %328, label %250, label %329

329:                                              ; preds = %322
  %330 = zext i16 %326 to i32
  %331 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 4, i32 2
  %332 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %317, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %332, ptr noundef align 2 %331, i32 %330, i1 false) #15
  %333 = add nuw nsw i32 %330, 4
  %334 = getelementptr i8, ptr %317, i32 %333
  br label %335

335:                                              ; preds = %329, %316
  %336 = phi ptr [ %317, %316 ], [ %334, %329 ]
  %337 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 5
  %338 = load i16, ptr %337, align 2
  %339 = and i16 %338, 8
  %340 = icmp eq i16 %339, 0
  br i1 %340, label %354, label %341

341:                                              ; preds = %335
  store i16 266, ptr %336, align 1
  %342 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 5, i32 2, i32 1
  %343 = load i8, ptr %342, align 1
  %344 = zext i8 %343 to i16
  %345 = add nuw nsw i16 %344, 2
  %346 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %336, i32 0, i32 1
  store i16 %345, ptr %346, align 1
  %347 = icmp eq i8 %343, -1
  br i1 %347, label %250, label %348

348:                                              ; preds = %341
  %349 = zext i16 %345 to i32
  %350 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 5, i32 2
  %351 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %336, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %351, ptr noundef align 2 %350, i32 %349, i1 false) #15
  %352 = add nuw nsw i32 %349, 4
  %353 = getelementptr i8, ptr %336, i32 %352
  br label %354

354:                                              ; preds = %348, %335
  %355 = phi ptr [ %336, %335 ], [ %353, %348 ]
  %356 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 6
  %357 = load i16, ptr %356, align 2
  %358 = and i16 %357, 8
  %359 = icmp eq i16 %358, 0
  br i1 %359, label %373, label %360

360:                                              ; preds = %354
  store i16 266, ptr %355, align 1
  %361 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 6, i32 2, i32 1
  %362 = load i8, ptr %361, align 1
  %363 = zext i8 %362 to i16
  %364 = add nuw nsw i16 %363, 2
  %365 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %355, i32 0, i32 1
  store i16 %364, ptr %365, align 1
  %366 = icmp eq i8 %362, -1
  br i1 %366, label %250, label %367

367:                                              ; preds = %360
  %368 = zext i16 %364 to i32
  %369 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 6, i32 2
  %370 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %355, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %370, ptr noundef align 2 %369, i32 %368, i1 false) #15
  %371 = add nuw nsw i32 %368, 4
  %372 = getelementptr i8, ptr %355, i32 %371
  br label %373

373:                                              ; preds = %367, %354
  %374 = phi ptr [ %355, %354 ], [ %372, %367 ]
  %375 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 7
  %376 = load i16, ptr %375, align 2
  %377 = and i16 %376, 8
  %378 = icmp eq i16 %377, 0
  br i1 %378, label %392, label %379

379:                                              ; preds = %373
  store i16 266, ptr %374, align 1
  %380 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 7, i32 2, i32 1
  %381 = load i8, ptr %380, align 1
  %382 = zext i8 %381 to i16
  %383 = add nuw nsw i16 %382, 2
  %384 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %374, i32 0, i32 1
  store i16 %383, ptr %384, align 1
  %385 = icmp eq i8 %381, -1
  br i1 %385, label %250, label %386

386:                                              ; preds = %379
  %387 = zext i16 %383 to i32
  %388 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 7, i32 2
  %389 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %374, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %389, ptr noundef align 2 %388, i32 %387, i1 false) #15
  %390 = add nuw nsw i32 %387, 4
  %391 = getelementptr i8, ptr %374, i32 %390
  br label %392

392:                                              ; preds = %386, %373, %250, %235
  %393 = phi ptr [ null, %235 ], [ %251, %250 ], [ %374, %373 ], [ %391, %386 ]
  %394 = ptrtoint ptr %393 to i32
  %395 = ptrtoint ptr %5 to i32
  %396 = sub i32 %394, %395
  %397 = trunc i32 %396 to i16
  %398 = load i16, ptr %6, align 1
  %399 = add i16 %398, %397
  store i16 %399, ptr %6, align 1
  br label %400

400:                                              ; preds = %392, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_append_vsie_tlv(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %2, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %36, %5
  %9 = phi ptr [ %37, %36 ], [ %6, %5 ]
  %10 = phi i32 [ %38, %36 ], [ 0, %5 ]
  %11 = phi i32 [ %39, %36 ], [ 0, %5 ]
  %12 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 %11
  %13 = load i16, ptr %12, align 2
  %14 = and i16 %13, %1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %8
  store i16 266, ptr %9, align 1
  %17 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 %11, i32 2, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i16
  %20 = add nuw nsw i16 %19, 2
  %21 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %9, i32 0, i32 1
  store i16 %20, ptr %21, align 1
  %22 = icmp eq i8 %18, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %24, i32 noundef 4, ptr noundef nonnull @.str.22) #15
  br label %41

25:                                               ; preds = %16
  %26 = zext i16 %20 to i32
  %27 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 96, i32 %11, i32 2
  %28 = getelementptr inbounds %struct.mwifiex_ie_types_vendor_param_set, ptr %9, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %28, ptr noundef align 2 %27, i32 %26, i1 false)
  %29 = add nuw nsw i32 %26, 4
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr i8, ptr %30, i32 %29
  store ptr %31, ptr %2, align 4
  %32 = load i16, ptr %21, align 1
  %33 = zext i16 %32 to i32
  %34 = add i32 %10, 4
  %35 = add i32 %34, %33
  br label %36

36:                                               ; preds = %25, %8
  %37 = phi ptr [ %31, %25 ], [ %9, %8 ]
  %38 = phi i32 [ %35, %25 ], [ %10, %8 ]
  %39 = add nuw nsw i32 %11, 1
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %41, label %8

41:                                               ; preds = %36, %23, %5, %3
  %42 = phi i32 [ 0, %3 ], [ 0, %5 ], [ %10, %23 ], [ %38, %36 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_stop_bg_scan(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 131
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 331) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %7, i32 0, i32 2
  store i8 1, ptr %10, align 1
  store i16 1, ptr %7, align 8
  %11 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %7, i32 0, i32 1
  store i8 0, ptr %11, align 2
  %12 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 107, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %7, i1 noundef zeroext true) #15
  %13 = icmp eq i32 %12, 0
  tail call void @kfree(ptr noundef nonnull %7) #15
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i8 0, ptr %2, align 1
  br label %15

15:                                               ; preds = %14, %9, %5, %1
  %16 = phi i32 [ 0, %14 ], [ 0, %1 ], [ -12, %5 ], [ -14, %9 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_802_11_scan_ext(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.11) #15
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  %5 = load i16, ptr %4, align 1
  %6 = add i16 %5, -12
  %7 = icmp ugt i16 %6, 3
  br i1 %7, label %8, label %79

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  br label %10

10:                                               ; preds = %73, %8
  %11 = phi ptr [ %77, %73 ], [ %9, %8 ]
  %12 = phi i16 [ %75, %73 ], [ %6, %8 ]
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %11, i32 0, i32 1
  %15 = load i16, ptr %14, align 1
  %16 = zext i16 %15 to i32
  %17 = add nuw nsw i32 %16, 4
  %18 = icmp ugt i32 %17, %13
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.12) #15
  br label %79

20:                                               ; preds = %10
  %21 = load i16, ptr %11, align 1
  %22 = icmp eq i16 %21, 454
  br i1 %22, label %23, label %73

23:                                               ; preds = %20
  %24 = load ptr, ptr %0, align 8
  %25 = udiv i16 %15, 10
  %26 = and i16 %25, 255
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %73, label %28

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %11, i32 4
  %30 = getelementptr inbounds %struct.mwifiex_adapter, ptr %24, i32 0, i32 150
  %31 = getelementptr inbounds %struct.mwifiex_adapter, ptr %24, i32 0, i32 149
  %32 = getelementptr inbounds %struct.mwifiex_adapter, ptr %24, i32 0, i32 148
  %33 = trunc i16 %25 to i8
  br label %34

34:                                               ; preds = %41, %28
  %35 = phi ptr [ %29, %28 ], [ %70, %41 ]
  %36 = phi i8 [ 0, %28 ], [ %71, %41 ]
  %37 = load i32, ptr %30, align 4
  %38 = load i32, ptr %31, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %24, i32 noundef 536870912, ptr noundef nonnull @.str.64, i32 noundef %38) #15
  br label %73

41:                                               ; preds = %34
  %42 = load i8, ptr %35, align 1
  %43 = getelementptr inbounds %struct.mwifiex_fw_chan_stats, ptr %35, i32 0, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr inbounds %struct.mwifiex_fw_chan_stats, ptr %35, i32 0, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr inbounds %struct.mwifiex_fw_chan_stats, ptr %35, i32 0, i32 3
  %48 = load i8, ptr %47, align 1
  %49 = getelementptr inbounds %struct.mwifiex_fw_chan_stats, ptr %35, i32 0, i32 4
  %50 = load i16, ptr %49, align 1
  %51 = getelementptr inbounds %struct.mwifiex_fw_chan_stats, ptr %35, i32 0, i32 5
  %52 = load i16, ptr %51, align 1
  %53 = getelementptr inbounds %struct.mwifiex_fw_chan_stats, ptr %35, i32 0, i32 6
  %54 = load i16, ptr %53, align 1
  %55 = zext i8 %42 to i32
  %56 = sext i8 %48 to i32
  %57 = zext i16 %50 to i32
  %58 = zext i16 %52 to i32
  %59 = zext i16 %54 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %24, i32 noundef 1073741824, ptr noundef nonnull @.str.65, i32 noundef %55, i32 noundef %56, i32 noundef %57, i32 noundef %58, i32 noundef %59) #15
  %60 = load ptr, ptr %32, align 4
  %61 = load i32, ptr %30, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %30, align 4
  %63 = getelementptr %struct.mwifiex_chan_stats, ptr %60, i32 %61
  store i8 %42, ptr %63, align 1
  %64 = getelementptr inbounds i8, ptr %63, i32 1
  store i8 %44, ptr %64, align 1
  %65 = getelementptr inbounds i8, ptr %63, i32 2
  store i8 %46, ptr %65, align 1
  %66 = getelementptr inbounds i8, ptr %63, i32 3
  store i8 %48, ptr %66, align 1
  %67 = getelementptr inbounds i8, ptr %63, i32 4
  store i16 %50, ptr %67, align 1
  %68 = getelementptr inbounds i8, ptr %63, i32 6
  store i16 %52, ptr %68, align 1
  %69 = getelementptr inbounds i8, ptr %63, i32 8
  store i16 %54, ptr %69, align 1
  %70 = getelementptr %struct.mwifiex_fw_chan_stats, ptr %35, i32 1
  %71 = add nuw i8 %36, 1
  %72 = icmp ult i8 %71, %33
  br i1 %72, label %34, label %73

73:                                               ; preds = %41, %40, %23, %20
  %74 = trunc i32 %17 to i16
  %75 = sub i16 %12, %74
  %76 = getelementptr i8, ptr %11, i32 4
  %77 = getelementptr i8, ptr %76, i32 %16
  %78 = icmp ugt i16 %75, 3
  br i1 %78, label %10, label %79

79:                                               ; preds = %73, %19, %2
  %80 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %80) #15
  %81 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %81) #15
  %82 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 68
  %83 = load volatile ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %82
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 66
  br label %87

87:                                               ; preds = %91, %85
  %88 = phi ptr [ %86, %85 ], [ %89, %91 ]
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, %86
  br i1 %90, label %100, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %89, i32 0, i32 4
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 17
  %95 = load ptr, ptr %94, align 4
  %96 = load i16, ptr %95, align 1
  %97 = icmp eq i16 %96, 263
  br i1 %97, label %98, label %87

98:                                               ; preds = %91
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.13) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %81) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %80) #15
  br label %116

99:                                               ; preds = %79
  tail call void @_raw_spin_unlock_bh(ptr noundef %81) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %80) #15
  br label %116

100:                                              ; preds = %87
  tail call void @_raw_spin_unlock_bh(ptr noundef %81) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %80) #15
  %101 = load ptr, ptr %0, align 8
  %102 = getelementptr inbounds %struct.mwifiex_adapter, ptr %101, i32 0, i32 150
  store i32 0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.mwifiex_adapter, ptr %101, i32 0, i32 60
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %104, i32 0, i32 7
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.mwifiex_adapter, ptr %101, i32 0, i32 121, i32 1
  store i32 0, ptr %109, align 4
  %110 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 111
  %111 = load ptr, ptr %110, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %101, i32 noundef 1073741824, ptr noundef nonnull @.str.66) #15
  %114 = load ptr, ptr %103, align 4
  %115 = tail call i32 @mwifiex_complete_cmd(ptr noundef %101, ptr noundef %114) #15
  br label %116

116:                                              ; preds = %113, %108, %100, %99, %98
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_handle_event_ext_scan_report(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %6 = getelementptr inbounds %struct.mwifiex_event_scan_result, ptr %1, i32 0, i32 6
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr i8, ptr %1, i32 11
  %9 = zext i8 %7 to i32
  %10 = icmp ugt i8 %7, 64
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %9) #15
  br label %106

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.mwifiex_event_scan_result, ptr %1, i32 0, i32 5
  %14 = load i16, ptr %13, align 1
  %15 = zext i16 %14 to i32
  store i32 %15, ptr %4, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 1073741824, ptr noundef nonnull @.str.15, i32 noundef %15, i32 noundef %9) #15
  %16 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 131072
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = add nuw nsw i32 %15, 11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %1, i32 noundef %21, i1 noundef zeroext false) #15
  br label %22

22:                                               ; preds = %20, %12
  %23 = icmp ne i8 %7, 0
  %24 = icmp ne i16 %14, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %32, label %106

26:                                               ; preds = %100
  %27 = add nuw nsw i32 %37, 1
  %28 = icmp ult i32 %27, %9
  %29 = load i32, ptr %4, align 4
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %106

32:                                               ; preds = %26, %22
  %33 = phi i32 [ %29, %26 ], [ %15, %22 ]
  %34 = phi i32 [ %103, %26 ], [ 0, %22 ]
  %35 = phi i64 [ %102, %26 ], [ 0, %22 ]
  %36 = phi ptr [ %54, %26 ], [ %8, %22 ]
  %37 = phi i32 [ %27, %26 ], [ 0, %22 ]
  %38 = getelementptr %struct.mwifiex_ie_types_header, ptr %36, i32 0, i32 1
  %39 = load i16, ptr %38, align 1
  %40 = zext i16 %39 to i32
  %41 = add nuw nsw i32 %40, 4
  %42 = icmp ult i32 %33, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 4, ptr noundef nonnull @.str.18) #15
  br label %106

44:                                               ; preds = %32
  %45 = load i16, ptr %36, align 1
  %46 = icmp eq i16 %45, 342
  br i1 %46, label %47, label %106

47:                                               ; preds = %44
  store ptr %36, ptr %3, align 4
  %48 = getelementptr inbounds %struct.mwifiex_ie_types_data, ptr %36, i32 0, i32 1
  %49 = getelementptr i8, ptr %48, i32 %40
  %50 = sub i32 %33, %41
  br label %51

51:                                               ; preds = %79, %47
  %52 = phi i32 [ %85, %79 ], [ %33, %47 ]
  %53 = phi i32 [ %86, %79 ], [ %50, %47 ]
  %54 = phi ptr [ %84, %79 ], [ %49, %47 ]
  %55 = phi ptr [ %60, %79 ], [ %36, %47 ]
  %56 = phi ptr [ %81, %79 ], [ null, %47 ]
  %57 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %54, i32 0, i32 1
  br label %58

58:                                               ; preds = %74, %51
  %59 = phi i32 [ %53, %51 ], [ 0, %74 ]
  %60 = phi ptr [ %55, %51 ], [ null, %74 ]
  %61 = phi ptr [ %56, %51 ], [ %64, %74 ]
  br label %62

62:                                               ; preds = %77, %58
  %63 = phi i32 [ 0, %77 ], [ %59, %58 ]
  %64 = phi ptr [ %54, %77 ], [ %61, %58 ]
  %65 = icmp ugt i32 %63, 3
  br i1 %65, label %66, label %87

66:                                               ; preds = %62
  %67 = load i16, ptr %54, align 1
  %68 = icmp eq i16 %67, 342
  br i1 %68, label %87, label %69

69:                                               ; preds = %66
  %70 = load i16, ptr %57, align 1
  %71 = zext i16 %70 to i32
  %72 = add nuw nsw i32 %71, 4
  %73 = icmp ult i32 %63, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 4, ptr noundef nonnull @.str.19) #15
  br label %58

75:                                               ; preds = %69
  %76 = icmp eq i16 %67, 343
  br i1 %76, label %77, label %79

77:                                               ; preds = %75
  %78 = icmp eq i16 %70, 16
  br i1 %78, label %79, label %62

79:                                               ; preds = %77, %75
  %80 = phi i16 [ 16, %77 ], [ %70, %75 ]
  %81 = phi ptr [ %54, %77 ], [ %64, %75 ]
  %82 = zext i16 %80 to i32
  %83 = getelementptr inbounds %struct.mwifiex_ie_types_data, ptr %54, i32 0, i32 1
  %84 = getelementptr i8, ptr %83, i32 %82
  %85 = sub i32 %52, %72
  store i32 %85, ptr %4, align 4
  %86 = sub i32 %63, %72
  br label %51

87:                                               ; preds = %66, %62
  %88 = icmp eq ptr %60, null
  br i1 %88, label %106, label %89

89:                                               ; preds = %87
  store ptr %38, ptr %3, align 4
  %90 = add i32 %52, -2
  store i32 %90, ptr %4, align 4
  %91 = icmp eq ptr %64, null
  br i1 %91, label %100, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.mwifiex_ie_types_bss_scan_info, ptr %64, i32 0, i32 1
  %94 = load i16, ptr %93, align 1
  %95 = sext i16 %94 to i32
  %96 = mul nsw i32 %95, 100
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 1073741824, ptr noundef nonnull @.str.20, i32 noundef %96) #15
  %97 = getelementptr inbounds %struct.mwifiex_ie_types_bss_scan_info, ptr %64, i32 0, i32 7
  %98 = load i64, ptr %97, align 1
  %99 = getelementptr inbounds %struct.mwifiex_ie_types_bss_scan_info, ptr %64, i32 0, i32 4
  br label %100

100:                                              ; preds = %92, %89
  %101 = phi ptr [ %99, %92 ], [ null, %89 ]
  %102 = phi i64 [ %98, %92 ], [ %35, %89 ]
  %103 = phi i32 [ %96, %92 ], [ %34, %89 ]
  %104 = call fastcc i32 @mwifiex_parse_single_response_buf(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, i64 noundef %102, ptr noundef %101, i1 noundef zeroext true, i32 noundef %103)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %26, label %106

106:                                              ; preds = %100, %87, %44, %43, %26, %22, %11
  %107 = phi i32 [ -1, %11 ], [ 0, %43 ], [ 0, %22 ], [ %104, %100 ], [ 0, %87 ], [ 0, %44 ], [ 0, %26 ]
  %108 = getelementptr inbounds %struct.mwifiex_event_scan_result, ptr %1, i32 0, i32 3
  %109 = load i8, ptr %108, align 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  tail call fastcc void @mwifiex_check_next_scan_command(ptr noundef %0)
  br label %112

112:                                              ; preds = %111, %106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @mwifiex_cmd_802_11_bg_scan_query(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4
  store i16 108, ptr %0, align 1
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 1
  store i16 9, ptr %3, align 1
  store i8 1, ptr %2, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_queue_scan_cmd(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 7
  store i32 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 122
  %6 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 9
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 68
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 68, i32 1
  %10 = load ptr, ptr %9, align 4
  store ptr %1, ptr %9, align 4
  store ptr %8, ptr %1, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %1, ptr %10, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_request_scan(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 110
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef %3) #15
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr %0, align 8
  br i1 %5, label %8, label %7

7:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 4, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.mwifiex_request_scan) #15
  br label %38

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %6, i32 0, i32 122
  store i8 0, ptr %9, align 4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.cfg80211_ssid, ptr %1, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 73
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 536870912, ptr noundef nonnull @.str.2) #15
  br label %36

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 114
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 536870912, ptr noundef nonnull @.str.3) #15
  br label %36

26:                                               ; preds = %21
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 422) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %28, i32 0, i32 4
  store ptr %1, ptr %31, align 1
  %32 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %28, i32 0, i32 5
  store i8 1, ptr %32, align 1
  %33 = tail call i32 @mwifiex_scan_networks(ptr noundef %0, ptr noundef nonnull %28) #15
  tail call void @kfree(ptr noundef nonnull %28) #15
  br label %36

34:                                               ; preds = %11, %8
  %35 = tail call i32 @mwifiex_scan_networks(ptr noundef %0, ptr noundef null)
  br label %36

36:                                               ; preds = %34, %30, %26, %25, %20
  %37 = phi i32 [ %35, %34 ], [ -16, %20 ], [ -16, %25 ], [ %33, %30 ], [ -12, %26 ]
  tail call void @mutex_unlock(ptr noundef %3) #15
  br label %38

38:                                               ; preds = %36, %7
  %39 = phi i32 [ -1, %7 ], [ %37, %36 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_save_curr_bcn(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 56
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %109, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 100
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 101
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, %3
  br i1 %12, label %20, label %13

13:                                               ; preds = %9, %5
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 101
  store i32 %3, ptr %14, align 8
  tail call void @kfree(ptr noundef %7) #15
  %15 = load i32, ptr %2, align 4
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 2592) #17
  store ptr %16, ptr %6, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %109, label %18

18:                                               ; preds = %13
  %19 = load i32, ptr %2, align 4
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi i32 [ %19, %18 ], [ %3, %9 ]
  %22 = phi ptr [ %16, %18 ], [ %7, %9 ]
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 55
  %24 = load ptr, ptr %23, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %22, ptr align 1 %24, i32 %21, i1 false)
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 101
  %27 = load i32, ptr %26, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %25, i32 noundef 1073741824, ptr noundef nonnull @.str.23, i32 noundef %27) #15
  %28 = load ptr, ptr %6, align 4
  store ptr %28, ptr %23, align 8
  %29 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 46
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 47
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  %36 = getelementptr i8, ptr %28, i32 %35
  store ptr %36, ptr %29, align 8
  br label %37

37:                                               ; preds = %32, %20
  %38 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 49
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 50
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i32
  %45 = getelementptr i8, ptr %28, i32 %44
  store ptr %45, ptr %38, align 8
  br label %46

46:                                               ; preds = %41, %37
  %47 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 24
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 25
  %52 = load i16, ptr %51, align 4
  %53 = zext i16 %52 to i32
  %54 = getelementptr i8, ptr %28, i32 %53
  store ptr %54, ptr %47, align 8
  br label %55

55:                                               ; preds = %50, %46
  %56 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 27
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 28
  %61 = load i16, ptr %60, align 4
  %62 = zext i16 %61 to i32
  %63 = getelementptr i8, ptr %28, i32 %62
  store ptr %63, ptr %56, align 8
  br label %64

64:                                               ; preds = %59, %55
  %65 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 36
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 37
  %70 = load i16, ptr %69, align 4
  %71 = zext i16 %70 to i32
  %72 = getelementptr i8, ptr %28, i32 %71
  store ptr %72, ptr %65, align 8
  br label %73

73:                                               ; preds = %68, %64
  %74 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 39
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 40
  %79 = load i16, ptr %78, align 4
  %80 = zext i16 %79 to i32
  %81 = getelementptr i8, ptr %28, i32 %80
  store ptr %81, ptr %74, align 8
  br label %82

82:                                               ; preds = %77, %73
  %83 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 30
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 31
  %88 = load i16, ptr %87, align 4
  %89 = zext i16 %88 to i32
  %90 = getelementptr i8, ptr %28, i32 %89
  store ptr %90, ptr %83, align 8
  br label %91

91:                                               ; preds = %86, %82
  %92 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 33
  %93 = load ptr, ptr %92, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 34
  %97 = load i16, ptr %96, align 4
  %98 = zext i16 %97 to i32
  %99 = getelementptr i8, ptr %28, i32 %98
  store ptr %99, ptr %92, align 8
  br label %100

100:                                              ; preds = %95, %91
  %101 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 42
  %102 = load ptr, ptr %101, align 8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 43
  %106 = load i16, ptr %105, align 4
  %107 = zext i16 %106 to i32
  %108 = getelementptr i8, ptr %28, i32 %107
  store ptr %108, ptr %101, align 8
  br label %109

109:                                              ; preds = %104, %100, %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_free_curr_bcn(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 100
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #15
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_fill_cap_info(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_rates_from_cfg80211(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_supported_rates(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mwifiex_is_bss_wpa(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 4
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 46
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %14
  %19 = load i8, ptr %16, align 1
  %20 = icmp eq i8 %19, -35
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 49
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i8, ptr %24, align 1
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i32 [ %28, %26 ], [ 0, %21 ]
  %31 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 3
  %34 = load i32, ptr %33, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %22, i32 noundef 1073741824, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.mwifiex_is_bss_wpa, i32 noundef 221, i32 noundef %30, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %32, i32 noundef %34) #15
  br label %35

35:                                               ; preds = %29, %18, %14, %10, %6, %2
  %36 = phi i1 [ true, %29 ], [ false, %18 ], [ false, %10 ], [ false, %6 ], [ false, %2 ], [ false, %14 ]
  ret i1 %36
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc zeroext i8 @mwifiex_is_wpa_oui_present(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %0, i32 0, i32 46
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %4, align 1
  %8 = icmp eq i8 %7, -35
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = getelementptr [2 x [4 x i8]], ptr @mwifiex_wpa_oui, i32 0, i32 %1
  %11 = getelementptr %struct.ieee_types_vendor_specific, ptr %4, i32 0, i32 1, i32 6
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.ieee_types_vendor_specific, ptr %4, i32 0, i32 1, i32 2
  br label %16

16:                                               ; preds = %22, %14
  %17 = phi i8 [ %23, %22 ], [ %12, %14 ]
  %18 = phi ptr [ %26, %22 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.ie_body, ptr %18, i32 0, i32 2
  %20 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %19, ptr noundef dereferenceable(4) %10, i32 4) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = add i8 %17, -1
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i32 0, i32 4
  %26 = getelementptr i8, ptr %18, i32 %25
  br i1 %24, label %27, label %16

27:                                               ; preds = %22, %16, %9, %6, %2
  %28 = phi i8 [ 0, %6 ], [ 0, %2 ], [ 0, %9 ], [ 0, %22 ], [ 1, %16 ]
  ret i8 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mwifiex_is_bss_wpa2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 4
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 49
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %14
  %19 = load i8, ptr %16, align 1
  %20 = icmp eq i8 %19, 48
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 46
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i8, ptr %24, align 1
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i32 [ %28, %26 ], [ 0, %21 ]
  %31 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 3
  %34 = load i32, ptr %33, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %22, i32 noundef 1073741824, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.mwifiex_is_bss_wpa2, i32 noundef %30, i32 noundef 48, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef %32, i32 noundef %34) #15
  br label %35

35:                                               ; preds = %29, %18, %14, %10, %6, %2
  %36 = phi i1 [ true, %29 ], [ false, %18 ], [ false, %10 ], [ false, %6 ], [ false, %2 ], [ false, %14 ]
  ret i1 %36
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc zeroext i8 @mwifiex_is_rsn_oui_present(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %0, i32 0, i32 49
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %4, align 1
  %8 = icmp eq i8 %7, 48
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = getelementptr [2 x [4 x i8]], ptr @mwifiex_rsn_oui, i32 0, i32 %1
  %11 = getelementptr %struct.ieee_types_generic, ptr %4, i32 0, i32 1, i32 6
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.ieee_types_generic, ptr %4, i32 0, i32 1, i32 2
  br label %16

16:                                               ; preds = %22, %14
  %17 = phi i8 [ %23, %22 ], [ %12, %14 ]
  %18 = phi ptr [ %26, %22 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.ie_body, ptr %18, i32 0, i32 2
  %20 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %19, ptr noundef dereferenceable(4) %10, i32 4) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = add i8 %17, -1
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i32 0, i32 4
  %26 = getelementptr i8, ptr %18, i32 %25
  br i1 %24, label %27, label %16

27:                                               ; preds = %22, %16, %9, %6, %2
  %28 = phi i8 [ 0, %6 ], [ 0, %2 ], [ 0, %9 ], [ 0, %22 ], [ 1, %16 ]
  ret i8 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @mwifiex_is_bss_adhoc_aes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 4
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %36

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 46
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i8, ptr %16, align 1
  %20 = icmp eq i8 %19, -35
  br i1 %20, label %36, label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 49
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i8, ptr %23, align 1
  %27 = icmp eq i8 %26, 48
  br i1 %27, label %36, label %28

28:                                               ; preds = %25, %21
  %29 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 3
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %28, %25, %18, %10, %6, %2
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i1 [ false, %36 ], [ true, %32 ]
  ret i1 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mwifiex_is_bss_dynamic_wep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 4
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 46
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i8, ptr %16, align 1
  %20 = icmp eq i8 %19, -35
  br i1 %20, label %37, label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 49
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i8, ptr %23, align 1
  %27 = icmp eq i8 %26, 48
  br i1 %27, label %37, label %28

28:                                               ; preds = %25, %21
  %29 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 3
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call fastcc void @_dbg_security_flags(i32 noundef 1073741824, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.mwifiex_is_bss_dynamic_wep, ptr noundef %0, ptr noundef %1)
  br label %37

37:                                               ; preds = %36, %32, %28, %25, %18, %10, %6, %2
  %38 = phi i1 [ true, %36 ], [ false, %32 ], [ false, %28 ], [ false, %25 ], [ false, %18 ], [ false, %10 ], [ false, %6 ], [ false, %2 ]
  ret i1 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_dbg_security_flags(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #2 {
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %4, i32 0, i32 46
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load i8, ptr %8, align 1
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi i32 [ %12, %10 ], [ 0, %5 ]
  %15 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %4, i32 0, i32 49
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i8, ptr %16, align 1
  %20 = zext i8 %19 to i32
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %20, %18 ], [ 0, %13 ]
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 60
  %24 = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 60, i32 4
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %26, ptr @.str.46, ptr @.str.45
  %28 = load i8, ptr %23, align 4
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, ptr @.str.46, ptr @.str.45
  %31 = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 60, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, ptr @.str.46, ptr @.str.45
  %35 = getelementptr inbounds %struct.mwifiex_private, ptr %3, i32 0, i32 60, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %4, i32 0, i32 3
  %38 = load i32, ptr %37, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef %0, ptr noundef nonnull @.str.44, ptr noundef %1, ptr noundef %2, i32 noundef %14, i32 noundef %22, ptr noundef nonnull %27, ptr noundef nonnull %30, ptr noundef nonnull %34, i32 noundef %36, i32 noundef %38) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_update_curr_bss_params(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 256) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @mwifiex_fill_new_bss_desc(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = tail call i32 @mwifiex_check_network_compatibility(ptr noundef %0, ptr noundef nonnull %4)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 102
  tail call void @_raw_spin_lock_bh(ptr noundef %13) #15
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(256) %14, ptr noundef nonnull align 8 dereferenceable(256) %4, i32 256, i1 false)
  tail call void @mwifiex_save_curr_bcn(ptr noundef %0)
  tail call void @_raw_spin_unlock_bh(ptr noundef %13) #15
  br label %15

15:                                               ; preds = %12, %9, %6
  %16 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %4, i32 0, i32 55
  %17 = load ptr, ptr %16, align 8
  tail call void @kfree(ptr noundef %17) #15
  tail call void @kfree(ptr noundef nonnull %4) #15
  br label %18

18:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_save_hidden_ssid_channels(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 256) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @mwifiex_fill_new_bss_desc(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %4, i32 0, i32 1
  %11 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %4, i32 0, i32 1, i32 1
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %9
  %16 = load i8, ptr %10, align 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %22, %15
  %19 = phi i32 [ %20, %22 ], [ 0, %15 ]
  %20 = add nuw nsw i32 %19, 1
  %21 = icmp eq i32 %20, %13
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr [32 x i8], ptr %10, i32 0, i32 %20
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %18, label %26

26:                                               ; preds = %22, %18
  %27 = icmp ult i32 %20, %13
  br i1 %27, label %51, label %28

28:                                               ; preds = %26, %9
  %29 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %29, i32 noundef 1073741824, ptr noundef nonnull @.str.59) #15
  %30 = load ptr, ptr %1, align 4
  %31 = getelementptr inbounds %struct.ieee80211_channel, ptr %30, i32 0, i32 3
  %32 = load i16, ptr %31, align 2
  br label %33

33:                                               ; preds = %48, %28
  %34 = phi i32 [ 0, %28 ], [ %49, %48 ]
  %35 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 161, i32 %34
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i16
  %38 = icmp eq i16 %32, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = icmp eq i8 %36, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %39
  %42 = trunc i16 %32 to i8
  store i8 %42, ptr %35, align 4
  %43 = load ptr, ptr %1, align 4
  %44 = load i32, ptr %43, align 4
  %45 = trunc i32 %44 to i8
  %46 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 161, i32 %34, i32 1
  store i8 %45, ptr %46, align 1
  %47 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 161, i32 %34, i32 2
  store i8 1, ptr %47, align 2
  br label %51

48:                                               ; preds = %39
  %49 = add nuw nsw i32 %34, 1
  %50 = icmp eq i32 %49, 50
  br i1 %50, label %51, label %33

51:                                               ; preds = %48, %41, %33, %26, %15, %6
  %52 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %4, i32 0, i32 55
  %53 = load ptr, ptr %52, align 8
  tail call void @kfree(ptr noundef %53) #15
  tail call void @kfree(ptr noundef nonnull %4) #15
  br label %54

54:                                               ; preds = %51, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_fill_new_bss_desc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_complete_cmd(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

attributes #0 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }

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
