; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/wmm.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/wmm.c"
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.116 }
%union.anon.116 = type { ptr }
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
%struct.ieee_types_vendor_header = type { i8, i8, %struct.anon.145 }
%struct.anon.145 = type { [3 x i8], i8 }
%struct.ieee_types_wmm_ac_parameters = type { i8, i8, i16 }
%struct.mwifiex_802_11_security = type { i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.mwifiex_wep_key = type { i32, i32, i32, [16 x i8] }
%struct.host_cmd_ds_802_11_key_material = type { i16, %struct.mwifiex_ie_type_key_param_set }
%struct.mwifiex_ie_type_key_param_set = type { i16, i16, i16, i16, i16, [50 x i8] }
%struct.host_cmd_ds_802_11_key_material_v2 = type { i16, %struct.mwifiex_ie_type_key_param_set_v2 }
%struct.mwifiex_ie_type_key_param_set_v2 = type { i16, i16, [6 x i8], i8, i8, i16, %union.anon.146 }
%union.anon.146 = type { %struct.mwifiex_wapi_param }
%struct.mwifiex_wapi_param = type { [16 x i8], i16, [32 x i8] }
%struct.mwifiex_wmm_desc = type { [8 x %struct.mwifiex_tid_tbl], [8 x i32], [8 x i32], %struct.spinlock, [4 x %struct.mwifiex_wmm_ac_status], [4 x i8], i32, [4 x i8], [8 x i32], %struct.atomic_t, %struct.atomic_t }
%struct.mwifiex_tid_tbl = type { %struct.list_head }
%struct.mwifiex_wmm_ac_status = type { i8, i8, i8 }
%struct.mwifiex_tx_aggr = type { i8, i8, i8 }
%struct.mwifiex_add_ba_param = type { i32, i32, i32, i8, i8 }
%struct.mwifiex_vendor_spec_cfg_ie = type { i16, i16, [256 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mwifiex_chan_freq_power = type { i16, i32, i16, i8 }
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
%struct.mwifiex_ra_list_tbl = type { %struct.list_head, %struct.sk_buff_head, [6 x i8], i32, i16, i16, i8, i32, i8, i16, i8, i8 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
%struct.mwifiex_802_11d_domain_reg = type { [3 x i8], i8, [83 x %struct.ieee80211_country_ie_triplet] }
%struct.ieee80211_country_ie_triplet = type { %union.anon.142 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { i8, i8, i8 }
%struct.mwifiex_sleep_params = type { i16, i16, i16, i8, i8, i16 }
%struct.mwifiex_sleep_period = type { i16, i16 }
%struct.mwifiex_hs_config_param = type <{ i32, i8, i8 }>
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mwifiex_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_wait_queue = type { %struct.wait_queue_head, i32 }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.148 }
%union.anon.148 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ie_types_wmm_queue_status = type { %struct.mwifiex_ie_types_header, i8, i8, i16, i8, i8, i32 }
%struct.mwifiex_ie_types_wmm_param_set = type <{ %struct.mwifiex_ie_types_header, [1 x i8] }>
%struct.mwifiex_tx_param = type { i32 }
%struct.mwifiex_bss_prio_node = type { %struct.list_head, ptr }
%struct.mwifiex_tx_ba_stream_tbl = type { %struct.list_head, i32, [6 x i8], i32, i8 }

@__param_str_disable_tx_amsdu = internal constant [17 x i8] c"disable_tx_amsdu\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@disable_tx_amsdu = internal global i8 0, align 1
@__param_disable_tx_amsdu = internal constant %struct.kernel_param { ptr @__param_str_disable_tx_amsdu, ptr @__this_module, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.116 { ptr @disable_tx_amsdu } }, section "__param", align 4
@__UNIQUE_ID_disable_tx_amsdutype459 = internal constant [31 x i8] c"parmtype=disable_tx_amsdu:bool\00", section ".modinfo", align 1
@tos_to_tid_inv = dso_local local_unnamed_addr constant [8 x i8] c"\02\00\01\03\04\05\06\07", align 1
@.str = private unnamed_addr constant [26 x i8] c"info: created ra_list %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"data: ralist %p: is_11n_enabled=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"info: WMM Parameter IE: version=%d,\09qos_info Parameter Set Count=%d, Reserved=%#x\0A\00", align 1
@wmm_aci_to_qidx_map = internal unnamed_addr constant [4 x i8] c"\01\00\02\03", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"info: WMM: CWmax=%d CWmin=%d Avg Back-off=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"info: WMM: AC Priorities:\09BK(0), BE(1), VI(2), VO(3)\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"info: WMM: AC PRIO %d maps to %d\0A\00", align 1
@ac_to_tid = internal unnamed_addr constant [4 x [2 x i8]] [[2 x i8] c"\01\02", [2 x i8] c"\00\03", [2 x i8] c"\04\05", [2 x i8] c"\06\07"], align 1
@tos_to_tid = internal unnamed_addr global [8 x i8] c"\01\02\00\03\04\05\06\07", align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"TDLS setup packet for %pM.\09Don't block\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"data: drop packet in disconnect\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"info: WMM: WMM_GET_STATUS cmdresp received: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"info: CMD_RESP: WMM_GET_STATUS:\09QSTATUS TLV: %d, %d, %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"info: CMD_RESP: WMM_GET_STATUS:\09WMM Parameter Set Count: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"info: WMM: process assoc req: bss->wmm_ie=%#x\0A\00", align 1
@wmm_info_ie = internal unnamed_addr constant [9 x i8] c"\DD\07\00P\F2\02\00\01\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"data: WMM: Pkt Delay: %d ms,\09%d ms sent to FW\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"info: allocated ra_list %p\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@mwifiex_wmm_convert_tos_to_ac.tos_to_ac = internal unnamed_addr constant [8 x i8] c"\01\00\00\01\02\02\03\03", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"info: ra_list: freeing buf for tid %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"\014mwifiex: Have pending ack frames!\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"data: tid=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"data: -EBUSY is returned\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"host_to_card failed: %#x\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"data: nothing to send\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"data: dequeuing the packet %p %p\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_disable_tx_amsdutype459, ptr @__param_disable_tx_amsdu], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_ralist_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 24
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 22
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 80
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 125
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77
  br label %11

11:                                               ; preds = %110, %2
  %12 = phi i32 [ 0, %2 ], [ %114, %110 ]
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 2848, i32 noundef 56) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str, ptr noundef null) #13
  br label %116

17:                                               ; preds = %11
  store volatile ptr %14, ptr %14, align 8
  %18 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %14, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 1
  %20 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 1, i32 2
  store i32 0, ptr %20, align 4
  store ptr %19, ptr %19, align 8
  %21 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 1, i32 1
  store i32 0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %23, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #13
  %24 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 9
  store i16 0, ptr %24, align 2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.13, ptr noundef nonnull %14) #13
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str, ptr noundef nonnull %14) #13
  %25 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 3
  store i32 0, ptr %25, align 8
  %26 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 10
  store i8 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 7
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 8
  store i8 0, ptr %28, align 8
  %29 = load i32, ptr %4, align 8
  switch i32 %29, label %61 [
    i32 2, label %30
    i32 8, label %30
  ]

30:                                               ; preds = %17, %17
  %31 = load i8, ptr %5, align 1
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %30
  %35 = tail call i32 @mwifiex_get_tdls_link_status(ptr noundef %0, ptr noundef %1) #13
  %36 = trunc i32 %35 to i8
  switch i8 %36, label %46 [
    i8 2, label %37
    i8 5, label %37
    i8 6, label %37
    i8 7, label %37
  ]

37:                                               ; preds = %34, %34, %34, %34
  store i8 1, ptr %26, align 4
  %38 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %1) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %38, i32 0, i32 3
  %42 = load i8, ptr %41, align 1
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i8 [ %42, %40 ], [ 0, %37 ]
  %45 = zext i8 %44 to i32
  store i32 %45, ptr %25, align 8
  br label %95

46:                                               ; preds = %34
  %47 = load ptr, ptr %0, align 8
  %48 = getelementptr inbounds %struct.mwifiex_adapter, ptr %47, i32 0, i32 84
  %49 = load i8, ptr %48, align 2
  %50 = and i8 %49, 24
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %6, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i8, ptr %7, align 4
  %57 = icmp eq i8 %56, 0
  br label %58

58:                                               ; preds = %55, %52, %46
  %59 = phi i1 [ false, %52 ], [ %57, %55 ], [ false, %46 ]
  %60 = zext i1 %59 to i32
  store i32 %60, ptr %25, align 8
  br label %95

61:                                               ; preds = %30, %17
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #13
  %62 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %1) #13
  %63 = icmp eq ptr %62, null
  br i1 %63, label %83, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %62, i32 0, i32 12
  %66 = load i8, ptr %65, align 8
  %67 = icmp ne i8 %66, 0
  %68 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 11
  %69 = zext i1 %67 to i8
  store i8 %69, ptr %68, align 1
  %70 = load i8, ptr %5, align 1
  %71 = icmp eq i8 %70, 1
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i8, ptr %9, align 2
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %72, %64
  %76 = load i32, ptr %4, align 8
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load ptr, ptr %0, align 8
  %80 = getelementptr inbounds %struct.mwifiex_adapter, ptr %79, i32 0, i32 116
  %81 = load i8, ptr %80, align 2
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %72, %61
  store i32 0, ptr %25, align 8
  br label %93

84:                                               ; preds = %78, %75
  %85 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %62, i32 0, i32 3
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  store i32 %87, ptr %25, align 8
  %88 = icmp eq i8 %86, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %62, i32 0, i32 7
  %91 = load i16, ptr %90, align 2
  %92 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 4
  store i16 %91, ptr %92, align 4
  br label %93

93:                                               ; preds = %89, %84, %83
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #13
  %94 = load i32, ptr %25, align 8
  br label %95

95:                                               ; preds = %93, %58, %43
  %96 = phi i32 [ %45, %43 ], [ %60, %58 ], [ %94, %93 ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 8, ptr noundef nonnull @.str.1, ptr noundef nonnull %14, i32 noundef %96) #13
  %97 = load i32, ptr %25, align 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 5
  store i16 0, ptr %100, align 2
  %101 = tail call i64 @ktime_get() #13
  %102 = lshr i64 %101, 32
  %103 = lshr i64 %101, 16
  %104 = add i64 %103, %101
  %105 = add i64 %104, %102
  %106 = trunc i64 %105 to i8
  %107 = and i8 %106, 15
  %108 = or i8 %107, 16
  %109 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 6
  store i8 %108, ptr %109, align 8
  br label %110

110:                                              ; preds = %99, %95
  %111 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %10, i32 0, i32 %12
  %112 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  store ptr %14, ptr %112, align 4
  store ptr %111, ptr %14, align 8
  store ptr %113, ptr %18, align 4
  store volatile ptr %14, ptr %113, align 4
  %114 = add nuw nsw i32 %12, 1
  %115 = icmp eq i32 %114, 8
  br i1 %115, label %116, label %11

