; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.atomic_t = type { i32 }
%struct.mwifiex_tx_aggr = type { i8, i8, i8 }
%struct.mwifiex_add_ba_param = type { i32, i32, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mwifiex_vendor_spec_cfg_ie = type { i16, i16, [256 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mwifiex_chan_freq_power = type { i16, i32, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_11h_intf_state = type { i8, i8 }
%struct.mwifiex_ds_mem_rw = type { i32, i32 }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.mwifiex_user_scan_chan = type { i8, i8, i8, i8, i32 }
%struct.mwifiex_rx_reorder_tbl = type { %struct.list_head, i32, [6 x i8], i32, i32, i32, ptr, %struct.reorder_tmr_cnxt, i8, i8 }
%struct.reorder_tmr_cnxt = type { %struct.timer_list, ptr, ptr, i8 }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
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
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.148 }
%union.anon.148 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
%struct.host_cmd_ds_11n_addba_req = type { i8, [6 x i8], i8, i16, i16, i16 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.host_cmd_ds_11n_addba_rsp = type { i8, [6 x i8], i8, i16, i16, i16, i16 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
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
%struct.rxpd = type <{ i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, [3 x i8], i8 }>
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.mwifiex_ra_list_tbl = type { %struct.list_head, %struct.sk_buff_head, [6 x i8], i32, i16, i16, i8, i32, i8, i16, i8, i8 }
%struct.host_cmd_ds_11n_delba = type <{ i8, [6 x i8], i16, i16, i8 }>
%struct.host_cmd_ds_11n_batimeout = type { i8, [6 x i8], i8 }
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ie_types_rxba_sync = type <{ %struct.mwifiex_ie_types_header, [6 x i8], i8, i8, i16, i16, [1 x i8] }>

@.str = private unnamed_addr constant [38 x i8] c"BA setup with unknown TDLS peer %pM!\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"RXREOR_FORCE_NO_DROP when HS is activated\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Sender TID sequence number reset %d->%d for SSN %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"event: DELBA: %pM tid=%d initiator=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"event: TID, TA not found in table\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"event: TID, RA not found in table\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"ADDBA RSP: failed %pM tid=%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"cmd: ADDBA RSP: %pM tid=%d ssn=%d win_size=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"RXBA_SYNC event:\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Wrong TLV id=0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"%pM tid=%d seq_num=%d bitmap_len=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Can not find rx_reorder_tbl!\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"drop packet,seq=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Fail to drop packet\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"info: last_seq=%d start_win=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"%s: failed to alloc reorder_ptr\0A\00", align 1
@__func__.mwifiex_11n_create_rx_reorder_tbl = private unnamed_addr constant [34 x i8] c"mwifiex_11n_create_rx_reorder_tbl\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.17 = private unnamed_addr constant [21 x i8] c"info: flush data %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"info: fw drop data\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Rx of A-MSDU failed\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@switch.table.mwifiex_update_ampdu_rxwinsize = private unnamed_addr constant [3 x i32] [i32 64, i32 16, i32 64], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mwifiex_11n_get_rx_reorder_tbl(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 89
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %20, label %8

8:                                                ; preds = %17, %3
  %9 = phi ptr [ %18, %17 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %9, i32 0, i32 2
  %11 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %10, ptr noundef dereferenceable(6) %2, i32 6)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %9, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %8
  %18 = load ptr, ptr %9, align 4
  %19 = icmp eq ptr %18, %5
  br i1 %19, label %20, label %8

20:                                               ; preds = %17, %13, %3
  %21 = phi ptr [ null, %3 ], [ %9, %13 ], [ null, %17 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #10
  ret ptr %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_11n_del_rx_reorder_tbl_by_ta(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 89
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %18, label %9

9:                                                ; preds = %16, %4
  %10 = phi ptr [ %11, %16 ], [ %7, %4 ]
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %10, i32 0, i32 2
  %13 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %12, ptr noundef nonnull dereferenceable(6) %1, i32 6)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #10
  tail call fastcc void @mwifiex_del_rx_reorder_entry(ptr noundef %0, ptr noundef %10)
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #10
  br label %16

16:                                               ; preds = %15, %9
  %17 = icmp eq ptr %11, %6
  br i1 %17, label %18, label %9

18:                                               ; preds = %16, %4
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #10
  br label %19

19:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_del_rx_reorder_entry(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 70
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #10
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 33
  store i8 1, ptr %8, align 1
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 31
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 70
  tail call void @_raw_spin_unlock_bh(ptr noundef %13) #10
  br i1 %12, label %18, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.mwifiex_adapter, ptr %15, i32 0, i32 26
  %17 = load ptr, ptr %16, align 4
  tail call void @flush_workqueue(ptr noundef %17) #10
  br label %18

18:                                               ; preds = %14, %4
  %19 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %1, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %1, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  %24 = and i32 %23, 4095
  tail call fastcc void @mwifiex_11n_dispatch_pkt_until_start_win(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %24)
  %25 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %1, i32 0, i32 7
  %26 = tail call i32 @del_timer_sync(ptr noundef %25) #10
  %27 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %1, i32 0, i32 7, i32 3
  store i8 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %28) #10
  %29 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %1, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %28) #10
  %33 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %1, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  tail call void @kfree(ptr noundef %34) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr inbounds %struct.mwifiex_adapter, ptr %35, i32 0, i32 70
  tail call void @_raw_spin_lock_bh(ptr noundef %36) #10
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr inbounds %struct.mwifiex_adapter, ptr %37, i32 0, i32 33
  store i8 0, ptr %38, align 1
  %39 = load ptr, ptr %0, align 8
  %40 = getelementptr inbounds %struct.mwifiex_adapter, ptr %39, i32 0, i32 70
  tail call void @_raw_spin_unlock_bh(ptr noundef %40) #10
  br label %41

41:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_cmd_11n_addba_req(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4
  store i16 206, ptr %0, align 1
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 1
  store i16 22, ptr %4, align 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(14) %3, ptr noundef align 1 dereferenceable(14) %1, i32 14, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_11n_addba_rsp_gen(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 86, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %3
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 47
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 16384
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 128
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 112
  %23 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %2, i32 0, i32 1
  %24 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %22, ptr noundef dereferenceable(6) %23, i32 6)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %27) #10
  %28 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %23) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  tail call void @_raw_spin_unlock_bh(ptr noundef %27) #10
  %31 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %31, i32 noundef 4, ptr noundef nonnull @.str, ptr noundef %23) #10
  br label %175

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %28, i32 0, i32 4
  %34 = load i8, ptr %33, align 8
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i32 %6, i32 64
  tail call void @_raw_spin_unlock_bh(ptr noundef %27) #10
  br label %37

37:                                               ; preds = %32, %21, %17, %11, %3
  %38 = phi i32 [ %36, %32 ], [ %6, %21 ], [ %6, %17 ], [ %6, %11 ], [ %6, %3 ]
  store i16 207, ptr %1, align 1
  %39 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 24, ptr %39, align 1
  %40 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, ptr %4, i32 0, i32 1
  %41 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %40, ptr noundef align 1 dereferenceable(6) %41, i32 6, i1 false)
  %42 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %2, i32 0, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, ptr %4, i32 0, i32 2
  store i8 %43, ptr %44, align 1
  %45 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %2, i32 0, i32 4
  %46 = load i16, ptr %45, align 1
  %47 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 3
  store i16 %46, ptr %47, align 1
  %48 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %2, i32 0, i32 5
  %49 = load i16, ptr %48, align 1
  %50 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 4
  store i16 %49, ptr %50, align 1
  %51 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %2, i32 0, i32 3
  %52 = load i16, ptr %51, align 1
  %53 = trunc i16 %52 to i8
  %54 = lshr i8 %53, 2
  %55 = and i8 %54, 15
  %56 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  store i16 0, ptr %56, align 1
  %57 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 86, i32 4
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %37
  %61 = zext i8 %55 to i32
  br label %68

62:                                               ; preds = %37
  %63 = and i16 %52, 63
  %64 = zext i8 %55 to i32
  %65 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 %64, i32 2
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, -1
  br i1 %67, label %68, label %71

68:                                               ; preds = %62, %60
  %69 = phi i32 [ %61, %60 ], [ %64, %62 ]
  %70 = and i16 %52, 62
  br label %71

71:                                               ; preds = %68, %62
  %72 = phi i32 [ %69, %68 ], [ %64, %62 ]
  %73 = phi i16 [ %70, %68 ], [ %63, %62 ]
  %74 = trunc i32 %38 to i16
  %75 = shl i16 %74, 6
  %76 = or i16 %73, %75
  %77 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 2
  store i16 %76, ptr %77, align 1
  %78 = and i32 %38, 1023
  store i16 %76, ptr %51, align 1
  %79 = load i16, ptr %48, align 1
  %80 = zext i16 %79 to i32
  %81 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %81) #10
  %82 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 89
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %82
  br i1 %84, label %97, label %85

85:                                               ; preds = %94, %71
  %86 = phi ptr [ %95, %94 ], [ %83, %71 ]
  %87 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %86, i32 0, i32 2
  %88 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %87, ptr noundef dereferenceable(6) %41, i32 6) #10
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %86, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, %72
  br i1 %93, label %98, label %94

