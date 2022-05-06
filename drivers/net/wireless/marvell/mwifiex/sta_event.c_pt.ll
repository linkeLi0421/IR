; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/sta_event.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/sta_event.c"
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.117, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.134, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.117 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.134 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
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
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ie_types_mc_group_info = type <{ %struct.mwifiex_ie_types_header, i8, i8, i8, i8, i32, i32, %union.anon.148, i8, [0 x i8] }>
%union.anon.148 = type { i8 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.mwifiex_ie_types_btcoex_aggr_win_size = type { %struct.mwifiex_ie_types_header, i8, i8, i8, i8 }
%struct.mwifiex_ie_types_btcoex_scan_time = type { %struct.mwifiex_ie_types_header, i8, i8, i16, i16 }

@.str = private unnamed_addr constant [32 x i8] c"info: handles disconnect event\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"info: previous SSID=%s, SSID len=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"info: current SSID=%s, SSID len=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"info: successfully disconnected from %pM: reason code %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"unknown TLV in chan_info event\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"multi chan operation %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"started\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"over\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"wrong tlv: tlvLen=%d,\09tlvBufLeft=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"wrong tlv type: 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Invalid bss_type bss_num\09in multi channel event\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"tx_pause event while disconnected; bss_role=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"wrong tlv: tlvLen=%d, tlvBufLeft=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"invalid EVENT: DUMMY_HOST_WAKEUP_SIGNAL, ignore it\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"event: LINK_SENSED\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"event: Deauthenticated\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"info: receive deauth event in wps session\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"event: Disassociated\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"info: receive disassoc event in wps session\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"event: Link lost\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"info: EVENT: SLEEP\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"info: EVENT: AWAKE\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"event: PPS/UAPSD mode activated\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"event: DS_AWAKE\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"event: HS_ACT_REQ\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"event: UNICAST MIC ERROR\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"event: MULTICAST MIC ERROR\0A\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"event: ADHOC_BCN_LOST\0A\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"event: BGS_REPORT\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"event: PORT RELEASE\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"event: EXT_SCAN Report\0A\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"event: WMM status changed\0A\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"event: Beacon RSSI_LOW\0A\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"event: Beacon SNR_LOW\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"event: MAX_FAIL\0A\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"event: Beacon RSSI_HIGH\0A\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"event: Beacon SNR_HIGH\0A\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"event: Data RSSI_LOW\0A\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"event: Data SNR_LOW\0A\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"event: Data RSSI_HIGH\0A\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"event: Data SNR_HIGH\0A\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"event: Link Quality\0A\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"event: Pre-Beacon Lost\0A\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"event: IBSS_COALESCED\0A\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"event: IBSS_STA_CONNECT %pM\0A\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"event: IBSS_STA_DISCONNECT %pM\0A\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"event: ADDBA Request\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"event: DELBA Request\0A\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"event:  BA Stream timeout\0A\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"event: AMSDU_AGGR_CTRL %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"event: tx_buf_size %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"event: WEP ICV error\0A\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"event: BW Change\0A\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"event: HOSTWAKE_STAIE %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"event: Remain on channel expired\0A\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"event: Channel Switch Announcement\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.56 = private unnamed_addr constant [22 x i8] c"event: TX DATA PAUSE\0A\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"event: multi-chan info\0A\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"event: TX_STATUS Report\0A\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"event: Channel Report\0A\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"event: Radar detected\0A\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"event: firmware debug info\0A\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"event: debug\0A\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"event: unknown event id: %#x\0A\00", align 1
@.str.64 = private unnamed_addr constant [37 x i8] c"sta tx_pause: %pM pause=%d, pkts=%d\0A\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"uap tx_pause: %pM pause=%d, pkts=%d\0A\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"ibss peer capabilities:\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"management frame tlv not found!\0A\00", align 1
@.str.69 = private unnamed_addr constant [30 x i8] c"11n enabled!, max_amsdu : %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [31 x i8] c"11ac enabled!, max_amsdu : %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"Invalid event length!\0A\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"cannot get sta entry!\0A\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"tdls channel switch result :\0A\00", align 1
@.str.74 = private unnamed_addr constant [38 x i8] c"status=0x%x, reason=0x%x cur_chan=%d\0A\00", align 1
@.str.75 = private unnamed_addr constant [30 x i8] c"tdls start channel switch...\0A\00", align 1
@.str.76 = private unnamed_addr constant [37 x i8] c"tdls chan switch stopped, reason=%d\0A\00", align 1
@.str.77 = private unnamed_addr constant [42 x i8] c"event is not on usb interface, ignore it\0A\00", align 1
@.str.78 = private unnamed_addr constant [31 x i8] c"vzalloc devdump data failure!\0A\00", align 1
@.str.79 = private unnamed_addr constant [41 x i8] c"receive end of transmission flag event!\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_reset_connect_state(ptr noundef %0, i16 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %6 = load i8, ptr %5, align 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %96, label %8

8:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str) #7
  store i8 0, ptr %5, align 8
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 114
  store i8 0, ptr %9, align 1
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 9
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %8
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 47
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 16384
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  tail call void @mwifiex_disable_all_tdls_links(ptr noundef %0) #7
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, ptr %22, i32 0, i32 151
  %24 = load i8, ptr %23, align 4, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @mwifiex_clean_auto_tdls(ptr noundef %0) #7
  br label %27

27:                                               ; preds = %26, %21, %15, %8
  tail call void @mwifiex_clean_txrx(ptr noundef %0) #7
  %28 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 37
  %29 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 28
  store i8 0, ptr %29, align 1
  %30 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 27
  store i8 0, ptr %30, align 2
  %31 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60
  %32 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 64
  store i16 0, ptr %32, align 2
  %33 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 70
  store i16 0, ptr %33, align 2
  %34 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 7
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 33
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  store i32 0, ptr %31, align 4
  store i8 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 32
  store i32 0, ptr %36, align 8
  %37 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 162
  store i8 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 163
  store i8 0, ptr %38, align 1
  %39 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 149
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %27
  tail call void @mwifiex_hist_data_reset(ptr noundef %0) #7
  br label %43

43:                                               ; preds = %42, %27
  %44 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 58
  store i8 0, ptr %48, align 2
  %49 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 57
  store i8 0, ptr %49, align 1
  br label %50

