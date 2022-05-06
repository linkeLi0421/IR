; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/sta_cmd.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/sta_cmd.c"
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
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
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_11h_intf_state = type { i8, i8 }
%struct.mwifiex_ds_mem_rw = type { i32, i32 }
%struct.mwifiex_user_scan_chan = type { i8, i8, i8, i8, i32 }
%struct.mwifiex_multicast_list = type { i32, i32, [32 x [6 x i8]] }
%struct.mwifiex_ds_reg_rw = type { i32, i32, i32 }
%struct.mwifiex_ds_read_eeprom = type { i16, i16, [256 x i8] }
%struct.host_cmd_sdio_sp_rx_aggr_cfg = type { i8, i8, i16 }
%struct.cfg80211_gtk_rekey_data = type { ptr, ptr, ptr, i32, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.mwifiex_rate_scope = type { i16, i16, i16, i16, [8 x i16], [8 x i16] }
%struct.host_cmd_ds_txpwr_cfg = type { i16, i16, i32 }
%struct.mwifiex_types_power_group = type { i16, i16 }
%struct.mwifiex_ds_ant_cfg = type { i32, i32 }
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ps_param_in_hs = type { %struct.mwifiex_ie_types_header, i32, i32 }
%struct.mwifiex_ds_encrypt_key = type { i32, i32, i32, [32 x i8], [6 x i8], i32, [16 x i8], i8, i8, i8, i8, i8 }
%struct.mwifiex_tkip_param = type { [8 x i8], i16, [32 x i8] }
%struct.host_cmd_tlv_mac_addr = type { %struct.mwifiex_ie_types_header, [6 x i8] }
%struct.mwifiex_ietypes_domain_param_set = type { %struct.mwifiex_ie_types_header, [3 x i8], [1 x %struct.ieee80211_country_ie_triplet] }
%struct.pcie_service_card = type { ptr, ptr, %struct.mwifiex_pcie_device, %struct.completion, i8, i32, i32, i32, ptr, i32, [32 x ptr], [32 x ptr], i32, i32, i32, ptr, i32, [32 x ptr], [32 x ptr], i32, i32, i32, ptr, i32, [8 x ptr], [8 x ptr], ptr, ptr, ptr, i32, ptr, ptr, i32, i32, [4 x %struct.msix_entry], [4 x %struct.mwifiex_msix_context], %struct.mwifiex_msix_context, %struct.work_struct, i32, i8, i32 }
%struct.mwifiex_pcie_device = type { ptr, i16, i16, i8, ptr, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.msix_entry = type { i32, i16 }
%struct.mwifiex_msix_context = type { ptr, i16 }
%struct.host_cmd_ds_pcie_details = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_ie_types_rssi_threshold = type { %struct.mwifiex_ie_types_header, i8, i8 }
%struct.mwifiex_ds_mef_cfg = type { i32, i16, ptr }
%struct.mwifiex_mef_entry = type { i8, i8, [10 x %struct.mwifiex_mef_filter] }
%struct.mwifiex_mef_filter = type { i16, i16, [7 x i8], i8, i8 }
%struct.mwifiex_fw_mef_entry = type { i8, i8, i16, [0 x i8] }
%struct.mwifiex_ds_coalesce_cfg = type { i16, [8 x %struct.mwifiex_coalesce_rule] }
%struct.mwifiex_coalesce_rule = type { i16, i8, i8, [4 x %struct.filt_field_param] }
%struct.filt_field_param = type { i8, i8, i16, [4 x i8] }
%struct.coalesce_receive_filt_rule = type { %struct.mwifiex_ie_types_header, i8, i8, i16, [0 x %struct.coalesce_filt_field_param] }
%struct.coalesce_filt_field_param = type { i8, i8, i16, [4 x i8] }
%struct.mwifiex_ds_tdls_oper = type { i16, [6 x i8], i16, i8, ptr, i8, ptr, i8, ptr }
%struct.station_parameters = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, ptr, ptr, i8, i8, i32, i16, ptr, i8, ptr, i8, ptr, i8, i8, i8, i32, ptr, i8, i16, %struct.sta_txpwr, ptr }
%struct.sta_txpwr = type { i16, i32 }
%struct.host_cmd_tlv_rates = type { %struct.mwifiex_ie_types_header, [0 x i8] }
%struct.mwifiex_ie_types_extcap = type { %struct.mwifiex_ie_types_header, [0 x i8] }
%struct.mwifiex_ie_types_vhtcap = type { %struct.mwifiex_ie_types_header, %struct.ieee80211_vht_cap }
%struct.mwifiex_ie_types_aid = type { %struct.mwifiex_ie_types_header, i16 }
%struct.mwifiex_ie_types_tdls_idle_timeout = type { %struct.mwifiex_ie_types_header, i16 }
%struct.mwifiex_ds_11n_amsdu_aggr_ctrl = type { i16, i16 }
%struct.mwifiex_ds_auto_ds = type { i16, i16 }
%struct.mwifiex_ds_11n_tx_cfg = type { i16, i16, i16 }

@__param_str_drcs = internal constant [5 x i8] c"drcs\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@drcs = internal global i8 0, align 1
@__param_drcs = internal constant %struct.kernel_param { ptr @__param_str_drcs, ptr @__this_module, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.116 { ptr @drcs } }, section "__param", align 4
@__UNIQUE_ID_drcstype459 = internal constant [19 x i8] c"parmtype=drcs:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_drcs460 = internal constant [64 x i8] c"parm=drcs:multi-channel operation:1, single-channel operation:0\00", section ".modinfo", align 1
@__param_str_disable_auto_ds = internal constant [16 x i8] c"disable_auto_ds\00", align 1
@disable_auto_ds = internal global i8 0, align 1
@__param_disable_auto_ds = internal constant %struct.kernel_param { ptr @__param_str_disable_auto_ds, ptr @__this_module, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.116 { ptr @disable_auto_ds } }, section "__param", align 4
@__UNIQUE_ID_disable_auto_dstype461 = internal constant [30 x i8] c"parmtype=disable_auto_ds:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_auto_ds462 = internal constant [72 x i8] c"parm=disable_auto_ds:deepsleep enabled=0(default), deepsleep disabled=1\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [40 x i8] c"0x%x command not supported by firmware\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"cmd: WMM: WMM_GET_STATUS cmd sent\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"PREP_CMD: unknown cmd- %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"marvell,wakeup-pin\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"marvell,caldata\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"error while enabling SP aggregation..disable it\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"11D: failed to enable 11D\0A\00", align 1
@aggr_ctrl = external dso_local local_unnamed_addr global i8, align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"download cfg_data from device tree: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"download cfg_data from config file\0A\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"mac_control: only support set cmd\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"cmd: Attach %d bytes ArpFilter to HSCfg cmd\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"cmd: Activating host sleep manually\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"cmd: HS_CFG_CMD: condition:0x%x gpio:0x%x gap:0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"cmd: Deauth: %pM\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"cmd: SNMP_CMD: cmd_oid = 0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c"cmd: SNMP_CMD: Action=0x%x, OID=0x%x,\09OIDSize=0x%x, Value=0x%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"%s: Get key\0A\00", align 1
@__func__.mwifiex_cmd_802_11_key_material_v2 = private unnamed_addr constant [35 x i8] c"mwifiex_cmd_802_11_key_material_v2\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"%s: Remove key\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"%s: Set WEP Key\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"%s: Set WAPI Key\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"%s: Set TKIP Key\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"%s: Set CMAC AES Key\0A\00", align 1
@__func__.mwifiex_set_aes_key_v2 = private unnamed_addr constant [23 x i8] c"mwifiex_set_aes_key_v2\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"%s: Set CMAC default Key index\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"%s: Set AES Key\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"info: Set WAPI Key\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"cmd: CMAC_AES\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"cmd: WPA_AES\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"cmd: WPA_TKIP\0A\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"key%d Length = %d is incorrect\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"info: 11D: no_of_triplet=0x%x\0A\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"sleep_cook_lo phy addr: 0x%x\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"cmd: action: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"cmd: event bitmap : %16x\0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"Error: No event specified\09for bitwise action type\0A\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"Cfg Beacon Low Rssi event,\09RSSI:-%d dBm, Freq:%d\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"Cfg Beacon High Rssi event,\09RSSI:-%d dBm, Freq:%d\0A\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"TDLS config params not available for %pM\0A\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"Unknown TDLS operation\0A\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"Unknown TDLS configuration\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_disable_auto_ds462, ptr @__UNIQUE_ID_disable_auto_dstype461, ptr @__UNIQUE_ID_drcs460, ptr @__UNIQUE_ID_drcstype459, ptr @__param_disable_auto_ds, ptr @__param_drcs], section "llvm.metadata"
@switch.table.mwifiex_sta_prepare_cmd = private unnamed_addr constant [9 x i8] c"\01\00\02\01\01\01\01\00\02", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_dnld_dt_cfgdata(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call i32 @strlen(ptr noundef %2)
  %5 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %28, %3
  %9 = phi ptr [ %30, %28 ], [ %6, %3 ]
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @strlen(ptr noundef %10)
  %12 = icmp ugt i32 %4, %11
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @strncmp(ptr noundef %10, ptr noundef %2, i32 noundef %4)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.property, ptr %9, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.property, ptr %9, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -7
  %24 = icmp ult i32 %23, 2034
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 143, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %9, i1 noundef zeroext true) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25, %20, %16, %13, %8
  %29 = getelementptr inbounds %struct.property, ptr %9, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %8

32:                                               ; preds = %28, %25, %3
  %33 = phi i32 [ 0, %3 ], [ 0, %28 ], [ %26, %25 ]
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_sta_prepare_cmd(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 47
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 33554432
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  switch i16 %1, label %15 [
    i16 131, label %13
    i16 43, label %13
    i16 44, label %13
    i16 64, label %13
  ]

13:                                               ; preds = %12, %12, %12, %12
  %14 = zext i16 %1 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %14) #11
  br label %320

15:                                               ; preds = %12, %6
  switch i16 %1, label %318 [
    i16 3, label %16
    i16 143, label %18
    i16 40, label %20
    i16 77, label %27
    i16 16, label %35
    i16 214, label %46
    i16 209, label %47
    i16 30, label %48
    i16 32, label %51
    i16 228, label %52
    i16 229, label %55
    i16 6, label %56
    i16 107, label %58
    i16 108, label %60
    i16 18, label %62
    i16 36, label %64
    i16 43, label %69
    i16 11, label %71
    i16 44, label %73
    i16 64, label %75
    i16 164, label %77
    i16 22, label %87
    i16 127, label %88
    i16 151, label %91
    i16 268, label %96
    i16 269, label %101
    i16 274, label %104
    i16 593, label %106
    i16 235, label %111
    i16 169, label %116
    i16 170, label %123
    i16 206, label %126
    i16 208, label %128
    i16 207, label %130
    i16 94, label %132
    i16 91, label %134
    i16 217, label %135
    i16 223, label %138
    i16 205, label %141
    i16 113, label %143
    i16 131, label %145
    i16 263, label %157
    i16 134, label %159
    i16 25, label %167
    i16 26, label %167
    i16 27, label %167
    i16 173, label %167
    i16 237, label %167
    i16 89, label %167
    i16 247, label %232
    i16 250, label %248
    i16 117, label %249
    i16 154, label %251
    i16 266, label %253
    i16 290, label %254
    i16 256, label %256
    i16 221, label %258
    i16 547, label %260
    i16 278, label %268
    i16 289, label %270
    i16 224, label %275
    i16 271, label %286
    i16 578, label %305
    i16 293, label %310
    i16 575, label %312
  ]

16:                                               ; preds = %15
  %17 = tail call i32 @mwifiex_cmd_get_hw_spec(ptr noundef %0, ptr noundef %5) #11
  br label %320

18:                                               ; preds = %15
  %19 = tail call fastcc i32 @mwifiex_cmd_cfg_data(ptr noundef %0, ptr noundef %5, ptr noundef %4)
  br label %320

20:                                               ; preds = %15
  %21 = icmp eq i16 %2, 1
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 4, ptr noundef nonnull @.str.9) #11
  br label %320

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 40, ptr %5, align 1
  %25 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 12, ptr %25, align 1
  %26 = load i32, ptr %4, align 4
  store i32 %26, ptr %24, align 4
  br label %320

27:                                               ; preds = %15
  store i16 77, ptr %5, align 1
  %28 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 16, ptr %28, align 1
  %29 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 3
  store i16 0, ptr %29, align 1
  %30 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 %2, ptr %30, align 1
  %31 = icmp eq i16 %2, 1
  br i1 %31, label %32, label %320

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 1
  %34 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %33, ptr noundef align 2 dereferenceable(6) %34, i32 6, i1 false) #11
  br label %320

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  %37 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 204, ptr %37, align 1
  store i16 16, ptr %5, align 1
  store i16 %2, ptr %36, align 1
  %38 = getelementptr inbounds %struct.mwifiex_multicast_list, ptr %4, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 1
  store i16 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 2
  %43 = getelementptr inbounds %struct.mwifiex_multicast_list, ptr %4, i32 0, i32 2
  %44 = load i32, ptr %38, align 4
  %45 = mul i32 %44, 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %42, ptr align 4 %43, i32 %45, i1 false) #11
  br label %320

46:                                               ; preds = %15
  tail call fastcc void @mwifiex_cmd_tx_rate_cfg(ptr noundef %0, ptr noundef %5, i16 noundef zeroext %2, ptr noundef %4)
  br label %320