94:                                               ; preds = %90, %85
  %95 = load ptr, ptr %86, align 4
  %96 = icmp eq ptr %95, %82
  br i1 %96, label %97, label %85

97:                                               ; preds = %94, %71
  tail call void @_raw_spin_unlock_bh(ptr noundef %81) #10
  br label %101

98:                                               ; preds = %90
  tail call void @_raw_spin_unlock_bh(ptr noundef %81) #10
  %99 = icmp eq ptr %86, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %98
  tail call fastcc void @mwifiex_11n_dispatch_pkt_until_start_win(ptr noundef %0, ptr noundef nonnull %86, i32 noundef %80) #10
  br label %175

101:                                              ; preds = %98, %97
  %102 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %103 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %102, i32 noundef 3520, i32 noundef 72) #11
  %104 = icmp eq ptr %103, null
  br i1 %104, label %175, label %105

105:                                              ; preds = %101
  store volatile ptr %103, ptr %103, align 8
  %106 = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  store ptr %103, ptr %106, align 4
  %107 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %103, i32 0, i32 1
  store i32 %72, ptr %107, align 8
  %108 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %103, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %108, ptr noundef align 1 dereferenceable(6) %41, i32 6, i1 false) #10
  %109 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %103, i32 0, i32 4
  store i32 %80, ptr %109, align 8
  %110 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %103, i32 0, i32 3
  store i32 %80, ptr %110, align 4
  %111 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %103, i32 0, i32 9
  store i8 0, ptr %111, align 1
  %112 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %112) #10
  %113 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %114 = load i32, ptr %113, align 8
  switch i32 %114, label %115 [
    i32 2, label %117
    i32 8, label %117
  ]

115:                                              ; preds = %105
  %116 = load i8, ptr %7, align 1
  br label %121

117:                                              ; preds = %105, %105
  %118 = load i8, ptr %7, align 1
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %117, %115
  %122 = phi i8 [ %116, %115 ], [ %118, %117 ]
  %123 = icmp eq i8 %122, 1
  br i1 %123, label %124, label %139

124:                                              ; preds = %121
  %125 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %41) #10
  %126 = icmp eq ptr %125, null
  br i1 %126, label %139, label %127

127:                                              ; preds = %124
  %128 = getelementptr %struct.mwifiex_sta_node, ptr %125, i32 0, i32 6, i32 %72
  br label %136

129:                                              ; preds = %117
  %130 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %41) #10
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = getelementptr %struct.mwifiex_sta_node, ptr %130, i32 0, i32 6, i32 %72
  br label %136

134:                                              ; preds = %129
  %135 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 87, i32 %72
  br label %136

136:                                              ; preds = %134, %132, %127
  %137 = phi ptr [ %133, %132 ], [ %135, %134 ], [ %128, %127 ]
  %138 = load i16, ptr %137, align 2
  br label %139

139:                                              ; preds = %136, %124, %121
  %140 = phi i16 [ 0, %124 ], [ 0, %121 ], [ %138, %136 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %112) #10
  %141 = load ptr, ptr %0, align 8
  %142 = zext i16 %140 to i32
  %143 = load i32, ptr %109, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %141, i32 noundef 1073741824, ptr noundef nonnull @.str.15, i32 noundef %142, i32 noundef %143) #10
  %144 = icmp eq i16 %140, -1
  br i1 %144, label %152, label %145

145:                                              ; preds = %139
  %146 = load i32, ptr %109, align 8
  %147 = icmp sgt i32 %146, %142
  br i1 %147, label %152, label %148

148:                                              ; preds = %145
  %149 = add nuw nsw i32 %142, 1
  store i32 %149, ptr %109, align 8
  %150 = load i8, ptr %111, align 1
  %151 = or i8 %150, 2
  store i8 %151, ptr %111, align 1
  br label %152

