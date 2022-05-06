; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c"
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
%struct.cmd_ctrl_node = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.148 }
%union.anon.148 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
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
%struct.mwifiex_ds_reg_rw = type { i32, i32, i32 }
%struct.mwifiex_ds_read_eeprom = type { i16, i16, [256 x i8] }
%struct.host_cmd_sdio_sp_rx_aggr_cfg = type { i8, i8, i16 }
%struct.host_cmd_tlv_channel_band = type { %struct.mwifiex_ie_types_header, i8, i8 }
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_channel_band = type { %struct.mwifiex_band_config, i8 }
%struct.mwifiex_band_config = type { i8 }
%struct.mwifiex_rate_scope = type { i16, i16, i16, i16, [8 x i16], [8 x i16] }
%struct.mwifiex_power_group = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.host_cmd_ds_rf_tx_pwr = type { i16, i16, i8, i8 }
%struct.mwifiex_ds_get_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }
%struct.host_cmd_ds_802_11_get_log = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }
%struct.host_cmd_ds_tx_rate_query = type { i8, i8 }
%struct.mwifiex_ds_auto_ds = type { i16, i16 }
%struct.host_cmd_ds_version_ext = type { i8, [128 x i8] }
%struct.mwifiex_aes_param = type { [8 x i8], i16, [32 x i8] }
%struct.mwifiex_ie_types_sta_info = type { %struct.mwifiex_ie_types_header, [6 x i8], i8, i8 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.ieee80211_regdomain = type { %struct.callback_head, i32, [3 x i8], i32, [0 x %struct.ieee80211_reg_rule] }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range, %struct.ieee80211_power_rule, %struct.ieee80211_wmm_rule, i32, i32, i8 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.ieee80211_power_rule = type { i32, i32 }
%struct.ieee80211_wmm_rule = type { [4 x %struct.ieee80211_wmm_ac], [4 x %struct.ieee80211_wmm_ac] }
%struct.ieee80211_wmm_ac = type { i16, i16, i16, i8 }

@.str = private unnamed_addr constant [42 x i8] c"info: CMD_RESP: BG_SCAN result is ready!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"cmd: curr_tx_buf_size=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"CMD_RESP: unknown cmd response %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"CMD_RESP: cmd %#x error, result=%#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"PS_MODE_ENH cmd failed: result=0x%x action=0x%X\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"SDIO RX single-port aggregation Not support\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"info: set mac address: %pM\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"CMD_RESP: unknown cmd action %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"info: Current TxPower Level = %d, Max Power=%d, Min Power=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"Current TxPower Level=%d, Max Power=%d, Min Power=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [84 x i8] c"RF_ANT_RESP: Tx action = 0x%x, Tx Mode = 0x%04x\09Rx action = 0x%x, Rx Mode = 0x%04x\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"RF_ANT_RESP: action = 0x%x, Mode = 0x%04x\0A\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"info: SNMP_RESP: oid value = %#x,\09query_type = %#x, buf size = %#x\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"info: SNMP_RESP: FragThsd =%u\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"info: SNMP_RESP: RTSThsd =%u\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"info: SNMP_RESP: TxRetryCount=%u\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"info: SNMP_RESP: DTIM period=%u\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"ChipRev:20, BB:9b(10.00), RF:40(21)\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"Bad HW revision detected, disabling deep sleep\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"Disabling deep sleep failed.\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"info: key: GTK is set\0A\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"info: 11D Domain Info Resp: no_of_triplet=%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"11D: invalid number of triplets %d returned\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"11D: invalid action:%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"info: new BSSID %pM\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"new BSSID is NULL\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"Bitmap of currently subscribed events: %16x\0A\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"TDLS link delete for %pM failed: reason %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"TDLS link delete for %pM successful\0A\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"TDLS link creation for %pM failed: reason %d\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"TDLS link creation for %pM successful\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"TDLS link config for %pM failed, reason %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"TDLS link config for %pM successful\0A\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"Unknown TDLS command action response %d\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"CHAN:\00", align 1
@mwifiex_create_custom_regdomain.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = private unnamed_addr constant [51 x i8] c"drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c\00", align 1
@switch.table.mwifiex_ret_802_11_snmp_mib = private unnamed_addr constant [6 x ptr] [ptr @.str.17, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.14, ptr @.str.14], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_sta_cmdresp(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 60
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 3
  %10 = load i16, ptr %9, align 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %48, label %12

12:                                               ; preds = %3
  %13 = load i16, ptr %2, align 1
  %14 = zext i16 %13 to i32
  %15 = zext i16 %10 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %14, i32 noundef %15) #10
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %16, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 121, i32 1
  store i32 -1, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %12
  %23 = load i16, ptr %2, align 1
  switch i16 %23, label %45 [
    i16 228, label %24
    i16 6, label %43
    i16 263, label %43
    i16 547, label %44
  ]

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4
  %26 = load i16, ptr %9, align 1
  %27 = zext i16 %26 to i32
  %28 = load i16, ptr %25, align 1
  %29 = zext i16 %28 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %27, i32 noundef %29) #10
  %30 = load i16, ptr %25, align 1
  %31 = icmp eq i16 %30, 255
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 1
  %34 = load i16, ptr %33, align 1
  %35 = and i16 %34, 16
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 89
  store i16 0, ptr %42, align 4
  br label %45

43:                                               ; preds = %22, %22
  tail call void @mwifiex_cancel_scan(ptr noundef %4) #10
  br label %45

44:                                               ; preds = %22
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.5) #10
  br label %45

45:                                               ; preds = %44, %43, %41, %37, %32, %24, %22
  %46 = load ptr, ptr %5, align 4
  tail call void @mwifiex_recycle_cmd_node(ptr noundef %4, ptr noundef %46) #10
  %47 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %47) #10
  store ptr null, ptr %5, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %47) #10
  br label %272

48:                                               ; preds = %3
  switch i16 %1, label %269 [
    i16 3, label %49
    i16 143, label %272
    i16 40, label %272
    i16 77, label %51
    i16 16, label %272
    i16 214, label %54
    i16 6, label %56
    i16 263, label %60
    i16 108, label %64
    i16 107, label %272
    i16 209, label %68
    i16 30, label %69
    i16 32, label %70
    i16 228, label %71
    i16 229, label %73
    i16 18, label %75
    i16 36, label %77
    i16 43, label %78
    i16 44, label %78
    i16 64, label %80
    i16 11, label %81
    i16 164, label %82
    i16 22, label %83
    i16 127, label %84
    i16 151, label %85
    i16 269, label %86
    i16 274, label %272
    i16 593, label %90
    i16 235, label %108
    i16 268, label %272
    i16 169, label %272
    i16 170, label %272
    i16 94, label %113
    i16 91, label %115
    i16 206, label %117
    i16 208, label %119
    i16 207, label %121
    i16 217, label %123
    i16 223, label %272
    i16 113, label %152
    i16 131, label %154
    i16 134, label %155
    i16 25, label %162
    i16 26, label %162
    i16 27, label %162
    i16 173, label %162
    i16 237, label %162
    i16 89, label %162
    i16 247, label %272
    i16 205, label %272
    i16 250, label %272
    i16 117, label %226
    i16 176, label %272
    i16 179, label %230
    i16 177, label %231
    i16 178, label %236
    i16 181, label %272
    i16 175, label %272
    i16 154, label %272
    i16 266, label %272
    i16 290, label %238
    i16 289, label %272
    i16 221, label %272
    i16 547, label %240
    i16 278, label %250
    i16 256, label %272
    i16 224, label %252
    i16 271, label %272
    i16 578, label %261
    i16 575, label %262
  ]