50:                                               ; preds = %47, %43
  %51 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 47
  %52 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 47, i32 1
  %53 = load i8, ptr %52, align 8
  %54 = zext i8 %53 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.1, ptr noundef %51, i32 noundef %54) #7
  %55 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50
  %56 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 1
  %57 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 1, i32 1
  %58 = load i8, ptr %57, align 2
  %59 = zext i8 %58 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.2, ptr noundef %56, i32 noundef %59) #7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(33) %51, ptr noundef align 2 dereferenceable(33) %56, i32 33, i1 false)
  %60 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 48
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %60, ptr noundef align 8 dereferenceable(6) %55, i32 6, i1 false)
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(280) %55, i8 0, i32 280, i1 false)
  %61 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 86
  store i8 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 104
  store i16 0, ptr %62, align 2
  %63 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 12
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %50
  %68 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 60
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %96

71:                                               ; preds = %67, %50
  store i8 0, ptr %5, align 8
  %72 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 112
  %73 = zext i16 %1 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %72, i32 noundef %73) #7
  %74 = load i32, ptr %44, align 8
  switch i32 %74, label %79 [
    i32 2, label %75
    i32 8, label %75
  ]

75:                                               ; preds = %71, %71
  %76 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %77 = load ptr, ptr %76, align 4
  %78 = xor i1 %2, true
  tail call void @cfg80211_disconnected(ptr noundef %77, i16 noundef zeroext %1, ptr noundef null, i32 noundef 0, i1 noundef zeroext %78, i32 noundef 3264) #7
  br label %79

79:                                               ; preds = %75, %71
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %72, i8 0, i32 6, i1 false) #7
  %80 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %81 = load ptr, ptr %80, align 4
  tail call void @mwifiex_stop_net_dev_queue(ptr noundef %81, ptr noundef %4) #7
  %82 = load ptr, ptr %80, align 4
  %83 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 6
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  tail call void @netif_carrier_off(ptr noundef %82) #7
  br label %88

88:                                               ; preds = %87, %79
  %89 = load ptr, ptr %0, align 8
  %90 = getelementptr inbounds %struct.mwifiex_adapter, ptr %89, i32 0, i32 47
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 2097152
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 271, i16 noundef zeroext 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #7
  br label %96

96:                                               ; preds = %94, %88, %67, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_disable_all_tdls_links(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_clean_auto_tdls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_clean_txrx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_hist_data_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_disconnected(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_stop_net_dev_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_process_multi_chan_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, 65532
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = load i16, ptr %9, align 1
  %11 = icmp ne i16 %10, 439
  %12 = and i32 %6, 65534
  %13 = icmp ult i32 %12, 6
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.4) #7
  br label %101

16:                                               ; preds = %2
  %17 = getelementptr i8, ptr %8, i32 8
  %18 = load i16, ptr %17, align 1
  %19 = icmp ne i16 %18, 0
  %20 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 160
  %21 = zext i1 %19 to i8
  store i8 %21, ptr %20, align 1
  %22 = select i1 %19, ptr @.str.6, ptr @.str.7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef nonnull %22) #7
  %23 = add i32 %5, 65526
  %24 = and i32 %23, 65535
  %25 = icmp ugt i32 %24, 3
  br i1 %25, label %26, label %95

26:                                               ; preds = %16
  %27 = getelementptr i8, ptr %8, i32 10
  %28 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 5
  br label %29

29:                                               ; preds = %89, %26
  %30 = phi i32 [ %24, %26 ], [ %93, %89 ]
  %31 = phi ptr [ %27, %26 ], [ %92, %89 ]
  %32 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %31, i32 0, i32 1
  %33 = load i16, ptr %32, align 1
  %34 = zext i16 %33 to i32
  %35 = add nuw nsw i32 %34, 4
  %36 = icmp ult i32 %30, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = zext i16 %33 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %38, i32 noundef %30) #7
  br label %95

39:                                               ; preds = %29
  %40 = load i16, ptr %31, align 1
  %41 = icmp eq i16 %40, 440
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = zext i16 %40 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %43) #7
  br label %95

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.mwifiex_ie_types_mc_group_info, ptr %31, i32 0, i32 8
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i8 %46, 0
  br i1 %48, label %89, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.mwifiex_ie_types_mc_group_info, ptr %31, i32 0, i32 7
  br label %51

51:                                               ; preds = %86, %49
  %52 = phi i32 [ 0, %49 ], [ %87, %86 ]
  %53 = getelementptr %struct.mwifiex_ie_types_mc_group_info, ptr %31, i32 0, i32 9, i32 %52
  %54 = load i8, ptr %53, align 1
  %55 = lshr i8 %54, 4
  %56 = and i8 %54, 15
  %57 = load i8, ptr %28, align 4
  %58 = zext i8 %57 to i32
  %59 = icmp eq i8 %57, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %73, %51
  %61 = phi i32 [ %74, %73 ], [ 0, %51 ]
  %62 = getelementptr %struct.mwifiex_adapter, ptr %3, i32 0, i32 4, i32 %61
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.mwifiex_private, ptr %63, i32 0, i32 4
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, %56
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.mwifiex_private, ptr %63, i32 0, i32 1
  %71 = load i8, ptr %70, align 4
  %72 = icmp eq i8 %71, %55
  br i1 %72, label %77, label %73

73:                                               ; preds = %69, %65, %60
  %74 = add nuw nsw i32 %61, 1
  %75 = icmp eq i32 %74, %58
  br i1 %75, label %76, label %60

76:                                               ; preds = %73, %51
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.10) #7
  br label %86

77:                                               ; preds = %69
  %78 = load i8, ptr %3, align 4
  %79 = icmp eq i8 %78, 2
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i8, ptr %50, align 1
  %82 = and i8 %81, -2
  %83 = icmp eq i8 %82, 2
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.mwifiex_private, ptr %63, i32 0, i32 10
  store i8 %81, ptr %85, align 2
  br label %86

86:                                               ; preds = %84, %80, %77, %76
  %87 = add nuw nsw i32 %52, 1
  %88 = icmp eq i32 %87, %47
  br i1 %88, label %89, label %51

89:                                               ; preds = %86, %44
  %90 = sub nsw i32 %30, %35
  %91 = getelementptr i8, ptr %31, i32 4
  %92 = getelementptr i8, ptr %91, i32 %34
  %93 = and i32 %90, 65535
  %94 = icmp ugt i32 %93, 3
  br i1 %94, label %29, label %95

