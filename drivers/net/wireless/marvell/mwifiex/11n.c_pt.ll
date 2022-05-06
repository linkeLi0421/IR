; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/11n.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/11n.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.137 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
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
%struct.mwifiex_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_wait_queue = type { %struct.wait_queue_head, i32 }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.148 }
%union.anon.148 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
%struct.host_cmd_ds_11n_delba = type <{ i8, [6 x i8], i16, i16, i8 }>
%struct.mwifiex_tx_ba_stream_tbl = type { %struct.list_head, i32, [6 x i8], i32, i8 }
%struct.host_cmd_ds_11n_addba_req = type { i8, [6 x i8], i8, i16, i16, i16 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.mwifiex_ra_list_tbl = type { %struct.list_head, %struct.sk_buff_head, [6 x i8], i32, i16, i16, i8, i32, i8, i16, i8, i8 }
%struct.host_cmd_ds_11n_addba_rsp = type { i8, [6 x i8], i8, i16, i16, i16, i16 }
%struct.mwifiex_ds_11n_tx_cfg = type { i16, i16, i16 }
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ie_types_htinfo = type { %struct.mwifiex_ie_types_header, %struct.ieee80211_ht_operation }
%struct.mwifiex_ie_types_chan_list_param_set = type <{ %struct.mwifiex_ie_types_header, [1 x %struct.mwifiex_chan_scan_param_set] }>
%struct.mwifiex_chan_scan_param_set = type <{ i8, i8, i8, i16, i16 }>
%struct.mwifiex_ie_types_extcap = type { %struct.mwifiex_ie_types_header, [0 x i8] }
%struct.mwifiex_rx_reorder_tbl = type { %struct.list_head, i32, [6 x i8], i32, i32, i32, ptr, %struct.reorder_tmr_cnxt, i8, i8 }
%struct.reorder_tmr_cnxt = type { %struct.timer_list, ptr, ptr, i8 }
%struct.mwifiex_ds_rx_reorder_tbl = type { i16, [6 x i8], i32, i32, [64 x i32] }
%struct.mwifiex_ds_tx_ba_stream_tbl = type { i16, [6 x i8], i8 }

@mwifiex_fill_cap_info.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [43 x i8] c"drivers/net/wireless/marvell/mwifiex/11n.c\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid radio type!\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"info: BA stream complete\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"BA stream not created\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"cmd: set tx_buf=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"info: tx_ba_tsr_tbl %p\0A\00", align 1
@mwifiex_send_addba.dialog_tok = internal unnamed_addr global i8 0, align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"cmd: %s: tid %d\0A\00", align 1
@__func__.mwifiex_send_addba = private unnamed_addr constant [19 x i8] c"mwifiex_send_addba\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"BA setup with unknown TDLS peer %pM!\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"data: %s tid=%d\0A\00", align 1
@__func__.mwifiex_get_tx_ba_stream_tbl = private unnamed_addr constant [29 x i8] c"mwifiex_get_tx_ba_stream_tbl\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@switch.table.mwifiex_update_ampdu_txwinsize = private unnamed_addr constant [3 x i32] [i32 64, i32 32, i32 64], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_fill_cap_info(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %2, i32 0, i32 3
  %5 = load i16, ptr %4, align 1
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103
  %7 = load ptr, ptr %6, align 8
  %8 = zext i8 %1 to i32
  %9 = getelementptr %struct.wiphy, ptr %7, i32 0, i32 53, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = load i1, ptr @mwifiex_fill_cap_info.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %3
  store i1 true, ptr @mwifiex_fill_cap_info.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef null) #10
  br label %16

16:                                               ; preds = %15, %3
  br i1 %11, label %17, label %19

17:                                               ; preds = %16
  %18 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %18, i32 noundef 4, ptr noundef nonnull @.str.1) #10
  br label %59

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %10, i32 0, i32 5
  %21 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %10, i32 0, i32 5, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 3
  %24 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %10, i32 0, i32 5, i32 3
  %25 = load i8, ptr %24, align 4
  %26 = shl i8 %25, 2
  %27 = and i8 %26, 28
  %28 = or i8 %27, %23
  %29 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %2, i32 0, i32 1
  store i8 %28, ptr %29, align 1
  %30 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %2, i32 0, i32 2
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %10, i32 0, i32 5, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %30, ptr noundef align 1 dereferenceable(16) %31, i32 16, i1 false)
  %32 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %44, label %35

35:                                               ; preds = %19
  %36 = load i16, ptr %20, align 4
  %37 = and i16 %36, 2
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr inbounds %struct.mwifiex_adapter, ptr %40, i32 0, i32 117
  %42 = load i8, ptr %41, align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39, %19
  %45 = getelementptr %struct.ieee80211_ht_cap, ptr %2, i32 0, i32 2, i32 0, i32 4
  %46 = load i8, ptr %45, align 1
  %47 = or i8 %46, 1
  store i8 %47, ptr %45, align 1
  %48 = load i16, ptr %20, align 4
  br label %49

