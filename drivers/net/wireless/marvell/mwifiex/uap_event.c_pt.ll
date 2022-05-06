; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/uap_event.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/uap_event.c"
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
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
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
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
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
%struct.mwifiex_ie_types_header = type { i16, i16 }

@.str = private unnamed_addr constant [33 x i8] c"could not create station entry!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"AP EVENT: event id: %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"event: AMSDU_AGGR_CTRL %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"event: tx_buf_size %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"event: ADDBA Request\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"event: DELBA Request\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"event:  BA Stream timeout\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"event: EXT_SCAN Report\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"event: TX_STATUS Report\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"info: EVENT: SLEEP\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"info: EVENT: AWAKE\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"event: PPS/UAPSD mode activated\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"event: Channel Report\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"event: Radar detected\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"event: BT coex wlan param update\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"event: TX DATA PAUSE\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"event: multi-chan info\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"event: uap: Remain on channel expired\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"event: unknown event id: %#x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.19 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"uap capabilities:\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"info: check uap capabilities:\09wmm parameter set count: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_uap_event(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 50
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %279 [
    i32 45, label %5
    i32 44, label %83
    i32 67, label %92
    i32 68, label %95
    i32 46, label %98
    i32 76, label %152
    i32 66, label %153
    i32 51, label %166
    i32 52, label %173
    i32 55, label %179
    i32 88, label %185
    i32 116, label %195
    i32 11, label %197
    i32 10, label %199
    i32 84, label %249
    i32 83, label %253
    i32 118, label %257
    i32 85, label %260
    i32 106, label %263
    i32 89, label %266
    i32 95, label %274
  ]

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 208) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %280, label %9

9:                                                ; preds = %5
  %10 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 112, i32 2
  %11 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 112, i32 8
  %12 = load i16, ptr %11, align 1
  %13 = icmp eq i16 %12, 360
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 112, i32 12
  %16 = load i16, ptr %15, align 1
  %17 = trunc i16 %16 to i8
  %18 = and i8 %17, -4
  switch i8 %18, label %34 [
    i8 0, label %20
    i8 32, label %19
  ]

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi i32 [ 0, %14 ], [ 6, %19 ]
  %22 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 112, i32 18
  %23 = getelementptr [0 x i8], ptr %22, i32 0, i32 %21
  %24 = getelementptr inbounds %struct.station_info, ptr %7, i32 0, i32 24
  store ptr %23, ptr %24, align 8
  %25 = ptrtoint ptr %23 to i32
  %26 = ptrtoint ptr %15 to i32
  %27 = sub i32 %25, %26
  %28 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 112, i32 10
  %29 = load i16, ptr %28, align 1
  %30 = zext i16 %29 to i32
  %31 = and i32 %27, 65535
  %32 = sub nsw i32 %30, %31
  %33 = getelementptr inbounds %struct.station_info, ptr %7, i32 0, i32 25
  store i32 %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %20, %14, %9
  %35 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  tail call void @cfg80211_new_sta(ptr noundef %36, ptr noundef %10, ptr noundef nonnull %7, i32 noundef 3264) #6
  %37 = tail call ptr @mwifiex_add_sta_entry(ptr noundef %0, ptr noundef %10) #6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str) #6
  tail call void @kfree(ptr noundef nonnull %7) #6
  br label %280

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 125
  %42 = load i8, ptr %41, align 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call void @kfree(ptr noundef nonnull %7) #6
  br label %280

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.station_info, ptr %7, i32 0, i32 24
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.station_info, ptr %7, i32 0, i32 25
  %49 = load i32, ptr %48, align 4
  tail call void @mwifiex_set_sta_ht_cap(ptr noundef %0, ptr noundef %47, i32 noundef %49, ptr noundef nonnull %37) #6
  %50 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %37, i32 0, i32 3
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %77, label %53