47:                                               ; preds = %15
  tail call fastcc void @mwifiex_cmd_tx_power_cfg(ptr noundef %5, i16 noundef zeroext %2, ptr noundef %4)
  br label %320

48:                                               ; preds = %15
  %49 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  %50 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 14, ptr %50, align 1
  store i16 30, ptr %5, align 1
  store i16 %2, ptr %49, align 1
  br label %320

51:                                               ; preds = %15
  tail call fastcc void @mwifiex_cmd_rf_antenna(ptr noundef %0, ptr noundef %5, i16 noundef zeroext %2, ptr noundef %4)
  br label %320

52:                                               ; preds = %15
  %53 = trunc i32 %3 to i16
  %54 = tail call i32 @mwifiex_cmd_enh_power_mode(ptr noundef %0, ptr noundef %5, i16 noundef zeroext %2, i16 noundef zeroext %53, ptr noundef %4) #11
  br label %320

55:                                               ; preds = %15
  tail call fastcc void @mwifiex_cmd_802_11_hs_cfg(ptr noundef %0, ptr noundef %5, ptr noundef %4)
  br label %320

56:                                               ; preds = %15
  %57 = tail call i32 @mwifiex_cmd_802_11_scan(ptr noundef %5, ptr noundef %4) #11
  br label %320

58:                                               ; preds = %15
  %59 = tail call i32 @mwifiex_cmd_802_11_bg_scan_config(ptr noundef %0, ptr noundef %5, ptr noundef %4) #11
  br label %320

60:                                               ; preds = %15
  %61 = tail call i32 @mwifiex_cmd_802_11_bg_scan_query(ptr noundef %5) #11
  br label %320

62:                                               ; preds = %15
  %63 = tail call i32 @mwifiex_cmd_802_11_associate(ptr noundef %0, ptr noundef %5, ptr noundef %4) #11
  br label %320

64:                                               ; preds = %15
  %65 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 36, ptr %5, align 1
  %66 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 16, ptr %66, align 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %65, ptr noundef align 1 dereferenceable(6) %4, i32 6, i1 false) #11
  %67 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %67, i32 noundef 16, ptr noundef nonnull @.str.13, ptr noundef %65) #11
  %68 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 3
  store i16 3, ptr %68, align 1
  br label %320

69:                                               ; preds = %15
  %70 = tail call i32 @mwifiex_cmd_802_11_ad_hoc_start(ptr noundef %0, ptr noundef %5, ptr noundef %4) #11
  br label %320

71:                                               ; preds = %15
  store i16 11, ptr %5, align 1
  %72 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 84, ptr %72, align 1
  br label %320

73:                                               ; preds = %15
  %74 = tail call i32 @mwifiex_cmd_802_11_ad_hoc_join(ptr noundef %0, ptr noundef %5, ptr noundef %4) #11
  br label %320

75:                                               ; preds = %15
  store i16 64, ptr %5, align 1
  %76 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 8, ptr %76, align 1
  br label %320

77:                                               ; preds = %15
  store i16 164, ptr %5, align 1
  %78 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 40, ptr %78, align 1
  %79 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 %2, ptr %79, align 1
  %80 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 36
  %81 = load i16, ptr %80, align 8
  %82 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 1
  store i16 %81, ptr %82, align 1
  %83 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 35
  %84 = load i16, ptr %83, align 2
  %85 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 2
  store i16 %84, ptr %85, align 1
  %86 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(16) %86, i8 0, i64 16, i1 false) #11
  br label %320

87:                                               ; preds = %15
  tail call fastcc void @mwifiex_cmd_802_11_snmp_mib(ptr noundef %0, ptr noundef %5, i16 noundef zeroext %2, i32 noundef %3, ptr noundef %4)
  br label %320

88:                                               ; preds = %15
  store i16 127, ptr %5, align 1
  %89 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 10, ptr %89, align 1
  %90 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 25
  store i8 0, ptr %90, align 4
  br label %320

91:                                               ; preds = %15
  store i16 151, ptr %5, align 1
  %92 = load i32, ptr %4, align 1
  %93 = trunc i32 %92 to i8
  %94 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i8 %93, ptr %94, align 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(129) %94, ptr noundef align 1 dereferenceable(129) %4, i32 129, i1 false)
  %95 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 137, ptr %95, align 1
  br label %320

96:                                               ; preds = %15
  store i16 268, ptr %5, align 1
  %97 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 %2, ptr %97, align 1
  %98 = load i32, ptr %4, align 1
  %99 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 1
  store i32 %98, ptr %99, align 1
  %100 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 14, ptr %100, align 1
  br label %320

101:                                              ; preds = %15
  store i16 269, ptr %5, align 1
  %102 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %102, ptr noundef align 1 dereferenceable(10) %4, i32 10, i1 false)
  %103 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 18, ptr %103, align 1
  br label %320

104:                                              ; preds = %15
  %105 = tail call i32 @mwifiex_cmd_11ac_cfg(ptr noundef %0, ptr noundef %5, i16 noundef zeroext %2, ptr noundef %4) #11
  br label %320

106:                                              ; preds = %15
  store i16 593, ptr %5, align 1
  %107 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 %2, ptr %107, align 1
  %108 = load i16, ptr %4, align 2
  %109 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 1
  store i16 %108, ptr %109, align 1
  %110 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 18, ptr %110, align 1
  br label %320

111:                                              ; preds = %15
  store i16 235, ptr %5, align 1
  %112 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 %2, ptr %112, align 1
  %113 = load i16, ptr %4, align 1
  %114 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 1
  store i16 %113, ptr %114, align 1
  %115 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 12, ptr %115, align 1
  br label %320

116:                                              ; preds = %15
  %117 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 45
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 3
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 0, ptr %117, align 4
  br label %121

121:                                              ; preds = %120, %116
  store i16 169, ptr %5, align 1
  %122 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 8, ptr %122, align 1
  br label %320

123:                                              ; preds = %15
  %124 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 45
  store i32 3, ptr %124, align 4
  store i16 170, ptr %5, align 1
  %125 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 8, ptr %125, align 1
  br label %320

126:                                              ; preds = %15
  %127 = tail call i32 @mwifiex_cmd_11n_addba_req(ptr noundef %5, ptr noundef %4) #11
  br label %320

128:                                              ; preds = %15
  %129 = tail call i32 @mwifiex_cmd_11n_delba(ptr noundef %5, ptr noundef %4) #11
  br label %320

130:                                              ; preds = %15
  %131 = tail call i32 @mwifiex_cmd_11n_addba_rsp_gen(ptr noundef %0, ptr noundef %5, ptr noundef %4) #11
  br label %320

132:                                              ; preds = %15
  %133 = tail call fastcc i32 @mwifiex_cmd_802_11_key_material(ptr noundef %0, ptr noundef %5, i16 noundef zeroext %2, i32 noundef %3, ptr noundef %4)
  br label %320

134:                                              ; preds = %15
  tail call fastcc void @mwifiex_cmd_802_11d_domain_info(ptr noundef %0, ptr noundef %5, i16 noundef zeroext %2)
  br label %320

135:                                              ; preds = %15
  %136 = zext i16 %2 to i32
  %137 = tail call i32 @mwifiex_cmd_recfg_tx_buf(ptr noundef %0, ptr noundef %5, i32 noundef %136, ptr noundef %4) #11
  br label %320

138:                                              ; preds = %15
  %139 = zext i16 %2 to i32
  %140 = tail call i32 @mwifiex_cmd_amsdu_aggr_ctrl(ptr noundef %5, i32 noundef %139, ptr noundef %4) #11
  br label %320

141:                                              ; preds = %15
  %142 = tail call i32 @mwifiex_cmd_11n_cfg(ptr noundef %0, ptr noundef %5, i16 noundef zeroext %2, ptr noundef %4) #11
  br label %320

143:                                              ; preds = %15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 16, ptr noundef nonnull @.str.1) #11
  store i16 113, ptr %5, align 1
  %144 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 100, ptr %144, align 1
  br label %320

145:                                              ; preds = %15
  %146 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 131, ptr %5, align 1
  %147 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 24, ptr %147, align 1
  %148 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 3
  store i16 0, ptr %148, align 1
  store i16 %2, ptr %146, align 1
  %149 = icmp eq i16 %2, 1
  br i1 %149, label %150, label %320

150:                                              ; preds = %145
  %151 = icmp eq ptr %4, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %150
  %153 = load i16, ptr %4, align 2
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i16 [ %153, %152 ], [ 0, %150 ]
  %156 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 1
  store i16 %155, ptr %156, align 1
  br label %320

157:                                              ; preds = %15
  %158 = tail call i32 @mwifiex_cmd_802_11_scan_ext(ptr noundef %0, ptr noundef %5, ptr noundef %4) #11
  br label %320

159:                                              ; preds = %15
  %160 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 134, ptr %5, align 1
  %161 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 20, ptr %161, align 1
  store i16 %2, ptr %160, align 1
  %162 = load i32, ptr %4, align 4
  %163 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 2
  store i32 %162, ptr %163, align 1
  %164 = getelementptr inbounds %struct.mwifiex_ds_mem_rw, ptr %4, i32 0, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 3, i32 1
  store i32 %165, ptr %166, align 1
  br label %320

167:                                              ; preds = %15, %15, %15, %15, %15, %15
  %168 = load i16, ptr %5, align 1
  switch i16 %168, label %320 [
    i16 25, label %169
    i16 26, label %179
    i16 27, label %190
    i16 173, label %201
    i16 237, label %212
    i16 89, label %223
  ]

169:                                              ; preds = %167
  %170 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 16, ptr %170, align 1
  %171 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 %2, ptr %171, align 1
  %172 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %4, i32 0, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = trunc i32 %173 to i16
  %175 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 1
  store i16 %174, ptr %175, align 1
  %176 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %4, i32 0, i32 2
  %177 = load i32, ptr %176, align 4
  %178 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 2
  store i32 %177, ptr %178, align 1
  br label %320

179:                                              ; preds = %167
  %180 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 16, ptr %180, align 1
  %181 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 %2, ptr %181, align 1
  %182 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %4, i32 0, i32 1
  %183 = load i32, ptr %182, align 4
  %184 = trunc i32 %183 to i16
  %185 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 1
  store i16 %184, ptr %185, align 1
  %186 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %4, i32 0, i32 2
  %187 = load i32, ptr %186, align 4
  %188 = trunc i32 %187 to i8
  %189 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 2
  store i8 %188, ptr %189, align 1
  br label %320

190:                                              ; preds = %167
  %191 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 16, ptr %191, align 1
  %192 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 %2, ptr %192, align 1
  %193 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %4, i32 0, i32 1
  %194 = load i32, ptr %193, align 4
  %195 = trunc i32 %194 to i16
  %196 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 1
  store i16 %195, ptr %196, align 1
  %197 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %4, i32 0, i32 2
  %198 = load i32, ptr %197, align 4
  %199 = trunc i32 %198 to i8
  %200 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 2
  store i8 %199, ptr %200, align 1
  br label %320

201:                                              ; preds = %167
  %202 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 16, ptr %202, align 1
  %203 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 %2, ptr %203, align 1
  %204 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %4, i32 0, i32 1
  %205 = load i32, ptr %204, align 4
  %206 = trunc i32 %205 to i16
  %207 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 1
  store i16 %206, ptr %207, align 1
  %208 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %4, i32 0, i32 2
  %209 = load i32, ptr %208, align 4
  %210 = trunc i32 %209 to i8
  %211 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 2
  store i8 %210, ptr %211, align 1
  br label %320

212:                                              ; preds = %167
  %213 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 16, ptr %213, align 1
  %214 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 %2, ptr %214, align 1
  %215 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %4, i32 0, i32 1
  %216 = load i32, ptr %215, align 4
  %217 = trunc i32 %216 to i16
  %218 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 1
  store i16 %217, ptr %218, align 1
  %219 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %4, i32 0, i32 2
  %220 = load i32, ptr %219, align 4
  %221 = trunc i32 %220 to i8
  %222 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 2
  store i8 %221, ptr %222, align 1
  br label %320

223:                                              ; preds = %167
  %224 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  %225 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 15, ptr %225, align 1
  store i16 %2, ptr %224, align 1
  %226 = load i16, ptr %4, align 2
  %227 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 1
  store i16 %226, ptr %227, align 1
  %228 = getelementptr inbounds %struct.mwifiex_ds_read_eeprom, ptr %4, i32 0, i32 1
  %229 = load i16, ptr %228, align 2
  %230 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 2
  store i16 %229, ptr %230, align 1
  %231 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 3
  store i8 0, ptr %231, align 1
  br label %320

232:                                              ; preds = %15
  store i16 247, ptr %5, align 1
  %233 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %234 = load i32, ptr %233, align 8
  %235 = add i32 %234, -1
  %236 = icmp ult i32 %235, 9
  br i1 %236, label %237, label %246

237:                                              ; preds = %232
  %238 = trunc i32 %235 to i16
  %239 = lshr i16 391, %238
  %240 = and i16 %239, 1
  %241 = icmp eq i16 %240, 0
  br i1 %241, label %246, label %242

242:                                              ; preds = %237
  %243 = getelementptr inbounds [9 x i8], ptr @switch.table.mwifiex_sta_prepare_cmd, i32 0, i32 %235
  %244 = load i8, ptr %243, align 1
  %245 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i8 %244, ptr %245, align 1
  br label %246

246:                                              ; preds = %242, %237, %232
  %247 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 9, ptr %247, align 1
  br label %320

248:                                              ; preds = %15
  tail call fastcc void @mwifiex_cmd_pcie_host_spec(ptr noundef %0, ptr noundef %5, i16 noundef zeroext %2)
  br label %320