152:                                              ; preds = %148, %145, %139
  %153 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %103, i32 0, i32 5
  store i32 %78, ptr %153, align 4
  %154 = shl nuw nsw i32 %78, 2
  %155 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %154, i32 noundef 3520) #12
  %156 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %103, i32 0, i32 6
  store ptr %155, ptr %156, align 8
  %157 = icmp eq ptr %155, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  tail call void @kfree(ptr noundef nonnull %103) #10
  %159 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %159, i32 noundef 4, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.mwifiex_11n_create_rx_reorder_tbl) #10
  br label %175

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %103, i32 0, i32 7
  %162 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %103, i32 0, i32 7, i32 1
  store ptr %103, ptr %162, align 8
  %163 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %103, i32 0, i32 7, i32 2
  store ptr %0, ptr %163, align 4
  %164 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %103, i32 0, i32 7, i32 3
  store i8 0, ptr %164, align 8
  tail call void @init_timer_key(ptr noundef %161, ptr noundef nonnull @mwifiex_flush_data, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %165 = icmp eq i32 %78, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %166, %160
  %167 = phi i32 [ %170, %166 ], [ 0, %160 ]
  %168 = load ptr, ptr %156, align 8
  %169 = getelementptr ptr, ptr %168, i32 %167
  store ptr null, ptr %169, align 4
  %170 = add nuw nsw i32 %167, 1
  %171 = icmp eq i32 %170, %78
  br i1 %171, label %172, label %166

172:                                              ; preds = %166, %160
  tail call void @_raw_spin_lock_bh(ptr noundef %81) #10
  %173 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 89, i32 1
  %174 = load ptr, ptr %173, align 4
  store ptr %103, ptr %173, align 4
  store ptr %82, ptr %103, align 8
  store ptr %174, ptr %106, align 4
  store volatile ptr %103, ptr %174, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %81) #10
  br label %175

175:                                              ; preds = %172, %158, %101, %100, %30
  %176 = phi i32 [ -1, %30 ], [ 0, %100 ], [ 0, %101 ], [ 0, %158 ], [ 0, %172 ]
  ret i32 %176
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_cmd_11n_delba(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4
  store i16 208, ptr %0, align 1
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 1
  store i16 20, ptr %4, align 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %3, ptr noundef align 1 dereferenceable(12) %1, i32 12, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_11n_rx_reorder_pkt(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.sk_buff_head, align 4
  %8 = zext i16 %2 to i32
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 89
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %25, label %13

13:                                               ; preds = %22, %6
  %14 = phi ptr [ %23, %22 ], [ %11, %6 ]
  %15 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %14, i32 0, i32 2
  %16 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %15, ptr noundef dereferenceable(6) %3, i32 6) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %14, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %8
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %13
  %23 = load ptr, ptr %14, align 4
  %24 = icmp eq ptr %23, %10
  br i1 %24, label %25, label %13

25:                                               ; preds = %22, %6
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #10
  br label %28

26:                                               ; preds = %18
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #10
  %27 = icmp eq ptr %14, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %26, %25
  %29 = icmp eq i8 %4, -25
  br i1 %29, label %210, label %30

30:                                               ; preds = %28
  tail call fastcc void @mwifiex_11n_dispatch_pkt(ptr noundef %0, ptr noundef %5)
  br label %210

31:                                               ; preds = %26
  %32 = icmp eq i8 %4, -26
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %14, i32 0, i32 8
  %35 = load i8, ptr %34, align 4
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call fastcc void @mwifiex_11n_dispatch_pkt(ptr noundef %0, ptr noundef %5)
  br label %210

38:                                               ; preds = %33, %31
  %39 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %14, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %14, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %40, 4095
  %44 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %14, i32 0, i32 9
  %45 = load i8, ptr %44, align 1
  %46 = and i8 %45, 2
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = and i8 %45, 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %69, label %55

51:                                               ; preds = %38
  %52 = and i8 %45, -3
  store i8 %52, ptr %44, align 1
  %53 = and i8 %45, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51, %48
  %56 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %56, i32 noundef 1073741824, ptr noundef nonnull @.str.1) #10
  %57 = load i8, ptr %44, align 1
  %58 = and i8 %57, -2
  store i8 %58, ptr %44, align 1
  br label %82

59:                                               ; preds = %51
  %60 = zext i16 %1 to i32
  %61 = icmp sgt i32 %40, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %14, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = icmp sgt i32 %64, %60
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %67, i32 noundef 1073741824, ptr noundef nonnull @.str.2, i32 noundef %40, i32 noundef %60, i32 noundef %64) #10
  store i32 %60, ptr %39, align 4
  %68 = add nsw i32 %60, -1
  br label %82

69:                                               ; preds = %62, %59, %48
  %70 = add i32 %40, 2048
  %71 = icmp sgt i32 %70, 4095
  %72 = zext i16 %1 to i32
  br i1 %71, label %73, label %78

73:                                               ; preds = %69
  %74 = and i32 %70, 4095
  %75 = icmp ule i32 %74, %72
  %76 = icmp ugt i32 %40, %72
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %192, label %82

78:                                               ; preds = %69
  %79 = icmp sle i32 %40, %72
  %80 = icmp sgt i32 %70, %72
  %81 = and i1 %79, %80
  br i1 %81, label %82, label %192

82:                                               ; preds = %78, %73, %66, %55
  %83 = phi i32 [ %40, %55 ], [ %60, %66 ], [ %40, %73 ], [ %40, %78 ]
  %84 = phi i32 [ %43, %55 ], [ %68, %66 ], [ %43, %73 ], [ %43, %78 ]
  %85 = add i32 %84, %42
  %86 = and i32 %85, 4095
  %87 = icmp eq i8 %4, -25
  %88 = trunc i32 %42 to i16
  %89 = add i16 %1, 4095
  %90 = add i16 %89, %88
  %91 = and i16 %90, 4095
  %92 = select i1 %87, i16 %91, i16 %1
  %93 = icmp slt i32 %86, %83
  br i1 %93, label %94, label %99

94:                                               ; preds = %82
  %95 = zext i16 %92 to i32
  %96 = icmp sgt i32 %83, %95
  %97 = icmp ult i32 %86, %95
  %98 = select i1 %96, i1 %97, i1 false
  br i1 %98, label %106, label %99

99:                                               ; preds = %94, %82
  %100 = icmp sgt i32 %86, %83
  br i1 %100, label %101, label %113