95:                                               ; preds = %89, %42, %37, %16
  %96 = load i8, ptr %3, align 4
  %97 = icmp eq i8 %96, 2
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 86
  store i8 1, ptr %99, align 4
  %100 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 161
  store i8 1, ptr %100, align 2
  tail call void @mwifiex_multi_chan_resync(ptr noundef %3) #7
  br label %101

101:                                              ; preds = %98, %95, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_multi_chan_resync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_process_tx_pause_event(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %4 = load i8, ptr %3, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %10) #7
  br label %128

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, -4
  %15 = icmp sgt i32 %14, 3
  br i1 %15, label %16, label %128

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %20 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %21 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 80
  %22 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 9
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 112
  %24 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 112, i32 4
  br label %25

25:                                               ; preds = %124, %16
  %26 = phi i32 [ %14, %16 ], [ %125, %124 ]
  %27 = phi ptr [ %18, %16 ], [ %126, %124 ]
  %28 = getelementptr i8, ptr %27, i32 4
  %29 = getelementptr i8, ptr %27, i32 6
  %30 = load i16, ptr %29, align 1
  %31 = zext i16 %30 to i32
  %32 = add nuw nsw i32 %31, 4
  %33 = icmp ult i32 %26, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = zext i16 %30 to i32
  %36 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %36, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %35, i32 noundef %26) #7
  br label %128

37:                                               ; preds = %25
  %38 = load i16, ptr %28, align 1
  %39 = icmp eq i16 %38, 404
  br i1 %39, label %40, label %124

40:                                               ; preds = %37
  %41 = load i8, ptr %19, align 1
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr i8, ptr %27, i32 8
  %46 = getelementptr i8, ptr %27, i32 14
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = getelementptr i8, ptr %27, i32 15
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  br i1 %43, label %52, label %88

52:                                               ; preds = %40
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %44, i32 noundef 32, ptr noundef nonnull @.str.64, ptr noundef %45, i32 noundef %48, i32 noundef %51) #7
  %53 = load i32, ptr %45, align 4
  %54 = load i32, ptr %23, align 4
  %55 = xor i32 %54, %53
  %56 = getelementptr i8, ptr %27, i32 12
  %57 = load i16, ptr %56, align 2
  %58 = load i16, ptr %24, align 2
  %59 = xor i16 %58, %57
  %60 = zext i16 %59 to i32
  %61 = or i32 %55, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %52
  %64 = load i8, ptr %46, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i8 0, ptr %22, align 1
  br label %124

67:                                               ; preds = %63
  store i8 1, ptr %22, align 1
  br label %124

68:                                               ; preds = %52
  %69 = load ptr, ptr %0, align 8
  %70 = getelementptr inbounds %struct.mwifiex_adapter, ptr %69, i32 0, i32 47
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 16384
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %124, label %74

74:                                               ; preds = %68
  %75 = tail call i32 @mwifiex_get_tdls_link_status(ptr noundef %0, ptr noundef %45) #7
  %76 = trunc i32 %75 to i8
  switch i8 %76, label %124 [
    i8 2, label %77
    i8 5, label %77
    i8 6, label %77
    i8 7, label %77
  ]

77:                                               ; preds = %74, %74, %74, %74
  tail call void @_raw_spin_lock_bh(ptr noundef %21) #7
  %78 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %45) #7
  %79 = icmp eq ptr %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %78, i32 0, i32 12
  %82 = load i8, ptr %81, align 8
  %83 = load i8, ptr %46, align 1
  %84 = icmp eq i8 %82, %83
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  store i8 %83, ptr %81, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %21) #7
  %86 = load i8, ptr %46, align 1
  tail call void @mwifiex_update_ralist_tx_pause(ptr noundef %0, ptr noundef %45, i8 noundef zeroext %86) #7
  br label %124

87:                                               ; preds = %80, %77
  tail call void @_raw_spin_unlock_bh(ptr noundef %21) #7
  br label %124

88:                                               ; preds = %40
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %44, i32 noundef 32, ptr noundef nonnull @.str.65, ptr noundef %45, i32 noundef %48, i32 noundef %51) #7
  %89 = load ptr, ptr %20, align 4
  %90 = getelementptr inbounds %struct.net_device, ptr %89, i32 0, i32 72
  %91 = load ptr, ptr %90, align 32
  %92 = load i32, ptr %45, align 4
  %93 = load i32, ptr %91, align 4
  %94 = xor i32 %93, %92
  %95 = getelementptr i8, ptr %27, i32 12
  %96 = load i16, ptr %95, align 2
  %97 = getelementptr i8, ptr %91, i32 4
  %98 = load i16, ptr %97, align 2
  %99 = xor i16 %98, %96
  %100 = zext i16 %99 to i32
  %101 = or i32 %94, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %88
  %104 = load i8, ptr %46, align 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  store i8 0, ptr %22, align 1
  br label %124

107:                                              ; preds = %103
  store i8 1, ptr %22, align 1
  br label %124

108:                                              ; preds = %88
  %109 = and i32 %92, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = load i8, ptr %46, align 1
  tail call void @mwifiex_update_ralist_tx_pause(ptr noundef %0, ptr noundef %45, i8 noundef zeroext %112) #7
  br label %124

113:                                              ; preds = %108
  tail call void @_raw_spin_lock_bh(ptr noundef %21) #7
  %114 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %45) #7
  %115 = icmp eq ptr %114, null
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %114, i32 0, i32 12
  %118 = load i8, ptr %117, align 8
  %119 = load i8, ptr %46, align 1
  %120 = icmp eq i8 %118, %119
  br i1 %120, label %123, label %121

121:                                              ; preds = %116
  store i8 %119, ptr %117, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %21) #7
  %122 = load i8, ptr %46, align 1
  tail call void @mwifiex_update_ralist_tx_pause(ptr noundef %0, ptr noundef %45, i8 noundef zeroext %122) #7
  br label %124

123:                                              ; preds = %116, %113
  tail call void @_raw_spin_unlock_bh(ptr noundef %21) #7
  br label %124

124:                                              ; preds = %123, %121, %111, %107, %106, %87, %85, %74, %68, %67, %66, %37
  %125 = sub nsw i32 %26, %32
  %126 = getelementptr i8, ptr %28, i32 %31
  %127 = icmp sgt i32 %125, 3
  br i1 %127, label %25, label %128