116:                                              ; preds = %110, %16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_tdls_link_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_wmm_setup_queue_priorities(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 74
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5, %2
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7
  store i8 3, ptr %10, align 4
  %11 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 1
  store i8 2, ptr %11, align 1
  %12 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 2
  store i8 1, ptr %12, align 2
  %13 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 3
  store i8 0, ptr %13, align 1
  br label %251

14:                                               ; preds = %5
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.ieee_types_wmm_parameter, ptr %1, i32 0, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.ieee_types_wmm_parameter, ptr %1, i32 0, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 15
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.ieee_types_wmm_parameter, ptr %1, i32 0, i32 4
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %15, i32 noundef 1073741824, ptr noundef nonnull @.str.2, i32 noundef %18, i32 noundef %22, i32 noundef %25) #13
  %26 = getelementptr %struct.ieee_types_wmm_parameter, ptr %1, i32 0, i32 5, i32 0
  %27 = getelementptr %struct.ieee_types_wmm_parameter, ptr %1, i32 0, i32 5, i32 0, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = load i8, ptr %26, align 1
  %30 = zext i8 %28 to i32
  %31 = and i32 %30, 15
  %32 = shl nsw i32 -1, %31
  %33 = xor i32 %32, -1
  %34 = lshr i32 %33, 1
  %35 = zext i8 %29 to i32
  %36 = and i32 %35, 15
  %37 = add nuw nsw i32 %34, %36
  %38 = trunc i32 %37 to i16
  %39 = lshr i32 %35, 5
  %40 = and i32 %39, 3
  %41 = getelementptr [4 x i8], ptr @wmm_aci_to_qidx_map, i32 0, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 %43
  store i8 %42, ptr %44, align 1
  %45 = getelementptr [4 x i16], ptr %3, i32 0, i32 %43
  store i16 %38, ptr %45, align 2
  %46 = load ptr, ptr %0, align 8
  %47 = lshr i32 %30, 4
  %48 = shl nsw i32 -1, %47
  %49 = xor i32 %48, -1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %46, i32 noundef 1073741824, ptr noundef nonnull @.str.3, i32 noundef %49, i32 noundef %33, i32 noundef %37) #13
  %50 = getelementptr %struct.ieee_types_wmm_parameter, ptr %1, i32 0, i32 5, i32 1
  %51 = getelementptr %struct.ieee_types_wmm_parameter, ptr %1, i32 0, i32 5, i32 1, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = load i8, ptr %50, align 1
  %54 = zext i8 %52 to i32
  %55 = and i32 %54, 15
  %56 = shl nsw i32 -1, %55
  %57 = xor i32 %56, -1
  %58 = lshr i32 %57, 1
  %59 = zext i8 %53 to i32
  %60 = and i32 %59, 15
  %61 = add nuw nsw i32 %58, %60
  %62 = trunc i32 %61 to i16
  %63 = lshr i32 %59, 5
  %64 = and i32 %63, 3
  %65 = getelementptr [4 x i8], ptr @wmm_aci_to_qidx_map, i32 0, i32 %64
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 %67
  store i8 %66, ptr %68, align 1
  %69 = getelementptr [4 x i16], ptr %3, i32 0, i32 %67
  store i16 %62, ptr %69, align 2
  %70 = load ptr, ptr %0, align 8
  %71 = lshr i32 %54, 4
  %72 = shl nsw i32 -1, %71
  %73 = xor i32 %72, -1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %70, i32 noundef 1073741824, ptr noundef nonnull @.str.3, i32 noundef %73, i32 noundef %57, i32 noundef %61) #13
  %74 = getelementptr %struct.ieee_types_wmm_parameter, ptr %1, i32 0, i32 5, i32 2
  %75 = getelementptr %struct.ieee_types_wmm_parameter, ptr %1, i32 0, i32 5, i32 2, i32 1
  %76 = load i8, ptr %75, align 1
  %77 = load i8, ptr %74, align 1
  %78 = zext i8 %76 to i32
  %79 = and i32 %78, 15
  %80 = shl nsw i32 -1, %79
  %81 = xor i32 %80, -1
  %82 = lshr i32 %81, 1
  %83 = zext i8 %77 to i32
  %84 = and i32 %83, 15
  %85 = add nuw nsw i32 %82, %84
  %86 = trunc i32 %85 to i16
  %87 = lshr i32 %83, 5
  %88 = and i32 %87, 3
  %89 = getelementptr [4 x i8], ptr @wmm_aci_to_qidx_map, i32 0, i32 %88
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 %91
  store i8 %90, ptr %92, align 1
  %93 = getelementptr [4 x i16], ptr %3, i32 0, i32 %91
  store i16 %86, ptr %93, align 2
  %94 = load ptr, ptr %0, align 8
  %95 = lshr i32 %78, 4
  %96 = shl nsw i32 -1, %95
  %97 = xor i32 %96, -1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %94, i32 noundef 1073741824, ptr noundef nonnull @.str.3, i32 noundef %97, i32 noundef %81, i32 noundef %85) #13
  %98 = getelementptr %struct.ieee_types_wmm_parameter, ptr %1, i32 0, i32 5, i32 3
  %99 = getelementptr %struct.ieee_types_wmm_parameter, ptr %1, i32 0, i32 5, i32 3, i32 1
  %100 = load i8, ptr %99, align 1
  %101 = load i8, ptr %98, align 1
  %102 = zext i8 %100 to i32
  %103 = and i32 %102, 15
  %104 = shl nsw i32 -1, %103
  %105 = xor i32 %104, -1
  %106 = lshr i32 %105, 1
  %107 = zext i8 %101 to i32
  %108 = and i32 %107, 15
  %109 = add nuw nsw i32 %106, %108
  %110 = trunc i32 %109 to i16
  %111 = lshr i32 %107, 5
  %112 = and i32 %111, 3
  %113 = getelementptr [4 x i8], ptr @wmm_aci_to_qidx_map, i32 0, i32 %112
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 %115
  store i8 %114, ptr %116, align 1
  %117 = getelementptr [4 x i16], ptr %3, i32 0, i32 %115
  store i16 %110, ptr %117, align 2
  %118 = load ptr, ptr %0, align 8
  %119 = lshr i32 %102, 4
  %120 = shl nsw i32 -1, %119
  %121 = xor i32 %120, -1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %118, i32 noundef 1073741824, ptr noundef nonnull @.str.3, i32 noundef %121, i32 noundef %105, i32 noundef %109) #13
  %122 = load i16, ptr %3, align 8
  br label %123

123:                                              ; preds = %145, %14
  %124 = phi i16 [ %146, %145 ], [ %122, %14 ]
  %125 = phi i32 [ %147, %145 ], [ 1, %14 ]
  %126 = add nsw i32 %125, -1
  %127 = getelementptr [4 x i16], ptr %3, i32 0, i32 %125
  %128 = load i16, ptr %127, align 2
  %129 = icmp ugt i16 %124, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = getelementptr [4 x i16], ptr %3, i32 0, i32 %126
  store i16 %128, ptr %131, align 2
  store i16 %124, ptr %127, align 2
  %132 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 %126
  %133 = load i8, ptr %132, align 1
  %134 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 %125
  %135 = load i8, ptr %134, align 1
  store i8 %135, ptr %132, align 1
  store i8 %133, ptr %134, align 1
  br label %145

136:                                              ; preds = %123
  %137 = icmp eq i16 %124, %128
  br i1 %137, label %138, label %145

138:                                              ; preds = %136
  %139 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 %126
  %140 = load i8, ptr %139, align 1
  %141 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 %125
  %142 = load i8, ptr %141, align 1
  %143 = icmp ult i8 %140, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i8 %142, ptr %139, align 1
  store i8 %140, ptr %141, align 1
  br label %145

145:                                              ; preds = %144, %138, %136, %130
  %146 = phi i16 [ %124, %130 ], [ %124, %138 ], [ %124, %144 ], [ %128, %136 ]
  %147 = add nuw nsw i32 %125, 1
  %148 = icmp eq i32 %147, 4
  br i1 %148, label %149, label %123

149:                                              ; preds = %145
  %150 = load i16, ptr %3, align 8
  br label %151

151:                                              ; preds = %173, %149
  %152 = phi i16 [ %174, %173 ], [ %150, %149 ]
  %153 = phi i32 [ %175, %173 ], [ 1, %149 ]
  %154 = add nsw i32 %153, -1
  %155 = getelementptr [4 x i16], ptr %3, i32 0, i32 %153
  %156 = load i16, ptr %155, align 2
  %157 = icmp ugt i16 %152, %156
  br i1 %157, label %167, label %158

158:                                              ; preds = %151
  %159 = icmp eq i16 %152, %156
  br i1 %159, label %160, label %173

160:                                              ; preds = %158
  %161 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 %154
  %162 = load i8, ptr %161, align 1
  %163 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 %153
  %164 = load i8, ptr %163, align 1
  %165 = icmp ult i8 %162, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %160
  store i8 %164, ptr %161, align 1
  store i8 %162, ptr %163, align 1
  br label %173

167:                                              ; preds = %151
  %168 = getelementptr [4 x i16], ptr %3, i32 0, i32 %154
  store i16 %156, ptr %168, align 2
  store i16 %152, ptr %155, align 2
  %169 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 %154
  %170 = load i8, ptr %169, align 1
  %171 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 %153
  %172 = load i8, ptr %171, align 1
  store i8 %172, ptr %169, align 1
  store i8 %170, ptr %171, align 1
  br label %173

173:                                              ; preds = %167, %166, %160, %158
  %174 = phi i16 [ %152, %167 ], [ %152, %160 ], [ %152, %166 ], [ %156, %158 ]
  %175 = add nuw nsw i32 %153, 1
  %176 = icmp eq i32 %175, 3
  br i1 %176, label %177, label %151

177:                                              ; preds = %173
  %178 = load i16, ptr %3, align 8
  br label %179

179:                                              ; preds = %201, %177
  %180 = phi i16 [ %202, %201 ], [ %178, %177 ]
  %181 = phi i32 [ %203, %201 ], [ 1, %177 ]
  %182 = add nsw i32 %181, -1
  %183 = getelementptr [4 x i16], ptr %3, i32 0, i32 %181
  %184 = load i16, ptr %183, align 2
  %185 = icmp ugt i16 %180, %184
  br i1 %185, label %195, label %186

186:                                              ; preds = %179
  %187 = icmp eq i16 %180, %184
  br i1 %187, label %188, label %201

188:                                              ; preds = %186
  %189 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 %182
  %190 = load i8, ptr %189, align 1
  %191 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 %181
  %192 = load i8, ptr %191, align 1
  %193 = icmp ult i8 %190, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %188
  store i8 %192, ptr %189, align 1
  store i8 %190, ptr %191, align 1
  br label %201

195:                                              ; preds = %179
  %196 = getelementptr [4 x i16], ptr %3, i32 0, i32 %182
  store i16 %184, ptr %196, align 2
  store i16 %180, ptr %183, align 2
  %197 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 %182
  %198 = load i8, ptr %197, align 1
  %199 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 %181
  %200 = load i8, ptr %199, align 1
  store i8 %200, ptr %197, align 1
  store i8 %198, ptr %199, align 1
  br label %201