101:                                              ; preds = %99
  %102 = zext i16 %92 to i32
  %103 = icmp ult i32 %86, %102
  %104 = icmp sgt i32 %83, %102
  %105 = select i1 %103, i1 true, i1 %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %101, %94
  %107 = phi i32 [ %95, %94 ], [ %102, %101 ]
  %108 = sub i32 %107, %42
  %109 = add i32 %108, 1
  %110 = add i32 %108, 4097
  %111 = icmp slt i32 %109, 0
  %112 = select i1 %111, i32 %110, i32 %109
  tail call fastcc void @mwifiex_11n_dispatch_pkt_until_start_win(ptr noundef %0, ptr noundef nonnull %14, i32 noundef %112)
  br label %113

113:                                              ; preds = %106, %101, %99
  %114 = phi i32 [ %112, %106 ], [ %83, %99 ], [ %83, %101 ]
  br i1 %87, label %128, label %115

115:                                              ; preds = %113
  %116 = zext i16 %92 to i32
  %117 = icmp sgt i32 %114, %116
  %118 = add nuw nsw i32 %116, 4096
  %119 = select i1 %117, i32 %118, i32 %116
  %120 = sub i32 %119, %114
  %121 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %14, i32 0, i32 6
  %122 = load ptr, ptr %121, align 4
  %123 = and i32 %120, 65535
  %124 = getelementptr ptr, ptr %122, i32 %123
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %192

127:                                              ; preds = %115
  store ptr %5, ptr %124, align 4
  br label %128

128:                                              ; preds = %127, %113
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  %129 = getelementptr inbounds i8, ptr %7, i32 12
  store i32 0, ptr %129, align 4, !annotation !9
  store ptr %7, ptr %7, align 4
  %130 = getelementptr inbounds %struct.anon.77, ptr %7, i32 0, i32 1
  store ptr %7, ptr %130, align 4
  %131 = getelementptr inbounds %struct.sk_buff_head, ptr %7, i32 0, i32 1
  store i32 0, ptr %131, align 4
  call void @_raw_spin_lock_bh(ptr noundef %9) #10
  %132 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %14, i32 0, i32 6
  %133 = load i32, ptr %41, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %170

135:                                              ; preds = %128
  %136 = load ptr, ptr %132, align 4
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %170, label %144

139:                                              ; preds = %144
  %140 = load ptr, ptr %132, align 4
  %141 = getelementptr ptr, ptr %140, i32 %153
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %156, label %144

144:                                              ; preds = %139, %135
  %145 = phi ptr [ %142, %139 ], [ %137, %135 ]
  %146 = phi i32 [ %153, %139 ], [ 0, %135 ]
  %147 = load ptr, ptr %130, align 4
  store volatile ptr %7, ptr %145, align 8
  %148 = getelementptr inbounds %struct.anon.49, ptr %145, i32 0, i32 1
  store volatile ptr %147, ptr %148, align 4
  store volatile ptr %145, ptr %130, align 4
  store volatile ptr %145, ptr %147, align 4
  %149 = load i32, ptr %131, align 4
  %150 = add i32 %149, 1
  store volatile i32 %150, ptr %131, align 4
  %151 = load ptr, ptr %132, align 4
  %152 = getelementptr ptr, ptr %151, i32 %146
  store ptr null, ptr %152, align 4
  %153 = add nuw nsw i32 %146, 1
  %154 = load i32, ptr %41, align 4
  %155 = icmp sgt i32 %154, %153
  br i1 %155, label %139, label %156

156:                                              ; preds = %144, %139
  %157 = sub i32 %154, %153
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %159, %156
  %160 = phi i32 [ %168, %159 ], [ 0, %156 ]
  %161 = load ptr, ptr %132, align 4
  %162 = add nuw i32 %160, %153
  %163 = getelementptr ptr, ptr %161, i32 %162
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr ptr, ptr %161, i32 %160
  store ptr %164, ptr %165, align 4
  %166 = load ptr, ptr %132, align 4
  %167 = getelementptr ptr, ptr %166, i32 %162
  store ptr null, ptr %167, align 4
  %168 = add nuw nsw i32 %160, 1
  %169 = icmp eq i32 %168, %157
  br i1 %169, label %170, label %159

170:                                              ; preds = %159, %156, %135, %128
  %171 = phi i32 [ %153, %156 ], [ 0, %128 ], [ 0, %135 ], [ %153, %159 ]
  %172 = load i32, ptr %39, align 4
  %173 = add i32 %172, %171
  %174 = and i32 %173, 4095
  store i32 %174, ptr %39, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %9) #10
  %175 = load ptr, ptr %7, align 4
  %176 = icmp eq ptr %175, %7
  %177 = icmp eq ptr %175, null
  %178 = or i1 %176, %177
  br i1 %178, label %191, label %179

179:                                              ; preds = %179, %170
  %180 = phi ptr [ %187, %179 ], [ %175, %170 ]
  %181 = load i32, ptr %131, align 4
  %182 = add i32 %181, -1
  store volatile i32 %182, ptr %131, align 4
  %183 = load ptr, ptr %180, align 8
  %184 = getelementptr inbounds %struct.anon.49, ptr %180, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  store ptr null, ptr %184, align 4
  store ptr null, ptr %180, align 8
  %186 = getelementptr inbounds %struct.anon.49, ptr %183, i32 0, i32 1
  store volatile ptr %185, ptr %186, align 4
  store volatile ptr %183, ptr %185, align 8
  call fastcc void @mwifiex_11n_dispatch_pkt(ptr noundef %0, ptr noundef nonnull %180) #10
  %187 = load ptr, ptr %7, align 4
  %188 = icmp eq ptr %187, %7
  %189 = icmp eq ptr %187, null
  %190 = or i1 %188, %189
  br i1 %190, label %191, label %179

191:                                              ; preds = %179, %170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  br label %192

192:                                              ; preds = %191, %115, %78, %73
  %193 = phi i32 [ 0, %191 ], [ -1, %73 ], [ -1, %78 ], [ -1, %115 ]
  %194 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %14, i32 0, i32 7, i32 3
  %195 = load i8, ptr %194, align 4
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %192
  %198 = load i32, ptr %39, align 4
  %199 = icmp eq i32 %40, %198
  br i1 %199, label %210, label %200

200:                                              ; preds = %197, %192
  %201 = load i32, ptr %41, align 4
  %202 = load volatile i32, ptr @jiffies, align 64
  %203 = icmp sgt i32 %201, 31
  %204 = select i1 %203, i32 15, i32 50
  %205 = mul i32 %204, %201
  %206 = call i32 @__msecs_to_jiffies(i32 noundef %205) #10
  %207 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %14, i32 0, i32 7
  %208 = add i32 %206, %202
  %209 = call i32 @mod_timer(ptr noundef %207, i32 noundef %208) #10
  store i8 1, ptr %194, align 4
  br label %210