249:                                              ; preds = %15
  %250 = tail call fastcc i32 @mwifiex_cmd_802_11_subsc_evt(ptr noundef %0, ptr noundef %5, ptr noundef %4)
  br label %320

251:                                              ; preds = %15
  %252 = tail call fastcc i32 @mwifiex_cmd_mef_cfg(ptr noundef %5, ptr noundef %4)
  br label %320

253:                                              ; preds = %15
  tail call fastcc void @mwifiex_cmd_coalesce_cfg(ptr noundef %5, i16 noundef zeroext %2, ptr noundef %4)
  br label %320

254:                                              ; preds = %15
  %255 = tail call fastcc i32 @mwifiex_cmd_tdls_oper(ptr noundef %0, ptr noundef %5, ptr noundef %4)
  br label %320

256:                                              ; preds = %15
  %257 = tail call fastcc i32 @mwifiex_cmd_tdls_config(ptr noundef %0, ptr noundef %5, i16 noundef zeroext %2, ptr noundef %4)
  br label %320

258:                                              ; preds = %15
  %259 = tail call i32 @mwifiex_cmd_issue_chan_report_request(ptr noundef %0, ptr noundef %5, ptr noundef %4) #11
  br label %320

260:                                              ; preds = %15
  %261 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 547, ptr %5, align 1
  %262 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 12, ptr %262, align 1
  %263 = trunc i16 %2 to i8
  store i8 %263, ptr %261, align 1
  %264 = icmp eq i16 %2, 1
  br i1 %264, label %265, label %320

265:                                              ; preds = %260
  %266 = load i8, ptr %4, align 1
  %267 = getelementptr inbounds %struct.host_cmd_sdio_sp_rx_aggr_cfg, ptr %261, i32 0, i32 1
  store i8 %266, ptr %267, align 1
  br label %320

268:                                              ; preds = %15
  store i16 278, ptr %5, align 1
  %269 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 10, ptr %269, align 1
  br label %320

270:                                              ; preds = %15
  %271 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 %2, ptr %271, align 1
  %272 = load i16, ptr %4, align 2
  %273 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 1
  store i16 %272, ptr %273, align 1
  store i16 289, ptr %5, align 1
  %274 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 12, ptr %274, align 1
  br label %320

275:                                              ; preds = %15
  %276 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 224, ptr %5, align 1
  %277 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 20, ptr %277, align 1
  store i16 %2, ptr %276, align 1
  %278 = getelementptr %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 2
  store i16 352, ptr %278, align 1
  %279 = getelementptr %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 3
  store i16 4, ptr %279, align 1
  %280 = icmp eq i16 %2, 0
  br i1 %280, label %320, label %281

281:                                              ; preds = %275
  %282 = load i8, ptr %4, align 1, !range !8
  %283 = icmp eq i8 %282, 0
  %284 = getelementptr %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 3, i32 1
  %285 = select i1 %283, i32 130, i32 1
  store i32 %285, ptr %284, align 1
  br label %320

286:                                              ; preds = %15
  %287 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 271, ptr %5, align 1
  %288 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 50, ptr %288, align 1
  store i16 %2, ptr %287, align 1
  %289 = icmp eq i16 %2, 1
  br i1 %289, label %290, label %320

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 3, i32 6
  %292 = load ptr, ptr %4, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %291, ptr noundef align 1 dereferenceable(16) %292, i32 16, i1 false) #11
  %293 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 1
  %294 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, ptr %4, i32 0, i32 1
  %295 = load ptr, ptr %294, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %293, ptr noundef align 1 dereferenceable(16) %295, i32 16, i1 false) #11
  %296 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, ptr %4, i32 0, i32 2
  %297 = load ptr, ptr %296, align 4
  %298 = load i64, ptr %297, align 8
  %299 = tail call i64 @llvm.bswap.i64(i64 %298) #11
  %300 = trunc i64 %299 to i32
  %301 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 1, i32 2
  store i32 %300, ptr %301, align 1
  %302 = lshr i64 %299, 32
  %303 = trunc i64 %302 to i32
  %304 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 1, i32 6
  store i32 %303, ptr %304, align 1
  br label %320

305:                                              ; preds = %15
  store i16 578, ptr %5, align 1
  %306 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 10, ptr %306, align 1
  %307 = icmp eq i16 %2, 0
  br i1 %307, label %308, label %320

308:                                              ; preds = %305
  %309 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  store i16 0, ptr %309, align 1
  br label %320

310:                                              ; preds = %15
  store i16 293, ptr %5, align 1
  %311 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 8, ptr %311, align 1
  br label %320

312:                                              ; preds = %15
  %313 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4
  %314 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 1
  store i16 575, ptr %5, align 1
  %315 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 1
  store i16 16, ptr %315, align 1
  store i16 %2, ptr %313, align 1
  %316 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 3
  store i16 0, ptr %316, align 1
  store i16 298, ptr %314, align 1
  %317 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %5, i32 0, i32 4, i32 0, i32 2
  store i16 2, ptr %317, align 1
  br label %320

318:                                              ; preds = %15
  %319 = zext i16 %1 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %319) #11
  br label %320

320:                                              ; preds = %318, %312, %310, %308, %305, %290, %286, %281, %275, %270, %268, %265, %260, %258, %256, %254, %253, %251, %249, %248, %246, %223, %212, %201, %190, %179, %169, %167, %159, %157, %154, %145, %143, %141, %138, %135, %134, %132, %130, %128, %126, %123, %121, %111, %106, %104, %101, %96, %91, %88, %87, %77, %75, %73, %71, %69, %64, %62, %60, %58, %56, %55, %52, %51, %48, %47, %46, %35, %32, %27, %23, %22, %18, %16, %13
  %321 = phi i32 [ -95, %13 ], [ -1, %318 ], [ 0, %312 ], [ 0, %310 ], [ 0, %270 ], [ 0, %268 ], [ %259, %258 ], [ %257, %256 ], [ %255, %254 ], [ 0, %253 ], [ %252, %251 ], [ %250, %249 ], [ 0, %248 ], [ 0, %246 ], [ 0, %159 ], [ %158, %157 ], [ 0, %143 ], [ %142, %141 ], [ %140, %138 ], [ %137, %135 ], [ 0, %134 ], [ %133, %132 ], [ %131, %130 ], [ %129, %128 ], [ %127, %126 ], [ 0, %123 ], [ 0, %121 ], [ 0, %111 ], [ 0, %106 ], [ %105, %104 ], [ 0, %101 ], [ 0, %96 ], [ 0, %91 ], [ 0, %88 ], [ 0, %87 ], [ 0, %77 ], [ 0, %75 ], [ %74, %73 ], [ 0, %71 ], [ %70, %69 ], [ 0, %64 ], [ %63, %62 ], [ %61, %60 ], [ %59, %58 ], [ %57, %56 ], [ 0, %55 ], [ %54, %52 ], [ 0, %51 ], [ 0, %48 ], [ 0, %47 ], [ 0, %46 ], [ 0, %35 ], [ %19, %18 ], [ %17, %16 ], [ -1, %22 ], [ 0, %23 ], [ 0, %27 ], [ 0, %32 ], [ 0, %145 ], [ 0, %154 ], [ -1, %167 ], [ 0, %223 ], [ 0, %212 ], [ 0, %201 ], [ 0, %190 ], [ 0, %179 ], [ 0, %169 ], [ 0, %260 ], [ 0, %265 ], [ 0, %275 ], [ 0, %281 ], [ 0, %286 ], [ 0, %290 ], [ 0, %305 ], [ 0, %308 ]
  ret i32 %321
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_get_hw_spec(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_cmd_cfg_data(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr i8, ptr %1, i32 8
  %6 = icmp eq ptr %2, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.property, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 127
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %2, align 4
  %13 = tail call i32 @of_property_read_variable_u8_array(ptr noundef %11, ptr noundef %12, ptr noundef %5, i32 noundef %9, i32 noundef 0) #11
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 0) #11
  %15 = icmp sgt i32 %13, -1
  br i1 %15, label %16, label %76

16:                                               ; preds = %7
  %17 = load ptr, ptr %2, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.7, ptr noundef %17) #11
  br label %71

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 126
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.firmware, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %76, label %24

24:                                               ; preds = %18
  %25 = load i32, ptr %20, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %76, label %27

27:                                               ; preds = %24
  %28 = ptrtoint ptr %22 to i32
  br label %29

29:                                               ; preds = %59, %27
  %30 = phi ptr [ %61, %59 ], [ %5, %27 ]
  %31 = phi ptr [ %62, %59 ], [ %22, %27 ]
  br label %32

32:                                               ; preds = %46, %29
  %33 = phi ptr [ %31, %29 ], [ %47, %46 ]
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i8, ptr @_ctype, align 1
  br label %51

38:                                               ; preds = %32
  %39 = zext i8 %34 to i32
  %40 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 32
  %43 = icmp ne i8 %42, 0
  %44 = icmp eq i8 %34, 9
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = getelementptr i8, ptr %33, i32 1
  %48 = ptrtoint ptr %47 to i32
  %49 = sub i32 %48, %28
  %50 = icmp ult i32 %49, %25
  br i1 %50, label %32, label %66

51:                                               ; preds = %38, %36
  %52 = phi i8 [ %37, %36 ], [ %41, %38 ]
  %53 = and i8 %52, 68
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = tail call i32 @simple_strtol(ptr noundef %33, ptr noundef null, i32 noundef 16) #11
  %57 = trunc i32 %56 to i8
  %58 = getelementptr i8, ptr %30, i32 1
  store i8 %57, ptr %30, align 1
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i32 [ 2, %55 ], [ 1, %51 ]
  %61 = phi ptr [ %58, %55 ], [ %30, %51 ]
  %62 = getelementptr i8, ptr %33, i32 %60
  %63 = ptrtoint ptr %62 to i32
  %64 = sub i32 %63, %28
  %65 = icmp ult i32 %64, %25
  br i1 %65, label %29, label %66

66:                                               ; preds = %59, %46
  %67 = phi ptr [ %30, %46 ], [ %61, %59 ]
  %68 = ptrtoint ptr %67 to i32
  %69 = ptrtoint ptr %5 to i32
  %70 = sub i32 %68, %69
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.8) #11
  br label %71

71:                                               ; preds = %66, %16
  %72 = phi i32 [ %9, %16 ], [ %70, %66 ]
  store i16 143, ptr %1, align 1
  %73 = trunc i32 %72 to i16
  %74 = add i16 %73, 8
  %75 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 %74, ptr %75, align 1
  br label %76

76:                                               ; preds = %71, %24, %18, %7
  %77 = phi i32 [ 0, %71 ], [ %14, %7 ], [ -1, %24 ], [ -1, %18 ]
  ret i32 %77
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_cmd_tx_rate_cfg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i16 noundef zeroext %2, ptr noundef readonly %3) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  store i16 214, ptr %1, align 1
  store i16 %2, ptr %5, align 1
  %6 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  store i16 0, ptr %6, align 1
  %7 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i16 339, ptr %7, align 1
  %8 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  store i16 36, ptr %8, align 1
  %9 = icmp eq ptr %3, null
  br i1 %9, label %67, label %10

10:                                               ; preds = %4
  %11 = load i16, ptr %3, align 2
  %12 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  store i16 %11, ptr %12, align 1
  %13 = getelementptr i16, ptr %3, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 2
  store i16 %14, ptr %15, align 1
  %16 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 3
  %17 = getelementptr i16, ptr %3, i32 2
  %18 = load i16, ptr %17, align 2
  store i16 %18, ptr %16, align 1
  %19 = getelementptr i16, ptr %3, i32 3
  %20 = load i16, ptr %19, align 2
  %21 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 4
  store i16 %20, ptr %21, align 1
  %22 = getelementptr i16, ptr %3, i32 4
  %23 = load i16, ptr %22, align 2
  %24 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 5
  store i16 %23, ptr %24, align 1
  %25 = getelementptr i16, ptr %3, i32 5
  %26 = load i16, ptr %25, align 2
  %27 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 6
  store i16 %26, ptr %27, align 1
  %28 = getelementptr i16, ptr %3, i32 6
  %29 = load i16, ptr %28, align 2
  %30 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 7
  store i16 %29, ptr %30, align 1
  %31 = getelementptr i16, ptr %3, i32 7
  %32 = load i16, ptr %31, align 2
  %33 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 8
  store i16 %32, ptr %33, align 1
  %34 = getelementptr i16, ptr %3, i32 8
  %35 = load i16, ptr %34, align 2
  %36 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 4
  store i16 %35, ptr %36, align 1
  %37 = getelementptr i16, ptr %3, i32 9
  %38 = load i16, ptr %37, align 2
  %39 = getelementptr [8 x i16], ptr %16, i32 0, i32 7
  store i16 %38, ptr %39, align 1
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr inbounds %struct.mwifiex_adapter, ptr %40, i32 0, i32 138
  %42 = load i8, ptr %41, align 2
  %43 = icmp eq i8 %42, 15
  br i1 %43, label %44, label %129