49:                                               ; preds = %48
  %50 = tail call i32 @mwifiex_ret_get_hw_spec(ptr noundef %0, ptr noundef %2) #10
  br label %272

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 7
  %53 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %52, ptr noundef align 1 dereferenceable(6) %53, i32 6, i1 false) #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.7, ptr noundef %52) #10
  br label %272

54:                                               ; preds = %48
  %55 = tail call fastcc i32 @mwifiex_ret_tx_rate_cfg(ptr noundef %0, ptr noundef %2)
  br label %272

56:                                               ; preds = %48
  %57 = tail call i32 @mwifiex_ret_802_11_scan(ptr noundef %0, ptr noundef %2) #10
  %58 = load ptr, ptr %5, align 4
  %59 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %58, i32 0, i32 7
  store i32 0, ptr %59, align 4
  br label %272

60:                                               ; preds = %48
  %61 = tail call i32 @mwifiex_ret_802_11_scan_ext(ptr noundef %0, ptr noundef %2) #10
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %62, i32 0, i32 7
  store i32 0, ptr %63, align 4
  br label %272

64:                                               ; preds = %48
  %65 = tail call i32 @mwifiex_ret_802_11_scan(ptr noundef %0, ptr noundef %2) #10
  %66 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103
  %67 = load ptr, ptr %66, align 8
  tail call void @cfg80211_sched_scan_results(ptr noundef %67, i64 noundef 0) #10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 16, ptr noundef nonnull @.str) #10
  br label %272

68:                                               ; preds = %48
  tail call fastcc void @mwifiex_ret_tx_power_cfg(ptr noundef %0, ptr noundef %2)
  br label %272

69:                                               ; preds = %48
  tail call fastcc void @mwifiex_ret_rf_tx_power(ptr noundef %0, ptr noundef %2)
  br label %272

70:                                               ; preds = %48
  tail call fastcc void @mwifiex_ret_rf_antenna(ptr noundef %0, ptr noundef %2)
  br label %272

71:                                               ; preds = %48
  %72 = tail call i32 @mwifiex_ret_enh_power_mode(ptr noundef %0, ptr noundef %2, ptr noundef %8) #10
  br label %272

73:                                               ; preds = %48
  %74 = tail call i32 @mwifiex_ret_802_11_hs_cfg(ptr noundef %0, ptr noundef %2) #10
  br label %272

75:                                               ; preds = %48
  %76 = tail call i32 @mwifiex_ret_802_11_associate(ptr noundef %0, ptr noundef %2) #10
  br label %272

77:                                               ; preds = %48
  tail call fastcc void @mwifiex_ret_802_11_deauthenticate(ptr noundef %0, ptr noundef %2)
  br label %272

78:                                               ; preds = %48, %48
  %79 = tail call i32 @mwifiex_ret_802_11_ad_hoc(ptr noundef %0, ptr noundef %2) #10
  br label %272

80:                                               ; preds = %48
  tail call void @mwifiex_reset_connect_state(ptr noundef %0, i16 noundef zeroext 3, i1 noundef zeroext false) #10
  br label %272

81:                                               ; preds = %48
  tail call fastcc void @mwifiex_ret_get_log(ptr noundef %2, ptr noundef %8)
  br label %272

82:                                               ; preds = %48
  tail call fastcc void @mwifiex_ret_802_11_rssi_info(ptr noundef %0, ptr noundef %2)
  br label %272

83:                                               ; preds = %48
  tail call fastcc void @mwifiex_ret_802_11_snmp_mib(ptr noundef %0, ptr noundef %2, ptr noundef %8)
  br label %272

84:                                               ; preds = %48
  tail call fastcc void @mwifiex_ret_802_11_tx_rate_query(ptr noundef %0, ptr noundef %2)
  br label %272

85:                                               ; preds = %48
  tail call fastcc void @mwifiex_ret_ver_ext(ptr noundef %0, ptr noundef %2, ptr noundef %8)
  br label %272

86:                                               ; preds = %48
  %87 = icmp eq ptr %8, null
  br i1 %87, label %272, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %8, ptr noundef align 1 dereferenceable(10) %89, i32 10, i1 false) #10
  br label %272

90:                                               ; preds = %48
  %91 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 1
  %92 = load i16, ptr %91, align 1
  %93 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 166
  store i16 %92, ptr %93, align 2
  %94 = icmp eq i16 %92, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 14
  store i8 4, ptr %96, align 4
  br label %97

97:                                               ; preds = %95, %90
  %98 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 166, i32 1
  store i16 2, ptr %98, align 2
  %99 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 2
  %100 = load i16, ptr %99, align 1
  %101 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 166, i32 2
  store i16 %100, ptr %101, align 2
  %102 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 3
  %103 = load i16, ptr %102, align 1
  %104 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 166, i32 3
  store i16 %103, ptr %104, align 2
  %105 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 3, i32 1
  %106 = load i16, ptr %105, align 1
  %107 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 166, i32 4
  store i16 %106, ptr %107, align 2
  br label %272

108:                                              ; preds = %48
  %109 = icmp eq ptr %8, null
  br i1 %109, label %272, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 1
  %112 = load i16, ptr %111, align 1
  store i16 %112, ptr %8, align 1
  br label %272

113:                                              ; preds = %48
  %114 = tail call fastcc i32 @mwifiex_ret_802_11_key_material(ptr noundef %0, ptr noundef %2)
  br label %272

115:                                              ; preds = %48
  %116 = tail call fastcc i32 @mwifiex_ret_802_11d_domain_info(ptr noundef %0, ptr noundef %2)
  br label %272

117:                                              ; preds = %48
  %118 = tail call i32 @mwifiex_ret_11n_addba_req(ptr noundef %0, ptr noundef %2) #10
  br label %272

119:                                              ; preds = %48
  %120 = tail call i32 @mwifiex_ret_11n_delba(ptr noundef %0, ptr noundef %2) #10
  br label %272

121:                                              ; preds = %48
  %122 = tail call i32 @mwifiex_ret_11n_addba_resp(ptr noundef %0, ptr noundef %2) #10
  br label %272

123:                                              ; preds = %48
  %124 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 1
  %125 = load i16, ptr %124, align 1
  %126 = icmp eq i16 %125, -1
  br i1 %126, label %127, label %141

127:                                              ; preds = %123
  %128 = load i8, ptr %4, align 4
  %129 = icmp eq i8 %128, 2
  br i1 %129, label %130, label %272

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 161
  %132 = load i8, ptr %131, align 2, !range !8
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %272, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 18, i32 26
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  tail call void %136(ptr noundef %4) #10
  br label %139

139:                                              ; preds = %138, %134
  store i8 0, ptr %131, align 2
  %140 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 86
  store i8 0, ptr %140, align 4
  br label %272

141:                                              ; preds = %123
  %142 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 39
  %143 = and i16 %125, -256
  store i16 %143, ptr %142, align 2
  %144 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 40
  store i16 %143, ptr %144, align 4
  %145 = zext i16 %143 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %145) #10
  %146 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 18, i32 13
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %272, label %149

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 2
  %151 = load i16, ptr %150, align 1
  tail call void %147(ptr noundef %4, i16 noundef zeroext %151) #10
  br label %272