210:                                              ; preds = %200, %197, %37, %30, %28
  %211 = phi i32 [ 0, %37 ], [ 0, %30 ], [ 0, %28 ], [ %193, %200 ], [ %193, %197 ]
  ret i32 %211
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_11n_dispatch_pkt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.sk_buff_head, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 1073741824, ptr noundef nonnull @.str.18) #10
  br label %80

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rxpd, ptr %9, i32 0, i32 4
  %11 = load i16, ptr %10, align 1
  %12 = icmp eq i16 %11, 230
  br i1 %12, label %13, label %72

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %14 = getelementptr inbounds i8, ptr %3, i32 12
  store i32 0, ptr %14, align 4, !annotation !9
  store ptr %3, ptr %3, align 4
  %15 = getelementptr inbounds %struct.anon.77, ptr %3, i32 0, i32 1
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.sk_buff_head, ptr %3, i32 0, i32 1
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rxpd, ptr %9, i32 0, i32 3
  %18 = load i16, ptr %17, align 1
  %19 = zext i16 %18 to i32
  %20 = call ptr @skb_pull(ptr noundef nonnull %1, i32 noundef %19) #10
  %21 = getelementptr inbounds %struct.rxpd, ptr %9, i32 0, i32 2
  %22 = load i16, ptr %21, align 1
  %23 = zext i16 %22 to i32
  call void @skb_trim(ptr noundef nonnull %1, i32 noundef %23) #10
  %24 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 7
  %25 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103, i32 1
  %26 = load i32, ptr %25, align 4
  call void @ieee80211_amsdu_to_8023s(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef %24, i32 noundef %26, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %27 = load ptr, ptr %3, align 4
  %28 = icmp eq ptr %27, %3
  br i1 %28, label %71, label %29

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %31 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  br label %32

32:                                               ; preds = %68, %29
  %33 = phi ptr [ %27, %29 ], [ %69, %68 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %16, align 4
  %37 = add i32 %36, -1
  store volatile i32 %37, ptr %16, align 4
  %38 = load ptr, ptr %33, align 8
  %39 = getelementptr inbounds %struct.anon.49, ptr %33, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  store ptr null, ptr %39, align 4
  store ptr null, ptr %33, align 8
  %41 = getelementptr inbounds %struct.anon.49, ptr %38, i32 0, i32 1
  store volatile ptr %40, ptr %41, align 4
  store volatile ptr %38, ptr %40, align 8
  br label %42

42:                                               ; preds = %35, %32
  %43 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 17
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr inbounds %struct.mwifiex_adapter, ptr %45, i32 0, i32 47
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 16384
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.ethhdr, ptr %44, i32 0, i32 2
  %52 = load i16, ptr %51, align 1
  %53 = icmp eq i16 %52, 3465
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, ptr %30, align 8
  call void @mwifiex_process_tdls_action_frame(ptr noundef %0, ptr noundef %44, i32 noundef %55) #10
  br label %56

56:                                               ; preds = %54, %50, %42
  %57 = load i8, ptr %31, align 1
  %58 = icmp eq i8 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 @mwifiex_uap_recv_packet(ptr noundef %0, ptr noundef %33) #10
  br label %63

61:                                               ; preds = %56
  %62 = call i32 @mwifiex_recv_packet(ptr noundef %0, ptr noundef %33) #10
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %67, i32 noundef 4, ptr noundef nonnull @.str.19) #10
  br label %68

68:                                               ; preds = %66, %63
  %69 = load ptr, ptr %3, align 4
  %70 = icmp eq ptr %69, %3
  br i1 %70, label %71, label %32

71:                                               ; preds = %68, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  br label %80

72:                                               ; preds = %7
  %73 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %74, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = tail call i32 @mwifiex_handle_uap_rx_forward(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %80

78:                                               ; preds = %72
  %79 = tail call i32 @mwifiex_process_rx_packet(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %80

80:                                               ; preds = %78, %76, %71, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_11n_dispatch_pkt_until_start_win(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.sk_buff_head, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %5 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 0, ptr %5, align 4, !annotation !9
  store ptr %4, ptr %4, align 4
  %6 = getelementptr inbounds %struct.anon.77, ptr %4, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.sk_buff_head, ptr %4, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 90
  call void @_raw_spin_lock_bh(ptr noundef %8) #10
  %9 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = sub i32 %2, %10
  %14 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %1, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = call i32 @llvm.smin.i32(i32 %13, i32 %15)
  br label %20

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %1, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ %15, %12 ], [ %19, %17 ]
  %22 = phi i32 [ %16, %12 ], [ %19, %17 ]
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %1, i32 0, i32 6
  br label %36

26:                                               ; preds = %49
  %27 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %1, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi i32 [ %28, %26 ], [ %21, %20 ]
  %31 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %1, i32 0, i32 5
  %32 = sub i32 %30, %22
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %1, i32 0, i32 6
  br label %52

36:                                               ; preds = %49, %24
  %37 = phi i32 [ 0, %24 ], [ %50, %49 ]
  %38 = load ptr, ptr %25, align 4
  %39 = getelementptr ptr, ptr %38, i32 %37
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %6, align 4
  store volatile ptr %4, ptr %40, align 8
  %44 = getelementptr inbounds %struct.anon.49, ptr %40, i32 0, i32 1
  store volatile ptr %43, ptr %44, align 4
  store volatile ptr %40, ptr %6, align 4
  store volatile ptr %40, ptr %43, align 4
  %45 = load i32, ptr %7, align 4
  %46 = add i32 %45, 1
  store volatile i32 %46, ptr %7, align 4
  %47 = load ptr, ptr %25, align 4
  %48 = getelementptr ptr, ptr %47, i32 %37
  store ptr null, ptr %48, align 4
  br label %49

49:                                               ; preds = %42, %36
  %50 = add nuw nsw i32 %37, 1
  %51 = icmp eq i32 %50, %22
  br i1 %51, label %26, label %36

52:                                               ; preds = %52, %34
  %53 = phi i32 [ 0, %34 ], [ %61, %52 ]
  %54 = load ptr, ptr %35, align 4
  %55 = add i32 %53, %22
  %56 = getelementptr ptr, ptr %54, i32 %55
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr ptr, ptr %54, i32 %53
  store ptr %57, ptr %58, align 4
  %59 = load ptr, ptr %35, align 4
  %60 = getelementptr ptr, ptr %59, i32 %55
  store ptr null, ptr %60, align 4
  %61 = add nuw nsw i32 %53, 1
  %62 = load i32, ptr %31, align 4
  %63 = sub i32 %62, %22
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %52, label %65

65:                                               ; preds = %52, %29
  store i32 %2, ptr %9, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %8) #10
  %66 = load ptr, ptr %4, align 4
  %67 = icmp eq ptr %66, %4
  %68 = icmp eq ptr %66, null
  %69 = or i1 %67, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %70, %65
  %71 = phi ptr [ %78, %70 ], [ %66, %65 ]
  %72 = load i32, ptr %7, align 4
  %73 = add i32 %72, -1
  store volatile i32 %73, ptr %7, align 4
  %74 = load ptr, ptr %71, align 8
  %75 = getelementptr inbounds %struct.anon.49, ptr %71, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  store ptr null, ptr %75, align 4
  store ptr null, ptr %71, align 8
  %77 = getelementptr inbounds %struct.anon.49, ptr %74, i32 0, i32 1
  store volatile ptr %76, ptr %77, align 4
  store volatile ptr %74, ptr %76, align 8
  call fastcc void @mwifiex_11n_dispatch_pkt(ptr noundef %0, ptr noundef nonnull %71)
  %78 = load ptr, ptr %4, align 4
  %79 = icmp eq ptr %78, %4
  %80 = icmp eq ptr %78, null
  %81 = or i1 %79, %80
  br i1 %81, label %82, label %70

82:                                               ; preds = %70, %65
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_del_ba_tbl(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i8 %3, 2
  %7 = icmp ne i32 %4, 0
  %8 = icmp eq i32 %4, 0
  %9 = select i1 %6, i1 %7, i1 %8
  %10 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef %2, i32 noundef %1, i32 noundef %4) #10
  br i1 %9, label %11, label %34

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 89
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %28, label %16

16:                                               ; preds = %25, %11
  %17 = phi ptr [ %26, %25 ], [ %14, %11 ]
  %18 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %17, i32 0, i32 2
  %19 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %18, ptr noundef dereferenceable(6) %2, i32 6) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %17, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %29, label %25

25:                                               ; preds = %21, %16
  %26 = load ptr, ptr %17, align 4
  %27 = icmp eq ptr %26, %13
  br i1 %27, label %28, label %16

28:                                               ; preds = %25, %11
  tail call void @_raw_spin_unlock_bh(ptr noundef %12) #10
  br label %31

29:                                               ; preds = %21
  tail call void @_raw_spin_unlock_bh(ptr noundef %12) #10
  %30 = icmp eq ptr %17, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %29, %28
  %32 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %32, i32 noundef 32, ptr noundef nonnull @.str.4) #10
  br label %48