201:                                              ; preds = %195, %194, %188, %186
  %202 = phi i16 [ %180, %195 ], [ %180, %188 ], [ %180, %194 ], [ %184, %186 ]
  %203 = add nuw nsw i32 %181, 1
  %204 = icmp eq i32 %203, 2
  br i1 %204, label %205, label %179

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7
  %207 = load i8, ptr %206, align 1
  %208 = zext i8 %207 to i32
  %209 = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %208, i32 1
  %210 = load i8, ptr %209, align 1
  store i8 %210, ptr getelementptr inbounds ([8 x i8], ptr @tos_to_tid, i32 0, i32 7), align 1
  %211 = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %208
  %212 = load i8, ptr %211, align 1
  store i8 %212, ptr getelementptr inbounds ([8 x i8], ptr @tos_to_tid, i32 0, i32 6), align 2
  %213 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 1
  %214 = load i8, ptr %213, align 1
  %215 = zext i8 %214 to i32
  %216 = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %215, i32 1
  %217 = load i8, ptr %216, align 1
  store i8 %217, ptr getelementptr inbounds ([8 x i8], ptr @tos_to_tid, i32 0, i32 5), align 1
  %218 = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %215
  %219 = load i8, ptr %218, align 1
  store i8 %219, ptr getelementptr inbounds ([8 x i8], ptr @tos_to_tid, i32 0, i32 4), align 4
  %220 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 2
  %221 = load i8, ptr %220, align 1
  %222 = zext i8 %221 to i32
  %223 = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %222, i32 1
  %224 = load i8, ptr %223, align 1
  store i8 %224, ptr getelementptr inbounds ([8 x i8], ptr @tos_to_tid, i32 0, i32 3), align 1
  %225 = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %222
  %226 = load i8, ptr %225, align 1
  store i8 %226, ptr getelementptr inbounds ([8 x i8], ptr @tos_to_tid, i32 0, i32 2), align 2
  %227 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 7, i32 3
  %228 = load i8, ptr %227, align 1
  %229 = zext i8 %228 to i32
  %230 = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %229, i32 1
  %231 = load i8, ptr %230, align 1
  store i8 %231, ptr getelementptr inbounds ([8 x i8], ptr @tos_to_tid, i32 0, i32 1), align 1
  %232 = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %229
  %233 = load i8, ptr %232, align 1
  store i8 %233, ptr @tos_to_tid, align 8
  %234 = zext i8 %233 to i32
  %235 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 88, i32 %234
  store i8 0, ptr %235, align 1
  %236 = zext i8 %231 to i32
  %237 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 88, i32 %236
  store i8 1, ptr %237, align 1
  %238 = zext i8 %226 to i32
  %239 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 88, i32 %238
  store i8 2, ptr %239, align 1
  %240 = zext i8 %224 to i32
  %241 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 88, i32 %240
  store i8 3, ptr %241, align 1
  %242 = zext i8 %219 to i32
  %243 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 88, i32 %242
  store i8 4, ptr %243, align 1
  %244 = zext i8 %217 to i32
  %245 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 88, i32 %244
  store i8 5, ptr %245, align 1
  %246 = zext i8 %212 to i32
  %247 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 88, i32 %246
  store i8 6, ptr %247, align 1
  %248 = zext i8 %210 to i32
  %249 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 88, i32 %248
  store i8 7, ptr %249, align 1
  %250 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 10
  store volatile i32 7, ptr %250, align 4
  br label %251

251:                                              ; preds = %205, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_wmm_setup_ac_downgrade(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1073741824, ptr noundef nonnull @.str.4) #13
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 74
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 5, i32 0
  store i8 0, ptr %6, align 1
  br i1 %5, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 5, i32 1
  store i8 1, ptr %8, align 1
  %9 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 5, i32 2
  store i8 2, ptr %9, align 1
  %10 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 5, i32 3
  store i8 3, ptr %10, align 1
  br label %61

11:                                               ; preds = %1
  %12 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 1073741824, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0) #13
  %13 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 4, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 5, i32 1
  store i8 %16, ptr %17, align 1
  %18 = load ptr, ptr %0, align 8
  %19 = zext i1 %15 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %18, i32 noundef 1073741824, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef %19) #13
  %20 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 4, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %11
  %24 = load i8, ptr %13, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 4, i32 1, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  %30 = zext i1 %29 to i8
  br label %31

31:                                               ; preds = %26, %23, %11
  %32 = phi i8 [ 2, %11 ], [ 0, %23 ], [ %30, %26 ]
  %33 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 5, i32 2
  store i8 %32, ptr %33, align 1
  %34 = load ptr, ptr %0, align 8
  %35 = zext i8 %32 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %34, i32 noundef 1073741824, ptr noundef nonnull @.str.5, i32 noundef 2, i32 noundef %35) #13
  %36 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 4, i32 3
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %31
  %40 = load i8, ptr %13, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 4, i32 1, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  %46 = zext i1 %45 to i8
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i8 [ 0, %39 ], [ %46, %42 ]
  %49 = load i8, ptr %20, align 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 4, i32 2, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 0
  %55 = select i1 %54, i8 2, i8 %48
  br label %56

56:                                               ; preds = %51, %47, %31
  %57 = phi i8 [ 3, %31 ], [ %48, %47 ], [ %55, %51 ]
  %58 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 5, i32 3
  store i8 %57, ptr %58, align 1
  %59 = load ptr, ptr %0, align 8
  %60 = zext i8 %57 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %59, i32 noundef 1073741824, ptr noundef nonnull @.str.5, i32 noundef 3, i32 noundef %60) #13
  br label %61

61:                                               ; preds = %56, %7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mwifiex_wmm_downgrade_tid(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp ugt i32 %1, 7
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr [8 x i8], ptr @mwifiex_wmm_convert_tos_to_ac.tos_to_ac, i32 0, i32 %1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %7, %4 ], [ 1, %2 ]
  %10 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 5, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %1, 1
  %14 = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %12, i32 %13
  %15 = load i8, ptr %14, align 1
  ret i8 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_wmm_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %143, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 39
  br label %7

7:                                                ; preds = %138, %5
  %8 = phi i8 [ %3, %5 ], [ %139, %138 ]
  %9 = phi i32 [ 0, %5 ], [ %140, %138 ]
  %10 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %138, label %13

13:                                               ; preds = %7
  %14 = load i8, ptr @disable_tx_amsdu, align 1, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i16, ptr %6, align 2
  %18 = icmp ugt i16 %17, 2048
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 88, i32 0
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 0, i32 2
  store i8 %21, ptr %22, align 1
  br label %27

23:                                               ; preds = %16, %13
  %24 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 0, i32 2
  store i8 -1, ptr %24, align 1
  %25 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 88, i32 0
  %26 = load i8, ptr %25, align 1
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i8 [ %26, %23 ], [ %21, %19 ]
  %29 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 0
  %30 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 0, i32 1
  store i8 %28, ptr %30, align 1
  store i8 %28, ptr %29, align 1
  %31 = load i8, ptr @disable_tx_amsdu, align 1, !range !9
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i16, ptr %6, align 2
  %35 = icmp ugt i16 %34, 2048
  br i1 %35, label %40, label %36

36:                                               ; preds = %33, %27
  %37 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 1, i32 2
  store i8 -1, ptr %37, align 1
  %38 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 88, i32 1
  %39 = load i8, ptr %38, align 1
  br label %44

40:                                               ; preds = %33
  %41 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 88, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 1, i32 2
  store i8 %42, ptr %43, align 1
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i8 [ %42, %40 ], [ %39, %36 ]
  %46 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 1
  %47 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 1, i32 1
  store i8 %45, ptr %47, align 1
  store i8 %45, ptr %46, align 1
  %48 = load i8, ptr @disable_tx_amsdu, align 1, !range !9
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i16, ptr %6, align 2
  %52 = icmp ugt i16 %51, 2048
  br i1 %52, label %57, label %53

53:                                               ; preds = %50, %44
  %54 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 2, i32 2
  store i8 -1, ptr %54, align 1
  %55 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 88, i32 2
  %56 = load i8, ptr %55, align 1
  br label %61

57:                                               ; preds = %50
  %58 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 88, i32 2
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 2, i32 2
  store i8 %59, ptr %60, align 1
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i8 [ %59, %57 ], [ %56, %53 ]
  %63 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 2
  %64 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 2, i32 1
  store i8 %62, ptr %64, align 1
  store i8 %62, ptr %63, align 1
  %65 = load i8, ptr @disable_tx_amsdu, align 1, !range !9
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i16, ptr %6, align 2
  %69 = icmp ugt i16 %68, 2048
  br i1 %69, label %74, label %70

70:                                               ; preds = %67, %61
  %71 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 3, i32 2
  store i8 -1, ptr %71, align 1
  %72 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 88, i32 3
  %73 = load i8, ptr %72, align 1
  br label %78

74:                                               ; preds = %67
  %75 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 88, i32 3
  %76 = load i8, ptr %75, align 1
  %77 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 3, i32 2
  store i8 %76, ptr %77, align 1
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i8 [ %76, %74 ], [ %73, %70 ]
  %80 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 3
  %81 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 3, i32 1
  store i8 %79, ptr %81, align 1
  store i8 %79, ptr %80, align 1
  %82 = load i8, ptr @disable_tx_amsdu, align 1, !range !9
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i16, ptr %6, align 2
  %86 = icmp ugt i16 %85, 2048
  br i1 %86, label %91, label %87

87:                                               ; preds = %84, %78
  %88 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 4, i32 2
  store i8 -1, ptr %88, align 1
  %89 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 88, i32 4
  %90 = load i8, ptr %89, align 1
  br label %95

91:                                               ; preds = %84
  %92 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 88, i32 4
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 4, i32 2
  store i8 %93, ptr %94, align 1
  br label %95

95:                                               ; preds = %91, %87
  %96 = phi i8 [ %93, %91 ], [ %90, %87 ]
  %97 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 4
  %98 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 4, i32 1
  store i8 %96, ptr %98, align 1
  store i8 %96, ptr %97, align 1
  %99 = load i8, ptr @disable_tx_amsdu, align 1, !range !9
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i16, ptr %6, align 2
  %103 = icmp ugt i16 %102, 2048
  br i1 %103, label %108, label %104

104:                                              ; preds = %101, %95
  %105 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 5, i32 2
  store i8 -1, ptr %105, align 1
  %106 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 88, i32 5
  %107 = load i8, ptr %106, align 1
  br label %112

108:                                              ; preds = %101
  %109 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 88, i32 5
  %110 = load i8, ptr %109, align 1
  %111 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 5, i32 2
  store i8 %110, ptr %111, align 1
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i8 [ %110, %108 ], [ %107, %104 ]
  %114 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 5
  %115 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 5, i32 1
  store i8 %113, ptr %115, align 1
  store i8 %113, ptr %114, align 1
  %116 = load i8, ptr @disable_tx_amsdu, align 1, !range !9
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i16, ptr %6, align 2
  %120 = icmp ugt i16 %119, 2048
  br i1 %120, label %125, label %121

121:                                              ; preds = %118, %112
  %122 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 6, i32 2
  store i8 -1, ptr %122, align 1
  %123 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 88, i32 6
  %124 = load i8, ptr %123, align 1
  br label %129

125:                                              ; preds = %118
  %126 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 88, i32 6
  %127 = load i8, ptr %126, align 1
  %128 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 6, i32 2
  store i8 %127, ptr %128, align 1
  br label %129

129:                                              ; preds = %125, %121
  %130 = phi i8 [ %127, %125 ], [ %124, %121 ]
  %131 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 6
  %132 = getelementptr %struct.mwifiex_private, ptr %11, i32 0, i32 85, i32 6, i32 1
  store i8 %130, ptr %132, align 1
  store i8 %130, ptr %131, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(6) %131, i8 -1, i64 6, i1 false)
  tail call void @mwifiex_set_ba_params(ptr noundef nonnull %11) #13
  %133 = getelementptr inbounds %struct.mwifiex_private, ptr %11, i32 0, i32 87
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %133, i8 -1, i32 16, i1 false) #13
  %134 = getelementptr inbounds %struct.mwifiex_private, ptr %11, i32 0, i32 77, i32 6
  store i32 510, ptr %134, align 4
  %135 = getelementptr inbounds %struct.mwifiex_private, ptr %11, i32 0, i32 77, i32 9
  store volatile i32 0, ptr %135, align 4
  %136 = getelementptr inbounds %struct.mwifiex_private, ptr %11, i32 0, i32 77, i32 10
  store volatile i32 7, ptr %136, align 4
  %137 = load i8, ptr %2, align 4
  br label %138

138:                                              ; preds = %129, %7
  %139 = phi i8 [ %8, %7 ], [ %137, %129 ]
  %140 = add nuw nsw i32 %9, 1
  %141 = zext i8 %139 to i32
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %7, label %143

143:                                              ; preds = %138, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_ba_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_bypass_txlist_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 18, i32 27
  br label %7

7:                                                ; preds = %21, %5
  %8 = phi i32 [ 0, %5 ], [ %22, %21 ]
  %9 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call zeroext i1 %13(ptr noundef nonnull %10) #13
  br i1 %16, label %17, label %21

17:                                               ; preds = %15, %12
  %18 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 160
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %21, label %26

21:                                               ; preds = %17, %15, %7
  %22 = add nuw nsw i32 %8, 1
  %23 = load i8, ptr %2, align 4
  %24 = zext i8 %23 to i32
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %7, label %26