44:                                               ; preds = %10
  %45 = getelementptr i16, ptr %3, i32 10
  %46 = load i16, ptr %45, align 2
  %47 = getelementptr %struct.mwifiex_rate_scope, ptr %7, i32 0, i32 5, i32 0
  store i16 %46, ptr %47, align 1
  %48 = getelementptr i16, ptr %3, i32 11
  %49 = load i16, ptr %48, align 2
  %50 = getelementptr %struct.mwifiex_rate_scope, ptr %7, i32 0, i32 5, i32 1
  store i16 %49, ptr %50, align 1
  %51 = getelementptr i16, ptr %3, i32 12
  %52 = load i16, ptr %51, align 2
  %53 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1
  store i16 %52, ptr %53, align 1
  %54 = getelementptr i16, ptr %3, i32 13
  %55 = load i16, ptr %54, align 2
  %56 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 2
  store i16 %55, ptr %56, align 1
  %57 = getelementptr i16, ptr %3, i32 14
  %58 = load i16, ptr %57, align 2
  %59 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 4
  store i16 %58, ptr %59, align 1
  %60 = getelementptr i16, ptr %3, i32 15
  %61 = load i16, ptr %60, align 2
  %62 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 6
  store i16 %61, ptr %62, align 1
  %63 = getelementptr i16, ptr %3, i32 16
  %64 = load i16, ptr %63, align 2
  %65 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 8
  store i16 %64, ptr %65, align 1
  %66 = getelementptr i16, ptr %3, i32 17
  br label %125

67:                                               ; preds = %4
  %68 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 30
  %69 = load i16, ptr %68, align 2
  %70 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  store i16 %69, ptr %70, align 1
  %71 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 1
  %72 = load i16, ptr %71, align 2
  %73 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 2
  store i16 %72, ptr %73, align 1
  %74 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 3
  %75 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 2
  %76 = load i16, ptr %75, align 2
  store i16 %76, ptr %74, align 1
  %77 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 3
  %78 = load i16, ptr %77, align 2
  %79 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 4
  store i16 %78, ptr %79, align 1
  %80 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 4
  %81 = load i16, ptr %80, align 2
  %82 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 5
  store i16 %81, ptr %82, align 1
  %83 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 5
  %84 = load i16, ptr %83, align 2
  %85 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 6
  store i16 %84, ptr %85, align 1
  %86 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 6
  %87 = load i16, ptr %86, align 2
  %88 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 7
  store i16 %87, ptr %88, align 1
  %89 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 7
  %90 = load i16, ptr %89, align 2
  %91 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 8
  store i16 %90, ptr %91, align 1
  %92 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 8
  %93 = load i16, ptr %92, align 2
  %94 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 4
  store i16 %93, ptr %94, align 1
  %95 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 9
  %96 = load i16, ptr %95, align 2
  %97 = getelementptr [8 x i16], ptr %74, i32 0, i32 7
  store i16 %96, ptr %97, align 1
  %98 = load ptr, ptr %0, align 8
  %99 = getelementptr inbounds %struct.mwifiex_adapter, ptr %98, i32 0, i32 138
  %100 = load i8, ptr %99, align 2
  %101 = icmp eq i8 %100, 15
  br i1 %101, label %102, label %129

102:                                              ; preds = %67
  %103 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 10
  %104 = load i16, ptr %103, align 2
  %105 = getelementptr %struct.mwifiex_rate_scope, ptr %7, i32 0, i32 5, i32 0
  store i16 %104, ptr %105, align 1
  %106 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 11
  %107 = load i16, ptr %106, align 2
  %108 = getelementptr %struct.mwifiex_rate_scope, ptr %7, i32 0, i32 5, i32 1
  store i16 %107, ptr %108, align 1
  %109 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 12
  %110 = load i16, ptr %109, align 2
  %111 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1
  store i16 %110, ptr %111, align 1
  %112 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 13
  %113 = load i16, ptr %112, align 2
  %114 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 2
  store i16 %113, ptr %114, align 1
  %115 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 14
  %116 = load i16, ptr %115, align 2
  %117 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 4
  store i16 %116, ptr %117, align 1
  %118 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 15
  %119 = load i16, ptr %118, align 2
  %120 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 6
  store i16 %119, ptr %120, align 1
  %121 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 16
  %122 = load i16, ptr %121, align 2
  %123 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 8
  store i16 %122, ptr %123, align 1
  %124 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 30, i32 17
  br label %125

125:                                              ; preds = %102, %44
  %126 = phi ptr [ %66, %44 ], [ %124, %102 ]
  %127 = load i16, ptr %126, align 2
  %128 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 10
  store i16 %127, ptr %128, align 1
  br label %129

129:                                              ; preds = %125, %67, %10
  %130 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 12
  store i16 338, ptr %130, align 1
  %131 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 14
  store i16 4, ptr %131, align 1
  %132 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 16
  store i32 0, ptr %132, align 1
  %133 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 60, ptr %133, align 1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @mwifiex_cmd_tx_power_cfg(ptr nocapture noundef %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4
  store i16 209, ptr %0, align 1
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 1
  store i16 16, ptr %5, align 1
  switch i16 %1, label %24 [
    i16 1, label %6
    i16 0, label %23
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.host_cmd_ds_txpwr_cfg, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = ptrtoint ptr %2 to i32
  %12 = add i32 %11, 8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.mwifiex_types_power_group, ptr %13, i32 0, i32 1
  %15 = load i16, ptr %14, align 1
  %16 = zext i16 %15 to i32
  %17 = add nuw nsw i32 %16, 12
  tail call void @llvm.memmove.p0.p0.i32(ptr noundef align 1 %4, ptr noundef align 1 %2, i32 %17, i1 false)
  %18 = getelementptr %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 0, i32 3, i32 2
  %19 = load i16, ptr %18, align 1
  %20 = add i16 %19, 20
  store i16 %20, ptr %5, align 1
  br label %23

21:                                               ; preds = %6
  %22 = load i64, ptr %2, align 1
  store i64 %22, ptr %4, align 1
  br label %23

23:                                               ; preds = %21, %10, %3
  store i16 %1, ptr %4, align 1
  br label %24

24:                                               ; preds = %23, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @mwifiex_cmd_rf_antenna(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3) unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  store i16 32, ptr %1, align 1
  switch i16 %2, label %34 [
    i16 1, label %6
    i16 0, label %25
  ]

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 114
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 34
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  br i1 %10, label %12, label %21

12:                                               ; preds = %6
  store i16 16, ptr %11, align 1
  store i16 2, ptr %5, align 1
  %13 = load i32, ptr %3, align 4
  %14 = trunc i32 %13 to i16
  %15 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  store i16 %14, ptr %15, align 1
  %16 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i16 1, ptr %16, align 1
  %17 = getelementptr inbounds %struct.mwifiex_ds_ant_cfg, ptr %3, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = trunc i32 %18 to i16
  %20 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  store i16 %19, ptr %20, align 1
  br label %34

21:                                               ; preds = %6
  store i16 12, ptr %11, align 1
  store i16 3, ptr %5, align 1
  %22 = load i32, ptr %3, align 4
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  store i16 %23, ptr %24, align 1
  br label %34

25:                                               ; preds = %4
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds %struct.mwifiex_adapter, ptr %26, i32 0, i32 114
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 34
  %30 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  br i1 %29, label %31, label %33

31:                                               ; preds = %25
  store i16 16, ptr %30, align 1
  store i16 8, ptr %5, align 1
  %32 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i16 4, ptr %32, align 1
  br label %34

33:                                               ; preds = %25
  store i16 12, ptr %30, align 1
  store i16 12, ptr %5, align 1
  br label %34

34:                                               ; preds = %33, %31, %21, %12, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_enh_power_mode(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_cmd_802_11_hs_cfg(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %6 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  %7 = icmp eq ptr %2, null
  store i16 229, ptr %1, align 1
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %2, align 1
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %27, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 120
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = icmp ult i32 %14, 68
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %13) #11
  %17 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 119
  %18 = load i32, ptr %12, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %6, ptr align 4 %17, i32 %18, i1 false)
  %19 = load i32, ptr %12, align 4
  %20 = trunc i32 %19 to i16
  %21 = getelementptr i8, ptr %6, i32 %19
  %22 = add i16 %20, 28
  br label %27

23:                                               ; preds = %3
  store i16 2, ptr %5, align 1
  %24 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  store i16 1, ptr %24, align 1
  %25 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 109
  store i8 1, ptr %25, align 1
  %26 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %26, i32 noundef 16, ptr noundef nonnull @.str.11) #11
  br label %46

27:                                               ; preds = %16, %11, %8
  %28 = phi ptr [ %6, %8 ], [ %6, %11 ], [ %21, %16 ]
  %29 = phi i16 [ 28, %8 ], [ 28, %11 ], [ %22, %16 ]
  store i16 1, ptr %5, align 1
  %30 = load i32, ptr %2, align 1
  %31 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  store i32 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.mwifiex_hs_config_param, ptr %2, i32 0, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  store i8 %33, ptr %34, align 1
  %35 = getelementptr inbounds %struct.mwifiex_hs_config_param, ptr %2, i32 0, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds %struct.mwifiex_hs_config_param, ptr %31, i32 0, i32 2
  store i8 %36, ptr %37, align 1
  store i16 437, ptr %28, align 1
  %38 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %28, i32 0, i32 1
  store i16 8, ptr %38, align 1
  %39 = getelementptr inbounds %struct.mwifiex_ps_param_in_hs, ptr %28, i32 0, i32 1
  store i32 100, ptr %39, align 1
  %40 = getelementptr inbounds %struct.mwifiex_ps_param_in_hs, ptr %28, i32 0, i32 2
  store i32 50, ptr %40, align 1
  %41 = load i32, ptr %31, align 1
  %42 = load i8, ptr %34, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, ptr %37, align 1
  %45 = zext i8 %44 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 16, ptr noundef nonnull @.str.12, i32 noundef %41, i32 noundef %43, i32 noundef %45) #11
  br label %46

46:                                               ; preds = %27, %23
  %47 = phi i16 [ 16, %23 ], [ %29, %27 ]
  %48 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 %47, ptr %48, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_802_11_scan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_802_11_bg_scan_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_802_11_bg_scan_query(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_802_11_associate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_802_11_ad_hoc_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_802_11_ad_hoc_join(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_cmd_802_11_snmp_mib(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef zeroext %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %3) #11
  store i16 22, ptr %1, align 1
  %8 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 14, ptr %8, align 1
  %9 = trunc i32 %3 to i16
  %10 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  store i16 %9, ptr %10, align 1
  switch i16 %2, label %11 [
    i16 0, label %15
    i16 1, label %17
  ]

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  %13 = load i16, ptr %12, align 1
  %14 = zext i16 %13 to i32
  br label %21

15:                                               ; preds = %5
  store i16 0, ptr %6, align 1
  %16 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i16 128, ptr %16, align 1
  store i16 142, ptr %8, align 1
  br label %21

17:                                               ; preds = %5
  store i16 1, ptr %6, align 1
  %18 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i16 2, ptr %18, align 1
  %19 = load i16, ptr %4, align 2
  %20 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  store i16 %19, ptr %20, align 1
  store i16 16, ptr %8, align 1
  br label %21

21:                                               ; preds = %17, %15, %11
  %22 = phi i32 [ %14, %11 ], [ 2, %17 ], [ 128, %15 ]
  %23 = zext i16 %2 to i32
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  %26 = load i16, ptr %25, align 1
  %27 = zext i16 %26 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %24, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %23, i32 noundef %3, i32 noundef %22, i32 noundef %27) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_11ac_cfg(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_11n_addba_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_11n_delba(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_11n_addba_rsp_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_cmd_802_11_key_material(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef readonly %4) unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %6, i32 0, i32 139
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %238

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 4
  %12 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  store i16 94, ptr %1, align 1
  store i16 %2, ptr %12, align 1
  %13 = icmp eq i16 %2, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 1073741824, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.mwifiex_cmd_802_11_key_material_v2) #11
  %15 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 15
  %19 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 3
  store i8 %18, ptr %20, align 1
  store i16 412, ptr %19, align 1
  %21 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i16 10, ptr %21, align 1
  %22 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %22, ptr noundef align 1 dereferenceable(6) %11, i32 6, i1 false) #11
  %23 = load i32, ptr %15, align 4
  %24 = and i32 %23, 1073741824
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i16 1, i16 2
  %27 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 8
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  %30 = or i16 %26, 1024
  %31 = select i1 %29, i16 %26, i16 %30
  %32 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 4
  store i16 %31, ptr %32, align 1
  %33 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 24, ptr %33, align 1
  br label %485

34:                                               ; preds = %10
  %35 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(64) %35, i8 0, i32 64, i1 false) #11
  %36 = load i32, ptr %4, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 1073741824, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.mwifiex_cmd_802_11_key_material_v2) #11
  store i16 4, ptr %12, align 1
  store i16 412, ptr %35, align 1
  %39 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i16 10, ptr %39, align 1
  %40 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 15
  %44 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 3
  store i8 %43, ptr %44, align 1
  %45 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 4
  store i16 3, ptr %45, align 1
  %46 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %46, ptr noundef align 1 dereferenceable(6) %11, i32 6, i1 false) #11
  %47 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 24, ptr %47, align 1
  br label %485

48:                                               ; preds = %34
  store i16 1, ptr %12, align 1
  %49 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 15
  %53 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 3
  store i8 %52, ptr %53, align 1
  store i16 412, ptr %35, align 1
  %54 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %54, ptr noundef align 1 dereferenceable(6) %11, i32 6, i1 false) #11
  %55 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp ult i32 %56, 14
  br i1 %57, label %58, label %97

58:                                               ; preds = %48
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 1073741824, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.mwifiex_cmd_802_11_key_material_v2) #11
  %59 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i16 25, ptr %59, align 1
  %60 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set_v2, ptr %35, i32 0, i32 4
  store i8 0, ptr %60, align 1
  %61 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %62 = load i8, ptr %61, align 1
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 9
  %67 = load i8, ptr %66, align 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i8, ptr %53, align 1
  %71 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 62
  %72 = load i16, ptr %71, align 8
  %73 = and i16 %72, 15
  %74 = zext i8 %70 to i16
  %75 = icmp eq i16 %73, %74
  %76 = select i1 %75, i16 15, i16 7
  br label %87