33:                                               ; preds = %29
  tail call fastcc void @mwifiex_del_rx_reorder_entry(ptr noundef %0, ptr noundef nonnull %17)
  br label %48

34:                                               ; preds = %5
  %35 = tail call ptr @mwifiex_get_ba_tbl(ptr noundef %0, i32 noundef %1, ptr noundef %2) #10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %38, i32 noundef 32, ptr noundef nonnull @.str.5) #10
  br label %48

39:                                               ; preds = %34
  %40 = tail call zeroext i8 @mwifiex_wmm_downgrade_tid(ptr noundef %0, i32 noundef %1) #10
  %41 = tail call ptr @mwifiex_wmm_get_ralist_node(ptr noundef %0, i8 noundef zeroext %40, ptr noundef %2) #10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %41, i32 0, i32 8
  store i8 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %41, i32 0, i32 7
  store i32 0, ptr %45, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %47) #10
  tail call void @mwifiex_11n_delete_tx_ba_stream_tbl_entry(ptr noundef %0, ptr noundef nonnull %35) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %47) #10
  br label %48

48:                                               ; preds = %46, %37, %33, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_ba_tbl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_wmm_downgrade_tid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_wmm_get_ralist_node(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_delete_tx_ba_stream_tbl_entry(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_11n_addba_resp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 2
  %5 = load i16, ptr %4, align 1
  %6 = zext i16 %5 to i32
  %7 = lshr i32 %6, 2
  %8 = and i32 %7, 15
  %9 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  %10 = load i16, ptr %9, align 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, ptr %3, i32 0, i32 1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %13, i32 noundef 4, ptr noundef nonnull @.str.6, ptr noundef %14, i32 noundef %8) #10
  %15 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 89
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %31, label %19

19:                                               ; preds = %28, %12
  %20 = phi ptr [ %29, %28 ], [ %17, %12 ]
  %21 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %20, i32 0, i32 2
  %22 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %21, ptr noundef dereferenceable(6) %14, i32 6) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %20, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %8
  br i1 %27, label %32, label %28

28:                                               ; preds = %24, %19
  %29 = load ptr, ptr %20, align 4
  %30 = icmp eq ptr %29, %16
  br i1 %30, label %31, label %19

31:                                               ; preds = %28, %12
  tail call void @_raw_spin_unlock_bh(ptr noundef %15) #10
  br label %77

32:                                               ; preds = %24
  tail call void @_raw_spin_unlock_bh(ptr noundef %15) #10
  %33 = icmp eq ptr %20, null
  br i1 %33, label %77, label %34

34:                                               ; preds = %32
  tail call fastcc void @mwifiex_del_rx_reorder_entry(ptr noundef %0, ptr noundef nonnull %20)
  br label %77

35:                                               ; preds = %2
  %36 = lshr i32 %6, 6
  %37 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, ptr %3, i32 0, i32 1
  %38 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %38) #10
  %39 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 89
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %54, label %42

42:                                               ; preds = %51, %35
  %43 = phi ptr [ %52, %51 ], [ %40, %35 ]
  %44 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %43, i32 0, i32 2
  %45 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %44, ptr noundef dereferenceable(6) %37, i32 6) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %43, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %8
  br i1 %50, label %55, label %51

51:                                               ; preds = %47, %42
  %52 = load ptr, ptr %43, align 4
  %53 = icmp eq ptr %52, %39
  br i1 %53, label %54, label %42

54:                                               ; preds = %51, %35
  tail call void @_raw_spin_unlock_bh(ptr noundef %38) #10
  br label %72

55:                                               ; preds = %47
  tail call void @_raw_spin_unlock_bh(ptr noundef %38) #10
  %56 = icmp eq ptr %43, null
  br i1 %56, label %72, label %57

57:                                               ; preds = %55
  %58 = and i32 %6, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 86, i32 4
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 %8, i32 2
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, -1
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %43, i32 0, i32 8
  store i8 1, ptr %69, align 4
  br label %72

