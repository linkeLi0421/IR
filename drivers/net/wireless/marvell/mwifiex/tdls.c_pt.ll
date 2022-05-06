; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/tdls.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/tdls.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ieee80211_tdls_lnkie = type { i8, i8, [6 x i8], [6 x i8], [6 x i8] }
%struct.ieee80211_tdls_data = type { [6 x i8], [6 x i8], i16, i8, i8, i8, %union.anon.148 }
%union.anon.148 = type <{ %struct.anon.152, [3 x i8] }>
%struct.anon.152 = type { i16, [0 x i8] }
%struct.anon.149 = type <{ i8, i16, [0 x i8] }>
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_bss_co_2040 = type { %struct.ieee_types_header, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_wmm_param_ie = type { i8, i8, [3 x i8], i8, i8, i8, i8, i8, [4 x %struct.ieee80211_wmm_ac_param] }
%struct.ieee80211_wmm_ac_param = type { i8, i8, i16 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.157 }
%union.anon.157 = type { %struct.anon.163, [16 x i8] }
%struct.anon.163 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.170 = type { i8, %union.anon.171 }
%union.anon.171 = type <{ %struct.anon.176, [17 x i8] }>
%struct.anon.176 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.mwifiex_ds_tdls_oper = type { i16, [6 x i8], i16, i8, ptr, i8, ptr, i8, ptr }
%struct.mwifiex_tdls_config_cs_params = type { i8, i8, i8 }
%struct.mwifiex_tdls_config = type { i16 }
%struct.mwifiex_auto_tdls_peer = type { %struct.list_head, [6 x i8], i8, i32, i32, i8, i8, i8 }
%struct.mwifiex_ra_list_tbl = type { %struct.list_head, %struct.sk_buff_head, [6 x i8], i32, i16, i16, i8, i32, i8, i16, i8, i8 }
%struct.tdls_peer_info = type { [6 x i8] }
%struct.mwifiex_tdls_stop_cs_params = type { [6 x i8] }
%struct.mwifiex_tdls_init_cs_params = type <{ [6 x i8], i8, i8, i8, i16, i16, i8, i8 }>

@.str = private unnamed_addr constant [42 x i8] c"allocate skb failed for management frame\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"rx:tdls action: peer=%pM, action=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unknown TDLS frame type.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Disable link failed for TDLS peer %pM\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"setup TDLS link, peer=%pM rssi=%d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.5 = private unnamed_addr constant [33 x i8] c"Add auto TDLS peer= %pM to list\0A\00", align 1
@mwifiex_check_auto_tdls.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"drivers/net/wireless/marvell/mwifiex/tdls.c\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"\013mwifiex: mwifiex: %s: adapter or private structure is NULL\0A\00", align 1
@__func__.mwifiex_check_auto_tdls = private unnamed_addr constant [24 x i8] c"mwifiex_check_auto_tdls\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"auto TDLS timer inactive; return\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"teardown TDLS link,peer=%pM rssi=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"check TDLS with peer=%pM\09rssi=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Insufficient space while adding rates\0A\00", align 1
@__const.mwifiex_tdls_add_oper_class.rc_list = private unnamed_addr constant [16 x i8] c"\01\01\02\03\04\0C\16\17\18\19\1B\1C\1D\1E !", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"TDLS peer station not found in list\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"TDLS peer doesn't support vht capabilities\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"TDLS peer doesn't support wider bandwidth\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"TDLS peer doesn't support ht capabilities\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Unknown TDLS action frame type\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"tdls: enable link %pM success\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"tdls: enable link %pM failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"Setup already in progress for peer %pM\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"%s: %pM\0A\00", align 1
@__func__.mwifiex_hold_tdls_packets = private unnamed_addr constant [26 x i8] c"mwifiex_hold_tdls_packets\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"link absent for peer %pM; cannot config\0A\00", align 1
@__func__.mwifiex_restore_tdls_packets = private unnamed_addr constant [29 x i8] c"mwifiex_restore_tdls_packets\00", align 1
@tos_to_tid_inv = external dso_local local_unnamed_addr constant [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_send_tdls_data_frame(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, ptr nocapture noundef readonly %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %8, i32 0, i32 128
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 304, i32 329
  %13 = add i32 %12, %6
  %14 = and i32 %13, 65535
  %15 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %14, i32 noundef 2592) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %7
  %18 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %18, i32 noundef 4, ptr noundef nonnull @.str) #9
  br label %77

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 100
  store ptr %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 14
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr i8, ptr %24, i32 100
  store ptr %25, ptr %23, align 8
  switch i8 %2, label %59 [
    i8 0, label %26
    i8 2, label %26
    i8 3, label %26
    i8 10, label %26
    i8 1, label %34
  ]

26:                                               ; preds = %19, %19, %19, %19
  %27 = tail call fastcc i32 @mwifiex_prep_tdls_encap_data(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef nonnull %15)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %15, i32 noundef 1) #9
  br label %77

30:                                               ; preds = %26
  %31 = icmp eq i32 %6, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %30
  %33 = tail call ptr @skb_put(ptr noundef nonnull %15, i32 noundef %6) #9
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %33, ptr align 1 %5, i32 %6, i1 false) #9
  br label %50

34:                                               ; preds = %19
  %35 = tail call fastcc i32 @mwifiex_prep_tdls_encap_data(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef nonnull %15)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %15, i32 noundef 1) #9
  br label %77

38:                                               ; preds = %34
  %39 = icmp eq i32 %6, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %38
  %41 = tail call ptr @skb_put(ptr noundef nonnull %15, i32 noundef %6) #9
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %41, ptr align 1 %5, i32 %6, i1 false) #9
  br label %42

42:                                               ; preds = %40, %38
  %43 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 7
  %44 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 112
  %45 = tail call ptr @skb_put(ptr noundef nonnull %15, i32 noundef 20) #9
  store i8 101, ptr %45, align 1
  %46 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %45, i32 0, i32 1
  store i8 18, ptr %46, align 1
  %47 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %45, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %47, ptr noundef align 1 dereferenceable(6) %44, i32 6, i1 false) #9
  %48 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %45, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %48, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #9
  %49 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %45, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %49, ptr noundef align 1 dereferenceable(6) %43, i32 6, i1 false) #9
  br label %60

50:                                               ; preds = %32, %30
  %51 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 7
  %52 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 112
  %53 = tail call ptr @skb_put(ptr noundef nonnull %15, i32 noundef 20) #9
  store i8 101, ptr %53, align 1
  %54 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %53, i32 0, i32 1
  store i8 18, ptr %54, align 1
  %55 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %53, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %55, ptr noundef align 1 dereferenceable(6) %52, i32 6, i1 false) #9
  %56 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %53, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %56, ptr noundef align 1 dereferenceable(6) %51, i32 6, i1 false) #9
  %57 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %53, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %57, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #9
  %58 = icmp ult i8 %2, 2
  br i1 %58, label %60, label %59

59:                                               ; preds = %50, %19
  br label %60

60:                                               ; preds = %59, %50, %42
  %61 = phi i32 [ 5, %59 ], [ 2, %42 ], [ 2, %50 ]
  %62 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 13, i32 0, i32 5
  store i32 %61, ptr %62, align 8
  %63 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %63, i8 0, i32 24, i1 false)
  %64 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 4
  %65 = load i8, ptr %64, align 1
  %66 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 13
  store i8 %65, ptr %66, align 1
  %67 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 1
  %68 = load i8, ptr %67, align 4
  %69 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 14
  store i8 %68, ptr %69, align 2
  %70 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #9
  %71 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 2
  store i64 %70, ptr %71, align 8
  %72 = tail call i32 @mwifiex_queue_tx_pkt(ptr noundef %0, ptr noundef nonnull %15) #9
  %73 = and i8 %2, -2
  %74 = icmp eq i8 %73, 2
  br i1 %74, label %75, label %77

75:                                               ; preds = %60
  %76 = tail call i32 @msleep_interruptible(i32 noundef 10) #9
  br label %77

77:                                               ; preds = %75, %60, %37, %29, %17
  %78 = phi i32 [ %35, %37 ], [ %27, %29 ], [ -12, %17 ], [ 0, %60 ], [ 0, %75 ]
  ret i32 %78
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_prep_tdls_encap_data(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 20
  %8 = load i16, ptr %7, align 8
  %9 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 17) #9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %9, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false)
  %10 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %10, ptr noundef align 2 dereferenceable(6) %11, i32 6, i1 false)
  %12 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 2
  store i16 3465, ptr %12, align 1
  %13 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 3
  store i8 2, ptr %13, align 1
  switch i8 %2, label %338 [
    i8 0, label %14
    i8 1, label %73
    i8 2, label %133
    i8 3, label %328
    i8 10, label %333
  ]

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 4
  store i8 12, ptr %15, align 1
  %16 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 5
  store i8 0, ptr %16, align 1
  %17 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 3) #9
  %18 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 6
  store i8 %3, ptr %18, align 1
  %19 = getelementptr inbounds %struct.anon.149, ptr %18, i32 0, i32 1
  store i16 %8, ptr %19, align 1
  %20 = tail call fastcc i32 @mwifiex_tdls_append_rates_ie(ptr noundef %0, ptr noundef %5)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  tail call void @__dev_kfree_skb_any(ptr noundef %5, i32 noundef 1) #9
  br label %340

23:                                               ; preds = %14
  %24 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 28) #9
  %25 = getelementptr i8, ptr %24, i32 1
  store i8 45, ptr %24, align 1
  %26 = getelementptr i8, ptr %24, i32 2
  store i8 26, ptr %25, align 1
  %27 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 3
  %28 = load i8, ptr %27, align 2
  %29 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %28) #9
  %30 = tail call i32 @mwifiex_fill_cap_info(ptr noundef %0, i8 noundef zeroext %29, ptr noundef %26) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  tail call void @__dev_kfree_skb_any(ptr noundef %5, i32 noundef 1) #9
  br label %340

33:                                               ; preds = %23
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr inbounds %struct.mwifiex_adapter, ptr %34, i32 0, i32 128
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  tail call fastcc void @mwifiex_tdls_add_vht_capab(ptr noundef %0, ptr noundef %5)
  %39 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 4) #9
  %40 = getelementptr i8, ptr %39, i32 1
  store i8 -59, ptr %39, align 1
  %41 = getelementptr i8, ptr %39, i32 2
  store i8 2, ptr %40, align 1
  %42 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 91, i32 4
  %43 = load i16, ptr %42, align 1
  store i16 %43, ptr %41, align 1
  br label %44

44:                                               ; preds = %38, %33
  %45 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 10) #9
  store i8 127, ptr %45, align 1
  %46 = getelementptr inbounds %struct.ieee_types_header, ptr %45, i32 0, i32 1
  store i8 8, ptr %46, align 1
  %47 = getelementptr inbounds %struct.ieee_types_extcap, ptr %45, i32 0, i32 1
  store i64 138512695296, ptr %47, align 1
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr inbounds %struct.mwifiex_adapter, ptr %48, i32 0, i32 128
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = getelementptr %struct.ieee_types_extcap, ptr %45, i32 0, i32 1, i32 7
  store i8 32, ptr %53, align 1
  br label %54