152:                                              ; preds = %48
  %153 = tail call i32 @mwifiex_ret_wmm_get_status(ptr noundef %0, ptr noundef %2) #10
  br label %272

154:                                              ; preds = %48
  tail call fastcc void @mwifiex_ret_ibss_coalescing_status(ptr noundef %0, ptr noundef %2)
  br label %272

155:                                              ; preds = %48
  %156 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 2
  %157 = load i32, ptr %156, align 1
  %158 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 159
  store i32 %157, ptr %158, align 4
  %159 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 3, i32 1
  %160 = load i32, ptr %159, align 1
  %161 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 159, i32 1
  store i32 %160, ptr %161, align 4
  br label %272

162:                                              ; preds = %48, %48, %48, %48, %48, %48
  %163 = icmp eq ptr %8, null
  br i1 %163, label %272, label %164

164:                                              ; preds = %162
  switch i16 %1, label %272 [
    i16 25, label %165
    i16 26, label %173
    i16 27, label %182
    i16 173, label %191
    i16 237, label %200
    i16 89, label %209
  ]

165:                                              ; preds = %164
  %166 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 1
  %167 = load i16, ptr %166, align 1
  %168 = zext i16 %167 to i32
  %169 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %8, i32 0, i32 1
  store i32 %168, ptr %169, align 4
  %170 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 2
  %171 = load i32, ptr %170, align 1
  %172 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %8, i32 0, i32 2
  store i32 %171, ptr %172, align 4
  br label %272

173:                                              ; preds = %164
  %174 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 1
  %175 = load i16, ptr %174, align 1
  %176 = zext i16 %175 to i32
  %177 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %8, i32 0, i32 1
  store i32 %176, ptr %177, align 4
  %178 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 2
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %8, i32 0, i32 2
  store i32 %180, ptr %181, align 4
  br label %272

182:                                              ; preds = %164
  %183 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 1
  %184 = load i16, ptr %183, align 1
  %185 = zext i16 %184 to i32
  %186 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %8, i32 0, i32 1
  store i32 %185, ptr %186, align 4
  %187 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 2
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i32
  %190 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %8, i32 0, i32 2
  store i32 %189, ptr %190, align 4
  br label %272

191:                                              ; preds = %164
  %192 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 1
  %193 = load i16, ptr %192, align 1
  %194 = zext i16 %193 to i32
  %195 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %8, i32 0, i32 1
  store i32 %194, ptr %195, align 4
  %196 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 2
  %197 = load i8, ptr %196, align 1
  %198 = zext i8 %197 to i32
  %199 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %8, i32 0, i32 2
  store i32 %198, ptr %199, align 4
  br label %272

200:                                              ; preds = %164
  %201 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 1
  %202 = load i16, ptr %201, align 1
  %203 = zext i16 %202 to i32
  %204 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %8, i32 0, i32 1
  store i32 %203, ptr %204, align 4
  %205 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 2
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i32
  %208 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %8, i32 0, i32 2
  store i32 %207, ptr %208, align 4
  br label %272

209:                                              ; preds = %164
  %210 = getelementptr inbounds %struct.mwifiex_ds_read_eeprom, ptr %8, i32 0, i32 1
  %211 = load i16, ptr %210, align 2
  %212 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 2
  %213 = load i16, ptr %212, align 1
  %214 = icmp ult i16 %211, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  store i16 0, ptr %210, align 2
  br label %272

216:                                              ; preds = %209
  %217 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 1
  %218 = load i16, ptr %217, align 1
  store i16 %218, ptr %8, align 2
  %219 = load i16, ptr %212, align 1
  store i16 %219, ptr %210, align 2
  %220 = icmp eq i16 %219, 0
  br i1 %220, label %272, label %221

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.mwifiex_ds_read_eeprom, ptr %8, i32 0, i32 2
  %223 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 3
  %224 = tail call i16 @llvm.umin.i16(i16 %219, i16 256) #10
  %225 = zext i16 %224 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %222, ptr align 1 %223, i32 %225, i1 false) #10
  br label %272

226:                                              ; preds = %48
  %227 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 1
  %228 = load i16, ptr %227, align 1
  %229 = zext i16 %228 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 32, ptr noundef nonnull @.str.27, i32 noundef %229) #10
  br label %272

230:                                              ; preds = %48
  tail call fastcc void @mwifiex_ret_uap_sta_list(ptr noundef %0, ptr noundef %2)
  br label %272

231:                                              ; preds = %48
  %232 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 86
  store i8 0, ptr %232, align 4
  %233 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 104
  store i16 0, ptr %233, align 2
  %234 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 99
  store i8 0, ptr %234, align 1
  %235 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 5
  store i8 1, ptr %235, align 8
  br label %272

236:                                              ; preds = %48
  %237 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 5
  store i8 0, ptr %237, align 8
  br label %272

238:                                              ; preds = %48
  %239 = tail call fastcc i32 @mwifiex_ret_tdls_oper(ptr noundef %0, ptr noundef %2)
  br label %272

240:                                              ; preds = %48
  %241 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4
  %242 = getelementptr inbounds %struct.host_cmd_sdio_sp_rx_aggr_cfg, ptr %241, i32 0, i32 1
  %243 = load i8, ptr %242, align 1
  %244 = icmp ne i8 %243, 0
  %245 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 42
  %246 = zext i1 %244 to i8
  store i8 %246, ptr %245, align 1
  %247 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 1
  %248 = load i16, ptr %247, align 1
  %249 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 43
  store i16 %248, ptr %249, align 4
  br label %272

250:                                              ; preds = %48
  %251 = tail call i32 @mwifiex_ret_wakeup_reason(ptr noundef %0, ptr noundef %2, ptr noundef %8) #10
  br label %272

252:                                              ; preds = %48
  %253 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4
  %254 = load i16, ptr %253, align 1
  %255 = icmp eq i16 %254, 0
  br i1 %255, label %256, label %272

256:                                              ; preds = %252
  %257 = getelementptr %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 3, i32 1
  %258 = load i32, ptr %257, align 1
  %259 = icmp eq i32 %258, 1
  %260 = zext i1 %259 to i8
  store i8 %260, ptr %8, align 1
  br label %272

261:                                              ; preds = %48
  tail call fastcc void @mwifiex_ret_chan_region_cfg(ptr noundef %0, ptr noundef %2)
  br label %272

262:                                              ; preds = %48
  %263 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 1
  %264 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %2, i32 0, i32 4, i32 0, i32 3
  %265 = load i8, ptr %264, align 1
  store i8 %265, ptr %8, align 1
  %266 = getelementptr inbounds %struct.host_cmd_tlv_channel_band, ptr %263, i32 0, i32 2
  %267 = load i8, ptr %266, align 1
  %268 = getelementptr inbounds %struct.mwifiex_channel_band, ptr %8, i32 0, i32 1
  store i8 %267, ptr %268, align 1
  br label %272

269:                                              ; preds = %48
  %270 = load i16, ptr %2, align 1
  %271 = zext i16 %270 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %271) #10
  br label %272