53:                                               ; preds = %45
  %54 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 0
  %55 = load i8, ptr %54, align 1
  %56 = getelementptr %struct.mwifiex_sta_node, ptr %37, i32 0, i32 5, i32 0
  store i8 %55, ptr %56, align 1
  %57 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 1
  %58 = load i8, ptr %57, align 1
  %59 = getelementptr %struct.mwifiex_sta_node, ptr %37, i32 0, i32 5, i32 1
  store i8 %58, ptr %59, align 1
  %60 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 2
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr %struct.mwifiex_sta_node, ptr %37, i32 0, i32 5, i32 2
  store i8 %61, ptr %62, align 1
  %63 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 3
  %64 = load i8, ptr %63, align 1
  %65 = getelementptr %struct.mwifiex_sta_node, ptr %37, i32 0, i32 5, i32 3
  store i8 %64, ptr %65, align 1
  %66 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 4
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr %struct.mwifiex_sta_node, ptr %37, i32 0, i32 5, i32 4
  store i8 %67, ptr %68, align 1
  %69 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 5
  %70 = load i8, ptr %69, align 1
  %71 = getelementptr %struct.mwifiex_sta_node, ptr %37, i32 0, i32 5, i32 5
  store i8 %70, ptr %71, align 1
  %72 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 6
  %73 = load i8, ptr %72, align 1
  %74 = getelementptr %struct.mwifiex_sta_node, ptr %37, i32 0, i32 5, i32 6
  store i8 %73, ptr %74, align 1
  %75 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 7
  %76 = load i8, ptr %75, align 1
  br label %79

77:                                               ; preds = %45
  %78 = getelementptr %struct.mwifiex_sta_node, ptr %37, i32 0, i32 5, i32 0
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(7) %78, i8 -1, i64 7, i1 false)
  br label %79

79:                                               ; preds = %77, %53
  %80 = phi i8 [ -1, %77 ], [ %76, %53 ]
  %81 = getelementptr %struct.mwifiex_sta_node, ptr %37, i32 0, i32 5, i32 7
  store i8 %80, ptr %81, align 1
  %82 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %37, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(16) %82, i8 -1, i32 16, i1 false)
  tail call void @kfree(ptr noundef nonnull %7) #6
  br label %280

83:                                               ; preds = %1
  %84 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 112, i32 2
  %85 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %86 = load ptr, ptr %85, align 4
  tail call void @cfg80211_del_sta_sinfo(ptr noundef %86, ptr noundef %84, ptr noundef null, i32 noundef 3264) #6
  %87 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 125
  %88 = load i8, ptr %87, align 2
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  tail call void @mwifiex_11n_del_rx_reorder_tbl_by_ta(ptr noundef %0, ptr noundef %84) #6
  tail call void @mwifiex_del_tx_ba_stream_tbl_by_ra(ptr noundef %0, ptr noundef %84) #6
  br label %91

91:                                               ; preds = %90, %83
  tail call void @mwifiex_wmm_del_peer_ra_list(ptr noundef %0, ptr noundef %84) #6
  tail call void @mwifiex_del_sta_entry(ptr noundef %0, ptr noundef %84) #6
  br label %280

92:                                               ; preds = %1
  %93 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  store i8 0, ptr %93, align 8
  %94 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 9
  store i8 0, ptr %94, align 1
  tail call void @mwifiex_clean_txrx(ptr noundef %0) #6
  tail call void @mwifiex_del_all_sta_list(ptr noundef %0) #6
  br label %280

95:                                               ; preds = %1
  %96 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  store i8 1, ptr %96, align 8
  %97 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 9
  store i8 1, ptr %97, align 1
  br label %280

98:                                               ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 46) #6
  %99 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 9
  store i8 0, ptr %99, align 1
  %100 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr %struct.mwifiex_adapter, ptr %2, i32 0, i32 112, i32 2
  tail call void @dev_addr_mod(ptr noundef %101, i32 noundef 0, ptr noundef %102, i32 noundef 6) #6
  %103 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 149
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %98
  tail call void @mwifiex_hist_data_reset(ptr noundef %0) #6
  br label %107