49:                                               ; preds = %44, %39, %35
  %50 = phi i16 [ %48, %44 ], [ %36, %39 ], [ %36, %35 ]
  %51 = and i16 %5, -2049
  store i16 %50, ptr %2, align 1
  store i16 %51, ptr %4, align 1
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr inbounds %struct.mwifiex_adapter, ptr %52, i32 0, i32 113
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 1073741824
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.ieee80211_ht_cap, ptr %2, i32 0, i32 4
  store i32 165797896, ptr %58, align 1
  br label %59

59:                                               ; preds = %57, %49, %17
  %60 = phi i32 [ -22, %17 ], [ 0, %57 ], [ 0, %49 ]
  ret i32 %60
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_11n_delba(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %4 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %3, i32 0, i32 2
  %5 = load i16, ptr %4, align 1
  %6 = zext i16 %5 to i32
  %7 = lshr i32 %6, 12
  %8 = load i8, ptr %3, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %3, i32 0, i32 1
  %12 = lshr i32 %6, 11
  %13 = and i32 %12, 1
  tail call void @mwifiex_del_ba_tbl(ptr noundef %0, i32 noundef %7, ptr noundef %11, i8 noundef zeroext 1, i32 noundef %13) #10
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %14) #10
  %15 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 83
  br label %16

16:                                               ; preds = %21, %10
  %17 = phi ptr [ %15, %10 ], [ %18, %21 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %15
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @_raw_spin_unlock_bh(ptr noundef %14) #10
  br label %54

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %18, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %16

25:                                               ; preds = %21
  tail call void @_raw_spin_unlock_bh(ptr noundef %14) #10
  %26 = icmp eq ptr %18, null
  br i1 %26, label %54, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %18, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %18, i32 0, i32 2
  %31 = tail call i32 @mwifiex_send_addba(ptr noundef %0, i32 noundef %29, ptr noundef %30)
  br label %54

32:                                               ; preds = %2
  %33 = and i32 %6, 2048
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %3, i32 0, i32 1
  tail call void @mwifiex_create_ba_tbl(ptr noundef %0, ptr noundef %36, i32 noundef %7, i32 noundef 1)
  %37 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %37) #10
  %38 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 83
  br label %39

39:                                               ; preds = %44, %35
  %40 = phi ptr [ %38, %35 ], [ %41, %44 ]
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %38
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  tail call void @_raw_spin_unlock_bh(ptr noundef %37) #10
  br label %54

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %41, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %39

48:                                               ; preds = %44
  tail call void @_raw_spin_unlock_bh(ptr noundef %37) #10
  %49 = icmp eq ptr %41, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %41, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %41, i32 0, i32 2
  tail call void @mwifiex_del_ba_tbl(ptr noundef %0, i32 noundef %52, ptr noundef %53, i8 noundef zeroext 1, i32 noundef 1) #10
  br label %54

54:                                               ; preds = %50, %48, %43, %32, %27, %25, %20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_del_ba_tbl(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_send_addba(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.host_cmd_ds_11n_addba_req, align 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 86
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.mwifiex_send_addba, i32 noundef %1) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %4, i8 0, i32 14, i1 false)
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.mwifiex_adapter, ptr %13, i32 0, i32 47
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 16384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.mwifiex_adapter, ptr %13, i32 0, i32 128
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 112
  %24 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %23, ptr noundef dereferenceable(6) %2, i32 6)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %27) #10
  %28 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %2) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  tail call void @_raw_spin_unlock_bh(ptr noundef %27) #10
  %31 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %31, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef %2) #10
  br label %67

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %28, i32 0, i32 4
  %34 = load i8, ptr %33, align 8
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i32 %6, i32 64
  tail call void @_raw_spin_unlock_bh(ptr noundef %27) #10
  br label %37

37:                                               ; preds = %32, %22, %18, %12, %3
  %38 = phi i32 [ %36, %32 ], [ %6, %22 ], [ %6, %18 ], [ %6, %12 ], [ %6, %3 ]
  %39 = shl i32 %1, 2
  %40 = shl i32 %38, 6
  %41 = or i32 %40, %39
  %42 = trunc i32 %41 to i16
  %43 = or i16 %42, 2
  %44 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 86, i32 3
  %45 = load i8, ptr %44, align 4
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %37
  %48 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 %1, i32 2
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, -1
  %51 = or i16 %42, 3
  %52 = select i1 %50, i16 %43, i16 %51
  br label %53

53:                                               ; preds = %47, %37
  %54 = phi i16 [ %43, %37 ], [ %52, %47 ]
  %55 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %4, i32 0, i32 3
  store i16 %54, ptr %55, align 1
  %56 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 86, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = trunc i32 %57 to i16
  %59 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %4, i32 0, i32 4
  store i16 %58, ptr %59, align 1
  %60 = load i8, ptr @mwifiex_send_addba.dialog_tok, align 1
  %61 = add i8 %60, 1
  %62 = icmp eq i8 %61, 0
  %63 = select i1 %62, i8 1, i8 %61
  store i8 %63, ptr @mwifiex_send_addba.dialog_tok, align 1
  %64 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %4, i32 0, i32 2
  store i8 %63, ptr %64, align 1
  %65 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_req, ptr %4, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %65, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false)
  %66 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 206, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %4, i1 noundef zeroext false) #10
  br label %67