54:                                               ; preds = %52, %44
  %55 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 3) #9
  store i8 72, ptr %55, align 1
  %56 = getelementptr inbounds %struct.ieee_types_header, ptr %55, i32 0, i32 1
  store i8 1, ptr %56, align 1
  %57 = getelementptr inbounds %struct.ieee_types_bss_co_2040, ptr %55, i32 0, i32 1
  store i8 1, ptr %57, align 1
  %58 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 4) #9
  store i8 36, ptr %58, align 1
  %59 = getelementptr inbounds %struct.ieee_types_header, ptr %58, i32 0, i32 1
  store i8 2, ptr %59, align 1
  %60 = getelementptr inbounds %struct.ieee_types_generic, ptr %58, i32 0, i32 1
  store i16 2817, ptr %60, align 1
  %61 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 18) #9
  store i8 59, ptr %61, align 1
  %62 = getelementptr inbounds %struct.ieee_types_header, ptr %61, i32 0, i32 1
  store i8 16, ptr %62, align 1
  %63 = getelementptr inbounds %struct.ieee_types_generic, ptr %61, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %63, ptr noundef nonnull align 1 dereferenceable(16) @__const.mwifiex_tdls_add_oper_class.rc_list, i32 16, i1 false) #9
  %64 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 9) #9
  %65 = getelementptr i8, ptr %64, i32 1
  store i8 -35, ptr %64, align 1
  %66 = getelementptr i8, ptr %64, i32 2
  store i8 7, ptr %65, align 1
  %67 = getelementptr i8, ptr %64, i32 3
  store i8 0, ptr %66, align 1
  %68 = getelementptr i8, ptr %64, i32 4
  store i8 80, ptr %67, align 1
  %69 = getelementptr i8, ptr %64, i32 5
  store i8 -14, ptr %68, align 1
  %70 = getelementptr i8, ptr %64, i32 6
  store i8 2, ptr %69, align 1
  %71 = getelementptr i8, ptr %64, i32 7
  store i8 0, ptr %70, align 1
  %72 = getelementptr i8, ptr %64, i32 8
  store i8 1, ptr %71, align 1
  store i8 0, ptr %72, align 1
  br label %340

73:                                               ; preds = %6
  %74 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 4
  store i8 12, ptr %74, align 1
  %75 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 5
  store i8 1, ptr %75, align 1
  %76 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 5) #9
  %77 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 6
  store i16 %4, ptr %77, align 1
  %78 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 6, i32 1
  store i8 %3, ptr %78, align 1
  %79 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 6, i32 1, i32 1
  store i16 %8, ptr %79, align 1
  %80 = tail call fastcc i32 @mwifiex_tdls_append_rates_ie(ptr noundef %0, ptr noundef %5)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  tail call void @__dev_kfree_skb_any(ptr noundef %5, i32 noundef 1) #9
  br label %340

83:                                               ; preds = %73
  %84 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 28) #9
  %85 = getelementptr i8, ptr %84, i32 1
  store i8 45, ptr %84, align 1
  %86 = getelementptr i8, ptr %84, i32 2
  store i8 26, ptr %85, align 1
  %87 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 3
  %88 = load i8, ptr %87, align 2
  %89 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %88) #9
  %90 = tail call i32 @mwifiex_fill_cap_info(ptr noundef %0, i8 noundef zeroext %89, ptr noundef %86) #9
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %83
  tail call void @__dev_kfree_skb_any(ptr noundef %5, i32 noundef 1) #9
  br label %340

93:                                               ; preds = %83
  %94 = load ptr, ptr %0, align 8
  %95 = getelementptr inbounds %struct.mwifiex_adapter, ptr %94, i32 0, i32 128
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  tail call fastcc void @mwifiex_tdls_add_vht_capab(ptr noundef %0, ptr noundef %5)
  %99 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 4) #9
  %100 = getelementptr i8, ptr %99, i32 1
  store i8 -59, ptr %99, align 1
  %101 = getelementptr i8, ptr %99, i32 2
  store i8 2, ptr %100, align 1
  %102 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 91, i32 4
  %103 = load i16, ptr %102, align 1
  store i16 %103, ptr %101, align 1
  br label %104

104:                                              ; preds = %98, %93
  %105 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 10) #9
  store i8 127, ptr %105, align 1
  %106 = getelementptr inbounds %struct.ieee_types_header, ptr %105, i32 0, i32 1
  store i8 8, ptr %106, align 1
  %107 = getelementptr inbounds %struct.ieee_types_extcap, ptr %105, i32 0, i32 1
  store i64 138512695296, ptr %107, align 1
  %108 = load ptr, ptr %0, align 8
  %109 = getelementptr inbounds %struct.mwifiex_adapter, ptr %108, i32 0, i32 128
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %104
  %113 = getelementptr %struct.ieee_types_extcap, ptr %105, i32 0, i32 1, i32 7
  store i8 32, ptr %113, align 1
  br label %114

114:                                              ; preds = %112, %104
  %115 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 3) #9
  store i8 72, ptr %115, align 1
  %116 = getelementptr inbounds %struct.ieee_types_header, ptr %115, i32 0, i32 1
  store i8 1, ptr %116, align 1
  %117 = getelementptr inbounds %struct.ieee_types_bss_co_2040, ptr %115, i32 0, i32 1
  store i8 1, ptr %117, align 1
  %118 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 4) #9
  store i8 36, ptr %118, align 1
  %119 = getelementptr inbounds %struct.ieee_types_header, ptr %118, i32 0, i32 1
  store i8 2, ptr %119, align 1
  %120 = getelementptr inbounds %struct.ieee_types_generic, ptr %118, i32 0, i32 1
  store i16 2817, ptr %120, align 1
  %121 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 18) #9
  store i8 59, ptr %121, align 1
  %122 = getelementptr inbounds %struct.ieee_types_header, ptr %121, i32 0, i32 1
  store i8 16, ptr %122, align 1
  %123 = getelementptr inbounds %struct.ieee_types_generic, ptr %121, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %123, ptr noundef nonnull align 1 dereferenceable(16) @__const.mwifiex_tdls_add_oper_class.rc_list, i32 16, i1 false) #9
  %124 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 9) #9
  %125 = getelementptr i8, ptr %124, i32 1
  store i8 -35, ptr %124, align 1
  %126 = getelementptr i8, ptr %124, i32 2
  store i8 7, ptr %125, align 1
  %127 = getelementptr i8, ptr %124, i32 3
  store i8 0, ptr %126, align 1
  %128 = getelementptr i8, ptr %124, i32 4
  store i8 80, ptr %127, align 1
  %129 = getelementptr i8, ptr %124, i32 5
  store i8 -14, ptr %128, align 1
  %130 = getelementptr i8, ptr %124, i32 6
  store i8 2, ptr %129, align 1
  %131 = getelementptr i8, ptr %124, i32 7
  store i8 0, ptr %130, align 1
  %132 = getelementptr i8, ptr %124, i32 8
  store i8 1, ptr %131, align 1
  store i8 0, ptr %132, align 1
  br label %340

133:                                              ; preds = %6
  %134 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 4
  store i8 12, ptr %134, align 1
  %135 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 5
  store i8 2, ptr %135, align 1
  %136 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 3) #9
  %137 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 6
  store i16 %4, ptr %137, align 1
  %138 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 6, i32 1
  store i8 %3, ptr %138, align 1
  %139 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 26) #9
  %140 = getelementptr inbounds i8, ptr %139, i32 9
  store i8 0, ptr %140, align 1
  store i8 -35, ptr %139, align 1
  %141 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %139, i32 0, i32 1
  store i8 24, ptr %141, align 1
  %142 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %139, i32 0, i32 2
  store i8 0, ptr %142, align 1
  %143 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %139, i32 0, i32 2, i32 1
  store i8 80, ptr %143, align 1
  %144 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %139, i32 0, i32 2, i32 2
  store i8 -14, ptr %144, align 1
  %145 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %139, i32 0, i32 3
  store i8 2, ptr %145, align 1
  %146 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %139, i32 0, i32 4
  store i8 1, ptr %146, align 1
  %147 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %139, i32 0, i32 5
  store i8 1, ptr %147, align 1
  %148 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %139, i32 0, i32 6
  store i8 0, ptr %148, align 1
  %149 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %139, i32 0, i32 8
  store i32 41987, ptr %149, align 1
  %150 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %139, i32 0, i32 8, i32 1
  store i32 42023, ptr %150, align 1
  %151 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %139, i32 0, i32 8, i32 2
  store i32 6177602, ptr %151, align 1
  %152 = getelementptr %struct.ieee80211_wmm_param_ie, ptr %139, i32 0, i32 8, i32 3
  store i32 3093090, ptr %152, align 1
  %153 = load ptr, ptr %0, align 8
  %154 = getelementptr inbounds %struct.mwifiex_adapter, ptr %153, i32 0, i32 128
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %324, label %157

157:                                              ; preds = %133
  %158 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %1) #9
  %159 = icmp eq ptr %158, null
  br i1 %159, label %319, label %160, !prof !8

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %158, i32 0, i32 10, i32 11
  %162 = load i32, ptr %161, align 2
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %153, i32 noundef 536870912, ptr noundef nonnull @.str.13) #9
  br label %320

165:                                              ; preds = %160
  %166 = tail call zeroext i1 @mwifiex_is_bss_in_11ac_mode(ptr noundef %0) #9
  br i1 %166, label %173, label %167

167:                                              ; preds = %165
  %168 = getelementptr %struct.mwifiex_sta_node, ptr %158, i32 0, i32 10, i32 9, i32 1, i32 7
  %169 = load i8, ptr %168, align 1
  %170 = and i8 %169, 32
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %167
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %153, i32 noundef 536870912, ptr noundef nonnull @.str.14) #9
  br label %320

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 36
  %175 = load ptr, ptr %174, align 8
  br label %176

176:                                              ; preds = %173, %167
  %177 = phi ptr [ %175, %173 ], [ null, %167 ]
  %178 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 7) #9
  %179 = getelementptr i8, ptr %178, i32 1
  store i8 -64, ptr %178, align 1
  %180 = getelementptr i8, ptr %178, i32 2
  store i8 5, ptr %179, align 1
  %181 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 13
  %182 = load i16, ptr %181, align 4
  %183 = and i16 %182, 4
  %184 = icmp eq i16 %183, 0
  %185 = getelementptr inbounds %struct.mwifiex_adapter, ptr %153, i32 0, i32 132
  %186 = getelementptr inbounds %struct.mwifiex_adapter, ptr %153, i32 0, i32 131
  %187 = select i1 %184, ptr %186, ptr %185
  %188 = load i32, ptr %187, align 4
  %189 = lshr i32 %188, 2
  %190 = and i32 %189, 3
  %191 = load i32, ptr %161, align 1
  %192 = lshr i32 %191, 2
  %193 = and i32 %192, 3
  %194 = tail call i32 @llvm.umin.i32(i32 %190, i32 %193) #9
  %195 = icmp eq ptr %177, null
  br i1 %195, label %206, label %196

196:                                              ; preds = %176
  %197 = getelementptr %struct.mwifiex_sta_node, ptr %158, i32 0, i32 10, i32 9, i32 1, i32 7
  %198 = load i8, ptr %197, align 1
  %199 = and i8 %198, 32
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %196
  %202 = load i32, ptr %177, align 1
  %203 = lshr i32 %202, 2
  %204 = and i32 %203, 3
  %205 = tail call i32 @llvm.umin.i32(i32 %194, i32 %204) #9
  br label %206