272:                                              ; preds = %269, %262, %261, %256, %252, %250, %240, %238, %236, %231, %230, %226, %221, %216, %215, %200, %191, %182, %173, %165, %164, %162, %155, %154, %152, %149, %141, %139, %130, %127, %121, %119, %117, %115, %113, %110, %108, %97, %88, %86, %85, %84, %83, %82, %81, %80, %78, %77, %75, %73, %71, %70, %69, %68, %64, %60, %56, %54, %51, %49, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %45
  %273 = phi i32 [ -1, %45 ], [ 0, %269 ], [ 0, %262 ], [ 0, %261 ], [ %251, %250 ], [ 0, %240 ], [ %239, %238 ], [ 0, %236 ], [ 0, %231 ], [ 0, %230 ], [ 0, %226 ], [ 0, %155 ], [ 0, %154 ], [ %153, %152 ], [ 0, %139 ], [ 0, %130 ], [ 0, %127 ], [ 0, %149 ], [ 0, %141 ], [ %122, %121 ], [ %120, %119 ], [ %118, %117 ], [ %116, %115 ], [ %114, %113 ], [ 0, %97 ], [ 0, %85 ], [ 0, %84 ], [ 0, %83 ], [ 0, %82 ], [ 0, %81 ], [ 0, %80 ], [ %79, %78 ], [ 0, %77 ], [ %76, %75 ], [ %74, %73 ], [ %72, %71 ], [ 0, %70 ], [ 0, %69 ], [ 0, %68 ], [ %65, %64 ], [ %61, %60 ], [ %57, %56 ], [ %55, %54 ], [ 0, %51 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ %50, %49 ], [ 0, %48 ], [ 0, %48 ], [ 0, %86 ], [ 0, %88 ], [ 0, %108 ], [ 0, %110 ], [ -1, %215 ], [ 0, %162 ], [ -1, %164 ], [ 0, %216 ], [ 0, %221 ], [ 0, %200 ], [ 0, %191 ], [ 0, %182 ], [ 0, %173 ], [ 0, %165 ], [ 0, %252 ], [ 0, %256 ]
  ret i32 %273
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_get_hw_spec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_ret_tx_rate_cfg(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  %4 = load i16, ptr %3, align 1
  %5 = add i16 %4, -12
  %6 = icmp ugt i16 %5, 3
  br i1 %6, label %7, label %86

7:                                                ; preds = %2
  %8 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 30
  %10 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 1
  %11 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 2
  %12 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 3
  %13 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 4
  %14 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 5
  %15 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 6
  %16 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 7
  %17 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 8
  %18 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 9
  %19 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 10
  %20 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 11
  %21 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 12
  %22 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 13
  %23 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 14
  %24 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 15
  %25 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 16
  %26 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 17
  br label %27

27:                                               ; preds = %81, %7
  %28 = phi ptr [ %8, %7 ], [ %82, %81 ]
  %29 = phi i16 [ %5, %7 ], [ %84, %81 ]
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %28, i32 0, i32 1
  %32 = load i16, ptr %31, align 1
  %33 = zext i16 %32 to i32
  %34 = add nuw nsw i32 %33, 4
  %35 = icmp ugt i32 %34, %30
  br i1 %35, label %86, label %36

36:                                               ; preds = %27
  %37 = load i16, ptr %28, align 1
  %38 = icmp eq i16 %37, 339
  br i1 %38, label %39, label %81

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 2
  %41 = load i16, ptr %40, align 1
  store i16 %41, ptr %9, align 2
  %42 = getelementptr inbounds %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 3
  %43 = load i16, ptr %42, align 1
  store i16 %43, ptr %10, align 2
  %44 = getelementptr %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 4, i32 0
  %45 = load i16, ptr %44, align 1
  store i16 %45, ptr %11, align 2
  %46 = getelementptr %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 4, i32 1
  %47 = load i16, ptr %46, align 1
  store i16 %47, ptr %12, align 2
  %48 = getelementptr %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 4, i32 2
  %49 = load i16, ptr %48, align 1
  store i16 %49, ptr %13, align 2
  %50 = getelementptr %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 4, i32 3
  %51 = load i16, ptr %50, align 1
  store i16 %51, ptr %14, align 2
  %52 = getelementptr %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 4, i32 4
  %53 = load i16, ptr %52, align 1
  store i16 %53, ptr %15, align 2
  %54 = getelementptr %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 4, i32 5
  %55 = load i16, ptr %54, align 1
  store i16 %55, ptr %16, align 2
  %56 = getelementptr %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 4, i32 6
  %57 = load i16, ptr %56, align 1
  store i16 %57, ptr %17, align 2
  %58 = getelementptr %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 4, i32 7
  %59 = load i16, ptr %58, align 1
  store i16 %59, ptr %18, align 2
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr inbounds %struct.mwifiex_adapter, ptr %60, i32 0, i32 138
  %62 = load i8, ptr %61, align 2
  %63 = icmp eq i8 %62, 15
  br i1 %63, label %64, label %81

64:                                               ; preds = %39
  %65 = getelementptr %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 5, i32 0
  %66 = load i16, ptr %65, align 1
  store i16 %66, ptr %19, align 2
  %67 = getelementptr %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 5, i32 1
  %68 = load i16, ptr %67, align 1
  store i16 %68, ptr %20, align 2
  %69 = getelementptr %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 5, i32 2
  %70 = load i16, ptr %69, align 1
  store i16 %70, ptr %21, align 2
  %71 = getelementptr %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 5, i32 3
  %72 = load i16, ptr %71, align 1
  store i16 %72, ptr %22, align 2
  %73 = getelementptr %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 5, i32 4
  %74 = load i16, ptr %73, align 1
  store i16 %74, ptr %23, align 2
  %75 = getelementptr %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 5, i32 5
  %76 = load i16, ptr %75, align 1
  store i16 %76, ptr %24, align 2
  %77 = getelementptr %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 5, i32 6
  %78 = load i16, ptr %77, align 1
  store i16 %78, ptr %25, align 2
  %79 = getelementptr %struct.mwifiex_rate_scope, ptr %28, i32 0, i32 5, i32 7
  %80 = load i16, ptr %79, align 1
  store i16 %80, ptr %26, align 2
  br label %81

81:                                               ; preds = %64, %39, %36
  %82 = getelementptr i8, ptr %28, i32 %34
  %83 = trunc i32 %34 to i16
  %84 = sub i16 %29, %83
  %85 = icmp ugt i16 %84, 3
  br i1 %85, label %27, label %86

86:                                               ; preds = %81, %27, %2
  %87 = tail call zeroext i8 @mwifiex_is_rate_auto(ptr noundef %0) #10
  %88 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 33
  store i8 %87, ptr %88, align 4
  %89 = icmp eq i8 %87, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 32
  store i32 0, ptr %91, align 8
  br label %94

92:                                               ; preds = %86
  %93 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 127, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #10
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ 0, %90 ], [ %93, %92 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_802_11_scan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_802_11_scan_ext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_results(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_tx_power_cfg(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  %5 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 3
  %6 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  %7 = load i16, ptr %6, align 1
  %8 = add i16 %7, -16
  %9 = zext i16 %8 to i32
  %10 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 2
  %11 = load i16, ptr %10, align 1
  %12 = zext i16 %11 to i32
  %13 = add nuw nsw i32 %12, 4
  %14 = icmp ugt i32 %13, %9
  br i1 %14, label %87, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %17 = load i16, ptr %16, align 1
  switch i16 %17, label %71 [
    i16 0, label %18
    i16 1, label %61
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 45
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 1
  %22 = icmp eq ptr %4, null
  %23 = or i1 %22, %21
  %24 = icmp ult i16 %11, 8
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %58, label %26

26:                                               ; preds = %18
  %27 = getelementptr i8, ptr %4, i32 9
  %28 = load i8, ptr %27, align 1
  %29 = sext i8 %28 to i32
  %30 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 5
  %31 = load i8, ptr %30, align 1
  %32 = sext i8 %31 to i32
  %33 = add nsw i32 %12, -8
  %34 = icmp ugt i32 %33, 7
  br i1 %34, label %35, label %51

35:                                               ; preds = %35, %26
  %36 = phi i32 [ %49, %35 ], [ %33, %26 ]
  %37 = phi ptr [ %40, %35 ], [ %5, %26 ]
  %38 = phi i32 [ %48, %35 ], [ %32, %26 ]
  %39 = phi i32 [ %44, %35 ], [ %29, %26 ]
  %40 = getelementptr %struct.mwifiex_power_group, ptr %37, i32 1
  %41 = getelementptr %struct.mwifiex_power_group, ptr %37, i32 1, i32 5
  %42 = load i8, ptr %41, align 1
  %43 = sext i8 %42 to i32
  %44 = tail call i32 @llvm.smax.i32(i32 %39, i32 %43) #10
  %45 = getelementptr %struct.mwifiex_power_group, ptr %37, i32 1, i32 4
  %46 = load i8, ptr %45, align 1
  %47 = sext i8 %46 to i32
  %48 = tail call i32 @llvm.smin.i32(i32 %38, i32 %47) #10
  %49 = add i32 %36, -8
  %50 = icmp ugt i32 %49, 7
  br i1 %50, label %35, label %51

51:                                               ; preds = %35, %26
  %52 = phi i32 [ %29, %26 ], [ %44, %35 ]
  %53 = phi i32 [ %32, %26 ], [ %48, %35 ]
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 22
  store i8 %54, ptr %55, align 1
  %56 = trunc i32 %52 to i8
  %57 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 21
  store i8 %56, ptr %57, align 2
  br label %58

58:                                               ; preds = %51, %18
  %59 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 5
  %60 = load i8, ptr %59, align 1
  br label %73

61:                                               ; preds = %15
  %62 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  %63 = load i32, ptr %62, align 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.mwifiex_power_group, ptr %5, i32 0, i32 5
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 5
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %67, %69
  br i1 %70, label %73, label %77

71:                                               ; preds = %15
  %72 = zext i16 %17 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %72) #10
  br label %87

73:                                               ; preds = %65, %58
  %74 = phi i8 [ %60, %58 ], [ %67, %65 ]
  %75 = sext i8 %74 to i16
  %76 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 20
  store i16 %75, ptr %76, align 8
  br label %77

77:                                               ; preds = %73, %65, %61
  %78 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 20
  %79 = load i16, ptr %78, align 8
  %80 = zext i16 %79 to i32
  %81 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 21
  %82 = load i8, ptr %81, align 2
  %83 = zext i8 %82 to i32
  %84 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 22
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.9, i32 noundef %80, i32 noundef %83, i32 noundef %86) #10
  br label %87

87:                                               ; preds = %77, %71, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_rf_tx_power(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %4 = load i16, ptr %3, align 1
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  %6 = load i16, ptr %5, align 1
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 20
  store i16 %6, ptr %7, align 8
  %8 = icmp eq i16 %4, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 21
  %11 = load i8, ptr %10, align 2
  %12 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 22
  %13 = load i8, ptr %12, align 1
  br label %21

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 21
  store i8 %16, ptr %17, align 2
  %18 = getelementptr inbounds %struct.host_cmd_ds_rf_tx_pwr, ptr %3, i32 0, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 22
  store i8 %19, ptr %20, align 1
  br label %21

21:                                               ; preds = %14, %9
  %22 = phi i8 [ %13, %9 ], [ %19, %14 ]
  %23 = phi i8 [ %11, %9 ], [ %16, %14 ]
  %24 = load ptr, ptr %0, align 8
  %25 = zext i16 %6 to i32
  %26 = zext i8 %23 to i32
  %27 = zext i8 %22 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %24, i32 noundef 1073741824, ptr noundef nonnull @.str.10, i32 noundef %25, i32 noundef %26, i32 noundef %27) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_rf_antenna(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 114
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 34
  %8 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  %9 = load i16, ptr %8, align 1
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 23
  store i32 %10, ptr %11, align 4
  br i1 %7, label %12, label %26

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  %14 = load i16, ptr %13, align 1
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 24
  store i32 %15, ptr %16, align 8
  %17 = load i16, ptr %3, align 1
  %18 = zext i16 %17 to i32
  %19 = load i16, ptr %8, align 1
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  %22 = load i16, ptr %21, align 1
  %23 = zext i16 %22 to i32
  %24 = load i16, ptr %13, align 1
  %25 = zext i16 %24 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.11, i32 noundef %18, i32 noundef %20, i32 noundef %23, i32 noundef %25) #10
  br label %34

26:                                               ; preds = %2
  %27 = load i16, ptr %8, align 1
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 24
  store i32 %28, ptr %29, align 8
  %30 = load i16, ptr %3, align 1
  %31 = zext i16 %30 to i32
  %32 = load i16, ptr %8, align 1
  %33 = zext i16 %32 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.12, i32 noundef %31, i32 noundef %33) #10
  br label %34

34:                                               ; preds = %26, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_enh_power_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_802_11_hs_cfg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_802_11_associate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_802_11_deauthenticate(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 118, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50
  %9 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %7, ptr noundef dereferenceable(6) %8, i32 6)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @mwifiex_reset_connect_state(ptr noundef %0, i16 noundef zeroext 3, i1 noundef zeroext false) #10
  br label %12

12:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_802_11_ad_hoc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @mwifiex_ret_get_log(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) unnamed_addr #3 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %58, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 1
  store i32 %6, ptr %1, align 4
  %7 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 0, i32 2
  %8 = load i32, ptr %7, align 1
  %9 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 0, i32 3, i32 1
  %11 = load i32, ptr %10, align 1
  %12 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %1, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 0, i32 3, i32 3
  %14 = load i32, ptr %13, align 1
  %15 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %1, i32 0, i32 3
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 0, i32 3, i32 5
  %17 = load i32, ptr %16, align 1
  %18 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %1, i32 0, i32 4
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 0, i32 3, i32 7
  %20 = load i32, ptr %19, align 1
  %21 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %1, i32 0, i32 5
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 0, i32 4
  %23 = load i32, ptr %22, align 1
  %24 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %1, i32 0, i32 6
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.host_cmd_ds_802_11_get_log, ptr %5, i32 0, i32 7
  %26 = load i32, ptr %25, align 1
  %27 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %1, i32 0, i32 7
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 1
  %29 = load i32, ptr %28, align 1
  %30 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %1, i32 0, i32 8
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 1, i32 4
  %32 = load i32, ptr %31, align 1
  %33 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %1, i32 0, i32 9
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 1, i32 8
  %35 = load i32, ptr %34, align 1
  %36 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %1, i32 0, i32 10
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 1, i32 12
  %38 = load i32, ptr %37, align 1
  %39 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %1, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 1, i32 20
  %41 = load i32, ptr %40, align 1
  %42 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %1, i32 0, i32 12
  store i32 %41, ptr %42, align 4
  %43 = getelementptr %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 1, i32 24
  %44 = load i32, ptr %43, align 1
  %45 = getelementptr %struct.mwifiex_ds_get_stats, ptr %1, i32 0, i32 12, i32 1
  store i32 %44, ptr %45, align 4
  %46 = getelementptr %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 1, i32 28
  %47 = load i32, ptr %46, align 1
  %48 = getelementptr %struct.mwifiex_ds_get_stats, ptr %1, i32 0, i32 12, i32 2
  store i32 %47, ptr %48, align 4
  %49 = getelementptr %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 1, i32 32
  %50 = load i32, ptr %49, align 1
  %51 = getelementptr %struct.mwifiex_ds_get_stats, ptr %1, i32 0, i32 12, i32 3
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 1, i32 36
  %53 = load i32, ptr %52, align 1
  %54 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %1, i32 0, i32 13
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 1, i32 40
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %1, i32 0, i32 14
  store i32 %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_802_11_rssi_info(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 119
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  %5 = load i16, ptr %4, align 1
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 37
  store i16 %5, ptr %6, align 2
  %7 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 38
  store i16 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 2
  %11 = load i16, ptr %10, align 1
  %12 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 39
  store i16 %11, ptr %12, align 2
  %13 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 3
  %14 = load i16, ptr %13, align 1
  %15 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 40
  store i16 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 4
  %17 = load i16, ptr %16, align 1
  %18 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 41
  store i16 %17, ptr %18, align 2
  %19 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 5
  %20 = load i16, ptr %19, align 1
  %21 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 42
  store i16 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 6
  %23 = load i16, ptr %22, align 1
  %24 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 43
  store i16 %23, ptr %24, align 2
  %25 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 7
  %26 = load i16, ptr %25, align 1
  %27 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 44
  store i16 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 117
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %59, label %31

31:                                               ; preds = %2
  store i64 72058693550669826, ptr %3, align 2
  switch i8 %29, label %57 [
    i8 1, label %32
    i8 2, label %42
  ]

32:                                               ; preds = %31
  %33 = sext i16 %23 to i32
  %34 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 116
  %35 = load i32, ptr %34, align 8
  %36 = sub i32 %33, %35
  %37 = tail call i32 @llvm.abs.i32(i32 %36, i1 false)
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 119, i32 2
  store i8 %38, ptr %39, align 2
  %40 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 115
  %41 = load i32, ptr %40, align 4
  br label %52

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 115
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 @llvm.abs.i32(i32 %44, i1 false)
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 119, i32 2
  store i8 %46, ptr %47, align 2
  %48 = sext i16 %23 to i32
  %49 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 116
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %50, %48
  br label %52

52:                                               ; preds = %42, %32
  %53 = phi i32 [ %51, %42 ], [ %41, %32 ]
  %54 = tail call i32 @llvm.abs.i32(i32 %53, i1 false)
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 119, i32 3
  store i8 %55, ptr %56, align 2
  br label %57

57:                                               ; preds = %52, %31
  store i8 0, ptr %28, align 4
  %58 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 117, i16 noundef zeroext 0, i32 noundef 0, ptr noundef %3, i1 noundef zeroext false) #10
  br label %59

59:                                               ; preds = %57, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_802_11_snmp_mib(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  %6 = load i16, ptr %5, align 1
  %7 = load i16, ptr %4, align 1
  %8 = load ptr, ptr %0, align 8
  %9 = zext i16 %6 to i32
  %10 = zext i16 %7 to i32
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  %12 = load i16, ptr %11, align 1
  %13 = zext i16 %12 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %8, i32 noundef 1073741824, ptr noundef nonnull @.str.13, i32 noundef %9, i32 noundef %10, i32 noundef %13) #10
  %14 = icmp eq i16 %7, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  %17 = load i16, ptr %16, align 1
  %18 = zext i16 %17 to i32
  %19 = icmp eq ptr %2, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 %18, ptr %2, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = add i16 %6, -3
  %23 = icmp ult i16 %22, 6
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = trunc i16 %22 to i8
  %26 = lshr i8 45, %25
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = sext i16 %22 to i32
  %31 = getelementptr inbounds [6 x ptr], ptr @switch.table.mwifiex_ret_802_11_snmp_mib, i32 0, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %33, i32 noundef 1073741824, ptr noundef nonnull %32, i32 noundef %18) #10
  br label %34