67:                                               ; preds = %53, %30
  %68 = phi i32 [ %66, %53 ], [ -1, %30 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %4) #10
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_create_ba_tbl(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 83
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %31, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %1, align 4
  %11 = getelementptr i8, ptr %1, i32 4
  %12 = load i16, ptr %11, align 2
  br label %13

13:                                               ; preds = %28, %9
  %14 = phi ptr [ %7, %9 ], [ %29, %28 ]
  %15 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = xor i32 %16, %10
  %18 = getelementptr %struct.mwifiex_tx_ba_stream_tbl, ptr %14, i32 0, i32 2, i32 4
  %19 = load i16, ptr %18, align 2
  %20 = xor i16 %19, %12
  %21 = zext i16 %20 to i32
  %22 = or i32 %17, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %14, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %2
  br i1 %27, label %32, label %28

28:                                               ; preds = %24, %13
  %29 = load ptr, ptr %14, align 4
  %30 = icmp eq ptr %29, %6
  br i1 %30, label %31, label %13

31:                                               ; preds = %28, %4
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #10
  br label %34

32:                                               ; preds = %24
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #10
  %33 = icmp eq ptr %14, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %32, %31
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 2848, i32 noundef 28) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %34
  %39 = tail call zeroext i8 @mwifiex_wmm_downgrade_tid(ptr noundef %0, i32 noundef %2) #10
  %40 = tail call ptr @mwifiex_wmm_get_ralist_node(ptr noundef %0, i8 noundef zeroext %39, ptr noundef %1) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %40, i32 0, i32 7
  store i32 %3, ptr %43, align 4
  %44 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %40, i32 0, i32 8
  store i8 0, ptr %44, align 4
  br label %45

45:                                               ; preds = %42, %38
  store volatile ptr %36, ptr %36, align 8
  %46 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %36, ptr %46, align 4
  %47 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %36, i32 0, i32 1
  store i32 %2, ptr %47, align 8
  %48 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %36, i32 0, i32 3
  store i32 %3, ptr %48, align 4
  %49 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %36, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %49, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false)
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #10
  %50 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 83, i32 1
  %51 = load ptr, ptr %50, align 4
  store ptr %36, ptr %50, align 4
  store ptr %6, ptr %36, align 8
  store ptr %51, ptr %46, align 4
  store volatile ptr %36, ptr %51, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #10
  br label %52

52:                                               ; preds = %45, %34, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_11n_addba_req(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 2
  %5 = load i16, ptr %4, align 1
  %6 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 4
  %7 = load i16, ptr %6, align 1
  %8 = and i16 %7, -16
  store i16 %8, ptr %6, align 1
  %9 = zext i16 %5 to i32
  %10 = lshr i32 %9, 2
  %11 = and i32 %10, 15
  %12 = tail call zeroext i8 @mwifiex_wmm_downgrade_tid(ptr noundef %0, i32 noundef %11) #10
  %13 = getelementptr inbounds %struct.host_cmd_ds_11n_addba_rsp, ptr %3, i32 0, i32 1
  %14 = tail call ptr @mwifiex_wmm_get_ralist_node(ptr noundef %0, i8 noundef zeroext %12, ptr noundef %13) #10
  %15 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  %16 = load i16, ptr %15, align 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = icmp eq ptr %14, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 7
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 8
  store i8 0, ptr %22, align 4
  br label %23

23:                                               ; preds = %20, %18
  tail call void @mwifiex_del_ba_tbl(ptr noundef %0, i32 noundef %11, ptr noundef %13, i8 noundef zeroext 1, i32 noundef 1) #10
  %24 = load i8, ptr %3, align 1
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %81, label %26

26:                                               ; preds = %23
  %27 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 %11, i32 1
  store i8 -1, ptr %27, align 1
  br label %81

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %29) #10
  %30 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 83
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %55, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %13, align 4
  %35 = getelementptr %struct.host_cmd_ds_11n_addba_rsp, ptr %3, i32 0, i32 1, i32 4
  %36 = load i16, ptr %35, align 2
  br label %37

37:                                               ; preds = %52, %33
  %38 = phi ptr [ %31, %33 ], [ %53, %52 ]
  %39 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = xor i32 %40, %34
  %42 = getelementptr %struct.mwifiex_tx_ba_stream_tbl, ptr %38, i32 0, i32 2, i32 4
  %43 = load i16, ptr %42, align 2
  %44 = xor i16 %43, %36
  %45 = zext i16 %44 to i32
  %46 = or i32 %41, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %38, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, %11
  br i1 %51, label %56, label %52

52:                                               ; preds = %48, %37
  %53 = load ptr, ptr %38, align 4
  %54 = icmp eq ptr %53, %30
  br i1 %54, label %55, label %37

55:                                               ; preds = %52, %28
  tail call void @_raw_spin_unlock_bh(ptr noundef %29) #10
  br label %79