206:                                              ; preds = %201, %196, %176
  %207 = phi i32 [ %205, %201 ], [ %194, %196 ], [ %194, %176 ]
  %208 = trunc i32 %207 to i8
  %209 = add i8 %208, -1
  %210 = icmp ult i8 %209, 3
  %211 = select i1 %210, i8 %208, i8 0
  store i8 %211, ptr %180, align 1
  %212 = getelementptr inbounds %struct.mwifiex_adapter, ptr %153, i32 0, i32 133
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %158, i32 0, i32 10, i32 11, i32 1
  %215 = load i16, ptr %214, align 1
  %216 = zext i16 %215 to i32
  %217 = and i32 %213, 3
  %218 = and i32 %216, 3
  %219 = icmp eq i32 %217, 3
  %220 = icmp eq i32 %218, 3
  %221 = select i1 %219, i1 true, i1 %220
  %222 = tail call i32 @llvm.umin.i32(i32 %217, i32 %218) #9
  %223 = trunc i32 %222 to i16
  %224 = select i1 %221, i16 3, i16 %223
  %225 = lshr i32 %213, 2
  %226 = and i32 %225, 3
  %227 = lshr i32 %216, 2
  %228 = and i32 %227, 3
  %229 = icmp eq i32 %226, 3
  %230 = icmp eq i32 %228, 3
  %231 = select i1 %229, i1 true, i1 %230
  %232 = tail call i32 @llvm.umin.i32(i32 %226, i32 %228) #9
  %233 = trunc i32 %232 to i16
  %234 = shl nuw nsw i16 %233, 2
  %235 = select i1 %231, i16 12, i16 %234
  %236 = lshr i32 %213, 4
  %237 = and i32 %236, 3
  %238 = lshr i32 %216, 4
  %239 = and i32 %238, 3
  %240 = icmp eq i32 %237, 3
  %241 = icmp eq i32 %239, 3
  %242 = select i1 %240, i1 true, i1 %241
  %243 = tail call i32 @llvm.umin.i32(i32 %237, i32 %239) #9
  %244 = trunc i32 %243 to i16
  %245 = shl nuw nsw i16 %244, 4
  %246 = select i1 %242, i16 48, i16 %245
  %247 = lshr i32 %213, 6
  %248 = and i32 %247, 3
  %249 = lshr i32 %216, 6
  %250 = and i32 %249, 3
  %251 = icmp eq i32 %248, 3
  %252 = icmp eq i32 %250, 3
  %253 = select i1 %251, i1 true, i1 %252
  %254 = tail call i32 @llvm.umin.i32(i32 %248, i32 %250) #9
  %255 = trunc i32 %254 to i16
  %256 = shl nuw nsw i16 %255, 6
  %257 = select i1 %253, i16 192, i16 %256
  %258 = lshr i32 %213, 8
  %259 = and i32 %258, 3
  %260 = lshr i32 %216, 8
  %261 = and i32 %260, 3
  %262 = icmp eq i32 %259, 3
  %263 = icmp eq i32 %261, 3
  %264 = select i1 %262, i1 true, i1 %263
  %265 = tail call i32 @llvm.umin.i32(i32 %259, i32 %261) #9
  %266 = trunc i32 %265 to i16
  %267 = shl nuw nsw i16 %266, 8
  %268 = select i1 %264, i16 768, i16 %267
  %269 = lshr i32 %213, 10
  %270 = and i32 %269, 3
  %271 = lshr i32 %216, 10
  %272 = and i32 %271, 3
  %273 = icmp eq i32 %270, 3
  %274 = icmp eq i32 %272, 3
  %275 = select i1 %273, i1 true, i1 %274
  %276 = tail call i32 @llvm.umin.i32(i32 %270, i32 %272) #9
  %277 = trunc i32 %276 to i16
  %278 = shl nuw nsw i16 %277, 10
  %279 = select i1 %275, i16 3072, i16 %278
  %280 = lshr i32 %213, 12
  %281 = and i32 %280, 3
  %282 = lshr i32 %216, 12
  %283 = and i32 %282, 3
  %284 = icmp eq i32 %281, 3
  %285 = icmp eq i32 %283, 3
  %286 = select i1 %284, i1 true, i1 %285
  %287 = tail call i32 @llvm.umin.i32(i32 %281, i32 %283) #9
  %288 = trunc i32 %287 to i16
  %289 = shl nuw nsw i16 %288, 12
  %290 = select i1 %286, i16 12288, i16 %289
  %291 = lshr i32 %213, 14
  %292 = and i32 %291, 3
  %293 = lshr i32 %216, 14
  %294 = icmp eq i32 %292, 3
  %295 = icmp eq i32 %293, 3
  %296 = select i1 %294, i1 true, i1 %295
  %297 = tail call i32 @llvm.umin.i32(i32 %292, i32 %293) #9
  %298 = trunc i32 %297 to i16
  %299 = shl nuw i16 %298, 14
  %300 = select i1 %296, i16 -16384, i16 %299
  %301 = or i16 %300, %224
  %302 = or i16 %301, %235
  %303 = or i16 %302, %246
  %304 = or i16 %303, %257
  %305 = or i16 %304, %268
  %306 = or i16 %305, %279
  %307 = or i16 %306, %290
  %308 = getelementptr i8, ptr %178, i32 5
  store i16 %307, ptr %308, align 1
  %309 = shl i8 %211, 3
  %310 = and i8 %309, 24
  %311 = xor i8 %310, 16
  %312 = zext i8 %311 to i32
  %313 = lshr i32 16777474, %312
  %314 = trunc i32 %313 to i8
  %315 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 5
  %316 = load i32, ptr %315, align 8
  %317 = tail call zeroext i8 @mwifiex_get_center_freq_index(ptr noundef %0, i8 noundef zeroext 32, i32 noundef %316, i8 noundef zeroext %314) #9
  %318 = getelementptr i8, ptr %178, i32 3
  store i8 %317, ptr %318, align 1
  br label %320

319:                                              ; preds = %157
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %153, i32 noundef 4, ptr noundef nonnull @.str.12) #9
  tail call void @__dev_kfree_skb_any(ptr noundef %5, i32 noundef 1) #9
  br label %340

320:                                              ; preds = %206, %172, %164
  %321 = tail call fastcc i32 @mwifiex_tdls_add_ht_oper(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, ptr noundef %5)
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %340, label %323

323:                                              ; preds = %320
  tail call void @__dev_kfree_skb_any(ptr noundef %5, i32 noundef 1) #9
  br label %340

324:                                              ; preds = %133
  %325 = tail call fastcc i32 @mwifiex_tdls_add_ht_oper(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, ptr noundef %5)
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %340, label %327

327:                                              ; preds = %324
  tail call void @__dev_kfree_skb_any(ptr noundef %5, i32 noundef 1) #9
  br label %340

328:                                              ; preds = %6
  %329 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 4
  store i8 12, ptr %329, align 1
  %330 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 5
  store i8 3, ptr %330, align 1
  %331 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 2) #9
  %332 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 6
  store i16 %4, ptr %332, align 1
  br label %340

333:                                              ; preds = %6
  %334 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 4
  store i8 12, ptr %334, align 1
  %335 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 5
  store i8 10, ptr %335, align 1
  %336 = tail call ptr @skb_put(ptr noundef %5, i32 noundef 1) #9
  %337 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %9, i32 0, i32 6
  store i8 %3, ptr %337, align 1
  br label %340

338:                                              ; preds = %6
  %339 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %339, i32 noundef 4, ptr noundef nonnull @.str.2) #9
  br label %340

340:                                              ; preds = %338, %333, %328, %327, %324, %323, %320, %319, %114, %92, %82, %54, %32, %22
  %341 = phi i32 [ -22, %338 ], [ -1, %319 ], [ -1, %323 ], [ %325, %327 ], [ %80, %82 ], [ %90, %92 ], [ %20, %22 ], [ %30, %32 ], [ 0, %320 ], [ 0, %324 ], [ 0, %333 ], [ 0, %328 ], [ 0, %114 ], [ 0, %54 ]
  ret i32 %341
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_queue_tx_pkt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_send_tdls_action_frame(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, ptr nocapture noundef readonly %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ieee80211_vht_cap, align 1
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 128
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 262, i32 287
  %14 = add i32 %13, %6
  %15 = and i32 %14, 65535
  %16 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %15, i32 noundef 2592) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %7
  %19 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %19, i32 noundef 4, ptr noundef nonnull @.str) #9
  br label %129

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 100
  store ptr %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 14
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr i8, ptr %25, i32 100
  store ptr %26, ptr %24, align 8
  %27 = tail call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 10) #9
  %28 = getelementptr inbounds i8, ptr %27, i32 8
  store i16 0, ptr %28, align 1
  store i32 229, ptr %27, align 1
  %29 = getelementptr i8, ptr %27, i32 4
  store i32 0, ptr %29, align 1
  %30 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 20
  %31 = load i16, ptr %30, align 8
  %32 = tail call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 24) #9
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(24) %32, i8 0, i32 24, i1 false) #9
  %33 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %32, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %33, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #9
  %34 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %32, i32 0, i32 3
  %35 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %34, ptr noundef align 2 dereferenceable(6) %35, i32 6, i1 false) #9
  %36 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %32, i32 0, i32 4
  %37 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 112
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %36, ptr noundef align 4 dereferenceable(6) %37, i32 6, i1 false) #9
  store i16 208, ptr %32, align 2
  %38 = tail call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 6) #9
  %39 = icmp eq i8 %2, 14
  br i1 %39, label %40, label %86

40:                                               ; preds = %20
  %41 = tail call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 5) #9
  %42 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %32, i32 0, i32 6
  store i8 4, ptr %42, align 2
  %43 = getelementptr inbounds %struct.anon.170, ptr %42, i32 0, i32 1
  store i8 14, ptr %43, align 1
  %44 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %32, i32 0, i32 6, i32 0, i32 1
  store i8 %3, ptr %44, align 1
  %45 = getelementptr inbounds %struct.anon.170, ptr %42, i32 0, i32 1, i32 0, i32 2
  store i16 %31, ptr %45, align 1
  %46 = getelementptr i8, ptr %38, i32 6
  %47 = load i32, ptr %42, align 2
  store i32 %47, ptr %46, align 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %38, i8 -1, i32 6, i1 false) #9
  %48 = tail call fastcc i32 @mwifiex_tdls_append_rates_ie(ptr noundef %0, ptr noundef nonnull %16) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %16, i32 noundef 1) #9
  br label %88

51:                                               ; preds = %40
  %52 = tail call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 28) #9
  %53 = getelementptr i8, ptr %52, i32 1
  store i8 45, ptr %52, align 1
  %54 = getelementptr i8, ptr %52, i32 2
  store i8 26, ptr %53, align 1
  %55 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 3
  %56 = load i8, ptr %55, align 2
  %57 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %56) #9
  %58 = tail call i32 @mwifiex_fill_cap_info(ptr noundef %0, i8 noundef zeroext %57, ptr noundef %54) #9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %16, i32 noundef 1) #9
  br label %88