34:                                               ; preds = %29, %24, %21, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_802_11_tx_rate_query(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 25
  store i8 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.host_cmd_ds_tx_rate_query, ptr %3, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 26
  store i8 %7, ptr %8, align 1
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 33
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = tail call i32 @mwifiex_index_to_data_rate(ptr noundef %0, i8 noundef zeroext %4, i8 noundef zeroext %7) #10
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 32
  store i32 %13, ptr %14, align 8
  br label %15

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_ver_ext(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca %struct.mwifiex_ds_auto_ds, align 4
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %6, i32 0, i32 12
  %8 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %7) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.host_cmd_ds_version_ext, ptr %5, i32 0, i32 1
  %12 = tail call i32 @strncmp(ptr noundef %11, ptr noundef nonnull dereferenceable(36) @.str.18, i32 noundef 128)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  %15 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %15, i32 noundef 1, ptr noundef nonnull @.str.19) #10
  %16 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 228, i16 noundef zeroext 254, i32 noundef 1, ptr noundef nonnull %4, i1 noundef zeroext false) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.20) #10
  br label %20

20:                                               ; preds = %18, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %29

21:                                               ; preds = %3
  %22 = icmp eq ptr %2, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %21
  %24 = load i8, ptr %5, align 1
  store i8 %24, ptr %2, align 1
  %25 = getelementptr inbounds %struct.host_cmd_ds_version_ext, ptr %2, i32 0, i32 1
  %26 = getelementptr inbounds %struct.host_cmd_ds_version_ext, ptr %5, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(128) %25, ptr noundef align 1 dereferenceable(128) %26, i32 128, i1 false)
  %27 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 106
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(128) %27, ptr noundef align 1 dereferenceable(128) %26, i32 128, i1 false)
  %28 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 106, i32 127
  store i8 0, ptr %28, align 1
  br label %29