128:                                              ; preds = %124, %34, %11, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_bt_coex_wlan_param_update_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, -4
  %7 = icmp ugt i32 %6, 3
  br i1 %7, label %8, label %48

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  %12 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 152
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 153
  %14 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 154
  %15 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 155
  %16 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 156
  %17 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 157
  br label %18

18:                                               ; preds = %44, %8
  %19 = phi ptr [ %11, %8 ], [ %46, %44 ]
  %20 = phi i32 [ %6, %8 ], [ %45, %44 ]
  %21 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %19, i32 0, i32 1
  %22 = load i16, ptr %21, align 1
  %23 = zext i16 %22 to i32
  %24 = add nuw nsw i32 %23, 4
  %25 = icmp ult i32 %20, %24
  br i1 %25, label %48, label %26

26:                                               ; preds = %18
  %27 = load i16, ptr %19, align 1
  switch i16 %27, label %44 [
    i16 458, label %28
    i16 459, label %35
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_aggr_win_size, ptr %19, i32 0, i32 1
  %30 = load i8, ptr %29, align 1
  store i8 %30, ptr %15, align 4
  %31 = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_aggr_win_size, ptr %19, i32 0, i32 2
  %32 = load i8, ptr %31, align 1
  store i8 %32, ptr %16, align 1
  %33 = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_aggr_win_size, ptr %19, i32 0, i32 3
  %34 = load i8, ptr %33, align 1
  store i8 %34, ptr %17, align 2
  tail call void @mwifiex_coex_ampdu_rxwinsize(ptr noundef %3) #7
  tail call void @mwifiex_update_ampdu_txwinsize(ptr noundef %3) #7
  br label %44

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_scan_time, ptr %19, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  store i8 %37, ptr %12, align 1
  %38 = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_scan_time, ptr %19, i32 0, i32 3
  %39 = load i16, ptr %38, align 1
  %40 = trunc i16 %39 to i8
  store i8 %40, ptr %13, align 2
  %41 = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_scan_time, ptr %19, i32 0, i32 4
  %42 = load i16, ptr %41, align 1
  %43 = trunc i16 %42 to i8
  store i8 %43, ptr %14, align 1
  br label %44

44:                                               ; preds = %35, %28, %26
  %45 = sub i32 %20, %24
  %46 = getelementptr i8, ptr %19, i32 %24
  %47 = icmp ugt i32 %45, 3
  br i1 %47, label %18, label %48

48:                                               ; preds = %44, %18, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_coex_ampdu_rxwinsize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_update_ampdu_txwinsize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_sta_event(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [6 x i8], align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 50
  %5 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !9
  switch i32 %5, label %339 [
    i32 1, label %6
    i32 4, label %7
    i32 8, label %18
    i32 9, label %33
    i32 3, label %48
    i32 11, label %58
    i32 10, label %60
    i32 16, label %122
    i32 71, label %130
    i32 14, label %132
    i32 13, label %136
    i32 6, label %340
    i32 7, label %340
    i32 17, label %140
    i32 24, label %150
    i32 101, label %152
    i32 43, label %159
    i32 88, label %161
    i32 23, label %182
    i32 25, label %184
    i32 26, label %189
    i32 27, label %190
    i32 28, label %191
    i32 29, label %196
    i32 36, label %197
    i32 37, label %198
    i32 38, label %199
    i32 39, label %200
    i32 40, label %201
    i32 49, label %202
    i32 30, label %203
    i32 32, label %205
    i32 33, label %252
    i32 51, label %266
    i32 52, label %269
    i32 55, label %271
    i32 66, label %273
    i32 70, label %282
    i32 72, label %283
    i32 77, label %284
    i32 95, label %285
    i32 80, label %290
    i32 82, label %300
    i32 85, label %304
    i32 106, label %307
    i32 116, label %310
    i32 84, label %312
    i32 83, label %316
    i32 118, label %320
    i32 89, label %327
    i32 115, label %335
    i32 99, label %338
  ]

6:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.13) #7
  br label %340

7:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.14) #7
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  tail call void @netif_carrier_on(ptr noundef %9) #7
  %15 = load ptr, ptr %8, align 4
  br label %16

16:                                               ; preds = %14, %7
  %17 = phi ptr [ %15, %14 ], [ %9, %7 ]
  tail call void @mwifiex_wake_up_net_dev_queue(ptr noundef %17, ptr noundef %3) #7
  br label %340

18:                                               ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.15) #7
  %19 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 113
  %20 = load i8, ptr %19, align 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.16) #7
  br label %340

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 118, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %28 = load i8, ptr %27, align 8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %340, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 112
  %32 = load i16, ptr %31, align 1
  tail call void @mwifiex_reset_connect_state(ptr noundef %0, i16 noundef zeroext %32, i1 noundef zeroext true)
  br label %340

33:                                               ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.17) #7
  %34 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 113
  %35 = load i8, ptr %34, align 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.18) #7
  br label %340

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 118, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %43 = load i8, ptr %42, align 8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %340, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 112
  %47 = load i16, ptr %46, align 1
  tail call void @mwifiex_reset_connect_state(ptr noundef %0, i16 noundef zeroext %47, i1 noundef zeroext true)
  br label %340

48:                                               ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.19) #7
  %49 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 118, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %53 = load i8, ptr %52, align 8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %340, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 112
  %57 = load i16, ptr %56, align 1
  tail call void @mwifiex_reset_connect_state(ptr noundef %0, i16 noundef zeroext %57, i1 noundef zeroext true)
  br label %340

58:                                               ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.20) #7
  %59 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 90
  store i32 1, ptr %59, align 4
  tail call void @mwifiex_check_ps_cond(ptr noundef %3) #7
  br label %340

60:                                               ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.21) #7
  %61 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 104
  %62 = load i16, ptr %61, align 2
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 86
  store i8 0, ptr %65, align 4
  br label %88

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 9
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %72 = load i32, ptr %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %82

74:                                               ; preds = %70, %66
  %75 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %76 = load i8, ptr %75, align 8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 88
  %80 = load i16, ptr %79, align 4
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78, %74, %70
  %83 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 86
  store i8 0, ptr %83, align 4
  br label %116

84:                                               ; preds = %78
  store i16 1, ptr %61, align 2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.22) #7
  %85 = load i16, ptr %61, align 2
  %86 = icmp eq i16 %85, 0
  %87 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 86
  store i8 0, ptr %87, align 4
  br i1 %86, label %116, label %88

88:                                               ; preds = %84, %64
  %89 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 103
  %90 = load i16, ptr %89, align 4
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %116, label %92