56:                                               ; preds = %48
  tail call void @_raw_spin_unlock_bh(ptr noundef %29) #10
  %57 = icmp eq ptr %38, null
  br i1 %57, label %79, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %59, i32 noundef 32, ptr noundef nonnull @.str.2) #10
  %60 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %38, i32 0, i32 3
  store i32 2, ptr %60, align 4
  %61 = and i32 %9, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 86, i32 3
  %65 = load i8, ptr %64, align 4
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 %11, i32 2
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %63, %58
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i8 [ 0, %71 ], [ 1, %67 ]
  %74 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %38, i32 0, i32 4
  store i8 %73, ptr %74, align 4
  %75 = icmp eq ptr %14, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 8
  store i8 %73, ptr %77, align 4
  %78 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 7
  store i32 2, ptr %78, align 4
  br label %81

79:                                               ; preds = %56, %55
  %80 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %80, i32 noundef 4, ptr noundef nonnull @.str.3) #10
  br label %81

81:                                               ; preds = %79, %76, %72, %26, %23
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_wmm_downgrade_tid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_wmm_get_ralist_node(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mwifiex_get_ba_tbl(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 83
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %30, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %2, align 4
  %10 = getelementptr i8, ptr %2, i32 4
  %11 = load i16, ptr %10, align 2
  br label %12

12:                                               ; preds = %27, %8
  %13 = phi ptr [ %6, %8 ], [ %28, %27 ]
  %14 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %9, %15
  %17 = getelementptr %struct.mwifiex_tx_ba_stream_tbl, ptr %13, i32 0, i32 2, i32 4
  %18 = load i16, ptr %17, align 2
  %19 = xor i16 %11, %18
  %20 = zext i16 %19 to i32
  %21 = or i32 %16, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %13, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %12
  %28 = load ptr, ptr %13, align 4
  %29 = icmp eq ptr %28, %5
  br i1 %29, label %30, label %12

30:                                               ; preds = %27, %23, %3
  %31 = phi ptr [ null, %3 ], [ %13, %23 ], [ null, %27 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #10
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_recfg_tx_buf(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %6 = trunc i32 %2 to i16
  store i16 217, ptr %1, align 1
  %7 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 16, ptr %7, align 1
  store i16 %6, ptr %5, align 1
  %8 = and i32 %2, 65535
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8
  %12 = load i16, ptr %3, align 2
  %13 = zext i16 %12 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %13) #10
  %14 = load i16, ptr %3, align 2
  br label %15

15:                                               ; preds = %10, %4
  %16 = phi i16 [ %14, %10 ], [ 0, %4 ]
  %17 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  store i16 %16, ptr %17, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_cmd_amsdu_aggr_ctrl(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4
  %5 = trunc i32 %1 to i16
  store i16 223, ptr %0, align 1
  %6 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 1
  store i16 14, ptr %6, align 1
  store i16 %5, ptr %4, align 1
  %7 = and i32 %1, 65535
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i16, ptr %2, align 2
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 0, i32 1
  store i16 %10, ptr %11, align 1
  br label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 0, i32 2
  store i16 0, ptr %13, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_cmd_11n_cfg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  store i16 205, ptr %1, align 1
  %6 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 16, ptr %6, align 1
  store i16 %2, ptr %5, align 1
  %7 = load i16, ptr %3, align 2
  %8 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  store i16 %7, ptr %8, align 1
  %9 = getelementptr inbounds %struct.mwifiex_ds_11n_tx_cfg, ptr %3, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i16 %10, ptr %11, align 1
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 128
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.mwifiex_ds_11n_tx_cfg, ptr %3, i32 0, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  store i16 %18, ptr %19, align 1
  br label %20

20:                                               ; preds = %16, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_append_11n_tlv(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %172, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %2, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %172, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 13
  %10 = load i16, ptr %9, align 4
  %11 = trunc i16 %10 to i8
  %12 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %11) #10
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103
  %14 = load ptr, ptr %13, align 8
  %15 = zext i8 %12 to i32
  %16 = getelementptr %struct.wiphy, ptr %14, i32 0, i32 53, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 24
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %65, label %21

21:                                               ; preds = %8
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds i8, ptr %22, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(30) %23, i8 0, i32 26, i1 false)
  store i16 45, ptr %22, align 1
  %24 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %22, i32 0, i32 1
  store i16 26, ptr %24, align 1
  %25 = getelementptr i8, ptr %22, i32 4
  %26 = load ptr, ptr %18, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(26) %25, ptr noundef align 1 dereferenceable(26) %26, i32 26, i1 false)
  %27 = tail call i32 @mwifiex_fill_cap_info(ptr noundef %0, i8 noundef zeroext %12, ptr noundef %25)
  %28 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 27
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %62, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.ieee80211_ht_operation, ptr %29, i32 0, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = load i16, ptr %9, align 4
  %35 = trunc i16 %34 to i8
  %36 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %35) #10
  %37 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 5
  %38 = load i32, ptr %37, align 8
  %39 = zext i8 %36 to i32
  %40 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %38, i32 noundef %39) #10
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr inbounds %struct.mwifiex_adapter, ptr %41, i32 0, i32 10
  %43 = load ptr, ptr %42, align 4
  %44 = urem i32 %40, 1000
  %45 = sub i32 %40, %44
  %46 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %43, i32 noundef %45) #10
  %47 = and i8 %33, 3
  %48 = zext i8 %47 to i32
  switch i32 %48, label %62 [
    i32 1, label %49
    i32 3, label %54
  ]