29:                                               ; preds = %23, %21, %20, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_ret_802_11_key_material(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 139
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %7, label %35

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 5
  %10 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 4
  %11 = load i16, ptr %10, align 1
  %12 = zext i16 %11 to i32
  %13 = icmp ugt i16 %11, 32
  br i1 %13, label %57, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %16 = load i16, ptr %15, align 1
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 4
  %20 = load i16, ptr %19, align 1
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.21) #10
  %24 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 65
  store i8 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 114
  store i8 0, ptr %25, align 1
  %26 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 9
  store i8 1, ptr %26, align 1
  br label %27

27:                                               ; preds = %23, %18, %14
  %28 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set_v2, ptr %8, i32 0, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 2
  br i1 %30, label %31, label %57

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 67, i32 1, i32 6, i32 0, i32 0, i32 10
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(32) %32, i8 0, i32 32, i1 false) #10
  %33 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 67, i32 1, i32 6, i32 0, i32 0, i32 8
  store i16 %11, ptr %33, align 1
  %34 = getelementptr inbounds %struct.mwifiex_aes_param, ptr %9, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 1 %34, i32 %12, i1 false) #10
  br label %57

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 2
  %37 = load i16, ptr %36, align 1
  %38 = zext i16 %37 to i32
  %39 = icmp ugt i16 %37, 50
  br i1 %39, label %57, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %42 = load i16, ptr %41, align 1
  %43 = icmp eq i16 %42, 1
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  %46 = load i16, ptr %45, align 1
  %47 = and i16 %46, 1
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.21) #10
  %50 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 65
  store i8 1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 114
  store i8 0, ptr %51, align 1
  %52 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 9
  store i8 1, ptr %52, align 1
  br label %53