92:                                               ; preds = %88
  %93 = tail call zeroext i8 @mwifiex_check_last_packet_indication(ptr noundef %0) #7
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %116, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 53
  %97 = load i8, ptr %96, align 4
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 18, i32 27
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = tail call zeroext i1 %101(ptr noundef %0) #7
  br i1 %104, label %111, label %105

105:                                              ; preds = %103, %95
  %106 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 90
  store i32 0, ptr %106, align 4
  %107 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 102
  store i8 0, ptr %107, align 2
  %108 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 105
  store i32 0, ptr %108, align 4
  %109 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 106
  %110 = tail call i32 @del_timer(ptr noundef %109) #7
  br label %340

111:                                              ; preds = %103, %99
  %112 = tail call i32 @mwifiex_send_null_packet(ptr noundef %0, i8 noundef zeroext 9) #7
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %340

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 90
  store i32 3, ptr %115, align 4
  br label %340

116:                                              ; preds = %92, %88, %84, %82
  %117 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 90
  store i32 0, ptr %117, align 4
  %118 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 102
  store i8 0, ptr %118, align 2
  %119 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 105
  store i32 0, ptr %119, align 4
  %120 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 106
  %121 = tail call i32 @del_timer(ptr noundef %120) #7
  br label %340

122:                                              ; preds = %1
  %123 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 18, i32 12
  %124 = load ptr, ptr %123, align 4
  %125 = tail call i32 %124(ptr noundef %3) #7
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.23) #7
  %126 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 98
  %127 = load i8, ptr %126, align 4
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %340, label %129

129:                                              ; preds = %122
  store i8 0, ptr %126, align 4
  br label %340

130:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.24) #7
  %131 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 229, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #7
  br label %340

132:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.25) #7
  %133 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 112
  tail call void @cfg80211_michael_mic_failure(ptr noundef %134, ptr noundef %135, i32 noundef 1, i32 noundef -1, ptr noundef null, i32 noundef 3264) #7
  br label %340

136:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.26) #7
  %137 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 112
  tail call void @cfg80211_michael_mic_failure(ptr noundef %138, ptr noundef %139, i32 noundef 0, i32 noundef -1, ptr noundef null, i32 noundef 3264) #7
  br label %340

140:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.27) #7
  %141 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 57
  store i8 0, ptr %141, align 1
  tail call void @mwifiex_clean_txrx(ptr noundef %0) #7
  %142 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %143 = load ptr, ptr %142, align 4
  tail call void @mwifiex_stop_net_dev_queue(ptr noundef %143, ptr noundef %3) #7
  %144 = load ptr, ptr %142, align 4
  %145 = getelementptr inbounds %struct.net_device, ptr %144, i32 0, i32 6
  %146 = load volatile i32, ptr %145, align 4
  %147 = and i32 %146, 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %340

149:                                              ; preds = %140
  tail call void @netif_carrier_off(ptr noundef %144) #7
  br label %340

150:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.28) #7
  %151 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 108, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #7
  br label %340

152:                                              ; preds = %1
  %153 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103
  %154 = load ptr, ptr %153, align 8
  tail call void @cfg80211_sched_scan_stopped(ptr noundef %154, i64 noundef 0) #7
  %155 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 131
  %156 = load i8, ptr %155, align 1
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %340, label %158

158:                                              ; preds = %152
  store i8 0, ptr %155, align 1
  br label %340

159:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.29) #7
  %160 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 9
  store i8 1, ptr %160, align 1
  br label %340

161:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.30) #7
  %162 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 137
  %163 = load i8, ptr %162, align 1, !range !8
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %340, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 130
  %167 = load i8, ptr %166, align 8, !range !8
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.net_device, ptr %171, i32 0, i32 6
  %173 = load volatile i32, ptr %172, align 4
  %174 = and i32 %173, 1
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %340

176:                                              ; preds = %169, %165
  %177 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 51
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.sk_buff, ptr %178, i32 0, i32 17
  %180 = load ptr, ptr %179, align 4
  %181 = tail call i32 @mwifiex_handle_event_ext_scan_report(ptr noundef %0, ptr noundef %180) #7
  br label %340

182:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.31) #7
  %183 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 113, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #7
  br label %340

184:                                              ; preds = %1
  %185 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %186 = load ptr, ptr %185, align 4
  tail call void @cfg80211_cqm_rssi_notify(ptr noundef %186, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #7
  %187 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 164, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #7
  %188 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 117
  store i8 1, ptr %188, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.32) #7
  br label %340

189:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.33) #7
  br label %340

190:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.34) #7
  br label %340

191:                                              ; preds = %1
  %192 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %193 = load ptr, ptr %192, align 4
  tail call void @cfg80211_cqm_rssi_notify(ptr noundef %193, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #7
  %194 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 164, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #7
  %195 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 117
  store i8 2, ptr %195, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.35) #7
  br label %340

196:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.36) #7
  br label %340

197:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.37) #7
  br label %340

198:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.38) #7
  br label %340

199:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.39) #7
  br label %340

200:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.40) #7
  br label %340

201:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.41) #7
  br label %340

202:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.42) #7
  br label %340

203:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.43) #7
  %204 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 131, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #7
  br label %340

205:                                              ; preds = %1
  %206 = getelementptr %struct.mwifiex_adapter, ptr %3, i32 0, i32 112, i32 2
  %207 = load i32, ptr %206, align 4
  store i32 %207, ptr %2, align 4
  %208 = getelementptr %struct.mwifiex_adapter, ptr %3, i32 0, i32 112, i32 6
  %209 = load i16, ptr %208, align 2
  %210 = getelementptr inbounds i8, ptr %2, i32 4
  store i16 %209, ptr %210, align 4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.44, ptr noundef nonnull %2) #7
  %211 = call ptr @mwifiex_add_sta_entry(ptr noundef %0, ptr noundef nonnull %2) #7
  %212 = icmp eq ptr %211, null
  br i1 %212, label %340, label %213

213:                                              ; preds = %205
  %214 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 116
  %215 = load i8, ptr %214, align 2
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %340, label %217

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 51
  %219 = load ptr, ptr %218, align 4
  call fastcc void @mwifiex_check_ibss_peer_capabilities(ptr noundef %0, ptr noundef nonnull %211, ptr noundef %219)
  %220 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %211, i32 0, i32 3
  %221 = load i8, ptr %220, align 1
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %248, label %223