49:                                               ; preds = %31
  %50 = getelementptr inbounds %struct.ieee80211_channel, ptr %46, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %59

54:                                               ; preds = %31
  %55 = getelementptr inbounds %struct.ieee80211_channel, ptr %46, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54, %49
  %60 = load i16, ptr %25, align 1
  %61 = and i16 %60, -67
  store i16 %61, ptr %25, align 1
  br label %62

62:                                               ; preds = %59, %54, %49, %31, %21
  %63 = load ptr, ptr %2, align 4
  %64 = getelementptr i8, ptr %63, i32 30
  store ptr %64, ptr %2, align 4
  br label %65

65:                                               ; preds = %62, %8
  %66 = phi i32 [ 30, %62 ], [ 0, %8 ]
  %67 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 27
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %122, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %72 = load i32, ptr %71, align 8
  %73 = icmp eq i32 %72, 1
  %74 = load ptr, ptr %2, align 4
  br i1 %73, label %75, label %92

75:                                               ; preds = %70
  %76 = getelementptr inbounds i8, ptr %74, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(26) %76, i8 0, i32 22, i1 false)
  store i16 61, ptr %74, align 1
  %77 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %74, i32 0, i32 1
  store i16 22, ptr %77, align 1
  %78 = getelementptr i8, ptr %74, i32 4
  %79 = load ptr, ptr %67, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(22) %78, ptr noundef align 1 dereferenceable(22) %79, i32 22, i1 false)
  %80 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %17, i32 0, i32 5
  %81 = load i16, ptr %80, align 4
  %82 = and i16 %81, 2
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.mwifiex_ie_types_htinfo, ptr %74, i32 0, i32 1, i32 1
  %86 = load i8, ptr %85, align 1
  %87 = and i8 %86, -8
  store i8 %87, ptr %85, align 1
  br label %88

88:                                               ; preds = %84, %75
  %89 = load ptr, ptr %2, align 4
  %90 = getelementptr i8, ptr %89, i32 26
  store ptr %90, ptr %2, align 4
  %91 = add nuw nsw i32 %66, 26
  br label %92

92:                                               ; preds = %88, %70
  %93 = phi ptr [ %90, %88 ], [ %74, %70 ]
  %94 = phi i32 [ %91, %88 ], [ %66, %70 ]
  %95 = getelementptr inbounds i8, ptr %93, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(11) %95, i8 0, i32 7, i1 false)
  store i16 257, ptr %93, align 1
  %96 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %93, i32 0, i32 1
  store i16 7, ptr %96, align 1
  %97 = load ptr, ptr %67, align 8
  %98 = load i8, ptr %97, align 1
  %99 = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, ptr %93, i32 0, i32 1
  %100 = getelementptr inbounds %struct.mwifiex_ie_types_chan_list_param_set, ptr %93, i32 0, i32 1, i32 0, i32 1
  store i8 %98, ptr %100, align 1
  %101 = load i16, ptr %9, align 4
  %102 = trunc i16 %101 to i8
  %103 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %102) #10
  store i8 %103, ptr %99, align 1
  %104 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %17, i32 0, i32 5
  %105 = load i16, ptr %104, align 4
  %106 = and i16 %105, 2
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %92
  %109 = load ptr, ptr %67, align 8
  %110 = getelementptr inbounds %struct.ieee80211_ht_operation, ptr %109, i32 0, i32 1
  %111 = load i8, ptr %110, align 1
  %112 = and i8 %111, 4
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %108
  %115 = shl i8 %111, 4
  %116 = and i8 %115, 48
  %117 = or i8 %116, %103
  store i8 %117, ptr %99, align 1
  br label %118

118:                                              ; preds = %114, %108, %92
  %119 = load ptr, ptr %2, align 4
  %120 = getelementptr i8, ptr %119, i32 11
  store ptr %120, ptr %2, align 4
  %121 = add nuw nsw i32 %94, 11
  br label %122

122:                                              ; preds = %118, %65
  %123 = phi i32 [ %121, %118 ], [ %66, %65 ]
  %124 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 30
  %125 = load ptr, ptr %124, align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %138, label %127

127:                                              ; preds = %122
  %128 = load ptr, ptr %2, align 4
  %129 = getelementptr inbounds i8, ptr %128, i32 4
  store i8 0, ptr %129, align 1
  store i16 72, ptr %128, align 1
  %130 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %128, i32 0, i32 1
  store i16 1, ptr %130, align 1
  %131 = getelementptr i8, ptr %128, i32 4
  %132 = load ptr, ptr %124, align 8
  %133 = getelementptr i8, ptr %132, i32 2
  %134 = load i8, ptr %133, align 1
  store i8 %134, ptr %131, align 1
  %135 = load ptr, ptr %2, align 4
  %136 = getelementptr i8, ptr %135, i32 5
  store ptr %136, ptr %2, align 4
  %137 = add nuw nsw i32 %123, 5
  br label %138