77:                                               ; preds = %65
  %78 = load i16, ptr %11, align 2
  %79 = getelementptr %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 4, i32 2
  %80 = load i16, ptr %79, align 2
  %81 = and i16 %80, %78
  %82 = getelementptr %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 4, i32 4
  %83 = load i16, ptr %82, align 2
  %84 = and i16 %81, %83
  %85 = icmp eq i16 %84, -1
  %86 = select i1 %85, i16 5, i16 14
  br label %87

87:                                               ; preds = %77, %69, %58
  %88 = phi i16 [ 7, %58 ], [ %76, %69 ], [ %86, %77 ]
  %89 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 4
  store i16 %88, ptr %89, align 1
  %90 = load i32, ptr %55, align 4
  %91 = trunc i32 %90 to i16
  %92 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 5
  store i16 %91, ptr %92, align 1
  %93 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 6
  %94 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 3
  %95 = load i32, ptr %55, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %93, ptr align 4 %94, i32 %95, i1 false) #11
  %96 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 39, ptr %96, align 1
  br label %485

97:                                               ; preds = %48
  %98 = load i16, ptr %11, align 2
  %99 = getelementptr %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 4, i32 2
  %100 = load i16, ptr %99, align 2
  %101 = and i16 %100, %98
  %102 = getelementptr %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 4, i32 4
  %103 = load i16, ptr %102, align 2
  %104 = and i16 %101, %103
  %105 = icmp eq i16 %104, -1
  %106 = select i1 %105, i16 37, i16 54
  %107 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 5
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %138, label %110

110:                                              ; preds = %97
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 1073741824, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.mwifiex_cmd_802_11_key_material_v2) #11
  %111 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set_v2, ptr %35, i32 0, i32 4
  store i8 3, ptr %111, align 1
  %112 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 5
  %113 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %112, ptr noundef align 4 dereferenceable(16) %113, i32 16, i1 false) #11
  %114 = load i32, ptr %55, align 4
  %115 = trunc i32 %114 to i16
  %116 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1
  store i16 %115, ptr %116, align 1
  %117 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 2
  %118 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 3
  %119 = load i32, ptr %55, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %117, ptr align 4 %118, i32 %119, i1 false) #11
  %120 = load i16, ptr %11, align 2
  %121 = load i16, ptr %99, align 2
  %122 = and i16 %121, %120
  %123 = load i16, ptr %102, align 2
  %124 = and i16 %122, %123
  %125 = icmp eq i16 %124, -1
  %126 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 3
  br i1 %125, label %127, label %128

127:                                              ; preds = %110
  store i8 1, ptr %126, align 1
  br label %133

128:                                              ; preds = %110
  %129 = load i8, ptr %126, align 1
  %130 = icmp eq i8 %129, 0
  %131 = or i16 %106, 8
  %132 = select i1 %130, i16 %131, i16 %106
  br label %133

133:                                              ; preds = %128, %127
  %134 = phi i16 [ %106, %127 ], [ %132, %128 ]
  %135 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 4
  store i16 %134, ptr %135, align 1
  %136 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i16 60, ptr %136, align 1
  %137 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 74, ptr %137, align 1
  br label %485

138:                                              ; preds = %97
  %139 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %140 = load i32, ptr %139, align 8
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %149

142:                                              ; preds = %138
  %143 = or i16 %106, 8
  %144 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 1
  %145 = load i8, ptr %144, align 1
  %146 = icmp eq i8 %145, 0
  %147 = select i1 %105, i16 %143, i16 62
  %148 = select i1 %146, i16 %147, i16 %143
  br label %155

149:                                              ; preds = %138
  %150 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 65
  %151 = load i8, ptr %150, align 4
  %152 = icmp eq i8 %151, 0
  %153 = or i16 %106, 8
  %154 = select i1 %152, i16 %153, i16 %106
  br label %155

155:                                              ; preds = %149, %142
  %156 = phi i16 [ %154, %149 ], [ %148, %142 ]
  %157 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 4
  store i16 %156, ptr %157, align 1
  %158 = load i32, ptr %55, align 4
  switch i32 %158, label %485 [
    i32 16, label %159
    i32 32, label %217
  ]

159:                                              ; preds = %155
  %160 = load ptr, ptr %0, align 8
  %161 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 8
  %162 = load i8, ptr %161, align 1
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %185, label %164

164:                                              ; preds = %159
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %160, i32 noundef 1073741824, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.mwifiex_set_aes_key_v2) #11
  %165 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 10
  %166 = load i8, ptr %165, align 1
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 5
  %170 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 6
  %171 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 7
  %172 = load i8, ptr %171, align 4
  %173 = zext i8 %172 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %169, ptr align 4 %170, i32 %173, i1 false) #11
  br label %174

174:                                              ; preds = %168, %164
  %175 = load i16, ptr %157, align 1
  %176 = and i16 %175, -1026
  %177 = or i16 %176, 1024
  store i16 %177, ptr %157, align 1
  %178 = getelementptr inbounds %struct.host_cmd_ds_802_11_key_material_v2, ptr %12, i32 0, i32 1, i32 4
  store i8 4, ptr %178, align 1
  %179 = load i32, ptr %55, align 4
  %180 = trunc i32 %179 to i16
  %181 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 4
  store i16 %180, ptr %181, align 1
  %182 = getelementptr inbounds %struct.host_cmd_ds_802_11_key_material_v2, ptr %12, i32 0, i32 1, i32 6, i32 0, i32 0, i32 10
  %183 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 3
  %184 = load i32, ptr %55, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %182, ptr align 4 %183, i32 %184, i1 false) #11
  br label %212

185:                                              ; preds = %159
  %186 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 11
  %187 = load i8, ptr %186, align 4
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %185
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %160, i32 noundef 1073741824, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.mwifiex_set_aes_key_v2) #11
  %190 = getelementptr inbounds %struct.host_cmd_ds_802_11_key_material_v2, ptr %12, i32 0, i32 1, i32 4
  store i8 5, ptr %190, align 1
  %191 = load i32, ptr %49, align 4
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 15
  store i8 %193, ptr %53, align 1
  br label %212

194:                                              ; preds = %185
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %160, i32 noundef 1073741824, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.mwifiex_set_aes_key_v2) #11
  %195 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 10
  %196 = load i8, ptr %195, align 1
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %204, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 5
  %200 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 6
  %201 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 7
  %202 = load i8, ptr %201, align 4
  %203 = zext i8 %202 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %199, ptr align 4 %200, i32 %203, i1 false) #11
  br label %204

204:                                              ; preds = %198, %194
  %205 = getelementptr inbounds %struct.host_cmd_ds_802_11_key_material_v2, ptr %12, i32 0, i32 1, i32 4
  store i8 2, ptr %205, align 1
  %206 = load i32, ptr %55, align 4
  %207 = trunc i32 %206 to i16
  %208 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 4
  store i16 %207, ptr %208, align 1
  %209 = getelementptr inbounds %struct.host_cmd_ds_802_11_key_material_v2, ptr %12, i32 0, i32 1, i32 6, i32 0, i32 0, i32 10
  %210 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 3
  %211 = load i32, ptr %55, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %209, ptr align 4 %210, i32 %211, i1 false) #11
  br label %212

212:                                              ; preds = %204, %189, %174
  %213 = phi i16 [ 36, %174 ], [ 10, %189 ], [ 52, %204 ]
  %214 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i16 %213, ptr %214, align 1
  %215 = add nuw nsw i16 %213, 14
  %216 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 %215, ptr %216, align 1
  br label %485

217:                                              ; preds = %155
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 1073741824, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.mwifiex_cmd_802_11_key_material_v2) #11
  %218 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 10
  %219 = load i8, ptr %218, align 1
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %227, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 5
  %223 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 6
  %224 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 7
  %225 = load i8, ptr %224, align 4
  %226 = zext i8 %225 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %222, ptr align 4 %223, i32 %226, i1 false) #11
  br label %227

227:                                              ; preds = %221, %217
  %228 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set_v2, ptr %35, i32 0, i32 4
  store i8 1, ptr %228, align 1
  %229 = load i32, ptr %55, align 4
  %230 = trunc i32 %229 to i16
  %231 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 5
  %232 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 4
  store i16 %230, ptr %232, align 1
  %233 = getelementptr inbounds %struct.mwifiex_tkip_param, ptr %231, i32 0, i32 2
  %234 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 3
  %235 = load i32, ptr %55, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %233, ptr align 4 %234, i32 %235, i1 false) #11
  %236 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i16 52, ptr %236, align 1
  %237 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 66, ptr %237, align 1
  br label %485

238:                                              ; preds = %5
  %239 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  store i16 94, ptr %1, align 1
  store i16 %2, ptr %239, align 1
  %240 = icmp eq i16 %2, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  %242 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 10, ptr %242, align 1
  br label %485

243:                                              ; preds = %238
  %244 = icmp eq ptr %4, null
  %245 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  br i1 %244, label %246, label %369

246:                                              ; preds = %243
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(240) %245, i8 0, i32 240, i1 false) #11
  %247 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 62
  %248 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 0, i32 2
  %249 = load i32, ptr %248, align 4
  switch i32 %249, label %273 [
    i32 5, label %250
    i32 13, label %250
    i32 0, label %278
  ]

250:                                              ; preds = %246, %246
  store i16 256, ptr %245, align 1
  %251 = load i32, ptr %248, align 4
  %252 = trunc i32 %251 to i16
  %253 = add i16 %252, 8
  %254 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i16 %253, ptr %254, align 1
  %255 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  store i16 0, ptr %255, align 1
  %256 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  store i16 7, ptr %256, align 1
  %257 = load i32, ptr %248, align 4
  %258 = trunc i32 %257 to i16
  %259 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 2
  store i16 %258, ptr %259, align 1
  %260 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 3
  store i8 0, ptr %260, align 1
  %261 = load i16, ptr %247, align 8
  %262 = and i16 %261, 16383
  %263 = icmp eq i16 %262, 0
  %264 = zext i1 %263 to i8
  %265 = getelementptr %struct.mwifiex_ie_type_key_param_set, ptr %245, i32 0, i32 5, i32 1
  store i8 %264, ptr %265, align 1
  %266 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 4
  %267 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 0, i32 3
  %268 = load i32, ptr %248, align 4
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %266, ptr align 4 %267, i32 %268, i1 false) #11
  %269 = load i32, ptr %248, align 4
  %270 = add i32 %269, 12
  %271 = trunc i32 %270 to i16
  %272 = getelementptr i8, ptr %245, i32 %270
  br label %278

273:                                              ; preds = %336, %307, %278, %246
  %274 = phi i16 [ 0, %246 ], [ %279, %278 ], [ %308, %307 ], [ %337, %336 ]
  %275 = phi i32 [ 1, %246 ], [ 2, %278 ], [ 3, %307 ], [ 4, %336 ]
  %276 = phi i32 [ %249, %246 ], [ %282, %278 ], [ %311, %307 ], [ %340, %336 ]
  %277 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %277, i32 noundef 4, ptr noundef nonnull @.str.28, i32 noundef %275, i32 noundef %276) #11
  br label %364

278:                                              ; preds = %250, %246
  %279 = phi i16 [ 0, %246 ], [ %271, %250 ]
  %280 = phi ptr [ %245, %246 ], [ %272, %250 ]
  %281 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 1, i32 2
  %282 = load i32, ptr %281, align 4
  switch i32 %282, label %273 [
    i32 5, label %283
    i32 13, label %283
    i32 0, label %307
  ]

283:                                              ; preds = %278, %278
  store i16 256, ptr %280, align 1
  %284 = load i32, ptr %281, align 4
  %285 = trunc i32 %284 to i16
  %286 = add i16 %285, 8
  %287 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %280, i32 0, i32 1
  store i16 %286, ptr %287, align 1
  %288 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %280, i32 0, i32 2
  store i16 0, ptr %288, align 1
  %289 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %280, i32 0, i32 3
  store i16 7, ptr %289, align 1
  %290 = load i32, ptr %281, align 4
  %291 = trunc i32 %290 to i16
  %292 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %280, i32 0, i32 4
  store i16 %291, ptr %292, align 1
  %293 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %280, i32 0, i32 5
  store i8 1, ptr %293, align 1
  %294 = load i16, ptr %247, align 8
  %295 = and i16 %294, 16383
  %296 = icmp eq i16 %295, 1
  %297 = zext i1 %296 to i8
  %298 = getelementptr %struct.mwifiex_ie_type_key_param_set, ptr %280, i32 0, i32 5, i32 1
  store i8 %297, ptr %298, align 1
  %299 = getelementptr %struct.mwifiex_ie_type_key_param_set, ptr %280, i32 0, i32 5, i32 2
  %300 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 1, i32 3
  %301 = load i32, ptr %281, align 4
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %299, ptr align 4 %300, i32 %301, i1 false) #11
  %302 = load i32, ptr %281, align 4
  %303 = add i32 %302, 12
  %304 = trunc i32 %303 to i16
  %305 = add i16 %279, %304
  %306 = getelementptr i8, ptr %280, i32 %303
  br label %307

307:                                              ; preds = %283, %278
  %308 = phi i16 [ %279, %278 ], [ %305, %283 ]
  %309 = phi ptr [ %280, %278 ], [ %306, %283 ]
  %310 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 2, i32 2
  %311 = load i32, ptr %310, align 4
  switch i32 %311, label %273 [
    i32 5, label %312
    i32 13, label %312
    i32 0, label %336
  ]