223:                                              ; preds = %217
  %224 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 0
  %225 = load i8, ptr %224, align 1
  %226 = getelementptr %struct.mwifiex_sta_node, ptr %211, i32 0, i32 5, i32 0
  store i8 %225, ptr %226, align 1
  %227 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 1
  %228 = load i8, ptr %227, align 1
  %229 = getelementptr %struct.mwifiex_sta_node, ptr %211, i32 0, i32 5, i32 1
  store i8 %228, ptr %229, align 1
  %230 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 2
  %231 = load i8, ptr %230, align 1
  %232 = getelementptr %struct.mwifiex_sta_node, ptr %211, i32 0, i32 5, i32 2
  store i8 %231, ptr %232, align 1
  %233 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 3
  %234 = load i8, ptr %233, align 1
  %235 = getelementptr %struct.mwifiex_sta_node, ptr %211, i32 0, i32 5, i32 3
  store i8 %234, ptr %235, align 1
  %236 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 4
  %237 = load i8, ptr %236, align 1
  %238 = getelementptr %struct.mwifiex_sta_node, ptr %211, i32 0, i32 5, i32 4
  store i8 %237, ptr %238, align 1
  %239 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 5
  %240 = load i8, ptr %239, align 1
  %241 = getelementptr %struct.mwifiex_sta_node, ptr %211, i32 0, i32 5, i32 5
  store i8 %240, ptr %241, align 1
  %242 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 6
  %243 = load i8, ptr %242, align 1
  %244 = getelementptr %struct.mwifiex_sta_node, ptr %211, i32 0, i32 5, i32 6
  store i8 %243, ptr %244, align 1
  %245 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 85, i32 7
  %246 = load i8, ptr %245, align 1
  %247 = getelementptr %struct.mwifiex_sta_node, ptr %211, i32 0, i32 5, i32 7
  store i8 %246, ptr %247, align 1
  br label %250

248:                                              ; preds = %217
  %249 = getelementptr i8, ptr %211, i32 17
  store i64 -1, ptr %249, align 1
  br label %250

250:                                              ; preds = %248, %223
  %251 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %211, i32 0, i32 6
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(16) %251, i8 -1, i32 16, i1 false)
  br label %340

252:                                              ; preds = %1
  %253 = getelementptr %struct.mwifiex_adapter, ptr %3, i32 0, i32 112, i32 2
  %254 = load i32, ptr %253, align 4
  store i32 %254, ptr %2, align 4
  %255 = getelementptr %struct.mwifiex_adapter, ptr %3, i32 0, i32 112, i32 6
  %256 = load i16, ptr %255, align 2
  %257 = getelementptr inbounds i8, ptr %2, i32 4
  store i16 %256, ptr %257, align 4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.45, ptr noundef nonnull %2) #7
  %258 = call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef nonnull %2) #7
  %259 = icmp eq ptr %258, null
  br i1 %259, label %265, label %260

260:                                              ; preds = %252
  %261 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %258, i32 0, i32 3
  %262 = load i8, ptr %261, align 1
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @mwifiex_11n_del_rx_reorder_tbl_by_ta(ptr noundef %0, ptr noundef nonnull %2) #7
  call void @mwifiex_del_tx_ba_stream_tbl_by_ra(ptr noundef %0, ptr noundef nonnull %2) #7
  br label %265

265:                                              ; preds = %264, %260, %252
  call void @mwifiex_wmm_del_peer_ra_list(ptr noundef %0, ptr noundef nonnull %2) #7
  call void @mwifiex_del_sta_entry(ptr noundef %0, ptr noundef nonnull %2) #7
  br label %340

266:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.46) #7
  %267 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 112
  %268 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 207, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %267, i1 noundef zeroext false) #7
  br label %340

269:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.47) #7
  %270 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 112
  tail call void @mwifiex_11n_delete_ba_stream(ptr noundef %0, ptr noundef %270) #7
  br label %340

271:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.48) #7
  %272 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 112
  tail call void @mwifiex_11n_ba_stream_timeout(ptr noundef %0, ptr noundef %272) #7
  br label %340

273:                                              ; preds = %1
  %274 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 112
  %275 = load i16, ptr %274, align 1
  %276 = zext i16 %275 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.49, i32 noundef %276) #7
  %277 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 40
  %278 = load i16, ptr %277, align 4
  %279 = tail call i16 @llvm.umin.i16(i16 %278, i16 %275)
  %280 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 39
  store i16 %279, ptr %280, align 2
  %281 = zext i16 %279 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.50, i32 noundef %281) #7
  br label %340

282:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.51) #7
  br label %340

283:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.52) #7
  br label %340

284:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.53, i32 noundef 77) #7
  br label %340

285:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.54) #7
  %286 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103
  %287 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 129
  %288 = load i64, ptr %287, align 8
  %289 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 129, i32 1
  tail call void @cfg80211_remain_on_channel_expired(ptr noundef %286, i64 noundef %288, ptr noundef %289, i32 noundef 2592) #7
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(64) %287, i8 0, i32 64, i1 false)
  br label %340

290:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.55) #7
  %291 = load volatile i32, ptr @jiffies, align 64
  %292 = add i32 %291, 1000
  %293 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 134
  store i32 %292, ptr %293, align 4
  %294 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50
  %295 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 5
  %296 = load i32, ptr %295, align 8
  %297 = trunc i32 %296 to i8
  %298 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 132
  store i8 %297, ptr %298, align 2
  %299 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 36, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %294, i1 noundef zeroext false) #7
  br label %340

300:                                              ; preds = %1
  %301 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 51
  %302 = load ptr, ptr %301, align 4
  %303 = tail call fastcc i32 @mwifiex_parse_tdls_event(ptr noundef %0, ptr noundef %302)
  br label %340

304:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.56) #7
  %305 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 51
  %306 = load ptr, ptr %305, align 4
  tail call void @mwifiex_process_tx_pause_event(ptr noundef %0, ptr noundef %306)
  br label %340

307:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.57) #7
  %308 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 51
  %309 = load ptr, ptr %308, align 4
  tail call void @mwifiex_process_multi_chan_event(ptr noundef %0, ptr noundef %309)
  br label %340

310:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.58) #7
  %311 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 112
  tail call void @mwifiex_parse_tx_status_event(ptr noundef %0, ptr noundef %311) #7
  br label %340

312:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.59) #7
  %313 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 51
  %314 = load ptr, ptr %313, align 4
  %315 = tail call i32 @mwifiex_11h_handle_chanrpt_ready(ptr noundef %0, ptr noundef %314) #7
  br label %340

316:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.60) #7
  %317 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 51
  %318 = load ptr, ptr %317, align 4
  %319 = tail call i32 @mwifiex_11h_handle_radar_detected(ptr noundef %0, ptr noundef %318) #7
  br label %340

320:                                              ; preds = %1
  %321 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 170
  %322 = load i8, ptr %321, align 4, !range !8
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %340

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 51
  %326 = load ptr, ptr %325, align 4
  tail call void @mwifiex_bt_coex_wlan_param_update_event(ptr noundef %0, ptr noundef %326)
  br label %340

327:                                              ; preds = %1
  %328 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 112
  %329 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 51
  %330 = load ptr, ptr %329, align 4
  %331 = getelementptr inbounds %struct.sk_buff, ptr %330, i32 0, i32 5
  %332 = load i32, ptr %331, align 8
  %333 = trunc i32 %332 to i16
  %334 = add i16 %333, -4
  tail call void @mwifiex_11n_rxba_sync_event(ptr noundef %0, ptr noundef %328, i16 noundef zeroext %334) #7
  br label %340

335:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.61) #7
  %336 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 51
  %337 = load ptr, ptr %336, align 4
  tail call fastcc void @mwifiex_fw_dump_info_event(ptr noundef %0, ptr noundef %337)
  br label %340

338:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.62) #7
  br label %340

339:                                              ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.63, i32 noundef %5) #7
  br label %340