138:                                              ; preds = %127, %122
  %139 = phi i32 [ %137, %127 ], [ %123, %122 ]
  %140 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 33
  %141 = load ptr, ptr %140, align 8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %172, label %143

143:                                              ; preds = %138
  %144 = load ptr, ptr %2, align 4
  store i32 127, ptr %144, align 1
  %145 = getelementptr inbounds %struct.ieee_types_header, ptr %141, i32 0, i32 1
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i16
  %148 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %144, i32 0, i32 1
  store i16 %147, ptr %148, align 1
  %149 = getelementptr inbounds %struct.mwifiex_ie_types_extcap, ptr %144, i32 0, i32 1
  %150 = load ptr, ptr %140, align 8
  %151 = getelementptr i8, ptr %150, i32 2
  %152 = zext i8 %146 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %149, ptr align 1 %151, i32 %152, i1 false)
  %153 = load i8, ptr %145, align 1
  %154 = icmp ugt i8 %153, 3
  br i1 %154, label %155, label %159

155:                                              ; preds = %143
  %156 = getelementptr [0 x i8], ptr %149, i32 0, i32 3
  %157 = load i8, ptr %156, align 1
  %158 = icmp sgt i8 %157, -1
  br i1 %158, label %159, label %160

159:                                              ; preds = %155, %143
  br label %160

160:                                              ; preds = %159, %155
  %161 = phi i8 [ 0, %159 ], [ 1, %155 ]
  %162 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 136
  store i8 %161, ptr %162, align 1
  %163 = load i8, ptr %145, align 1
  %164 = zext i8 %163 to i32
  %165 = add nuw nsw i32 %164, 4
  %166 = load ptr, ptr %2, align 4
  %167 = getelementptr i8, ptr %166, i32 %165
  store ptr %167, ptr %2, align 4
  %168 = load i8, ptr %145, align 1
  %169 = zext i8 %168 to i32
  %170 = add nuw nsw i32 %139, 4
  %171 = add nuw nsw i32 %170, %169
  br label %172

172:                                              ; preds = %160, %138, %5, %3
  %173 = phi i32 [ 0, %5 ], [ 0, %3 ], [ %171, %160 ], [ %139, %138 ]
  ret i32 %173
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_11n_delete_tx_ba_stream_tbl_entry(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 83
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %8, null
  br i1 %11, label %18, label %6

12:                                               ; preds = %6, %2
  %13 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %13, i32 noundef 1073741824, ptr noundef nonnull @.str.5, ptr noundef %1) #10
  %14 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  tail call void @kfree(ptr noundef %1) #10
  br label %18

18:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_11n_delete_all_tx_ba_stream_tbl(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 83
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %24, label %6

6:                                                ; preds = %22, %1
  %7 = phi ptr [ %8, %22 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %14, %6
  %11 = phi ptr [ %12, %14 ], [ %3, %6 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %3
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = icmp eq ptr %12, null
  br i1 %15, label %22, label %10

16:                                               ; preds = %10, %6
  %17 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %17, i32 noundef 1073741824, ptr noundef nonnull @.str.5, ptr noundef %7) #10
  %18 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  tail call void @kfree(ptr noundef %7) #10
  br label %22

22:                                               ; preds = %16, %14
  %23 = icmp eq ptr %8, %3
  br i1 %23, label %24, label %6

24:                                               ; preds = %22, %1
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #10
  store volatile ptr %3, ptr %3, align 4
  %25 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 83, i32 1
  store ptr %3, ptr %25, align 4
  %26 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 0
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 0, i32 1
  store i8 %27, ptr %28, align 1
  %29 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 1, i32 1
  store i8 %30, ptr %31, align 1
  %32 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 2, i32 1
  store i8 %33, ptr %34, align 1
  %35 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 3, i32 1
  store i8 %36, ptr %37, align 1
  %38 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 4
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 4, i32 1
  store i8 %39, ptr %40, align 1
  %41 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 5
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 5, i32 1
  store i8 %42, ptr %43, align 1
  %44 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 6
  %45 = load i8, ptr %44, align 1
  %46 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 6, i32 1
  store i8 %45, ptr %46, align 1
  %47 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 7
  %48 = load i8, ptr %47, align 1
  %49 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 7, i32 1
  store i8 %48, ptr %49, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_send_delba(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.host_cmd_ds_11n_delba, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %6 = trunc i32 %1 to i16
  %7 = shl i16 %6, 12
  %8 = icmp eq i32 %3, 0
  %9 = or i16 %7, 2048
  %10 = select i1 %8, i16 %7, i16 %9
  %11 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %5, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  store i16 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %12, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false)
  %13 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 208, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %5, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_11n_delba(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.host_cmd_ds_11n_delba, align 1
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 89
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ %5, %2 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %8, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %8, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %16 = trunc i32 %1 to i16
  %17 = shl i16 %16, 12
  %18 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %3, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %3, i8 0, i64 12, i1 false) #10
  store i16 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %3, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %19, ptr noundef align 1 dereferenceable(6) %15, i32 6, i1 false) #10
  %20 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 208, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %3, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  br label %21

21:                                               ; preds = %14, %6
  call void @_raw_spin_unlock_bh(ptr noundef %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_11n_delete_ba_stream(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %1, i32 0, i32 2
  %4 = load i16, ptr %3, align 1
  %5 = zext i16 %4 to i32
  %6 = lshr i32 %5, 12
  %7 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %1, i32 0, i32 1
  %8 = lshr i32 %5, 11
  %9 = and i32 %8, 1
  tail call void @mwifiex_del_ba_tbl(ptr noundef %0, i32 noundef %6, ptr noundef %7, i8 noundef zeroext 2, i32 noundef %9) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_rx_reorder_tbl(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 90
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 89
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %44, label %12

7:                                                ; preds = %42
  %8 = add nuw nsw i32 %15, 1
  %9 = getelementptr %struct.mwifiex_ds_rx_reorder_tbl, ptr %14, i32 1
  %10 = load ptr, ptr %13, align 4
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %44, label %12

12:                                               ; preds = %7, %2
  %13 = phi ptr [ %10, %7 ], [ %5, %2 ]
  %14 = phi ptr [ %9, %7 ], [ %1, %2 ]
  %15 = phi i32 [ %8, %7 ], [ 0, %2 ]
  %16 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %13, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i16
  store i16 %18, ptr %14, align 4
  %19 = getelementptr inbounds %struct.mwifiex_ds_rx_reorder_tbl, ptr %14, i32 0, i32 1
  %20 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %13, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %19, ptr noundef align 4 dereferenceable(6) %20, i32 6, i1 false)
  %21 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %13, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mwifiex_ds_rx_reorder_tbl, ptr %14, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %13, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mwifiex_ds_rx_reorder_tbl, ptr %14, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = load i32, ptr %24, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, ptr %13, i32 0, i32 6
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i32 [ 0, %29 ], [ %39, %31 ]
  %33 = load ptr, ptr %30, align 4
  %34 = getelementptr ptr, ptr %33, i32 %32
  %35 = load ptr, ptr %34, align 4
  %36 = icmp ne ptr %35, null
  %37 = zext i1 %36 to i32
  %38 = getelementptr %struct.mwifiex_ds_rx_reorder_tbl, ptr %14, i32 0, i32 4, i32 %32
  store i32 %37, ptr %38, align 4
  %39 = add nuw nsw i32 %32, 1
  %40 = load i32, ptr %24, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %31, label %42

42:                                               ; preds = %31, %12
  %43 = icmp eq i32 %15, 15
  br i1 %43, label %44, label %7

44:                                               ; preds = %42, %7, %2
  %45 = phi i32 [ 0, %2 ], [ %8, %7 ], [ 16, %42 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #10
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_tx_ba_stream_tbl(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 83
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr %1, align 2
  %11 = load ptr, ptr %0, align 8
  %12 = and i32 %9, 65535
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 8, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.mwifiex_get_tx_ba_stream_tbl, i32 noundef %12) #10
  %13 = getelementptr inbounds %struct.mwifiex_ds_tx_ba_stream_tbl, ptr %1, i32 0, i32 1
  %14 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %5, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %13, ptr noundef align 4 dereferenceable(6) %14, i32 6, i1 false)
  %15 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %5, i32 0, i32 4
  %16 = load i8, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mwifiex_ds_tx_ba_stream_tbl, ptr %1, i32 0, i32 2
  store i8 %16, ptr %17, align 2
  %18 = load ptr, ptr %5, align 4
  %19 = icmp eq ptr %18, %4
  br i1 %19, label %32, label %20

20:                                               ; preds = %7
  %21 = getelementptr %struct.mwifiex_ds_tx_ba_stream_tbl, ptr %1, i32 1
  %22 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %18, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = trunc i32 %23 to i16
  store i16 %24, ptr %21, align 2
  %25 = load ptr, ptr %0, align 8
  %26 = and i32 %23, 65535
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %25, i32 noundef 8, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.mwifiex_get_tx_ba_stream_tbl, i32 noundef %26) #10
  %27 = getelementptr %struct.mwifiex_ds_tx_ba_stream_tbl, ptr %1, i32 1, i32 1
  %28 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %18, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %27, ptr noundef align 4 dereferenceable(6) %28, i32 6, i1 false)
  %29 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %18, i32 0, i32 4
  %30 = load i8, ptr %29, align 4
  %31 = getelementptr %struct.mwifiex_ds_tx_ba_stream_tbl, ptr %1, i32 1, i32 2
  store i8 %30, ptr %31, align 2
  br label %32

32:                                               ; preds = %20, %7, %2
  %33 = phi i32 [ 0, %2 ], [ 1, %7 ], [ 2, %20 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #10
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_del_tx_ba_stream_tbl_by_ra(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 84
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 83
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %31, label %9

9:                                                ; preds = %29, %4
  %10 = phi ptr [ %11, %29 ], [ %7, %4 ]
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %10, i32 0, i32 2
  %13 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %12, ptr noundef nonnull dereferenceable(6) %1, i32 6)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = icmp eq ptr %10, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %21, %15
  %18 = phi ptr [ %19, %21 ], [ %6, %15 ]
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = icmp eq ptr %19, null
  br i1 %22, label %29, label %17

23:                                               ; preds = %17, %15
  %24 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %24, i32 noundef 1073741824, ptr noundef nonnull @.str.5, ptr noundef %10) #10
  %25 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  tail call void @kfree(ptr noundef %10) #10
  br label %29

29:                                               ; preds = %23, %21, %9
  %30 = icmp eq ptr %11, %6
  br i1 %30, label %31, label %9

31:                                               ; preds = %29, %4
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #10
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @mwifiex_set_ba_params(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 86, i32 2
  store i32 65535, ptr %2, align 4
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i32 64, i32 32
  %8 = select i1 %6, i32 64, i32 16
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 86
  store i32 %7, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 86, i32 1
  store i32 %8, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 86, i32 3
  store i8 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 86, i32 4
  store i8 1, ptr %12, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mwifiex_get_sec_chan_offset(i32 noundef %0) local_unnamed_addr #7 {
  switch i32 %0, label %3 [
    i32 36, label %4
    i32 44, label %4
    i32 52, label %4
    i32 60, label %4
    i32 100, label %4
    i32 108, label %4
    i32 116, label %4
    i32 124, label %4
    i32 132, label %4
    i32 140, label %4
    i32 149, label %4
    i32 157, label %4
    i32 40, label %2
    i32 48, label %2
    i32 56, label %2
    i32 64, label %2
    i32 104, label %2
    i32 112, label %2
    i32 120, label %2
    i32 128, label %2
    i32 136, label %2
    i32 144, label %2
    i32 153, label %2
    i32 161, label %2
  ]

2:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %4

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3, %2, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %5 = phi i8 [ 0, %3 ], [ 3, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_update_ampdu_txwinsize(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.host_cmd_ds_11n_delba, align 1
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %75, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 155
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 156
  %9 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %2, i32 0, i32 2
  %10 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, ptr %2, i32 0, i32 1
  br label %11

11:                                               ; preds = %70, %6
  %12 = phi i8 [ 0, %6 ], [ %72, %70 ]
  %13 = zext i8 %12 to i32
  %14 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %70, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.mwifiex_private, ptr %15, i32 0, i32 86
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mwifiex_private, ptr %15, i32 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = icmp ult i8 %21, 3
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = sext i8 %21 to i32
  %25 = getelementptr inbounds [3 x i32], ptr @switch.table.mwifiex_update_ampdu_txwinsize, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %18, align 4
  br label %27

27:                                               ; preds = %23, %17
  %28 = phi i32 [ %19, %17 ], [ %26, %23 ]
  %29 = load i8, ptr %7, align 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i8, ptr %8, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = zext i8 %32 to i32
  store i32 %35, ptr %18, align 4
  br label %36

36:                                               ; preds = %34, %31, %27
  %37 = phi i32 [ %28, %31 ], [ %35, %34 ], [ %28, %27 ]
  %38 = icmp eq i32 %19, %37
  br i1 %38, label %70, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.mwifiex_private, ptr %15, i32 0, i32 8
  %41 = load i8, ptr %40, align 8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.mwifiex_private, ptr %15, i32 0, i32 83
  br label %45

45:                                               ; preds = %67, %43
  %46 = phi i32 [ 0, %43 ], [ %68, %67 ]
  %47 = load ptr, ptr %44, align 4
  %48 = icmp eq ptr %47, %44
  br i1 %48, label %67, label %49

49:                                               ; preds = %64, %45
  %50 = phi ptr [ %65, %64 ], [ %47, %45 ]
  %51 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %50, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, %46
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %50, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %60 = trunc i32 %46 to i16
  %61 = shl i16 %60, 12
  %62 = or i16 %61, 2048
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %2, i8 0, i64 12, i1 false) #10
  store i16 %62, ptr %9, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %10, ptr noundef align 1 dereferenceable(6) %59, i32 6, i1 false) #10
  %63 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %15, i16 noundef zeroext 208, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %2, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  br label %67

64:                                               ; preds = %54, %49
  %65 = load ptr, ptr %50, align 4
  %66 = icmp eq ptr %65, %44
  br i1 %66, label %67, label %49

67:                                               ; preds = %64, %58, %45
  %68 = add nuw nsw i32 %46, 1
  %69 = icmp eq i32 %68, 8
  br i1 %69, label %70, label %45

70:                                               ; preds = %67, %39, %36, %11
  %71 = phi i8 [ %12, %39 ], [ %12, %36 ], [ %12, %11 ], [ 8, %67 ]
  %72 = add nuw i8 %71, 1
  %73 = load i8, ptr %3, align 4
  %74 = icmp ult i8 %72, %73
  br i1 %74, label %11, label %75

75:                                               ; preds = %70, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }

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