53:                                               ; preds = %49, %44, %40
  %54 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 66, i32 1, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(50) %54, i8 0, i32 50, i1 false) #10
  %55 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 66, i32 1, i32 4
  store i16 %37, ptr %55, align 1
  %56 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %54, ptr align 1 %56, i32 %38, i1 false) #10
  br label %57

57:                                               ; preds = %53, %35, %31, %27, %7
  %58 = phi i32 [ 0, %31 ], [ -22, %7 ], [ 0, %27 ], [ 0, %53 ], [ -22, %35 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_ret_802_11d_domain_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %4 = load i16, ptr %3, align 1
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  %6 = load i16, ptr %5, align 1
  %7 = zext i16 %6 to i32
  %8 = add nsw i32 %7, -3
  %9 = udiv i32 %8, 3
  %10 = load ptr, ptr %0, align 8
  %11 = and i32 %9, 255
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 1073741824, ptr noundef nonnull @.str.22, i32 noundef %11) #10
  %12 = icmp ugt i32 %11, 83
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %14, i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %11) #10
  br label %21

15:                                               ; preds = %2
  %16 = icmp ult i16 %4, 2
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %0, align 8
  %19 = load i16, ptr %3, align 1
  %20 = zext i16 %19 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %18, i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef %20) #10
  br label %21

21:                                               ; preds = %17, %15, %13
  %22 = phi i32 [ -1, %13 ], [ -1, %17 ], [ 0, %15 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_11n_addba_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_11n_delba(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_11n_addba_resp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_wmm_get_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_ibss_coalescing_status(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %4 = load i16, ptr %3, align 1
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 1073741824, ptr noundef nonnull @.str.25, ptr noundef %8) #10
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = or i32 %9, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 2, ptr noundef nonnull @.str.26) #10
  br label %36

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50
  %19 = load i32, ptr %18, align 4
  %20 = xor i32 %19, %9
  %21 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 0, i32 4
  %22 = load i16, ptr %21, align 2
  %23 = xor i16 %22, %11
  %24 = zext i16 %23 to i32
  %25 = or i32 %20, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %18, ptr noundef align 1 dereferenceable(6) %8, i32 6, i1 false)
  %28 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 2
  %29 = load i16, ptr %28, align 1
  %30 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 7
  store i16 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 4
  %32 = load i16, ptr %31, align 1
  %33 = trunc i16 %32 to i8
  %34 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 8
  store i8 %33, ptr %34, align 2
  %35 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 58
  store i8 3, ptr %35, align 2
  br label %36

36:                                               ; preds = %27, %17, %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_uap_sta_list(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %4 = load i16, ptr %3, align 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  br label %8

8:                                                ; preds = %19, %6
  %9 = phi i32 [ %21, %19 ], [ 0, %6 ]
  %10 = phi ptr [ %20, %19 ], [ %7, %6 ]
  %11 = getelementptr inbounds %struct.mwifiex_ie_types_sta_info, ptr %10, i32 0, i32 1
  %12 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %11) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14, !prof !9

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.mwifiex_ie_types_sta_info, ptr %10, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %12, i32 0, i32 11, i32 1
  store i8 %16, ptr %17, align 8
  %18 = getelementptr %struct.mwifiex_ie_types_sta_info, ptr %10, i32 1
  br label %19

19:                                               ; preds = %14, %8
  %20 = phi ptr [ %10, %8 ], [ %18, %14 ]
  %21 = add nuw nsw i32 %9, 1
  %22 = load i16, ptr %3, align 1
  %23 = zext i16 %22 to i32
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %8, label %25

25:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_ret_tdls_oper(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  %5 = load i16, ptr %4, align 1
  %6 = load i16, ptr %3, align 1
  %7 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  %8 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %7) #10
  switch i16 %6, label %41 [
    i16 0, label %9
    i16 1, label %21
    i16 2, label %32
  ]

9:                                                ; preds = %2
  %10 = icmp eq i16 %5, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %9
  %12 = icmp eq ptr %8, null
  %13 = zext i16 %5 to i32
  %14 = icmp eq i16 %5, 4
  %15 = select i1 %12, i1 true, i1 %14
  %16 = load ptr, ptr %0, align 8
  br i1 %15, label %17, label %18

17:                                               ; preds = %11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef %7, i32 noundef %13) #10
  br label %44

18:                                               ; preds = %11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 4, ptr noundef nonnull @.str.28, ptr noundef %7, i32 noundef %13) #10
  br label %44

19:                                               ; preds = %9
  %20 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %20, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %7) #10
  br label %44

21:                                               ; preds = %2
  %22 = icmp eq i16 %5, 0
  %23 = load ptr, ptr %0, align 8
  br i1 %22, label %31, label %24

24:                                               ; preds = %21
  %25 = zext i16 %5 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %23, i32 noundef 4, ptr noundef nonnull @.str.30, ptr noundef %7, i32 noundef %25) #10
  %26 = icmp ne ptr %8, null
  %27 = icmp ne i16 %5, 3
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %8, i32 0, i32 8
  store i8 3, ptr %30, align 4
  br label %44

31:                                               ; preds = %21
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %23, i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef %7) #10
  br label %44

32:                                               ; preds = %2
  %33 = icmp eq i16 %5, 0
  %34 = load ptr, ptr %0, align 8
  br i1 %33, label %40, label %35

35:                                               ; preds = %32
  %36 = zext i16 %5 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %34, i32 noundef 4, ptr noundef nonnull @.str.32, ptr noundef %7, i32 noundef %36) #10
  %37 = icmp eq ptr %8, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %8, i32 0, i32 8
  store i8 3, ptr %39, align 4
  br label %44

40:                                               ; preds = %32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %34, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef %7) #10
  br label %44

41:                                               ; preds = %2
  %42 = zext i16 %6 to i32
  %43 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %43, i32 noundef 4, ptr noundef nonnull @.str.34, i32 noundef %42) #10
  br label %44