107:                                              ; preds = %106, %98
  %108 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 51
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 74
  store i8 0, ptr %110, align 1
  %111 = tail call ptr @skb_pull(ptr noundef %109, i32 noundef 12) #6
  %112 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 5
  %113 = load i32, ptr %112, align 8
  %114 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 17
  %115 = load ptr, ptr %114, align 4
  %116 = load ptr, ptr %0, align 8
  %117 = getelementptr inbounds %struct.mwifiex_adapter, ptr %116, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 262144
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %107
  tail call void @print_hex_dump(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %115, i32 noundef %113, i1 noundef zeroext false) #6
  br label %122

122:                                              ; preds = %121, %107
  %123 = tail call ptr @skb_push(ptr noundef %109, i32 noundef 12) #6
  %124 = icmp ugt i32 %113, 3
  br i1 %124, label %125, label %280

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 126
  %127 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 125
  br label %128

128:                                              ; preds = %148, %125
  %129 = phi ptr [ %115, %125 ], [ %149, %148 ]
  %130 = phi i32 [ %113, %125 ], [ %150, %148 ]
  %131 = getelementptr %struct.mwifiex_ie_types_header, ptr %129, i32 0, i32 1
  %132 = load i16, ptr %131, align 1
  %133 = zext i16 %132 to i32
  %134 = add nuw nsw i32 %133, 4
  %135 = icmp ult i32 %130, %134
  br i1 %135, label %280, label %136

136:                                              ; preds = %128
  %137 = load i16, ptr %129, align 1
  switch i16 %137, label %148 [
    i16 45, label %138
    i16 191, label %139
    i16 221, label %140
  ]

138:                                              ; preds = %136
  store i8 1, ptr %127, align 2
  br label %148

139:                                              ; preds = %136
  store i8 1, ptr %126, align 1
  br label %148

140:                                              ; preds = %136
  %141 = trunc i16 %132 to i8
  %142 = getelementptr i8, ptr %129, i32 3
  store i8 %141, ptr %142, align 1
  store i8 -35, ptr %131, align 1
  %143 = load ptr, ptr %0, align 8
  %144 = getelementptr i8, ptr %129, i32 10
  %145 = load i8, ptr %144, align 1
  %146 = and i8 %145, 15
  %147 = zext i8 %146 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %143, i32 noundef 32, ptr noundef nonnull @.str.21, i32 noundef %147) #6
  tail call void @mwifiex_wmm_setup_ac_downgrade(ptr noundef %0) #6
  store i8 1, ptr %110, align 1
  tail call void @mwifiex_wmm_setup_queue_priorities(ptr noundef %0, ptr noundef %131) #6
  br label %148

148:                                              ; preds = %140, %139, %138, %136
  %149 = getelementptr i8, ptr %129, i32 %134
  %150 = sub i32 %130, %134
  %151 = icmp ugt i32 %150, 3
  br i1 %151, label %128, label %280

152:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 76) #6
  br label %280

153:                                              ; preds = %1
  %154 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 112
  %155 = load i16, ptr %154, align 1
  %156 = zext i16 %155 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.2, i32 noundef %156) #6
  %157 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %158 = load i8, ptr %157, align 8
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %280, label %160

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 40
  %162 = load i16, ptr %161, align 4
  %163 = tail call i16 @llvm.umin.i16(i16 %162, i16 %155)
  %164 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 39
  store i16 %163, ptr %164, align 2
  %165 = zext i16 %163 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef %165) #6
  br label %280

166:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.4) #6
  %167 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %168 = load i8, ptr %167, align 8
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %280, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 112
  %172 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 207, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %171, i1 noundef zeroext false) #6
  br label %280

173:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.5) #6
  %174 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %175 = load i8, ptr %174, align 8
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %280, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 112
  tail call void @mwifiex_11n_delete_ba_stream(ptr noundef %0, ptr noundef %178) #6
  br label %280

179:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %180 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %181 = load i8, ptr %180, align 8
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %280, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 112
  tail call void @mwifiex_11n_ba_stream_timeout(ptr noundef %0, ptr noundef %184) #6
  br label %280

185:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.7) #6
  %186 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 137
  %187 = load i8, ptr %186, align 1, !range !8
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %280, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 51
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.sk_buff, ptr %191, i32 0, i32 17
  %193 = load ptr, ptr %192, align 4
  %194 = tail call i32 @mwifiex_handle_event_ext_scan_report(ptr noundef %0, ptr noundef %193) #6
  br label %280

195:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.8) #6
  %196 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 112
  tail call void @mwifiex_parse_tx_status_event(ptr noundef %0, ptr noundef %196) #6
  br label %280

197:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.9) #6
  %198 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 90
  store i32 1, ptr %198, align 4
  tail call void @mwifiex_check_ps_cond(ptr noundef %2) #6
  br label %280

199:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.10) #6
  %200 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 104
  %201 = load i16, ptr %200, align 2
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 86
  store i8 0, ptr %204, align 4
  br label %219

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %207 = load i8, ptr %206, align 8
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 88
  %211 = load i16, ptr %210, align 4
  %212 = icmp eq i16 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %209, %205
  %214 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 86
  store i8 0, ptr %214, align 4
  br label %245

215:                                              ; preds = %209
  store i16 1, ptr %200, align 2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.11) #6
  %216 = load i16, ptr %200, align 2
  %217 = icmp eq i16 %216, 0
  %218 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 86
  store i8 0, ptr %218, align 4
  br i1 %217, label %245, label %219

219:                                              ; preds = %215, %203
  %220 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 103
  %221 = load i16, ptr %220, align 4
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %245, label %223

223:                                              ; preds = %219
  %224 = tail call zeroext i8 @mwifiex_check_last_packet_indication(ptr noundef %0) #6
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %245, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 53
  %228 = load i8, ptr %227, align 4
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 18, i32 27
  %232 = load ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %240, label %234

234:                                              ; preds = %230
  %235 = tail call zeroext i1 %232(ptr noundef %0) #6
  br i1 %235, label %240, label %236

236:                                              ; preds = %234, %226
  %237 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 90
  store i32 0, ptr %237, align 4
  %238 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 102
  store i8 0, ptr %238, align 2
  %239 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 105
  store i32 0, ptr %239, align 4
  br label %280

240:                                              ; preds = %234, %230
  %241 = tail call i32 @mwifiex_send_null_packet(ptr noundef %0, i8 noundef zeroext 9) #6
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %280

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 90
  store i32 3, ptr %244, align 4
  br label %280

245:                                              ; preds = %223, %219, %215, %213
  %246 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 90
  store i32 0, ptr %246, align 4
  %247 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 102
  store i8 0, ptr %247, align 2
  %248 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 105
  store i32 0, ptr %248, align 4
  br label %280

249:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.12) #6
  %250 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 51
  %251 = load ptr, ptr %250, align 4
  %252 = tail call i32 @mwifiex_11h_handle_chanrpt_ready(ptr noundef %0, ptr noundef %251) #6
  br label %280

253:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.13) #6
  %254 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 51
  %255 = load ptr, ptr %254, align 4
  %256 = tail call i32 @mwifiex_11h_handle_radar_detected(ptr noundef %0, ptr noundef %255) #6
  br label %280

257:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.14) #6
  %258 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 51
  %259 = load ptr, ptr %258, align 4
  tail call void @mwifiex_bt_coex_wlan_param_update_event(ptr noundef %0, ptr noundef %259) #6
  br label %280

260:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.15) #6
  %261 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 51
  %262 = load ptr, ptr %261, align 4
  tail call void @mwifiex_process_tx_pause_event(ptr noundef %0, ptr noundef %262) #6
  br label %280

263:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.16) #6
  %264 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 51
  %265 = load ptr, ptr %264, align 4
  tail call void @mwifiex_process_multi_chan_event(ptr noundef %0, ptr noundef %265) #6
  br label %280

266:                                              ; preds = %1
  %267 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 112
  %268 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 51
  %269 = load ptr, ptr %268, align 4
  %270 = getelementptr inbounds %struct.sk_buff, ptr %269, i32 0, i32 5
  %271 = load i32, ptr %270, align 8
  %272 = trunc i32 %271 to i16
  %273 = add i16 %272, -4
  tail call void @mwifiex_11n_rxba_sync_event(ptr noundef %0, ptr noundef %267, i16 noundef zeroext %273) #6
  br label %280

274:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.17) #6
  %275 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103
  %276 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 129
  %277 = load i64, ptr %276, align 8
  %278 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 129, i32 1
  tail call void @cfg80211_remain_on_channel_expired(ptr noundef %275, i64 noundef %277, ptr noundef %278, i32 noundef 2592) #6
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(64) %276, i8 0, i32 64, i1 false)
  br label %280

279:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.18, i32 noundef %4) #6
  br label %280

280:                                              ; preds = %279, %274, %266, %263, %260, %257, %253, %249, %245, %243, %240, %236, %197, %195, %189, %185, %183, %179, %177, %173, %170, %166, %160, %153, %152, %148, %128, %122, %95, %92, %91, %79, %44, %39, %5
  %281 = phi i32 [ %194, %189 ], [ -1, %39 ], [ -12, %5 ], [ 0, %243 ], [ 0, %240 ], [ 0, %185 ], [ 0, %179 ], [ 0, %183 ], [ 0, %173 ], [ 0, %177 ], [ 0, %166 ], [ 0, %170 ], [ 0, %153 ], [ 0, %160 ], [ 0, %279 ], [ 0, %274 ], [ 0, %266 ], [ 0, %263 ], [ 0, %260 ], [ 0, %257 ], [ 0, %253 ], [ 0, %249 ], [ 0, %245 ], [ 0, %236 ], [ 0, %197 ], [ 0, %195 ], [ 0, %152 ], [ 0, %95 ], [ 0, %92 ], [ 0, %91 ], [ 0, %79 ], [ 0, %44 ], [ 0, %122 ], [ 0, %128 ], [ 0, %148 ]
  ret i32 %281
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_new_sta(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_add_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_sta_ht_cap(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_del_rx_reorder_tbl_by_ta(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_del_tx_ba_stream_tbl_by_ra(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wmm_del_peer_ra_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_del_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_clean_txrx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_del_all_sta_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_hist_data_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_delete_ba_stream(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_ba_stream_timeout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_handle_event_ext_scan_report(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_parse_tx_status_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_check_ps_cond(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_check_last_packet_indication(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_null_packet(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_11h_handle_chanrpt_ready(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_11h_handle_radar_detected(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_bt_coex_wlan_param_update_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_process_tx_pause_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_process_multi_chan_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_rxba_sync_event(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_remain_on_channel_expired(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_uap_del_sta_data(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 125
  %4 = load i8, ptr %3, align 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %1, i32 0, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %1, i32 0, i32 1
  tail call void @mwifiex_11n_del_rx_reorder_tbl_by_ta(ptr noundef %0, ptr noundef %11) #6
  tail call void @mwifiex_del_tx_ba_stream_tbl_by_ra(ptr noundef %0, ptr noundef %11) #6
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %1, i32 0, i32 1
  tail call void @mwifiex_del_sta_entry(ptr noundef %0, ptr noundef %13) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_del_sta_sinfo(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wmm_setup_ac_downgrade(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wmm_setup_queue_priorities(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind allocsize(2) }
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
!8 = !{i8 0, i8 2}