61:                                               ; preds = %51
  %62 = load ptr, ptr %0, align 8
  %63 = getelementptr inbounds %struct.mwifiex_adapter, ptr %62, i32 0, i32 128
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %67 = tail call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 14) #9
  %68 = getelementptr i8, ptr %67, i32 1
  store i8 -65, ptr %67, align 1
  %69 = getelementptr i8, ptr %67, i32 2
  store i8 12, ptr %68, align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %8, i8 0, i32 12, i1 false) #9
  %70 = load i8, ptr %55, align 2
  call void @mwifiex_fill_vht_cap_tlv(ptr noundef %0, ptr noundef nonnull %8, i8 noundef zeroext %70) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %69, ptr noundef nonnull align 1 dereferenceable(12) %8, i32 12, i1 false) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  %71 = call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 4) #9
  %72 = getelementptr i8, ptr %71, i32 1
  store i8 -59, ptr %71, align 1
  %73 = getelementptr i8, ptr %71, i32 2
  store i8 2, ptr %72, align 1
  %74 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 91, i32 4
  %75 = load i16, ptr %74, align 1
  store i16 %75, ptr %73, align 1
  br label %76

76:                                               ; preds = %66, %61
  %77 = call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 10) #9
  store i8 127, ptr %77, align 1
  %78 = getelementptr inbounds %struct.ieee_types_header, ptr %77, i32 0, i32 1
  store i8 8, ptr %78, align 1
  %79 = getelementptr inbounds %struct.ieee_types_extcap, ptr %77, i32 0, i32 1
  store i64 138512695296, ptr %79, align 1
  %80 = load ptr, ptr %0, align 8
  %81 = getelementptr inbounds %struct.mwifiex_adapter, ptr %80, i32 0, i32 128
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %76
  %85 = getelementptr %struct.ieee_types_extcap, ptr %77, i32 0, i32 1, i32 7
  store i8 32, ptr %85, align 1
  br label %89

86:                                               ; preds = %20
  %87 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %87, i32 noundef 4, ptr noundef nonnull @.str.16) #9
  br label %88

88:                                               ; preds = %86, %60, %50
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %16, i32 noundef 1) #9
  br label %129

89:                                               ; preds = %84, %76
  %90 = call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 3) #9
  store i8 72, ptr %90, align 1
  %91 = getelementptr inbounds %struct.ieee_types_header, ptr %90, i32 0, i32 1
  store i8 1, ptr %91, align 1
  %92 = getelementptr inbounds %struct.ieee_types_bss_co_2040, ptr %90, i32 0, i32 1
  store i8 1, ptr %92, align 1
  %93 = call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 4) #9
  store i8 36, ptr %93, align 1
  %94 = getelementptr inbounds %struct.ieee_types_header, ptr %93, i32 0, i32 1
  store i8 2, ptr %94, align 1
  %95 = getelementptr inbounds %struct.ieee_types_generic, ptr %93, i32 0, i32 1
  store i16 2817, ptr %95, align 1
  %96 = call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 3) #9
  %97 = getelementptr i8, ptr %96, i32 1
  store i8 46, ptr %96, align 1
  %98 = getelementptr i8, ptr %96, i32 2
  store i8 1, ptr %97, align 1
  store i8 15, ptr %98, align 1
  %99 = call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 18) #9
  store i8 59, ptr %99, align 1
  %100 = getelementptr inbounds %struct.ieee_types_header, ptr %99, i32 0, i32 1
  store i8 16, ptr %100, align 1
  %101 = getelementptr inbounds %struct.ieee_types_generic, ptr %99, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %101, ptr noundef nonnull align 1 dereferenceable(16) @__const.mwifiex_tdls_add_oper_class.rc_list, i32 16, i1 false) #9
  %102 = icmp eq i32 %6, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %89
  %104 = call ptr @skb_put(ptr noundef nonnull %16, i32 noundef %6) #9
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %104, ptr align 1 %5, i32 %6, i1 false) #9
  br label %105

105:                                              ; preds = %103, %89
  %106 = call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 20) #9
  store i8 101, ptr %106, align 1
  %107 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %106, i32 0, i32 1
  store i8 18, ptr %107, align 1
  %108 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %106, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %108, ptr noundef align 1 dereferenceable(6) %37, i32 6, i1 false) #9
  %109 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %106, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %109, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #9
  %110 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %106, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %110, ptr noundef align 1 dereferenceable(6) %35, i32 6, i1 false) #9
  %111 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 13, i32 0, i32 5
  store i32 5, ptr %111, align 8
  %112 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %112, i8 0, i32 24, i1 false)
  %113 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 4
  %114 = load i8, ptr %113, align 1
  %115 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 13
  store i8 %114, ptr %115, align 1
  %116 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 1
  %117 = load i8, ptr %116, align 4
  %118 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 14
  store i8 %117, ptr %118, align 2
  %119 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 12
  store i8 4, ptr %119, align 4
  %120 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 5
  %121 = load i32, ptr %120, align 8
  %122 = trunc i32 %121 to i16
  %123 = add i16 %122, -10
  %124 = load ptr, ptr %21, align 4
  %125 = getelementptr i8, ptr %124, i32 8
  store i16 %123, ptr %125, align 1
  %126 = call i64 @ktime_get_with_offset(i32 noundef 0) #9
  %127 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 2
  store i64 %126, ptr %127, align 8
  %128 = call i32 @mwifiex_queue_tx_pkt(ptr noundef %0, ptr noundef nonnull %16) #9
  br label %129

129:                                              ; preds = %105, %88, %18
  %130 = phi i32 [ -22, %88 ], [ 0, %105 ], [ -12, %18 ]
  ret i32 %130
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_process_tdls_action_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i32 %2, 17
  br i1 %4, label %165, label %5

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %1, i32 14
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %9, label %165

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %1, i32 15
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 12
  br i1 %12, label %13, label %165

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %1, i32 6
  %15 = getelementptr i8, ptr %1, i32 16
  %16 = load i8, ptr %15, align 1
  %17 = load ptr, ptr %0, align 8
  %18 = zext i8 %16 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %17, i32 noundef 8, ptr noundef nonnull @.str.1, ptr noundef %14, i32 noundef %18) #9
  switch i8 %16, label %38 [
    i8 0, label %19
    i8 1, label %26
    i8 2, label %33
  ]

19:                                               ; preds = %13
  %20 = icmp ult i32 %2, 20
  br i1 %20, label %165, label %21

21:                                               ; preds = %19
  %22 = getelementptr i8, ptr %1, i32 18
  %23 = load i16, ptr %22, align 1
  %24 = add i32 %2, -20
  %25 = getelementptr i8, ptr %1, i32 20
  br label %40

26:                                               ; preds = %13
  %27 = icmp ult i32 %2, 22
  br i1 %27, label %165, label %28

28:                                               ; preds = %26
  %29 = getelementptr i8, ptr %1, i32 20
  %30 = load i16, ptr %29, align 1
  %31 = add i32 %2, -22
  %32 = getelementptr i8, ptr %1, i32 22
  br label %40

33:                                               ; preds = %13
  %34 = icmp ult i32 %2, 20
  br i1 %34, label %165, label %35

35:                                               ; preds = %33
  %36 = getelementptr i8, ptr %1, i32 20
  %37 = add i32 %2, -20
  br label %40

38:                                               ; preds = %13
  %39 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %39, i32 noundef 4, ptr noundef nonnull @.str.2) #9
  br label %165

40:                                               ; preds = %35, %28, %21
  %41 = phi i16 [ 0, %35 ], [ %30, %28 ], [ %23, %21 ]
  %42 = phi i32 [ %37, %35 ], [ %31, %28 ], [ %24, %21 ]
  %43 = phi ptr [ %36, %35 ], [ %32, %28 ], [ %25, %21 ]
  %44 = tail call ptr @mwifiex_add_sta_entry(ptr noundef %0, ptr noundef %14) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %165, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %44, i32 0, i32 10
  store i16 %41, ptr %47, align 2
  %48 = getelementptr i8, ptr %43, i32 %42
  %49 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %44, i32 0, i32 10, i32 2
  %50 = getelementptr i8, ptr %43, i32 1
  %51 = icmp ult ptr %50, %48
  br i1 %51, label %52, label %165

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %44, i32 0, i32 10, i32 6
  %54 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %44, i32 0, i32 10, i32 11
  %55 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %44, i32 0, i32 4
  %56 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %44, i32 0, i32 10, i32 12
  %57 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %44, i32 0, i32 10, i32 3
  %58 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %44, i32 0, i32 10, i32 10
  %59 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %44, i32 0, i32 10, i32 9
  %60 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %44, i32 0, i32 10, i32 4
  %61 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %44, i32 0, i32 10, i32 8
  %62 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %44, i32 0, i32 10, i32 7
  %63 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %44, i32 0, i32 3
  br label %64

64:                                               ; preds = %158, %52
  %65 = phi ptr [ %50, %52 ], [ %163, %158 ]
  %66 = phi ptr [ %43, %52 ], [ %162, %158 ]
  %67 = load i8, ptr %65, align 1
  %68 = getelementptr i8, ptr %66, i32 2
  %69 = zext i8 %67 to i32
  %70 = getelementptr i8, ptr %68, i32 %69
  %71 = icmp ugt ptr %70, %48
  br i1 %71, label %165, label %72

72:                                               ; preds = %64
  %73 = load i8, ptr %66, align 1
  switch i8 %73, label %158 [
    i8 1, label %74
    i8 50, label %86
    i8 45, label %109
    i8 61, label %112
    i8 72, label %115
    i8 127, label %119
    i8 48, label %125
    i8 46, label %129
    i8 -64, label %133
    i8 -65, label %141
    i8 -59, label %149
  ]

74:                                               ; preds = %72
  %75 = icmp ugt i8 %67, 32
  br i1 %75, label %165, label %76

76:                                               ; preds = %74
  store i8 %67, ptr %49, align 2
  %77 = icmp eq i8 %67, 0
  br i1 %77, label %158, label %78

78:                                               ; preds = %78, %76
  %79 = phi i32 [ %84, %78 ], [ 0, %76 ]
  %80 = add nuw nsw i32 %79, 2
  %81 = getelementptr i8, ptr %66, i32 %80
  %82 = load i8, ptr %81, align 1
  %83 = getelementptr %struct.mwifiex_sta_node, ptr %44, i32 0, i32 10, i32 1, i32 %79
  store i8 %82, ptr %83, align 1
  %84 = add nuw nsw i32 %79, 1
  %85 = icmp eq i32 %84, %69
  br i1 %85, label %158, label %78

86:                                               ; preds = %72
  %87 = icmp ugt i8 %67, 32
  br i1 %87, label %165, label %88

88:                                               ; preds = %86
  %89 = load i8, ptr %49, align 2
  %90 = zext i8 %89 to i32
  %91 = sub nsw i32 32, %90
  %92 = icmp ult i32 %91, %69
  br i1 %92, label %165, label %93