26:                                               ; preds = %21, %17, %1
  %27 = phi i32 [ 1, %1 ], [ 1, %21 ], [ 0, %17 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_wmm_lists_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 18, i32 27
  br label %7

7:                                                ; preds = %29, %5
  %8 = phi i32 [ 0, %5 ], [ %30, %29 ]
  %9 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 9
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 18
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %16, %12
  %21 = load ptr, ptr %6, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call zeroext i1 %21(ptr noundef nonnull %10) #13
  br i1 %24, label %25, label %29

25:                                               ; preds = %23, %20
  %26 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 77, i32 9
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %23, %16, %7
  %30 = add nuw nsw i32 %8, 1
  %31 = load i8, ptr %2, align 4
  %32 = zext i8 %31 to i32
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %7, label %34

34:                                               ; preds = %29, %25, %1
  %35 = phi i32 [ 1, %1 ], [ 1, %29 ], [ 0, %25 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_clean_txrx(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mwifiex_11n_cleanup_reorder_tbl(ptr noundef %0) #13
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #13
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77
  br label %4

4:                                                ; preds = %23, %1
  %5 = phi i32 [ 0, %1 ], [ %24, %23 ]
  %6 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %3, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %23, label %9

9:                                                ; preds = %20, %4
  %10 = phi ptr [ %21, %20 ], [ %7, %4 ]
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %20, label %15

15:                                               ; preds = %15, %9
  %16 = phi ptr [ %17, %15 ], [ %13, %9 ]
  %17 = load ptr, ptr %16, align 8
  tail call void @skb_unlink(ptr noundef %16, ptr noundef %12) #13
  %18 = tail call i32 @mwifiex_write_data_complete(ptr noundef %11, ptr noundef %16, i32 noundef 0, i32 noundef -1) #13
  %19 = icmp eq ptr %17, %12
  br i1 %19, label %20, label %15

20:                                               ; preds = %15, %9
  %21 = load ptr, ptr %10, align 4
  %22 = icmp eq ptr %21, %6
  br i1 %22, label %23, label %9

23:                                               ; preds = %20, %4
  %24 = add nuw nsw i32 %5, 1
  %25 = icmp eq i32 %24, 8
  br i1 %25, label %26, label %4

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 9
  store volatile i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 10
  store volatile i32 7, ptr %28, align 4
  tail call void @mwifiex_11n_delete_all_tx_ba_stream_tbl(ptr noundef %0) #13
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 18, i32 14
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  tail call void %31(ptr noundef %29) #13
  br label %34

34:                                               ; preds = %33, %26
  br label %35

35:                                               ; preds = %48, %34
  %36 = phi i32 [ %50, %48 ], [ 0, %34 ]
  %37 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %37, i32 noundef 1073741824, ptr noundef nonnull @.str.18, i32 noundef %36) #13
  %38 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %3, i32 0, i32 %36
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %48, label %41

41:                                               ; preds = %41, %35
  %42 = phi ptr [ %43, %41 ], [ %39, %35 ]
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  store volatile ptr %43, ptr %45, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %42, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %44, align 4
  tail call void @kfree(ptr noundef %42) #13
  %47 = icmp eq ptr %43, %38
  br i1 %47, label %48, label %41

48:                                               ; preds = %41, %35
  store volatile ptr %38, ptr %38, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %38, ptr %49, align 4
  %50 = add nuw nsw i32 %36, 1
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %35

52:                                               ; preds = %48
  store i64 506097522914099713, ptr @tos_to_tid, align 8
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr inbounds %struct.mwifiex_adapter, ptr %53, i32 0, i32 18, i32 22
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.mwifiex_adapter, ptr %53, i32 0, i32 12
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = tail call i32 %55(ptr noundef %53) #13
  br label %64

64:                                               ; preds = %62, %57, %52
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #13
  %65 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 141
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, %65
  br i1 %67, label %74, label %68

68:                                               ; preds = %68, %64
  %69 = phi ptr [ %70, %68 ], [ %66, %64 ]
  %70 = load ptr, ptr %69, align 8
  tail call void @skb_unlink(ptr noundef %69, ptr noundef %65) #13
  %71 = load ptr, ptr %0, align 8
  %72 = tail call i32 @mwifiex_write_data_complete(ptr noundef %71, ptr noundef %69, i32 noundef 0, i32 noundef -1) #13
  %73 = icmp eq ptr %70, %65
  br i1 %73, label %74, label %68

74:                                               ; preds = %68, %64
  %75 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 160
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %75
  br i1 %77, label %84, label %78

78:                                               ; preds = %78, %74
  %79 = phi ptr [ %80, %78 ], [ %76, %74 ]
  %80 = load ptr, ptr %79, align 8
  tail call void @skb_unlink(ptr noundef %79, ptr noundef %75) #13
  %81 = load ptr, ptr %0, align 8
  %82 = tail call i32 @mwifiex_write_data_complete(ptr noundef %81, ptr noundef %79, i32 noundef 0, i32 noundef -1) #13
  %83 = icmp eq ptr %80, %75
  br i1 %83, label %84, label %78

84:                                               ; preds = %78, %74
  %85 = load ptr, ptr %0, align 8
  %86 = getelementptr inbounds %struct.mwifiex_adapter, ptr %85, i32 0, i32 19
  store volatile i32 0, ptr %86, align 4
  %87 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 147
  %88 = tail call i32 @idr_for_each(ptr noundef %87, ptr noundef nonnull @mwifiex_free_ack_frame, ptr noundef null) #13
  tail call void @idr_destroy(ptr noundef %87) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_cleanup_reorder_tbl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11n_delete_all_tx_ba_stream_tbl(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_write_data_complete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_free_ack_frame(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #14
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @mwifiex_wmm_get_ralist_node(ptr noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77
  %5 = zext i8 %1 to i32
  %6 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %4, i32 0, i32 %5
  br label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ %6, %3 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %9, i32 0, i32 2
  %13 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %12, ptr noundef dereferenceable(6) %2, i32 6)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %7

15:                                               ; preds = %11, %7
  %16 = phi ptr [ %9, %11 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_update_ralist_tx_pause(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77
  %6 = icmp ne i8 %2, 0
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %36, %3
  %9 = phi i32 [ 0, %3 ], [ %38, %36 ]
  %10 = phi i32 [ 0, %3 ], [ %37, %36 ]
  %11 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %5, i32 0, i32 %9
  br label %12

12:                                               ; preds = %16, %8
  %13 = phi ptr [ %11, %8 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %11
  br i1 %15, label %36, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 2
  %18 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %17, ptr noundef dereferenceable(6) %1, i32 6) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12

20:                                               ; preds = %16
  %21 = icmp eq ptr %14, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 11
  %24 = load i8, ptr %23, align 1, !range !9
  %25 = icmp eq i8 %24, %2
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %14, i32 0, i32 9
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = add i32 %10, %29
  store i8 %7, ptr %23, align 1
  %31 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 2, i32 %9
  %32 = load i32, ptr %31, align 4
  %33 = sub nsw i32 0, %29
  %34 = select i1 %6, i32 %29, i32 %33
  %35 = add i32 %32, %34
  store i32 %35, ptr %31, align 4
  br label %36

36:                                               ; preds = %26, %22, %20, %12
  %37 = phi i32 [ %10, %22 ], [ %10, %20 ], [ %30, %26 ], [ %10, %12 ]
  %38 = add nuw nsw i32 %9, 1
  %39 = icmp eq i32 %38, 8
  br i1 %39, label %40, label %8

40:                                               ; preds = %36
  %41 = icmp eq i32 %37, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 9
  %44 = load volatile i32, ptr %43, align 4
  %45 = icmp eq i8 %2, 0
  %46 = sub i32 0, %37
  %47 = select i1 %45, i32 %37, i32 %46
  %48 = add i32 %44, %47
  store volatile i32 %48, ptr %43, align 4
  %49 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 10
  store volatile i32 7, ptr %49, align 4
  br label %50

50:                                               ; preds = %42, %40
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_update_ralist_tx_pause_in_tdls_cs(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #13
  %6 = icmp ne i8 %2, 0
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %39, %3
  %9 = phi i32 [ 0, %3 ], [ %40, %39 ]
  %10 = phi i32 [ 0, %3 ], [ %41, %39 ]
  %11 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %4, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %39, label %14

14:                                               ; preds = %8
  %15 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 2, i32 %10
  br label %16

16:                                               ; preds = %35, %14
  %17 = phi ptr [ %12, %14 ], [ %37, %35 ]
  %18 = phi i32 [ %9, %14 ], [ %36, %35 ]
  %19 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %17, i32 0, i32 2
  %20 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %19, ptr noundef dereferenceable(6) %1, i32 6)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %17, i32 0, i32 11
  %24 = load i8, ptr %23, align 1, !range !9
  %25 = icmp eq i8 %24, %2
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %17, i32 0, i32 9
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = add i32 %18, %29
  store i8 %7, ptr %23, align 1
  %31 = load i32, ptr %15, align 4
  %32 = sub nsw i32 0, %29
  %33 = select i1 %6, i32 %29, i32 %32
  %34 = add i32 %31, %33
  store i32 %34, ptr %15, align 4
  br label %35

35:                                               ; preds = %26, %22, %16
  %36 = phi i32 [ %18, %22 ], [ %18, %16 ], [ %30, %26 ]
  %37 = load ptr, ptr %17, align 4
  %38 = icmp eq ptr %37, %11
  br i1 %38, label %39, label %16

39:                                               ; preds = %35, %8
  %40 = phi i32 [ %9, %8 ], [ %36, %35 ]
  %41 = add nuw nsw i32 %10, 1
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %43, label %8

43:                                               ; preds = %39
  %44 = icmp eq i32 %40, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 9
  %47 = load volatile i32, ptr %46, align 4
  %48 = icmp eq i8 %2, 0
  %49 = sub i32 0, %40
  %50 = select i1 %48, i32 %40, i32 %49
  %51 = add i32 %47, %50
  store volatile i32 %51, ptr %46, align 4
  %52 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 10
  store volatile i32 7, ptr %52, align 4
  br label %53

53:                                               ; preds = %45, %43
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mwifiex_wmm_get_queue_raptr(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77
  %5 = zext i8 %1 to i32
  %6 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %4, i32 0, i32 %5
  br label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ %6, %3 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %9, i32 0, i32 2
  %13 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %12, ptr noundef dereferenceable(6) %2, i32 6) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = icmp eq ptr %9, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %15, %7
  tail call void @mwifiex_ralist_add(ptr noundef %0, ptr noundef %2)
  br label %18

18:                                               ; preds = %22, %17
  %19 = phi ptr [ %6, %17 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %20, i32 0, i32 2
  %24 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %23, ptr noundef dereferenceable(6) %2, i32 6) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %18

26:                                               ; preds = %22, %18, %15
  %27 = phi ptr [ %9, %15 ], [ null, %18 ], [ %20, %22 ]
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_wmm_del_peer_ra_list(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 9
  br label %6

6:                                                ; preds = %47, %2
  %7 = phi i32 [ 0, %2 ], [ %48, %47 ]
  %8 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %4, i32 0, i32 %7
  br label %9

9:                                                ; preds = %13, %6
  %10 = phi ptr [ %8, %6 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %47, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %11, i32 0, i32 2
  %15 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %14, ptr noundef dereferenceable(6) %1, i32 6) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %9

17:                                               ; preds = %13
  %18 = icmp eq ptr %11, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %11, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %29, label %24

24:                                               ; preds = %24, %19
  %25 = phi ptr [ %26, %24 ], [ %22, %19 ]
  %26 = load ptr, ptr %25, align 8
  tail call void @skb_unlink(ptr noundef %25, ptr noundef %21) #13
  %27 = tail call i32 @mwifiex_write_data_complete(ptr noundef %20, ptr noundef %25, i32 noundef 0, i32 noundef -1) #13
  %28 = icmp eq ptr %26, %21
  br i1 %28, label %29, label %24

29:                                               ; preds = %24, %19
  %30 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %11, i32 0, i32 11
  %31 = load i8, ptr %30, align 1, !range !9
  %32 = icmp eq i8 %31, 0
  %33 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %11, i32 0, i32 9
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  br i1 %32, label %40, label %36

36:                                               ; preds = %29
  %37 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 2, i32 %7
  %38 = load i32, ptr %37, align 4
  %39 = sub i32 %38, %35
  store i32 %39, ptr %37, align 4
  br label %42

40:                                               ; preds = %29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #13, !srcloc !10
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 %35, ptr elementtype(i32) %5) #13, !srcloc !11
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %11, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %43, align 4
  tail call void @kfree(ptr noundef nonnull %11) #13
  br label %47

47:                                               ; preds = %42, %17, %9
  %48 = add nuw nsw i32 %7, 1
  %49 = icmp eq i32 %48, 8
  br i1 %49, label %50, label %6

50:                                               ; preds = %47
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @mwifiex_is_ralist_valid(ptr noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77
  %5 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %4, i32 0, i32 %2
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %5, %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %8, %1
  br i1 %11, label %12, label %6

12:                                               ; preds = %10, %6
  %13 = phi i32 [ 1, %10 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_wmm_add_buf_bypass_txqueue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 160
  tail call void @skb_queue_tail(ptr noundef %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_wmm_add_buf_txqueue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store ptr null, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef align 1 dereferenceable(6) %7, i32 6, i1 false)
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 47
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 16384
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ethhdr, ptr %7, i32 0, i32 2
  %19 = load i16, ptr %18, align 1
  %20 = icmp eq i16 %19, 3465
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 8, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #13
  br label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 112
  %24 = call i32 @bcmp(ptr noundef dereferenceable(6) %23, ptr noundef nonnull dereferenceable(6) %3, i32 6)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = call i32 @mwifiex_get_tdls_link_status(ptr noundef %0, ptr noundef nonnull %3) #13
  br label %28

28:                                               ; preds = %26, %22, %21, %12, %2
  %29 = phi i32 [ 0, %21 ], [ %27, %26 ], [ 0, %22 ], [ 0, %12 ], [ 0, %2 ]
  %30 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %31 = load i8, ptr %30, align 8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load ptr, ptr %6, align 4
  %35 = load i32, ptr %34, align 1
  %36 = icmp eq i32 %35, 229
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 8, ptr noundef nonnull @.str.7) #13
  %38 = call i32 @mwifiex_write_data_complete(ptr noundef %5, ptr noundef %1, i32 noundef 0, i32 noundef -1) #13
  br label %170

39:                                               ; preds = %33, %28
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 5
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77
  %43 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %43) #13
  %44 = icmp ugt i32 %41, 7
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = getelementptr [8 x i8], ptr @mwifiex_wmm_convert_tos_to_ac.tos_to_ac, i32 0, i32 %41
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  br label %49

49:                                               ; preds = %45, %39
  %50 = phi i32 [ %48, %45 ], [ 1, %39 ]
  %51 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 5, i32 %50
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %41, 1
  %55 = getelementptr [4 x [2 x i8]], ptr @ac_to_tid, i32 0, i32 %53, i32 %54
  %56 = load i8, ptr %55, align 1
  %57 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %58 = load i32, ptr %57, align 8
  switch i32 %58, label %103 [
    i32 2, label %59
    i32 8, label %59
  ]

59:                                               ; preds = %49, %49
  %60 = load i8, ptr %8, align 1
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %103

63:                                               ; preds = %59
  %64 = load ptr, ptr %6, align 4
  %65 = load i32, ptr %64, align 1
  %66 = icmp eq i32 %65, 229
  br i1 %66, label %103, label %67

67:                                               ; preds = %63
  switch i32 %29, label %97 [
    i32 2, label %68
    i32 5, label %68
    i32 6, label %68
    i32 7, label %68
    i32 1, label %95
  ]

68:                                               ; preds = %67, %67, %67, %67
  %69 = zext i8 %56 to i32
  %70 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %42, i32 0, i32 %69
  br label %71

71:                                               ; preds = %75, %68
  %72 = phi ptr [ %70, %68 ], [ %73, %75 ]
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %70
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %73, i32 0, i32 2
  %77 = call i32 @bcmp(ptr noundef dereferenceable(6) %76, ptr noundef nonnull dereferenceable(6) %3, i32 6) #13
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %71

79:                                               ; preds = %75
  %80 = icmp eq ptr %73, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %79, %71
  call void @mwifiex_ralist_add(ptr noundef %0, ptr noundef nonnull %3) #13
  br label %82

82:                                               ; preds = %86, %81
  %83 = phi ptr [ %70, %81 ], [ %84, %86 ]
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %70
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %84, i32 0, i32 2
  %88 = call i32 @bcmp(ptr noundef dereferenceable(6) %87, ptr noundef nonnull dereferenceable(6) %3, i32 6) #13
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %82

90:                                               ; preds = %86, %82, %79
  %91 = phi ptr [ %73, %79 ], [ %84, %86 ], [ null, %82 ]
  %92 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %93 = load i8, ptr %92, align 4
  %94 = or i8 %93, 4
  store i8 %94, ptr %92, align 4
  br label %134

95:                                               ; preds = %67
  %96 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 141
  call void @skb_queue_tail(ptr noundef %96, ptr noundef %1) #13
  call void @_raw_spin_unlock_bh(ptr noundef %43) #13
  br label %170

97:                                               ; preds = %67
  %98 = zext i8 %56 to i32
  %99 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %42, i32 0, i32 %98
  %100 = load i32, ptr %99, align 4
  %101 = inttoptr i32 %100 to ptr
  store ptr %101, ptr %4, align 8
  %102 = load volatile ptr, ptr %4, align 8
  br label %134

103:                                              ; preds = %63, %59, %49
  %104 = load ptr, ptr %6, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef align 1 dereferenceable(6) %104, i32 6, i1 false)
  %105 = load i8, ptr %3, align 1
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, ptr %104, align 1
  %110 = icmp eq i32 %109, 229
  br i1 %110, label %111, label %112

111:                                              ; preds = %108, %103
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 -1, i32 6, i1 false) #13
  br label %112

112:                                              ; preds = %111, %108
  %113 = zext i8 %56 to i32
  %114 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %42, i32 0, i32 %113
  br label %115

115:                                              ; preds = %119, %112
  %116 = phi ptr [ %114, %112 ], [ %117, %119 ]
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, %114
  br i1 %118, label %125, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %117, i32 0, i32 2
  %121 = call i32 @bcmp(ptr noundef dereferenceable(6) %120, ptr noundef nonnull dereferenceable(6) %3, i32 6) #13
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %115

123:                                              ; preds = %119
  %124 = icmp eq ptr %117, null
  br i1 %124, label %125, label %141

125:                                              ; preds = %123, %115
  call void @mwifiex_ralist_add(ptr noundef %0, ptr noundef nonnull %3) #13
  br label %126

126:                                              ; preds = %130, %125
  %127 = phi ptr [ %114, %125 ], [ %128, %130 ]
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, %114
  br i1 %129, label %139, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %128, i32 0, i32 2
  %132 = call i32 @bcmp(ptr noundef dereferenceable(6) %131, ptr noundef nonnull dereferenceable(6) %3, i32 6) #13
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %126

134:                                              ; preds = %130, %97, %90
  %135 = phi ptr [ %102, %97 ], [ %91, %90 ], [ %128, %130 ]
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = zext i8 %56 to i32
  br label %141

139:                                              ; preds = %134, %126
  call void @_raw_spin_unlock_bh(ptr noundef %43) #13
  %140 = call i32 @mwifiex_write_data_complete(ptr noundef %5, ptr noundef %1, i32 noundef 0, i32 noundef -1) #13
  br label %170

141:                                              ; preds = %137, %123
  %142 = phi i32 [ %138, %137 ], [ %113, %123 ]
  %143 = phi ptr [ %135, %137 ], [ %117, %123 ]
  %144 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %143, i32 0, i32 1
  call void @skb_queue_tail(ptr noundef %144, ptr noundef %1) #13
  %145 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %143, i32 0, i32 5
  %146 = load i16, ptr %145, align 2
  %147 = add i16 %146, 1
  store i16 %147, ptr %145, align 2
  %148 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %143, i32 0, i32 9
  %149 = load i16, ptr %148, align 2
  %150 = add i16 %149, 1
  store i16 %150, ptr %148, align 2
  %151 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 10
  %152 = load volatile i32, ptr %151, align 4
  %153 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 88, i32 %142
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %141
  store volatile i32 %155, ptr %151, align 4
  br label %158

158:                                              ; preds = %157, %141
  %159 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %143, i32 0, i32 11
  %160 = load i8, ptr %159, align 1, !range !9
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 2, i32 %142
  %164 = load i32, ptr %163, align 4
  %165 = add i32 %164, 1
  store i32 %165, ptr %163, align 4
  br label %169

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %167) #13, !srcloc !10
  %168 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %167, ptr %167, i32 1, ptr elementtype(i32) %167) #13, !srcloc !12
  br label %169

169:                                              ; preds = %166, %162
  call void @_raw_spin_unlock_bh(ptr noundef %43) #13
  br label %170

170:                                              ; preds = %169, %139, %95, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_wmm_get_status(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  %4 = load i16, ptr %3, align 1
  %5 = load ptr, ptr %0, align 8
  %6 = zext i16 %4 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 1073741824, ptr noundef nonnull @.str.8, i32 noundef %6) #13
  %7 = icmp ugt i16 %4, 3
  br i1 %7, label %8, label %62

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 21
  br label %11

11:                                               ; preds = %56, %8
  %12 = phi ptr [ null, %8 ], [ %57, %56 ]
  %13 = phi i16 [ %4, %8 ], [ %60, %56 ]
  %14 = phi ptr [ %9, %8 ], [ %58, %56 ]
  %15 = zext i16 %13 to i32
  %16 = getelementptr %struct.mwifiex_ie_types_header, ptr %14, i32 0, i32 1
  %17 = load i16, ptr %16, align 1
  %18 = zext i16 %17 to i32
  %19 = add nuw nsw i32 %18, 4
  %20 = icmp ugt i32 %19, %15
  br i1 %20, label %62, label %21

21:                                               ; preds = %11
  %22 = load i16, ptr %14, align 1
  switch i16 %22, label %62 [
    i16 272, label %23
    i16 221, label %43
  ]

23:                                               ; preds = %21
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.mwifiex_ie_types_wmm_queue_status, ptr %14, i32 0, i32 1
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.mwifiex_ie_types_wmm_queue_status, ptr %14, i32 0, i32 4
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds %struct.mwifiex_ie_types_wmm_queue_status, ptr %14, i32 0, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %24, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %27, i32 noundef %30, i32 noundef %33) #13
  %34 = load i8, ptr %25, align 4
  %35 = zext i8 %34 to i32
  %36 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 4, i32 %35
  %37 = load i8, ptr %31, align 1
  store i8 %37, ptr %36, align 1
  %38 = load i8, ptr %28, align 4
  %39 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 4, i32 %35, i32 1
  store i8 %38, ptr %39, align 1
  %40 = getelementptr inbounds %struct.mwifiex_ie_types_wmm_queue_status, ptr %14, i32 0, i32 5
  %41 = load i8, ptr %40, align 1
  %42 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 4, i32 %35, i32 2
  store i8 %41, ptr %42, align 1
  br label %56

43:                                               ; preds = %21
  %44 = trunc i16 %17 to i8
  %45 = getelementptr i8, ptr %14, i32 3
  store i8 %44, ptr %45, align 1
  store i8 -35, ptr %16, align 1
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr i8, ptr %14, i32 10
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, 15
  %50 = zext i8 %49 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %46, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %50) #13
  %51 = load i8, ptr %45, align 1
  %52 = icmp ugt i8 %51, 24
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = zext i8 %51 to i32
  %55 = add nuw nsw i32 %54, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %10, ptr noundef align 1 %16, i32 %55, i1 false)
  br label %56