312:                                              ; preds = %307, %307
  store i16 256, ptr %309, align 1
  %313 = load i32, ptr %310, align 4
  %314 = trunc i32 %313 to i16
  %315 = add i16 %314, 8
  %316 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %309, i32 0, i32 1
  store i16 %315, ptr %316, align 1
  %317 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %309, i32 0, i32 2
  store i16 0, ptr %317, align 1
  %318 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %309, i32 0, i32 3
  store i16 7, ptr %318, align 1
  %319 = load i32, ptr %310, align 4
  %320 = trunc i32 %319 to i16
  %321 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %309, i32 0, i32 4
  store i16 %320, ptr %321, align 1
  %322 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %309, i32 0, i32 5
  store i8 2, ptr %322, align 1
  %323 = load i16, ptr %247, align 8
  %324 = and i16 %323, 16383
  %325 = icmp eq i16 %324, 2
  %326 = zext i1 %325 to i8
  %327 = getelementptr %struct.mwifiex_ie_type_key_param_set, ptr %309, i32 0, i32 5, i32 1
  store i8 %326, ptr %327, align 1
  %328 = getelementptr %struct.mwifiex_ie_type_key_param_set, ptr %309, i32 0, i32 5, i32 2
  %329 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 2, i32 3
  %330 = load i32, ptr %310, align 4
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %328, ptr align 4 %329, i32 %330, i1 false) #11
  %331 = load i32, ptr %310, align 4
  %332 = add i32 %331, 12
  %333 = trunc i32 %332 to i16
  %334 = add i16 %308, %333
  %335 = getelementptr i8, ptr %309, i32 %332
  br label %336

336:                                              ; preds = %312, %307
  %337 = phi i16 [ %308, %307 ], [ %334, %312 ]
  %338 = phi ptr [ %309, %307 ], [ %335, %312 ]
  %339 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 3, i32 2
  %340 = load i32, ptr %339, align 4
  switch i32 %340, label %273 [
    i32 5, label %341
    i32 13, label %341
    i32 0, label %364
  ]

341:                                              ; preds = %336, %336
  store i16 256, ptr %338, align 1
  %342 = load i32, ptr %339, align 4
  %343 = trunc i32 %342 to i16
  %344 = add i16 %343, 8
  %345 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %338, i32 0, i32 1
  store i16 %344, ptr %345, align 1
  %346 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %338, i32 0, i32 2
  store i16 0, ptr %346, align 1
  %347 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %338, i32 0, i32 3
  store i16 7, ptr %347, align 1
  %348 = load i32, ptr %339, align 4
  %349 = trunc i32 %348 to i16
  %350 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %338, i32 0, i32 4
  store i16 %349, ptr %350, align 1
  %351 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, ptr %338, i32 0, i32 5
  store i8 3, ptr %351, align 1
  %352 = load i16, ptr %247, align 8
  %353 = and i16 %352, 16383
  %354 = icmp eq i16 %353, 3
  %355 = zext i1 %354 to i8
  %356 = getelementptr %struct.mwifiex_ie_type_key_param_set, ptr %338, i32 0, i32 5, i32 1
  store i8 %355, ptr %356, align 1
  %357 = getelementptr %struct.mwifiex_ie_type_key_param_set, ptr %338, i32 0, i32 5, i32 2
  %358 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 3, i32 3
  %359 = load i32, ptr %339, align 4
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %357, ptr align 4 %358, i32 %359, i1 false) #11
  %360 = load i32, ptr %339, align 4
  %361 = trunc i32 %360 to i16
  %362 = add i16 %337, 12
  %363 = add i16 %362, %361
  br label %364

364:                                              ; preds = %341, %336, %273
  %365 = phi i16 [ %274, %273 ], [ %337, %336 ], [ %363, %341 ]
  %366 = phi i32 [ -1, %273 ], [ %340, %336 ], [ 0, %341 ]
  %367 = add i16 %365, 10
  %368 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 %367, ptr %368, align 1
  br label %485

369:                                              ; preds = %243
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(60) %245, i8 0, i32 60, i1 false) #11
  %370 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 5
  %371 = load i32, ptr %370, align 4
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %413, label %373

373:                                              ; preds = %369
  %374 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %374, i32 noundef 1073741824, ptr noundef nonnull @.str.24) #11
  %375 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  store i16 3, ptr %375, align 1
  %376 = icmp eq i32 %3, 1
  %377 = select i1 %376, i16 4, i16 0
  %378 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  store i16 %377, ptr %378, align 1
  %379 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 1
  %380 = load i32, ptr %379, align 4
  %381 = trunc i32 %380 to i8
  %382 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 3
  store i8 %381, ptr %382, align 1
  %383 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 3
  %384 = load i8, ptr %383, align 1
  %385 = icmp eq i8 %384, 0
  %386 = zext i1 %385 to i8
  %387 = getelementptr [50 x i8], ptr %382, i32 0, i32 1
  store i8 %386, ptr %387, align 1
  %388 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 4
  %389 = load i16, ptr %388, align 2
  %390 = getelementptr %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 4, i32 2
  %391 = load i16, ptr %390, align 2
  %392 = and i16 %391, %389
  %393 = getelementptr %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 4, i32 4
  %394 = load i16, ptr %393, align 2
  %395 = and i16 %392, %394
  %396 = icmp eq i16 %395, -1
  br i1 %396, label %399, label %397

397:                                              ; preds = %373
  %398 = or i16 %377, 2
  store i16 %398, ptr %378, align 1
  br label %401

399:                                              ; preds = %373
  %400 = or i16 %377, 1
  store i16 %400, ptr %378, align 1
  store i8 1, ptr %383, align 1
  br label %401

401:                                              ; preds = %399, %397
  store i16 256, ptr %245, align 1
  %402 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 2
  store i16 50, ptr %402, align 1
  %403 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 4
  %404 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 3
  %405 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 2
  %406 = load i32, ptr %405, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %403, ptr align 4 %404, i32 %406, i1 false) #11
  %407 = load i32, ptr %405, align 4
  %408 = add i32 %407, 2
  %409 = getelementptr [50 x i8], ptr %382, i32 0, i32 %408
  %410 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %409, ptr noundef align 4 dereferenceable(16) %410, i32 16, i1 false) #11
  %411 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i16 56, ptr %411, align 1
  %412 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 70, ptr %412, align 1
  br label %485

413:                                              ; preds = %369
  %414 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 2
  %415 = load i32, ptr %414, align 4
  switch i32 %415, label %485 [
    i32 16, label %416
    i32 32, label %439
  ]

416:                                              ; preds = %413
  %417 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 8
  %418 = load i8, ptr %417, align 1
  %419 = icmp eq i8 %418, 0
  %420 = load ptr, ptr %0, align 8
  br i1 %419, label %426, label %421

421:                                              ; preds = %416
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %420, i32 noundef 16, ptr noundef nonnull @.str.25) #11
  %422 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  store i16 4, ptr %422, align 1
  %423 = icmp eq i32 %3, 1
  %424 = select i1 %423, i16 1028, i16 1024
  %425 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  store i16 %424, ptr %425, align 1
  br label %449

426:                                              ; preds = %416
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %420, i32 noundef 16, ptr noundef nonnull @.str.26) #11
  %427 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  store i16 2, ptr %427, align 1
  %428 = icmp eq i32 %3, 1
  %429 = select i1 %428, i16 4, i16 0
  %430 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  store i16 %429, ptr %430, align 1
  %431 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 1
  %432 = load i32, ptr %431, align 4
  %433 = and i32 %432, 1073741824
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %437, label %435

435:                                              ; preds = %426
  %436 = or i16 %429, 2
  store i16 %436, ptr %430, align 1
  br label %449

437:                                              ; preds = %426
  %438 = or i16 %429, 1
  store i16 %438, ptr %430, align 1
  br label %449

439:                                              ; preds = %413
  %440 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %440, i32 noundef 16, ptr noundef nonnull @.str.27) #11
  %441 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  store i16 1, ptr %441, align 1
  %442 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  store i16 4, ptr %442, align 1
  %443 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 1
  %444 = load i32, ptr %443, align 4
  %445 = and i32 %444, 1073741824
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %448, label %447

447:                                              ; preds = %439
  store i16 6, ptr %442, align 1
  br label %449

448:                                              ; preds = %439
  store i16 5, ptr %442, align 1
  br label %449

449:                                              ; preds = %448, %447, %437, %435, %421
  %450 = phi i1 [ false, %435 ], [ false, %437 ], [ true, %421 ], [ false, %447 ], [ false, %448 ]
  store i16 256, ptr %245, align 1
  %451 = load i32, ptr %414, align 4
  %452 = trunc i32 %451 to i16
  %453 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 2
  store i16 %452, ptr %453, align 1
  %454 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 3
  %455 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 3
  %456 = load i32, ptr %414, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %454, ptr align 4 %455, i32 %456, i1 false) #11
  %457 = load i32, ptr %414, align 4
  %458 = trunc i32 %457 to i16
  %459 = add i16 %458, 6
  %460 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i16 %459, ptr %460, align 1
  %461 = load i32, ptr %414, align 4
  %462 = trunc i32 %461 to i16
  %463 = add i16 %462, 10
  br i1 %450, label %464, label %468

464:                                              ; preds = %449
  %465 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 6
  %466 = load i64, ptr %465, align 4
  store i64 %466, ptr %454, align 1
  %467 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %467, ptr noundef align 4 dereferenceable(16) %455, i32 16, i1 false) #11
  store i16 24, ptr %453, align 1
  store i16 30, ptr %460, align 1
  br label %468

468:                                              ; preds = %464, %449
  %469 = phi i16 [ 34, %464 ], [ %463, %449 ]
  %470 = add i16 %469, 10
  %471 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 %470, ptr %471, align 1
  %472 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %473 = load i8, ptr %472, align 1
  %474 = and i8 %473, 1
  %475 = icmp eq i8 %474, 0
  br i1 %475, label %483, label %476

476:                                              ; preds = %468
  %477 = zext i16 %469 to i32
  %478 = getelementptr i8, ptr %245, i32 %477
  store i16 288, ptr %478, align 1
  %479 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %478, i32 0, i32 1
  store i16 6, ptr %479, align 1
  %480 = getelementptr inbounds %struct.host_cmd_tlv_mac_addr, ptr %478, i32 0, i32 1
  %481 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %480, ptr noundef align 4 dereferenceable(6) %481, i32 6, i1 false) #11
  %482 = add i16 %469, 20
  br label %483

483:                                              ; preds = %476, %468
  %484 = phi i16 [ %482, %476 ], [ %470, %468 ]
  store i16 %484, ptr %471, align 1
  br label %485

485:                                              ; preds = %483, %413, %401, %364, %241, %227, %212, %155, %133, %87, %38, %14
  %486 = phi i32 [ 0, %14 ], [ 0, %38 ], [ 0, %87 ], [ 0, %133 ], [ 0, %155 ], [ 0, %212 ], [ 0, %227 ], [ 0, %241 ], [ 0, %401 ], [ %366, %364 ], [ 0, %483 ], [ 0, %413 ]
  ret i32 %486
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_cmd_802_11d_domain_info(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %6 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 75, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.29, i32 noundef %9) #11
  store i16 91, ptr %1, align 1
  store i16 %2, ptr %5, align 1
  %10 = icmp eq i16 %2, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 75
  store i16 7, ptr %6, align 1
  %13 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %13, ptr noundef align 2 dereferenceable(3) %12, i32 3, i1 false)
  %14 = mul nuw nsw i32 %9, 3
  %15 = trunc i32 %14 to i16
  %16 = add nuw nsw i16 %15, 3
  %17 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i16 %16, ptr %17, align 1
  %18 = icmp eq i8 %8, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.mwifiex_ietypes_domain_param_set, ptr %6, i32 0, i32 2
  %21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 75, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %20, ptr align 2 %21, i32 %14, i1 false)
  %22 = add nuw nsw i16 %15, 17
  br label %23

23:                                               ; preds = %19, %11, %3
  %24 = phi i16 [ %22, %19 ], [ 10, %3 ], [ 10, %11 ]
  %25 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 %24, ptr %25, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_recfg_tx_buf(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_amsdu_aggr_ctrl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_11n_cfg(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_802_11_scan_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_cmd_pcie_host_spec(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  store i16 250, ptr %1, align 1
  %7 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 52, ptr %7, align 1
  %8 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 3
  %9 = icmp eq i16 %2, 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(46) %8, i8 0, i64 46, i1 false)
  br i1 %9, label %10, label %35

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %12 = getelementptr inbounds %struct.pcie_service_card, ptr %6, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %11, align 1
  %14 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  store i32 0, ptr %14, align 1
  %15 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  store i32 32, ptr %15, align 1
  %16 = getelementptr inbounds %struct.pcie_service_card, ptr %6, i32 0, i32 16
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 3
  store i32 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 5
  store i32 0, ptr %19, align 1
  %20 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 7
  store i32 32, ptr %20, align 1
  %21 = getelementptr inbounds %struct.pcie_service_card, ptr %6, i32 0, i32 23
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 4
  store i32 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.host_cmd_ds_pcie_details, ptr %11, i32 0, i32 7
  store i32 0, ptr %24, align 1
  %25 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1
  store i32 8, ptr %25, align 1
  %26 = getelementptr inbounds %struct.pcie_service_card, ptr %6, i32 0, i32 28
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %10
  %30 = getelementptr inbounds %struct.pcie_service_card, ptr %6, i32 0, i32 29
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 4
  store i32 %31, ptr %32, align 1
  %33 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 8
  store i32 0, ptr %33, align 1
  %34 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %34, i32 noundef 1073741824, ptr noundef nonnull @.str.30, i32 noundef %31) #11
  br label %35

35:                                               ; preds = %29, %10, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_cmd_802_11_subsc_evt(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  store i16 117, ptr %1, align 1
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 12, ptr %5, align 1
  %6 = load i16, ptr %2, align 2
  store i16 %6, ptr %4, align 1
  %7 = load ptr, ptr %0, align 8
  %8 = load i16, ptr %2, align 2
  %9 = zext i16 %8 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 16, ptr noundef nonnull @.str.31, i32 noundef %9) #11
  %10 = load i16, ptr %2, align 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %68, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %2, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  store i16 %14, ptr %15, align 1
  %16 = load i16, ptr %13, align 2
  %17 = load ptr, ptr %0, align 8
  %18 = zext i16 %16 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %17, i32 noundef 16, ptr noundef nonnull @.str.32, i32 noundef %18) #11
  %19 = load i16, ptr %2, align 2
  %20 = icmp eq i16 %19, 3
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = icmp eq i16 %19, 2
  %23 = icmp eq i16 %16, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %27, label %29