93:                                               ; preds = %88
  %94 = icmp eq i8 %67, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %95, %93
  %96 = phi i32 [ %102, %95 ], [ 0, %93 ]
  %97 = add nuw nsw i32 %96, 2
  %98 = getelementptr i8, ptr %66, i32 %97
  %99 = load i8, ptr %98, align 1
  %100 = add nuw nsw i32 %96, %90
  %101 = getelementptr %struct.mwifiex_sta_node, ptr %44, i32 0, i32 10, i32 1, i32 %100
  store i8 %99, ptr %101, align 1
  %102 = add nuw nsw i32 %96, 1
  %103 = icmp eq i32 %102, %69
  br i1 %103, label %104, label %95

104:                                              ; preds = %95
  %105 = load i8, ptr %49, align 2
  br label %106

106:                                              ; preds = %104, %93
  %107 = phi i8 [ %105, %104 ], [ %89, %93 ]
  %108 = add i8 %107, %67
  store i8 %108, ptr %49, align 2
  br label %158

109:                                              ; preds = %72
  %110 = icmp eq i8 %67, 26
  br i1 %110, label %111, label %165

111:                                              ; preds = %109
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(26) %62, ptr noundef align 1 dereferenceable(26) %68, i32 26, i1 false)
  store i8 1, ptr %63, align 1
  br label %158

112:                                              ; preds = %72
  %113 = icmp eq i8 %67, 22
  br i1 %113, label %114, label %165

114:                                              ; preds = %112
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(22) %61, ptr noundef align 1 dereferenceable(22) %68, i32 22, i1 false)
  br label %158

115:                                              ; preds = %72
  %116 = icmp eq i8 %67, 1
  br i1 %116, label %117, label %165

117:                                              ; preds = %115
  %118 = load i8, ptr %68, align 1
  store i8 %118, ptr %60, align 2
  br label %158

119:                                              ; preds = %72
  %120 = add i8 %67, -9
  %121 = icmp ult i8 %120, -7
  br i1 %121, label %165, label %122

122:                                              ; preds = %119
  %123 = tail call i32 @llvm.umin.i32(i32 %69, i32 8)
  %124 = add nuw nsw i32 %123, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %59, ptr noundef align 1 %66, i32 %124, i1 false)
  br label %158

125:                                              ; preds = %72
  switch i8 %67, label %126 [
    i8 -1, label %165
    i8 1, label %165
    i8 0, label %165
  ]

126:                                              ; preds = %125
  %127 = tail call i32 @llvm.umin.i32(i32 %69, i32 254)
  %128 = add nuw nsw i32 %127, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %58, ptr noundef align 1 %66, i32 %128, i1 false)
  br label %158

129:                                              ; preds = %72
  %130 = icmp eq i8 %67, 1
  br i1 %130, label %131, label %165

131:                                              ; preds = %129
  %132 = load i8, ptr %68, align 1
  store i8 %132, ptr %57, align 1
  br label %158

133:                                              ; preds = %72
  %134 = load ptr, ptr %0, align 8
  %135 = getelementptr inbounds %struct.mwifiex_adapter, ptr %134, i32 0, i32 128
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %158, label %138

138:                                              ; preds = %133
  %139 = icmp eq i8 %67, 5
  br i1 %139, label %140, label %165

140:                                              ; preds = %138
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(5) %56, ptr noundef align 1 dereferenceable(5) %68, i32 5, i1 false)
  br label %158

141:                                              ; preds = %72
  %142 = load ptr, ptr %0, align 8
  %143 = getelementptr inbounds %struct.mwifiex_adapter, ptr %142, i32 0, i32 128
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %141
  %147 = icmp eq i8 %67, 12
  br i1 %147, label %148, label %165

148:                                              ; preds = %146
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(12) %54, ptr noundef align 1 dereferenceable(12) %68, i32 12, i1 false)
  store i8 1, ptr %55, align 8
  br label %158

149:                                              ; preds = %72
  %150 = load ptr, ptr %0, align 8
  %151 = getelementptr inbounds %struct.mwifiex_adapter, ptr %150, i32 0, i32 128
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %149
  %155 = icmp eq i8 %67, 2
  br i1 %155, label %156, label %165

156:                                              ; preds = %154
  %157 = load i16, ptr %68, align 1
  store i16 %157, ptr %53, align 2
  br label %158

158:                                              ; preds = %156, %149, %148, %141, %140, %133, %131, %126, %122, %117, %114, %111, %106, %78, %76, %72
  %159 = load i8, ptr %65, align 1
  %160 = zext i8 %159 to i32
  %161 = add nuw nsw i32 %160, 2
  %162 = getelementptr i8, ptr %66, i32 %161
  %163 = getelementptr i8, ptr %162, i32 1
  %164 = icmp ult ptr %163, %48
  br i1 %164, label %64, label %165

165:                                              ; preds = %158, %154, %146, %138, %129, %125, %125, %125, %119, %115, %112, %109, %88, %86, %74, %64, %46, %40, %38, %33, %26, %19, %9, %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_add_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_tdls_oper(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.mwifiex_ds_tdls_oper, align 4
  %5 = alloca %struct.mwifiex_ds_tdls_oper, align 4
  %6 = alloca %struct.mwifiex_ds_tdls_oper, align 4
  %7 = alloca %struct.mwifiex_tdls_config_cs_params, align 1
  %8 = alloca %struct.mwifiex_tdls_config, align 2
  switch i8 %2, label %247 [
    i8 1, label %9
    i8 0, label %120
    i8 2, label %160
    i8 3, label %232
  ]

9:                                                ; preds = %3
  %10 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %1) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %92, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %10, i32 0, i32 8
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 3
  %16 = load ptr, ptr %0, align 8
  br i1 %15, label %90, label %17

17:                                               ; preds = %12
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 1, ptr noundef nonnull @.str.17, ptr noundef %1) #9
  store i8 2, ptr %13, align 4
  %18 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %10, i32 0, i32 10, i32 7
  %19 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %10, i32 0, i32 10, i32 7, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, -1
  %22 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %10, i32 0, i32 3
  br i1 %21, label %24, label %23

23:                                               ; preds = %17
  store i8 1, ptr %22, align 1
  br label %29

24:                                               ; preds = %17
  %25 = load i8, ptr %22, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr i8, ptr %10, i32 17
  store i64 -1, ptr %28, align 1
  br label %59

29:                                               ; preds = %24, %23
  %30 = load i16, ptr %18, align 2
  %31 = and i16 %30, 2048
  %32 = icmp eq i16 %31, 0
  %33 = select i1 %32, i16 4096, i16 8192
  %34 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %10, i32 0, i32 7
  store i16 %33, ptr %34, align 2
  %35 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 0
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr %struct.mwifiex_sta_node, ptr %10, i32 0, i32 5, i32 0
  store i8 %36, ptr %37, align 1
  %38 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr %struct.mwifiex_sta_node, ptr %10, i32 0, i32 5, i32 1
  store i8 %39, ptr %40, align 1
  %41 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr %struct.mwifiex_sta_node, ptr %10, i32 0, i32 5, i32 2
  store i8 %42, ptr %43, align 1
  %44 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 3
  %45 = load i8, ptr %44, align 1
  %46 = getelementptr %struct.mwifiex_sta_node, ptr %10, i32 0, i32 5, i32 3
  store i8 %45, ptr %46, align 1
  %47 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 4
  %48 = load i8, ptr %47, align 1
  %49 = getelementptr %struct.mwifiex_sta_node, ptr %10, i32 0, i32 5, i32 4
  store i8 %48, ptr %49, align 1
  %50 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 5
  %51 = load i8, ptr %50, align 1
  %52 = getelementptr %struct.mwifiex_sta_node, ptr %10, i32 0, i32 5, i32 5
  store i8 %51, ptr %52, align 1
  %53 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 6
  %54 = load i8, ptr %53, align 1
  %55 = getelementptr %struct.mwifiex_sta_node, ptr %10, i32 0, i32 5, i32 6
  store i8 %54, ptr %55, align 1
  %56 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 7
  %57 = load i8, ptr %56, align 1
  %58 = getelementptr %struct.mwifiex_sta_node, ptr %10, i32 0, i32 5, i32 7
  store i8 %57, ptr %58, align 1
  br label %59

59:                                               ; preds = %29, %27
  %60 = getelementptr %struct.mwifiex_sta_node, ptr %10, i32 0, i32 10, i32 9, i32 1, i32 3
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, 64
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i16 1, ptr %8, align 2
  %65 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 256, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %8, i1 noundef zeroext true) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #9
  store i8 2, ptr %7, align 1
  %66 = getelementptr inbounds %struct.mwifiex_tdls_config_cs_params, ptr %7, i32 0, i32 1
  store i8 10, ptr %66, align 1
  %67 = getelementptr inbounds %struct.mwifiex_tdls_config_cs_params, ptr %7, i32 0, i32 2
  store i8 0, ptr %67, align 1
  %68 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 256, i16 noundef zeroext 8, i32 noundef 0, ptr noundef nonnull %7, i1 noundef zeroext true) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #9
  br label %69

69:                                               ; preds = %64, %59
  %70 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %10, i32 0, i32 6
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(16) %70, i8 -1, i32 16, i1 false) #9
  call fastcc void @mwifiex_restore_tdls_packets(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 2) #9
  %71 = load ptr, ptr %0, align 8
  %72 = getelementptr inbounds %struct.mwifiex_adapter, ptr %71, i32 0, i32 151
  %73 = load i8, ptr %72, align 4, !range !9
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %247, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 82
  call void @_raw_spin_lock_bh(ptr noundef %76) #9
  %77 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 81
  br label %78

78:                                               ; preds = %82, %75
  %79 = phi ptr [ %77, %75 ], [ %80, %82 ]
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %77
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %80, i32 0, i32 1
  %84 = call i32 @bcmp(ptr noundef dereferenceable(6) %83, ptr noundef dereferenceable(6) %1, i32 6) #9
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %78

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %80, i32 0, i32 5
  store i8 0, ptr %87, align 4
  %88 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %80, i32 0, i32 2
  store i8 2, ptr %88, align 2
  br label %89

89:                                               ; preds = %86, %78
  call void @_raw_spin_unlock_bh(ptr noundef %76) #9
  br label %247

90:                                               ; preds = %12
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef %1) #9
  tail call void @mwifiex_11n_cleanup_reorder_tbl(ptr noundef %0) #9
  %91 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %91) #9
  tail call void @mwifiex_11n_delete_all_tx_ba_stream_tbl(ptr noundef %0) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %91) #9
  tail call void @mwifiex_del_sta_entry(ptr noundef %0, ptr noundef %1) #9
  br label %94

92:                                               ; preds = %9
  %93 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %93, i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef %1) #9
  br label %94

94:                                               ; preds = %92, %90
  tail call fastcc void @mwifiex_restore_tdls_packets(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 4) #9
  %95 = load ptr, ptr %0, align 8
  %96 = getelementptr inbounds %struct.mwifiex_adapter, ptr %95, i32 0, i32 151
  %97 = load i8, ptr %96, align 4, !range !9
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %247, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %100) #9
  %101 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 81
  br label %102

102:                                              ; preds = %106, %99
  %103 = phi ptr [ %101, %99 ], [ %104, %106 ]
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, %101
  br i1 %105, label %119, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %104, i32 0, i32 1
  %108 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %107, ptr noundef dereferenceable(6) %1, i32 6) #9
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %102

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %104, i32 0, i32 2
  %112 = load i8, ptr %111, align 2
  %113 = icmp eq i8 %112, 1
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %104, i32 0, i32 5
  %116 = load i8, ptr %115, align 4
  %117 = add i8 %116, 1
  store i8 %117, ptr %115, align 4
  br label %118