70:                                               ; preds = %64, %60, %57
  %71 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %43, i32 0, i32 8
  store i8 0, ptr %71, align 4
  br label %72

72:                                               ; preds = %70, %68, %55, %54
  %73 = load ptr, ptr %0, align 8
  %74 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 4
  %75 = load i16, ptr %74, align 1
  %76 = zext i16 %75 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %73, i32 noundef 16, ptr noundef nonnull @.str.7, ptr noundef %37, i32 noundef %8, i32 noundef %76, i32 noundef %36) #10
  br label %77

77:                                               ; preds = %72, %34, %32, %31
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_11n_ba_stream_timeout(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.host_cmd_ds_11n_delba, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.host_cmd_ds_11n_batimeout, ptr %1, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %4, ptr noundef align 1 dereferenceable(6) %5, i32 6, i1 false)
  %6 = load i8, ptr %1, align 1
  %7 = zext i8 %6 to i16
  %8 = shl i16 %7, 12
  %9 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %3, i32 0, i32 2
  %10 = getelementptr inbounds %struct.host_cmd_ds_11n_batimeout, ptr %1, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  %13 = shl i16 %12, 11
  %14 = or i16 %13, %8
  store i16 %14, ptr %9, align 1
  %15 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %3, i32 0, i32 3
  store i16 39, ptr %15, align 1
  %16 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 208, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %3, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_11n_cleanup_reorder_tbl(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 89
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %10, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #10
  tail call fastcc void @mwifiex_del_rx_reorder_entry(ptr noundef %0, ptr noundef %7)
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #10
  %9 = icmp eq ptr %8, %3
  br i1 %9, label %10, label %6

10:                                               ; preds = %6, %1
  store volatile ptr %3, ptr %3, align 4
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 89, i32 1
  store ptr %3, ptr %11, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #10
  %12 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 87
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %12, i8 -1, i32 16, i1 false) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_update_rxreor_flags(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %24, %2
  %7 = phi i8 [ %25, %24 ], [ %4, %2 ]
  %8 = phi i32 [ %26, %24 ], [ 0, %2 ]
  %9 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 89
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %22, label %17

17:                                               ; preds = %17, %12
  %18 = phi ptr [ %20, %17 ], [ %15, %12 ]
  %19 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %18, i32 0, i32 9
  store i8 %1, ptr %19, align 1
  %20 = load ptr, ptr %18, align 4
  %21 = icmp eq ptr %20, %14
  br i1 %21, label %22, label %17

22:                                               ; preds = %17, %12
  tail call void @_raw_spin_unlock_bh(ptr noundef %13) #10
  %23 = load i8, ptr %3, align 4
  br label %24

24:                                               ; preds = %22, %6
  %25 = phi i8 [ %7, %6 ], [ %23, %22 ]
  %26 = add nuw nsw i32 %8, 1
  %27 = zext i8 %25 to i32
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %6, label %29

29:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_coex_ampdu_rxwinsize(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = zext i8 %3 to i32
  br label %7

7:                                                ; preds = %28, %5
  %8 = phi i32 [ 0, %5 ], [ %30, %28 ]
  %9 = phi i8 [ 0, %5 ], [ %29, %28 ]
  %10 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %11, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.mwifiex_private, ptr %11, i32 0, i32 8
  %20 = load i8, ptr %19, align 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %26

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %11, i32 0, i32 5
  %24 = load i8, ptr %23, align 8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %18
  %27 = icmp eq i8 %9, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %26, %22, %18, %7
  %29 = phi i8 [ 1, %26 ], [ %9, %7 ], [ %9, %22 ], [ %9, %18 ]
  %30 = add nuw nsw i32 %8, 1
  %31 = icmp eq i32 %30, %6
  br i1 %31, label %32, label %7

32:                                               ; preds = %28, %26, %1
  %33 = phi i1 [ false, %1 ], [ true, %26 ], [ false, %28 ]
  tail call fastcc void @mwifiex_update_ampdu_rxwinsize(ptr noundef %0, i1 noundef zeroext %33)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_update_ampdu_rxwinsize(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 155
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 157
  br label %9

9:                                                ; preds = %46, %6
  %10 = phi i8 [ 0, %6 ], [ %48, %46 ]
  %11 = zext i8 %10 to i32
  %12 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.mwifiex_private, ptr %13, i32 0, i32 86, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mwifiex_private, ptr %13, i32 0, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = icmp ult i8 %19, 3
  br i1 %1, label %21, label %22

21:                                               ; preds = %15
  br i1 %20, label %27, label %29

22:                                               ; preds = %15
  br i1 %20, label %23, label %29

23:                                               ; preds = %22
  %24 = sext i8 %19 to i32
  %25 = getelementptr inbounds [3 x i32], ptr @switch.table.mwifiex_update_ampdu_rxwinsize, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %23, %21
  %28 = phi i32 [ 16, %21 ], [ %26, %23 ]
  store i32 %28, ptr %16, align 4
  br label %29

29:                                               ; preds = %27, %22, %21
  %30 = phi i32 [ %17, %21 ], [ %17, %22 ], [ %28, %27 ]
  %31 = load i8, ptr %7, align 4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load i8, ptr %8, align 2
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = zext i8 %34 to i32
  store i32 %37, ptr %16, align 4
  br label %38

38:                                               ; preds = %36, %33, %29
  %39 = phi i32 [ %37, %36 ], [ %30, %33 ], [ %30, %29 ]
  %40 = icmp eq i32 %17, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.mwifiex_private, ptr %13, i32 0, i32 8
  %43 = load i8, ptr %42, align 8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @mwifiex_11n_delba(ptr noundef nonnull %13, i32 noundef 0) #10
  tail call void @mwifiex_11n_delba(ptr noundef nonnull %13, i32 noundef 1) #10
  tail call void @mwifiex_11n_delba(ptr noundef nonnull %13, i32 noundef 2) #10
  tail call void @mwifiex_11n_delba(ptr noundef nonnull %13, i32 noundef 3) #10
  tail call void @mwifiex_11n_delba(ptr noundef nonnull %13, i32 noundef 4) #10
  tail call void @mwifiex_11n_delba(ptr noundef nonnull %13, i32 noundef 5) #10
  tail call void @mwifiex_11n_delba(ptr noundef nonnull %13, i32 noundef 6) #10
  tail call void @mwifiex_11n_delba(ptr noundef nonnull %13, i32 noundef 7) #10
  br label %46

46:                                               ; preds = %45, %41, %38, %9
  %47 = phi i8 [ %10, %41 ], [ %10, %38 ], [ %10, %9 ], [ 8, %45 ]
  %48 = add nuw i8 %47, 1
  %49 = load i8, ptr %3, align 4
  %50 = icmp ult i8 %48, %49
  br i1 %50, label %9, label %51

51:                                               ; preds = %46, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_11n_rxba_sync_event(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i16 %2 to i32
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 262144
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %1, i32 noundef %4, i1 noundef zeroext false) #10
  br label %11

11:                                               ; preds = %10, %3
  %12 = icmp ugt i16 %2, 16
  br i1 %12, label %13, label %100

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 90
  %15 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 89
  br label %16

16:                                               ; preds = %93, %13
  %17 = phi i32 [ %4, %13 ], [ %96, %93 ]
  %18 = phi ptr [ %1, %13 ], [ %98, %93 ]
  %19 = load i16, ptr %18, align 1
  %20 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %18, i32 0, i32 1
  %21 = load i16, ptr %20, align 1
  %22 = icmp eq i16 %19, 409
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = zext i16 %19 to i32
  %25 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %25, i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %24) #10
  br label %100

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, ptr %18, i32 0, i32 4
  %28 = load i16, ptr %27, align 1
  %29 = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, ptr %18, i32 0, i32 5
  %30 = load i16, ptr %29, align 1
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, ptr %18, i32 0, i32 1
  %33 = getelementptr inbounds %struct.mwifiex_ie_types_rxba_sync, ptr %18, i32 0, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = zext i16 %28 to i32
  %37 = zext i16 %30 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %31, i32 noundef 1073741824, ptr noundef nonnull @.str.11, ptr noundef %32, i32 noundef %35, i32 noundef %36, i32 noundef %37) #10
  %38 = load i8, ptr %33, align 1
  %39 = zext i8 %38 to i32
  tail call void @_raw_spin_lock_bh(ptr noundef %14) #10
  %40 = load ptr, ptr %15, align 4
  %41 = icmp eq ptr %40, %15
  br i1 %41, label %54, label %42

42:                                               ; preds = %51, %26
  %43 = phi ptr [ %52, %51 ], [ %40, %26 ]
  %44 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %43, i32 0, i32 2
  %45 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %44, ptr noundef dereferenceable(6) %32, i32 6) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %43, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %39
  br i1 %50, label %55, label %51