25:                                               ; preds = %12
  %26 = icmp eq i16 %16, 0
  br i1 %26, label %27, label %68

27:                                               ; preds = %25, %21
  %28 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %28, i32 noundef 4, ptr noundef nonnull @.str.33) #11
  br label %68

29:                                               ; preds = %21
  %30 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  %31 = and i32 %18, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  store i16 260, ptr %30, align 1
  %34 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  store i16 2, ptr %34, align 1
  %35 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %2, i32 0, i32 2
  %36 = load i8, ptr %35, align 2
  %37 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  store i8 %36, ptr %37, align 1
  %38 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %2, i32 0, i32 2, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr inbounds %struct.mwifiex_ie_types_rssi_threshold, ptr %30, i32 0, i32 2
  store i8 %39, ptr %40, align 1
  %41 = load ptr, ptr %0, align 8
  %42 = load i8, ptr %35, align 2
  %43 = zext i8 %42 to i32
  %44 = load i8, ptr %38, align 1
  %45 = zext i8 %44 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %41, i32 noundef 32, ptr noundef nonnull @.str.34, i32 noundef %43, i32 noundef %45) #11
  %46 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 2
  %47 = load i16, ptr %5, align 1
  %48 = add i16 %47, 6
  store i16 %48, ptr %5, align 1
  br label %49

49:                                               ; preds = %33, %29
  %50 = phi ptr [ %46, %33 ], [ %30, %29 ]
  %51 = and i32 %18, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %49
  store i16 278, ptr %50, align 1
  %54 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %50, i32 0, i32 1
  store i16 2, ptr %54, align 1
  %55 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %2, i32 0, i32 3
  %56 = load i8, ptr %55, align 2
  %57 = getelementptr inbounds %struct.mwifiex_ie_types_rssi_threshold, ptr %50, i32 0, i32 1
  store i8 %56, ptr %57, align 1
  %58 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %2, i32 0, i32 3, i32 1
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr inbounds %struct.mwifiex_ie_types_rssi_threshold, ptr %50, i32 0, i32 2
  store i8 %59, ptr %60, align 1
  %61 = load ptr, ptr %0, align 8
  %62 = load i8, ptr %55, align 2
  %63 = zext i8 %62 to i32
  %64 = load i8, ptr %58, align 1
  %65 = zext i8 %64 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %61, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef %63, i32 noundef %65) #11
  %66 = load i16, ptr %5, align 1
  %67 = add i16 %66, 6
  store i16 %67, ptr %5, align 1
  br label %68

68:                                               ; preds = %53, %49, %27, %25, %3
  %69 = phi i32 [ -22, %27 ], [ 0, %3 ], [ 0, %53 ], [ 0, %49 ], [ 0, %25 ]
  ret i32 %69
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_cmd_mef_cfg(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4
  store i16 154, ptr %0, align 1
  %4 = load i32, ptr %1, align 4
  store i32 %4, ptr %3, align 1
  %5 = getelementptr inbounds %struct.mwifiex_ds_mef_cfg, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 0, i32 2
  store i16 %6, ptr %7, align 1
  %8 = getelementptr %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 0, i32 3
  %9 = load i16, ptr %5, align 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = ptrtoint ptr %8 to i32
  br label %82

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.mwifiex_ds_mef_cfg, ptr %1, i32 0, i32 2
  br label %15

15:                                               ; preds = %72, %13
  %16 = phi i32 [ 0, %13 ], [ %78, %72 ]
  %17 = phi ptr [ %8, %13 ], [ %75, %72 ]
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr %struct.mwifiex_mef_entry, ptr %18, i32 %16
  %20 = load i8, ptr %19, align 2
  store i8 %20, ptr %17, align 1
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr %struct.mwifiex_mef_entry, ptr %21, i32 %16, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.mwifiex_fw_mef_entry, ptr %17, i32 0, i32 1
  store i8 %23, ptr %24, align 1
  %25 = getelementptr i8, ptr %17, i32 4
  %26 = load ptr, ptr %14, align 4
  %27 = ptrtoint ptr %25 to i32
  br label %31

28:                                               ; preds = %65
  %29 = add nuw nsw i32 %33, 1
  %30 = icmp eq i32 %29, 10
  br i1 %30, label %70, label %31

31:                                               ; preds = %28, %15
  %32 = phi ptr [ %25, %15 ], [ %66, %28 ]
  %33 = phi i32 [ 0, %15 ], [ %29, %28 ]
  %34 = getelementptr %struct.mwifiex_mef_entry, ptr %26, i32 %16, i32 2, i32 %33, i32 3
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = ptrtoint ptr %32 to i32
  %39 = sub i32 %38, %27
  br label %72

40:                                               ; preds = %31
  %41 = getelementptr %struct.mwifiex_mef_entry, ptr %26, i32 %16, i32 2, i32 %33
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  store i32 %43, ptr %32, align 1
  %44 = getelementptr i8, ptr %32, i32 4
  store i8 1, ptr %44, align 1
  %45 = getelementptr i8, ptr %32, i32 5
  %46 = getelementptr %struct.mwifiex_mef_entry, ptr %26, i32 %16, i32 2, i32 %33, i32 2
  %47 = getelementptr %struct.mwifiex_mef_entry, ptr %26, i32 %16, i32 2, i32 %33, i32 2, i32 6
  %48 = load i8, ptr %47, align 2
  %49 = sext i8 %48 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %45, ptr align 2 %46, i32 %49, i1 false) #11
  %50 = getelementptr i8, ptr %45, i32 %49
  store i8 %48, ptr %50, align 1
  %51 = getelementptr i8, ptr %50, i32 1
  store i8 2, ptr %51, align 1
  %52 = getelementptr i8, ptr %51, i32 1
  %53 = getelementptr %struct.mwifiex_mef_entry, ptr %26, i32 %16, i32 2, i32 %33, i32 1
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i32
  store i32 %55, ptr %52, align 1
  %56 = getelementptr i8, ptr %52, i32 4
  store i8 1, ptr %56, align 1
  %57 = getelementptr i8, ptr %56, i32 1
  %58 = load i8, ptr %34, align 1
  store i8 %58, ptr %57, align 1
  %59 = getelementptr i8, ptr %57, i32 1
  %60 = getelementptr %struct.mwifiex_mef_entry, ptr %26, i32 %16, i32 2, i32 %33, i32 4
  %61 = load i8, ptr %60, align 2
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %40
  store i8 %61, ptr %59, align 1
  %64 = getelementptr i8, ptr %59, i32 1
  br label %65

65:                                               ; preds = %63, %40
  %66 = phi ptr [ %64, %63 ], [ %59, %40 ]
  %67 = ptrtoint ptr %66 to i32
  %68 = sub i32 %67, %27
  %69 = icmp sgt i32 %68, 100
  br i1 %69, label %89, label %28

70:                                               ; preds = %28
  %71 = ptrtoint ptr %66 to i32
  br label %72

72:                                               ; preds = %70, %37
  %73 = phi i32 [ %39, %37 ], [ %68, %70 ]
  %74 = phi i32 [ %38, %37 ], [ %71, %70 ]
  %75 = phi ptr [ %32, %37 ], [ %66, %70 ]
  %76 = trunc i32 %73 to i16
  %77 = getelementptr inbounds %struct.mwifiex_fw_mef_entry, ptr %17, i32 0, i32 2
  store i16 %76, ptr %77, align 1
  %78 = add nuw nsw i32 %16, 1
  %79 = load i16, ptr %5, align 4
  %80 = zext i16 %79 to i32
  %81 = icmp ult i32 %78, %80
  br i1 %81, label %15, label %82

82:                                               ; preds = %72, %11
  %83 = phi i32 [ %12, %11 ], [ %74, %72 ]
  %84 = ptrtoint ptr %3 to i32
  %85 = sub i32 %83, %84
  %86 = trunc i32 %85 to i16
  %87 = add i16 %86, 8
  %88 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 1
  store i16 %87, ptr %88, align 1
  br label %89

89:                                               ; preds = %82, %65
  %90 = phi i32 [ 0, %82 ], [ -1, %65 ]
  ret i32 %90
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_cmd_coalesce_cfg(ptr nocapture noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4
  store i16 266, ptr %0, align 1
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 1
  store i16 8, ptr %5, align 1
  store i16 %1, ptr %4, align 1
  %6 = load i16, ptr %2, align 2
  %7 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 0, i32 1
  store i16 %6, ptr %7, align 1
  %8 = load i16, ptr %2, align 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %63, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %0, i32 0, i32 4, i32 0, i32 2
  br label %12

12:                                               ; preds = %48, %10
  %13 = phi i32 [ 0, %10 ], [ %57, %48 ]
  %14 = phi ptr [ %11, %10 ], [ %56, %48 ]
  store i16 410, ptr %14, align 1
  %15 = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %2, i32 0, i32 1, i32 %13
  %16 = load i16, ptr %15, align 2
  %17 = getelementptr inbounds %struct.coalesce_receive_filt_rule, ptr %14, i32 0, i32 3
  store i16 %16, ptr %17, align 1
  %18 = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %2, i32 0, i32 1, i32 %13, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr inbounds %struct.coalesce_receive_filt_rule, ptr %14, i32 0, i32 2
  store i8 %19, ptr %20, align 1
  %21 = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %2, i32 0, i32 1, i32 %13, i32 1
  %22 = load i8, ptr %21, align 2
  %23 = getelementptr inbounds %struct.coalesce_receive_filt_rule, ptr %14, i32 0, i32 1
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.coalesce_receive_filt_rule, ptr %14, i32 0, i32 4
  %25 = load i8, ptr %21, align 2
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %27, %12
  %28 = phi i32 [ %44, %27 ], [ 0, %12 ]
  %29 = phi i16 [ %42, %27 ], [ 0, %12 ]
  %30 = phi ptr [ %43, %27 ], [ %24, %12 ]
  %31 = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %2, i32 0, i32 1, i32 %13, i32 3, i32 %28
  %32 = load i8, ptr %31, align 2
  store i8 %32, ptr %30, align 2
  %33 = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %2, i32 0, i32 1, i32 %13, i32 3, i32 %28, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.coalesce_filt_field_param, ptr %30, i32 0, i32 1
  store i8 %34, ptr %35, align 1
  %36 = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %2, i32 0, i32 1, i32 %13, i32 3, i32 %28, i32 2
  %37 = load i16, ptr %36, align 2
  %38 = getelementptr inbounds %struct.coalesce_filt_field_param, ptr %30, i32 0, i32 2
  store i16 %37, ptr %38, align 2
  %39 = getelementptr inbounds %struct.coalesce_filt_field_param, ptr %30, i32 0, i32 3
  %40 = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %2, i32 0, i32 1, i32 %13, i32 3, i32 %28, i32 3
  %41 = zext i8 %34 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %39, ptr align 2 %40, i32 %41, i1 false)
  %42 = add nuw nsw i16 %29, 8
  %43 = getelementptr %struct.coalesce_filt_field_param, ptr %30, i32 1
  %44 = add nuw nsw i32 %28, 1
  %45 = load i8, ptr %21, align 2
  %46 = zext i8 %45 to i32
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %27, label %48

48:                                               ; preds = %27, %12
  %49 = phi i16 [ 0, %12 ], [ %42, %27 ]
  %50 = zext i16 %49 to i32
  %51 = or i16 %49, 4
  %52 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %14, i32 0, i32 1
  store i16 %51, ptr %52, align 1
  %53 = add i16 %49, 8
  %54 = load i16, ptr %5, align 1
  %55 = add i16 %53, %54
  store i16 %55, ptr %5, align 1
  %56 = getelementptr i8, ptr %24, i32 %50
  %57 = add nuw nsw i32 %13, 1
  %58 = load i16, ptr %2, align 2
  %59 = zext i16 %58 to i32
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %12, label %61

61:                                               ; preds = %48
  %62 = add i16 %55, 4
  br label %63

63:                                               ; preds = %61, %3
  %64 = phi i16 [ %62, %61 ], [ 12, %3 ]
  store i16 %64, ptr %5, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_cmd_tdls_oper(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 140
  %6 = load ptr, ptr %5, align 4
  store i16 290, ptr %1, align 1
  %7 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 18, ptr %7, align 1
  %8 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  store i16 0, ptr %8, align 1
  %9 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  %10 = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %9, ptr noundef align 2 dereferenceable(6) %10, i32 6, i1 false)
  %11 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 2
  %12 = load i16, ptr %2, align 4
  switch i16 %12, label %110 [
    i16 0, label %13
    i16 2, label %14
    i16 3, label %15
  ]