118:                                              ; preds = %114, %110
  store i8 0, ptr %111, align 2
  br label %119

119:                                              ; preds = %118, %102
  tail call void @_raw_spin_unlock_bh(ptr noundef %100) #9
  br label %247

120:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  %121 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %121, i8 0, i64 24, i1 false) #9
  %122 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %1) #9
  %123 = icmp eq ptr %122, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %122, i32 0, i32 3
  %126 = load i8, ptr %125, align 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  tail call void @mwifiex_11n_cleanup_reorder_tbl(ptr noundef %0) #9
  %129 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %129) #9
  tail call void @mwifiex_11n_delete_all_tx_ba_stream_tbl(ptr noundef %0) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %129) #9
  br label %130

130:                                              ; preds = %128, %124
  tail call void @mwifiex_del_sta_entry(ptr noundef %0, ptr noundef %1) #9
  br label %131

131:                                              ; preds = %130, %120
  tail call fastcc void @mwifiex_restore_tdls_packets(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 4) #9
  %132 = load ptr, ptr %0, align 8
  %133 = getelementptr inbounds %struct.mwifiex_adapter, ptr %132, i32 0, i32 151
  %134 = load i8, ptr %133, align 4, !range !9
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %157, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %137) #9
  %138 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 81
  br label %139

139:                                              ; preds = %143, %136
  %140 = phi ptr [ %138, %136 ], [ %141, %143 ]
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, %138
  br i1 %142, label %156, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %141, i32 0, i32 1
  %145 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %144, ptr noundef dereferenceable(6) %1, i32 6) #9
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %139

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %141, i32 0, i32 2
  %149 = load i8, ptr %148, align 2
  %150 = icmp eq i8 %149, 1
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %141, i32 0, i32 5
  %153 = load i8, ptr %152, align 4
  %154 = add i8 %153, 1
  store i8 %154, ptr %152, align 4
  br label %155

155:                                              ; preds = %151, %147
  store i8 0, ptr %148, align 2
  br label %156

156:                                              ; preds = %155, %139
  tail call void @_raw_spin_unlock_bh(ptr noundef %137) #9
  br label %157

157:                                              ; preds = %156, %131
  %158 = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, ptr %6, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %158, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #9
  store i16 0, ptr %6, align 4
  %159 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 290, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %6, i1 noundef zeroext true) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  br label %247

160:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %161 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %161, i8 0, i64 24, i1 false) #9
  %162 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %1) #9
  %163 = icmp eq ptr %162, null
  br i1 %163, label %170, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %162, i32 0, i32 8
  %166 = load i8, ptr %165, align 4
  %167 = icmp eq i8 %166, 1
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %169, i32 noundef 536870912, ptr noundef nonnull @.str.19, ptr noundef %1) #9
  br label %230

170:                                              ; preds = %164, %160
  %171 = tail call ptr @mwifiex_add_sta_entry(ptr noundef %0, ptr noundef %1) #9
  %172 = icmp eq ptr %171, null
  br i1 %172, label %230, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %171, i32 0, i32 8
  store i8 1, ptr %174, align 4
  %175 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %175, i32 noundef 8, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.mwifiex_hold_tdls_packets, ptr noundef %1) #9
  %176 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77
  %177 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %177) #9
  %178 = getelementptr i8, ptr %1, i32 4
  %179 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 9
  %180 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 141
  br label %181

181:                                              ; preds = %224, %173
  %182 = phi i32 [ 0, %173 ], [ %225, %224 ]
  %183 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %176, i32 0, i32 %182
  %184 = load volatile ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, %183
  br i1 %185, label %224, label %189

186:                                              ; preds = %222, %189
  %187 = load ptr, ptr %190, align 4
  %188 = icmp eq ptr %187, %183
  br i1 %188, label %224, label %189

189:                                              ; preds = %186, %181
  %190 = phi ptr [ %187, %186 ], [ %184, %181 ]
  %191 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %190, i32 0, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, %191
  br i1 %193, label %186, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %190, i32 0, i32 1, i32 1
  %196 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %190, i32 0, i32 9
  br label %197

197:                                              ; preds = %222, %194
  %198 = phi ptr [ %192, %194 ], [ %199, %222 ]
  %199 = load ptr, ptr %198, align 8
  %200 = getelementptr inbounds %struct.sk_buff, ptr %198, i32 0, i32 17
  %201 = load ptr, ptr %200, align 4
  %202 = load i32, ptr %1, align 4
  %203 = load i32, ptr %201, align 4
  %204 = xor i32 %203, %202
  %205 = load i16, ptr %178, align 2
  %206 = getelementptr i8, ptr %201, i32 4
  %207 = load i16, ptr %206, align 2
  %208 = xor i16 %207, %205
  %209 = zext i16 %208 to i32
  %210 = or i32 %204, %209
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %197
  %213 = load i32, ptr %195, align 4
  %214 = add i32 %213, -1
  store volatile i32 %214, ptr %195, align 4
  %215 = load ptr, ptr %198, align 8
  %216 = getelementptr inbounds %struct.anon.49, ptr %198, i32 0, i32 1
  %217 = load ptr, ptr %216, align 4
  store ptr null, ptr %216, align 4
  store ptr null, ptr %198, align 8
  %218 = getelementptr inbounds %struct.anon.49, ptr %215, i32 0, i32 1
  store volatile ptr %217, ptr %218, align 4
  store volatile ptr %215, ptr %217, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %179) #9, !srcloc !10
  %219 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %179, ptr %179, i32 1, ptr elementtype(i32) %179) #9, !srcloc !11
  %220 = load i16, ptr %196, align 2
  %221 = add i16 %220, -1
  store i16 %221, ptr %196, align 2
  tail call void @skb_queue_tail(ptr noundef %180, ptr noundef %198) #9
  br label %222

222:                                              ; preds = %212, %197
  %223 = icmp eq ptr %199, %191
  br i1 %223, label %186, label %197

224:                                              ; preds = %186, %181
  %225 = add nuw nsw i32 %182, 1
  %226 = icmp eq i32 %225, 8
  br i1 %226, label %227, label %181

227:                                              ; preds = %224
  tail call void @_raw_spin_unlock_bh(ptr noundef %177) #9
  %228 = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, ptr %5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %228, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #9
  store i16 2, ptr %5, align 4
  %229 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 290, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %5, i1 noundef zeroext true) #9
  br label %230

230:                                              ; preds = %227, %170, %168
  %231 = phi i32 [ 0, %168 ], [ %229, %227 ], [ -12, %170 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  br label %247

232:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  %233 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %233, i8 0, i64 24, i1 false) #9
  %234 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %1) #9
  %235 = icmp eq ptr %234, null
  br i1 %235, label %240, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %234, i32 0, i32 8
  %238 = load i8, ptr %237, align 4
  %239 = icmp eq i8 %238, 3
  br i1 %239, label %240, label %242

240:                                              ; preds = %236, %232
  %241 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %241, i32 noundef 4, ptr noundef nonnull @.str.21, ptr noundef %1) #9
  br label %245

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, ptr %4, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %243, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #9
  store i16 3, ptr %4, align 4
  %244 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 290, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %4, i1 noundef zeroext true) #9
  br label %245

245:                                              ; preds = %242, %240
  %246 = phi i32 [ -22, %240 ], [ %244, %242 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  br label %247

247:                                              ; preds = %245, %230, %157, %119, %94, %89, %69, %3
  %248 = phi i32 [ %246, %245 ], [ %231, %230 ], [ %159, %157 ], [ 0, %3 ], [ 0, %69 ], [ 0, %89 ], [ -1, %94 ], [ -1, %119 ]
  ret i32 %248
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_tdls_link_status(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %1) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %3, i32 0, i32 8
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ %8, %5 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_tdls_list(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 47
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 16384
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %14 = load i8, ptr %13, align 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %17) #9
  %18 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 79
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %41, label %21

21:                                               ; preds = %36, %16
  %22 = phi ptr [ %39, %36 ], [ %19, %16 ]
  %23 = phi ptr [ %38, %36 ], [ %1, %16 ]
  %24 = phi i32 [ %37, %36 ], [ 0, %16 ]
  %25 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %22, i32 0, i32 8
  %26 = load i8, ptr %25, align 4
  switch i8 %26, label %36 [
    i8 2, label %27
    i8 5, label %27
    i8 6, label %27
    i8 7, label %27
  ]

27:                                               ; preds = %21, %21, %21, %21
  %28 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %22, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %23, align 4
  %30 = getelementptr %struct.mwifiex_sta_node, ptr %22, i32 0, i32 1, i32 4
  %31 = load i16, ptr %30, align 2
  %32 = getelementptr i8, ptr %23, i32 4
  store i16 %31, ptr %32, align 2
  %33 = getelementptr %struct.tdls_peer_info, ptr %23, i32 1
  %34 = add i32 %24, 1
  %35 = icmp sgt i32 %34, 7
  br i1 %35, label %41, label %36

36:                                               ; preds = %27, %21
  %37 = phi i32 [ %34, %27 ], [ %24, %21 ]
  %38 = phi ptr [ %33, %27 ], [ %23, %21 ]
  %39 = load ptr, ptr %22, align 8
  %40 = icmp eq ptr %39, %18
  br i1 %40, label %41, label %21

41:                                               ; preds = %36, %27, %16
  %42 = phi i32 [ 0, %16 ], [ %34, %27 ], [ %37, %36 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %17) #9
  br label %43

43:                                               ; preds = %41, %12, %8, %2
  %44 = phi i32 [ %42, %41 ], [ 0, %2 ], [ 0, %12 ], [ 0, %8 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_disable_all_tdls_links(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mwifiex_ds_tdls_oper, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 79
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  %8 = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, ptr %2, i32 0, i32 1
  br label %9

9:                                                ; preds = %21, %6
  %10 = phi ptr [ %4, %6 ], [ %22, %21 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false)
  %11 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %10, i32 0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  call void @mwifiex_11n_cleanup_reorder_tbl(ptr noundef %0) #9
  call void @_raw_spin_lock_bh(ptr noundef %7) #9
  call void @mwifiex_11n_delete_all_tx_ba_stream_tbl(ptr noundef %0) #9
  call void @_raw_spin_unlock_bh(ptr noundef %7) #9
  br label %15

15:                                               ; preds = %14, %9
  %16 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %10, i32 0, i32 1
  call fastcc void @mwifiex_restore_tdls_packets(ptr noundef %0, ptr noundef %16, i8 noundef zeroext 4)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %8, ptr noundef align 8 dereferenceable(6) %16, i32 6, i1 false)
  store i16 0, ptr %2, align 4
  %17 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 290, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %2, i1 noundef zeroext false) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %20, i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef %16) #9
  br label %21

21:                                               ; preds = %19, %15
  %22 = load ptr, ptr %10, align 8
  %23 = icmp eq ptr %22, %3
  br i1 %23, label %24, label %9

24:                                               ; preds = %21
  call void @mwifiex_del_all_sta_list(ptr noundef %0) #9
  br label %25