56:                                               ; preds = %53, %43, %23
  %57 = phi ptr [ %16, %43 ], [ %16, %53 ], [ %12, %23 ]
  %58 = getelementptr i8, ptr %14, i32 %19
  %59 = trunc i32 %19 to i16
  %60 = sub i16 %13, %59
  %61 = icmp ugt i16 %60, 3
  br i1 %61, label %11, label %62

62:                                               ; preds = %56, %21, %11, %2
  %63 = phi ptr [ null, %2 ], [ %12, %21 ], [ %12, %11 ], [ %57, %56 ]
  tail call void @mwifiex_wmm_setup_queue_priorities(ptr noundef %0, ptr noundef %63)
  tail call void @mwifiex_wmm_setup_ac_downgrade(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_wmm_process_association_req(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readnone %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %1, align 4
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %2, null
  %10 = or i1 %9, %8
  br i1 %10, label %43, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 8
  %13 = load i8, ptr %2, align 1
  %14 = zext i8 %13 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 1073741824, ptr noundef nonnull @.str.11, i32 noundef %14) #13
  %15 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 73
  %16 = load i8, ptr %15, align 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = icmp eq ptr %3, null
  br i1 %19, label %43, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 84
  %23 = load i8, ptr %22, align 2
  %24 = and i8 %23, 24
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %20, %11
  %27 = load i8, ptr %2, align 1
  %28 = icmp eq i8 %27, -35
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load ptr, ptr %1, align 4
  store i16 221, ptr %30, align 1
  %31 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %30, i32 0, i32 1
  store i16 7, ptr %31, align 1
  %32 = getelementptr inbounds %struct.mwifiex_ie_types_wmm_param_set, ptr %30, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %32, ptr noundef align 1 dereferenceable(7) getelementptr inbounds ([9 x i8], ptr @wmm_info_ie, i32 0, i32 2), i32 7, i1 false)
  %33 = getelementptr inbounds %struct.ieee_types_wmm_parameter, ptr %2, i32 0, i32 3
  %34 = load i8, ptr %33, align 1
  %35 = icmp sgt i8 %34, -1
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = getelementptr %struct.mwifiex_ie_types_wmm_param_set, ptr %30, i32 2
  %38 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 75
  %39 = load i8, ptr %38, align 8
  store i8 %39, ptr %37, align 1
  br label %40