44:                                               ; preds = %41, %40, %38, %35, %31, %29, %24, %19, %18, %17
  %45 = phi i32 [ -1, %41 ], [ 0, %40 ], [ 0, %38 ], [ 0, %35 ], [ 0, %31 ], [ 0, %29 ], [ 0, %24 ], [ 0, %19 ], [ 0, %18 ], [ 0, %17 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ret_wakeup_reason(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_ret_chan_region_cfg(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %4 = load i16, ptr %3, align 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %141

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 1
  %9 = add i16 %8, -10
  %10 = icmp ugt i16 %9, 3
  br i1 %10, label %11, label %141

11:                                               ; preds = %6
  %12 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  br label %13

13:                                               ; preds = %136, %11
  %14 = phi ptr [ %137, %136 ], [ %12, %11 ]
  %15 = phi i16 [ %139, %136 ], [ %9, %11 ]
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %14, i32 0, i32 1
  %18 = load i16, ptr %17, align 1
  %19 = zext i16 %18 to i32
  %20 = add nuw nsw i32 %19, 4
  %21 = icmp ugt i32 %20, %16
  br i1 %21, label %141, label %22

22:                                               ; preds = %13
  %23 = load i16, ptr %14, align 1
  %24 = icmp eq i16 %23, 493
  br i1 %24, label %25, label %136

25:                                               ; preds = %22
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds %struct.mwifiex_adapter, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 131072
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %14, i32 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %32, i32 noundef %19, i1 noundef zeroext false) #10
  br label %33

33:                                               ; preds = %31, %25
  %34 = getelementptr i8, ptr %14, i32 4
  %35 = lshr i16 %18, 1
  %36 = zext i16 %35 to i32
  %37 = icmp ugt i16 %18, 257
  %38 = load i1, ptr @mwifiex_create_custom_regdomain.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !9

41:                                               ; preds = %33
  store i1 true, ptr @mwifiex_create_custom_regdomain.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 1064, i32 noundef 9, ptr noundef null) #10
  br label %42

42:                                               ; preds = %41, %33
  br i1 %37, label %136, label %43

43:                                               ; preds = %42
  %44 = mul nuw nsw i32 %36, 96
  %45 = or i32 %44, 20
  %46 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %45, i32 noundef 3520) #11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %136, label %48

48:                                               ; preds = %43
  %49 = icmp ult i16 %18, 2
  br i1 %49, label %125, label %50

50:                                               ; preds = %48
  %51 = tail call i32 @llvm.smax.i32(i32 %36, i32 1) #10
  br label %52

52:                                               ; preds = %118, %50
  %53 = phi ptr [ %63, %118 ], [ %34, %50 ]
  %54 = phi i8 [ %122, %118 ], [ 0, %50 ]
  %55 = phi i8 [ %121, %118 ], [ 0, %50 ]
  %56 = phi i32 [ %120, %118 ], [ 0, %50 ]
  %57 = phi i32 [ %119, %118 ], [ 0, %50 ]
  %58 = phi i32 [ %123, %118 ], [ 0, %50 ]
  %59 = load i8, ptr %53, align 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %117, label %61

61:                                               ; preds = %52
  %62 = getelementptr i8, ptr %53, i32 1
  %63 = getelementptr i8, ptr %53, i32 2
  %64 = load i8, ptr %62, align 1
  %65 = zext i8 %59 to i32
  %66 = icmp ugt i8 %59, 14
  %67 = zext i1 %66 to i32
  %68 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %65, i32 noundef %67) #10
  %69 = udiv i32 %68, 1000
  %70 = zext i8 %64 to i32
  %71 = and i32 %70, 128
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %118

73:                                               ; preds = %61
  br i1 %66, label %74, label %81

74:                                               ; preds = %73
  %75 = and i32 %70, 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %74
  %78 = and i32 %70, 4
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, i32 40000, i32 20000
  br label %85

81:                                               ; preds = %73
  %82 = and i32 %70, 4
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 40000, i32 20000
  br label %85

85:                                               ; preds = %81, %77, %74
  %86 = phi i32 [ 80000, %74 ], [ %80, %77 ], [ %84, %81 ]
  %87 = icmp eq i32 %58, 0
  %88 = icmp ne i8 %55, %64
  %89 = select i1 %87, i1 true, i1 %88
  %90 = icmp ne i32 %56, %86
  %91 = select i1 %89, i1 true, i1 %90
  %92 = sub i32 %69, %57
  %93 = icmp sgt i32 %92, 20
  %94 = select i1 %91, i1 true, i1 %93
  %95 = add i8 %54, 1
  %96 = select i1 %94, i8 %95, i8 %54
  %97 = zext i8 %96 to i32
  %98 = add nsw i32 %97, -1
  %99 = getelementptr %struct.ieee80211_regdomain, ptr %46, i32 0, i32 4, i32 %98
  %100 = mul nuw i32 %69, 1000
  %101 = add i32 %100, 10000
  %102 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %99, i32 0, i32 1
  store i32 %101, ptr %102, align 8
  br i1 %94, label %103, label %118

103:                                              ; preds = %85
  %104 = add i32 %100, -10000
  store i32 %104, ptr %99, align 4
  %105 = getelementptr %struct.ieee80211_regdomain, ptr %46, i32 0, i32 4, i32 %98, i32 1, i32 1
  store i32 1900, ptr %105, align 4
  %106 = and i32 %70, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = getelementptr %struct.ieee80211_regdomain, ptr %46, i32 0, i32 4, i32 %98, i32 3
  store i32 128, ptr %109, align 8
  br label %110

110:                                              ; preds = %108, %103
  %111 = and i32 %70, 2
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = getelementptr %struct.ieee80211_regdomain, ptr %46, i32 0, i32 4, i32 %98, i32 3
  store i32 16, ptr %114, align 8
  br label %115

115:                                              ; preds = %113, %110
  %116 = getelementptr inbounds %struct.ieee80211_freq_range, ptr %99, i32 0, i32 2
  store i32 %86, ptr %116, align 4
  br label %118

117:                                              ; preds = %52
  tail call void @kfree(ptr noundef nonnull %46) #10
  br label %132

118:                                              ; preds = %115, %85, %61
  %119 = phi i32 [ %69, %85 ], [ %57, %61 ], [ %69, %115 ]
  %120 = phi i32 [ %56, %85 ], [ %56, %61 ], [ %86, %115 ]
  %121 = phi i8 [ %55, %85 ], [ %55, %61 ], [ %64, %115 ]
  %122 = phi i8 [ %54, %85 ], [ %54, %61 ], [ %95, %115 ]
  %123 = add nuw nsw i32 %58, 1
  %124 = icmp eq i32 %123, %51
  br i1 %124, label %125, label %52

125:                                              ; preds = %118, %48
  %126 = phi i8 [ 0, %48 ], [ %122, %118 ]
  %127 = zext i8 %126 to i32
  %128 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %46, i32 0, i32 1
  store i32 %127, ptr %128, align 8
  %129 = getelementptr inbounds %struct.ieee80211_regdomain, ptr %46, i32 0, i32 2
  store i8 57, ptr %129, align 4
  %130 = getelementptr %struct.ieee80211_regdomain, ptr %46, i32 0, i32 2, i32 1
  store i8 57, ptr %130, align 1
  %131 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %131, label %136, label %132

132:                                              ; preds = %125, %117
  %133 = phi ptr [ null, %117 ], [ %46, %125 ]
  %134 = load ptr, ptr %0, align 8
  %135 = getelementptr inbounds %struct.mwifiex_adapter, ptr %134, i32 0, i32 163
  store ptr %133, ptr %135, align 4
  br label %136

136:                                              ; preds = %132, %125, %43, %42, %22
  %137 = getelementptr i8, ptr %14, i32 %20
  %138 = trunc i32 %20 to i16
  %139 = sub i16 %15, %138
  %140 = icmp ugt i16 %139, 3
  br i1 %140, label %13, label %141

141:                                              ; preds = %136, %13, %6, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_cancel_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_recycle_cmd_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_is_rate_auto(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_reset_connect_state(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_index_to_data_rate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