25:                                               ; preds = %24, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_cleanup_reorder_tbl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_delete_all_tx_ba_stream_tbl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_restore_tdls_packets(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 8, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.mwifiex_restore_tdls_packets, ptr noundef %1) #9
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 141
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %80, label %10

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %1, i32 4
  %12 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 141, i32 1
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 10
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 9
  br label %15

15:                                               ; preds = %78, %10
  %16 = phi ptr [ %8, %10 ], [ %17, %78 ]
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %1, align 4
  %21 = load i32, ptr %19, align 4
  %22 = xor i32 %21, %20
  %23 = load i16, ptr %11, align 2
  %24 = getelementptr i8, ptr %19, i32 4
  %25 = load i16, ptr %24, align 2
  %26 = xor i16 %25, %23
  %27 = zext i16 %26 to i32
  %28 = or i32 %22, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %78

30:                                               ; preds = %15
  %31 = load i32, ptr %12, align 4
  %32 = add i32 %31, -1
  store volatile i32 %32, ptr %12, align 4
  %33 = load ptr, ptr %16, align 8
  %34 = getelementptr inbounds %struct.anon.49, ptr %16, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  store ptr null, ptr %34, align 4
  store ptr null, ptr %16, align 8
  %36 = getelementptr inbounds %struct.anon.49, ptr %33, i32 0, i32 1
  store volatile ptr %35, ptr %36, align 4
  store volatile ptr %33, ptr %35, align 8
  %37 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 13, i32 0, i32 5
  %38 = load i32, ptr %37, align 8
  %39 = tail call zeroext i8 @mwifiex_wmm_downgrade_tid(ptr noundef %0, i32 noundef %38) #9
  switch i8 %2, label %47 [
    i8 2, label %40
    i8 5, label %40
    i8 6, label %40
    i8 7, label %40
  ]

40:                                               ; preds = %30, %30, %30, %30
  %41 = trunc i32 %38 to i8
  %42 = tail call ptr @mwifiex_wmm_get_queue_raptr(ptr noundef %0, i8 noundef zeroext %41, ptr noundef %1) #9
  %43 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %42, i32 0, i32 10
  store i8 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 12
  %45 = load i8, ptr %44, align 4
  %46 = or i8 %45, 4
  store i8 %46, ptr %44, align 4
  br label %55

47:                                               ; preds = %30
  %48 = zext i8 %39 to i32
  %49 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %5, i32 0, i32 %48
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  %52 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 12
  %53 = load i8, ptr %52, align 4
  %54 = and i8 %53, -5
  store i8 %54, ptr %52, align 4
  br i1 %51, label %58, label %55

55:                                               ; preds = %47, %40
  %56 = phi ptr [ %42, %40 ], [ %50, %47 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55, %47
  %59 = load ptr, ptr %0, align 8
  %60 = tail call i32 @mwifiex_write_data_complete(ptr noundef %59, ptr noundef %16, i32 noundef 0, i32 noundef -1) #9
  br label %78

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %56, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %62, ptr noundef %16) #9
  %63 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %56, i32 0, i32 5
  %64 = load i16, ptr %63, align 2
  %65 = add i16 %64, 1
  store i16 %65, ptr %63, align 2
  %66 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %56, i32 0, i32 9
  %67 = load i16, ptr %66, align 2
  %68 = add i16 %67, 1
  store i16 %68, ptr %66, align 2
  %69 = load volatile i32, ptr %13, align 4
  %70 = zext i8 %39 to i32
  %71 = getelementptr [0 x i8], ptr @tos_to_tid_inv, i32 0, i32 %70
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %61
  store volatile i32 %73, ptr %13, align 4
  br label %76

76:                                               ; preds = %75, %61
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #9, !srcloc !10
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #9, !srcloc !12
  br label %78

78:                                               ; preds = %76, %58, %15
  %79 = icmp eq ptr %17, %7
  br i1 %79, label %80, label %15

80:                                               ; preds = %78, %3
  tail call void @_raw_spin_unlock_bh(ptr noundef %6) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_del_all_sta_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_tdls_check_tx(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [6 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %3, align 4
  %7 = getelementptr i8, ptr %5, i32 4
  %8 = load i16, ptr %7, align 2
  %9 = getelementptr inbounds i8, ptr %3, i32 4
  store i16 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 81
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %51, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %16 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 142
  br label %17

17:                                               ; preds = %48, %14
  %18 = phi ptr [ %12, %14 ], [ %49, %48 ]
  %19 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %18, i32 0, i32 1
  %20 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %3, ptr noundef dereferenceable(6) %19, i32 6)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %18, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %24, 51
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %18, i32 0, i32 2
  %28 = load i8, ptr %27, align 2
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %18, i32 0, i32 5
  %32 = load i8, ptr %31, align 4
  %33 = icmp ult i8 %32, 4
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  store i8 1, ptr %27, align 2
  %35 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %35, i32 noundef 1073741824, ptr noundef nonnull @.str.4, ptr noundef %19, i32 noundef %24) #9
  %36 = load ptr, ptr %15, align 4
  tail call void @cfg80211_tdls_oper_request(ptr noundef %36, ptr noundef %19, i32 noundef 1, i16 noundef zeroext 0, i32 noundef 2592) #9
  %37 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %18, i32 0, i32 7
  store i8 0, ptr %37, align 2
  store i8 0, ptr %16, align 8
  br label %48

38:                                               ; preds = %30, %26, %22
  %39 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %18, i32 0, i32 5
  %40 = load i8, ptr %39, align 4
  %41 = icmp ult i8 %40, 4
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %18, i32 0, i32 6
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @mwifiex_send_tdls_data_frame(ptr noundef %0, ptr noundef %19, i8 noundef zeroext 10, i8 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  store i8 0, ptr %43, align 1
  br label %48

48:                                               ; preds = %46, %42, %38, %34, %17
  %49 = load ptr, ptr %18, align 4
  %50 = icmp eq ptr %49, %11
  br i1 %50, label %51, label %17

51:                                               ; preds = %48, %2
  tail call void @_raw_spin_unlock_bh(ptr noundef %10) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_tdls_oper_request(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_flush_auto_tdls_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 81
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %13, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %8, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @kfree(ptr noundef %7) #9
  %12 = icmp eq ptr %8, %3
  br i1 %12, label %13, label %6

13:                                               ; preds = %6, %1
  store volatile ptr %3, ptr %3, align 4
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 81, i32 1
  store ptr %3, ptr %14, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #9
  %15 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 142
  store i8 0, ptr %15, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_add_auto_tdls_peer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 151
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %40, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 81
  br label %10

10:                                               ; preds = %14, %7
  %11 = phi ptr [ %9, %7 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %9
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %12, i32 0, i32 1
  %16 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %15, ptr noundef dereferenceable(6) %1, i32 6)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %10

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %12, i32 0, i32 2
  store i8 1, ptr %19, align 2
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %12, i32 0, i32 4
  store i32 %20, ptr %21, align 4
  br label %39

22:                                               ; preds = %10
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 2848, i32 noundef 28) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %24, i32 0, i32 1
  %28 = load i32, ptr %1, align 4
  store i32 %28, ptr %27, align 8
  %29 = getelementptr i8, ptr %1, i32 4
  %30 = load i16, ptr %29, align 2
  %31 = getelementptr %struct.mwifiex_auto_tdls_peer, ptr %24, i32 0, i32 1, i32 4
  store i16 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %24, i32 0, i32 2
  store i8 1, ptr %32, align 2
  %33 = load volatile i32, ptr @jiffies, align 64
  %34 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %24, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  store volatile ptr %24, ptr %24, align 8
  %35 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %36 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 81, i32 1
  %37 = load ptr, ptr %36, align 4
  store ptr %24, ptr %36, align 4
  store ptr %9, ptr %24, align 8
  store ptr %37, ptr %35, align 4
  store volatile ptr %24, ptr %37, align 4
  %38 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %38, i32 noundef 1073741824, ptr noundef nonnull @.str.5, ptr noundef %1) #9
  br label %39

39:                                               ; preds = %26, %22, %18
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #9
  br label %40

40:                                               ; preds = %39, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_auto_tdls_update_peer_status(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 151
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 81
  br label %11

11:                                               ; preds = %15, %8
  %12 = phi ptr [ %10, %8 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %32, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %13, i32 0, i32 1
  %17 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %16, ptr noundef dereferenceable(6) %1, i32 6)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %11

19:                                               ; preds = %15
  switch i8 %2, label %30 [
    i8 0, label %20
    i8 2, label %28
    i8 5, label %28
    i8 6, label %28
    i8 7, label %28
  ]

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %13, i32 0, i32 2
  %22 = load i8, ptr %21, align 2
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %13, i32 0, i32 5
  %26 = load i8, ptr %25, align 4
  %27 = add i8 %26, 1
  store i8 %27, ptr %25, align 4
  br label %30

28:                                               ; preds = %19, %19, %19, %19
  %29 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %13, i32 0, i32 5
  store i8 0, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %24, %20, %19
  %31 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %13, i32 0, i32 2
  store i8 %2, ptr %31, align 2
  br label %32

32:                                               ; preds = %30, %11
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #9
  br label %33

33:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_auto_tdls_update_peer_signal(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i8 noundef signext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 151
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 81
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi ptr [ %11, %9 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %11
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %14, i32 0, i32 1
  %18 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %17, ptr noundef dereferenceable(6) %1, i32 6)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12

20:                                               ; preds = %16
  %21 = sext i8 %3 to i32
  %22 = sext i8 %2 to i32
  %23 = sub nsw i32 %21, %22
  %24 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %14, i32 0, i32 3
  store i32 %23, ptr %24, align 4
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %14, i32 0, i32 4
  store i32 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %20, %12
  tail call void @_raw_spin_unlock_bh(ptr noundef %10) #9
  br label %28

28:                                               ; preds = %27, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_check_auto_tdls(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -9900
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8
  %6 = icmp eq ptr %5, null
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i1 [ true, %1 ], [ %6, %4 ]
  %9 = load i1, ptr @mwifiex_check_auto_tdls.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %7
  store i1 true, ptr @mwifiex_check_auto_tdls.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1420, i32 noundef 9, ptr noundef null) #9
  br label %13

13:                                               ; preds = %12, %7
  br i1 %8, label %14, label %16

14:                                               ; preds = %13
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.mwifiex_check_auto_tdls) #11
  br label %83

16:                                               ; preds = %13
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct.mwifiex_adapter, ptr %17, i32 0, i32 151
  %19 = load i8, ptr %18, align 4, !range !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %83, label %21, !prof !8

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %0, i32 20
  %23 = load i8, ptr %22, align 8, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %17, i32 noundef 1073741824, ptr noundef nonnull @.str.8) #9
  br label %83

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %0, i32 -4
  store i8 0, ptr %27, align 8
  %28 = getelementptr i8, ptr %0, i32 -8320
  tail call void @_raw_spin_lock_bh(ptr noundef %28) #9
  %29 = getelementptr i8, ptr %0, i32 -8328
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %79, label %32

32:                                               ; preds = %26
  %33 = getelementptr i8, ptr %0, i32 -9872
  br label %34