40:                                               ; preds = %36, %29
  %41 = load ptr, ptr %1, align 4
  %42 = getelementptr i8, ptr %41, i32 11
  store ptr %42, ptr %1, align 4
  br label %43

43:                                               ; preds = %40, %26, %20, %18, %6, %4
  %44 = phi i32 [ 0, %4 ], [ 0, %6 ], [ 11, %40 ], [ 0, %26 ], [ 0, %18 ], [ 0, %20 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @mwifiex_wmm_compute_drv_pkt_delay(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %6 = sub i64 %5, %4
  %7 = tail call i64 @llvm.abs.i64(i64 %6, i1 false) #13
  %8 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %7) #15, !srcloc !13
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %7, i64 %8, i32 0) #15, !srcloc !14
  %10 = extractvalue { i64, i32 } %9, 0
  %11 = icmp slt i64 %6, 0
  %12 = lshr i64 %10, 18
  %13 = sub nsw i64 0, %12
  %14 = select i1 %11, i64 %13, i64 %12
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %15)
  %19 = lshr i32 %18, 1
  %20 = trunc i32 %19 to i8
  %21 = load ptr, ptr %0, align 8
  %22 = and i32 %19, 255
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %21, i32 noundef 8, ptr noundef nonnull @.str.12, i32 noundef %15, i32 noundef %22) #13
  ret i8 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_rotate_priolists(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 35
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = getelementptr %struct.mwifiex_bss_prio_tbl, ptr %5, i32 %8, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %9) #13
  %10 = load i8, ptr %6, align 2
  %11 = zext i8 %10 to i32
  %12 = getelementptr %struct.mwifiex_bss_prio_tbl, ptr %5, i32 %11
  %13 = getelementptr %struct.mwifiex_bss_prio_tbl, ptr %5, i32 %11, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %12, ptr %20, align 4
  store ptr %19, ptr %12, align 4
  store ptr %14, ptr %15, align 4
  store volatile ptr %12, ptr %14, align 4
  %21 = load i8, ptr %6, align 2
  %22 = zext i8 %21 to i32
  %23 = getelementptr %struct.mwifiex_bss_prio_tbl, ptr %5, i32 %22, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %23) #13
  %24 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %24) #13
  %25 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77
  %26 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %25, i32 0, i32 %2
  br label %27

27:                                               ; preds = %31, %3
  %28 = phi ptr [ %26, %3 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %26
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = icmp eq ptr %29, %1
  br i1 %32, label %33, label %27

33:                                               ; preds = %31
  %34 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 1, i32 %2
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %26, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %39, ptr %38, align 4
  %41 = load ptr, ptr %1, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %26, ptr %42, align 4
  store ptr %41, ptr %26, align 4
  store ptr %1, ptr %37, align 4
  store volatile ptr %26, ptr %1, align 4
  br label %43

43:                                               ; preds = %33, %27
  tail call void @_raw_spin_unlock_bh(ptr noundef %24) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_process_bypass_tx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mwifiex_tx_param, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 53
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %46

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 86
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 18, i32 27
  %16 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 19
  br label %17

17:                                               ; preds = %41, %14
  %18 = phi i32 [ 0, %14 ], [ %42, %41 ]
  %19 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %15, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call zeroext i1 %23(ptr noundef nonnull %20) #13
  br i1 %26, label %27, label %41

27:                                               ; preds = %25, %22
  %28 = getelementptr inbounds %struct.mwifiex_private, ptr %20, i32 0, i32 160
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = call ptr @skb_dequeue(ptr noundef %28) #13
  store i32 0, ptr %2, align 4
  %33 = call i32 @mwifiex_process_tx(ptr noundef nonnull %20, ptr noundef %32, ptr noundef nonnull %2) #13
  %34 = icmp eq i32 %33, -16
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  call void @skb_queue_head(ptr noundef %28, ptr noundef %32) #13
  %36 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 3, i32 12
  %37 = load i8, ptr %36, align 4
  %38 = or i8 %37, 1
  store i8 %38, ptr %36, align 4
  br label %41

39:                                               ; preds = %31
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #13, !srcloc !10
  %40 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #13, !srcloc !11
  br label %41

41:                                               ; preds = %39, %35, %27, %25, %17
  %42 = add nuw nsw i32 %18, 1
  %43 = load i8, ptr %11, align 4
  %44 = zext i8 %43 to i32
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %17, label %46

46:                                               ; preds = %41, %10, %6, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_wmm_process_tx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mwifiex_tx_param, align 4
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #13, !annotation !8
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %418, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 18, i32 27
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 39
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 138
  %11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 113
  %12 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 53
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 86
  %14 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 72
  br label %18

15:                                               ; preds = %452
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #13, !annotation !8
  %16 = load i8, ptr %4, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %418, label %18

18:                                               ; preds = %15, %7
  %19 = phi i8 [ %5, %7 ], [ %16, %15 ]
  %20 = zext i8 %19 to i32
  br label %23

21:                                               ; preds = %88, %23
  %22 = icmp sgt i32 %24, 1
  br i1 %22, label %23, label %418

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %20, %18 ], [ %25, %21 ]
  %25 = add nsw i32 %24, -1
  %26 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 35, i32 %25
  %27 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 35, i32 %25, i32 2
  %28 = load ptr, ptr %26, align 4
  store ptr %28, ptr %27, align 4
  %29 = icmp eq ptr %28, %26
  br i1 %29, label %21, label %30

30:                                               ; preds = %85, %23
  %31 = phi ptr [ %86, %85 ], [ %28, %23 ]
  %32 = getelementptr inbounds %struct.mwifiex_bss_prio_node, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 18
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 9
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %88, label %41

41:                                               ; preds = %37, %30
  %42 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 77
  %43 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 77, i32 9
  %44 = load volatile i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %88, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %8, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call zeroext i1 %47(ptr noundef %33) #13
  br i1 %50, label %51, label %88

51:                                               ; preds = %49, %46
  %52 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 77, i32 10
  %53 = load volatile i32, ptr %52, align 4
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 77, i32 3
  br label %57

57:                                               ; preds = %77, %55
  %58 = phi i32 [ %53, %55 ], [ %78, %77 ]
  call void @_raw_spin_lock_bh(ptr noundef %56) #13
  %59 = getelementptr [8 x i8], ptr @tos_to_tid, i32 0, i32 %58
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %42, i32 0, i32 %61
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %62
  br i1 %64, label %77, label %65

65:                                               ; preds = %74, %57
  %66 = phi ptr [ %75, %74 ], [ %63, %57 ]
  %67 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %66, i32 0, i32 11
  %68 = load i8, ptr %67, align 1, !range !9
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %66, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %74, label %92

74:                                               ; preds = %70, %65
  %75 = load ptr, ptr %66, align 4
  %76 = icmp eq ptr %75, %62
  br i1 %76, label %77, label %65

77:                                               ; preds = %74, %57
  call void @_raw_spin_unlock_bh(ptr noundef %56) #13
  %78 = add nsw i32 %58, -1
  %79 = icmp sgt i32 %58, 0
  br i1 %79, label %57, label %80

80:                                               ; preds = %77, %51
  %81 = load volatile i32, ptr %43, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  store volatile i32 7, ptr %52, align 4
  %84 = load ptr, ptr %27, align 4
  br label %85

85:                                               ; preds = %88, %83
  %86 = phi ptr [ %84, %83 ], [ %90, %88 ]
  br label %30

87:                                               ; preds = %80
  store volatile i32 -1, ptr %52, align 4
  br label %88

88:                                               ; preds = %87, %49, %41, %37
  %89 = load ptr, ptr %27, align 4
  %90 = load ptr, ptr %89, align 4
  store ptr %90, ptr %27, align 4
  %91 = icmp eq ptr %90, %26
  br i1 %91, label %21, label %85

92:                                               ; preds = %70
  %93 = load volatile i32, ptr %52, align 4
  %94 = icmp sgt i32 %93, %58
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store volatile i32 %58, ptr %52, align 4
  br label %96

96:                                               ; preds = %95, %92
  call void @_raw_spin_unlock_bh(ptr noundef %56) #13
  %97 = load i8, ptr %59, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq ptr %66, null
  br i1 %99, label %418, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %71, align 4
  %102 = icmp eq ptr %101, %71
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 13, i32 0, i32 5
  %105 = load i32, ptr %104, align 8
  br label %106

106:                                              ; preds = %103, %100
  %107 = phi i32 [ %105, %103 ], [ 0, %100 ]
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.20, i32 noundef %107) #13
  call void @_raw_spin_lock_bh(ptr noundef %56) #13
  %108 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %42, i32 0, i32 %98
  br label %109

109:                                              ; preds = %113, %106
  %110 = phi ptr [ %108, %106 ], [ %111, %113 ]
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, %108
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = icmp eq ptr %111, %66
  br i1 %114, label %116, label %109

115:                                              ; preds = %109
  call void @_raw_spin_unlock_bh(ptr noundef %56) #13
  br label %418

116:                                              ; preds = %113
  %117 = load ptr, ptr %71, align 4
  %118 = icmp eq ptr %117, %71
  br i1 %118, label %188, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.sk_buff, ptr %117, i32 0, i32 3, i32 12
  %121 = load i8, ptr %120, align 4
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %188, label %124

124:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  %125 = load ptr, ptr %33, align 8
  %126 = call ptr @skb_dequeue(ptr noundef %71) #13
  %127 = getelementptr inbounds %struct.mwifiex_adapter, ptr %125, i32 0, i32 53
  %128 = load i8, ptr %127, align 4
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.mwifiex_adapter, ptr %125, i32 0, i32 86
  %132 = load i8, ptr %131, align 4
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %130, %124
  %135 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %66, i32 0, i32 9
  %136 = load i16, ptr %135, align 2
  %137 = add i16 %136, -1
  store i16 %137, ptr %135, align 2
  call void @_raw_spin_unlock_bh(ptr noundef %56) #13
  %138 = getelementptr inbounds %struct.mwifiex_adapter, ptr %125, i32 0, i32 71
  call void @skb_queue_tail(ptr noundef %138, ptr noundef %126) #13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #13, !srcloc !10
  %139 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #13, !srcloc !11
  %140 = getelementptr inbounds %struct.mwifiex_adapter, ptr %125, i32 0, i32 72
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %140) #13, !srcloc !10
  %141 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %140, ptr %140, i32 1, ptr elementtype(i32) %140) #13, !srcloc !12
  br label %187

142:                                              ; preds = %130
  %143 = load ptr, ptr %71, align 4
  %144 = icmp eq ptr %143, %71
  call void @_raw_spin_unlock_bh(ptr noundef %56) #13
  %145 = icmp eq ptr %143, null
  %146 = or i1 %144, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.sk_buff, ptr %143, i32 0, i32 5
  %149 = load i32, ptr %148, align 8
  %150 = add i32 %149, 20
  br label %151

151:                                              ; preds = %147, %142
  %152 = phi i32 [ %150, %147 ], [ 0, %142 ]
  store i32 %152, ptr %2, align 4
  %153 = load i8, ptr %125, align 4
  %154 = icmp eq i8 %153, 2
  %155 = getelementptr inbounds %struct.mwifiex_adapter, ptr %125, i32 0, i32 18, i32 10
  %156 = load ptr, ptr %155, align 4
  br i1 %154, label %157, label %160

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 10
  %159 = load i8, ptr %158, align 2
  br label %160

160:                                              ; preds = %157, %151
  %161 = phi i8 [ %159, %157 ], [ 0, %151 ]
  %162 = call i32 %156(ptr noundef %125, i8 noundef zeroext %161, ptr noundef %126, ptr noundef nonnull %2) #13
  switch i32 %162, label %182 [
    i32 -16, label %163
    i32 -1, label %172
    i32 0, label %180
  ]

163:                                              ; preds = %160
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %125, i32 noundef 4, ptr noundef nonnull @.str.21) #13
  call void @_raw_spin_lock_bh(ptr noundef %56) #13
  br label %164

164:                                              ; preds = %168, %163
  %165 = phi ptr [ %108, %163 ], [ %166, %168 ]
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, %108
  br i1 %167, label %170, label %168

168:                                              ; preds = %164
  %169 = icmp eq ptr %166, %66
  br i1 %169, label %176, label %164

170:                                              ; preds = %164
  call void @_raw_spin_unlock_bh(ptr noundef %56) #13
  %171 = call i32 @mwifiex_write_data_complete(ptr noundef %125, ptr noundef %126, i32 noundef 0, i32 noundef -1) #13
  br label %187

172:                                              ; preds = %160
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %125, i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef -1) #13
  %173 = getelementptr inbounds %struct.mwifiex_adapter, ptr %125, i32 0, i32 118, i32 2
  %174 = load i32, ptr %173, align 4
  %175 = add i32 %174, 1
  store i32 %175, ptr %173, align 4
  br label %180

176:                                              ; preds = %168
  call void @skb_queue_tail(ptr noundef %71, ptr noundef %126) #13
  %177 = getelementptr inbounds %struct.sk_buff, ptr %126, i32 0, i32 3, i32 12
  %178 = load i8, ptr %177, align 4
  %179 = or i8 %178, 1
  store i8 %179, ptr %177, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %56) #13
  br label %187

180:                                              ; preds = %172, %160
  %181 = call i32 @mwifiex_write_data_complete(ptr noundef %125, ptr noundef %126, i32 noundef 0, i32 noundef %162) #13
  br label %182

182:                                              ; preds = %180, %160
  call void @mwifiex_rotate_priolists(ptr noundef %33, ptr noundef nonnull %66, i32 noundef %98) #13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #13, !srcloc !10
  %183 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #13, !srcloc !11
  call void @_raw_spin_lock_bh(ptr noundef %56) #13
  %184 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %66, i32 0, i32 9
  %185 = load i16, ptr %184, align 2
  %186 = add i16 %185, -1
  store i16 %186, ptr %184, align 2
  call void @_raw_spin_unlock_bh(ptr noundef %56) #13
  br label %187

187:                                              ; preds = %182, %176, %170, %134
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %419

188:                                              ; preds = %119, %116
  %189 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %66, i32 0, i32 3
  %190 = load i32, ptr %189, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %250, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %66, i32 0, i32 7
  %194 = load i32, ptr %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 113
  %198 = load i8, ptr %197, align 2
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %251, label %250

200:                                              ; preds = %192
  %201 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %66, i32 0, i32 8
  %202 = load i8, ptr %201, align 4
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %250, label %204

204:                                              ; preds = %200
  %205 = getelementptr %struct.mwifiex_private, ptr %33, i32 0, i32 85, i32 %107, i32 2
  %206 = load i8, ptr %205, align 1
  %207 = icmp eq i8 %206, -1
  br i1 %207, label %250, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 33
  %210 = load i8, ptr %209, align 4
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %208
  %213 = getelementptr %struct.mwifiex_private, ptr %33, i32 0, i32 30, i32 2
  %214 = load i16, ptr %213, align 2
  %215 = and i16 %214, 3
  %216 = icmp eq i16 %215, 0
  br i1 %216, label %217, label %250

217:                                              ; preds = %212, %208
  %218 = load i16, ptr %9, align 2
  %219 = zext i16 %218 to i32
  %220 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 2
  %221 = load i8, ptr %220, align 1
  %222 = icmp eq i8 %221, 1
  br i1 %222, label %223, label %232

223:                                              ; preds = %217
  %224 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 125
  %225 = load i8, ptr %224, align 2
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %66, i32 0, i32 4
  %229 = load i16, ptr %228, align 4
  %230 = zext i16 %229 to i32
  %231 = call i32 @llvm.smin.i32(i32 %230, i32 %219) #13
  br label %232

232:                                              ; preds = %227, %223, %217
  %233 = phi i32 [ %231, %227 ], [ %219, %223 ], [ %219, %217 ]
  br i1 %118, label %250, label %234

234:                                              ; preds = %232
  %235 = getelementptr inbounds %struct.sk_buff, ptr %117, i32 0, i32 5
  %236 = load i32, ptr %235, align 8
  %237 = icmp sge i32 %236, %233
  br i1 %237, label %246, label %238

238:                                              ; preds = %234
  %239 = load ptr, ptr %117, align 4
  %240 = icmp eq ptr %239, %71
  br i1 %240, label %250, label %241

241:                                              ; preds = %238
  %242 = getelementptr inbounds %struct.sk_buff, ptr %239, i32 0, i32 5
  %243 = load i32, ptr %242, align 8
  %244 = add i32 %243, %236
  %245 = icmp sge i32 %244, %233
  br label %246

246:                                              ; preds = %241, %234
  %247 = phi i1 [ %237, %234 ], [ %245, %241 ]
  br i1 %247, label %250, label %248

248:                                              ; preds = %246
  %249 = call i32 @mwifiex_11n_aggregate_pkt(ptr noundef %33, ptr noundef nonnull %66, i32 noundef %98) #13
  br label %419

250:                                              ; preds = %246, %238, %232, %212, %204, %200, %196, %188
  call fastcc void @mwifiex_send_single_packet(ptr noundef %33, ptr noundef nonnull %66, i32 noundef %98) #13
  br label %419

251:                                              ; preds = %196
  %252 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %66, i32 0, i32 2
  %253 = load i16, ptr %252, align 2
  %254 = getelementptr %struct.mwifiex_ra_list_tbl, ptr %66, i32 0, i32 2, i32 2
  %255 = load i16, ptr %254, align 2
  %256 = and i16 %255, %253
  %257 = getelementptr %struct.mwifiex_ra_list_tbl, ptr %66, i32 0, i32 2, i32 4
  %258 = load i16, ptr %257, align 2
  %259 = and i16 %256, %258
  %260 = icmp eq i16 %259, -1
  br i1 %260, label %366, label %261

261:                                              ; preds = %251
  %262 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 2
  %263 = load i8, ptr %262, align 1
  %264 = and i8 %263, 1
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %271, label %266

266:                                              ; preds = %261
  %267 = call ptr @mwifiex_get_sta_entry(ptr noundef %33, ptr noundef %252) #13
  %268 = icmp eq ptr %267, null
  br i1 %268, label %366, label %269, !prof !15

269:                                              ; preds = %266
  %270 = getelementptr %struct.mwifiex_sta_node, ptr %267, i32 0, i32 5, i32 %107
  br label %282

271:                                              ; preds = %261
  %272 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %66, i32 0, i32 10
  %273 = load i8, ptr %272, align 4, !range !9
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %271
  %276 = call ptr @mwifiex_get_sta_entry(ptr noundef %33, ptr noundef %252) #13
  %277 = icmp eq ptr %276, null
  br i1 %277, label %366, label %278, !prof !15

278:                                              ; preds = %275
  %279 = getelementptr %struct.mwifiex_sta_node, ptr %276, i32 0, i32 5, i32 %107
  br label %282

280:                                              ; preds = %271
  %281 = getelementptr %struct.mwifiex_private, ptr %33, i32 0, i32 85, i32 %107, i32 1
  br label %282

282:                                              ; preds = %280, %278, %269
  %283 = phi ptr [ %279, %278 ], [ %270, %269 ], [ %281, %280 ]
  %284 = load i8, ptr %283, align 1
  %285 = icmp eq i8 %284, -1
  br i1 %285, label %366, label %286

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %66, i32 0, i32 5
  %288 = load i16, ptr %287, align 2
  %289 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %66, i32 0, i32 6
  %290 = load i8, ptr %289, align 4
  %291 = zext i8 %290 to i16
  %292 = icmp ugt i16 %288, %291
  br i1 %292, label %293, label %366

293:                                              ; preds = %286
  %294 = load i8, ptr %4, align 4
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %318, label %296

296:                                              ; preds = %293
  %297 = zext i8 %294 to i32
  br label %298

298:                                              ; preds = %314, %296
  %299 = phi i32 [ 0, %296 ], [ %316, %314 ]
  %300 = phi i32 [ 0, %296 ], [ %315, %314 ]
  %301 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %299
  %302 = load ptr, ptr %301, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %314, label %304

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.mwifiex_private, ptr %302, i32 0, i32 83
  br label %306

306:                                              ; preds = %306, %304
  %307 = phi ptr [ %305, %304 ], [ %309, %306 ]
  %308 = phi i32 [ 0, %304 ], [ %311, %306 ]
  %309 = load ptr, ptr %307, align 4
  %310 = icmp eq ptr %309, %305
  %311 = add i32 %308, 1
  br i1 %310, label %312, label %306

312:                                              ; preds = %306
  %313 = add i32 %308, %300
  br label %314

314:                                              ; preds = %312, %298
  %315 = phi i32 [ %313, %312 ], [ %300, %298 ]
  %316 = add nuw nsw i32 %299, 1
  %317 = icmp eq i32 %316, %297
  br i1 %317, label %318, label %298

318:                                              ; preds = %314, %293
  %319 = phi i32 [ 0, %293 ], [ %315, %314 ]
  %320 = load i8, ptr %10, align 2
  %321 = icmp eq i8 %320, 15
  br i1 %321, label %322, label %328

322:                                              ; preds = %318
  %323 = load i32, ptr %11, align 4
  %324 = lshr i32 %323, 18
  %325 = and i32 %324, 15
  %326 = icmp eq i32 %325, 0
  %327 = select i1 %326, i32 2, i32 %325
  br label %328