13:                                               ; preds = %3
  store i16 0, ptr %4, align 1
  br label %112

14:                                               ; preds = %3
  store i16 1, ptr %4, align 1
  br label %112

15:                                               ; preds = %3
  store i16 2, ptr %4, align 1
  %16 = icmp eq ptr %6, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %18, i32 noundef 4, ptr noundef nonnull @.str.36, ptr noundef %10) #11
  br label %116

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.station_parameters, ptr %6, i32 0, i32 17
  %21 = load i16, ptr %20, align 4
  store i16 %21, ptr %11, align 1
  %22 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 3
  store i16 46, ptr %22, align 1
  %23 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 4
  store i16 1, ptr %23, align 1
  %24 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 5
  store i8 0, ptr %24, align 1
  %25 = getelementptr inbounds %struct.station_parameters, ptr %6, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = getelementptr i8, ptr %11, i32 7
  store i16 45, ptr %29, align 1
  %30 = getelementptr i8, ptr %11, i32 9
  store i16 26, ptr %30, align 1
  %31 = getelementptr i8, ptr %11, i32 11
  %32 = load ptr, ptr %25, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(26) %31, ptr noundef align 1 dereferenceable(26) %32, i32 26, i1 false)
  br label %33

33:                                               ; preds = %28, %19
  %34 = phi i16 [ 37, %28 ], [ 7, %19 ]
  %35 = load ptr, ptr %6, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.station_parameters, ptr %6, i32 0, i32 9
  %39 = load i8, ptr %38, align 2
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %37
  %42 = zext i16 %34 to i32
  %43 = getelementptr i8, ptr %11, i32 %42
  store i16 1, ptr %43, align 1
  %44 = load i8, ptr %38, align 2
  %45 = zext i8 %44 to i16
  %46 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %43, i32 0, i32 1
  store i16 %45, ptr %46, align 1
  %47 = getelementptr inbounds %struct.host_cmd_tlv_rates, ptr %43, i32 0, i32 1
  %48 = load ptr, ptr %6, align 4
  %49 = load i8, ptr %38, align 2
  %50 = zext i8 %49 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %47, ptr align 1 %48, i32 %50, i1 false)
  %51 = load i8, ptr %38, align 2
  %52 = zext i8 %51 to i16
  %53 = add nuw nsw i16 %34, 4
  %54 = add nuw nsw i16 %53, %52
  br label %55

55:                                               ; preds = %41, %37, %33
  %56 = phi i16 [ %54, %41 ], [ %34, %37 ], [ %34, %33 ]
  %57 = getelementptr inbounds %struct.station_parameters, ptr %6, i32 0, i32 18
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %78, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.station_parameters, ptr %6, i32 0, i32 19
  %62 = load i8, ptr %61, align 4
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %60
  %65 = zext i16 %56 to i32
  %66 = getelementptr i8, ptr %11, i32 %65
  store i16 127, ptr %66, align 1
  %67 = load i8, ptr %61, align 4
  %68 = zext i8 %67 to i16
  %69 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %66, i32 0, i32 1
  store i16 %68, ptr %69, align 1
  %70 = getelementptr inbounds %struct.mwifiex_ie_types_extcap, ptr %66, i32 0, i32 1
  %71 = load ptr, ptr %57, align 4
  %72 = load i8, ptr %61, align 4
  %73 = zext i8 %72 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %70, ptr align 1 %71, i32 %73, i1 false)
  %74 = load i8, ptr %61, align 4
  %75 = zext i8 %74 to i16
  %76 = add nuw nsw i16 %56, 4
  %77 = add nuw nsw i16 %76, %75
  br label %78

78:                                               ; preds = %64, %60, %55
  %79 = phi i16 [ %77, %64 ], [ %56, %60 ], [ %56, %55 ]
  %80 = getelementptr inbounds %struct.station_parameters, ptr %6, i32 0, i32 13
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %78
  %84 = zext i16 %79 to i32
  %85 = getelementptr i8, ptr %11, i32 %84
  store i16 191, ptr %85, align 1
  %86 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %85, i32 0, i32 1
  store i16 12, ptr %86, align 1
  %87 = getelementptr inbounds %struct.mwifiex_ie_types_vhtcap, ptr %85, i32 0, i32 1
  %88 = load ptr, ptr %80, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %87, ptr noundef align 1 dereferenceable(12) %88, i32 12, i1 false)
  %89 = add nuw nsw i16 %79, 16
  br label %90

90:                                               ; preds = %83, %78
  %91 = phi i16 [ %89, %83 ], [ %79, %78 ]
  %92 = getelementptr inbounds %struct.station_parameters, ptr %6, i32 0, i32 6
  %93 = load i16, ptr %92, align 4
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %90
  %96 = zext i16 %91 to i32
  %97 = getelementptr i8, ptr %11, i32 %96
  store i16 197, ptr %97, align 1
  %98 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %97, i32 0, i32 1
  store i16 2, ptr %98, align 1
  %99 = load i16, ptr %92, align 4
  %100 = getelementptr inbounds %struct.mwifiex_ie_types_aid, ptr %97, i32 0, i32 1
  store i16 %99, ptr %100, align 1
  %101 = add nuw nsw i16 %91, 6
  br label %102

102:                                              ; preds = %95, %90
  %103 = phi i16 [ %101, %95 ], [ %91, %90 ]
  %104 = zext i16 %103 to i32
  %105 = getelementptr i8, ptr %11, i32 %104
  store i16 450, ptr %105, align 1
  %106 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %105, i32 0, i32 1
  store i16 2, ptr %106, align 1
  %107 = getelementptr inbounds %struct.mwifiex_ie_types_tdls_idle_timeout, ptr %105, i32 0, i32 1
  store i16 60, ptr %107, align 1
  %108 = add nuw nsw i16 %103, 6
  %109 = load i16, ptr %7, align 1
  br label %112

110:                                              ; preds = %3
  %111 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %111, i32 noundef 4, ptr noundef nonnull @.str.37) #11
  br label %116

112:                                              ; preds = %102, %14, %13
  %113 = phi i16 [ %109, %102 ], [ 18, %14 ], [ 18, %13 ]
  %114 = phi i16 [ %108, %102 ], [ 0, %14 ], [ 0, %13 ]
  %115 = add i16 %113, %114
  store i16 %115, ptr %7, align 1
  br label %116

116:                                              ; preds = %112, %110, %17
  %117 = phi i32 [ -95, %110 ], [ 0, %112 ], [ -61, %17 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_cmd_tdls_config(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  store i16 256, ptr %1, align 1
  %6 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 %2, ptr %5, align 1
  store i16 10, ptr %6, align 1
  switch i16 %2, label %16 [
    i16 0, label %7
    i16 6, label %10
    i16 7, label %12
    i16 8, label %14
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  %9 = load i16, ptr %3, align 1
  store i16 %9, ptr %8, align 1
  br label %18

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(15) %11, ptr noundef align 1 dereferenceable(15) %3, i32 15, i1 false)
  br label %18

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %13, ptr noundef align 1 dereferenceable(6) %3, i32 6, i1 false)
  br label %18

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %15, ptr noundef align 1 dereferenceable(3) %3, i32 3, i1 false)
  br label %18

16:                                               ; preds = %4
  %17 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %17, i32 noundef 4, ptr noundef nonnull @.str.38) #11
  br label %20

18:                                               ; preds = %14, %12, %10, %7
  %19 = phi i16 [ 13, %14 ], [ 16, %12 ], [ 25, %10 ], [ 12, %7 ]
  store i16 %19, ptr %6, align 1
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ -95, %16 ], [ 0, %18 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_issue_chan_report_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_sta_init_cmd(ptr noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.mwifiex_ds_11n_amsdu_aggr_ctrl, align 4
  %5 = alloca %struct.mwifiex_ds_auto_ds, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mwifiex_ds_11n_tx_cfg, align 2
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %7, i8 0, i32 6, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #11
  store i8 0, ptr %8, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #11
  store i16 0, ptr %9, align 2, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  store i32 0, ptr %10, align 4, !annotation !9
  %12 = icmp eq i8 %1, 0
  br i1 %12, label %92, label %13

13:                                               ; preds = %3
  %14 = load i8, ptr %11, align 4
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 250, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %138

19:                                               ; preds = %16, %13
  %20 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 169, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %138

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 127
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %24, ptr noundef nonnull @.str.3, ptr noundef nonnull %10, i32 noundef 1, i32 noundef 0) #11
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, ptr %10, align 4
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 107, i32 1
  store i8 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load ptr, ptr %23, align 4
  %35 = call i32 @mwifiex_dnld_dt_cfgdata(ptr noundef %0, ptr noundef %34, ptr noundef nonnull @.str.4)
  br label %36

36:                                               ; preds = %33, %22
  %37 = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 126
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 143, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #11
  br label %42

42:                                               ; preds = %40, %36
  %43 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 3, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %138

45:                                               ; preds = %42
  %46 = load ptr, ptr %0, align 8
  %47 = load i8, ptr %46, align 4
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.mwifiex_adapter, ptr %46, i32 0, i32 47
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 65536
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.mwifiex_adapter, ptr %46, i32 0, i32 41
  %56 = load i8, ptr %55, align 2, !range !8
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  store i8 1, ptr %8, align 1
  %59 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 547, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %8, i1 noundef zeroext true) #11
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %62, i32 noundef 4, ptr noundef nonnull @.str.5) #11
  %63 = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 42
  store i8 0, ptr %63, align 1
  br label %64

64:                                               ; preds = %61, %58, %54, %49, %45
  %65 = load ptr, ptr %0, align 8
  %66 = getelementptr inbounds %struct.mwifiex_adapter, ptr %65, i32 0, i32 39
  %67 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 217, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %66, i1 noundef zeroext true) #11
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %138

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 1
  %71 = load i8, ptr %70, align 4
  %72 = icmp eq i8 %71, 1
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %0, align 8
  %75 = getelementptr inbounds %struct.mwifiex_adapter, ptr %74, i32 0, i32 89
  store i16 1, ptr %75, align 4
  %76 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 228, i16 noundef zeroext 255, i32 noundef 16, ptr noundef null, i1 noundef zeroext true) #11
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %138

78:                                               ; preds = %73, %69
  %79 = load i8, ptr @drcs, align 1, !range !8
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 158
  store i8 1, ptr %82, align 1
  %83 = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 47
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 32768
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %81
  %88 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 289, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %82, i1 noundef zeroext true) #11
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %138

90:                                               ; preds = %87, %81, %78
  %91 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 578, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #11
  br label %92

92:                                               ; preds = %90, %3
  %93 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 214, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #11
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %138

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 32
  store i32 0, ptr %96, align 8
  %97 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 30, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #11
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %138

99:                                               ; preds = %95
  store i32 1, ptr %4, align 4
  %100 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 223, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %4, i1 noundef zeroext true) #11
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %138

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 17
  %104 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 40, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %103, i1 noundef zeroext true) #11
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %138

106:                                              ; preds = %102
  %107 = load i8, ptr @disable_auto_ds, align 1, !range !8
  %108 = icmp eq i8 %107, 0
  %109 = icmp ne i8 %1, 0
  %110 = and i1 %109, %108
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 1
  %113 = load i8, ptr %112, align 4
  %114 = icmp eq i8 %113, 1
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  store i16 1, ptr %5, align 4
  %116 = getelementptr inbounds %struct.mwifiex_ds_auto_ds, ptr %5, i32 0, i32 1
  store i16 100, ptr %116, align 2
  %117 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 228, i16 noundef zeroext 255, i32 noundef 1, ptr noundef nonnull %5, i1 noundef zeroext true) #11
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %115, %111, %106
  %120 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 1
  %121 = load i8, ptr %120, align 4
  %122 = icmp eq i8 %121, 1
  br i1 %122, label %128, label %123

123:                                              ; preds = %119
  store i32 1, ptr %6, align 4
  %124 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 22, i16 noundef zeroext 1, i32 noundef 9, ptr noundef nonnull %6, i1 noundef zeroext true) #11
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %127, i32 noundef 4, ptr noundef nonnull @.str.6) #11
  br label %128

128:                                              ; preds = %126, %123, %119
  %129 = load i8, ptr @aggr_ctrl, align 1, !range !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  store i16 1, ptr %9, align 2
  %132 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 593, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %9, i1 noundef zeroext true) #11
  br label %133

133:                                              ; preds = %131, %128
  store i16 114, ptr %7, align 2
  %134 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 205, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %7, i1 noundef zeroext true) #11
  br i1 %2, label %135, label %138

135:                                              ; preds = %133
  %136 = load ptr, ptr %0, align 8
  %137 = getelementptr inbounds %struct.mwifiex_adapter, ptr %136, i32 0, i32 62
  store i16 205, ptr %137, align 4
  br label %138

138:                                              ; preds = %135, %133, %115, %102, %99, %95, %92, %87, %73, %64, %42, %19, %16
  %139 = phi i32 [ -1, %16 ], [ -1, %19 ], [ -1, %42 ], [ -1, %64 ], [ -1, %73 ], [ -1, %87 ], [ -1, %92 ], [ -1, %95 ], [ -1, %99 ], [ -1, %102 ], [ -1, %115 ], [ -115, %135 ], [ %134, %133 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %139
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }

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