34:                                               ; preds = %76, %32
  %35 = phi ptr [ %30, %32 ], [ %77, %76 ]
  %36 = load volatile i32, ptr @jiffies, align 64
  %37 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %35, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = sub i32 %36, %38
  %40 = icmp ugt i32 %39, 1000
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %35, i32 0, i32 3
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %35, i32 0, i32 6
  store i8 1, ptr %43, align 1
  store i8 1, ptr %27, align 8
  br label %44

44:                                               ; preds = %41, %34
  %45 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %35, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = icmp sgt i32 %46, 54
  %48 = icmp eq i32 %46, 0
  %49 = or i1 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %35, i32 0, i32 2
  %52 = load i8, ptr %51, align 2
  switch i8 %52, label %59 [
    i8 2, label %53
    i8 5, label %53
    i8 6, label %53
    i8 7, label %53
  ]

53:                                               ; preds = %50, %50, %50, %50
  store i8 4, ptr %51, align 2
  %54 = load ptr, ptr %2, align 8
  %55 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %35, i32 0, i32 1
  %56 = sub nsw i32 0, %46
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %54, i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef %55, i32 noundef %56) #9
  %57 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %35, i32 0, i32 6
  store i8 1, ptr %57, align 1
  store i8 1, ptr %27, align 8
  %58 = load ptr, ptr %33, align 4
  tail call void @cfg80211_tdls_oper_request(ptr noundef %58, ptr noundef %55, i32 noundef 2, i16 noundef zeroext 26, i32 noundef 2592) #9
  br label %76

59:                                               ; preds = %50, %44
  %60 = icmp ne i32 %46, 0
  %61 = icmp slt i32 %46, 51
  %62 = and i1 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %35, i32 0, i32 2
  %65 = load i8, ptr %64, align 2
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %35, i32 0, i32 5
  %69 = load i8, ptr %68, align 4
  %70 = icmp ult i8 %69, 4
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  store i8 1, ptr %27, align 8
  %72 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %35, i32 0, i32 7
  store i8 1, ptr %72, align 2
  %73 = load ptr, ptr %2, align 8
  %74 = getelementptr inbounds %struct.mwifiex_auto_tdls_peer, ptr %35, i32 0, i32 1
  %75 = load i32, ptr %45, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %73, i32 noundef 1073741824, ptr noundef nonnull @.str.10, ptr noundef %74, i32 noundef %75) #9
  br label %76

76:                                               ; preds = %71, %67, %63, %59, %53
  %77 = load ptr, ptr %35, align 4
  %78 = icmp eq ptr %77, %29
  br i1 %78, label %79, label %34

79:                                               ; preds = %76, %26
  tail call void @_raw_spin_unlock_bh(ptr noundef %28) #9
  %80 = load volatile i32, ptr @jiffies, align 64
  %81 = add i32 %80, 1000
  %82 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %81) #9
  br label %83

83:                                               ; preds = %79, %25, %16, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_setup_auto_tdls_timer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 144
  tail call void @init_timer_key(ptr noundef %2, ptr noundef nonnull @mwifiex_check_auto_tdls, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 145
  store i8 1, ptr %3, align 8
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = add i32 %4, 1000
  %6 = tail call i32 @mod_timer(ptr noundef %2, i32 noundef %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_clean_auto_tdls(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 47
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 16384
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 151
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 1
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 145
  store i8 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 144
  %18 = tail call i32 @del_timer(ptr noundef %17) #9
  %19 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %19) #9
  %20 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 81
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %30, label %23

23:                                               ; preds = %23, %15
  %24 = phi ptr [ %25, %23 ], [ %21, %15 ]
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  store volatile ptr %25, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  tail call void @kfree(ptr noundef %24) #9
  %29 = icmp eq ptr %25, %20
  br i1 %29, label %30, label %23

30:                                               ; preds = %23, %15
  store volatile ptr %20, ptr %20, align 4
  %31 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 81, i32 1
  store ptr %20, ptr %31, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %19) #9
  %32 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 142
  store i8 0, ptr %32, align 8
  br label %33

33:                                               ; preds = %30, %11, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_config_tdls_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mwifiex_tdls_config, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i16 1, ptr %2, align 2
  %3 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 256, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %2, i1 noundef zeroext true) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_config_tdls_disable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mwifiex_tdls_config, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i16 0, ptr %2, align 2
  %3 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 256, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %2, i1 noundef zeroext true) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_config_tdls_cs_params(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mwifiex_tdls_config_cs_params, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #9
  store i8 2, ptr %2, align 1
  %3 = getelementptr inbounds %struct.mwifiex_tdls_config_cs_params, ptr %2, i32 0, i32 1
  store i8 10, ptr %3, align 1
  %4 = getelementptr inbounds %struct.mwifiex_tdls_config_cs_params, ptr %2, i32 0, i32 2
  store i8 0, ptr %4, align 1
  %5 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 256, i16 noundef zeroext 8, i32 noundef 0, ptr noundef nonnull %2, i1 noundef zeroext true) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #9
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_stop_tdls_cs(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.mwifiex_tdls_stop_cs_params, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #9
  %4 = load i32, ptr %1, align 4
  store i32 %4, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 4
  %6 = load i16, ptr %5, align 2
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  store i16 %6, ptr %7, align 4
  %8 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 256, i16 noundef zeroext 7, i32 noundef 0, ptr noundef nonnull %3, i1 noundef zeroext true) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_start_tdls_cs(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.mwifiex_tdls_init_cs_params, align 4
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %6) #9
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr %6, align 4
  %8 = getelementptr i8, ptr %1, i32 4
  %9 = load i16, ptr %8, align 2
  %10 = getelementptr inbounds i8, ptr %6, i32 4
  store i16 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, ptr %6, i32 0, i32 1
  store i8 %2, ptr %11, align 2
  %12 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, ptr %6, i32 0, i32 2
  store i8 %3, ptr %12, align 1
  %13 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, ptr %6, i32 0, i32 3
  store i8 %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, ptr %6, i32 0, i32 4
  store i16 10, ptr %14, align 1
  %15 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, ptr %6, i32 0, i32 5
  store i16 16, ptr %15, align 1
  %16 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, ptr %6, i32 0, i32 6
  store i8 12, ptr %16, align 1
  %17 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, ptr %6, i32 0, i32 7
  store i8 1, ptr %17, align 2
  %18 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 256, i16 noundef zeroext 6, i32 noundef 0, ptr noundef nonnull %6, i1 noundef zeroext true) #9
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %6) #9
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_tdls_append_rates_ie(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %3, i8 0, i64 14, i1 false)
  %4 = call i32 @mwifiex_get_supported_rates(ptr noundef %0, ptr noundef nonnull %3) #9
  %5 = and i32 %4, 65535
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %13 = load ptr, ptr %12, align 8
  %14 = ptrtoint ptr %11 to i32
  %15 = ptrtoint ptr %13 to i32
  %16 = sub i32 %14, %15
  %17 = add nuw nsw i32 %5, 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %9, %2
  %20 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %20, i32 noundef 4, ptr noundef nonnull @.str.11) #9
  br label %39

21:                                               ; preds = %9
  %22 = call i32 @llvm.umin.i32(i32 %5, i32 8)
  %23 = add nuw nsw i32 %22, 2
  %24 = call ptr @skb_put(ptr noundef %1, i32 noundef %23) #9
  %25 = getelementptr i8, ptr %24, i32 1
  store i8 1, ptr %24, align 1
  %26 = trunc i32 %22 to i8
  %27 = getelementptr i8, ptr %24, i32 2
  store i8 %26, ptr %25, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %27, ptr nonnull align 1 %3, i32 %22, i1 false)
  %28 = icmp ugt i32 %5, 8
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = trunc i32 %4 to i16
  %31 = add i16 %30, -8
  %32 = zext i16 %31 to i32
  %33 = add nuw nsw i32 %32, 2
  %34 = call ptr @skb_put(ptr noundef %1, i32 noundef %33) #9
  %35 = getelementptr i8, ptr %34, i32 1
  store i8 50, ptr %34, align 1
  %36 = trunc i16 %31 to i8
  %37 = getelementptr i8, ptr %34, i32 2
  store i8 %36, ptr %35, align 1
  %38 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr align 1 %38, i32 %32, i1 false)
  br label %39

39:                                               ; preds = %29, %21, %19
  %40 = phi i32 [ -12, %19 ], [ 0, %29 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #9
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_fill_cap_info(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_tdls_add_vht_capab(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ieee80211_vht_cap, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %4 = tail call ptr @skb_put(ptr noundef %1, i32 noundef 14) #9
  %5 = getelementptr i8, ptr %4, i32 1
  store i8 -65, ptr %4, align 1
  %6 = getelementptr i8, ptr %4, i32 2
  store i8 12, ptr %5, align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %3, i8 0, i32 12, i1 false)
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 3
  %8 = load i8, ptr %7, align 2
  call void @mwifiex_fill_vht_cap_tlv(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %8) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %6, ptr noundef nonnull align 1 dereferenceable(12) %3, i32 12, i1 false)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_tdls_add_ht_oper(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %1) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9, !prof !8

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %8, i32 noundef 4, ptr noundef nonnull @.str.12) #9
  br label %49

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %5, i32 0, i32 10, i32 7
  %11 = load i16, ptr %10, align 2
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %14, i32 noundef 536870912, ptr noundef nonnull @.str.15) #9
  br label %49

15:                                               ; preds = %9
  %16 = tail call ptr @skb_put(ptr noundef %3, i32 noundef 24) #9
  %17 = getelementptr i8, ptr %16, i32 1
  store i8 61, ptr %16, align 1
  %18 = getelementptr i8, ptr %16, i32 2
  store i8 22, ptr %17, align 1
  %19 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %18, align 1
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, ptr %22, i32 0, i32 113
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 131072
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 24
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 27
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.ieee80211_ht_operation, ptr %33, i32 0, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 4
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = getelementptr i8, ptr %16, i32 3
  store i8 %35, ptr %39, align 1
  br label %40

40:                                               ; preds = %38, %31, %27, %15
  %41 = icmp eq i8 %2, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %40
  %43 = load i32, ptr %19, align 8
  %44 = tail call zeroext i8 @mwifiex_get_sec_chan_offset(i32 noundef %43) #9
  %45 = getelementptr i8, ptr %16, i32 3
  %46 = or i8 %44, 4
  store i8 %46, ptr %45, align 1
  br label %47

47:                                               ; preds = %42, %40
  %48 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %5, i32 0, i32 10, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(22) %48, ptr noundef align 1 dereferenceable(22) %18, i32 22, i1 false)
  br label %49

49:                                               ; preds = %47, %13, %7
  %50 = phi i32 [ -1, %7 ], [ 0, %47 ], [ 0, %13 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_supported_rates(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_fill_vht_cap_tlv(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mwifiex_is_bss_in_11ac_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_get_center_freq_index(ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_get_sec_chan_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_del_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_wmm_downgrade_tid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_wmm_get_queue_raptr(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_write_data_complete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 760687, i64 2148250658, i64 2148250684, i64 2148250731, i64 2148250753, i64 2148250781, i64 2148250801}
!11 = !{i64 2148264430, i64 2148264456, i64 2148264485, i64 2148264519, i64 2148264550, i64 2148264573}
!12 = !{i64 2148262073, i64 2148262099, i64 2148262128, i64 2148262162, i64 2148262193, i64 2148262216}