340:                                              ; preds = %339, %338, %335, %327, %324, %320, %316, %312, %310, %307, %304, %300, %290, %285, %284, %283, %282, %273, %271, %269, %266, %265, %250, %213, %205, %203, %202, %201, %200, %199, %198, %197, %196, %191, %190, %189, %184, %182, %176, %169, %161, %159, %158, %152, %150, %149, %140, %136, %132, %130, %129, %122, %116, %114, %111, %105, %58, %55, %48, %45, %38, %37, %30, %23, %22, %16, %6, %1, %1
  %341 = phi i32 [ 0, %114 ], [ 0, %111 ], [ 0, %339 ], [ 0, %338 ], [ 0, %335 ], [ 0, %327 ], [ 0, %320 ], [ 0, %324 ], [ %319, %316 ], [ %315, %312 ], [ 0, %310 ], [ 0, %307 ], [ 0, %304 ], [ %303, %300 ], [ %299, %290 ], [ 0, %285 ], [ 0, %284 ], [ 0, %283 ], [ 0, %282 ], [ 0, %273 ], [ 0, %271 ], [ 0, %269 ], [ 0, %266 ], [ 0, %265 ], [ 0, %250 ], [ 0, %213 ], [ 0, %205 ], [ %204, %203 ], [ 0, %202 ], [ 0, %201 ], [ 0, %200 ], [ 0, %199 ], [ 0, %198 ], [ 0, %197 ], [ 0, %196 ], [ 0, %191 ], [ 0, %190 ], [ 0, %189 ], [ 0, %184 ], [ %183, %182 ], [ 0, %169 ], [ %181, %176 ], [ 0, %161 ], [ 0, %159 ], [ 0, %158 ], [ 0, %152 ], [ %151, %150 ], [ 0, %149 ], [ 0, %140 ], [ 0, %1 ], [ 0, %1 ], [ 0, %136 ], [ 0, %132 ], [ %131, %130 ], [ 0, %129 ], [ 0, %122 ], [ 0, %105 ], [ 0, %116 ], [ 0, %58 ], [ 0, %55 ], [ 0, %48 ], [ 0, %37 ], [ 0, %45 ], [ 0, %38 ], [ 0, %22 ], [ 0, %30 ], [ 0, %23 ], [ 0, %16 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #7
  ret i32 %341
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wake_up_net_dev_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_check_ps_cond(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_check_last_packet_indication(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_null_packet(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_michael_mic_failure(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_stopped(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_handle_event_ext_scan_report(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_cqm_rssi_notify(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_add_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_check_ibss_peer_capabilities(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef 12) #7
  %5 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 262144
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void @print_hex_dump(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %8, i32 noundef %6, i1 noundef zeroext false) #7
  br label %15

15:                                               ; preds = %14, %3
  %16 = tail call ptr @skb_push(ptr noundef %2, i32 noundef 12) #7
  %17 = icmp ugt i32 %6, 5
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i16, ptr %8, align 2
  %20 = icmp eq i16 %19, 360
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %8, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = icmp ugt i16 %23, 1
  br i1 %24, label %25, label %67

25:                                               ; preds = %21
  %26 = zext i16 %23 to i32
  %27 = getelementptr i8, ptr %8, i32 18
  %28 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %1, i32 0, i32 4
  %29 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %1, i32 0, i32 7
  %30 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %1, i32 0, i32 3
  br label %33

31:                                               ; preds = %18, %15
  %32 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %32, i32 noundef 1, ptr noundef nonnull @.str.68) #7
  br label %67

33:                                               ; preds = %63, %25
  %34 = phi ptr [ %27, %25 ], [ %64, %63 ]
  %35 = phi i32 [ %26, %25 ], [ %65, %63 ]
  %36 = getelementptr inbounds %struct.ieee_types_header, ptr %34, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = add nuw nsw i32 %38, 2
  %40 = icmp ult i32 %35, %39
  br i1 %40, label %67, label %41

41:                                               ; preds = %33
  %42 = load i8, ptr %34, align 1
  switch i8 %42, label %63 [
    i8 45, label %43
    i8 -65, label %49
  ]

43:                                               ; preds = %41
  store i8 1, ptr %30, align 1
  %44 = getelementptr %struct.ieee_types_header, ptr %34, i32 2
  %45 = load i16, ptr %44, align 1
  %46 = and i16 %45, 2048
  %47 = icmp eq i16 %46, 0
  %48 = select i1 %47, i16 4096, i16 8192
  store i16 %48, ptr %29, align 2
  br label %58

49:                                               ; preds = %41
  store i8 1, ptr %28, align 8
  %50 = getelementptr %struct.ieee_types_header, ptr %34, i32 2
  %51 = load i32, ptr %50, align 1
  %52 = and i32 %51, 3
  switch i32 %52, label %53 [
    i32 2, label %55
    i32 1, label %56
    i32 0, label %57
  ]

53:                                               ; preds = %49
  %54 = load i16, ptr %29, align 2
  br label %58

55:                                               ; preds = %49
  store i16 12288, ptr %29, align 2
  br label %58

56:                                               ; preds = %49
  store i16 8192, ptr %29, align 2
  br label %58

57:                                               ; preds = %49
  store i16 4096, ptr %29, align 2
  br label %58

58:                                               ; preds = %57, %56, %55, %53, %43
  %59 = phi i16 [ %48, %43 ], [ %54, %53 ], [ 4096, %57 ], [ 8192, %56 ], [ 12288, %55 ]
  %60 = phi ptr [ @.str.69, %43 ], [ @.str.70, %53 ], [ @.str.70, %57 ], [ @.str.70, %56 ], [ @.str.70, %55 ]
  %61 = load ptr, ptr %0, align 8
  %62 = zext i16 %59 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %61, i32 noundef 1073741824, ptr noundef nonnull %60, i32 noundef %62) #7
  br label %63

63:                                               ; preds = %58, %41
  %64 = getelementptr i8, ptr %34, i32 %39
  %65 = sub i32 %35, %39
  %66 = icmp ugt i32 %65, 1
  br i1 %66, label %33, label %67

67:                                               ; preds = %63, %33, %31, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_del_rx_reorder_tbl_by_ta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_del_tx_ba_stream_tbl_by_ra(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wmm_del_peer_ra_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_del_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_delete_ba_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_ba_stream_timeout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_remain_on_channel_expired(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_parse_tdls_event(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = getelementptr i8, ptr %5, i32 6
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = icmp ult i32 %9, 6
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.71) #7
  br label %58

12:                                               ; preds = %2
  %13 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %7) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.72) #7
  br label %58

16:                                               ; preds = %12
  %17 = load i16, ptr %6, align 1
  switch i16 %17, label %58 [
    i16 3, label %18
    i16 7, label %23
    i16 8, label %52
    i16 9, label %54
  ]

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %5, i32 12
  %22 = load i16, ptr %21, align 1
  tail call void @cfg80211_tdls_oper_request(ptr noundef %20, ptr noundef %7, i32 noundef 2, i16 noundef zeroext %22, i32 noundef 3264) #7
  br label %58

23:                                               ; preds = %16
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.73) #7
  %24 = getelementptr i8, ptr %5, i32 12
  %25 = getelementptr i8, ptr %5, i32 13
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr i8, ptr %5, i32 14
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, ptr %24, align 1
  %32 = zext i8 %31 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.74, i32 noundef %27, i32 noundef %30, i32 noundef %32) #7
  %33 = load i8, ptr %25, align 1
  %34 = icmp eq i8 %33, 0
  %35 = load i8, ptr %24, align 1
  br i1 %34, label %41, label %36

36:                                               ; preds = %23
  switch i8 %35, label %58 [
    i8 0, label %37
    i8 1, label %39
  ]

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %13, i32 0, i32 8
  store i8 6, ptr %38, align 4
  br label %58

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %13, i32 0, i32 8
  store i8 7, ptr %40, align 4
  br label %58

41:                                               ; preds = %23
  switch i8 %35, label %58 [
    i8 0, label %42
    i8 1, label %47
  ]

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %13, i32 0, i32 8
  %44 = load i8, ptr %43, align 4
  %45 = icmp eq i8 %44, 6
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  tail call void @mwifiex_update_ralist_tx_pause_in_tdls_cs(ptr noundef %0, ptr noundef %7, i8 noundef zeroext 0) #7
  store i8 6, ptr %43, align 4
  br label %58

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %13, i32 0, i32 8
  %49 = load i8, ptr %48, align 4
  %50 = icmp eq i8 %49, 7
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  tail call void @mwifiex_update_ralist_tx_pause_in_tdls_cs(ptr noundef %0, ptr noundef %7, i8 noundef zeroext 1) #7
  store i8 7, ptr %48, align 4
  br label %58

52:                                               ; preds = %16
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.75) #7
  %53 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %13, i32 0, i32 8
  store i8 5, ptr %53, align 4
  br label %58

54:                                               ; preds = %16
  %55 = getelementptr i8, ptr %5, i32 12
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.76, i32 noundef %57) #7
  br label %58

58:                                               ; preds = %54, %52, %51, %47, %46, %42, %41, %39, %37, %36, %18, %16, %15, %11
  %59 = phi i32 [ -1, %11 ], [ -1, %15 ], [ 0, %36 ], [ 0, %39 ], [ 0, %37 ], [ 0, %16 ], [ 0, %46 ], [ 0, %51 ], [ 0, %42 ], [ 0, %47 ], [ 0, %41 ], [ 0, %54 ], [ 0, %52 ], [ 0, %18 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_parse_tx_status_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_11h_handle_chanrpt_ready(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_11h_handle_radar_detected(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_rxba_sync_event(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_fw_dump_info_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.77) #7
  br label %44

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 167
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = tail call noalias ptr @vzalloc(i32 noundef 2097152) #8
  store ptr %12, ptr %8, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.78) #7
  br label %44

15:                                               ; preds = %11
  tail call void @mwifiex_drv_info_dump(ptr noundef %3) #7
  %16 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 169
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = add i32 %17, 1000
  %19 = tail call i32 @mod_timer(ptr noundef %16, i32 noundef %18) #7
  br label %20

20:                                               ; preds = %15, %7
  %21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 168
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, %22
  %26 = icmp ugt i32 %25, 2097151
  br i1 %26, label %41, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr i8, ptr %28, i32 %22
  %30 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 51
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %29, ptr align 1 %33, i32 %24, i1 false)
  %34 = load i32, ptr %23, align 8
  %35 = load i32, ptr %21, align 4
  %36 = add i32 %35, %34
  store i32 %36, ptr %21, align 4
  %37 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 112, i32 4
  %38 = load i16, ptr %37, align 1
  %39 = icmp eq i16 %38, 2
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.79) #7
  br label %41

41:                                               ; preds = %40, %20
  %42 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 169
  %43 = tail call i32 @del_timer_sync(ptr noundef %42) #7
  tail call void @mwifiex_upload_device_dump(ptr noundef %3) #7
  br label %44

44:                                               ; preds = %41, %27, %14, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_tdls_link_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_update_ralist_tx_pause(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_tdls_oper_request(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_update_ralist_tx_pause_in_tdls_cs(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_drv_info_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_upload_device_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