328:                                              ; preds = %322, %318
  %329 = phi i32 [ %327, %322 ], [ 2, %318 ]
  %330 = icmp ult i32 %319, %329
  br i1 %330, label %331, label %333

331:                                              ; preds = %328
  call void @mwifiex_create_ba_tbl(ptr noundef %33, ptr noundef %252, i32 noundef %107, i32 noundef 1) #13
  %332 = call i32 @mwifiex_send_addba(ptr noundef %33, i32 noundef %107, ptr noundef %252) #13
  br label %366

333:                                              ; preds = %328
  %334 = getelementptr %struct.mwifiex_private, ptr %33, i32 0, i32 85, i32 %107
  %335 = load i8, ptr %334, align 1
  %336 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 84
  call void @_raw_spin_lock_bh(ptr noundef %336) #13
  %337 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 83
  %338 = load ptr, ptr %337, align 4
  %339 = icmp eq ptr %338, %337
  br i1 %339, label %340, label %341

340:                                              ; preds = %333
  call void @_raw_spin_unlock_bh(ptr noundef %336) #13
  br label %366

341:                                              ; preds = %333
  %342 = zext i8 %335 to i32
  br label %343

343:                                              ; preds = %356, %341
  %344 = phi i32 [ 0, %341 ], [ %357, %356 ]
  %345 = phi ptr [ %338, %341 ], [ %360, %356 ]
  %346 = phi i32 [ %342, %341 ], [ %359, %356 ]
  %347 = phi i8 [ 0, %341 ], [ %358, %356 ]
  %348 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %345, i32 0, i32 1
  %349 = load i32, ptr %348, align 4
  %350 = getelementptr %struct.mwifiex_private, ptr %33, i32 0, i32 85, i32 %349
  %351 = load i8, ptr %350, align 1
  %352 = zext i8 %351 to i32
  %353 = icmp sgt i32 %346, %352
  br i1 %353, label %354, label %356

354:                                              ; preds = %343
  %355 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, ptr %345, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef align 4 dereferenceable(6) %355, i32 6, i1 false) #13
  br label %356

356:                                              ; preds = %354, %343
  %357 = phi i32 [ %349, %354 ], [ %344, %343 ]
  %358 = phi i8 [ 1, %354 ], [ %347, %343 ]
  %359 = phi i32 [ %352, %354 ], [ %346, %343 ]
  %360 = load ptr, ptr %345, align 4
  %361 = icmp eq ptr %360, %337
  br i1 %361, label %362, label %343

362:                                              ; preds = %356
  call void @_raw_spin_unlock_bh(ptr noundef %336) #13
  %363 = icmp eq i8 %358, 0
  br i1 %363, label %366, label %364

364:                                              ; preds = %362
  call void @mwifiex_create_ba_tbl(ptr noundef %33, ptr noundef %252, i32 noundef %107, i32 noundef 1) #13
  %365 = call i32 @mwifiex_send_delba(ptr noundef %33, i32 noundef %357, ptr noundef nonnull %3, i32 noundef 1) #13
  br label %366

366:                                              ; preds = %364, %362, %340, %331, %286, %282, %275, %266, %251
  %367 = getelementptr %struct.mwifiex_private, ptr %33, i32 0, i32 85, i32 %107, i32 2
  %368 = load i8, ptr %367, align 1
  %369 = icmp eq i8 %368, -1
  br i1 %369, label %417, label %370

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 33
  %372 = load i8, ptr %371, align 4
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %370
  %375 = getelementptr %struct.mwifiex_private, ptr %33, i32 0, i32 30, i32 2
  %376 = load i16, ptr %375, align 2
  %377 = and i16 %376, 3
  %378 = icmp eq i16 %377, 0
  br i1 %378, label %379, label %417

379:                                              ; preds = %374, %370
  %380 = load i16, ptr %9, align 2
  %381 = zext i16 %380 to i32
  %382 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 2
  %383 = load i8, ptr %382, align 1
  %384 = icmp eq i8 %383, 1
  br i1 %384, label %385, label %397

385:                                              ; preds = %379
  %386 = getelementptr inbounds %struct.mwifiex_private, ptr %33, i32 0, i32 125
  %387 = load i8, ptr %386, align 2
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %397, label %389

389:                                              ; preds = %385
  %390 = load i32, ptr %189, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %397, label %392

392:                                              ; preds = %389
  %393 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %66, i32 0, i32 4
  %394 = load i16, ptr %393, align 4
  %395 = zext i16 %394 to i32
  %396 = call i32 @llvm.smin.i32(i32 %395, i32 %381) #13
  br label %397

397:                                              ; preds = %392, %389, %385, %379
  %398 = phi i32 [ %396, %392 ], [ %381, %389 ], [ %381, %385 ], [ %381, %379 ]
  %399 = load ptr, ptr %71, align 4
  %400 = icmp eq ptr %399, %71
  br i1 %400, label %417, label %401

401:                                              ; preds = %397
  %402 = getelementptr inbounds %struct.sk_buff, ptr %399, i32 0, i32 5
  %403 = load i32, ptr %402, align 8
  %404 = icmp sge i32 %403, %398
  br i1 %404, label %413, label %405

405:                                              ; preds = %401
  %406 = load ptr, ptr %399, align 4
  %407 = icmp eq ptr %406, %71
  br i1 %407, label %417, label %408

408:                                              ; preds = %405
  %409 = getelementptr inbounds %struct.sk_buff, ptr %406, i32 0, i32 5
  %410 = load i32, ptr %409, align 8
  %411 = add i32 %410, %403
  %412 = icmp sge i32 %411, %398
  br label %413

413:                                              ; preds = %408, %401
  %414 = phi i1 [ %404, %401 ], [ %412, %408 ]
  br i1 %414, label %417, label %415

415:                                              ; preds = %413
  %416 = call i32 @mwifiex_11n_aggregate_pkt(ptr noundef %33, ptr noundef nonnull %66, i32 noundef %98) #13
  br label %419

417:                                              ; preds = %413, %405, %397, %374, %366
  call fastcc void @mwifiex_send_single_packet(ptr noundef %33, ptr noundef nonnull %66, i32 noundef %98) #13
  br label %419

418:                                              ; preds = %115, %96, %21, %15, %1
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #13
  br label %461

419:                                              ; preds = %417, %415, %250, %248, %187
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #13
  %420 = load i8, ptr %0, align 4
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %428, label %422

422:                                              ; preds = %419
  %423 = load i8, ptr %12, align 4
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %425, label %461

425:                                              ; preds = %422
  %426 = load i8, ptr %13, align 4
  %427 = icmp eq i8 %426, 0
  br i1 %427, label %431, label %461

428:                                              ; preds = %419
  %429 = load volatile i32, ptr %14, align 4
  %430 = icmp sgt i32 %429, 15
  br i1 %430, label %461, label %431

431:                                              ; preds = %428, %425
  %432 = load i8, ptr %4, align 4
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %461, label %434

434:                                              ; preds = %456, %431
  %435 = phi i32 [ %457, %456 ], [ 0, %431 ]
  %436 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %435
  %437 = load ptr, ptr %436, align 4
  %438 = icmp eq ptr %437, null
  br i1 %438, label %456, label %439

439:                                              ; preds = %434
  %440 = getelementptr inbounds %struct.mwifiex_private, ptr %437, i32 0, i32 9
  %441 = load i8, ptr %440, align 1
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %443, label %447

443:                                              ; preds = %439
  %444 = getelementptr inbounds %struct.mwifiex_private, ptr %437, i32 0, i32 18
  %445 = load i32, ptr %444, align 8
  %446 = icmp eq i32 %445, 1
  br i1 %446, label %447, label %456

447:                                              ; preds = %443, %439
  %448 = load ptr, ptr %8, align 4
  %449 = icmp eq ptr %448, null
  br i1 %449, label %452, label %450

450:                                              ; preds = %447
  %451 = call zeroext i1 %448(ptr noundef nonnull %437) #13
  br i1 %451, label %452, label %456

452:                                              ; preds = %450, %447
  %453 = getelementptr inbounds %struct.mwifiex_private, ptr %437, i32 0, i32 77, i32 9
  %454 = load volatile i32, ptr %453, align 4
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %15

456:                                              ; preds = %452, %450, %443, %434
  %457 = add nuw nsw i32 %435, 1
  %458 = load i8, ptr %4, align 4
  %459 = zext i8 %458 to i32
  %460 = icmp ult i32 %457, %459
  br i1 %460, label %434, label %461

461:                                              ; preds = %456, %431, %428, %425, %422, %418
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_11n_aggregate_pkt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_send_single_packet(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.mwifiex_tx_param, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %10) #13
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 8, ptr noundef nonnull @.str.23) #13
  br label %52

11:                                               ; preds = %3
  %12 = tail call ptr @skb_dequeue(ptr noundef %6) #13
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 8, ptr noundef nonnull @.str.24, ptr noundef %1, ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %1, i32 0, i32 9
  %14 = load i16, ptr %13, align 2
  %15 = add i16 %14, -1
  store i16 %15, ptr %13, align 2
  %16 = load ptr, ptr %6, align 4
  %17 = icmp eq ptr %16, %6
  %18 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %18) #13
  %19 = icmp eq ptr %16, null
  %20 = or i1 %17, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, 20
  br label %25

25:                                               ; preds = %21, %11
  %26 = phi i32 [ %24, %21 ], [ 0, %11 ]
  store i32 %26, ptr %4, align 4
  %27 = call i32 @mwifiex_process_tx(ptr noundef %0, ptr noundef %12, ptr noundef nonnull %4) #13
  %28 = icmp eq i32 %27, -16
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  call void @_raw_spin_lock_bh(ptr noundef %18) #13
  %30 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77
  %31 = getelementptr [8 x %struct.mwifiex_tid_tbl], ptr %30, i32 0, i32 %2
  br label %32

32:                                               ; preds = %36, %29
  %33 = phi ptr [ %31, %29 ], [ %34, %36 ]
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %31
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = icmp eq ptr %34, %1
  br i1 %37, label %40, label %32

38:                                               ; preds = %32
  call void @_raw_spin_unlock_bh(ptr noundef %18) #13
  %39 = call i32 @mwifiex_write_data_complete(ptr noundef %5, ptr noundef %12, i32 noundef 0, i32 noundef -1) #13
  br label %52

40:                                               ; preds = %36
  call void @skb_queue_tail(ptr noundef %6, ptr noundef %12) #13
  %41 = load i16, ptr %13, align 2
  %42 = add i16 %41, 1
  store i16 %42, ptr %13, align 2
  %43 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, ptr %1, i32 0, i32 5
  %44 = load i16, ptr %43, align 2
  %45 = add i16 %44, 1
  store i16 %45, ptr %43, align 2
  %46 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 12
  %47 = load i8, ptr %46, align 4
  %48 = or i8 %47, 1
  store i8 %48, ptr %46, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %18) #13
  br label %52

49:                                               ; preds = %25
  call void @mwifiex_rotate_priolists(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %50 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #13, !srcloc !10
  %51 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #13, !srcloc !11
  br label %52

52:                                               ; preds = %49, %40, %38, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_create_ba_tbl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_addba(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_delba(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

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
!10 = !{i64 742884, i64 2148232855, i64 2148232881, i64 2148232928, i64 2148232950, i64 2148232978, i64 2148232998}
!11 = !{i64 2148246627, i64 2148246653, i64 2148246682, i64 2148246716, i64 2148246747, i64 2148246770}
!12 = !{i64 2148244270, i64 2148244296, i64 2148244325, i64 2148244359, i64 2148244390, i64 2148244413}
!13 = !{i64 607836, i64 607863}
!14 = !{i64 608531, i64 608558, i64 608591, i64 608612, i64 608639, i64 608665}
!15 = !{!"branch_weights", i32 1, i32 2000}