51:                                               ; preds = %47, %42
  %52 = load ptr, ptr %43, align 4
  %53 = icmp eq ptr %52, %15
  br i1 %53, label %54, label %42

54:                                               ; preds = %51, %26
  tail call void @_raw_spin_unlock_bh(ptr noundef %14) #10
  br label %59

55:                                               ; preds = %47
  tail call void @_raw_spin_unlock_bh(ptr noundef %14) #10
  %56 = icmp eq ptr %43, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  %58 = icmp eq i16 %30, 0
  br i1 %58, label %93, label %61

59:                                               ; preds = %55, %54
  %60 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %60, i32 noundef 4, ptr noundef nonnull @.str.12) #10
  br label %100

61:                                               ; preds = %89, %57
  %62 = phi i32 [ %91, %89 ], [ 0, %57 ]
  %63 = phi i8 [ %90, %89 ], [ 0, %57 ]
  %64 = getelementptr %struct.mwifiex_ie_types_rxba_sync, ptr %18, i32 0, i32 6, i32 %62
  %65 = shl nuw nsw i32 %62, 3
  %66 = add nuw nsw i32 %65, %36
  br label %67

67:                                               ; preds = %86, %61
  %68 = phi i32 [ 0, %61 ], [ %87, %86 ]
  %69 = load i8, ptr %64, align 1
  %70 = zext i8 %69 to i32
  %71 = shl nuw i32 1, %68
  %72 = and i32 %71, %70
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %67
  %75 = add nuw nsw i32 %66, %68
  %76 = trunc i32 %75 to i16
  %77 = and i16 %76, 4095
  %78 = load ptr, ptr %0, align 8
  %79 = zext i16 %77 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %78, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %79) #10
  %80 = load i8, ptr %33, align 1
  %81 = zext i8 %80 to i16
  %82 = tail call i32 @mwifiex_11n_rx_reorder_pkt(ptr noundef %0, i16 noundef zeroext %77, i16 noundef zeroext %81, ptr noundef %32, i8 noundef zeroext 0, ptr noundef null)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %74
  %85 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %85, i32 noundef 4, ptr noundef nonnull @.str.14) #10
  br label %86

86:                                               ; preds = %84, %74, %67
  %87 = add nuw nsw i32 %68, 1
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %67

89:                                               ; preds = %86
  %90 = add i8 %63, 1
  %91 = zext i8 %90 to i32
  %92 = icmp ult i32 %91, %37
  br i1 %92, label %61, label %93

93:                                               ; preds = %89, %57
  %94 = zext i16 %21 to i32
  %95 = add i32 %17, -17
  %96 = sub i32 %95, %94
  %97 = getelementptr i8, ptr %18, i32 17
  %98 = getelementptr i8, ptr %97, i32 %94
  %99 = icmp ugt i32 %96, 16
  br i1 %99, label %16, label %100

100:                                              ; preds = %93, %59, %23, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mwifiex_flush_data(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.reorder_tmr_cnxt, ptr %0, i32 0, i32 3
  store i8 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.reorder_tmr_cnxt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.reorder_tmr_cnxt, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %4, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %4, i32 0, i32 6
  br label %11

11:                                               ; preds = %16, %1
  %12 = phi i32 [ %9, %1 ], [ %13, %16 ]
  %13 = add i32 %12, -1
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #10
  br label %30

16:                                               ; preds = %11
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr ptr, ptr %17, i32 %13
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %11, label %21

21:                                               ; preds = %16
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #10
  %22 = load ptr, ptr %5, align 4
  %23 = load ptr, ptr %22, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %23, i32 noundef 1073741824, ptr noundef nonnull @.str.17, i32 noundef %13) #10
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %24, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %12
  %28 = and i32 %27, 4095
  %29 = load ptr, ptr %5, align 4
  tail call fastcc void @mwifiex_11n_dispatch_pkt_until_start_win(ptr noundef %29, ptr noundef %24, i32 noundef %28)
  br label %30

30:                                               ; preds = %21, %15
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_handle_uap_rx_forward(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_rx_packet(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_amsdu_to_8023s(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_process_tdls_action_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_uap_recv_packet(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_recv_packet(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_delba(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

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
!9 = !{!"auto-init"}
