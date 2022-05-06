; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/cfg80211.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/cfg80211.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_add_virtual_intf:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_add_virtual_intf\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_add_virtual_intf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_del_virtual_intf:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_del_virtual_intf\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_del_virtual_intf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_txrx_stypes = type { i16, i16 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.wiphy_coalesce_support = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.mwifiex_channel_band = type { %struct.mwifiex_band_config, i8 }
%struct.mwifiex_band_config = type { i8 }
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
%struct.mwifiex_uap_bss_param = type <{ i8, i8, i16, i16, i8, i8, %struct.mwifiex_802_11_ssid, i8, i8, i8, i8, i16, i16, i16, i16, i16, [2 x i8], %struct.wpa_param, [4 x %struct.wep_key], %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, [14 x i8], i32, i32, i8, i8, %struct.mwifiex_types_wmm_info, [2 x i8] }>
%struct.mwifiex_802_11_ssid = type { i32, [32 x i8] }
%struct.wpa_param = type { i8, i8, i8, i32, [64 x i8] }
%struct.wep_key = type { i8, i8, i16, [13 x i8] }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.mwifiex_types_wmm_info = type { [4 x i8], i8, i8, i8, i8, [4 x %struct.ieee_types_wmm_ac_parameters] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_11h_intf_state = type { i8, i8 }
%struct.mwifiex_ds_mem_rw = type { i32, i32 }
%struct.mwifiex_user_scan_chan = type { i8, i8, i8, i8, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.140, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.140 = type { i64, i64, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.121, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.141, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.121 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%union.anon.141 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.mwifiex_ds_mef_cfg = type { i32, i16, ptr }
%struct.mwifiex_ds_hs_cfg = type { i32, i32, i32, i32 }
%struct.cfg80211_wowlan = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr }
%struct.mwifiex_mef_entry = type { i8, i8, [10 x %struct.mwifiex_mef_filter] }
%struct.mwifiex_mef_filter = type { i16, i16, [7 x i8], i8, i8 }
%struct.in_device = type { ptr, %struct.netdevice_tracker, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.cfg80211_pkt_pattern = type { ptr, ptr, i32, i32 }
%struct.mwifiex_ds_wakeup_reason = type { i16 }
%struct.cfg80211_wowlan_wakeup = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr }
%struct.cfg80211_wowlan_nd_info = type { i32, [0 x ptr] }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.mwifiex_ds_encrypt_key = type { i32, i32, i32, [32 x i8], [6 x i8], i32, [16 x i8], i8, i8, i8, i8, i8 }
%struct.cfg80211_ap_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, i32, i32, ptr, i32, i32, %struct.cfg80211_crypto_settings, i8, i32, i32, i32, i8, i8, ptr, i8, %struct.cfg80211_bitrate_mask, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.cfg80211_fils_discovery, %struct.cfg80211_unsol_bcast_probe_resp, %struct.cfg80211_mbssid_config }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.148] }
%struct.anon.148 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.cfg80211_fils_discovery = type { i32, i32, i32, ptr }
%struct.cfg80211_unsol_bcast_probe_resp = type { i32, i32, ptr }
%struct.cfg80211_mbssid_config = type { ptr, i8, i8 }
%struct.station_parameters = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, ptr, ptr, i8, i8, i32, i16, ptr, i8, ptr, i8, ptr, i8, i8, i8, i32, ptr, i8, i16, %struct.sta_txpwr, ptr }
%struct.sta_txpwr = type { i16, i32 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.mwifiex_user_scan_cfg = type <{ i8, i8, i8, [6 x i8], ptr, i8, [50 x %struct.mwifiex_user_scan_chan], i16, [6 x i8] }>
%struct.cfg80211_connect_resp_params = type { i32, ptr, ptr, ptr, i32, ptr, i32, %struct.cfg80211_fils_resp_params, i32 }
%struct.cfg80211_fils_resp_params = type { ptr, i32, i8, i16, ptr, i32, ptr }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_bss_selection = type { i32, %union.anon.149 }
%union.anon.149 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.mwifiex_power_cfg = type { i32, i32, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.mwifiex_chan_stats = type { i8, i8, i8, i8, i16, i16, i16 }
%struct.cfg80211_mgmt_tx_params = type { ptr, i8, i32, ptr, i32, i8, i8, i32, ptr }
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
%struct.mgmt_frame_regs = type { i32, i32, i32, i32 }
%struct.mwifiex_ds_ant_cfg = type { i32, i32 }
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.mwifiex_bg_scan_cfg = type <{ i16, i8, i8, i8, i32, i32, i8, i8, i8, i16, i16, ptr, i8, [38 x %struct.mwifiex_user_scan_chan], i16 }>
%struct.mwifiex_radar_params = type { ptr, i32 }
%struct.mwifiex_ds_coalesce_cfg = type { i16, [8 x %struct.mwifiex_coalesce_rule] }
%struct.mwifiex_coalesce_rule = type { i16, i8, i8, [4 x %struct.filt_field_param] }
%struct.filt_field_param = type { i8, i8, i16, [4 x i8] }
%struct.cfg80211_coalesce = type { ptr, i32 }
%struct.cfg80211_coalesce_rules = type { i32, i32, ptr, i32 }
%struct.cfg80211_csa_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, ptr, ptr, i32, i32, %struct.cfg80211_beacon_data, i8, i8, i8 }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.mwifiex_bss_info = type { i32, %struct.cfg80211_ssid, i32, [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8] }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }

@__param_str_reg_alpha2 = internal constant [11 x i8] c"reg_alpha2\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@reg_alpha2 = internal global ptr null, align 4
@__param_reg_alpha2 = internal constant %struct.kernel_param { ptr @__param_str_reg_alpha2, ptr @__this_module, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.116 { ptr @reg_alpha2 } }, section "__param", align 4
@__UNIQUE_ID_reg_alpha2type459 = internal constant [26 x i8] c"parmtype=reg_alpha2:charp\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [32 x i8] c"11D: setting domain info in FW\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"cannot create multiple sta/adhoc ifaces\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"could not get free private struct\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"cannot create multiple AP ifaces\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"cannot create multiple P2P ifaces\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"type not supported\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"no memory available for netdevice\0A\00", align 1
@mwifiex_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"MWIFIEX_DFS_CAC%s\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"cannot alloc DFS CAC queue\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"MWIFIEX_DFS_CHSW%s\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"cannot alloc DFS channel sw queue\0A\00", align 1
@mwifiex_add_virtual_intf.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"&priv->async_mutex\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"cannot register network device\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"info: %s: Marvell 802.11 Adapter\0A\00", align 1
@__kstrtab_mwifiex_add_virtual_intf = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_add_virtual_intf = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_add_virtual_intf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_add_virtual_intf to i32), ptr @__kstrtab_mwifiex_add_virtual_intf, ptr @__kstrtabns_mwifiex_add_virtual_intf }, section "___ksymtab_gpl+mwifiex_add_virtual_intf", align 4
@__kstrtab_mwifiex_del_virtual_intf = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_del_virtual_intf = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_del_virtual_intf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_del_virtual_intf to i32), ptr @__kstrtab_mwifiex_del_virtual_intf, ptr @__kstrtabns_mwifiex_del_virtual_intf }, section "___ksymtab_gpl+mwifiex_del_virtual_intf", align 4
@mwifiex_band_2ghz = internal global %struct.ieee80211_supported_band { ptr @mwifiex_channels_2ghz, ptr @mwifiex_rates, i32 0, i32 14, i32 12, %struct.ieee80211_sta_ht_cap zeroinitializer, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, align 4
@mwifiex_band_5ghz = internal global %struct.ieee80211_supported_band { ptr @mwifiex_channels_5ghz, ptr getelementptr (i8, ptr @mwifiex_rates, i64 48), i32 0, i32 31, i32 8, %struct.ieee80211_sta_ht_cap zeroinitializer, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, align 4
@mwifiex_cfg80211_ops = internal global %struct.cfg80211_ops { ptr @mwifiex_cfg80211_suspend, ptr @mwifiex_cfg80211_resume, ptr @mwifiex_cfg80211_set_wakeup, ptr @mwifiex_add_virtual_intf, ptr @mwifiex_del_virtual_intf, ptr @mwifiex_cfg80211_change_virtual_intf, ptr @mwifiex_cfg80211_add_key, ptr null, ptr @mwifiex_cfg80211_del_key, ptr @mwifiex_cfg80211_set_default_key, ptr @mwifiex_cfg80211_set_default_mgmt_key, ptr null, ptr @mwifiex_cfg80211_start_ap, ptr @mwifiex_cfg80211_change_beacon, ptr @mwifiex_cfg80211_stop_ap, ptr @mwifiex_cfg80211_add_station, ptr @mwifiex_cfg80211_del_station, ptr @mwifiex_cfg80211_change_station, ptr @mwifiex_cfg80211_get_station, ptr @mwifiex_cfg80211_dump_station, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mwifiex_cfg80211_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mwifiex_cfg80211_connect, ptr null, ptr @mwifiex_cfg80211_disconnect, ptr @mwifiex_cfg80211_join_ibss, ptr @mwifiex_cfg80211_leave_ibss, ptr null, ptr @mwifiex_cfg80211_set_wiphy_params, ptr @mwifiex_cfg80211_set_tx_power, ptr @mwifiex_cfg80211_get_tx_power, ptr null, ptr @mwifiex_cfg80211_set_bitrate_mask, ptr @mwifiex_cfg80211_dump_survey, ptr null, ptr null, ptr null, ptr @mwifiex_cfg80211_remain_on_channel, ptr @mwifiex_cfg80211_cancel_remain_on_channel, ptr @mwifiex_cfg80211_mgmt_tx, ptr null, ptr @mwifiex_cfg80211_set_power_mgmt, ptr @mwifiex_cfg80211_set_cqm_rssi_config, ptr null, ptr null, ptr @mwifiex_cfg80211_update_mgmt_frame_registrations, ptr @mwifiex_cfg80211_set_antenna, ptr @mwifiex_cfg80211_get_antenna, ptr @mwifiex_cfg80211_sched_scan_start, ptr @mwifiex_cfg80211_sched_scan_stop, ptr @mwifiex_set_rekey_data, ptr @mwifiex_cfg80211_tdls_mgmt, ptr @mwifiex_cfg80211_tdls_oper, ptr null, ptr null, ptr @mwifiex_cfg80211_get_channel, ptr null, ptr null, ptr null, ptr @mwifiex_cfg80211_start_radar_detection, ptr null, ptr null, ptr null, ptr null, ptr @mwifiex_cfg80211_set_coalesce, ptr @mwifiex_cfg80211_channel_switch, ptr null, ptr null, ptr null, ptr null, ptr @mwifiex_cfg80211_tdls_chan_switch, ptr @mwifiex_cfg80211_tdls_cancel_chan_switch, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"%s: creating new wiphy\0A\00", align 1
@__func__.mwifiex_register_cfg80211 = private unnamed_addr constant [26 x i8] c"mwifiex_register_cfg80211\00", align 1
@mwifiex_mgmt_stypes = internal constant [13 x %struct.ieee80211_txrx_stypes] [%struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 8224, i16 8208 }, %struct.ieee80211_txrx_stypes { i16 8224, i16 8208 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes { i16 8224, i16 8208 }, %struct.ieee80211_txrx_stypes { i16 8224, i16 8208 }, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer, %struct.ieee80211_txrx_stypes zeroinitializer], align 2
@mwifiex_iface_comb_ap_sta_drcs = internal constant %struct.ieee80211_iface_combination { ptr @mwifiex_ap_sta_limits, i32 2, i16 3, i8 1, i8 1, i8 0, i8 0, i32 0 }, align 4
@mwifiex_iface_comb_ap_sta_vht = internal constant %struct.ieee80211_iface_combination { ptr @mwifiex_ap_sta_limits, i32 1, i16 3, i8 1, i8 1, i8 15, i8 0, i32 0 }, align 4
@mwifiex_iface_comb_ap_sta = internal constant %struct.ieee80211_iface_combination { ptr @mwifiex_ap_sta_limits, i32 1, i16 3, i8 1, i8 1, i8 7, i8 0, i32 0 }, align 4
@mwifiex_cipher_suites = internal constant [6 x i32] [i32 1027073, i32 1027077, i32 1027074, i32 1027076, i32 1339905, i32 1027078], align 4
@mwifiex_wowlan_support = internal constant %struct.wiphy_wowlan_support { i32 286, i32 10, i32 40, i32 1, i32 100, i32 10, ptr null }, align 4
@mwifiex_wowlan_support_no_gtk = internal constant %struct.wiphy_wowlan_support { i32 262, i32 10, i32 40, i32 1, i32 100, i32 10, ptr null }, align 4
@mwifiex_coalesce_support = internal constant %struct.wiphy_coalesce_support { i32 8, i32 100, i32 4, i32 40, i32 1, i32 100 }, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"%s: wiphy_register failed: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"driver hint alpha2: %2.2s\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Ignore world regulatory domain\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"regulatory_hint() failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"%s: Unsupported iftype passed: %d\0A\00", align 1
@__func__.update_vif_type_counter = private unnamed_addr constant [24 x i8] c"update_vif_type_counter\00", align 1
@mwifiex_channels_2ghz = internal global [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], align 4
@mwifiex_rates = internal global [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 2, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 4, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 11, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 22, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 12, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 18, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 24, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 36, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 48, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 72, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 96, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 108, i16 0 }], align 4
@mwifiex_channels_5ghz = internal global [31 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 5040, i16 0, i16 8, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5060, i16 0, i16 12, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5080, i16 0, i16 16, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5170, i16 0, i16 34, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5190, i16 0, i16 38, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5210, i16 0, i16 42, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5230, i16 0, i16 46, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5180, i16 0, i16 36, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5200, i16 0, i16 40, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5220, i16 0, i16 44, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5240, i16 0, i16 48, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5260, i16 0, i16 52, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5280, i16 0, i16 56, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5300, i16 0, i16 60, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5320, i16 0, i16 64, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5500, i16 0, i16 100, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5520, i16 0, i16 104, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5540, i16 0, i16 108, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5560, i16 0, i16 112, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5580, i16 0, i16 116, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5600, i16 0, i16 120, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5620, i16 0, i16 124, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5640, i16 0, i16 128, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5660, i16 0, i16 132, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5680, i16 0, i16 136, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5700, i16 0, i16 140, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5745, i16 0, i16 149, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5765, i16 0, i16 153, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5785, i16 0, i16 157, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5805, i16 0, i16 161, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 5825, i16 0, i16 165, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], align 4
@.str.20 = private unnamed_addr constant [37 x i8] c"None of the WOWLAN triggers enabled\0A\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"Can not configure WOWLAN in disconnected state\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Failed to set MEF filter\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Wake on net detect\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Wake on device disconnect\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Failed to set HS params\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@mwifiex_set_wowlan_mef_entry.ipv4_mc_mac = internal constant [2 x i8] c"33", align 1
@mwifiex_set_wowlan_mef_entry.ipv6_mc_mac = internal constant [3 x i8] c"\01\00^", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"Pattern not supported\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"Wake on patterns\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Wake on magic packet\0A\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"change virtual interface: scan in process\0A\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"%s: no new type specified, keeping old type %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"%s: interface already is of type %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"%s: change from type %d to %d is not allowed\0A\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"unsupported interface type transition: %d to %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"%s: changing role to p2p\0A\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"%s: changing to %d not supported\0A\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"could not unregister mgmt frame rx\0A\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"%s: changing role to AP\0A\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"%s: changing role to station\0A\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"%s: changing role to adhoc\0A\00", align 1
@mwifiex_cfg80211_add_key.bc_mac = internal constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"crypto keys added\0A\00", align 1
@mwifiex_cfg80211_del_key.bc_mac = internal constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"deleting the crypto keys\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"info: crypto keys deleted\0A\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"set default Tx key index\0A\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"Sending KEY_MATERIAL command failed\0A\00", align 1
@.str.45 = private unnamed_addr constant [38 x i8] c"Failed to parse security parameters!\0A\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"Disable 11h extensions in FW\0A\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"Failed to disable 11h extensions!!\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"Failed to start AP\0A\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"%s: bss_type mismatched\0A\00", align 1
@__func__.mwifiex_cfg80211_change_beacon = private unnamed_addr constant [31 x i8] c"mwifiex_cfg80211_change_beacon\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"%s: bss not started\0A\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"%s: setting mgmt ies failed\0A\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"Failed to delete mgmt IEs!\0A\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"Failed to stop the BSS\0A\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"Failed to reset BSS\0A\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"%s: abort CAC!\0A\00", align 1
@__func__.mwifiex_cfg80211_del_station = private unnamed_addr constant [29 x i8] c"mwifiex_cfg80211_del_station\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"%s: mac address %pM\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.57 = private unnamed_addr constant [34 x i8] c"failed to get signal information\0A\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"getting data rate error\0A\00", align 1
@mwifiex_parse_htinfo.legacy_rates = internal unnamed_addr constant [13 x i32] [i32 10, i32 20, i32 55, i32 110, i32 60, i32 60, i32 90, i32 120, i32 180, i32 240, i32 360, i32 480, i32 540], align 4
@.str.59 = private unnamed_addr constant [35 x i8] c"info: received scan request on %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [32 x i8] c"cmd: Scan already in process..\0A\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"scan failed: %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [48 x i8] c"%s: reject infra assoc request in non-STA role\0A\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"%s: already connected\0A\00", align 1
@.str.64 = private unnamed_addr constant [56 x i8] c"%s: Ignore connection.\09Card removed or FW in bad state\0A\00", align 1
@.str.65 = private unnamed_addr constant [40 x i8] c"info: Trying to associate to bssid %pM\0A\00", align 1
@.str.66 = private unnamed_addr constant [44 x i8] c"info: associated to bssid %pM successfully\0A\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"info: association to bssid %pM failed\0A\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"invalid SSID - aborting\0A\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"info: setting wep encryption\09with key len %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"scan error\0A\00", align 1
@.str.71 = private unnamed_addr constant [48 x i8] c"assoc: requested bss not found in scan results\0A\00", align 1
@.str.72 = private unnamed_addr constant [40 x i8] c"info: trying to associate to bssid %pM\0A\00", align 1
@.str.73 = private unnamed_addr constant [64 x i8] c"request to join ibss received\09when station is not in ibss mode\0A\00", align 1
@.str.74 = private unnamed_addr constant [35 x i8] c"info: trying to join to bssid %pM\0A\00", align 1
@.str.75 = private unnamed_addr constant [64 x i8] c"info: joined/created adhoc network with bssid\09%pM successfully\0A\00", align 1
@.str.76 = private unnamed_addr constant [45 x i8] c"info: failed creating/joining adhoc network\0A\00", align 1
@.str.77 = private unnamed_addr constant [49 x i8] c"info: set ibss band %d, chan %d, chan offset %d\0A\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"include/net/cfg80211.h\00", align 1
@.str.79 = private unnamed_addr constant [36 x i8] c"info: disconnecting from essid %pM\0A\00", align 1
@.str.80 = private unnamed_addr constant [44 x i8] c"cannot change wiphy params when bss started\00", align 1
@.str.81 = private unnamed_addr constant [32 x i8] c"Failed to set wiphy phy params\0A\00", align 1
@.str.82 = private unnamed_addr constant [42 x i8] c"cannot change wiphy params when connected\00", align 1
@.str.83 = private unnamed_addr constant [48 x i8] c"Can not set Tx data rate in disconnected state\0A\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"dump_survey idx=%d\0A\00", align 1
@.str.85 = private unnamed_addr constant [27 x i8] c"Invalid parameter for ROC\0A\00", align 1
@.str.86 = private unnamed_addr constant [36 x i8] c"info: ongoing ROC, cookie = 0x%llx\0A\00", align 1
@.str.87 = private unnamed_addr constant [28 x i8] c"info: ROC, cookie = 0x%llx\0A\00", align 1
@.str.88 = private unnamed_addr constant [35 x i8] c"info: cancel ROC, cookie = 0x%llx\0A\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"invalid buffer and length\0A\00", align 1
@.str.90 = private unnamed_addr constant [48 x i8] c"info: skip to send probe resp in AP or GO mode\0A\00", align 1
@.str.91 = private unnamed_addr constant [42 x i8] c"allocate skb failed for management frame\0A\00", align 1
@.str.92 = private unnamed_addr constant [36 x i8] c"info: management frame transmitted\0A\00", align 1
@.str.93 = private unnamed_addr constant [48 x i8] c"info: ignore timeout value for IEEE Power Save\0A\00", align 1
@.str.94 = private unnamed_addr constant [29 x i8] c"info: mgmt frame registered\0A\00", align 1
@.str.95 = private unnamed_addr constant [35 x i8] c"%s : Invalid Sched_scan parameters\00", align 1
@__func__.mwifiex_cfg80211_sched_scan_start = private unnamed_addr constant [34 x i8] c"mwifiex_cfg80211_sched_scan_start\00", align 1
@.str.96 = private unnamed_addr constant [47 x i8] c"sched_scan start : n_ssids=%d n_match_sets=%d \00", align 1
@.str.97 = private unnamed_addr constant [37 x i8] c"n_channels=%d interval=%d ie_len=%d\0A\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"sched scan stop!\00", align 1
@.str.99 = private unnamed_addr constant [47 x i8] c"Send TDLS Setup Request to %pM status_code=%d\0A\00", align 1
@.str.100 = private unnamed_addr constant [48 x i8] c"Send TDLS Setup Response to %pM status_code=%d\0A\00", align 1
@.str.101 = private unnamed_addr constant [41 x i8] c"Send TDLS Confirm to %pM status_code=%d\0A\00", align 1
@.str.102 = private unnamed_addr constant [28 x i8] c"Send TDLS Tear down to %pM\0A\00", align 1
@.str.103 = private unnamed_addr constant [36 x i8] c"Send TDLS Discovery Request to %pM\0A\00", align 1
@.str.104 = private unnamed_addr constant [37 x i8] c"Send TDLS Discovery Response to %pM\0A\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"Unknown TDLS mgmt/action frame %pM\0A\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"TDLS peer=%pM, oper=%d\0A\00", align 1
@.str.107 = private unnamed_addr constant [47 x i8] c"tdls_oper: teardown from driver not supported\0A\00", align 1
@.str.108 = private unnamed_addr constant [44 x i8] c"tdls_oper: setup from driver not supported\0A\00", align 1
@.str.109 = private unnamed_addr constant [48 x i8] c"tdls_oper: discovery from driver not supported\0A\00", align 1
@.str.110 = private unnamed_addr constant [36 x i8] c"tdls_oper: operation not supported\0A\00", align 1
@.str.111 = private unnamed_addr constant [45 x i8] c"radar detection: scan already in process...\0A\00", align 1
@.str.112 = private unnamed_addr constant [29 x i8] c"Enable 11h extensions in FW\0A\00", align 1
@.str.113 = private unnamed_addr constant [36 x i8] c"Failed to activate 11h extensions!!\00", align 1
@.str.114 = private unnamed_addr constant [47 x i8] c"Disable coalesce and reset all previous rules\0A\00", align 1
@.str.115 = private unnamed_addr constant [43 x i8] c"Recheck the patterns provided for rule %d\0A\00", align 1
@.str.116 = private unnamed_addr constant [35 x i8] c"Multiple packet types not allowed\0A\00", align 1
@.str.117 = private unnamed_addr constant [35 x i8] c"Packet type can not be determined\0A\00", align 1
@mwifiex_get_coalesce_pkt_type.ipv4_mc_mac = internal constant [2 x i8] c"33", align 1
@mwifiex_get_coalesce_pkt_type.ipv6_mc_mac = internal constant [3 x i8] c"\01\00^", align 1
@.str.118 = private unnamed_addr constant [37 x i8] c"radar detection: scan in process...\0A\00", align 1
@.str.119 = private unnamed_addr constant [48 x i8] c"Could not parse channel switch announcement IE\0A\00", align 1
@__func__.mwifiex_cfg80211_channel_switch = private unnamed_addr constant [32 x i8] c"mwifiex_cfg80211_channel_switch\00", align 1
@.str.120 = private unnamed_addr constant [27 x i8] c"%s: Invalid TDLS peer %pM\0A\00", align 1
@__func__.mwifiex_cfg80211_tdls_chan_switch = private unnamed_addr constant [34 x i8] c"mwifiex_cfg80211_tdls_chan_switch\00", align 1
@.str.121 = private unnamed_addr constant [28 x i8] c"%pM do not support tdls cs\0A\00", align 1
@.str.122 = private unnamed_addr constant [42 x i8] c"channel switch is running, abort request\0A\00", align 1
@__func__.mwifiex_cfg80211_tdls_cancel_chan_switch = private unnamed_addr constant [41 x i8] c"mwifiex_cfg80211_tdls_cancel_chan_switch\00", align 1
@.str.123 = private unnamed_addr constant [40 x i8] c"tdls chan switch not initialize by %pM\0A\00", align 1
@mwifiex_ap_sta_limits = internal constant [1 x %struct.ieee80211_iface_limit] [%struct.ieee80211_iface_limit { i16 3, i16 780 }], align 2
@.str.124 = private unnamed_addr constant [52 x i8] c"info: cfg80211 regulatory domain callback for %c%c\0A\00", align 1
@.str.125 = private unnamed_addr constant [30 x i8] c"unknown regdom initiator: %d\0A\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_reg_alpha2type459, ptr @__ksymtab_mwifiex_add_virtual_intf, ptr @__ksymtab_mwifiex_del_virtual_intf, ptr @__param_reg_alpha2], section "llvm.metadata"
@switch.table.mwifiex_init_new_priv_params = private unnamed_addr constant [9 x i8] c"\00\00\01\00\00\00\00\00\01", align 1
@switch.table.mwifiex_init_new_priv_params.127 = private unnamed_addr constant [9 x i8] c"\00\00\01\00\00\00\00\02\02", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mwifiex_chan_type_to_sec_chan_offset(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 3
  %3 = zext i1 %2 to i8
  %4 = icmp eq i32 %0, 2
  %5 = select i1 %4, i8 3, i8 %3
  ret i8 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @mwifiex_get_chan_type(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.mwifiex_channel_band, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #14
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = call i32 @mwifiex_get_chan_info(ptr noundef %0, ptr noundef nonnull %2) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = load i8, ptr %2, align 2
  %7 = lshr i8 %6, 2
  %8 = and i8 %7, 3
  %9 = zext i8 %8 to i32
  switch i32 %9, label %29 [
    i32 0, label %10
    i32 2, label %25
  ]

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 84
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 24
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 24
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 22
  %22 = load i8, ptr %21, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20, %16, %10
  br label %29

25:                                               ; preds = %5
  %26 = and i8 %6, 48
  %27 = icmp eq i8 %26, 16
  %28 = select i1 %27, i8 3, i8 2
  br label %29

29:                                               ; preds = %25, %24, %20, %5, %1
  %30 = phi i8 [ 0, %24 ], [ 1, %20 ], [ %28, %25 ], [ 1, %5 ], [ 1, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #14
  ret i8 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_chan_info(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_send_domain_info_cmd_fw(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !9

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 75
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 124
  %10 = load i8, ptr %9, align 4
  store i8 %10, ptr %8, align 1
  %11 = getelementptr %struct.mwifiex_adapter, ptr %7, i32 0, i32 124, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr %struct.mwifiex_adapter, ptr %7, i32 0, i32 75, i32 0, i32 1
  store i8 %12, ptr %13, align 1
  %14 = getelementptr %struct.mwifiex_adapter, ptr %7, i32 0, i32 75, i32 0, i32 2
  store i8 32, ptr %14, align 1
  %15 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 84
  %16 = load i8, ptr %15, align 2
  %17 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %16) #14
  %18 = zext i8 %17 to i32
  %19 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %113, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %20, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %94

26:                                               ; preds = %75, %22
  %27 = phi i32 [ %76, %75 ], [ %24, %22 ]
  %28 = phi i32 [ %84, %75 ], [ 0, %22 ]
  %29 = phi i8 [ %82, %75 ], [ 0, %22 ]
  %30 = phi i8 [ %83, %75 ], [ 0, %22 ]
  %31 = phi i8 [ %81, %75 ], [ 0, %22 ]
  %32 = phi i8 [ %80, %75 ], [ 0, %22 ]
  %33 = phi i8 [ %79, %75 ], [ 0, %22 ]
  %34 = phi i8 [ %78, %75 ], [ 0, %22 ]
  %35 = phi i8 [ %77, %75 ], [ 0, %22 ]
  %36 = load ptr, ptr %20, align 4
  %37 = getelementptr %struct.ieee80211_channel, ptr %36, i32 %28, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %26
  %42 = icmp eq i8 %29, 0
  %43 = getelementptr %struct.ieee80211_channel, ptr %36, i32 %28, i32 3
  %44 = load i16, ptr %43, align 2
  br i1 %42, label %45, label %50

45:                                               ; preds = %41
  %46 = trunc i16 %44 to i8
  %47 = getelementptr %struct.ieee80211_channel, ptr %36, i32 %28, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = trunc i32 %48 to i8
  br label %75

50:                                               ; preds = %41
  %51 = zext i16 %44 to i32
  %52 = zext i8 %32 to i32
  %53 = add nuw nsw i32 %52, 1
  %54 = icmp eq i32 %53, %51
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = getelementptr %struct.ieee80211_channel, ptr %36, i32 %28, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = zext i8 %31 to i32
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = add i8 %32, 1
  %62 = add i8 %34, 1
  br label %75

63:                                               ; preds = %55, %50
  %64 = zext i8 %35 to i32
  %65 = getelementptr %struct.mwifiex_adapter, ptr %7, i32 0, i32 75, i32 2, i32 %64
  store i8 %33, ptr %65, align 1
  %66 = getelementptr inbounds %struct.anon.143, ptr %65, i32 0, i32 1
  store i8 %34, ptr %66, align 1
  %67 = getelementptr inbounds %struct.anon.143, ptr %65, i32 0, i32 2
  store i8 %31, ptr %67, align 1
  %68 = add i8 %35, 1
  %69 = load i16, ptr %43, align 2
  %70 = trunc i16 %69 to i8
  %71 = getelementptr %struct.ieee80211_channel, ptr %36, i32 %28, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = trunc i32 %72 to i8
  %74 = load i32, ptr %23, align 4
  br label %75

75:                                               ; preds = %63, %60, %45, %26
  %76 = phi i32 [ %27, %26 ], [ %27, %60 ], [ %74, %63 ], [ %27, %45 ]
  %77 = phi i8 [ %35, %26 ], [ %35, %60 ], [ %68, %63 ], [ %35, %45 ]
  %78 = phi i8 [ %34, %26 ], [ %62, %60 ], [ 1, %63 ], [ 1, %45 ]
  %79 = phi i8 [ %33, %26 ], [ %33, %60 ], [ %70, %63 ], [ %46, %45 ]
  %80 = phi i8 [ %32, %26 ], [ %61, %60 ], [ %70, %63 ], [ %46, %45 ]
  %81 = phi i8 [ %31, %26 ], [ %31, %60 ], [ %73, %63 ], [ %49, %45 ]
  %82 = phi i8 [ %29, %26 ], [ 1, %60 ], [ 1, %63 ], [ 1, %45 ]
  %83 = add i8 %30, 1
  %84 = zext i8 %83 to i32
  %85 = icmp sgt i32 %76, %84
  br i1 %85, label %26, label %86

86:                                               ; preds = %75
  %87 = icmp eq i8 %82, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %86
  %89 = zext i8 %77 to i32
  %90 = getelementptr %struct.mwifiex_adapter, ptr %7, i32 0, i32 75, i32 2, i32 %89
  store i8 %79, ptr %90, align 1
  %91 = getelementptr inbounds %struct.anon.143, ptr %90, i32 0, i32 1
  store i8 %78, ptr %91, align 1
  %92 = getelementptr inbounds %struct.anon.143, ptr %90, i32 0, i32 2
  store i8 %81, ptr %92, align 1
  %93 = add i8 %77, 1
  br label %94

94:                                               ; preds = %88, %86, %22
  %95 = phi i8 [ %93, %88 ], [ %77, %86 ], [ 0, %22 ]
  %96 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 75, i32 1
  store i8 %95, ptr %96, align 1
  %97 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 5
  %98 = load i8, ptr %97, align 4
  %99 = zext i8 %98 to i32
  %100 = icmp eq i8 %98, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %106, %94
  %102 = phi i32 [ %107, %106 ], [ 0, %94 ]
  %103 = getelementptr %struct.mwifiex_adapter, ptr %7, i32 0, i32 4, i32 %102
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = add nuw nsw i32 %102, 1
  %108 = icmp eq i32 %107, %99
  br i1 %108, label %109, label %101

109:                                              ; preds = %106, %101, %94
  %110 = phi ptr [ null, %94 ], [ %104, %101 ], [ null, %106 ]
  %111 = tail call i32 @mwifiex_send_cmd(ptr noundef %110, i16 noundef zeroext 91, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #14
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %109, %4
  %114 = phi i32 [ 4, %4 ], [ 1073741824, %109 ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef %114, ptr noundef nonnull @.str) #14
  br label %115

115:                                              ; preds = %113, %109
  %116 = phi i32 [ 0, %109 ], [ -1, %113 ]
  ret i32 %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mwifiex_add_virtual_intf(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr nocapture readnone %4) #1 {
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca [3 x i32], align 4
  %11 = icmp eq ptr %0, null
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %15 = load i32, ptr %14, align 4
  %16 = inttoptr i32 %15 to ptr
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %409, label %18

18:                                               ; preds = %13
  switch i32 %3, label %279 [
    i32 0, label %19
    i32 2, label %19
    i32 1, label %19
    i32 3, label %103
    i32 8, label %186
  ]

19:                                               ; preds = %18, %18, %18
  %20 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 2
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %16, i32 noundef 4, ptr noundef nonnull @.str.1) #14
  br label %409

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 5
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %92, label %30

30:                                               ; preds = %26
  %31 = add i8 %28, -1
  %32 = zext i8 %31 to i32
  %33 = add nuw nsw i32 %32, 1
  %34 = zext i8 %28 to i32
  br label %35

35:                                               ; preds = %80, %30
  %36 = phi i32 [ 0, %30 ], [ %81, %80 ]
  %37 = getelementptr %struct.mwifiex_adapter, ptr %16, i32 0, i32 4, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.mwifiex_private, ptr %38, i32 0, i32 18
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false) #14
  br label %46

43:                                               ; preds = %64
  %44 = load i32, ptr %10, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %76, label %67

46:                                               ; preds = %64, %42
  %47 = phi i32 [ 0, %42 ], [ %65, %64 ]
  %48 = getelementptr %struct.mwifiex_adapter, ptr %16, i32 0, i32 4, i32 %47
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %64, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.mwifiex_private, ptr %49, i32 0, i32 1
  %53 = load i8, ptr %52, align 4
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.mwifiex_private, ptr %49, i32 0, i32 18
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.mwifiex_private, ptr %49, i32 0, i32 4
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = getelementptr [3 x i32], ptr %10, i32 0, i32 %62
  store i32 1, ptr %63, align 4
  br label %64

64:                                               ; preds = %59, %55, %51, %46
  %65 = add nuw nsw i32 %47, 1
  %66 = icmp eq i32 %65, %34
  br i1 %66, label %43, label %46

67:                                               ; preds = %43
  %68 = getelementptr inbounds [3 x i32], ptr %10, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds [3 x i32], ptr %10, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i8 2, i8 -1
  br label %76

76:                                               ; preds = %71, %67, %43
  %77 = phi i8 [ 0, %43 ], [ 1, %67 ], [ %75, %71 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  %78 = getelementptr inbounds %struct.mwifiex_private, ptr %38, i32 0, i32 4
  store i8 %77, ptr %78, align 1
  %79 = load i8, ptr %27, align 4
  br label %83

80:                                               ; preds = %35
  %81 = add nuw nsw i32 %36, 1
  %82 = icmp eq i32 %81, %34
  br i1 %82, label %83, label %35

83:                                               ; preds = %80, %76
  %84 = phi i8 [ %79, %76 ], [ %28, %80 ]
  %85 = phi i32 [ %36, %76 ], [ %33, %80 ]
  %86 = trunc i32 %85 to i8
  %87 = icmp ugt i8 %84, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = getelementptr %struct.mwifiex_adapter, ptr %16, i32 0, i32 4, i32 %85
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %83, %26
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %16, i32 noundef 4, ptr noundef nonnull @.str.2) #14
  br label %409

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.mwifiex_private, ptr %90, i32 0, i32 103
  store ptr %0, ptr %94, align 8
  %95 = getelementptr inbounds %struct.mwifiex_private, ptr %90, i32 0, i32 103, i32 1
  store i32 2, ptr %95, align 4
  %96 = icmp eq i32 %3, 0
  %97 = select i1 %96, i32 2, i32 %3
  %98 = getelementptr inbounds %struct.mwifiex_private, ptr %90, i32 0, i32 18
  store i32 %97, ptr %98, align 8
  %99 = getelementptr inbounds %struct.mwifiex_private, ptr %90, i32 0, i32 1
  store i8 0, ptr %99, align 4
  %100 = getelementptr inbounds %struct.mwifiex_private, ptr %90, i32 0, i32 6
  store i8 0, ptr %100, align 1
  %101 = getelementptr inbounds %struct.mwifiex_private, ptr %90, i32 0, i32 3
  store i8 0, ptr %101, align 2
  %102 = getelementptr inbounds %struct.mwifiex_private, ptr %90, i32 0, i32 2
  store i8 0, ptr %102, align 1
  br label %280

103:                                              ; preds = %18
  %104 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 3, i32 1
  %105 = load i8, ptr %104, align 1
  %106 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 2, i32 1
  %107 = load i8, ptr %106, align 1
  %108 = icmp eq i8 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %16, i32 noundef 4, ptr noundef nonnull @.str.3) #14
  br label %409

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 5
  %112 = load i8, ptr %111, align 4
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %176, label %114

114:                                              ; preds = %110
  %115 = add i8 %112, -1
  %116 = zext i8 %115 to i32
  %117 = add nuw nsw i32 %116, 1
  %118 = zext i8 %112 to i32
  br label %119

119:                                              ; preds = %164, %114
  %120 = phi i32 [ 0, %114 ], [ %165, %164 ]
  %121 = getelementptr %struct.mwifiex_adapter, ptr %16, i32 0, i32 4, i32 %120
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.mwifiex_private, ptr %122, i32 0, i32 18
  %124 = load i32, ptr %123, align 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %164

126:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false) #14
  br label %130

127:                                              ; preds = %148
  %128 = load i32, ptr %9, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %160, label %151

130:                                              ; preds = %148, %126
  %131 = phi i32 [ 0, %126 ], [ %149, %148 ]
  %132 = getelementptr %struct.mwifiex_adapter, ptr %16, i32 0, i32 4, i32 %131
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %148, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.mwifiex_private, ptr %133, i32 0, i32 1
  %137 = load i8, ptr %136, align 4
  %138 = icmp eq i8 %137, 1
  br i1 %138, label %139, label %148

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.mwifiex_private, ptr %133, i32 0, i32 18
  %141 = load i32, ptr %140, align 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.mwifiex_private, ptr %133, i32 0, i32 4
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  %147 = getelementptr [3 x i32], ptr %9, i32 0, i32 %146
  store i32 1, ptr %147, align 4
  br label %148

148:                                              ; preds = %143, %139, %135, %130
  %149 = add nuw nsw i32 %131, 1
  %150 = icmp eq i32 %149, %118
  br i1 %150, label %127, label %130

151:                                              ; preds = %127
  %152 = getelementptr inbounds [3 x i32], ptr %9, i32 0, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds [3 x i32], ptr %9, i32 0, i32 2
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %158, i8 2, i8 -1
  br label %160

160:                                              ; preds = %155, %151, %127
  %161 = phi i8 [ 0, %127 ], [ 1, %151 ], [ %159, %155 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  %162 = getelementptr inbounds %struct.mwifiex_private, ptr %122, i32 0, i32 4
  store i8 %161, ptr %162, align 1
  %163 = load i8, ptr %111, align 4
  br label %167

164:                                              ; preds = %119
  %165 = add nuw nsw i32 %120, 1
  %166 = icmp eq i32 %165, %118
  br i1 %166, label %167, label %119

167:                                              ; preds = %164, %160
  %168 = phi i8 [ %163, %160 ], [ %112, %164 ]
  %169 = phi i32 [ %120, %160 ], [ %117, %164 ]
  %170 = trunc i32 %169 to i8
  %171 = icmp ugt i8 %168, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = getelementptr %struct.mwifiex_adapter, ptr %16, i32 0, i32 4, i32 %169
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %172, %167, %110
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %16, i32 noundef 4, ptr noundef nonnull @.str.2) #14
  br label %409

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.mwifiex_private, ptr %174, i32 0, i32 103
  store ptr %0, ptr %178, align 8
  %179 = getelementptr inbounds %struct.mwifiex_private, ptr %174, i32 0, i32 103, i32 1
  store i32 3, ptr %179, align 4
  %180 = getelementptr inbounds %struct.mwifiex_private, ptr %174, i32 0, i32 1
  store i8 1, ptr %180, align 4
  %181 = getelementptr inbounds %struct.mwifiex_private, ptr %174, i32 0, i32 6
  store i8 0, ptr %181, align 1
  %182 = getelementptr inbounds %struct.mwifiex_private, ptr %174, i32 0, i32 3
  store i8 0, ptr %182, align 2
  %183 = getelementptr inbounds %struct.mwifiex_private, ptr %174, i32 0, i32 2
  store i8 1, ptr %183, align 1
  %184 = getelementptr inbounds %struct.mwifiex_private, ptr %174, i32 0, i32 5
  store i8 0, ptr %184, align 8
  %185 = getelementptr inbounds %struct.mwifiex_private, ptr %174, i32 0, i32 18
  store i32 3, ptr %185, align 8
  br label %280

186:                                              ; preds = %18
  %187 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 3, i32 2
  %188 = load i8, ptr %187, align 1
  %189 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 2, i32 2
  %190 = load i8, ptr %189, align 2
  %191 = icmp eq i8 %188, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %16, i32 noundef 4, ptr noundef nonnull @.str.4) #14
  br label %409

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 5
  %195 = load i8, ptr %194, align 4
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %259, label %197

197:                                              ; preds = %193
  %198 = add i8 %195, -1
  %199 = zext i8 %198 to i32
  %200 = add nuw nsw i32 %199, 1
  %201 = zext i8 %195 to i32
  br label %202

202:                                              ; preds = %247, %197
  %203 = phi i32 [ 0, %197 ], [ %248, %247 ]
  %204 = getelementptr %struct.mwifiex_adapter, ptr %16, i32 0, i32 4, i32 %203
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.mwifiex_private, ptr %205, i32 0, i32 18
  %207 = load i32, ptr %206, align 8
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %247

209:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false) #14
  br label %213

210:                                              ; preds = %231
  %211 = load i32, ptr %8, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %243, label %234

213:                                              ; preds = %231, %209
  %214 = phi i32 [ 0, %209 ], [ %232, %231 ]
  %215 = getelementptr %struct.mwifiex_adapter, ptr %16, i32 0, i32 4, i32 %214
  %216 = load ptr, ptr %215, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %231, label %218

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.mwifiex_private, ptr %216, i32 0, i32 1
  %220 = load i8, ptr %219, align 4
  %221 = icmp eq i8 %220, 2
  br i1 %221, label %222, label %231

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.mwifiex_private, ptr %216, i32 0, i32 18
  %224 = load i32, ptr %223, align 8
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.mwifiex_private, ptr %216, i32 0, i32 4
  %228 = load i8, ptr %227, align 1
  %229 = zext i8 %228 to i32
  %230 = getelementptr [3 x i32], ptr %8, i32 0, i32 %229
  store i32 1, ptr %230, align 4
  br label %231

231:                                              ; preds = %226, %222, %218, %213
  %232 = add nuw nsw i32 %214, 1
  %233 = icmp eq i32 %232, %201
  br i1 %233, label %210, label %213

234:                                              ; preds = %210
  %235 = getelementptr inbounds [3 x i32], ptr %8, i32 0, i32 1
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %243, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds [3 x i32], ptr %8, i32 0, i32 2
  %240 = load i32, ptr %239, align 4
  %241 = icmp eq i32 %240, 0
  %242 = select i1 %241, i8 2, i8 -1
  br label %243

243:                                              ; preds = %238, %234, %210
  %244 = phi i8 [ 0, %210 ], [ 1, %234 ], [ %242, %238 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  %245 = getelementptr inbounds %struct.mwifiex_private, ptr %205, i32 0, i32 4
  store i8 %244, ptr %245, align 1
  %246 = load i8, ptr %194, align 4
  br label %250

247:                                              ; preds = %202
  %248 = add nuw nsw i32 %203, 1
  %249 = icmp eq i32 %248, %201
  br i1 %249, label %250, label %202

250:                                              ; preds = %247, %243
  %251 = phi i8 [ %246, %243 ], [ %195, %247 ]
  %252 = phi i32 [ %203, %243 ], [ %200, %247 ]
  %253 = trunc i32 %252 to i8
  %254 = icmp ugt i8 %251, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %250
  %256 = getelementptr %struct.mwifiex_adapter, ptr %16, i32 0, i32 4, i32 %252
  %257 = load ptr, ptr %256, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %260

259:                                              ; preds = %255, %250, %193
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %16, i32 noundef 4, ptr noundef nonnull @.str.2) #14
  br label %409

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.mwifiex_private, ptr %257, i32 0, i32 103
  store ptr %0, ptr %261, align 8
  %262 = getelementptr inbounds %struct.mwifiex_private, ptr %257, i32 0, i32 103, i32 1
  store i32 8, ptr %262, align 4
  %263 = getelementptr inbounds %struct.mwifiex_private, ptr %257, i32 0, i32 18
  store i32 8, ptr %263, align 8
  %264 = getelementptr inbounds %struct.mwifiex_private, ptr %257, i32 0, i32 1
  store i8 2, ptr %264, align 4
  %265 = getelementptr inbounds %struct.mwifiex_private, ptr %257, i32 0, i32 6
  store i8 0, ptr %265, align 1
  %266 = getelementptr inbounds %struct.mwifiex_private, ptr %257, i32 0, i32 3
  store i8 0, ptr %266, align 2
  %267 = getelementptr inbounds %struct.mwifiex_private, ptr %257, i32 0, i32 2
  store i8 0, ptr %267, align 1
  %268 = getelementptr inbounds %struct.mwifiex_private, ptr %257, i32 0, i32 5
  store i8 0, ptr %268, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #14
  store i16 0, ptr %6, align 2
  %269 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %257, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %6, i1 noundef zeroext true) #14
  %270 = icmp eq i32 %269, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #14
  br i1 %270, label %271, label %274

271:                                              ; preds = %260
  store i16 1, ptr %7, align 2
  %272 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %257, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %7, i1 noundef zeroext true) #14
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %275, label %274

274:                                              ; preds = %271, %260
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  br label %278

275:                                              ; preds = %271
  store i16 3, ptr %7, align 2
  %276 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %257, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %7, i1 noundef zeroext true) #14
  %277 = icmp eq i32 %276, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  br i1 %277, label %280, label %278

278:                                              ; preds = %275, %274
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(284) %261, i8 0, i64 284, i1 false)
  br label %409

279:                                              ; preds = %18
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %16, i32 noundef 4, ptr noundef nonnull @.str.5) #14
  br label %409

280:                                              ; preds = %275, %177, %93
  %281 = phi ptr [ %257, %275 ], [ %174, %177 ], [ %90, %93 ]
  %282 = call ptr @alloc_netdev_mqs(i32 noundef 4, ptr noundef %1, i8 noundef zeroext %2, ptr noundef nonnull @ether_setup, i32 noundef 4, i32 noundef 1) #14
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %285

284:                                              ; preds = %280
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %16, i32 noundef 4, ptr noundef nonnull @.str.6) #14
  br label %404

285:                                              ; preds = %280
  call void @mwifiex_init_priv_params(ptr noundef nonnull %281, ptr noundef nonnull %282) #14
  %286 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 15
  store ptr %282, ptr %286, align 4
  %287 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 147
  %288 = load i8, ptr %287, align 4, !range !11
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %290, label %297

290:                                              ; preds = %285
  %291 = call i32 @mwifiex_set_mac_address(ptr noundef nonnull %281, ptr noundef nonnull %282, i1 noundef zeroext false, ptr noundef null) #14
  %292 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %281, i16 noundef zeroext 247, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #14
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %404

294:                                              ; preds = %290
  %295 = call i32 @mwifiex_sta_init_cmd(ptr noundef nonnull %281, i8 noundef zeroext 0, i1 noundef zeroext false) #14
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %404

297:                                              ; preds = %294, %285
  %298 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 53
  %299 = load ptr, ptr %298, align 8
  %300 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %299, i32 0, i32 5
  call fastcc void @mwifiex_setup_ht_caps(ptr noundef %300, ptr noundef nonnull %281)
  %301 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 128
  %302 = load i32, ptr %301, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %321, label %304

304:                                              ; preds = %297
  %305 = load ptr, ptr %298, align 8
  %306 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %305, i32 0, i32 6
  %307 = load ptr, ptr %281, align 8
  store i8 1, ptr %306, align 4
  %308 = getelementptr inbounds %struct.mwifiex_adapter, ptr %307, i32 0, i32 129
  %309 = load i32, ptr %308, align 4
  %310 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %305, i32 0, i32 6, i32 1
  store i32 %309, ptr %310, align 4
  %311 = getelementptr inbounds %struct.mwifiex_adapter, ptr %307, i32 0, i32 130
  %312 = load i32, ptr %311, align 4
  %313 = trunc i32 %312 to i16
  %314 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %305, i32 0, i32 6, i32 2
  store i16 %313, ptr %314, align 4
  %315 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %305, i32 0, i32 6, i32 2, i32 1
  store i16 0, ptr %315, align 2
  %316 = load i32, ptr %311, align 4
  %317 = lshr i32 %316, 16
  %318 = trunc i32 %317 to i16
  %319 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %305, i32 0, i32 6, i32 2, i32 2
  store i16 %318, ptr %319, align 4
  %320 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %305, i32 0, i32 6, i32 2, i32 3
  store i16 0, ptr %320, align 2
  br label %321

321:                                              ; preds = %304, %297
  %322 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 84
  %323 = load i8, ptr %322, align 2
  %324 = and i8 %323, 4
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %354, label %326

326:                                              ; preds = %321
  %327 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 1
  %328 = load ptr, ptr %327, align 4
  %329 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %328, i32 0, i32 5
  call fastcc void @mwifiex_setup_ht_caps(ptr noundef %329, ptr noundef nonnull %281)
  %330 = load i8, ptr %322, align 2
  %331 = and i8 %330, 4
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %354, label %333

333:                                              ; preds = %326
  %334 = load i32, ptr %301, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %354, label %336

336:                                              ; preds = %333
  %337 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 1
  %338 = load ptr, ptr %337, align 4
  %339 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %338, i32 0, i32 6
  %340 = load ptr, ptr %281, align 8
  store i8 1, ptr %339, align 4
  %341 = getelementptr inbounds %struct.mwifiex_adapter, ptr %340, i32 0, i32 129
  %342 = load i32, ptr %341, align 4
  %343 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %338, i32 0, i32 6, i32 1
  store i32 %342, ptr %343, align 4
  %344 = getelementptr inbounds %struct.mwifiex_adapter, ptr %340, i32 0, i32 130
  %345 = load i32, ptr %344, align 4
  %346 = trunc i32 %345 to i16
  %347 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %338, i32 0, i32 6, i32 2
  store i16 %346, ptr %347, align 4
  %348 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %338, i32 0, i32 6, i32 2, i32 1
  store i16 0, ptr %348, align 2
  %349 = load i32, ptr %344, align 4
  %350 = lshr i32 %349, 16
  %351 = trunc i32 %350 to i16
  %352 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %338, i32 0, i32 6, i32 2, i32 2
  store i16 %351, ptr %352, align 4
  %353 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %338, i32 0, i32 6, i32 2, i32 3
  store i16 0, ptr %353, align 2
  br label %354

354:                                              ; preds = %336, %333, %326, %321
  %355 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 103
  %356 = getelementptr inbounds %struct.net_device, ptr %282, i32 0, i32 70
  store ptr %355, ptr %356, align 8
  %357 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 18
  %358 = load i32, ptr %357, align 8
  %359 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 103, i32 1
  store i32 %358, ptr %359, align 4
  %360 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 56, i32 1
  %361 = load ptr, ptr %360, align 4
  %362 = getelementptr inbounds %struct.net_device, ptr %282, i32 0, i32 111, i32 1
  store ptr %361, ptr %362, align 4
  %363 = getelementptr inbounds %struct.net_device, ptr %282, i32 0, i32 14
  %364 = load i32, ptr %363, align 8
  %365 = or i32 %364, 4098
  store i32 %365, ptr %363, align 8
  %366 = getelementptr inbounds %struct.net_device, ptr %282, i32 0, i32 96
  store i32 500, ptr %366, align 8
  %367 = getelementptr inbounds %struct.net_device, ptr %282, i32 0, i32 21
  store i16 100, ptr %367, align 8
  %368 = getelementptr inbounds %struct.net_device, ptr %282, i32 0, i32 42
  store ptr @mwifiex_ethtool_ops, ptr %368, align 8
  %369 = getelementptr i8, ptr %282, i32 1408
  %370 = ptrtoint ptr %281 to i32
  store i32 %370, ptr %369, align 4
  %371 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 9
  %372 = load ptr, ptr %371, align 4
  store ptr %372, ptr %362, align 4
  %373 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.7, i32 noundef 26, i32 noundef 1, ptr noundef %1) #14
  %374 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 151
  store ptr %373, ptr %374, align 4
  %375 = icmp eq ptr %373, null
  br i1 %375, label %376, label %377

376:                                              ; preds = %354
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %16, i32 noundef 4, ptr noundef nonnull @.str.8) #14
  br label %402

377:                                              ; preds = %354
  %378 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 152
  store i32 -32, ptr %378, align 8
  %379 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 152, i32 0, i32 1
  store volatile ptr %379, ptr %379, align 4
  %380 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 152, i32 0, i32 1, i32 1
  store ptr %379, ptr %380, align 4
  %381 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 152, i32 0, i32 2
  store ptr @mwifiex_dfs_cac_work_queue, ptr %381, align 4
  %382 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 152, i32 1
  call void @init_timer_key(ptr noundef %382, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #14
  %383 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.9, i32 noundef 26, i32 noundef 1, ptr noundef %1) #14
  %384 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 154
  store ptr %383, ptr %384, align 8
  %385 = icmp eq ptr %383, null
  br i1 %385, label %386, label %387

386:                                              ; preds = %377
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %16, i32 noundef 4, ptr noundef nonnull @.str.10) #14
  br label %399

387:                                              ; preds = %377
  %388 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 155
  store i32 -32, ptr %388, align 4
  %389 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 155, i32 0, i32 1
  store volatile ptr %389, ptr %389, align 4
  %390 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 155, i32 0, i32 1, i32 1
  store ptr %389, ptr %390, align 4
  %391 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 155, i32 0, i32 2
  store ptr @mwifiex_dfs_chan_sw_work_queue, ptr %391, align 4
  %392 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 155, i32 1
  call void @init_timer_key(ptr noundef %392, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #14
  %393 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 110
  call void @__mutex_init(ptr noundef %393, ptr noundef nonnull @.str.11, ptr noundef nonnull @mwifiex_add_virtual_intf.__key) #14
  %394 = call i32 @cfg80211_register_netdevice(ptr noundef nonnull %282) #14
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %398, label %396

396:                                              ; preds = %387
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %16, i32 noundef 4, ptr noundef nonnull @.str.12) #14
  %397 = load ptr, ptr %384, align 8
  call void @destroy_workqueue(ptr noundef %397) #14
  store ptr null, ptr %384, align 8
  br label %399

398:                                              ; preds = %387
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %16, i32 noundef 1073741824, ptr noundef nonnull @.str.13, ptr noundef nonnull %282) #14
  call void @mwifiex_dev_debugfs_init(ptr noundef nonnull %281) #14
  call fastcc void @update_vif_type_counter(ptr noundef nonnull %16, i32 noundef %3, i32 noundef 1)
  br label %409

399:                                              ; preds = %396, %386
  %400 = phi i32 [ -14, %396 ], [ -12, %386 ]
  %401 = load ptr, ptr %374, align 4
  call void @destroy_workqueue(ptr noundef %401) #14
  store ptr null, ptr %374, align 4
  br label %402

402:                                              ; preds = %399, %376
  %403 = phi i32 [ %400, %399 ], [ -12, %376 ]
  call void @free_netdev(ptr noundef nonnull %282) #14
  store ptr null, ptr %286, align 4
  br label %404

404:                                              ; preds = %402, %294, %290, %284
  %405 = phi i32 [ %403, %402 ], [ %292, %290 ], [ %295, %294 ], [ -12, %284 ]
  %406 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 103
  %407 = getelementptr inbounds %struct.mwifiex_private, ptr %281, i32 0, i32 18
  store i32 0, ptr %407, align 8
  %408 = inttoptr i32 %405 to ptr
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(284) %406, i8 0, i64 284, i1 false)
  br label %409

409:                                              ; preds = %404, %398, %279, %278, %259, %192, %176, %109, %92, %25, %13
  %410 = phi ptr [ inttoptr (i32 -22 to ptr), %279 ], [ inttoptr (i32 -22 to ptr), %192 ], [ inttoptr (i32 -14 to ptr), %278 ], [ %408, %404 ], [ %355, %398 ], [ inttoptr (i32 -14 to ptr), %259 ], [ inttoptr (i32 -22 to ptr), %109 ], [ inttoptr (i32 -14 to ptr), %176 ], [ inttoptr (i32 -22 to ptr), %25 ], [ inttoptr (i32 -14 to ptr), %92 ], [ inttoptr (i32 -14 to ptr), %13 ]
  ret ptr %410
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_init_priv_params(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_set_mac_address(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_sta_init_cmd(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @mwifiex_setup_ht_caps(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = alloca %struct.ieee80211_mcs_info, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %4 = load ptr, ptr %1, align 8
  %5 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %0, i32 0, i32 1
  store i8 1, ptr %5, align 2
  %6 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %0, i32 0, i32 2
  store i8 3, ptr %6, align 1
  %7 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 113
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(17) %7, i8 0, i64 17, i1 false)
  %9 = load i32, ptr %8, align 4
  %10 = load i16, ptr %0, align 2
  %11 = and i16 %10, -3
  %12 = lshr i32 %9, 16
  %13 = trunc i32 %12 to i16
  %14 = and i16 %13, 2
  %15 = or i16 %11, %14
  store i16 %15, ptr %0, align 2
  %16 = load i32, ptr %8, align 4
  %17 = and i16 %15, -33
  %18 = lshr i32 %16, 18
  %19 = trunc i32 %18 to i16
  %20 = and i16 %19, 32
  %21 = or i16 %20, %17
  store i16 %21, ptr %0, align 2
  %22 = load i32, ptr %8, align 4
  %23 = and i16 %21, -65
  %24 = lshr i32 %22, 18
  %25 = trunc i32 %24 to i16
  %26 = and i16 %25, 64
  %27 = or i16 %23, %26
  store i16 %27, ptr %0, align 2
  %28 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 115
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 34
  %31 = select i1 %30, i16 512, i16 256
  %32 = or i16 %27, %31
  store i16 %32, ptr %0, align 2
  %33 = load i32, ptr %8, align 4
  %34 = and i16 %32, -129
  %35 = lshr i32 %33, 18
  %36 = trunc i32 %35 to i16
  %37 = and i16 %36, 128
  %38 = or i16 %37, %34
  store i16 %38, ptr %0, align 2
  %39 = load i32, ptr %8, align 4
  %40 = and i16 %38, -17
  %41 = lshr i32 %39, 25
  %42 = trunc i32 %41 to i16
  %43 = and i16 %42, 16
  %44 = or i16 %40, %43
  store i16 %44, ptr %0, align 2
  %45 = load i32, ptr %8, align 4
  %46 = and i16 %44, -16385
  %47 = trunc i32 %45 to i16
  %48 = shl i16 %47, 6
  %49 = and i16 %48, 16384
  %50 = or i16 %46, %49
  store i16 %50, ptr %0, align 2
  %51 = load i32, ptr %8, align 4
  %52 = and i16 %50, -2062
  %53 = lshr i32 %51, 22
  %54 = trunc i32 %53 to i16
  %55 = and i16 %54, 1
  %56 = or i16 %55, %52
  %57 = or i16 %56, 12
  store i16 %57, ptr %0, align 2
  %58 = load i8, ptr %28, align 1
  %59 = and i8 %58, 15
  %60 = zext i8 %59 to i32
  call void @llvm.memset.p0.i32(ptr nonnull align 1 %3, i8 -1, i32 %60, i1 false)
  %61 = getelementptr i8, ptr %3, i32 %60
  %62 = sub nuw nsw i32 16, %60
  call void @llvm.memset.p0.i32(ptr align 1 %61, i8 0, i32 %62, i1 false)
  %63 = getelementptr inbounds %struct.mwifiex_private, ptr %1, i32 0, i32 18
  %64 = load i32, ptr %63, align 8
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %70, label %66

66:                                               ; preds = %2
  %67 = load i32, ptr %8, align 4
  %68 = and i32 %67, 131072
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66, %2
  %71 = getelementptr inbounds [10 x i8], ptr %3, i32 0, i32 4
  %72 = load i8, ptr %71, align 1
  %73 = or i8 %72, 1
  store i8 %73, ptr %71, align 1
  br label %74

74:                                               ; preds = %70, %66
  %75 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %0, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %75, ptr noundef nonnull align 1 dereferenceable(16) %3, i32 16, i1 false)
  %76 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %0, i32 0, i32 4, i32 2
  store i8 1, ptr %76, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_dfs_cac_work_queue(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_dfs_chan_sw_work_queue(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_register_netdevice(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_dev_debugfs_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_vif_type_counter(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  switch i32 %1, label %19 [
    i32 0, label %4
    i32 1, label %4
    i32 2, label %4
    i32 3, label %9
    i32 8, label %14
    i32 9, label %14
  ]

4:                                                ; preds = %3, %3, %3
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 1
  %7 = trunc i32 %2 to i8
  %8 = add i8 %6, %7
  store i8 %8, ptr %5, align 1
  br label %20

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 3, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = trunc i32 %2 to i8
  %13 = add i8 %11, %12
  store i8 %13, ptr %10, align 1
  br label %20

14:                                               ; preds = %3, %3
  %15 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 3, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = trunc i32 %2 to i8
  %18 = add i8 %16, %17
  store i8 %18, ptr %15, align 1
  br label %20

19:                                               ; preds = %3
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.update_vif_type_counter, i32 noundef %1) #14
  br label %20

20:                                               ; preds = %19, %14, %9, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_del_virtual_intf(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1408
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = load ptr, ptr %7, align 8
  tail call void @mwifiex_dev_debugfs_remove(ptr noundef %7) #14
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 131
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i8 0, ptr %9, align 1
  br label %13

13:                                               ; preds = %12, %2
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  tail call void @mwifiex_stop_net_dev_queue(ptr noundef %15, ptr noundef %8) #14
  %16 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 160
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %25, label %19

19:                                               ; preds = %19, %13
  %20 = phi ptr [ %21, %19 ], [ %17, %13 ]
  %21 = load ptr, ptr %20, align 8
  tail call void @skb_unlink(ptr noundef %20, ptr noundef %16) #14
  %22 = load ptr, ptr %7, align 8
  %23 = tail call i32 @mwifiex_write_data_complete(ptr noundef %22, ptr noundef %20, i32 noundef 0, i32 noundef -1) #14
  %24 = icmp eq ptr %21, %16
  br i1 %24, label %25, label %19

25:                                               ; preds = %19, %13
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 6
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  tail call void @netif_carrier_off(ptr noundef %26) #14
  br label %32

32:                                               ; preds = %31, %25
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 102
  %35 = load i8, ptr %34, align 4
  %36 = icmp eq i8 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 70
  %39 = load ptr, ptr %38, align 8
  tail call void @cfg80211_unregister_wdev(ptr noundef %39) #14
  br label %40

40:                                               ; preds = %37, %32
  %41 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 151
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @destroy_workqueue(ptr noundef nonnull %42) #14
  store ptr null, ptr %41, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 154
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @destroy_workqueue(ptr noundef nonnull %47) #14
  store ptr null, ptr %46, align 8
  br label %50

50:                                               ; preds = %49, %45
  store ptr null, ptr %14, align 4
  %51 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 18
  %52 = load i32, ptr %51, align 8
  switch i32 %52, label %65 [
    i32 0, label %53
    i32 1, label %53
    i32 2, label %53
    i32 3, label %57
    i32 8, label %61
    i32 9, label %61
  ]

53:                                               ; preds = %50, %50, %50
  %54 = getelementptr inbounds %struct.mwifiex_adapter, ptr %8, i32 0, i32 3
  %55 = load i8, ptr %54, align 1
  %56 = add i8 %55, -1
  store i8 %56, ptr %54, align 1
  br label %66

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.mwifiex_adapter, ptr %8, i32 0, i32 3, i32 1
  %59 = load i8, ptr %58, align 1
  %60 = add i8 %59, -1
  store i8 %60, ptr %58, align 1
  br label %66

61:                                               ; preds = %50, %50
  %62 = getelementptr inbounds %struct.mwifiex_adapter, ptr %8, i32 0, i32 3, i32 2
  %63 = load i8, ptr %62, align 1
  %64 = add i8 %63, -1
  store i8 %64, ptr %62, align 1
  br label %66

65:                                               ; preds = %50
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %8, i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.update_vif_type_counter, i32 noundef %52) #14
  br label %66

66:                                               ; preds = %65, %61, %57, %53
  store i32 0, ptr %51, align 8
  %67 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 149
  %68 = load ptr, ptr %67, align 4
  tail call void @kfree(ptr noundef %68) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_dev_debugfs_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_stop_net_dev_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_write_data_complete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_init_channel_scan_gap(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load i32, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @mwifiex_band_2ghz, i32 0, i32 3), align 4
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 84
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 4
  %6 = icmp eq i8 %5, 0
  %7 = load i32, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @mwifiex_band_5ghz, i32 0, i32 3), align 4
  %8 = select i1 %6, i32 0, i32 %7
  %9 = add i32 %8, %2
  %10 = shl i32 %9, 1
  %11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 149
  store i32 %10, ptr %11, align 4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 10) #14
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %15 = select i1 %13, i32 -1, i32 %14
  %16 = tail call noalias ptr @vmalloc(i32 noundef %15) #15
  %17 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 148
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  %19 = select i1 %18, i32 -12, i32 0
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_register_cfg80211(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = tail call ptr @wiphy_new_nm(ptr noundef nonnull @mwifiex_cfg80211_ops, i32 noundef 4, ptr noundef null) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.mwifiex_register_cfg80211) #14
  br label %207

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 18
  store i8 10, ptr %10, align 8
  %11 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 22
  store i16 256, ptr %11, align 4
  %12 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 4
  store ptr @mwifiex_mgmt_stypes, ptr %12, align 4
  %13 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 42
  store i16 5000, ptr %13, align 32
  %14 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 9
  store i16 780, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 47
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 33554432
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i16 780, i16 782
  store i16 %19, ptr %14, align 4
  %20 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 53
  store ptr @mwifiex_band_2ghz, ptr %20, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 84
  %22 = load i8, ptr %21, align 2
  %23 = and i8 %22, 4
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, ptr null, ptr @mwifiex_band_5ghz
  %26 = getelementptr %struct.wiphy, ptr %6, i32 0, i32 53, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 158
  %28 = load i8, ptr %27, align 1, !range !11
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %9
  %31 = load i32, ptr %15, align 4
  %32 = and i32 %31, 32768
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 5
  store ptr @mwifiex_iface_comb_ap_sta_drcs, ptr %35, align 8
  br label %43

36:                                               ; preds = %30, %9
  %37 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 128
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 5
  br i1 %39, label %42, label %41

41:                                               ; preds = %36
  store ptr @mwifiex_iface_comb_ap_sta_vht, ptr %40, align 8
  br label %43

42:                                               ; preds = %36
  store ptr @mwifiex_iface_comb_ap_sta, ptr %40, align 8
  br label %43

43:                                               ; preds = %42, %41, %34
  %44 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 6
  store i32 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 142
  %46 = load i8, ptr %45, align 2
  %47 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 141
  %48 = load i8, ptr %47, align 1
  %49 = call i8 @llvm.umax.i8(i8 %46, i8 %48)
  %50 = zext i8 %49 to i16
  %51 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 68
  store i16 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 28
  store ptr @mwifiex_cipher_suites, ptr %52, align 16
  %53 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 27
  store i32 6, ptr %53, align 4
  %54 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 163
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 12
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, 21
  store i32 %60, ptr %58, align 4
  %61 = load ptr, ptr %54, align 4
  tail call void @wiphy_apply_custom_regulatory(ptr noundef nonnull %6, ptr noundef %61) #14
  br label %62

62:                                               ; preds = %57, %43
  %63 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 1
  %64 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 11
  %65 = load i32, ptr %64, align 4
  store i32 %65, ptr %63, align 4
  %66 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 11, i32 4
  %67 = load i16, ptr %66, align 2
  %68 = getelementptr %struct.wiphy, ptr %6, i32 0, i32 1, i32 4
  store i16 %67, ptr %68, align 2
  %69 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 16
  store i32 1, ptr %69, align 16
  %70 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 11
  %71 = load i32, ptr %70, align 8
  %72 = or i32 %71, 11157520
  store i32 %72, ptr %70, align 8
  %73 = load i32, ptr %15, align 4
  %74 = and i32 %73, 16384
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %62
  %77 = or i32 %71, 11255824
  store i32 %77, ptr %70, align 8
  br label %78

78:                                               ; preds = %76, %62
  %79 = load ptr, ptr %5, align 8
  %80 = getelementptr inbounds %struct.mwifiex_adapter, ptr %79, i32 0, i32 47
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 2097152
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, ptr @mwifiex_wowlan_support_no_gtk, ptr @mwifiex_wowlan_support
  %85 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 40
  store ptr %84, ptr %85, align 8
  %86 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 63
  store ptr @mwifiex_coalesce_support, ptr %86, align 8
  %87 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 46
  store i32 7, ptr %87, align 4
  %88 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 19
  store i8 1, ptr %88, align 1
  %89 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 20
  store i8 10, ptr %89, align 2
  %90 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 23
  store i16 256, ptr %90, align 2
  %91 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 21
  store i8 10, ptr %91, align 1
  %92 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 46
  %93 = load i16, ptr %92, align 4
  %94 = zext i16 %93 to i32
  %95 = shl nsw i32 -1, %94
  %96 = xor i32 %95, -1
  %97 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 44
  store i32 %96, ptr %97, align 4
  %98 = load i16, ptr %92, align 4
  %99 = zext i16 %98 to i32
  %100 = shl nsw i32 -1, %99
  %101 = xor i32 %100, -1
  %102 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 45
  store i32 %101, ptr %102, align 8
  %103 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 13
  %104 = load i32, ptr %103, align 32
  %105 = or i32 %104, 1092
  store i32 %105, ptr %103, align 32
  %106 = load i32, ptr %15, align 4
  %107 = and i32 %106, 33554432
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %78
  %110 = or i32 %104, 1094
  store i32 %110, ptr %103, align 32
  %111 = load i32, ptr %15, align 4
  br label %112

112:                                              ; preds = %109, %78
  %113 = phi i32 [ %110, %109 ], [ %105, %78 ]
  %114 = phi i32 [ %111, %109 ], [ %106, %78 ]
  %115 = and i32 %114, 134217728
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = or i32 %113, -536870912
  store i32 %118, ptr %103, align 32
  %119 = load i32, ptr %15, align 4
  br label %120

120:                                              ; preds = %117, %112
  %121 = phi i32 [ %118, %117 ], [ %113, %112 ]
  %122 = phi i32 [ %119, %117 ], [ %114, %112 ]
  %123 = and i32 %122, 16384
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %120
  %126 = or i32 %121, 268435456
  store i32 %126, ptr %103, align 32
  br label %127

127:                                              ; preds = %125, %120
  %128 = phi i32 [ %126, %125 ], [ %121, %120 ]
  %129 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 138
  %130 = load i8, ptr %129, align 2
  %131 = icmp eq i8 %130, 15
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = or i32 %128, 1
  store i32 %133, ptr %103, align 32
  br label %134

134:                                              ; preds = %132, %127
  %135 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 17
  store i32 16, ptr %135, align 4
  %136 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 54
  store ptr @mwifiex_reg_notifier, ptr %136, align 32
  %137 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 85
  %138 = ptrtoint ptr %0 to i32
  store i32 %138, ptr %137, align 4
  %139 = load ptr, ptr %5, align 8
  %140 = getelementptr inbounds %struct.mwifiex_adapter, ptr %139, i32 0, i32 9
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 1
  store ptr %141, ptr %142, align 4
  %143 = tail call i32 @wiphy_register(ptr noundef nonnull %6) #14
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %134
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.mwifiex_register_cfg80211, i32 noundef %143) #14
  tail call void @wiphy_free(ptr noundef nonnull %6) #14
  br label %207

146:                                              ; preds = %134
  %147 = load ptr, ptr %54, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %191

149:                                              ; preds = %146
  %150 = load ptr, ptr @reg_alpha2, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %173, label %152

152:                                              ; preds = %149
  %153 = tail call i32 @strlen(ptr noundef nonnull %150) #14
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %173

155:                                              ; preds = %152
  %156 = load i8, ptr %150, align 1
  %157 = zext i8 %156 to i32
  %158 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %157
  %159 = load i8, ptr %158, align 1
  %160 = and i8 %159, 3
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %155
  %163 = getelementptr i8, ptr %150, i32 1
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %165
  %167 = load i8, ptr %166, align 1
  %168 = and i8 %167, 3
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %162
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.16, ptr noundef nonnull %150) #14
  %171 = load ptr, ptr @reg_alpha2, align 4
  %172 = tail call i32 @regulatory_hint(ptr noundef nonnull %6, ptr noundef %171) #14
  br label %191

173:                                              ; preds = %162, %155, %152, %149
  %174 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 74
  %175 = load i16, ptr %174, align 4
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 536870912, ptr noundef nonnull @.str.17) #14
  br label %191

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 12
  %180 = load i32, ptr %179, align 4
  %181 = or i32 %180, 20
  store i32 %181, ptr %179, align 4
  %182 = load i16, ptr %174, align 4
  %183 = trunc i16 %182 to i8
  %184 = tail call ptr @mwifiex_11d_code_2_region(i8 noundef zeroext %183) #14
  %185 = icmp eq ptr %184, null
  br i1 %185, label %191, label %186

186:                                              ; preds = %178
  %187 = tail call i32 @regulatory_hint(ptr noundef nonnull %6, ptr noundef nonnull %184) #14
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %186
  %190 = load ptr, ptr %5, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %190, i32 noundef 4, ptr noundef nonnull @.str.18) #14
  br label %191

191:                                              ; preds = %189, %186, %178, %177, %170, %146
  %192 = call i32 @mwifiex_send_cmd(ptr noundef %5, i16 noundef zeroext 22, i16 noundef zeroext 0, i32 noundef 8, ptr noundef nonnull %2, i1 noundef zeroext true) #14
  %193 = load i32, ptr %2, align 4
  %194 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 35
  store i32 %193, ptr %194, align 8
  %195 = call i32 @mwifiex_send_cmd(ptr noundef %5, i16 noundef zeroext 22, i16 noundef zeroext 0, i32 noundef 5, ptr noundef nonnull %2, i1 noundef zeroext true) #14
  %196 = load i32, ptr %2, align 4
  %197 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 36
  store i32 %196, ptr %197, align 4
  %198 = call i32 @mwifiex_send_cmd(ptr noundef %5, i16 noundef zeroext 22, i16 noundef zeroext 0, i32 noundef 6, ptr noundef nonnull %3, i1 noundef zeroext true) #14
  %199 = load i32, ptr %3, align 4
  %200 = trunc i32 %199 to i8
  %201 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 33
  store i8 %200, ptr %201, align 4
  %202 = call i32 @mwifiex_send_cmd(ptr noundef %5, i16 noundef zeroext 22, i16 noundef zeroext 0, i32 noundef 7, ptr noundef nonnull %3, i1 noundef zeroext true) #14
  %203 = load i32, ptr %3, align 4
  %204 = trunc i32 %203 to i8
  %205 = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 34
  store i8 %204, ptr %205, align 1
  %206 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 10
  store ptr %6, ptr %206, align 4
  br label %207

207:                                              ; preds = %191, %145, %8
  %208 = phi i32 [ %143, %145 ], [ %143, %191 ], [ -12, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret i32 %208
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_apply_custom_regulatory(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mwifiex_reg_notifier(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !9

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %8, i32 0, i32 5
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = icmp eq i8 %10, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %18, %5
  %14 = phi i32 [ %19, %18 ], [ 0, %5 ]
  %15 = getelementptr %struct.mwifiex_adapter, ptr %8, i32 0, i32 4, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = add nuw nsw i32 %14, 1
  %20 = icmp eq i32 %19, %11
  br i1 %20, label %21, label %13

21:                                               ; preds = %18, %13, %5
  %22 = phi ptr [ null, %5 ], [ %16, %13 ], [ null, %18 ]
  %23 = getelementptr inbounds %struct.regulatory_request, ptr %1, i32 0, i32 4
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = getelementptr %struct.regulatory_request, ptr %1, i32 0, i32 4, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %8, i32 noundef 1073741824, ptr noundef nonnull @.str.124, i32 noundef %25, i32 noundef %28) #14
  %29 = getelementptr %struct.wiphy, ptr %0, i32 0, i32 53, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %51, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %30, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %47, %32
  %37 = phi i32 [ %48, %47 ], [ %34, %32 ]
  %38 = phi i32 [ %49, %47 ], [ 0, %32 ]
  %39 = load ptr, ptr %30, align 4
  %40 = getelementptr %struct.ieee80211_channel, ptr %39, i32 %38, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 9
  %43 = icmp eq i32 %42, 8
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = or i32 %41, 2
  store i32 %45, ptr %40, align 4
  %46 = load i32, ptr %33, align 4
  br label %47

47:                                               ; preds = %44, %36
  %48 = phi i32 [ %37, %36 ], [ %46, %44 ]
  %49 = add nuw i32 %38, 1
  %50 = icmp ult i32 %49, %48
  br i1 %50, label %36, label %51

51:                                               ; preds = %47, %32, %21
  %52 = getelementptr inbounds %struct.regulatory_request, ptr %1, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp ult i32 %53, 4
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %8, i32 noundef 4, ptr noundef nonnull @.str.125, i32 noundef %53) #14
  br label %65

56:                                               ; preds = %51
  %57 = tail call i32 @strncmp(ptr noundef %23, ptr noundef nonnull dereferenceable(3) @.str.126, i32 noundef 2)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.mwifiex_adapter, ptr %8, i32 0, i32 124
  %61 = tail call i32 @strncmp(ptr noundef %23, ptr noundef %60, i32 noundef 3)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(3) %60, ptr noundef align 4 dereferenceable(3) %23, i32 3, i1 false)
  %64 = tail call i32 @mwifiex_send_domain_info_cmd_fw(ptr noundef nonnull %0)
  tail call void @mwifiex_dnld_txpwr_table(ptr noundef %22) #14
  br label %65

65:                                               ; preds = %63, %59, %56, %55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wiphy_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_hint(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_11d_code_2_region(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_cfg80211_deinit_p2p(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #14
  store i16 0, ptr %2, align 2
  %3 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %2, i1 noundef zeroext true) #14
  %4 = icmp ne i32 %3, 0
  %5 = sext i1 %4 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #14
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unregister_wdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_new_nm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_suspend(ptr noundef %0, ptr noundef readonly %1) #1 {
  %3 = alloca [7 x i8], align 2
  %4 = alloca [4 x i32], align 4
  %5 = alloca %struct.mwifiex_ds_mef_cfg, align 4
  %6 = alloca %struct.mwifiex_ds_hs_cfg, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i32 %11 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 5
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = icmp eq i8 %14, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %27, %9
  %18 = phi i32 [ %28, %27 ], [ 0, %9 ]
  %19 = getelementptr %struct.mwifiex_adapter, ptr %12, i32 0, i32 4, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %20, i32 0, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %17
  %28 = add nuw nsw i32 %18, 1
  %29 = icmp eq i32 %28, %15
  br i1 %29, label %30, label %17

30:                                               ; preds = %27, %22, %9
  %31 = phi ptr [ null, %9 ], [ %20, %22 ], [ null, %27 ]
  %32 = getelementptr inbounds %struct.mwifiex_private, ptr %31, i32 0, i32 130
  store i8 1, ptr %32, align 8
  %33 = load i8, ptr %13, align 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %35, %30
  %36 = phi i32 [ %39, %35 ], [ 0, %30 ]
  %37 = getelementptr %struct.mwifiex_adapter, ptr %12, i32 0, i32 4, i32 %36
  %38 = load ptr, ptr %37, align 4
  tail call void @mwifiex_abort_cac(ptr noundef %38) #14
  %39 = add nuw nsw i32 %36, 1
  %40 = load i8, ptr %13, align 4
  %41 = zext i8 %40 to i32
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %35, label %43

43:                                               ; preds = %35, %30
  tail call void @mwifiex_cancel_all_pending_cmd(ptr noundef %12) #14
  %44 = load i8, ptr %13, align 4
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %60, %43
  %47 = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 71
  br label %65

48:                                               ; preds = %60, %43
  %49 = phi i8 [ %61, %60 ], [ %44, %43 ]
  %50 = phi i32 [ %62, %60 ], [ 0, %43 ]
  %51 = getelementptr %struct.mwifiex_adapter, ptr %12, i32 0, i32 4, i32 %50
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.mwifiex_private, ptr %52, i32 0, i32 15
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  tail call void @netif_device_detach(ptr noundef nonnull %56) #14
  %59 = load i8, ptr %13, align 4
  br label %60

60:                                               ; preds = %58, %54, %48
  %61 = phi i8 [ %49, %48 ], [ %49, %54 ], [ %59, %58 ]
  %62 = add nuw nsw i32 %50, 1
  %63 = zext i8 %61 to i32
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %48, label %46

65:                                               ; preds = %75, %46
  %66 = phi i32 [ 0, %46 ], [ %76, %75 ]
  %67 = tail call i32 @mwifiex_wmm_lists_empty(ptr noundef %12) #14
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = tail call i32 @mwifiex_bypass_txlist_empty(ptr noundef %12) #14
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %47, align 4
  %74 = icmp eq ptr %73, %47
  br i1 %74, label %78, label %75

75:                                               ; preds = %72, %69, %65
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #14
  %76 = add nuw nsw i32 %66, 1
  %77 = icmp eq i32 %76, 10
  br i1 %77, label %78, label %65

78:                                               ; preds = %75, %72
  %79 = icmp eq ptr %1, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %78
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 1073741824, ptr noundef nonnull @.str.20) #14
  br label %567

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.mwifiex_private, ptr %31, i32 0, i32 8
  %83 = load i8, ptr %82, align 8
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %1, i32 0, i32 10
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.21) #14
  br label %567

90:                                               ; preds = %85, %81
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  %91 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %1, i32 0, i32 9
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %1, i32 0, i32 2
  %96 = load i8, ptr %95, align 2, !range !11
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %98, %94
  %100 = phi i32 [ 2, %98 ], [ 1, %94 ]
  %101 = mul nuw nsw i32 %100, 142
  %102 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %101, i32 noundef 3520) #15
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  br label %532

105:                                              ; preds = %99
  %106 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %106, align 4
  store i32 3, ptr %5, align 4
  %107 = trunc i32 %100 to i16
  store i16 %107, ptr %106, align 4
  %108 = getelementptr inbounds %struct.mwifiex_ds_mef_cfg, ptr %5, i32 0, i32 2
  store ptr %102, ptr %108, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %109 = load ptr, ptr %31, align 8
  store i8 1, ptr %102, align 64
  %110 = getelementptr inbounds %struct.mwifiex_mef_entry, ptr %102, i32 0, i32 1
  store i8 16, ptr %110, align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #14
  %111 = getelementptr %struct.mwifiex_adapter, ptr %109, i32 0, i32 4, i32 0
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.mwifiex_private, ptr %112, i32 0, i32 15
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %131, label %118

116:                                              ; preds = %176, %173
  %117 = phi i32 [ %175, %173 ], [ %155, %176 ]
  br label %178

118:                                              ; preds = %105
  %119 = getelementptr inbounds %struct.net_device, ptr %114, i32 0, i32 68
  %120 = load ptr, ptr %119, align 16
  %121 = icmp eq ptr %120, null
  br i1 %121, label %131, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.in_device, ptr %120, i32 0, i32 4
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.in_ifaddr, ptr %124, i32 0, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  store i32 %128, ptr %4, align 4
  br label %131

131:                                              ; preds = %130, %126, %122, %118, %105
  %132 = phi i32 [ %128, %130 ], [ 0, %126 ], [ 0, %122 ], [ 0, %118 ], [ 0, %105 ]
  %133 = phi i32 [ 1, %130 ], [ 0, %126 ], [ 0, %122 ], [ 0, %118 ], [ 0, %105 ]
  %134 = getelementptr %struct.mwifiex_adapter, ptr %109, i32 0, i32 4, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.mwifiex_private, ptr %135, i32 0, i32 15
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %154, label %139

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.net_device, ptr %137, i32 0, i32 68
  %141 = load ptr, ptr %140, align 16
  %142 = icmp eq ptr %141, null
  br i1 %142, label %154, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.in_device, ptr %141, i32 0, i32 4
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %154, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.in_ifaddr, ptr %145, i32 0, i32 4
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  store i32 %149, ptr %152, align 4
  %153 = add nuw nsw i32 %133, 1
  br label %154

154:                                              ; preds = %151, %147, %143, %139, %131
  %155 = phi i32 [ %153, %151 ], [ %133, %147 ], [ %133, %143 ], [ %133, %139 ], [ %133, %131 ]
  %156 = getelementptr %struct.mwifiex_adapter, ptr %109, i32 0, i32 4, i32 2
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.mwifiex_private, ptr %157, i32 0, i32 15
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %176, label %161

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.net_device, ptr %159, i32 0, i32 68
  %163 = load ptr, ptr %162, align 16
  %164 = icmp eq ptr %163, null
  br i1 %164, label %176, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.in_device, ptr %163, i32 0, i32 4
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %176, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.in_ifaddr, ptr %167, i32 0, i32 4
  %171 = load i32, ptr %170, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  store i32 %171, ptr %174, align 4
  %175 = add nuw nsw i32 %155, 1
  br label %116

176:                                              ; preds = %169, %165, %161, %154
  %177 = icmp eq i32 %155, 0
  br i1 %177, label %201, label %116

178:                                              ; preds = %198, %116
  %179 = phi i32 [ %200, %198 ], [ %132, %116 ]
  %180 = phi i32 [ %196, %198 ], [ 0, %116 ]
  %181 = phi i32 [ %195, %198 ], [ 0, %116 ]
  %182 = icmp eq i32 %179, 0
  br i1 %182, label %194, label %183

183:                                              ; preds = %178
  %184 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 0, i32 2, i32 %181
  store i16 1, ptr %184, align 2
  %185 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 0, i32 2, i32 %181, i32 2
  store i32 %179, ptr %185, align 2
  %186 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 0, i32 2, i32 %181, i32 2, i32 6
  store i8 4, ptr %186, align 2
  %187 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 0, i32 2, i32 %181, i32 1
  store i16 46, ptr %187, align 2
  %188 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 0, i32 2, i32 %181, i32 3
  store i8 65, ptr %188, align 1
  %189 = icmp eq i32 %181, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %183
  %191 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 0, i32 2, i32 %181, i32 4
  store i8 69, ptr %191, align 2
  br label %192

192:                                              ; preds = %190, %183
  %193 = add i32 %181, 1
  br label %194

194:                                              ; preds = %192, %178
  %195 = phi i32 [ %193, %192 ], [ %181, %178 ]
  %196 = add nuw nsw i32 %180, 1
  %197 = icmp eq i32 %196, %117
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = getelementptr [4 x i32], ptr %4, i32 0, i32 %196
  %200 = load i32, ptr %199, align 4
  br label %178

201:                                              ; preds = %194, %176
  %202 = phi i32 [ 0, %176 ], [ %195, %194 ]
  %203 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 0, i32 2, i32 %202
  store i16 1, ptr %203, align 2
  %204 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 0, i32 2, i32 %202, i32 2
  store i8 8, ptr %204, align 2
  %205 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 0, i32 2, i32 %202, i32 2, i32 1
  store i8 6, ptr %205, align 1
  %206 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 0, i32 2, i32 %202, i32 2, i32 6
  store i8 2, ptr %206, align 2
  %207 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 0, i32 2, i32 %202, i32 1
  store i16 20, ptr %207, align 2
  %208 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 0, i32 2, i32 %202, i32 3
  store i8 65, ptr %208, align 1
  %209 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 0, i32 2, i32 %202, i32 4
  store i8 68, ptr %209, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  %210 = load i32, ptr %91, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %201
  %213 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %1, i32 0, i32 2
  %214 = load i8, ptr %213, align 2, !range !11
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %529, label %216

216:                                              ; preds = %212
  %217 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #14
  store i8 1, ptr %217, align 2
  %218 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 1
  store i8 3, ptr %218, align 1
  br label %498

219:                                              ; preds = %201
  %220 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #14
  store i8 1, ptr %220, align 2
  %221 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 1
  store i8 3, ptr %221, align 1
  %222 = icmp sgt i32 %210, 0
  br i1 %222, label %223, label %498

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %1, i32 0, i32 7
  %225 = getelementptr inbounds i8, ptr %3, i32 6
  %226 = getelementptr inbounds i8, ptr %3, i32 2
  %227 = getelementptr inbounds i8, ptr %3, i32 4
  br label %228

228:                                              ; preds = %490, %223
  %229 = phi i1 [ true, %223 ], [ %492, %490 ]
  %230 = phi i32 [ 0, %223 ], [ %491, %490 ]
  %231 = phi i32 [ 0, %223 ], [ %493, %490 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(7) %3, i8 0, i32 6, i1 false) #14
  %232 = load ptr, ptr %224, align 4
  %233 = getelementptr %struct.cfg80211_pkt_pattern, ptr %232, i32 %231, i32 2
  %234 = load i32, ptr %233, align 4
  %235 = add i32 %234, 7
  %236 = icmp sgt i32 %235, 7
  br i1 %236, label %237, label %438

237:                                              ; preds = %228
  %238 = getelementptr %struct.cfg80211_pkt_pattern, ptr %232, i32 %231
  %239 = getelementptr %struct.cfg80211_pkt_pattern, ptr %232, i32 %231, i32 1
  %240 = getelementptr %struct.cfg80211_pkt_pattern, ptr %232, i32 %231, i32 3
  %241 = load ptr, ptr %238, align 4
  %242 = lshr i32 %235, 3
  br label %243

243:                                              ; preds = %412, %237
  %244 = phi i1 [ false, %237 ], [ %404, %412 ]
  %245 = phi i32 [ 0, %237 ], [ %403, %412 ]
  %246 = phi i32 [ 0, %237 ], [ %413, %412 ]
  %247 = shl i32 %246, 3
  %248 = getelementptr i8, ptr %241, i32 %246
  %249 = load i8, ptr %248, align 1
  %250 = zext i8 %249 to i32
  %251 = and i32 %250, 1
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %421, label %415

253:                                              ; preds = %434, %429
  %254 = phi i32 [ %250, %434 ], [ %433, %429 ]
  %255 = and i32 %254, 2
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %253
  %258 = getelementptr i8, ptr %3, i32 %425
  %259 = load ptr, ptr %239, align 4
  %260 = or i32 %247, 1
  %261 = getelementptr i8, ptr %259, i32 %260
  %262 = load i8, ptr %261, align 1
  store i8 %262, ptr %258, align 1
  %263 = add nsw i32 %425, 1
  br i1 %426, label %524, label %264

264:                                              ; preds = %257, %253
  %265 = phi i32 [ %263, %257 ], [ %425, %253 ]
  %266 = phi i1 [ false, %257 ], [ %428, %253 ]
  %267 = icmp ne i32 %265, 0
  %268 = select i1 %267, i1 true, i1 %266
  br i1 %268, label %274, label %269

269:                                              ; preds = %264
  %270 = load i32, ptr %240, align 4
  %271 = add i32 %270, 1
  store i32 %271, ptr %240, align 4
  %272 = load i8, ptr %248, align 1
  %273 = zext i8 %272 to i32
  br label %276

274:                                              ; preds = %264
  %275 = icmp sgt i32 %265, 6
  br i1 %275, label %524, label %276

276:                                              ; preds = %274, %269
  %277 = phi i32 [ %254, %274 ], [ %273, %269 ]
  %278 = and i32 %277, 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %287, label %280

280:                                              ; preds = %276
  %281 = getelementptr i8, ptr %3, i32 %265
  %282 = load ptr, ptr %239, align 4
  %283 = or i32 %247, 2
  %284 = getelementptr i8, ptr %282, i32 %283
  %285 = load i8, ptr %284, align 1
  store i8 %285, ptr %281, align 1
  %286 = add nsw i32 %265, 1
  br i1 %266, label %524, label %287

287:                                              ; preds = %280, %276
  %288 = phi i32 [ %286, %280 ], [ %265, %276 ]
  %289 = phi i1 [ false, %280 ], [ %268, %276 ]
  %290 = icmp ne i32 %288, 0
  %291 = select i1 %290, i1 true, i1 %289
  br i1 %291, label %297, label %292

292:                                              ; preds = %287
  %293 = load i32, ptr %240, align 4
  %294 = add i32 %293, 1
  store i32 %294, ptr %240, align 4
  %295 = load i8, ptr %248, align 1
  %296 = zext i8 %295 to i32
  br label %299

297:                                              ; preds = %287
  %298 = icmp sgt i32 %288, 6
  br i1 %298, label %524, label %299

299:                                              ; preds = %297, %292
  %300 = phi i32 [ %277, %297 ], [ %296, %292 ]
  %301 = and i32 %300, 8
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %310, label %303

303:                                              ; preds = %299
  %304 = getelementptr i8, ptr %3, i32 %288
  %305 = load ptr, ptr %239, align 4
  %306 = or i32 %247, 3
  %307 = getelementptr i8, ptr %305, i32 %306
  %308 = load i8, ptr %307, align 1
  store i8 %308, ptr %304, align 1
  %309 = add nsw i32 %288, 1
  br i1 %289, label %524, label %310

310:                                              ; preds = %303, %299
  %311 = phi i32 [ %309, %303 ], [ %288, %299 ]
  %312 = phi i1 [ false, %303 ], [ %291, %299 ]
  %313 = icmp ne i32 %311, 0
  %314 = select i1 %313, i1 true, i1 %312
  br i1 %314, label %320, label %315

315:                                              ; preds = %310
  %316 = load i32, ptr %240, align 4
  %317 = add i32 %316, 1
  store i32 %317, ptr %240, align 4
  %318 = load i8, ptr %248, align 1
  %319 = zext i8 %318 to i32
  br label %322

320:                                              ; preds = %310
  %321 = icmp sgt i32 %311, 6
  br i1 %321, label %524, label %322

322:                                              ; preds = %320, %315
  %323 = phi i32 [ %300, %320 ], [ %319, %315 ]
  %324 = and i32 %323, 16
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %333, label %326

326:                                              ; preds = %322
  %327 = getelementptr i8, ptr %3, i32 %311
  %328 = load ptr, ptr %239, align 4
  %329 = or i32 %247, 4
  %330 = getelementptr i8, ptr %328, i32 %329
  %331 = load i8, ptr %330, align 1
  store i8 %331, ptr %327, align 1
  %332 = add nsw i32 %311, 1
  br i1 %312, label %524, label %333

333:                                              ; preds = %326, %322
  %334 = phi i32 [ %332, %326 ], [ %311, %322 ]
  %335 = phi i1 [ false, %326 ], [ %314, %322 ]
  %336 = icmp ne i32 %334, 0
  %337 = select i1 %336, i1 true, i1 %335
  br i1 %337, label %343, label %338

338:                                              ; preds = %333
  %339 = load i32, ptr %240, align 4
  %340 = add i32 %339, 1
  store i32 %340, ptr %240, align 4
  %341 = load i8, ptr %248, align 1
  %342 = zext i8 %341 to i32
  br label %345

343:                                              ; preds = %333
  %344 = icmp sgt i32 %334, 6
  br i1 %344, label %524, label %345

345:                                              ; preds = %343, %338
  %346 = phi i32 [ %323, %343 ], [ %342, %338 ]
  %347 = and i32 %346, 32
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %356, label %349

349:                                              ; preds = %345
  %350 = getelementptr i8, ptr %3, i32 %334
  %351 = load ptr, ptr %239, align 4
  %352 = or i32 %247, 5
  %353 = getelementptr i8, ptr %351, i32 %352
  %354 = load i8, ptr %353, align 1
  store i8 %354, ptr %350, align 1
  %355 = add nsw i32 %334, 1
  br i1 %335, label %524, label %356

356:                                              ; preds = %349, %345
  %357 = phi i32 [ %355, %349 ], [ %334, %345 ]
  %358 = phi i1 [ false, %349 ], [ %337, %345 ]
  %359 = icmp ne i32 %357, 0
  %360 = select i1 %359, i1 true, i1 %358
  br i1 %360, label %366, label %361

361:                                              ; preds = %356
  %362 = load i32, ptr %240, align 4
  %363 = add i32 %362, 1
  store i32 %363, ptr %240, align 4
  %364 = load i8, ptr %248, align 1
  %365 = zext i8 %364 to i32
  br label %368

366:                                              ; preds = %356
  %367 = icmp sgt i32 %357, 6
  br i1 %367, label %524, label %368

368:                                              ; preds = %366, %361
  %369 = phi i32 [ %346, %366 ], [ %365, %361 ]
  %370 = and i32 %369, 64
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %379, label %372

372:                                              ; preds = %368
  %373 = getelementptr i8, ptr %3, i32 %357
  %374 = load ptr, ptr %239, align 4
  %375 = or i32 %247, 6
  %376 = getelementptr i8, ptr %374, i32 %375
  %377 = load i8, ptr %376, align 1
  store i8 %377, ptr %373, align 1
  %378 = add nsw i32 %357, 1
  br i1 %358, label %524, label %379

379:                                              ; preds = %372, %368
  %380 = phi i32 [ %378, %372 ], [ %357, %368 ]
  %381 = phi i1 [ false, %372 ], [ %360, %368 ]
  %382 = icmp ne i32 %380, 0
  %383 = select i1 %382, i1 true, i1 %381
  br i1 %383, label %389, label %384

384:                                              ; preds = %379
  %385 = load i32, ptr %240, align 4
  %386 = add i32 %385, 1
  store i32 %386, ptr %240, align 4
  %387 = load i8, ptr %248, align 1
  %388 = zext i8 %387 to i32
  br label %391

389:                                              ; preds = %379
  %390 = icmp sgt i32 %380, 6
  br i1 %390, label %524, label %391

391:                                              ; preds = %389, %384
  %392 = phi i32 [ %369, %389 ], [ %388, %384 ]
  %393 = and i32 %392, 128
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %402, label %395

395:                                              ; preds = %391
  %396 = getelementptr i8, ptr %3, i32 %380
  %397 = load ptr, ptr %239, align 4
  %398 = or i32 %247, 7
  %399 = getelementptr i8, ptr %397, i32 %398
  %400 = load i8, ptr %399, align 1
  store i8 %400, ptr %396, align 1
  %401 = add nsw i32 %380, 1
  br i1 %381, label %524, label %402

402:                                              ; preds = %395, %391
  %403 = phi i32 [ %401, %395 ], [ %380, %391 ]
  %404 = phi i1 [ false, %395 ], [ %383, %391 ]
  %405 = icmp ne i32 %403, 0
  %406 = select i1 %405, i1 true, i1 %404
  br i1 %406, label %410, label %407

407:                                              ; preds = %402
  %408 = load i32, ptr %240, align 4
  %409 = add i32 %408, 1
  store i32 %409, ptr %240, align 4
  br label %412

410:                                              ; preds = %402
  %411 = icmp sgt i32 %403, 6
  br i1 %411, label %524, label %412

412:                                              ; preds = %410, %407
  %413 = add nuw nsw i32 %246, 1
  %414 = icmp eq i32 %413, %242
  br i1 %414, label %436, label %243

415:                                              ; preds = %243
  %416 = getelementptr i8, ptr %3, i32 %245
  %417 = load ptr, ptr %239, align 4
  %418 = getelementptr i8, ptr %417, i32 %247
  %419 = load i8, ptr %418, align 1
  store i8 %419, ptr %416, align 1
  %420 = add nsw i32 %245, 1
  br i1 %244, label %524, label %424

421:                                              ; preds = %243
  %422 = icmp ne i32 %245, 0
  %423 = select i1 %422, i1 true, i1 %244
  br label %424

424:                                              ; preds = %421, %415
  %425 = phi i32 [ %420, %415 ], [ %245, %421 ]
  %426 = phi i1 [ false, %415 ], [ %423, %421 ]
  %427 = icmp ne i32 %425, 0
  %428 = select i1 %427, i1 true, i1 %426
  br i1 %428, label %434, label %429

429:                                              ; preds = %424
  %430 = load i32, ptr %240, align 4
  %431 = add i32 %430, 1
  store i32 %431, ptr %240, align 4
  %432 = load i8, ptr %248, align 1
  %433 = zext i8 %432 to i32
  br label %253

434:                                              ; preds = %424
  %435 = icmp sgt i32 %425, 6
  br i1 %435, label %524, label %253

436:                                              ; preds = %412
  %437 = load ptr, ptr %224, align 4
  br label %438

438:                                              ; preds = %436, %228
  %439 = phi ptr [ %232, %228 ], [ %437, %436 ]
  %440 = phi i32 [ 0, %228 ], [ %403, %436 ]
  %441 = trunc i32 %440 to i8
  store i8 %441, ptr %225, align 2
  %442 = getelementptr %struct.cfg80211_pkt_pattern, ptr %439, i32 %231, i32 3
  %443 = load i32, ptr %442, align 4
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %477

445:                                              ; preds = %438
  %446 = load i8, ptr %3, align 2
  %447 = and i8 %446, 1
  %448 = icmp eq i8 %447, 0
  %449 = icmp eq i8 %441, 1
  %450 = select i1 %448, i1 %449, i1 false
  br i1 %450, label %451, label %454

451:                                              ; preds = %445
  %452 = load i32, ptr %5, align 4
  %453 = or i32 %452, 2
  store i32 %453, ptr %5, align 4
  br label %490

454:                                              ; preds = %445
  %455 = load i16, ptr %3, align 2
  %456 = load i16, ptr %226, align 2
  %457 = and i16 %456, %455
  %458 = load i16, ptr %227, align 2
  %459 = and i16 %457, %458
  %460 = icmp eq i16 %459, -1
  br i1 %460, label %461, label %464

461:                                              ; preds = %454
  %462 = load i32, ptr %5, align 4
  %463 = or i32 %462, 1
  store i32 %463, ptr %5, align 4
  br label %490

464:                                              ; preds = %454
  %465 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %3, ptr noundef nonnull dereferenceable(2) @mwifiex_set_wowlan_mef_entry.ipv4_mc_mac, i32 2) #14
  %466 = icmp eq i32 %465, 0
  %467 = icmp eq i8 %441, 2
  %468 = select i1 %466, i1 %467, i1 false
  br i1 %468, label %474, label %469

469:                                              ; preds = %464
  %470 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %3, ptr noundef nonnull dereferenceable(3) @mwifiex_set_wowlan_mef_entry.ipv6_mc_mac, i32 3) #14
  %471 = icmp eq i32 %470, 0
  %472 = icmp eq i8 %441, 3
  %473 = select i1 %471, i1 %472, i1 false
  br i1 %473, label %474, label %477

474:                                              ; preds = %469, %464
  %475 = load i32, ptr %5, align 4
  %476 = or i32 %475, 8
  store i32 %476, ptr %5, align 4
  br label %490

477:                                              ; preds = %469, %438
  %478 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 2, i32 %230
  store i16 1, ptr %478, align 2
  %479 = load i32, ptr %442, align 4
  %480 = trunc i32 %479 to i16
  %481 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 2, i32 %230, i32 1
  store i16 %480, ptr %481, align 2
  %482 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 2, i32 %230, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(7) %482, ptr noundef nonnull align 2 dereferenceable(7) %3, i32 7, i1 false) #14
  %483 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 2, i32 %230, i32 3
  store i8 65, ptr %483, align 1
  br i1 %229, label %484, label %486

484:                                              ; preds = %477
  %485 = load ptr, ptr %31, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %485, i32 noundef 1073741824, ptr noundef nonnull @.str.27) #14
  br label %488

486:                                              ; preds = %477
  %487 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 2, i32 %230, i32 4
  store i8 68, ptr %487, align 2
  br label %488

488:                                              ; preds = %486, %484
  %489 = add i32 %230, 1
  br label %490

490:                                              ; preds = %488, %474, %461, %451
  %491 = phi i32 [ %489, %488 ], [ %230, %451 ], [ %230, %461 ], [ %230, %474 ]
  %492 = phi i1 [ false, %488 ], [ %229, %451 ], [ %229, %461 ], [ %229, %474 ]
  %493 = add nuw nsw i32 %231, 1
  %494 = load i32, ptr %91, align 4
  %495 = icmp slt i32 %493, %494
  br i1 %495, label %228, label %496

496:                                              ; preds = %490
  %497 = load i32, ptr %5, align 4
  br label %498

498:                                              ; preds = %496, %219, %216
  %499 = phi i32 [ 3, %219 ], [ 3, %216 ], [ %497, %496 ]
  %500 = phi i32 [ 0, %219 ], [ 0, %216 ], [ %491, %496 ]
  %501 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %1, i32 0, i32 2
  %502 = load i8, ptr %501, align 2, !range !11
  %503 = icmp eq i8 %502, 0
  br i1 %503, label %526, label %504

504:                                              ; preds = %498
  %505 = or i32 %499, 2
  store i32 %505, ptr %5, align 4
  %506 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 2, i32 %500
  store i16 16, ptr %506, align 2
  %507 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 2, i32 %500, i32 2
  %508 = getelementptr inbounds %struct.mwifiex_private, ptr %31, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %507, ptr noundef align 2 dereferenceable(6) %508, i32 6, i1 false) #14
  %509 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 2, i32 %500, i32 2, i32 6
  store i8 6, ptr %509, align 2
  %510 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 2, i32 %500, i32 1
  store i16 28, ptr %510, align 2
  %511 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 2, i32 %500, i32 3
  store i8 65, ptr %511, align 1
  %512 = icmp eq i32 %500, 0
  br i1 %512, label %515, label %513

513:                                              ; preds = %504
  %514 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 2, i32 %500, i32 4
  store i8 69, ptr %514, align 2
  br label %515

515:                                              ; preds = %513, %504
  %516 = add i32 %500, 1
  %517 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 2, i32 %516
  store i16 16, ptr %517, align 2
  %518 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 2, i32 %516, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %518, ptr noundef align 2 dereferenceable(6) %508, i32 6, i1 false) #14
  %519 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 2, i32 %516, i32 2, i32 6
  store i8 6, ptr %519, align 2
  %520 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 2, i32 %516, i32 1
  store i16 56, ptr %520, align 2
  %521 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 2, i32 %516, i32 3
  store i8 65, ptr %521, align 1
  %522 = getelementptr %struct.mwifiex_mef_entry, ptr %102, i32 1, i32 2, i32 %516, i32 4
  store i8 69, ptr %522, align 2
  %523 = load ptr, ptr %31, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %523, i32 noundef 1073741824, ptr noundef nonnull @.str.28) #14
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #14
  br label %529

524:                                              ; preds = %434, %415, %410, %395, %389, %372, %366, %349, %343, %326, %320, %303, %297, %280, %274, %257
  %525 = load ptr, ptr %31, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %525, i32 noundef 4, ptr noundef nonnull @.str.26) #14
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #14
  tail call void @kfree(ptr noundef nonnull %102) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  br label %532

526:                                              ; preds = %498
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #14
  %527 = icmp eq i32 %499, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %526
  store i32 11, ptr %5, align 4
  br label %529

529:                                              ; preds = %528, %526, %515, %212
  %530 = call i32 @mwifiex_send_cmd(ptr noundef %31, i16 noundef zeroext 154, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %5, i1 noundef zeroext true) #14
  call void @kfree(ptr noundef nonnull %102) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %534, label %532

532:                                              ; preds = %529, %524, %104
  %533 = phi i32 [ -12, %104 ], [ %530, %529 ], [ -95, %524 ]
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.22) #14
  br label %567

534:                                              ; preds = %529
  %535 = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 107
  %536 = load i32, ptr %535, align 4
  %537 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %6, i32 0, i32 1
  store i32 %536, ptr %537, align 4
  %538 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %1, i32 0, i32 10
  %539 = load ptr, ptr %538, align 4
  %540 = icmp eq ptr %539, null
  br i1 %540, label %547, label %541

541:                                              ; preds = %534
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 1073741824, ptr noundef nonnull @.str.23) #14
  %542 = or i32 %536, 4
  store i32 %542, ptr %537, align 4
  %543 = getelementptr inbounds %struct.mwifiex_private, ptr %31, i32 0, i32 15
  %544 = load ptr, ptr %543, align 4
  %545 = load ptr, ptr %538, align 4
  %546 = call i32 @mwifiex_cfg80211_sched_scan_start(ptr noundef nonnull %0, ptr noundef %544, ptr noundef %545)
  br label %547

547:                                              ; preds = %541, %534
  %548 = phi i32 [ %542, %541 ], [ %536, %534 ]
  %549 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %1, i32 0, i32 1
  %550 = load i8, ptr %549, align 1, !range !11
  %551 = icmp eq i8 %550, 0
  br i1 %551, label %555, label %552

552:                                              ; preds = %547
  %553 = or i32 %548, 4
  store i32 %553, ptr %537, align 4
  %554 = load ptr, ptr %31, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %554, i32 noundef 1073741824, ptr noundef nonnull @.str.24) #14
  br label %555

555:                                              ; preds = %552, %547
  store i32 0, ptr %6, align 4
  %556 = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 107, i32 1
  %557 = load i8, ptr %556, align 4
  %558 = zext i8 %557 to i32
  %559 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %6, i32 0, i32 2
  store i32 %558, ptr %559, align 4
  %560 = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 107, i32 2
  %561 = load i8, ptr %560, align 1
  %562 = zext i8 %561 to i32
  %563 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %6, i32 0, i32 3
  store i32 %562, ptr %563, align 4
  %564 = call i32 @mwifiex_set_hs_params(ptr noundef %31, i16 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %6) #14
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %567, label %566

566:                                              ; preds = %555
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.25) #14
  br label %567

567:                                              ; preds = %566, %555, %532, %89, %80
  %568 = phi i32 [ %533, %532 ], [ %564, %566 ], [ 0, %555 ], [ 0, %89 ], [ 0, %80 ]
  store i8 0, ptr %32, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  ret i32 %568
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_resume(ptr noundef readonly %0) #1 {
  %2 = alloca %struct.mwifiex_ds_wakeup_reason, align 2
  %3 = alloca %struct.cfg80211_wowlan_wakeup, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %8 = load i32, ptr %7, align 4
  %9 = inttoptr i32 %8 to ptr
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #14
  store i16 0, ptr %2, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 5
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %25, %6
  %14 = phi i8 [ %26, %25 ], [ %11, %6 ]
  %15 = phi i32 [ %27, %25 ], [ 0, %6 ]
  %16 = getelementptr %struct.mwifiex_adapter, ptr %9, i32 0, i32 4, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.mwifiex_private, ptr %17, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  tail call void @netif_device_attach(ptr noundef nonnull %21) #14
  %24 = load i8, ptr %10, align 4
  br label %25

25:                                               ; preds = %23, %19, %13
  %26 = phi i8 [ %14, %13 ], [ %14, %19 ], [ %24, %23 ]
  %27 = add nuw nsw i32 %15, 1
  %28 = zext i8 %26 to i32
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %13, label %30

30:                                               ; preds = %25
  %31 = zext i8 %26 to i32
  %32 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 41
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %95, label %39

35:                                               ; preds = %6
  %36 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 41
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %95, label %54

39:                                               ; preds = %30
  %40 = icmp eq i8 %26, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %51, %39
  %42 = phi i32 [ %52, %51 ], [ 0, %39 ]
  %43 = getelementptr %struct.mwifiex_adapter, ptr %9, i32 0, i32 4, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.mwifiex_private, ptr %44, i32 0, i32 2
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46, %41
  %52 = add nuw nsw i32 %42, 1
  %53 = icmp eq i32 %52, %31
  br i1 %53, label %54, label %41

54:                                               ; preds = %51, %46, %39, %35
  %55 = phi ptr [ %32, %39 ], [ %36, %35 ], [ %32, %51 ], [ %32, %46 ]
  %56 = phi ptr [ null, %39 ], [ null, %35 ], [ %44, %46 ], [ null, %51 ]
  %57 = call i32 @mwifiex_get_wakeup_reason(ptr noundef %56, i16 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false)
  %58 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %3, i32 0, i32 10
  store i32 -1, ptr %58, align 4
  %59 = load i16, ptr %2, align 2
  switch i16 %59, label %95 [
    i16 0, label %93
    i16 1, label %93
    i16 2, label %93
    i16 3, label %93
    i16 4, label %93
    i16 5, label %60
    i16 6, label %93
    i16 7, label %74
    i16 10, label %86
  ]

60:                                               ; preds = %54
  %61 = load ptr, ptr %55, align 4
  %62 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %61, i32 0, i32 1
  %63 = load i8, ptr %62, align 1, !range !11
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store i8 1, ptr %3, align 4
  br label %66

66:                                               ; preds = %65, %60
  %67 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %61, i32 0, i32 10
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %93, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 162
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %3, i32 0, i32 14
  store ptr %72, ptr %73, align 4
  br label %93

74:                                               ; preds = %54
  %75 = load ptr, ptr %55, align 4
  %76 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %75, i32 0, i32 2
  %77 = load i8, ptr %76, align 2, !range !11
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %3, i32 0, i32 1
  store i8 1, ptr %80, align 1
  br label %81

81:                                               ; preds = %79, %74
  %82 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %75, i32 0, i32 9
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  store i32 1, ptr %58, align 4
  br label %93

86:                                               ; preds = %54
  %87 = load ptr, ptr %55, align 4
  %88 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %87, i32 0, i32 3
  %89 = load i8, ptr %88, align 1, !range !11
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %3, i32 0, i32 2
  store i8 1, ptr %92, align 2
  br label %93

93:                                               ; preds = %91, %86, %85, %81, %70, %66, %54, %54, %54, %54, %54, %54
  %94 = getelementptr inbounds %struct.mwifiex_private, ptr %56, i32 0, i32 103
  call void @cfg80211_report_wowlan_wakeup(ptr noundef %94, ptr noundef nonnull %3, i32 noundef 3264) #14
  br label %95

95:                                               ; preds = %93, %54, %35, %30
  %96 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 162
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %113, label %99

99:                                               ; preds = %95
  %100 = load i32, ptr %97, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %102, %99
  %103 = phi ptr [ %108, %102 ], [ %97, %99 ]
  %104 = phi i32 [ %107, %102 ], [ 0, %99 ]
  %105 = getelementptr %struct.cfg80211_wowlan_nd_info, ptr %103, i32 0, i32 1, i32 %104
  %106 = load ptr, ptr %105, align 4
  call void @kfree(ptr noundef %106) #14
  %107 = add nuw nsw i32 %104, 1
  %108 = load ptr, ptr %96, align 4
  %109 = load i32, ptr %108, align 4
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %102, label %111

111:                                              ; preds = %102, %99
  %112 = phi ptr [ %97, %99 ], [ %108, %102 ]
  call void @kfree(ptr noundef %112) #14
  store ptr null, ptr %96, align 4
  br label %113

113:                                              ; preds = %111, %95
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mwifiex_cfg80211_set_wakeup(ptr noundef readonly %0, i1 noundef zeroext %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !9

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @device_set_wakeup_enable(ptr noundef %10, i1 noundef zeroext %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_change_virtual_intf(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #1 {
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 70
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.wireless_dev, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 111
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load ptr, ptr %7, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 4, ptr noundef nonnull @.str.29) #14
  br label %135

17:                                               ; preds = %4
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = load ptr, ptr %7, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %20, i32 noundef 1073741824, ptr noundef nonnull @.str.30, ptr noundef %1, i32 noundef %11) #14
  br label %135

21:                                               ; preds = %17
  %22 = icmp eq i32 %11, %2
  %23 = load ptr, ptr %7, align 8
  br i1 %22, label %24, label %25

24:                                               ; preds = %21
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %23, i32 noundef 1073741824, ptr noundef nonnull @.str.31, ptr noundef %1, i32 noundef %2) #14
  br label %135

25:                                               ; preds = %21
  switch i32 %11, label %79 [
    i32 1, label %26
    i32 2, label %33
    i32 3, label %46
    i32 8, label %59
    i32 9, label %66
  ]

26:                                               ; preds = %25
  switch i32 %2, label %79 [
    i32 2, label %83
    i32 8, label %73
    i32 9, label %73
    i32 3, label %27
  ]

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 3, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 2, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %29, %31
  br i1 %32, label %79, label %92

33:                                               ; preds = %25
  switch i32 %2, label %79 [
    i32 1, label %97
    i32 8, label %34
    i32 9, label %34
    i32 3, label %40
  ]

34:                                               ; preds = %33, %33
  %35 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 3, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 2, i32 2
  %38 = load i8, ptr %37, align 2
  %39 = icmp eq i8 %36, %38
  br i1 %39, label %79, label %94

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 3, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 2, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %42, %44
  br i1 %45, label %79, label %106

46:                                               ; preds = %25
  switch i32 %2, label %79 [
    i32 1, label %47
    i32 2, label %47
    i32 8, label %53
    i32 9, label %53
  ]

47:                                               ; preds = %46, %46
  %48 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 3
  %49 = load i8, ptr %48, align 1
  %50 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 2
  %51 = load i8, ptr %50, align 4
  %52 = icmp eq i8 %49, %51
  br i1 %52, label %79, label %108

53:                                               ; preds = %46, %46
  %54 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 3, i32 2
  %55 = load i8, ptr %54, align 1
  %56 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 2, i32 2
  %57 = load i8, ptr %56, align 2
  %58 = icmp eq i8 %55, %57
  br i1 %58, label %79, label %108

59:                                               ; preds = %25
  switch i32 %2, label %79 [
    i32 1, label %113
    i32 2, label %113
    i32 9, label %113
    i32 3, label %60
  ]

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 3, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 2, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %62, %64
  br i1 %65, label %79, label %113

66:                                               ; preds = %25
  switch i32 %2, label %79 [
    i32 1, label %123
    i32 2, label %123
    i32 8, label %123
    i32 3, label %67
  ]

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 3, i32 1
  %69 = load i8, ptr %68, align 1
  %70 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 2, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = icmp eq i8 %69, %71
  br i1 %72, label %79, label %123

73:                                               ; preds = %26, %26
  %74 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 3, i32 2
  %75 = load i8, ptr %74, align 1
  %76 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 2, i32 2
  %77 = load i8, ptr %76, align 2
  %78 = icmp eq i8 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %67, %66, %60, %59, %53, %47, %46, %40, %34, %33, %27, %26, %25
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %23, i32 noundef 4, ptr noundef nonnull @.str.32, ptr noundef %1, i32 noundef %11, i32 noundef %2) #14
  br label %135

80:                                               ; preds = %73
  %81 = and i32 %2, -2
  %82 = icmp eq i32 %81, 8
  br i1 %82, label %90, label %133

83:                                               ; preds = %26
  %84 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 18
  store i32 2, ptr %84, align 8
  %85 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 60, i32 5
  store i32 0, ptr %85, align 4
  %86 = load ptr, ptr %8, align 8
  %87 = getelementptr inbounds %struct.wireless_dev, ptr %86, i32 0, i32 1
  store i32 2, ptr %87, align 4
  %88 = tail call i32 @mwifiex_deauthenticate(ptr noundef %7, ptr noundef null) #14
  %89 = tail call i32 @mwifiex_send_cmd(ptr noundef %7, i16 noundef zeroext 247, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #14
  br label %135

90:                                               ; preds = %80
  %91 = tail call fastcc i32 @mwifiex_change_vif_to_p2p(ptr noundef %1, i32 noundef 1, i32 noundef %2)
  br label %135

92:                                               ; preds = %27
  %93 = tail call fastcc i32 @mwifiex_change_vif_to_ap(ptr noundef %1, i32 noundef 1, i32 noundef 3)
  br label %135

94:                                               ; preds = %34
  %95 = and i32 %2, -2
  %96 = icmp eq i32 %95, 8
  br i1 %96, label %104, label %133

97:                                               ; preds = %33
  %98 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 18
  store i32 1, ptr %98, align 8
  %99 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 60, i32 5
  store i32 0, ptr %99, align 4
  %100 = load ptr, ptr %8, align 8
  %101 = getelementptr inbounds %struct.wireless_dev, ptr %100, i32 0, i32 1
  store i32 1, ptr %101, align 4
  %102 = tail call i32 @mwifiex_deauthenticate(ptr noundef %7, ptr noundef null) #14
  %103 = tail call i32 @mwifiex_send_cmd(ptr noundef %7, i16 noundef zeroext 247, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #14
  br label %135

104:                                              ; preds = %94
  %105 = tail call fastcc i32 @mwifiex_change_vif_to_p2p(ptr noundef %1, i32 noundef 2, i32 noundef %2)
  br label %135

106:                                              ; preds = %40
  %107 = tail call fastcc i32 @mwifiex_change_vif_to_ap(ptr noundef %1, i32 noundef 2, i32 noundef 3)
  br label %135

108:                                              ; preds = %53, %47
  switch i32 %2, label %133 [
    i32 1, label %109
    i32 2, label %109
    i32 8, label %111
    i32 9, label %111
  ]

109:                                              ; preds = %108, %108
  %110 = tail call fastcc i32 @mwifiex_change_vif_to_sta_adhoc(ptr noundef %1, i32 noundef 3, i32 noundef %2)
  br label %135

111:                                              ; preds = %108, %108
  %112 = tail call fastcc i32 @mwifiex_change_vif_to_p2p(ptr noundef %1, i32 noundef 3, i32 noundef %2)
  br label %135

113:                                              ; preds = %60, %59, %59, %59
  %114 = tail call fastcc i32 @mwifiex_cfg80211_deinit_p2p(ptr noundef %7)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %113
  switch i32 %2, label %133 [
    i32 1, label %117
    i32 2, label %117
    i32 9, label %119
    i32 3, label %121
  ]

117:                                              ; preds = %116, %116
  %118 = tail call fastcc i32 @mwifiex_change_vif_to_sta_adhoc(ptr noundef %1, i32 noundef 8, i32 noundef %2)
  br label %135

119:                                              ; preds = %116
  %120 = tail call fastcc i32 @mwifiex_change_vif_to_p2p(ptr noundef %1, i32 noundef 8, i32 noundef 9)
  br label %135

121:                                              ; preds = %116
  %122 = tail call fastcc i32 @mwifiex_change_vif_to_ap(ptr noundef %1, i32 noundef 8, i32 noundef 3)
  br label %135

123:                                              ; preds = %67, %66, %66, %66
  %124 = tail call fastcc i32 @mwifiex_cfg80211_deinit_p2p(ptr noundef %7)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  switch i32 %2, label %133 [
    i32 1, label %127
    i32 2, label %127
    i32 8, label %129
    i32 3, label %131
  ]

127:                                              ; preds = %126, %126
  %128 = tail call fastcc i32 @mwifiex_change_vif_to_sta_adhoc(ptr noundef %1, i32 noundef 9, i32 noundef %2)
  br label %135

129:                                              ; preds = %126
  %130 = tail call fastcc i32 @mwifiex_change_vif_to_p2p(ptr noundef %1, i32 noundef 9, i32 noundef 8)
  br label %135

131:                                              ; preds = %126
  %132 = tail call fastcc i32 @mwifiex_change_vif_to_ap(ptr noundef %1, i32 noundef 9, i32 noundef 3)
  br label %135

133:                                              ; preds = %126, %116, %108, %94, %80
  %134 = load ptr, ptr %7, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %134, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef %11, i32 noundef %2) #14
  br label %135

135:                                              ; preds = %133, %131, %129, %127, %123, %121, %119, %117, %113, %111, %109, %106, %104, %97, %92, %90, %83, %79, %24, %19, %15
  %136 = phi i32 [ -16, %15 ], [ 0, %19 ], [ 0, %24 ], [ -95, %133 ], [ %132, %131 ], [ %130, %129 ], [ %128, %127 ], [ %122, %121 ], [ %120, %119 ], [ %118, %117 ], [ %112, %111 ], [ %110, %109 ], [ %107, %106 ], [ %105, %104 ], [ %103, %97 ], [ %93, %92 ], [ %91, %90 ], [ %89, %83 ], [ -95, %79 ], [ -14, %113 ], [ -14, %123 ]
  ret i32 %136
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_add_key(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5) #1 {
  %7 = getelementptr i8, ptr %1, i32 1408
  %8 = load i32, ptr %7, align 4
  %9 = inttoptr i32 %8 to ptr
  %10 = select i1 %3, ptr %4, ptr @mwifiex_cfg80211_add_key.bc_mac
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %9, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.key_params, ptr %5, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %35 [
    i32 1027073, label %18
    i32 1027077, label %18
  ]

18:                                               ; preds = %15, %15
  %19 = load ptr, ptr %5, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.key_params, ptr %5, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %21
  %26 = zext i8 %2 to i32
  %27 = getelementptr %struct.mwifiex_private, ptr %9, i32 0, i32 61, i32 %26
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %27, i8 0, i32 28, i1 false)
  %28 = getelementptr %struct.mwifiex_private, ptr %9, i32 0, i32 61, i32 %26, i32 3
  %29 = load ptr, ptr %5, align 4
  %30 = load i32, ptr %22, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %28, ptr align 1 %29, i32 %30, i1 false)
  %31 = getelementptr %struct.mwifiex_private, ptr %9, i32 0, i32 61, i32 %26, i32 1
  store i32 %26, ptr %31, align 4
  %32 = load i32, ptr %22, align 4
  %33 = getelementptr %struct.mwifiex_private, ptr %9, i32 0, i32 61, i32 %26, i32 2
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.mwifiex_private, ptr %9, i32 0, i32 60, i32 4
  store i8 1, ptr %34, align 4
  br label %43

35:                                               ; preds = %15, %6
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr inbounds %struct.key_params, ptr %5, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @mwifiex_set_encode(ptr noundef %9, ptr noundef %5, ptr noundef %36, i32 noundef %38, i8 noundef zeroext %2, ptr noundef %10, i32 noundef 0) #14
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %9, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %42, i32 noundef 4, ptr noundef nonnull @.str.40) #14
  br label %43

43:                                               ; preds = %41, %35, %25, %21, %18
  %44 = phi i32 [ -14, %41 ], [ 0, %25 ], [ 0, %21 ], [ 0, %18 ], [ 0, %35 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_del_key(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4) #1 {
  %6 = getelementptr i8, ptr %1, i32 1408
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  %9 = select i1 %3, ptr %4, ptr @mwifiex_cfg80211_del_key.bc_mac
  %10 = tail call i32 @mwifiex_set_encode(ptr noundef %8, ptr noundef null, ptr noundef null, i32 noundef 0, i8 noundef zeroext %2, ptr noundef %9, i32 noundef 1) #14
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr %8, align 8
  br i1 %11, label %14, label %13

13:                                               ; preds = %5
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.41) #14
  br label %15

14:                                               ; preds = %5
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 1073741824, ptr noundef nonnull @.str.42) #14
  br label %15

15:                                               ; preds = %14, %13
  %16 = phi i32 [ -14, %13 ], [ 0, %14 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_default_key(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #1 {
  %6 = getelementptr i8, ptr %1, i32 1408
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 60, i32 4
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = zext i8 %2 to i16
  %18 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 62
  store i16 %17, ptr %18, align 8
  br label %24

19:                                               ; preds = %12
  %20 = tail call i32 @mwifiex_set_encode(ptr noundef %8, ptr noundef null, ptr noundef null, i32 noundef 0, i8 noundef zeroext %2, ptr noundef null, i32 noundef 0) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %8, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %23, i32 noundef 4, ptr noundef nonnull @.str.43) #14
  br label %24

24:                                               ; preds = %22, %19, %16, %5
  %25 = phi i32 [ -14, %22 ], [ 0, %5 ], [ 0, %19 ], [ 0, %16 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_default_mgmt_key(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) #1 {
  %4 = alloca %struct.mwifiex_ds_encrypt_key, align 4
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #14
  %8 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  store i32 16, ptr %8, align 4
  %9 = zext i8 %2 to i32
  %10 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 11
  store i8 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %4, i32 0, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(6) %12, i8 -1, i32 6, i1 false) #14
  %13 = call i32 @mwifiex_send_cmd(ptr noundef %7, i16 noundef zeroext 94, i16 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %4, i1 noundef zeroext true) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load ptr, ptr %7, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 4, ptr noundef nonnull @.str.44) #14
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi i32 [ -1, %15 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #14
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_start_ap(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %139, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 292) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %139, label %15

15:                                               ; preds = %11
  tail call void @mwifiex_set_sys_config_invalid_data(ptr noundef nonnull %13) #14
  %16 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = trunc i32 %17 to i16
  %21 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %13, i32 0, i32 11
  store i16 %20, ptr %21, align 8
  br label %22

22:                                               ; preds = %19, %15
  %23 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = trunc i32 %24 to i8
  %28 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %13, i32 0, i32 9
  store i8 %27, ptr %28, align 2
  br label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %13, i32 0, i32 6
  %39 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %13, i32 0, i32 6, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %39, ptr nonnull align 1 %31, i32 %35, i1 false)
  store i32 %35, ptr %38, align 8
  br label %40

40:                                               ; preds = %37, %33, %29
  %41 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 11
  %42 = load i32, ptr %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = mul i32 %42, 10
  %46 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %13, i32 0, i32 22
  store i32 %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %13, i32 0, i32 23
  store i32 %45, ptr %47, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = icmp ult i32 %50, 3
  br i1 %51, label %52, label %137

52:                                               ; preds = %48
  %53 = trunc i32 %50 to i24
  %54 = shl i24 %53, 3
  %55 = lshr i24 131073, %54
  %56 = trunc i24 %55 to i8
  %57 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %13, i32 0, i32 7
  store i8 %56, ptr %57, align 4
  %58 = load i32, ptr %2, align 4
  %59 = insertvalue [7 x i32] undef, i32 %58, 0
  %60 = getelementptr inbounds [7 x i32], ptr %2, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = insertvalue [7 x i32] %59, i32 %61, 1
  %63 = getelementptr inbounds [7 x i32], ptr %2, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = insertvalue [7 x i32] %62, i32 %64, 2
  %66 = getelementptr inbounds [7 x i32], ptr %2, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = insertvalue [7 x i32] %65, i32 %67, 3
  %69 = getelementptr inbounds [7 x i32], ptr %2, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = insertvalue [7 x i32] %68, i32 %70, 4
  %72 = getelementptr inbounds [7 x i32], ptr %2, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = insertvalue [7 x i32] %71, i32 %73, 5
  %75 = getelementptr inbounds [7 x i32], ptr %2, i32 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = insertvalue [7 x i32] %74, i32 %76, 6
  tail call void @mwifiex_uap_set_channel(ptr noundef %6, ptr noundef nonnull %13, [7 x i32] %77) #14
  tail call void @mwifiex_set_uap_rates(ptr noundef nonnull %13, ptr noundef %2) #14
  %78 = tail call i32 @mwifiex_set_secure_params(ptr noundef %6, ptr noundef nonnull %13, ptr noundef %2) #14
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %134

80:                                               ; preds = %52
  tail call void @mwifiex_set_ht_params(ptr noundef %6, ptr noundef nonnull %13, ptr noundef %2) #14
  %81 = load ptr, ptr %6, align 8
  %82 = getelementptr inbounds %struct.mwifiex_adapter, ptr %81, i32 0, i32 128
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  tail call void @mwifiex_set_vht_params(ptr noundef %6, ptr noundef nonnull %13, ptr noundef %2) #14
  %86 = load i32, ptr %60, align 4
  %87 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 126
  %88 = load i8, ptr %87, align 1
  %89 = icmp ne i8 %88, 0
  tail call void @mwifiex_set_vht_width(ptr noundef %6, i32 noundef %86, i1 noundef zeroext %89) #14
  br label %90

90:                                               ; preds = %85, %80
  %91 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 126
  %92 = load i8, ptr %91, align 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  tail call void @mwifiex_set_11ac_ba_params(ptr noundef %6) #14
  br label %96

95:                                               ; preds = %90
  tail call void @mwifiex_set_ba_params(ptr noundef %6) #14
  br label %96

96:                                               ; preds = %95, %94
  tail call void @mwifiex_set_wmm_params(ptr noundef %6, ptr noundef nonnull %13, ptr noundef %2) #14
  %97 = tail call i32 @mwifiex_is_11h_active(ptr noundef %6) #14
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  tail call void @mwifiex_set_tpc_params(ptr noundef %6, ptr noundef nonnull %13, ptr noundef %2) #14
  br label %100

100:                                              ; preds = %99, %96
  %101 = tail call i32 @mwifiex_is_11h_active(ptr noundef %6) #14
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %114, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 18
  %105 = load i32, ptr %104, align 8
  %106 = tail call i32 @cfg80211_chandef_dfs_required(ptr noundef %0, ptr noundef %2, i32 noundef %105) #14
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load ptr, ptr %6, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %109, i32 noundef 1073741824, ptr noundef nonnull @.str.46) #14
  %110 = tail call i32 @mwifiex_11h_activate(ptr noundef %6, i1 noundef zeroext false) #14
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %134

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 157, i32 1
  store i8 0, ptr %113, align 1
  br label %114

114:                                              ; preds = %112, %103, %100
  %115 = getelementptr inbounds %struct.cfg80211_ap_settings, ptr %2, i32 0, i32 1
  tail call void @mwifiex_config_uap_11d(ptr noundef %6, ptr noundef %115) #14
  %116 = tail call i32 @mwifiex_config_start_uap(ptr noundef %6, ptr noundef nonnull %13) #14
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %114
  %119 = tail call i32 @mwifiex_set_mgmt_ies(ptr noundef %6, ptr noundef %115) #14
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 15
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.net_device, ptr %123, i32 0, i32 6
  %125 = load volatile i32, ptr %124, align 4
  %126 = and i32 %125, 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %121
  tail call void @netif_carrier_on(ptr noundef %123) #14
  %129 = load ptr, ptr %122, align 4
  br label %130

130:                                              ; preds = %128, %121
  %131 = phi ptr [ %129, %128 ], [ %123, %121 ]
  %132 = load ptr, ptr %6, align 8
  tail call void @mwifiex_wake_up_net_dev_queue(ptr noundef %131, ptr noundef %132) #14
  %133 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 138
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(292) %133, ptr noundef nonnull align 8 dereferenceable(292) %13, i32 292, i1 false)
  br label %137

134:                                              ; preds = %114, %108, %52
  %135 = phi ptr [ @.str.45, %52 ], [ @.str.47, %108 ], [ @.str.48, %114 ]
  %136 = load ptr, ptr %6, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %136, i32 noundef 4, ptr noundef nonnull %135) #14
  br label %137

137:                                              ; preds = %134, %130, %118, %48
  %138 = phi i32 [ 0, %130 ], [ -22, %48 ], [ -1, %134 ], [ -1, %118 ]
  tail call void @kfree(ptr noundef nonnull %13) #14
  br label %139

139:                                              ; preds = %137, %11, %3
  %140 = phi i32 [ -1, %3 ], [ -12, %11 ], [ %138, %137 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_change_beacon(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = load ptr, ptr %6, align 8
  tail call void @mwifiex_cancel_scan(ptr noundef %7) #14
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 5
  %14 = load i8, ptr %13, align 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @mwifiex_set_mgmt_ies(ptr noundef %6, ptr noundef %2) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %12, %3
  %20 = phi ptr [ @.str.49, %3 ], [ @.str.50, %12 ], [ @.str.51, %16 ]
  %21 = phi i32 [ -22, %3 ], [ -22, %12 ], [ -14, %16 ]
  %22 = load ptr, ptr %6, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %22, i32 noundef 4, ptr noundef nonnull %20, ptr noundef nonnull @__func__.mwifiex_cfg80211_change_beacon) #14
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ 0, %16 ], [ %21, %19 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_stop_ap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  tail call void @mwifiex_abort_cac(ptr noundef %5) #14
  %6 = tail call i32 @mwifiex_del_mgmt_ies(ptr noundef %5) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 4, ptr noundef nonnull @.str.52) #14
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %5, i32 0, i32 125
  store i8 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.mwifiex_private, ptr %5, i32 0, i32 138
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(292) %12, i8 0, i32 292, i1 false)
  %13 = tail call i32 @mwifiex_send_cmd(ptr noundef %5, i16 noundef zeroext 178, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %5, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 4, ptr noundef nonnull @.str.53) #14
  br label %34

17:                                               ; preds = %10
  %18 = tail call i32 @mwifiex_send_cmd(ptr noundef %5, i16 noundef zeroext 175, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %21, i32 noundef 4, ptr noundef nonnull @.str.54) #14
  br label %34

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %5, i32 0, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 6
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  tail call void @netif_carrier_off(ptr noundef %24) #14
  %30 = load ptr, ptr %23, align 4
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi ptr [ %30, %29 ], [ %24, %22 ]
  %33 = load ptr, ptr %5, align 8
  tail call void @mwifiex_stop_net_dev_queue(ptr noundef %32, ptr noundef %33) #14
  br label %34

34:                                               ; preds = %31, %20, %15
  %35 = phi i32 [ -1, %15 ], [ -1, %20 ], [ 0, %31 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_add_station(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) #1 {
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.station_parameters, ptr %3, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 8
  %18 = load i8, ptr %17, align 8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @mwifiex_tdls_oper(ptr noundef %7, ptr noundef %2, i8 noundef zeroext 2) #14
  br label %22

22:                                               ; preds = %20, %16, %12, %4
  %23 = phi i32 [ %21, %20 ], [ -95, %4 ], [ -95, %16 ], [ -95, %12 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_del_station(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca [6 x i8], align 4
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #14
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 5
  %9 = load i8, ptr %8, align 8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 103, i32 36
  %13 = load i8, ptr %12, align 1, !range !11
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 1073741824, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.mwifiex_cfg80211_del_station) #14
  tail call void @mwifiex_abort_cac(ptr noundef %7) #14
  br label %17

17:                                               ; preds = %15, %11, %3
  %18 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 79
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %61, label %21

21:                                               ; preds = %17
  %22 = load i8, ptr %8, align 8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %61, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %2, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %61, label %27

27:                                               ; preds = %24
  %28 = load i16, ptr %25, align 2
  %29 = getelementptr i8, ptr %25, i32 2
  %30 = load i16, ptr %29, align 2
  %31 = and i16 %30, %28
  %32 = getelementptr i8, ptr %25, i32 4
  %33 = load i16, ptr %32, align 2
  %34 = and i16 %31, %33
  %35 = icmp eq i16 %34, -1
  br i1 %35, label %61, label %36

36:                                               ; preds = %27
  %37 = load ptr, ptr %7, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %37, i32 noundef 1073741824, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.mwifiex_cfg80211_del_station, ptr noundef nonnull %25) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %4, i8 0, i32 6, i1 false) #14
  %38 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %38) #14
  %39 = load ptr, ptr %2, align 4
  %40 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %7, ptr noundef %39) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  tail call void @_raw_spin_unlock_bh(ptr noundef %38) #14
  br label %52

43:                                               ; preds = %36
  %44 = load ptr, ptr %2, align 4
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %4, align 4
  %46 = getelementptr i8, ptr %44, i32 4
  %47 = load i16, ptr %46, align 2
  %48 = getelementptr inbounds i8, ptr %4, i32 4
  store i16 %47, ptr %48, align 4
  %49 = zext i16 %47 to i32
  tail call void @_raw_spin_unlock_bh(ptr noundef %38) #14
  %50 = and i32 %45, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %43, %42
  %53 = phi i32 [ 0, %42 ], [ %45, %43 ]
  %54 = phi i32 [ 0, %42 ], [ %49, %43 ]
  %55 = or i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = call i32 @mwifiex_send_cmd(ptr noundef %7, i16 noundef zeroext 181, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %4, i1 noundef zeroext true) #14
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %52, %43
  br label %61

61:                                               ; preds = %60, %57, %27, %24, %21, %17
  %62 = phi i32 [ 0, %60 ], [ 0, %21 ], [ 0, %17 ], [ 0, %27 ], [ 0, %24 ], [ -1, %57 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #14
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_change_station(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.station_parameters, ptr %3, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 8
  %18 = load i8, ptr %17, align 8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 140
  store ptr %3, ptr %21, align 4
  %22 = tail call i32 @mwifiex_tdls_oper(ptr noundef %7, ptr noundef %2, i8 noundef zeroext 3) #14
  store ptr null, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %16, %12, %4
  %24 = phi i32 [ %22, %20 ], [ -95, %4 ], [ -95, %16 ], [ -95, %12 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_get_station(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) #1 {
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 8
  %9 = load i8, ptr %8, align 8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 112
  %13 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %2, ptr noundef dereferenceable(6) %12, i32 6)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @mwifiex_dump_station_info(ptr noundef %7, ptr noundef null, ptr noundef %3)
  br label %17

17:                                               ; preds = %15, %11, %4
  %18 = phi i32 [ %16, %15 ], [ -2, %4 ], [ -2, %11 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_dump_station(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) #1 {
  %6 = getelementptr i8, ptr %1, i32 1408
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 8
  %15 = load i8, ptr %14, align 8
  %16 = icmp ne i8 %15, 0
  %17 = icmp eq i32 %2, 0
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %46

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 112
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %3, align 4
  %22 = getelementptr %struct.mwifiex_private, ptr %8, i32 0, i32 112, i32 4
  br label %40

23:                                               ; preds = %5
  %24 = tail call i32 @mwifiex_send_cmd(ptr noundef %8, i16 noundef zeroext 179, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #14
  %25 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 79
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %46, label %32

28:                                               ; preds = %32
  %29 = add i32 %34, 1
  %30 = load ptr, ptr %33, align 8
  %31 = icmp eq ptr %30, %25
  br i1 %31, label %46, label %32

32:                                               ; preds = %28, %23
  %33 = phi ptr [ %30, %28 ], [ %26, %23 ]
  %34 = phi i32 [ %29, %28 ], [ 0, %23 ]
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %36, label %28

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %33, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %3, align 4
  %39 = getelementptr %struct.mwifiex_sta_node, ptr %33, i32 0, i32 1, i32 4
  br label %40

40:                                               ; preds = %36, %19
  %41 = phi ptr [ %39, %36 ], [ %22, %19 ]
  %42 = phi ptr [ %33, %36 ], [ null, %19 ]
  %43 = load i16, ptr %41, align 2
  %44 = getelementptr i8, ptr %3, i32 4
  store i16 %43, ptr %44, align 2
  %45 = tail call fastcc i32 @mwifiex_dump_station_info(ptr noundef %8, ptr noundef %42, ptr noundef %4)
  br label %46

46:                                               ; preds = %40, %28, %23, %13
  %47 = phi i32 [ -2, %13 ], [ -2, %23 ], [ %45, %40 ], [ -2, %28 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_scan(ptr nocapture noundef readnone %0, ptr noundef %1) #1 {
  %3 = alloca [6 x i8], align 4
  %4 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1408
  %9 = load i32, ptr %8, align 4
  %10 = inttoptr i32 %9 to ptr
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %11 = load ptr, ptr %10, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 16, ptr noundef nonnull @.str.59, ptr noundef %7) #14
  %12 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 111
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 130
  %17 = load i8, ptr %16, align 8, !range !11
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15, %2
  %20 = load ptr, ptr %10, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %20, i32 noundef 536870912, ptr noundef nonnull @.str.60) #14
  br label %391

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 103
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 103, i32 25
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 114
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i8 0, ptr %27, align 1
  br label %31

31:                                               ; preds = %30, %26, %21
  %32 = tail call i32 @mwifiex_stop_bg_scan(ptr noundef %10) #14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load ptr, ptr %22, align 8
  tail call void @cfg80211_sched_scan_stopped_locked(ptr noundef %35, i64 noundef 0) #14
  br label %36

36:                                               ; preds = %34, %31
  %37 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %38 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 422) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %391, label %40

40:                                               ; preds = %36
  store ptr %1, ptr %12, align 8
  %41 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %109, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 11
  %47 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 12
  call void @get_random_bytes(ptr noundef nonnull %3, i32 noundef 6) #14
  %48 = load i8, ptr %47, align 1
  %49 = xor i8 %48, -1
  %50 = load i8, ptr %3, align 4
  %51 = and i8 %50, %49
  %52 = load i8, ptr %46, align 1
  %53 = and i8 %52, %48
  %54 = or i8 %53, %51
  store i8 %54, ptr %3, align 4
  %55 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 12, i32 1
  %56 = load i8, ptr %55, align 1
  %57 = xor i8 %56, -1
  %58 = getelementptr inbounds i8, ptr %3, i32 1
  %59 = load i8, ptr %58, align 1
  %60 = and i8 %59, %57
  %61 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 11, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = and i8 %62, %56
  %64 = or i8 %63, %60
  store i8 %64, ptr %58, align 1
  %65 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 12, i32 2
  %66 = load i8, ptr %65, align 1
  %67 = xor i8 %66, -1
  %68 = getelementptr inbounds i8, ptr %3, i32 2
  %69 = load i8, ptr %68, align 2
  %70 = and i8 %69, %67
  %71 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 11, i32 2
  %72 = load i8, ptr %71, align 1
  %73 = and i8 %72, %66
  %74 = or i8 %73, %70
  store i8 %74, ptr %68, align 2
  %75 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 12, i32 3
  %76 = load i8, ptr %75, align 1
  %77 = xor i8 %76, -1
  %78 = getelementptr inbounds i8, ptr %3, i32 3
  %79 = load i8, ptr %78, align 1
  %80 = and i8 %79, %77
  %81 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 11, i32 3
  %82 = load i8, ptr %81, align 1
  %83 = and i8 %82, %76
  %84 = or i8 %83, %80
  store i8 %84, ptr %78, align 1
  %85 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 12, i32 4
  %86 = load i8, ptr %85, align 1
  %87 = xor i8 %86, -1
  %88 = getelementptr inbounds i8, ptr %3, i32 4
  %89 = load i8, ptr %88, align 4
  %90 = and i8 %89, %87
  %91 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 11, i32 4
  %92 = load i8, ptr %91, align 1
  %93 = and i8 %92, %86
  %94 = or i8 %93, %90
  store i8 %94, ptr %88, align 4
  %95 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 12, i32 5
  %96 = load i8, ptr %95, align 1
  %97 = xor i8 %96, -1
  %98 = getelementptr inbounds i8, ptr %3, i32 5
  %99 = load i8, ptr %98, align 1
  %100 = and i8 %99, %97
  %101 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 11, i32 5
  %102 = load i8, ptr %101, align 1
  %103 = and i8 %102, %96
  %104 = or i8 %103, %100
  store i8 %104, ptr %98, align 1
  %105 = load i32, ptr %3, align 4
  store i32 %105, ptr %46, align 4
  %106 = load i16, ptr %88, align 4
  store i16 %106, ptr %91, align 2
  %107 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %38, i32 0, i32 8
  store i32 %105, ptr %107, align 8
  %108 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %38, i32 0, i32 8, i32 4
  store i16 %106, ptr %108, align 4
  br label %109

109:                                              ; preds = %45, %40
  %110 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = trunc i32 %111 to i8
  %113 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %38, i32 0, i32 5
  store i8 %112, ptr %113, align 1
  %114 = load ptr, ptr %1, align 8
  %115 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %38, i32 0, i32 4
  store ptr %114, ptr %115, align 1
  %116 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 4
  %117 = load ptr, ptr %116, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %266, label %119

119:                                              ; preds = %109
  %120 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 5
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %266, label %123

123:                                              ; preds = %119
  %124 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 0
  %125 = load i16, ptr %124, align 2
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %123
  store i16 1, ptr %124, align 2
  %128 = load ptr, ptr %116, align 8
  %129 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 0, i32 2
  %130 = getelementptr inbounds %struct.ieee_types_header, ptr %128, i32 0, i32 1
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = add nuw nsw i32 %132, 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %129, ptr noundef align 1 %128, i32 %133, i1 false)
  %134 = load i8, ptr %130, align 1
  %135 = zext i8 %134 to i32
  %136 = add nuw nsw i32 %135, 2
  %137 = load i32, ptr %120, align 4
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %139, label %266

139:                                              ; preds = %127, %123
  %140 = phi i32 [ 0, %123 ], [ %136, %127 ]
  %141 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 1
  %142 = load i16, ptr %141, align 2
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %139
  store i16 1, ptr %141, align 2
  %145 = load ptr, ptr %116, align 8
  %146 = getelementptr i8, ptr %145, i32 %140
  %147 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 1, i32 2
  %148 = getelementptr inbounds %struct.ieee_types_header, ptr %146, i32 0, i32 1
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  %151 = add nuw nsw i32 %150, 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %147, ptr noundef align 1 %146, i32 %151, i1 false)
  %152 = load i8, ptr %148, align 1
  %153 = zext i8 %152 to i32
  %154 = add nuw nsw i32 %140, 2
  %155 = add nuw nsw i32 %154, %153
  %156 = load i32, ptr %120, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %266

158:                                              ; preds = %144, %139
  %159 = phi i32 [ %140, %139 ], [ %155, %144 ]
  %160 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 2
  %161 = load i16, ptr %160, align 2
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %158
  store i16 1, ptr %160, align 2
  %164 = load ptr, ptr %116, align 8
  %165 = getelementptr i8, ptr %164, i32 %159
  %166 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 2, i32 2
  %167 = getelementptr inbounds %struct.ieee_types_header, ptr %165, i32 0, i32 1
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i32
  %170 = add nuw nsw i32 %169, 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %166, ptr noundef align 1 %165, i32 %170, i1 false)
  %171 = load i8, ptr %167, align 1
  %172 = zext i8 %171 to i32
  %173 = add nuw nsw i32 %159, 2
  %174 = add nuw nsw i32 %173, %172
  %175 = load i32, ptr %120, align 4
  %176 = icmp ult i32 %174, %175
  br i1 %176, label %177, label %266

177:                                              ; preds = %163, %158
  %178 = phi i32 [ %159, %158 ], [ %174, %163 ]
  %179 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 3
  %180 = load i16, ptr %179, align 2
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %177
  store i16 1, ptr %179, align 2
  %183 = load ptr, ptr %116, align 8
  %184 = getelementptr i8, ptr %183, i32 %178
  %185 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 3, i32 2
  %186 = getelementptr inbounds %struct.ieee_types_header, ptr %184, i32 0, i32 1
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i32
  %189 = add nuw nsw i32 %188, 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %185, ptr noundef align 1 %184, i32 %189, i1 false)
  %190 = load i8, ptr %186, align 1
  %191 = zext i8 %190 to i32
  %192 = add nuw nsw i32 %178, 2
  %193 = add nuw nsw i32 %192, %191
  %194 = load i32, ptr %120, align 4
  %195 = icmp ult i32 %193, %194
  br i1 %195, label %196, label %266

196:                                              ; preds = %182, %177
  %197 = phi i32 [ %178, %177 ], [ %193, %182 ]
  %198 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 4
  %199 = load i16, ptr %198, align 2
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %196
  store i16 1, ptr %198, align 2
  %202 = load ptr, ptr %116, align 8
  %203 = getelementptr i8, ptr %202, i32 %197
  %204 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 4, i32 2
  %205 = getelementptr inbounds %struct.ieee_types_header, ptr %203, i32 0, i32 1
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i32
  %208 = add nuw nsw i32 %207, 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %204, ptr noundef align 1 %203, i32 %208, i1 false)
  %209 = load i8, ptr %205, align 1
  %210 = zext i8 %209 to i32
  %211 = add nuw nsw i32 %197, 2
  %212 = add nuw nsw i32 %211, %210
  %213 = load i32, ptr %120, align 4
  %214 = icmp ult i32 %212, %213
  br i1 %214, label %215, label %266

215:                                              ; preds = %201, %196
  %216 = phi i32 [ %197, %196 ], [ %212, %201 ]
  %217 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 5
  %218 = load i16, ptr %217, align 2
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %220, label %234

220:                                              ; preds = %215
  store i16 1, ptr %217, align 2
  %221 = load ptr, ptr %116, align 8
  %222 = getelementptr i8, ptr %221, i32 %216
  %223 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 5, i32 2
  %224 = getelementptr inbounds %struct.ieee_types_header, ptr %222, i32 0, i32 1
  %225 = load i8, ptr %224, align 1
  %226 = zext i8 %225 to i32
  %227 = add nuw nsw i32 %226, 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %223, ptr noundef align 1 %222, i32 %227, i1 false)
  %228 = load i8, ptr %224, align 1
  %229 = zext i8 %228 to i32
  %230 = add nuw nsw i32 %216, 2
  %231 = add nuw nsw i32 %230, %229
  %232 = load i32, ptr %120, align 4
  %233 = icmp ult i32 %231, %232
  br i1 %233, label %234, label %266

234:                                              ; preds = %220, %215
  %235 = phi i32 [ %216, %215 ], [ %231, %220 ]
  %236 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 6
  %237 = load i16, ptr %236, align 2
  %238 = icmp eq i16 %237, 0
  br i1 %238, label %239, label %253

239:                                              ; preds = %234
  store i16 1, ptr %236, align 2
  %240 = load ptr, ptr %116, align 8
  %241 = getelementptr i8, ptr %240, i32 %235
  %242 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 6, i32 2
  %243 = getelementptr inbounds %struct.ieee_types_header, ptr %241, i32 0, i32 1
  %244 = load i8, ptr %243, align 1
  %245 = zext i8 %244 to i32
  %246 = add nuw nsw i32 %245, 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %242, ptr noundef align 1 %241, i32 %246, i1 false)
  %247 = load i8, ptr %243, align 1
  %248 = zext i8 %247 to i32
  %249 = add nuw nsw i32 %235, 2
  %250 = add nuw nsw i32 %249, %248
  %251 = load i32, ptr %120, align 4
  %252 = icmp ult i32 %250, %251
  br i1 %252, label %253, label %266

253:                                              ; preds = %239, %234
  %254 = phi i32 [ %235, %234 ], [ %250, %239 ]
  %255 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 7
  %256 = load i16, ptr %255, align 2
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %253
  store i16 1, ptr %255, align 2
  %259 = load ptr, ptr %116, align 8
  %260 = getelementptr i8, ptr %259, i32 %254
  %261 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 7, i32 2
  %262 = getelementptr inbounds %struct.ieee_types_header, ptr %260, i32 0, i32 1
  %263 = load i8, ptr %262, align 1
  %264 = zext i8 %263 to i32
  %265 = add nuw nsw i32 %264, 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %261, ptr noundef align 1 %260, i32 %265, i1 false)
  br label %266

266:                                              ; preds = %258, %253, %239, %220, %201, %182, %163, %144, %127, %119, %109
  %267 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 2
  %268 = load i32, ptr %267, align 8
  %269 = call i32 @llvm.umin.i32(i32 %268, i32 50)
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %296, label %271

271:                                              ; preds = %290, %266
  %272 = phi i32 [ %294, %290 ], [ 0, %266 ]
  %273 = getelementptr %struct.cfg80211_scan_request, ptr %1, i32 0, i32 22, i32 %272
  %274 = load ptr, ptr %273, align 4
  %275 = getelementptr inbounds %struct.ieee80211_channel, ptr %274, i32 0, i32 3
  %276 = load i16, ptr %275, align 2
  %277 = trunc i16 %276 to i8
  %278 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %38, i32 0, i32 6, i32 %272
  store i8 %277, ptr %278, align 2
  %279 = load i32, ptr %274, align 4
  %280 = trunc i32 %279 to i8
  %281 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %38, i32 0, i32 6, i32 %272, i32 1
  store i8 %280, ptr %281, align 1
  %282 = getelementptr inbounds %struct.ieee80211_channel, ptr %274, i32 0, i32 4
  %283 = load i32, ptr %282, align 4
  %284 = and i32 %283, 2
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %271
  %287 = load i32, ptr %110, align 4
  %288 = icmp eq i32 %287, 0
  %289 = select i1 %288, i8 2, i8 1
  br label %290

290:                                              ; preds = %286, %271
  %291 = phi i8 [ 2, %271 ], [ %289, %286 ]
  %292 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %38, i32 0, i32 6, i32 %272, i32 2
  store i8 %291, ptr %292, align 8
  %293 = getelementptr %struct.mwifiex_user_scan_cfg, ptr %38, i32 0, i32 6, i32 %272, i32 4
  store i32 0, ptr %293, align 2
  %294 = add nuw nsw i32 %272, 1
  %295 = icmp eq i32 %294, %269
  br i1 %295, label %296, label %271

296:                                              ; preds = %290, %266
  %297 = load ptr, ptr %10, align 8
  %298 = getelementptr inbounds %struct.mwifiex_adapter, ptr %297, i32 0, i32 145
  %299 = load i8, ptr %298, align 1, !range !11
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %331, label %301

301:                                              ; preds = %296
  %302 = getelementptr inbounds %struct.mwifiex_adapter, ptr %297, i32 0, i32 5
  %303 = load i8, ptr %302, align 4
  %304 = zext i8 %303 to i32
  %305 = icmp eq i8 %303, 0
  br i1 %305, label %331, label %306

306:                                              ; preds = %324, %301
  %307 = phi i32 [ %325, %324 ], [ 0, %301 ]
  %308 = getelementptr %struct.mwifiex_adapter, ptr %297, i32 0, i32 4, i32 %307
  %309 = load ptr, ptr %308, align 4
  %310 = icmp eq ptr %309, null
  br i1 %310, label %324, label %311

311:                                              ; preds = %306
  %312 = getelementptr inbounds %struct.mwifiex_private, ptr %309, i32 0, i32 2
  %313 = load i8, ptr %312, align 1
  %314 = and i8 %313, 1
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %311
  %317 = getelementptr inbounds %struct.mwifiex_private, ptr %309, i32 0, i32 5
  %318 = load i8, ptr %317, align 8
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %324, label %327

320:                                              ; preds = %311
  %321 = getelementptr inbounds %struct.mwifiex_private, ptr %309, i32 0, i32 8
  %322 = load i8, ptr %321, align 8
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %320, %316, %306
  %325 = add nuw nsw i32 %307, 1
  %326 = icmp eq i32 %325, %304
  br i1 %326, label %331, label %306

327:                                              ; preds = %320, %316
  %328 = getelementptr inbounds %struct.mwifiex_adapter, ptr %297, i32 0, i32 81
  %329 = load i16, ptr %328, align 2
  %330 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, ptr %38, i32 0, i32 7
  store i16 %329, ptr %330, align 2
  br label %331

331:                                              ; preds = %327, %324, %301, %296
  %332 = call i32 @mwifiex_scan_networks(ptr noundef %10, ptr noundef nonnull %38) #14
  call void @kfree(ptr noundef nonnull %38) #14
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %336, label %334

334:                                              ; preds = %331
  %335 = load ptr, ptr %10, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %335, i32 noundef 4, ptr noundef nonnull @.str.61, i32 noundef %332) #14
  store i8 0, ptr %16, align 8
  store ptr null, ptr %12, align 8
  br label %391

336:                                              ; preds = %331
  %337 = load ptr, ptr %116, align 8
  %338 = icmp eq ptr %337, null
  br i1 %338, label %391, label %339

339:                                              ; preds = %336
  %340 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %1, i32 0, i32 5
  %341 = load i32, ptr %340, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %391, label %343

343:                                              ; preds = %339
  %344 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 0
  %345 = load i16, ptr %344, align 2
  %346 = icmp eq i16 %345, 1
  br i1 %346, label %347, label %349

347:                                              ; preds = %343
  store i16 0, ptr %344, align 2
  %348 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(256) %348, i8 0, i32 256, i1 false)
  br label %349

349:                                              ; preds = %347, %343
  %350 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 1
  %351 = load i16, ptr %350, align 2
  %352 = icmp eq i16 %351, 1
  br i1 %352, label %353, label %355

353:                                              ; preds = %349
  store i16 0, ptr %350, align 2
  %354 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 1, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(256) %354, i8 0, i32 256, i1 false)
  br label %355

355:                                              ; preds = %353, %349
  %356 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 2
  %357 = load i16, ptr %356, align 2
  %358 = icmp eq i16 %357, 1
  br i1 %358, label %359, label %361

359:                                              ; preds = %355
  store i16 0, ptr %356, align 2
  %360 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 2, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(256) %360, i8 0, i32 256, i1 false)
  br label %361

361:                                              ; preds = %359, %355
  %362 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 3
  %363 = load i16, ptr %362, align 2
  %364 = icmp eq i16 %363, 1
  br i1 %364, label %365, label %367

365:                                              ; preds = %361
  store i16 0, ptr %362, align 2
  %366 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(256) %366, i8 0, i32 256, i1 false)
  br label %367

367:                                              ; preds = %365, %361
  %368 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 4
  %369 = load i16, ptr %368, align 2
  %370 = icmp eq i16 %369, 1
  br i1 %370, label %371, label %373

371:                                              ; preds = %367
  store i16 0, ptr %368, align 2
  %372 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(256) %372, i8 0, i32 256, i1 false)
  br label %373

373:                                              ; preds = %371, %367
  %374 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 5
  %375 = load i16, ptr %374, align 2
  %376 = icmp eq i16 %375, 1
  br i1 %376, label %377, label %379

377:                                              ; preds = %373
  store i16 0, ptr %374, align 2
  %378 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 5, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(256) %378, i8 0, i32 256, i1 false)
  br label %379

379:                                              ; preds = %377, %373
  %380 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 6
  %381 = load i16, ptr %380, align 2
  %382 = icmp eq i16 %381, 1
  br i1 %382, label %383, label %385

383:                                              ; preds = %379
  store i16 0, ptr %380, align 2
  %384 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 6, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(256) %384, i8 0, i32 256, i1 false)
  br label %385

385:                                              ; preds = %383, %379
  %386 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 7
  %387 = load i16, ptr %386, align 2
  %388 = icmp eq i16 %387, 1
  br i1 %388, label %389, label %391

389:                                              ; preds = %385
  store i16 0, ptr %386, align 2
  %390 = getelementptr %struct.mwifiex_private, ptr %10, i32 0, i32 96, i32 7, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(256) %390, i8 0, i32 256, i1 false)
  br label %391

391:                                              ; preds = %389, %385, %339, %336, %334, %36, %19
  %392 = phi i32 [ -16, %19 ], [ %332, %334 ], [ -12, %36 ], [ 0, %339 ], [ 0, %336 ], [ 0, %389 ], [ 0, %385 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #14
  ret i32 %392
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_connect(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca %struct.cfg80211_connect_resp_params, align 4
  %5 = alloca %struct.cfg80211_connect_resp_params, align 4
  %6 = alloca %struct.cfg80211_connect_resp_params, align 4
  %7 = alloca ptr, align 4
  %8 = getelementptr i8, ptr %1, i32 1408
  %9 = load i32, ptr %8, align 4
  %10 = inttoptr i32 %9 to ptr
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store ptr null, ptr %7, align 4
  %12 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 4, ptr noundef nonnull @.str.62, ptr noundef %1) #14
  br label %98

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 103
  %19 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 103, i32 25
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 4, ptr noundef nonnull @.str.63, ptr noundef %1) #14
  br label %98

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 114
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i8 0, ptr %24, align 1
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 12
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load volatile i32, ptr %29, align 4
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %28
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 4, ptr noundef nonnull @.str.64, ptr noundef %1) #14
  br label %98

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 1073741824, ptr noundef nonnull @.str.65, ptr noundef %40) #14
  %41 = tail call i32 @mwifiex_stop_bg_scan(ptr noundef %10) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load ptr, ptr %18, align 8
  tail call void @cfg80211_sched_scan_stopped_locked(ptr noundef %44, i64 noundef 0) #14
  br label %45

45:                                               ; preds = %43, %38
  %46 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %2, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %39, align 4
  %51 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 18
  %52 = load i32, ptr %51, align 8
  %53 = load ptr, ptr %2, align 4
  %54 = call fastcc i32 @mwifiex_cfg80211_assoc(ptr noundef %10, i32 noundef %47, ptr noundef %49, ptr noundef %50, i32 noundef %52, ptr noundef %53, ptr noundef %2, i1 noundef zeroext false, ptr noundef nonnull %7)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 15
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 112
  %60 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #14
  %61 = getelementptr inbounds i8, ptr %6, i32 28
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %61, i8 0, i64 24, i1 false) #14
  store i32 0, ptr %6, align 4
  %62 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %6, i32 0, i32 1
  store ptr %59, ptr %62, align 4
  %63 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %6, i32 0, i32 2
  store ptr %60, ptr %63, align 4
  %64 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %6, i32 0, i32 3
  %65 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %6, i32 0, i32 8
  store i32 0, ptr %65, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %64, i8 0, i64 16, i1 false) #14
  call void @cfg80211_connect_done(ptr noundef %58, ptr noundef nonnull %6, i32 noundef 3264) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #14
  %66 = load ptr, ptr %10, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %66, i32 noundef 1, ptr noundef nonnull @.str.66, ptr noundef %59) #14
  %67 = load ptr, ptr %10, align 8
  %68 = getelementptr inbounds %struct.mwifiex_adapter, ptr %67, i32 0, i32 47
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 16384
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %98, label %72

72:                                               ; preds = %56
  %73 = getelementptr inbounds %struct.mwifiex_adapter, ptr %67, i32 0, i32 151
  %74 = load i8, ptr %73, align 4, !range !11
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %98, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 1
  %78 = load i8, ptr %77, align 4
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  call void @mwifiex_setup_auto_tdls_timer(ptr noundef %10) #14
  br label %98

81:                                               ; preds = %45
  %82 = load ptr, ptr %10, align 8
  %83 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 112
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %82, i32 noundef 4, ptr noundef nonnull @.str.67, ptr noundef %83) #14
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %83, i8 0, i32 6, i1 false) #14
  %84 = icmp sgt i32 %54, 0
  %85 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 15
  %86 = load ptr, ptr %85, align 4
  br i1 %84, label %87, label %93

87:                                               ; preds = %81
  %88 = and i32 %54, 65535
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  %89 = getelementptr inbounds i8, ptr %5, i32 28
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %89, i8 0, i64 24, i1 false) #14
  store i32 %88, ptr %5, align 4
  %90 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %5, i32 0, i32 1
  store ptr %83, ptr %90, align 4
  %91 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %5, i32 0, i32 2
  %92 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %5, i32 0, i32 8
  store i32 0, ptr %92, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %91, i8 0, i64 20, i1 false) #14
  call void @cfg80211_connect_done(ptr noundef %86, ptr noundef nonnull %5, i32 noundef 3264) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #14
  br label %98

93:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  %94 = getelementptr inbounds i8, ptr %4, i32 28
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %94, i8 0, i64 24, i1 false) #14
  store i32 1, ptr %4, align 4
  %95 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %4, i32 0, i32 1
  store ptr %83, ptr %95, align 4
  %96 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %4, i32 0, i32 2
  %97 = getelementptr inbounds %struct.cfg80211_connect_resp_params, ptr %4, i32 0, i32 8
  store i32 0, ptr %97, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %96, i8 0, i64 20, i1 false) #14
  call void @cfg80211_connect_done(ptr noundef %86, ptr noundef nonnull %4, i32 noundef 3264) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  br label %98

98:                                               ; preds = %93, %87, %80, %76, %72, %56, %37, %22, %16
  %99 = phi i32 [ -22, %16 ], [ -114, %22 ], [ -14, %37 ], [ 0, %87 ], [ 0, %93 ], [ 0, %56 ], [ 0, %72 ], [ 0, %76 ], [ 0, %80 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_disconnect(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 @mwifiex_stop_bg_scan(ptr noundef %6) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 103
  %11 = load ptr, ptr %10, align 8
  tail call void @cfg80211_sched_scan_stopped_locked(ptr noundef %11, i64 noundef 0) #14
  br label %12

12:                                               ; preds = %9, %3
  %13 = tail call i32 @mwifiex_deauthenticate(ptr noundef %6, ptr noundef null) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 112
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %16, i8 0, i32 6, i1 false) #14
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 136
  store i8 0, ptr %17, align 1
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ 0, %15 ], [ -14, %12 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_join_ibss(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 18
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 1
  %10 = load ptr, ptr %6, align 8
  br i1 %9, label %12, label %11

11:                                               ; preds = %3
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.73) #14
  br label %117

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.74, ptr noundef %14) #14
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr getelementptr inbounds (%struct.ieee80211_supported_band, ptr @mwifiex_band_2ghz, i32 0, i32 4), align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %32, %24
  %28 = phi i32 [ %33, %32 ], [ 0, %24 ]
  %29 = getelementptr [12 x %struct.ieee80211_rate], ptr @mwifiex_rates, i32 0, i32 %28, i32 1
  %30 = load i16, ptr %29, align 4
  %31 = icmp eq i16 %30, 60
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = add nuw nsw i32 %28, 1
  %34 = icmp eq i32 %33, %25
  br i1 %34, label %38, label %27

35:                                               ; preds = %27
  %36 = shl nuw i32 1, %28
  %37 = icmp ult i32 %22, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %35, %32, %24
  %39 = phi i32 [ %36, %35 ], [ 0, %24 ], [ 0, %32 ]
  %40 = urem i32 %22, %39
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i8 2, i8 3
  br label %43

43:                                               ; preds = %38, %35, %20
  %44 = phi i8 [ 3, %20 ], [ 1, %35 ], [ %42, %38 ]
  %45 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 2, i32 1
  %46 = load i32, ptr %45, align 4
  switch i32 %46, label %47 [
    i32 0, label %60
    i32 1, label %48
    i32 2, label %48
  ]

47:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.78, i32 noundef 778, i32 noundef 9, ptr noundef null) #14
  br label %60

48:                                               ; preds = %43, %43
  %49 = or i8 %44, 10
  br label %60

50:                                               ; preds = %12
  %51 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 2, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp ult i32 %52, 3
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.78, i32 noundef 778, i32 noundef 9, ptr noundef null) #14
  br label %60

55:                                               ; preds = %50
  %56 = trunc i32 %52 to i24
  %57 = shl i24 %56, 3
  %58 = lshr i24 1315844, %57
  %59 = trunc i24 %58 to i8
  br label %60

60:                                               ; preds = %55, %54, %48, %47, %43
  %61 = phi i8 [ %49, %48 ], [ %44, %47 ], [ %44, %43 ], [ 4, %54 ], [ %59, %55 ]
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds %struct.mwifiex_adapter, ptr %15, i32 0, i32 82
  %64 = load i8, ptr %63, align 4
  %65 = zext i8 %64 to i32
  %66 = or i8 %64, %61
  %67 = zext i8 %66 to i32
  %68 = xor i32 %65, -1
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.mwifiex_adapter, ptr %15, i32 0, i32 84
  store i8 %61, ptr %72, align 2
  %73 = getelementptr inbounds %struct.mwifiex_adapter, ptr %15, i32 0, i32 83
  store i8 %61, ptr %73, align 1
  %74 = and i32 %62, 24
  %75 = icmp ne i32 %74, 0
  %76 = getelementptr inbounds %struct.mwifiex_adapter, ptr %15, i32 0, i32 116
  %77 = zext i1 %75 to i8
  store i8 %77, ptr %76, align 2
  br label %78

78:                                               ; preds = %71, %60
  %79 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 2, i32 1
  %80 = load i32, ptr %79, align 4
  switch i32 %80, label %88 [
    i32 0, label %89
    i32 1, label %89
    i32 2, label %81
  ]

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 2, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = load ptr, ptr %16, align 4
  %85 = getelementptr inbounds %struct.ieee80211_channel, ptr %84, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = icmp ugt i32 %83, %86
  br i1 %87, label %89, label %92

88:                                               ; preds = %78
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.78, i32 noundef 778, i32 noundef 9, ptr noundef null) #14
  br label %89

89:                                               ; preds = %88, %81, %78, %78
  %90 = phi i1 [ false, %88 ], [ false, %78 ], [ true, %81 ], [ false, %78 ]
  %91 = zext i1 %90 to i8
  br label %92

92:                                               ; preds = %89, %81
  %93 = phi i8 [ %91, %89 ], [ 3, %81 ]
  %94 = getelementptr inbounds %struct.mwifiex_adapter, ptr %15, i32 0, i32 117
  store i8 %93, ptr %94, align 1
  %95 = load ptr, ptr %16, align 4
  %96 = getelementptr inbounds %struct.ieee80211_channel, ptr %95, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = mul i32 %97, 1000
  %99 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %98) #14
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 56
  store i8 %100, ptr %101, align 8
  %102 = and i32 %99, 255
  %103 = load i8, ptr %94, align 1
  %104 = zext i8 %103 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %15, i32 noundef 1073741824, ptr noundef nonnull @.str.77, i32 noundef %62, i32 noundef %102, i32 noundef %104) #14
  %105 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 4
  %106 = load i8, ptr %105, align 4
  %107 = zext i8 %106 to i32
  %108 = load ptr, ptr %2, align 4
  %109 = load ptr, ptr %13, align 4
  %110 = load i32, ptr %7, align 8
  %111 = load ptr, ptr %16, align 4
  %112 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 9
  %113 = load i8, ptr %112, align 1, !range !11
  %114 = icmp ne i8 %113, 0
  %115 = tail call fastcc i32 @mwifiex_cfg80211_assoc(ptr noundef %6, i32 noundef %107, ptr noundef %108, ptr noundef %109, i32 noundef %110, ptr noundef %111, ptr noundef null, i1 noundef zeroext %114, ptr noundef null)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %92, %11
  %118 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 15
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 112
  %121 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %2, i32 0, i32 2
  %122 = load ptr, ptr %121, align 4
  tail call void @cfg80211_ibss_joined(ptr noundef %119, ptr noundef %120, ptr noundef %122, i32 noundef 3264) #14
  %123 = load ptr, ptr %6, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %123, i32 noundef 1, ptr noundef nonnull @.str.75, ptr noundef %120) #14
  br label %126

124:                                              ; preds = %92
  %125 = load ptr, ptr %6, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %125, i32 noundef 4, ptr noundef nonnull @.str.76) #14
  br label %126

126:                                              ; preds = %124, %117
  %127 = phi i32 [ %115, %124 ], [ 0, %117 ]
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_leave_ibss(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %5, i32 0, i32 112
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.79, ptr noundef %7) #14
  %8 = tail call i32 @mwifiex_deauthenticate(ptr noundef %5, ptr noundef null) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %7, i8 0, i32 6, i1 false) #14
  br label %11

11:                                               ; preds = %10, %2
  %12 = phi i32 [ 0, %10 ], [ -14, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_wiphy_params(ptr noundef readonly %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %9 = load i32, ptr %8, align 4
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 5
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %20, %7
  %16 = phi i32 [ %21, %20 ], [ 0, %7 ]
  %17 = getelementptr %struct.mwifiex_adapter, ptr %10, i32 0, i32 4, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = add nuw nsw i32 %16, 1
  %22 = icmp eq i32 %21, %13
  br i1 %22, label %23, label %15

23:                                               ; preds = %20, %15, %7
  %24 = phi ptr [ null, %7 ], [ %18, %15 ], [ null, %20 ]
  %25 = getelementptr inbounds %struct.mwifiex_private, ptr %24, i32 0, i32 2
  %26 = load i8, ptr %25, align 1
  switch i8 %26, label %88 [
    i8 1, label %27
    i8 0, label %63
  ]

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.mwifiex_private, ptr %24, i32 0, i32 5
  %29 = load i8, ptr %28, align 8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.80) #14
  br label %89

32:                                               ; preds = %27
  %33 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %34 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 292) #16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %89, label %36

36:                                               ; preds = %32
  tail call void @mwifiex_set_sys_config_invalid_data(ptr noundef nonnull %34) #14
  %37 = and i32 %1, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 36
  %41 = load i32, ptr %40, align 4
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %34, i32 0, i32 2
  store i16 %42, ptr %43, align 2
  br label %44

44:                                               ; preds = %39, %36
  %45 = and i32 %1, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 35
  %49 = load i32, ptr %48, align 8
  %50 = trunc i32 %49 to i16
  %51 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %34, i32 0, i32 3
  store i16 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %47, %44
  %53 = and i32 %1, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 34
  %57 = load i8, ptr %56, align 1
  %58 = getelementptr inbounds %struct.mwifiex_uap_bss_param, ptr %34, i32 0, i32 4
  store i8 %57, ptr %58, align 2
  br label %59

59:                                               ; preds = %55, %52
  %60 = tail call i32 @mwifiex_send_cmd(ptr noundef %24, i16 noundef zeroext 176, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %34, i1 noundef zeroext false) #14
  tail call void @kfree(ptr noundef nonnull %34) #14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %88, label %62

62:                                               ; preds = %59
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.81) #14
  br label %89

63:                                               ; preds = %23
  %64 = getelementptr inbounds %struct.mwifiex_private, ptr %24, i32 0, i32 8
  %65 = load i8, ptr %64, align 8
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.82) #14
  br label %89

68:                                               ; preds = %63
  %69 = and i32 %1, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 36
  %73 = load i32, ptr %72, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %74 = tail call i32 @llvm.umin.i32(i32 %73, i32 2347) #14
  store i32 %74, ptr %4, align 4
  %75 = call i32 @mwifiex_send_cmd(ptr noundef %24, i16 noundef zeroext 22, i16 noundef zeroext 1, i32 noundef 5, ptr noundef nonnull %4, i1 noundef zeroext true) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %71, %68
  %78 = and i32 %1, 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 35
  %82 = load i32, ptr %81, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %83 = add i32 %82, -2347
  %84 = icmp ult i32 %83, -2091
  %85 = select i1 %84, i32 2346, i32 %82
  store i32 %85, ptr %3, align 4
  %86 = call i32 @mwifiex_send_cmd(ptr noundef %24, i16 noundef zeroext 22, i16 noundef zeroext 1, i32 noundef 8, ptr noundef nonnull %3, i1 noundef zeroext true) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80, %77, %59, %23
  br label %89

89:                                               ; preds = %88, %80, %71, %67, %62, %32, %31
  %90 = phi i32 [ 0, %88 ], [ -22, %67 ], [ -22, %31 ], [ %60, %62 ], [ -12, %32 ], [ %75, %71 ], [ %86, %80 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_tx_power(ptr noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca %struct.mwifiex_power_cfg, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %10 = load i32, ptr %9, align 4
  %11 = inttoptr i32 %10 to ptr
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !8
  %12 = sdiv i32 %3, 100
  switch i32 %2, label %19 [
    i32 2, label %13
    i32 1, label %16
    i32 0, label %18
  ]

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.mwifiex_power_cfg, ptr %5, i32 0, i32 1
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mwifiex_power_cfg, ptr %5, i32 0, i32 2
  store i32 %12, ptr %15, align 4
  br label %19

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.mwifiex_power_cfg, ptr %5, i32 0, i32 2
  store i32 %12, ptr %17, align 4
  br label %19

18:                                               ; preds = %8
  store i32 1, ptr %5, align 4
  br label %19

19:                                               ; preds = %18, %16, %13, %8
  %20 = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 5
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = icmp eq i8 %21, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %29, %19
  %25 = phi i32 [ %30, %29 ], [ 0, %19 ]
  %26 = getelementptr %struct.mwifiex_adapter, ptr %11, i32 0, i32 4, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = add nuw nsw i32 %25, 1
  %31 = icmp eq i32 %30, %22
  br i1 %31, label %32, label %24

32:                                               ; preds = %29, %24, %19
  %33 = phi ptr [ null, %19 ], [ %27, %24 ], [ null, %29 ]
  %34 = call i32 @mwifiex_set_tx_power(ptr noundef %33, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_get_tx_power(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %8 = load i32, ptr %7, align 4
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 5
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %11, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %19, %6
  %15 = phi i32 [ %20, %19 ], [ 0, %6 ]
  %16 = getelementptr %struct.mwifiex_adapter, ptr %9, i32 0, i32 4, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = add nuw nsw i32 %15, 1
  %21 = icmp eq i32 %20, %12
  br i1 %21, label %22, label %14

22:                                               ; preds = %19, %14, %6
  %23 = phi ptr [ null, %6 ], [ %17, %14 ], [ null, %19 ]
  %24 = tail call i32 @mwifiex_send_cmd(ptr noundef %23, i16 noundef zeroext 30, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #14
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mwifiex_private, ptr %23, i32 0, i32 20
  %28 = load i16, ptr %27, align 8
  %29 = zext i16 %28 to i32
  store i32 %29, ptr %2, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i32 [ 0, %26 ], [ %24, %22 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_bitrate_mask(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) #1 {
  %5 = alloca [18 x i16], align 2
  %6 = getelementptr i8, ptr %1, i32 1408
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #14
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 8
  %11 = load i8, ptr %10, align 8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 4, ptr noundef nonnull @.str.83) #14
  br label %67

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 50, i32 3
  %16 = load i8, ptr %15, align 2
  %17 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %16) #14
  %18 = zext i8 %17 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(36) %5, i8 0, i32 36, i1 false)
  %19 = icmp eq i8 %17, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i32, ptr %3, align 4
  %22 = trunc i32 %21 to i16
  %23 = and i16 %22, 15
  store i16 %23, ptr %5, align 2
  %24 = lshr i16 %22, 4
  %25 = and i16 %24, 255
  br label %30

26:                                               ; preds = %14
  %27 = getelementptr [6 x %struct.anon.148], ptr %3, i32 0, i32 %18
  %28 = load i32, ptr %27, align 4
  %29 = trunc i32 %28 to i16
  br label %30

30:                                               ; preds = %26, %20
  %31 = phi i16 [ %25, %20 ], [ %29, %26 ]
  %32 = getelementptr inbounds [18 x i16], ptr %5, i32 0, i32 1
  store i16 %31, ptr %32, align 2
  %33 = getelementptr [6 x %struct.anon.148], ptr %3, i32 0, i32 %18, i32 1
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i16
  %36 = getelementptr inbounds [18 x i16], ptr %5, i32 0, i32 2
  store i16 %35, ptr %36, align 2
  %37 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 114
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 34
  br i1 %39, label %40, label %49

40:                                               ; preds = %30
  %41 = getelementptr [6 x %struct.anon.148], ptr %3, i32 0, i32 %18, i32 1, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i16
  %44 = shl nuw i16 %43, 8
  %45 = or i16 %44, %35
  store i16 %45, ptr %36, align 2
  %46 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 138
  %47 = load i8, ptr %46, align 2
  %48 = icmp eq i8 %47, 15
  br i1 %48, label %55, label %65

49:                                               ; preds = %30
  %50 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 138
  %51 = load i8, ptr %50, align 2
  %52 = icmp eq i8 %51, 15
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = getelementptr [6 x %struct.anon.148], ptr %3, i32 0, i32 %18, i32 2
  br label %60

55:                                               ; preds = %40
  %56 = getelementptr [6 x %struct.anon.148], ptr %3, i32 0, i32 %18, i32 2
  %57 = load i16, ptr %56, align 2
  %58 = getelementptr inbounds [18 x i16], ptr %5, i32 0, i32 10
  store i16 %57, ptr %58, align 2
  %59 = getelementptr [6 x %struct.anon.148], ptr %3, i32 0, i32 %18, i32 2, i32 1
  br label %60

60:                                               ; preds = %55, %53
  %61 = phi ptr [ %54, %53 ], [ %59, %55 ]
  %62 = phi i32 [ 10, %53 ], [ 11, %55 ]
  %63 = load i16, ptr %61, align 2
  %64 = getelementptr inbounds [18 x i16], ptr %5, i32 0, i32 %62
  store i16 %63, ptr %64, align 2
  br label %65

65:                                               ; preds = %60, %49, %40
  %66 = call i32 @mwifiex_send_cmd(ptr noundef %8, i16 noundef zeroext 214, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %5, i1 noundef zeroext true) #14
  br label %67

67:                                               ; preds = %65, %13
  %68 = phi i32 [ %66, %65 ], [ -22, %13 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #14
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_dump_survey(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %8, i32 0, i32 148
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %8, i32 noundef -2147483648, ptr noundef nonnull @.str.84, i32 noundef %2) #14
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(72) %3, i8 0, i32 72, i1 false)
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 8
  %17 = load i8, ptr %16, align 8
  %18 = icmp ne i8 %17, 0
  %19 = icmp eq i32 %2, 0
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 50, i32 3
  %23 = load i8, ptr %22, align 2
  %24 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 50, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %23) #14
  %27 = zext i8 %26 to i32
  %28 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %25, i32 noundef %27) #14
  %29 = urem i32 %28, 1000
  %30 = sub i32 %28, %29
  %31 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %0, i32 noundef %30) #14
  store ptr %31, ptr %3, align 8
  %32 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 42
  %33 = load i16, ptr %32, align 4
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %71, label %35

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.survey_info, ptr %3, i32 0, i32 8
  store i32 1, ptr %36, align 8
  %37 = load i16, ptr %32, align 4
  %38 = trunc i16 %37 to i8
  %39 = getelementptr inbounds %struct.survey_info, ptr %3, i32 0, i32 9
  store i8 %38, ptr %39, align 4
  br label %71

40:                                               ; preds = %15, %4
  %41 = load ptr, ptr %7, align 8
  %42 = getelementptr inbounds %struct.mwifiex_adapter, ptr %41, i32 0, i32 149
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %43, %2
  br i1 %44, label %45, label %71

45:                                               ; preds = %40
  %46 = getelementptr %struct.mwifiex_chan_stats, ptr %10, i32 %2, i32 5
  %47 = load i16, ptr %46, align 1
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %71, label %49

49:                                               ; preds = %45
  %50 = getelementptr %struct.mwifiex_chan_stats, ptr %10, i32 %2
  %51 = getelementptr %struct.mwifiex_chan_stats, ptr %10, i32 %2, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, ptr %50, align 1
  %55 = zext i8 %54 to i32
  %56 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %55, i32 noundef %53) #14
  %57 = urem i32 %56, 1000
  %58 = sub i32 %56, %57
  %59 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %0, i32 noundef %58) #14
  store ptr %59, ptr %3, align 8
  %60 = getelementptr inbounds %struct.survey_info, ptr %3, i32 0, i32 8
  store i32 13, ptr %60, align 8
  %61 = getelementptr %struct.mwifiex_chan_stats, ptr %10, i32 %2, i32 3
  %62 = load i8, ptr %61, align 1
  %63 = getelementptr inbounds %struct.survey_info, ptr %3, i32 0, i32 9
  store i8 %62, ptr %63, align 4
  %64 = load i16, ptr %46, align 1
  %65 = zext i16 %64 to i64
  %66 = getelementptr inbounds %struct.survey_info, ptr %3, i32 0, i32 1
  store i64 %65, ptr %66, align 8
  %67 = getelementptr %struct.mwifiex_chan_stats, ptr %10, i32 %2, i32 6
  %68 = load i16, ptr %67, align 1
  %69 = zext i16 %68 to i64
  %70 = getelementptr inbounds %struct.survey_info, ptr %3, i32 0, i32 2
  store i64 %69, ptr %70, align 8
  br label %71

71:                                               ; preds = %49, %45, %40, %35, %21
  %72 = phi i32 [ 0, %49 ], [ 0, %35 ], [ 0, %21 ], [ -2, %40 ], [ 0, %45 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_remain_on_channel(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #1 {
  %6 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1408
  %9 = load i32, ptr %8, align 4
  %10 = inttoptr i32 %9 to ptr
  %11 = icmp ne ptr %2, null
  %12 = icmp ne ptr %4, null
  %13 = and i1 %11, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr %10, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %15, i32 noundef 4, ptr noundef nonnull @.str.85) #14
  br label %33

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 129
  %18 = load i64, ptr %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %10, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %21, i32 noundef 1073741824, ptr noundef nonnull @.str.86, i64 noundef %18) #14
  br label %33

22:                                               ; preds = %16
  %23 = tail call i32 @mwifiex_remain_on_chan_cfg(ptr noundef %10, i16 noundef zeroext 1, ptr noundef nonnull %2, i32 noundef %3) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = tail call i32 @prandom_u32() #14
  %27 = or i32 %26, 1
  %28 = zext i32 %27 to i64
  store i64 %28, ptr %4, align 8
  store i64 %28, ptr %17, align 8
  %29 = getelementptr inbounds %struct.mwifiex_private, ptr %10, i32 0, i32 129, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %29, ptr noundef nonnull align 4 dereferenceable(56) %2, i32 56, i1 false)
  %30 = load i64, ptr %4, align 8
  tail call void @cfg80211_ready_on_channel(ptr noundef %1, i64 noundef %30, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 2592) #14
  %31 = load ptr, ptr %10, align 8
  %32 = load i64, ptr %4, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %31, i32 noundef 1073741824, ptr noundef nonnull @.str.87, i64 noundef %32) #14
  br label %33

33:                                               ; preds = %25, %22, %20, %14
  %34 = phi i32 [ -16, %20 ], [ -22, %14 ], [ 0, %25 ], [ %23, %22 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_cancel_remain_on_channel(ptr nocapture noundef readnone %0, ptr noundef %1, i64 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1408
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 129
  %10 = load i64, ptr %9, align 8
  %11 = icmp eq i64 %10, %2
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 129, i32 1
  %14 = tail call i32 @mwifiex_remain_on_chan_cfg(ptr noundef %8, i16 noundef zeroext 4, ptr noundef %13, i32 noundef 0) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  tail call void @cfg80211_remain_on_channel_expired(ptr noundef %1, i64 noundef %2, ptr noundef %13, i32 noundef 2592) #14
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(64) %9, i8 0, i32 64, i1 false)
  %17 = load ptr, ptr %8, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %17, i32 noundef 1073741824, ptr noundef nonnull @.str.88, i64 noundef %2) #14
  br label %18

18:                                               ; preds = %16, %12, %3
  %19 = phi i32 [ -2, %3 ], [ 0, %16 ], [ %14, %12 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_mgmt_tx(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %2, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, ptr %2, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 1408
  %12 = load i32, ptr %11, align 4
  %13 = inttoptr i32 %12 to ptr
  %14 = icmp ne ptr %6, null
  %15 = icmp ne i32 %8, 0
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load ptr, ptr %13, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %18, i32 noundef 4, ptr noundef nonnull @.str.89) #14
  br label %79

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.mwifiex_private, ptr %13, i32 0, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load i16, ptr %6, align 2
  %26 = and i16 %25, 252
  %27 = icmp eq i16 %26, 80
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load ptr, ptr %13, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %29, i32 noundef 1073741824, ptr noundef nonnull @.str.90) #14
  br label %79

30:                                               ; preds = %24, %19
  %31 = add i32 %8, 6
  %32 = and i32 %31, 65535
  %33 = add nuw nsw i32 %32, 110
  %34 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %33, i32 noundef 2592) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load ptr, ptr %13, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %37, i32 noundef 4, ptr noundef nonnull @.str.91) #14
  br label %79

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %39, i8 0, i32 24, i1 false)
  %40 = getelementptr inbounds %struct.mwifiex_private, ptr %13, i32 0, i32 4
  %41 = load i8, ptr %40, align 1
  %42 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 13
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds %struct.mwifiex_private, ptr %13, i32 0, i32 1
  %44 = load i8, ptr %43, align 4
  %45 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 14
  store i8 %44, ptr %45, align 2
  %46 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 16
  store i32 %32, ptr %46, align 8
  %47 = trunc i32 %8 to i16
  %48 = add i16 %47, 6
  %49 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 17
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 110
  store ptr %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 14
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr i8, ptr %53, i32 110
  store ptr %54, ptr %52, align 8
  %55 = tail call ptr @skb_push(ptr noundef nonnull %34, i32 noundef 2) #14
  store i16 %48, ptr %55, align 1
  %56 = tail call ptr @skb_push(ptr noundef nonnull %34, i32 noundef 4) #14
  store i32 0, ptr %56, align 1
  %57 = tail call ptr @skb_push(ptr noundef nonnull %34, i32 noundef 4) #14
  store i32 229, ptr %57, align 1
  %58 = tail call ptr @skb_put(ptr noundef nonnull %34, i32 noundef 24) #14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(24) %58, ptr noundef nonnull align 1 dereferenceable(24) %6, i32 24, i1 false) #14
  %59 = tail call ptr @skb_put(ptr noundef nonnull %34, i32 noundef 6) #14
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %59, i8 -1, i32 6, i1 false) #14
  %60 = getelementptr i8, ptr %6, i32 24
  %61 = add i32 %8, -24
  %62 = tail call ptr @skb_put(ptr noundef nonnull %34, i32 noundef %61) #14
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %62, ptr align 1 %60, i32 %61, i1 false) #14
  %63 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 13, i32 0, i32 5
  store i32 0, ptr %63, align 8
  %64 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #14
  %65 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 2
  store i64 %64, ptr %65, align 8
  %66 = tail call i32 @prandom_u32() #14
  %67 = or i32 %66, 1
  %68 = zext i32 %67 to i64
  store i64 %68, ptr %3, align 8
  %69 = load i16, ptr %6, align 2
  %70 = and i16 %69, 252
  %71 = icmp eq i16 %70, 208
  br i1 %71, label %72, label %74

72:                                               ; preds = %38
  %73 = tail call ptr @mwifiex_clone_skb_for_tx_status(ptr noundef %13, ptr noundef nonnull %34, i8 noundef zeroext 16, ptr noundef %3) #14
  br label %75

74:                                               ; preds = %38
  tail call void @cfg80211_mgmt_tx_status(ptr noundef %1, i64 noundef %68, ptr noundef nonnull %6, i32 noundef %8, i1 noundef zeroext true, i32 noundef 2592) #14
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi ptr [ %73, %72 ], [ %34, %74 ]
  %77 = tail call i32 @mwifiex_queue_tx_pkt(ptr noundef %13, ptr noundef %76) #14
  %78 = load ptr, ptr %13, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %78, i32 noundef 1073741824, ptr noundef nonnull @.str.92) #14
  br label %79

79:                                               ; preds = %75, %36, %28, %17
  %80 = phi i32 [ 0, %28 ], [ 0, %75 ], [ -12, %36 ], [ -14, %17 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_power_mgmt(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2, i32 noundef %3) #1 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %1, i32 1408
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %8, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 1073741824, ptr noundef nonnull @.str.93) #14
  br label %12

12:                                               ; preds = %10, %4
  %13 = zext i1 %2 to i32
  store i32 %13, ptr %5, align 4
  %14 = call i32 @mwifiex_drv_set_power(ptr noundef %8, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_cqm_rssi_config(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca %struct.mwifiex_ds_misc_subsc_evt, align 8
  %6 = getelementptr i8, ptr %1, i32 1408
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 115
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 116
  store i32 %3, ptr %10, align 8
  store i64 1114112, ptr %5, align 8
  %11 = icmp ne i32 %2, 0
  %12 = icmp ne i32 %3, 0
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  store i16 2, ptr %5, align 8
  %15 = tail call i32 @llvm.abs.i32(i32 %2, i1 false)
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %5, i32 0, i32 2
  store i8 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %5, i32 0, i32 3
  store i8 %16, ptr %18, align 2
  %19 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %5, i32 0, i32 2, i32 1
  store i8 1, ptr %19, align 1
  %20 = getelementptr inbounds %struct.mwifiex_ds_misc_subsc_evt, ptr %5, i32 0, i32 3, i32 1
  store i8 1, ptr %20, align 1
  br label %22

21:                                               ; preds = %4
  store i16 3, ptr %5, align 8
  br label %22

22:                                               ; preds = %21, %14
  %23 = call i32 @mwifiex_send_cmd(ptr noundef %8, i16 noundef zeroext 117, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %5, i1 noundef zeroext true) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mwifiex_cfg80211_update_mgmt_frame_registrations(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1408
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.mgmt_frame_regs, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 127
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  store i32 %10, ptr %11, align 8
  %15 = tail call i32 @mwifiex_send_cmd(ptr noundef %8, i16 noundef zeroext 268, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %11, i1 noundef zeroext false) #14
  %16 = load ptr, ptr %8, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %16, i32 noundef 1073741824, ptr noundef nonnull @.str.94) #14
  br label %17

17:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_antenna(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.mwifiex_ds_ant_cfg, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %9 = load i32, ptr %8, align 4
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 5
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %20, %7
  %16 = phi i32 [ %21, %20 ], [ 0, %7 ]
  %17 = getelementptr %struct.mwifiex_adapter, ptr %10, i32 0, i32 4, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = add nuw nsw i32 %16, 1
  %22 = icmp eq i32 %21, %13
  br i1 %22, label %23, label %15

23:                                               ; preds = %20, %15, %7
  %24 = phi ptr [ null, %7 ], [ %18, %15 ], [ null, %20 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store i64 0, ptr %4, align 8, !annotation !8
  %25 = icmp ne i32 %1, 0
  %26 = icmp ne i32 %2, 0
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %153

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 114
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 34
  br i1 %31, label %53, label %32

32:                                               ; preds = %28
  %33 = icmp eq i32 %1, %2
  br i1 %33, label %34, label %153

34:                                               ; preds = %32
  %35 = tail call i32 @llvm.ctpop.i32(i32 %1), !range !12
  %36 = icmp ult i32 %35, 2
  %37 = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 46
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = shl nsw i32 -1, %39
  %41 = xor i32 %40, -1
  %42 = icmp eq i32 %41, %1
  %43 = select i1 %36, i1 true, i1 %42
  br i1 %43, label %44, label %153

44:                                               ; preds = %34
  %45 = xor i32 %40, -1
  %46 = icmp eq i32 %45, %1
  br i1 %46, label %47, label %148

47:                                               ; preds = %44
  %48 = load ptr, ptr %24, align 8
  %49 = getelementptr inbounds %struct.mwifiex_adapter, ptr %48, i32 0, i32 46
  %50 = load i16, ptr %49, align 4
  %51 = icmp ugt i16 %50, 1
  %52 = select i1 %51, i32 65535, i32 %1
  br label %148

53:                                               ; preds = %28
  %54 = icmp eq i32 %1, 1
  %55 = icmp eq i32 %2, 1
  %56 = and i1 %54, %55
  %57 = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 115
  br i1 %56, label %58, label %62

58:                                               ; preds = %53
  store i8 17, ptr %57, align 1
  %59 = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 128
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %70, label %66

62:                                               ; preds = %53
  store i8 34, ptr %57, align 1
  %63 = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 128
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62, %58
  %67 = phi i32 [ -65538, %58 ], [ -327686, %62 ]
  %68 = phi i32 [ 1, %58 ], [ 2, %62 ]
  %69 = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 133
  store i32 %67, ptr %69, align 4
  br label %70

70:                                               ; preds = %66, %62, %58
  %71 = phi i32 [ 2, %62 ], [ 1, %58 ], [ %68, %66 ]
  %72 = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 10
  %73 = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 115
  %74 = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 46
  %75 = load ptr, ptr %72, align 4
  %76 = getelementptr %struct.wiphy, ptr %75, i32 0, i32 53, i32 0
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %77, i32 0, i32 5, i32 4
  %81 = load i16, ptr %74, align 4
  %82 = zext i16 %81 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %80, i8 0, i32 %82, i1 false)
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 %80, i8 -1, i32 %71, i1 false)
  %83 = load ptr, ptr %72, align 4
  br label %84

84:                                               ; preds = %79, %70
  %85 = phi ptr [ %75, %70 ], [ %83, %79 ]
  %86 = getelementptr %struct.wiphy, ptr %85, i32 0, i32 53, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %97, label %89

89:                                               ; preds = %84
  %90 = load i8, ptr %73, align 1
  %91 = and i8 %90, 15
  %92 = zext i8 %91 to i32
  %93 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %87, i32 0, i32 5, i32 4
  %94 = load i16, ptr %74, align 4
  %95 = zext i16 %94 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %93, i8 0, i32 %95, i1 false)
  tail call void @llvm.memset.p0.i32(ptr align 1 %93, i8 -1, i32 %92, i1 false)
  %96 = load ptr, ptr %72, align 4
  br label %97

97:                                               ; preds = %89, %84
  %98 = phi ptr [ %96, %89 ], [ %85, %84 ]
  %99 = getelementptr %struct.wiphy, ptr %98, i32 0, i32 53, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %110, label %102

102:                                              ; preds = %97
  %103 = load i8, ptr %73, align 1
  %104 = and i8 %103, 15
  %105 = zext i8 %104 to i32
  %106 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %100, i32 0, i32 5, i32 4
  %107 = load i16, ptr %74, align 4
  %108 = zext i16 %107 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %106, i8 0, i32 %108, i1 false)
  tail call void @llvm.memset.p0.i32(ptr align 1 %106, i8 -1, i32 %105, i1 false)
  %109 = load ptr, ptr %72, align 4
  br label %110

110:                                              ; preds = %102, %97
  %111 = phi ptr [ %109, %102 ], [ %98, %97 ]
  %112 = getelementptr %struct.wiphy, ptr %111, i32 0, i32 53, i32 3
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %123, label %115

115:                                              ; preds = %110
  %116 = load i8, ptr %73, align 1
  %117 = and i8 %116, 15
  %118 = zext i8 %117 to i32
  %119 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %113, i32 0, i32 5, i32 4
  %120 = load i16, ptr %74, align 4
  %121 = zext i16 %120 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %119, i8 0, i32 %121, i1 false)
  tail call void @llvm.memset.p0.i32(ptr align 1 %119, i8 -1, i32 %118, i1 false)
  %122 = load ptr, ptr %72, align 4
  br label %123

123:                                              ; preds = %115, %110
  %124 = phi ptr [ %122, %115 ], [ %111, %110 ]
  %125 = getelementptr %struct.wiphy, ptr %124, i32 0, i32 53, i32 4
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %136, label %128

128:                                              ; preds = %123
  %129 = load i8, ptr %73, align 1
  %130 = and i8 %129, 15
  %131 = zext i8 %130 to i32
  %132 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %126, i32 0, i32 5, i32 4
  %133 = load i16, ptr %74, align 4
  %134 = zext i16 %133 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %132, i8 0, i32 %134, i1 false)
  tail call void @llvm.memset.p0.i32(ptr align 1 %132, i8 -1, i32 %131, i1 false)
  %135 = load ptr, ptr %72, align 4
  br label %136

136:                                              ; preds = %128, %123
  %137 = phi ptr [ %135, %128 ], [ %124, %123 ]
  %138 = getelementptr %struct.wiphy, ptr %137, i32 0, i32 53, i32 5
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %148, label %141

141:                                              ; preds = %136
  %142 = load i8, ptr %73, align 1
  %143 = and i8 %142, 15
  %144 = zext i8 %143 to i32
  %145 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %139, i32 0, i32 5, i32 4
  %146 = load i16, ptr %74, align 4
  %147 = zext i16 %146 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %145, i8 0, i32 %147, i1 false)
  tail call void @llvm.memset.p0.i32(ptr align 1 %145, i8 -1, i32 %144, i1 false)
  br label %148

148:                                              ; preds = %141, %136, %47, %44
  %149 = phi i32 [ %1, %44 ], [ %52, %47 ], [ %1, %141 ], [ %1, %136 ]
  %150 = phi i32 [ %1, %44 ], [ %52, %47 ], [ %2, %141 ], [ %2, %136 ]
  store i32 %149, ptr %4, align 8
  %151 = getelementptr inbounds %struct.mwifiex_ds_ant_cfg, ptr %4, i32 0, i32 1
  store i32 %150, ptr %151, align 4
  %152 = call i32 @mwifiex_send_cmd(ptr noundef %24, i16 noundef zeroext 32, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %4, i1 noundef zeroext true) #14
  br label %153

153:                                              ; preds = %148, %34, %32, %23
  %154 = phi i32 [ %152, %148 ], [ -95, %23 ], [ -95, %32 ], [ -95, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret i32 %154
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_get_antenna(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %8 = load i32, ptr %7, align 4
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 5
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %11, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %19, %6
  %15 = phi i32 [ %20, %19 ], [ 0, %6 ]
  %16 = getelementptr %struct.mwifiex_adapter, ptr %9, i32 0, i32 4, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = add nuw nsw i32 %15, 1
  %21 = icmp eq i32 %20, %12
  br i1 %21, label %22, label %14

22:                                               ; preds = %19, %14, %6
  %23 = phi ptr [ null, %6 ], [ %17, %14 ], [ null, %19 ]
  %24 = tail call i32 @mwifiex_send_cmd(ptr noundef %23, i16 noundef zeroext 32, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #14
  %25 = getelementptr inbounds %struct.mwifiex_private, ptr %23, i32 0, i32 23
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %1, align 4
  %27 = getelementptr inbounds %struct.mwifiex_private, ptr %23, i32 0, i32 24
  %28 = load i32, ptr %27, align 8
  store i32 %28, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_sched_scan_start(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq ptr %2, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %2, i32 0, i32 9
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %11, i1 %14, i1 false
  br i1 %15, label %16, label %18

16:                                               ; preds = %8, %3
  %17 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.95, ptr noundef nonnull @__func__.mwifiex_cfg80211_sched_scan_start) #17
  br label %249

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 56
  %20 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %2, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.96, i32 noundef %10, i32 noundef %13) #17
  %21 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %2, i32 0, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %2, i32 0, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %2, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.97, i32 noundef %22, i32 noundef %25, i32 noundef %27) #17
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 331) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %249, label %31

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 111
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 130
  %37 = load i8, ptr %36, align 8, !range !11
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %29, i32 0, i32 10
  store i16 1, ptr %40, align 2
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32, ptr %20, align 8
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %29, i32 0, i32 12
  store i8 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %2, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %29, i32 0, i32 11
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %2, i32 0, i32 5
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %197, label %51

51:                                               ; preds = %41
  %52 = load i32, ptr %26, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %197, label %54

54:                                               ; preds = %51
  %55 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 0
  %56 = load i16, ptr %55, align 2
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  store i16 8, ptr %55, align 2
  %59 = load ptr, ptr %48, align 8
  %60 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 0, i32 2
  %61 = getelementptr inbounds %struct.ieee_types_header, ptr %59, i32 0, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = add nuw nsw i32 %63, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %60, ptr noundef align 1 %59, i32 %64, i1 false)
  %65 = load i8, ptr %61, align 1
  %66 = zext i8 %65 to i32
  %67 = add nuw nsw i32 %66, 2
  %68 = load i32, ptr %26, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %197

70:                                               ; preds = %58, %54
  %71 = phi i32 [ 0, %54 ], [ %67, %58 ]
  %72 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 1
  %73 = load i16, ptr %72, align 2
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  store i16 8, ptr %72, align 2
  %76 = load ptr, ptr %48, align 8
  %77 = getelementptr i8, ptr %76, i32 %71
  %78 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 1, i32 2
  %79 = getelementptr inbounds %struct.ieee_types_header, ptr %77, i32 0, i32 1
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = add nuw nsw i32 %81, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %78, ptr noundef align 1 %77, i32 %82, i1 false)
  %83 = load i8, ptr %79, align 1
  %84 = zext i8 %83 to i32
  %85 = add nuw nsw i32 %71, 2
  %86 = add nuw nsw i32 %85, %84
  %87 = load i32, ptr %26, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %197

89:                                               ; preds = %75, %70
  %90 = phi i32 [ %71, %70 ], [ %86, %75 ]
  %91 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 2
  %92 = load i16, ptr %91, align 2
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %89
  store i16 8, ptr %91, align 2
  %95 = load ptr, ptr %48, align 8
  %96 = getelementptr i8, ptr %95, i32 %90
  %97 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 2, i32 2
  %98 = getelementptr inbounds %struct.ieee_types_header, ptr %96, i32 0, i32 1
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = add nuw nsw i32 %100, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %97, ptr noundef align 1 %96, i32 %101, i1 false)
  %102 = load i8, ptr %98, align 1
  %103 = zext i8 %102 to i32
  %104 = add nuw nsw i32 %90, 2
  %105 = add nuw nsw i32 %104, %103
  %106 = load i32, ptr %26, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %197

108:                                              ; preds = %94, %89
  %109 = phi i32 [ %90, %89 ], [ %105, %94 ]
  %110 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 3
  %111 = load i16, ptr %110, align 2
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %108
  store i16 8, ptr %110, align 2
  %114 = load ptr, ptr %48, align 8
  %115 = getelementptr i8, ptr %114, i32 %109
  %116 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 3, i32 2
  %117 = getelementptr inbounds %struct.ieee_types_header, ptr %115, i32 0, i32 1
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = add nuw nsw i32 %119, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %116, ptr noundef align 1 %115, i32 %120, i1 false)
  %121 = load i8, ptr %117, align 1
  %122 = zext i8 %121 to i32
  %123 = add nuw nsw i32 %109, 2
  %124 = add nuw nsw i32 %123, %122
  %125 = load i32, ptr %26, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %197

127:                                              ; preds = %113, %108
  %128 = phi i32 [ %109, %108 ], [ %124, %113 ]
  %129 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 4
  %130 = load i16, ptr %129, align 2
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %127
  store i16 8, ptr %129, align 2
  %133 = load ptr, ptr %48, align 8
  %134 = getelementptr i8, ptr %133, i32 %128
  %135 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 4, i32 2
  %136 = getelementptr inbounds %struct.ieee_types_header, ptr %134, i32 0, i32 1
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = add nuw nsw i32 %138, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %135, ptr noundef align 1 %134, i32 %139, i1 false)
  %140 = load i8, ptr %136, align 1
  %141 = zext i8 %140 to i32
  %142 = add nuw nsw i32 %128, 2
  %143 = add nuw nsw i32 %142, %141
  %144 = load i32, ptr %26, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %197

146:                                              ; preds = %132, %127
  %147 = phi i32 [ %128, %127 ], [ %143, %132 ]
  %148 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 5
  %149 = load i16, ptr %148, align 2
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %146
  store i16 8, ptr %148, align 2
  %152 = load ptr, ptr %48, align 8
  %153 = getelementptr i8, ptr %152, i32 %147
  %154 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 5, i32 2
  %155 = getelementptr inbounds %struct.ieee_types_header, ptr %153, i32 0, i32 1
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i32
  %158 = add nuw nsw i32 %157, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %154, ptr noundef align 1 %153, i32 %158, i1 false)
  %159 = load i8, ptr %155, align 1
  %160 = zext i8 %159 to i32
  %161 = add nuw nsw i32 %147, 2
  %162 = add nuw nsw i32 %161, %160
  %163 = load i32, ptr %26, align 4
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %165, label %197

165:                                              ; preds = %151, %146
  %166 = phi i32 [ %147, %146 ], [ %162, %151 ]
  %167 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 6
  %168 = load i16, ptr %167, align 2
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %165
  store i16 8, ptr %167, align 2
  %171 = load ptr, ptr %48, align 8
  %172 = getelementptr i8, ptr %171, i32 %166
  %173 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 6, i32 2
  %174 = getelementptr inbounds %struct.ieee_types_header, ptr %172, i32 0, i32 1
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i32
  %177 = add nuw nsw i32 %176, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %173, ptr noundef align 1 %172, i32 %177, i1 false)
  %178 = load i8, ptr %174, align 1
  %179 = zext i8 %178 to i32
  %180 = add nuw nsw i32 %166, 2
  %181 = add nuw nsw i32 %180, %179
  %182 = load i32, ptr %26, align 4
  %183 = icmp ult i32 %181, %182
  br i1 %183, label %184, label %197

184:                                              ; preds = %170, %165
  %185 = phi i32 [ %166, %165 ], [ %181, %170 ]
  %186 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 7
  %187 = load i16, ptr %186, align 2
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  store i16 8, ptr %186, align 2
  %190 = load ptr, ptr %48, align 8
  %191 = getelementptr i8, ptr %190, i32 %185
  %192 = getelementptr %struct.mwifiex_private, ptr %6, i32 0, i32 96, i32 7, i32 2
  %193 = getelementptr inbounds %struct.ieee_types_header, ptr %191, i32 0, i32 1
  %194 = load i8, ptr %193, align 1
  %195 = zext i8 %194 to i32
  %196 = add nuw nsw i32 %195, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %192, ptr noundef align 1 %191, i32 %196, i1 false)
  br label %197

197:                                              ; preds = %189, %184, %170, %151, %132, %113, %94, %75, %58, %51, %41
  %198 = load i32, ptr %21, align 8
  %199 = tail call i32 @llvm.umin.i32(i32 %198, i32 38)
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %226, label %201

201:                                              ; preds = %220, %197
  %202 = phi i32 [ %224, %220 ], [ 0, %197 ]
  %203 = getelementptr %struct.cfg80211_sched_scan_request, ptr %2, i32 0, i32 27, i32 %202
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr inbounds %struct.ieee80211_channel, ptr %204, i32 0, i32 3
  %206 = load i16, ptr %205, align 2
  %207 = trunc i16 %206 to i8
  %208 = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %29, i32 0, i32 13, i32 %202
  store i8 %207, ptr %208, align 1
  %209 = load i32, ptr %204, align 4
  %210 = trunc i32 %209 to i8
  %211 = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %29, i32 0, i32 13, i32 %202, i32 1
  store i8 %210, ptr %211, align 2
  %212 = getelementptr inbounds %struct.ieee80211_channel, ptr %204, i32 0, i32 4
  %213 = load i32, ptr %212, align 4
  %214 = and i32 %213, 2
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %201
  %217 = load i32, ptr %9, align 4
  %218 = icmp eq i32 %217, 0
  %219 = select i1 %218, i8 2, i8 1
  br label %220

220:                                              ; preds = %216, %201
  %221 = phi i8 [ 2, %201 ], [ %219, %216 ]
  %222 = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %29, i32 0, i32 13, i32 %202, i32 2
  store i8 %221, ptr %222, align 1
  %223 = getelementptr %struct.mwifiex_bg_scan_cfg, ptr %29, i32 0, i32 13, i32 %202, i32 4
  store i32 0, ptr %223, align 1
  %224 = add nuw nsw i32 %202, 1
  %225 = icmp eq i32 %224, %199
  br i1 %225, label %226, label %201

226:                                              ; preds = %220, %197
  %227 = trunc i32 %199 to i8
  %228 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %29, i32 0, i32 3
  store i8 %227, ptr %228, align 4
  %229 = load ptr, ptr %23, align 4
  %230 = load i32, ptr %229, align 4
  %231 = tail call i32 @llvm.umax.i32(i32 %230, i32 15000)
  %232 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %29, i32 0, i32 4
  store i32 %231, ptr %232, align 1
  %233 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %29, i32 0, i32 9
  store i16 6, ptr %233, align 8
  %234 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %29, i32 0, i32 5
  store i32 -2147483647, ptr %234, align 1
  %235 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %29, i32 0, i32 2
  store i8 1, ptr %235, align 1
  store i16 1, ptr %29, align 8
  %236 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %29, i32 0, i32 1
  store i8 1, ptr %236, align 2
  %237 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %2, i32 0, i32 10
  %238 = load i32, ptr %237, align 4
  %239 = icmp eq i32 %238, -300
  br i1 %239, label %243, label %240

240:                                              ; preds = %226
  store i32 -2147483643, ptr %234, align 1
  %241 = trunc i32 %238 to i8
  %242 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, ptr %29, i32 0, i32 7
  store i8 %241, ptr %242, align 2
  br label %243

243:                                              ; preds = %240, %226
  %244 = tail call i32 @mwifiex_send_cmd(ptr noundef %6, i16 noundef zeroext 107, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %29, i1 noundef zeroext true) #14
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %243
  tail call void @kfree(ptr noundef nonnull %29) #14
  br label %249

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 131
  store i8 1, ptr %248, align 1
  tail call void @kfree(ptr noundef nonnull %29) #14
  br label %249

249:                                              ; preds = %247, %246, %18, %16
  %250 = phi i32 [ -14, %246 ], [ 0, %247 ], [ -22, %16 ], [ -12, %18 ]
  ret i32 %250
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_sched_scan_stop(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.98) #17
  %8 = tail call i32 @mwifiex_stop_bg_scan(ptr noundef %6) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_set_rekey_data(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 47
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2097152
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = tail call i32 @mwifiex_send_cmd(ptr noundef %6, i16 noundef zeroext 271, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %2, i1 noundef zeroext true) #14
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i32 [ %13, %12 ], [ -95, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_tdls_mgmt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i16 noundef zeroext %5, i32 noundef %6, i1 noundef zeroext %7, ptr noundef %8, i32 noundef %9) #1 {
  %11 = getelementptr i8, ptr %1, i32 1408
  %12 = load i32, ptr %11, align 4
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 11
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 32768
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.mwifiex_private, ptr %13, i32 0, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %13, i32 0, i32 8
  %24 = load i8, ptr %23, align 8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %50, label %26

26:                                               ; preds = %22
  switch i8 %3, label %48 [
    i8 0, label %27
    i8 1, label %31
    i8 2, label %35
    i8 3, label %39
    i8 10, label %42
    i8 14, label %45
  ]

27:                                               ; preds = %26
  %28 = load ptr, ptr %13, align 8
  %29 = zext i16 %5 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.99, ptr noundef %2, i32 noundef %29) #14
  tail call void @mwifiex_add_auto_tdls_peer(ptr noundef %13, ptr noundef %2) #14
  %30 = tail call i32 @mwifiex_send_tdls_data_frame(ptr noundef %13, ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %8, i32 noundef %9) #14
  br label %50

31:                                               ; preds = %26
  tail call void @mwifiex_add_auto_tdls_peer(ptr noundef %13, ptr noundef %2) #14
  %32 = load ptr, ptr %13, align 8
  %33 = zext i16 %5 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %32, i32 noundef 1, ptr noundef nonnull @.str.100, ptr noundef %2, i32 noundef %33) #14
  %34 = tail call i32 @mwifiex_send_tdls_data_frame(ptr noundef %13, ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %8, i32 noundef %9) #14
  br label %50

35:                                               ; preds = %26
  %36 = load ptr, ptr %13, align 8
  %37 = zext i16 %5 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %36, i32 noundef 1, ptr noundef nonnull @.str.101, ptr noundef %2, i32 noundef %37) #14
  %38 = tail call i32 @mwifiex_send_tdls_data_frame(ptr noundef %13, ptr noundef %2, i8 noundef zeroext 2, i8 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %8, i32 noundef %9) #14
  br label %50

39:                                               ; preds = %26
  %40 = load ptr, ptr %13, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %40, i32 noundef 1, ptr noundef nonnull @.str.102, ptr noundef %2) #14
  %41 = tail call i32 @mwifiex_send_tdls_data_frame(ptr noundef %13, ptr noundef %2, i8 noundef zeroext 3, i8 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %8, i32 noundef %9) #14
  br label %50

42:                                               ; preds = %26
  %43 = load ptr, ptr %13, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %43, i32 noundef 1, ptr noundef nonnull @.str.103, ptr noundef %2) #14
  %44 = tail call i32 @mwifiex_send_tdls_data_frame(ptr noundef %13, ptr noundef %2, i8 noundef zeroext 10, i8 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %8, i32 noundef %9) #14
  br label %50

45:                                               ; preds = %26
  %46 = load ptr, ptr %13, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %46, i32 noundef 1, ptr noundef nonnull @.str.104, ptr noundef %2) #14
  %47 = tail call i32 @mwifiex_send_tdls_action_frame(ptr noundef %13, ptr noundef %2, i8 noundef zeroext 14, i8 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %8, i32 noundef %9) #14
  br label %50

48:                                               ; preds = %26
  %49 = load ptr, ptr %13, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %49, i32 noundef 4, ptr noundef nonnull @.str.105, ptr noundef %2) #14
  br label %50

50:                                               ; preds = %48, %45, %42, %39, %35, %31, %27, %22, %18, %10
  %51 = phi i32 [ -95, %10 ], [ -95, %22 ], [ -95, %18 ], [ -22, %48 ], [ %47, %45 ], [ %44, %42 ], [ %41, %39 ], [ %38, %35 ], [ %34, %31 ], [ %30, %27 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_tdls_oper(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr i8, ptr %1, i32 1408
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 98304
  %11 = icmp eq i32 %10, 98304
  br i1 %11, label %12, label %34

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 8
  %18 = load i8, ptr %17, align 8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %7, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %21, i32 noundef 1, ptr noundef nonnull @.str.106, ptr noundef %2, i32 noundef %3) #14
  switch i32 %3, label %29 [
    i32 3, label %31
    i32 4, label %22
    i32 2, label %23
    i32 1, label %25
    i32 0, label %27
  ]

22:                                               ; preds = %20
  br label %31

23:                                               ; preds = %20
  %24 = load ptr, ptr %7, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %24, i32 noundef 4, ptr noundef nonnull @.str.107) #14
  br label %34

25:                                               ; preds = %20
  %26 = load ptr, ptr %7, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %26, i32 noundef 4, ptr noundef nonnull @.str.108) #14
  br label %34

27:                                               ; preds = %20
  %28 = load ptr, ptr %7, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %28, i32 noundef 4, ptr noundef nonnull @.str.109) #14
  br label %34

29:                                               ; preds = %20
  %30 = load ptr, ptr %7, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %30, i32 noundef 4, ptr noundef nonnull @.str.110) #14
  br label %34

31:                                               ; preds = %22, %20
  %32 = phi i8 [ 0, %22 ], [ 1, %20 ]
  %33 = tail call i32 @mwifiex_tdls_oper(ptr noundef %7, ptr noundef %2, i8 noundef zeroext %32) #14
  br label %34

34:                                               ; preds = %31, %29, %27, %25, %23, %16, %12, %4
  %35 = phi i32 [ -95, %29 ], [ -22, %27 ], [ -22, %25 ], [ -22, %23 ], [ %33, %31 ], [ -95, %4 ], [ -95, %16 ], [ -95, %12 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_get_channel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = alloca %struct.mwifiex_channel_band, align 2
  %5 = getelementptr inbounds %struct.wireless_dev, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 1408
  %8 = load i32, ptr %7, align 4
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %9, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.mwifiex_private, ptr %9, i32 0, i32 139
  %16 = tail call zeroext i1 @cfg80211_chandef_valid(ptr noundef %15) #14
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %2, ptr noundef align 8 dereferenceable(28) %15, i32 28, i1 false)
  br label %66

18:                                               ; preds = %14, %3
  %19 = getelementptr inbounds %struct.mwifiex_private, ptr %9, i32 0, i32 8
  %20 = load i8, ptr %19, align 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %66, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %9, i32 0, i32 50, i32 3
  %24 = load i8, ptr %23, align 2
  %25 = tail call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %24) #14
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.mwifiex_private, ptr %9, i32 0, i32 50, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %28, i32 noundef %26) #14
  %30 = urem i32 %29, 1000
  %31 = sub i32 %29, %30
  %32 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %0, i32 noundef %31) #14
  %33 = getelementptr inbounds %struct.mwifiex_private, ptr %9, i32 0, i32 163
  %34 = load i8, ptr %33, align 1, !range !11
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %65, label %36

36:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #14
  store i16 0, ptr %4, align 2, !annotation !8
  %37 = call i32 @mwifiex_get_chan_info(ptr noundef %9, ptr noundef nonnull %4) #14
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load i8, ptr %4, align 2
  %41 = lshr i8 %40, 2
  %42 = and i8 %41, 3
  %43 = zext i8 %42 to i32
  switch i32 %43, label %63 [
    i32 0, label %44
    i32 2, label %59
  ]

44:                                               ; preds = %39
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds %struct.mwifiex_adapter, ptr %45, i32 0, i32 84
  %47 = load i8, ptr %46, align 2
  %48 = and i8 %47, 24
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.mwifiex_private, ptr %9, i32 0, i32 50, i32 0, i32 24
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.mwifiex_private, ptr %9, i32 0, i32 50, i32 0, i32 22
  %56 = load i8, ptr %55, align 4
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54, %50, %44
  br label %63

59:                                               ; preds = %39
  %60 = and i8 %40, 48
  %61 = icmp eq i8 %60, 16
  %62 = select i1 %61, i32 3, i32 2
  br label %63

63:                                               ; preds = %59, %58, %54, %39, %36
  %64 = phi i32 [ 0, %58 ], [ 1, %54 ], [ %62, %59 ], [ 1, %39 ], [ 1, %36 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #14
  call void @cfg80211_chandef_create(ptr noundef %2, ptr noundef %32, i32 noundef %64) #14
  br label %66

65:                                               ; preds = %22
  tail call void @cfg80211_chandef_create(ptr noundef %2, ptr noundef %32, i32 noundef 0) #14
  br label %66

66:                                               ; preds = %65, %63, %18, %17
  %67 = phi i32 [ 0, %17 ], [ -61, %18 ], [ 0, %65 ], [ 0, %63 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_start_radar_detection(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca %struct.mwifiex_radar_params, align 8
  %6 = getelementptr i8, ptr %1, i32 1408
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 73
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 4, ptr noundef nonnull @.str.111) #14
  br label %36

14:                                               ; preds = %4
  %15 = tail call i32 @mwifiex_is_11h_active(ptr noundef %8) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load ptr, ptr %8, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %18, i32 noundef 1073741824, ptr noundef nonnull @.str.112) #14
  %19 = tail call i32 @mwifiex_11h_activate(ptr noundef %8, i1 noundef zeroext true) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %8, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %22, i32 noundef 4, ptr noundef nonnull @.str.113) #14
  br label %36

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 157, i32 1
  store i8 1, ptr %24, align 1
  br label %25

25:                                               ; preds = %23, %14
  store ptr %2, ptr %5, align 8
  %26 = getelementptr inbounds %struct.mwifiex_radar_params, ptr %5, i32 0, i32 1
  store i32 %3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 150
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %27, ptr noundef align 4 dereferenceable(28) %2, i32 28, i1 false)
  %28 = call i32 @mwifiex_send_cmd(ptr noundef %8, i16 noundef zeroext 221, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %5, i1 noundef zeroext true) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 151
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 152
  %34 = call i32 @__msecs_to_jiffies(i32 noundef %3) #14
  %35 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %32, ptr noundef %33, i32 noundef %34) #14
  br label %36

36:                                               ; preds = %30, %25, %21, %13
  %37 = phi i32 [ -16, %13 ], [ 0, %30 ], [ -1, %21 ], [ -1, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_set_coalesce(ptr noundef readonly %0, ptr noundef readonly %1) #1 {
  %3 = alloca [5 x i8], align 4
  %4 = alloca %struct.mwifiex_ds_coalesce_cfg, align 2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/cfg80211.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 85
  %9 = load i32, ptr %8, align 4
  %10 = inttoptr i32 %9 to ptr
  call void @llvm.lifetime.start.p0(i64 290, ptr nonnull %4) #14
  %11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %10, i32 0, i32 5
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %25, %7
  %16 = phi i32 [ %26, %25 ], [ 0, %7 ]
  %17 = getelementptr %struct.mwifiex_adapter, ptr %10, i32 0, i32 4, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.mwifiex_private, ptr %18, i32 0, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %15
  %26 = add nuw nsw i32 %16, 1
  %27 = icmp eq i32 %26, %13
  br i1 %27, label %28, label %15

28:                                               ; preds = %25, %20, %7
  %29 = phi ptr [ null, %7 ], [ %18, %20 ], [ null, %25 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(290) %4, i8 0, i32 290, i1 false)
  %30 = icmp eq ptr %1, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 536870912, ptr noundef nonnull @.str.114) #14
  %32 = call i32 @mwifiex_send_cmd(ptr noundef %29, i16 noundef zeroext 266, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %4, i1 noundef zeroext true) #14
  br label %331

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.cfg80211_coalesce, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = trunc i32 %35 to i16
  store i16 %36, ptr %4, align 2
  %37 = icmp sgt i32 %35, 0
  br i1 %37, label %38, label %329

38:                                               ; preds = %33
  %39 = getelementptr inbounds i8, ptr %3, i32 4
  br label %40

40:                                               ; preds = %325, %38
  %41 = phi i32 [ 0, %38 ], [ %326, %325 ]
  %42 = load ptr, ptr %1, align 4
  %43 = getelementptr %struct.cfg80211_coalesce_rules, ptr %42, i32 %41
  %44 = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %4, i32 0, i32 1, i32 %41
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #14
  %45 = load i32, ptr %43, align 4
  %46 = trunc i32 %45 to i16
  store i16 %46, ptr %44, align 2
  %47 = getelementptr %struct.cfg80211_coalesce_rules, ptr %42, i32 %41, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %317

50:                                               ; preds = %40
  %51 = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %4, i32 0, i32 1, i32 %41, i32 3
  %52 = getelementptr %struct.cfg80211_coalesce_rules, ptr %42, i32 %41, i32 2
  %53 = getelementptr %struct.cfg80211_coalesce_rules, ptr %42, i32 %41, i32 1
  %54 = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %4, i32 0, i32 1, i32 %41, i32 1
  %55 = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %4, i32 0, i32 1, i32 %41, i32 2
  br label %56

56:                                               ; preds = %312, %50
  %57 = phi i32 [ 0, %50 ], [ %314, %312 ]
  %58 = phi ptr [ %51, %50 ], [ %313, %312 ]
  store i32 0, ptr %3, align 4
  %59 = load ptr, ptr %52, align 4
  %60 = getelementptr %struct.cfg80211_pkt_pattern, ptr %59, i32 %57, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 7
  %63 = icmp sgt i32 %62, 7
  br i1 %63, label %64, label %265

64:                                               ; preds = %56
  %65 = getelementptr %struct.cfg80211_pkt_pattern, ptr %59, i32 %57
  %66 = getelementptr %struct.cfg80211_pkt_pattern, ptr %59, i32 %57, i32 1
  %67 = getelementptr %struct.cfg80211_pkt_pattern, ptr %59, i32 %57, i32 3
  %68 = load ptr, ptr %65, align 4
  %69 = lshr i32 %62, 3
  br label %70

70:                                               ; preds = %239, %64
  %71 = phi i1 [ false, %64 ], [ %231, %239 ]
  %72 = phi i32 [ 0, %64 ], [ %230, %239 ]
  %73 = phi i32 [ 0, %64 ], [ %240, %239 ]
  %74 = shl i32 %73, 3
  %75 = getelementptr i8, ptr %68, i32 %73
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %248, label %242

80:                                               ; preds = %261, %256
  %81 = phi i32 [ %77, %261 ], [ %260, %256 ]
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = getelementptr i8, ptr %3, i32 %252
  %86 = load ptr, ptr %66, align 4
  %87 = or i32 %74, 1
  %88 = getelementptr i8, ptr %86, i32 %87
  %89 = load i8, ptr %88, align 1
  store i8 %89, ptr %85, align 1
  %90 = add nsw i32 %252, 1
  br i1 %253, label %321, label %91

91:                                               ; preds = %84, %80
  %92 = phi i32 [ %90, %84 ], [ %252, %80 ]
  %93 = phi i1 [ false, %84 ], [ %255, %80 ]
  %94 = icmp ne i32 %92, 0
  %95 = select i1 %94, i1 true, i1 %93
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i32, ptr %67, align 4
  %98 = add i32 %97, 1
  store i32 %98, ptr %67, align 4
  %99 = load i8, ptr %75, align 1
  %100 = zext i8 %99 to i32
  br label %103

101:                                              ; preds = %91
  %102 = icmp sgt i32 %92, 4
  br i1 %102, label %321, label %103

103:                                              ; preds = %101, %96
  %104 = phi i32 [ %81, %101 ], [ %100, %96 ]
  %105 = and i32 %104, 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  %108 = getelementptr i8, ptr %3, i32 %92
  %109 = load ptr, ptr %66, align 4
  %110 = or i32 %74, 2
  %111 = getelementptr i8, ptr %109, i32 %110
  %112 = load i8, ptr %111, align 1
  store i8 %112, ptr %108, align 1
  %113 = add nsw i32 %92, 1
  br i1 %93, label %321, label %114

114:                                              ; preds = %107, %103
  %115 = phi i32 [ %113, %107 ], [ %92, %103 ]
  %116 = phi i1 [ false, %107 ], [ %95, %103 ]
  %117 = icmp ne i32 %115, 0
  %118 = select i1 %117, i1 true, i1 %116
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load i32, ptr %67, align 4
  %121 = add i32 %120, 1
  store i32 %121, ptr %67, align 4
  %122 = load i8, ptr %75, align 1
  %123 = zext i8 %122 to i32
  br label %126

124:                                              ; preds = %114
  %125 = icmp sgt i32 %115, 4
  br i1 %125, label %321, label %126

126:                                              ; preds = %124, %119
  %127 = phi i32 [ %104, %124 ], [ %123, %119 ]
  %128 = and i32 %127, 8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %126
  %131 = getelementptr i8, ptr %3, i32 %115
  %132 = load ptr, ptr %66, align 4
  %133 = or i32 %74, 3
  %134 = getelementptr i8, ptr %132, i32 %133
  %135 = load i8, ptr %134, align 1
  store i8 %135, ptr %131, align 1
  %136 = add nsw i32 %115, 1
  br i1 %116, label %321, label %137

137:                                              ; preds = %130, %126
  %138 = phi i32 [ %136, %130 ], [ %115, %126 ]
  %139 = phi i1 [ false, %130 ], [ %118, %126 ]
  %140 = icmp ne i32 %138, 0
  %141 = select i1 %140, i1 true, i1 %139
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = load i32, ptr %67, align 4
  %144 = add i32 %143, 1
  store i32 %144, ptr %67, align 4
  %145 = load i8, ptr %75, align 1
  %146 = zext i8 %145 to i32
  br label %149

147:                                              ; preds = %137
  %148 = icmp sgt i32 %138, 4
  br i1 %148, label %321, label %149

149:                                              ; preds = %147, %142
  %150 = phi i32 [ %127, %147 ], [ %146, %142 ]
  %151 = and i32 %150, 16
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %149
  %154 = getelementptr i8, ptr %3, i32 %138
  %155 = load ptr, ptr %66, align 4
  %156 = or i32 %74, 4
  %157 = getelementptr i8, ptr %155, i32 %156
  %158 = load i8, ptr %157, align 1
  store i8 %158, ptr %154, align 1
  %159 = add nsw i32 %138, 1
  br i1 %139, label %321, label %160

160:                                              ; preds = %153, %149
  %161 = phi i32 [ %159, %153 ], [ %138, %149 ]
  %162 = phi i1 [ false, %153 ], [ %141, %149 ]
  %163 = icmp ne i32 %161, 0
  %164 = select i1 %163, i1 true, i1 %162
  br i1 %164, label %170, label %165

165:                                              ; preds = %160
  %166 = load i32, ptr %67, align 4
  %167 = add i32 %166, 1
  store i32 %167, ptr %67, align 4
  %168 = load i8, ptr %75, align 1
  %169 = zext i8 %168 to i32
  br label %172

170:                                              ; preds = %160
  %171 = icmp sgt i32 %161, 4
  br i1 %171, label %321, label %172

172:                                              ; preds = %170, %165
  %173 = phi i32 [ %150, %170 ], [ %169, %165 ]
  %174 = and i32 %173, 32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %172
  %177 = getelementptr i8, ptr %3, i32 %161
  %178 = load ptr, ptr %66, align 4
  %179 = or i32 %74, 5
  %180 = getelementptr i8, ptr %178, i32 %179
  %181 = load i8, ptr %180, align 1
  store i8 %181, ptr %177, align 1
  %182 = add nsw i32 %161, 1
  br i1 %162, label %321, label %183

183:                                              ; preds = %176, %172
  %184 = phi i32 [ %182, %176 ], [ %161, %172 ]
  %185 = phi i1 [ false, %176 ], [ %164, %172 ]
  %186 = icmp ne i32 %184, 0
  %187 = select i1 %186, i1 true, i1 %185
  br i1 %187, label %193, label %188

188:                                              ; preds = %183
  %189 = load i32, ptr %67, align 4
  %190 = add i32 %189, 1
  store i32 %190, ptr %67, align 4
  %191 = load i8, ptr %75, align 1
  %192 = zext i8 %191 to i32
  br label %195

193:                                              ; preds = %183
  %194 = icmp sgt i32 %184, 4
  br i1 %194, label %321, label %195

195:                                              ; preds = %193, %188
  %196 = phi i32 [ %173, %193 ], [ %192, %188 ]
  %197 = and i32 %196, 64
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %206, label %199

199:                                              ; preds = %195
  %200 = getelementptr i8, ptr %3, i32 %184
  %201 = load ptr, ptr %66, align 4
  %202 = or i32 %74, 6
  %203 = getelementptr i8, ptr %201, i32 %202
  %204 = load i8, ptr %203, align 1
  store i8 %204, ptr %200, align 1
  %205 = add nsw i32 %184, 1
  br i1 %185, label %321, label %206

206:                                              ; preds = %199, %195
  %207 = phi i32 [ %205, %199 ], [ %184, %195 ]
  %208 = phi i1 [ false, %199 ], [ %187, %195 ]
  %209 = icmp ne i32 %207, 0
  %210 = select i1 %209, i1 true, i1 %208
  br i1 %210, label %216, label %211

211:                                              ; preds = %206
  %212 = load i32, ptr %67, align 4
  %213 = add i32 %212, 1
  store i32 %213, ptr %67, align 4
  %214 = load i8, ptr %75, align 1
  %215 = zext i8 %214 to i32
  br label %218

216:                                              ; preds = %206
  %217 = icmp sgt i32 %207, 4
  br i1 %217, label %321, label %218

218:                                              ; preds = %216, %211
  %219 = phi i32 [ %196, %216 ], [ %215, %211 ]
  %220 = and i32 %219, 128
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %229, label %222

222:                                              ; preds = %218
  %223 = getelementptr i8, ptr %3, i32 %207
  %224 = load ptr, ptr %66, align 4
  %225 = or i32 %74, 7
  %226 = getelementptr i8, ptr %224, i32 %225
  %227 = load i8, ptr %226, align 1
  store i8 %227, ptr %223, align 1
  %228 = add nsw i32 %207, 1
  br i1 %208, label %321, label %229

229:                                              ; preds = %222, %218
  %230 = phi i32 [ %228, %222 ], [ %207, %218 ]
  %231 = phi i1 [ false, %222 ], [ %210, %218 ]
  %232 = icmp ne i32 %230, 0
  %233 = select i1 %232, i1 true, i1 %231
  br i1 %233, label %237, label %234

234:                                              ; preds = %229
  %235 = load i32, ptr %67, align 4
  %236 = add i32 %235, 1
  store i32 %236, ptr %67, align 4
  br label %239

237:                                              ; preds = %229
  %238 = icmp sgt i32 %230, 4
  br i1 %238, label %321, label %239

239:                                              ; preds = %237, %234
  %240 = add nuw nsw i32 %73, 1
  %241 = icmp eq i32 %240, %69
  br i1 %241, label %263, label %70

242:                                              ; preds = %70
  %243 = getelementptr i8, ptr %3, i32 %72
  %244 = load ptr, ptr %66, align 4
  %245 = getelementptr i8, ptr %244, i32 %74
  %246 = load i8, ptr %245, align 1
  store i8 %246, ptr %243, align 1
  %247 = add nsw i32 %72, 1
  br i1 %71, label %321, label %251

248:                                              ; preds = %70
  %249 = icmp ne i32 %72, 0
  %250 = select i1 %249, i1 true, i1 %71
  br label %251

251:                                              ; preds = %248, %242
  %252 = phi i32 [ %247, %242 ], [ %72, %248 ]
  %253 = phi i1 [ false, %242 ], [ %250, %248 ]
  %254 = icmp ne i32 %252, 0
  %255 = select i1 %254, i1 true, i1 %253
  br i1 %255, label %261, label %256

256:                                              ; preds = %251
  %257 = load i32, ptr %67, align 4
  %258 = add i32 %257, 1
  store i32 %258, ptr %67, align 4
  %259 = load i8, ptr %75, align 1
  %260 = zext i8 %259 to i32
  br label %80

261:                                              ; preds = %251
  %262 = icmp sgt i32 %252, 4
  br i1 %262, label %321, label %80

263:                                              ; preds = %239
  %264 = load ptr, ptr %52, align 4
  br label %265

265:                                              ; preds = %263, %56
  %266 = phi ptr [ %59, %56 ], [ %264, %263 ]
  %267 = phi i32 [ 0, %56 ], [ %230, %263 ]
  %268 = trunc i32 %267 to i8
  store i8 %268, ptr %39, align 4
  %269 = getelementptr %struct.cfg80211_pkt_pattern, ptr %266, i32 %57, i32 3
  %270 = load i32, ptr %269, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %296

272:                                              ; preds = %265
  %273 = load i8, ptr %3, align 4
  %274 = and i8 %273, 1
  %275 = icmp ne i8 %274, 0
  %276 = icmp eq i8 %268, 1
  %277 = select i1 %275, i1 %276, i1 false
  br i1 %277, label %291, label %278

278:                                              ; preds = %272
  %279 = load i32, ptr %3, align 4
  %280 = icmp eq i32 %279, -1
  br i1 %280, label %291, label %281

281:                                              ; preds = %278
  %282 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %3, ptr noundef nonnull dereferenceable(2) @mwifiex_get_coalesce_pkt_type.ipv4_mc_mac, i32 2) #14
  %283 = icmp eq i32 %282, 0
  %284 = icmp eq i8 %268, 2
  %285 = select i1 %283, i1 %284, i1 false
  br i1 %285, label %291, label %286

286:                                              ; preds = %281
  %287 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %3, ptr noundef nonnull dereferenceable(3) @mwifiex_get_coalesce_pkt_type.ipv6_mc_mac, i32 3) #14
  %288 = icmp eq i32 %287, 0
  %289 = icmp eq i8 %268, 3
  %290 = select i1 %288, i1 %289, i1 false
  br i1 %290, label %291, label %296

291:                                              ; preds = %286, %281, %278, %272
  %292 = phi i8 [ 3, %278 ], [ 1, %272 ], [ 2, %281 ], [ 2, %286 ]
  %293 = load i8, ptr %55, align 1
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %295, label %321

295:                                              ; preds = %291
  store i8 %292, ptr %55, align 1
  br label %312

296:                                              ; preds = %286, %265
  %297 = load i32, ptr %53, align 4
  %298 = icmp eq i32 %297, 0
  %299 = select i1 %298, i8 -128, i8 -127
  store i8 %299, ptr %58, align 2
  %300 = load i8, ptr %39, align 4
  %301 = getelementptr inbounds %struct.filt_field_param, ptr %58, i32 0, i32 1
  store i8 %300, ptr %301, align 1
  %302 = getelementptr inbounds %struct.filt_field_param, ptr %58, i32 0, i32 3
  %303 = zext i8 %300 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %302, ptr nonnull align 4 %3, i32 %303, i1 false) #14
  %304 = load ptr, ptr %52, align 4
  %305 = getelementptr %struct.cfg80211_pkt_pattern, ptr %304, i32 %57, i32 3
  %306 = load i32, ptr %305, align 4
  %307 = trunc i32 %306 to i16
  %308 = getelementptr inbounds %struct.filt_field_param, ptr %58, i32 0, i32 2
  store i16 %307, ptr %308, align 2
  %309 = getelementptr %struct.filt_field_param, ptr %58, i32 1
  %310 = load i8, ptr %54, align 2
  %311 = add i8 %310, 1
  store i8 %311, ptr %54, align 2
  br label %312

312:                                              ; preds = %296, %295
  %313 = phi ptr [ %309, %296 ], [ %58, %295 ]
  %314 = add nuw nsw i32 %57, 1
  %315 = load i32, ptr %47, align 4
  %316 = icmp slt i32 %314, %315
  br i1 %316, label %56, label %317

317:                                              ; preds = %312, %40
  %318 = getelementptr %struct.mwifiex_ds_coalesce_cfg, ptr %4, i32 0, i32 1, i32 %41, i32 2
  %319 = load i8, ptr %318, align 1
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %317, %291, %261, %242, %237, %222, %216, %199, %193, %176, %170, %153, %147, %130, %124, %107, %101, %84
  %322 = phi ptr [ @.str.26, %237 ], [ @.str.26, %222 ], [ @.str.26, %216 ], [ @.str.26, %199 ], [ @.str.26, %193 ], [ @.str.26, %176 ], [ @.str.26, %170 ], [ @.str.26, %153 ], [ @.str.26, %147 ], [ @.str.26, %130 ], [ @.str.26, %124 ], [ @.str.26, %107 ], [ @.str.26, %101 ], [ @.str.26, %84 ], [ @.str.26, %242 ], [ @.str.26, %261 ], [ @.str.116, %291 ], [ @.str.117, %317 ]
  %323 = load ptr, ptr %29, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %323, i32 noundef 4, ptr noundef nonnull %322) #14
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #14
  %324 = add nuw i32 %41, 1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.115, i32 noundef %324) #14
  br label %331

325:                                              ; preds = %317
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #14
  %326 = add nuw nsw i32 %41, 1
  %327 = load i32, ptr %34, align 4
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %40, label %329

329:                                              ; preds = %325, %33
  %330 = call i32 @mwifiex_send_cmd(ptr noundef %29, i16 noundef zeroext 266, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %4, i1 noundef zeroext true) #14
  br label %331

331:                                              ; preds = %329, %321, %31
  %332 = phi i32 [ -95, %321 ], [ %330, %329 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 290, ptr nonnull %4) #14
  ret i32 %332
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_channel_switch(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 73
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 4, ptr noundef nonnull @.str.118) #14
  br label %97

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 103, i32 36
  %14 = load i8, ptr %13, align 1, !range !11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %97

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 150
  %18 = load ptr, ptr %2, align 4
  %19 = load ptr, ptr %17, align 4
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 150, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 150, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 5
  %35 = load i16, ptr %34, align 4
  %36 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 150, i32 5
  %37 = load i16, ptr %36, align 4
  %38 = icmp eq i16 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %2, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 150, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %97, label %45

45:                                               ; preds = %39, %33, %27, %21, %16
  %46 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %2, i32 0, i32 1
  %47 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %2, i32 0, i32 1, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %2, i32 0, i32 1, i32 11
  %50 = load i32, ptr %49, align 4
  %51 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 37, ptr noundef %48, i32 noundef %50, ptr noundef null, i32 noundef 0, i32 noundef 0) #14
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load ptr, ptr %6, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %54, i32 noundef 4, ptr noundef nonnull @.str.119) #14
  br label %97

55:                                               ; preds = %45
  %56 = getelementptr %struct.ieee_types_header, ptr %51, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 15
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 6
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %63, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  tail call void @netif_carrier_off(ptr noundef %61) #14
  %67 = load ptr, ptr %60, align 4
  br label %68

68:                                               ; preds = %66, %59
  %69 = phi ptr [ %67, %66 ], [ %61, %59 ]
  %70 = load ptr, ptr %6, align 8
  tail call void @mwifiex_stop_net_dev_queue(ptr noundef %69, ptr noundef %70) #14
  br label %71

71:                                               ; preds = %68, %55
  %72 = tail call i32 @mwifiex_del_mgmt_ies(ptr noundef %6) #14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %6, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %75, i32 noundef 4, ptr noundef nonnull @.str.52) #14
  br label %76

76:                                               ; preds = %74, %71
  %77 = tail call i32 @mwifiex_set_mgmt_ies(ptr noundef %6, ptr noundef %46) #14
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %6, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %80, i32 noundef 4, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.mwifiex_cfg80211_channel_switch) #14
  br label %97

81:                                               ; preds = %76
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(28) %17, ptr noundef align 4 dereferenceable(28) %2, i32 28, i1 false)
  %82 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 156
  %83 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %2, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(72) %82, ptr noundef align 4 dereferenceable(72) %83, i32 72, i1 false)
  %84 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 154
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 155
  %87 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 138, i32 11
  %88 = load i16, ptr %87, align 4
  %89 = zext i16 %88 to i32
  %90 = getelementptr %struct.ieee_types_header, ptr %51, i32 2
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = mul nuw nsw i32 %89, %92
  %94 = tail call i32 @llvm.umax.i32(i32 %93, i32 100)
  %95 = tail call i32 @__msecs_to_jiffies(i32 noundef %94) #14
  %96 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %85, ptr noundef %86, i32 noundef %95) #14
  br label %97

97:                                               ; preds = %81, %79, %53, %39, %12, %11
  %98 = phi i32 [ -16, %11 ], [ -14, %79 ], [ 0, %81 ], [ -22, %53 ], [ -16, %12 ], [ -22, %39 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_cfg80211_tdls_chan_switch(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, ptr nocapture noundef readonly %4) #1 {
  %6 = getelementptr i8, ptr %1, i32 1408
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %9) #14
  %10 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %8, ptr noundef %2) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #14
  %13 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.120, ptr noundef nonnull @__func__.mwifiex_cfg80211_tdls_chan_switch, ptr noundef %2) #17
  br label %37

14:                                               ; preds = %5
  %15 = getelementptr %struct.mwifiex_sta_node, ptr %10, i32 0, i32 10, i32 9, i32 1, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, 64
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #14
  %20 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.121, ptr noundef %2) #17
  br label %37

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %10, i32 0, i32 8
  %23 = load i8, ptr %22, align 4
  switch i8 %23, label %26 [
    i8 5, label %24
    i8 7, label %24
  ]

24:                                               ; preds = %21, %21
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #14
  %25 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.122) #17
  br label %37

26:                                               ; preds = %21
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #14
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.ieee80211_channel, ptr %27, i32 0, i32 3
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = tail call zeroext i8 @mwifiex_get_sec_chan_offset(i32 noundef %30) #14
  %32 = load ptr, ptr %4, align 4
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i8
  %35 = trunc i16 %29 to i8
  %36 = tail call i32 @mwifiex_start_tdls_cs(ptr noundef %8, ptr noundef %2, i8 noundef zeroext %35, i8 noundef zeroext %31, i8 noundef zeroext %34) #14
  br label %37

37:                                               ; preds = %26, %24, %19, %12
  %38 = phi i32 [ -114, %24 ], [ 0, %26 ], [ -2, %19 ], [ -2, %12 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mwifiex_cfg80211_tdls_cancel_chan_switch(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %7) #14
  %8 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %6, ptr noundef %2) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #14
  %11 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.120, ptr noundef nonnull @__func__.mwifiex_cfg80211_tdls_cancel_chan_switch, ptr noundef %2) #17
  br label %21

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %8, i32 0, i32 8
  %14 = load i8, ptr %13, align 4
  %15 = add i8 %14, -5
  %16 = icmp ult i8 %15, 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #14
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.wiphy, ptr %0, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.123, ptr noundef %2) #17
  br label %21

19:                                               ; preds = %12
  %20 = tail call i32 @mwifiex_stop_tdls_cs(ptr noundef %6, ptr noundef %2) #14
  br label %21

21:                                               ; preds = %19, %17, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_abort_cac(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_cancel_all_pending_cmd(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_wmm_lists_empty(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_bypass_txlist_empty(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_set_hs_params(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_wakeup_reason(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_report_wowlan_wakeup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_deauthenticate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_change_vif_to_p2p(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = getelementptr i8, ptr %0, i32 1408
  %9 = load i32, ptr %8, align 4
  %10 = inttoptr i32 %9 to ptr
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %82, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %10, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %13, i32 noundef 1073741824, ptr noundef nonnull @.str.34, ptr noundef %0) #14
  %14 = tail call fastcc i32 @mwifiex_deinit_priv_params(ptr noundef nonnull %10)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %82

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @mwifiex_init_new_priv_params(ptr noundef nonnull %10, ptr noundef %0, i32 noundef %2)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %82

19:                                               ; preds = %16
  switch i32 %1, label %32 [
    i32 0, label %20
    i32 1, label %20
    i32 2, label %20
    i32 3, label %24
    i32 8, label %28
    i32 9, label %28
  ]

20:                                               ; preds = %19, %19, %19
  %21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %13, i32 0, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = add i8 %22, -1
  store i8 %23, ptr %21, align 1
  br label %33

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.mwifiex_adapter, ptr %13, i32 0, i32 3, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = add i8 %26, -1
  store i8 %27, ptr %25, align 1
  br label %33

28:                                               ; preds = %19, %19
  %29 = getelementptr inbounds %struct.mwifiex_adapter, ptr %13, i32 0, i32 3, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = add i8 %30, -1
  store i8 %31, ptr %29, align 1
  br label %33

32:                                               ; preds = %19
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %13, i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.update_vif_type_counter, i32 noundef %1) #14
  br label %33

33:                                               ; preds = %32, %28, %24, %20
  switch i32 %2, label %49 [
    i32 0, label %34
    i32 1, label %34
    i32 2, label %34
    i32 3, label %38
    i32 8, label %45
    i32 9, label %45
  ]

34:                                               ; preds = %33, %33, %33
  %35 = getelementptr inbounds %struct.mwifiex_adapter, ptr %13, i32 0, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = add i8 %36, 1
  store i8 %37, ptr %35, align 1
  br label %50

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.mwifiex_adapter, ptr %13, i32 0, i32 3, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = add i8 %40, 1
  store i8 %41, ptr %39, align 1
  %42 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.wireless_dev, ptr %43, i32 0, i32 1
  store i32 3, ptr %44, align 4
  br label %74

45:                                               ; preds = %33, %33
  %46 = getelementptr inbounds %struct.mwifiex_adapter, ptr %13, i32 0, i32 3, i32 2
  %47 = load i8, ptr %46, align 1
  %48 = add i8 %47, 1
  store i8 %48, ptr %46, align 1
  br label %50

49:                                               ; preds = %33
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %13, i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.update_vif_type_counter, i32 noundef %2) #14
  br label %50

50:                                               ; preds = %49, %45, %34
  %51 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.wireless_dev, ptr %52, i32 0, i32 1
  store i32 %2, ptr %53, align 4
  switch i32 %2, label %74 [
    i32 8, label %54
    i32 9, label %64
  ]

54:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #14
  store i16 0, ptr %6, align 2
  %55 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %10, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %6, i1 noundef zeroext true) #14
  %56 = icmp eq i32 %55, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #14
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  store i16 1, ptr %7, align 2
  %58 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %10, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %7, i1 noundef zeroext true) #14
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57, %54
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  br label %82

61:                                               ; preds = %57
  store i16 3, ptr %7, align 2
  %62 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %10, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %7, i1 noundef zeroext true) #14
  %63 = icmp eq i32 %62, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #14
  br i1 %63, label %75, label %82

64:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #14
  store i16 0, ptr %4, align 2
  %65 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %10, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %4, i1 noundef zeroext true) #14
  %66 = icmp eq i32 %65, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #14
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  store i16 1, ptr %5, align 2
  %68 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %10, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %5, i1 noundef zeroext true) #14
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67, %64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #14
  br label %82

71:                                               ; preds = %67
  store i16 2, ptr %5, align 2
  %72 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %10, i16 noundef zeroext 235, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %5, i1 noundef zeroext true) #14
  %73 = icmp eq i32 %72, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #14
  br i1 %73, label %75, label %82

74:                                               ; preds = %50, %38
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %13, i32 noundef 4, ptr noundef nonnull @.str.35, ptr noundef %0, i32 noundef %2) #14
  br label %82

75:                                               ; preds = %71, %61
  %76 = call i32 @mwifiex_send_cmd(ptr noundef nonnull %10, i16 noundef zeroext 247, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #14
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = call i32 @mwifiex_sta_init_cmd(ptr noundef nonnull %10, i8 noundef zeroext 0, i1 noundef zeroext false) #14
  %80 = icmp ne i32 %79, 0
  %81 = sext i1 %80 to i32
  br label %82

82:                                               ; preds = %78, %75, %74, %71, %70, %61, %60, %16, %12, %3
  %83 = phi i32 [ -95, %74 ], [ -1, %3 ], [ -1, %12 ], [ -1, %16 ], [ -14, %61 ], [ -14, %71 ], [ -1, %75 ], [ %81, %78 ], [ -14, %60 ], [ -14, %70 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_change_vif_to_ap(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %53, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %6, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 1073741824, ptr noundef nonnull @.str.37, ptr noundef %0) #14
  %10 = tail call fastcc i32 @mwifiex_deinit_priv_params(ptr noundef nonnull %6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @mwifiex_init_new_priv_params(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %2)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %12
  switch i32 %1, label %28 [
    i32 0, label %16
    i32 1, label %16
    i32 2, label %16
    i32 3, label %20
    i32 8, label %24
    i32 9, label %24
  ]

16:                                               ; preds = %15, %15, %15
  %17 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = add i8 %18, -1
  store i8 %19, ptr %17, align 1
  br label %29

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 3, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = add i8 %22, -1
  store i8 %23, ptr %21, align 1
  br label %29

24:                                               ; preds = %15, %15
  %25 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 3, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = add i8 %26, -1
  store i8 %27, ptr %25, align 1
  br label %29

28:                                               ; preds = %15
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.update_vif_type_counter, i32 noundef %1) #14
  br label %29

29:                                               ; preds = %28, %24, %20, %16
  switch i32 %2, label %42 [
    i32 0, label %30
    i32 1, label %30
    i32 2, label %30
    i32 3, label %34
    i32 8, label %38
    i32 9, label %38
  ]

30:                                               ; preds = %29, %29, %29
  %31 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 3
  %32 = load i8, ptr %31, align 1
  %33 = add i8 %32, 1
  store i8 %33, ptr %31, align 1
  br label %43

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 3, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = add i8 %36, 1
  store i8 %37, ptr %35, align 1
  br label %43

38:                                               ; preds = %29, %29
  %39 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 3, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = add i8 %40, 1
  store i8 %41, ptr %39, align 1
  br label %43

42:                                               ; preds = %29
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.update_vif_type_counter, i32 noundef %2) #14
  br label %43

43:                                               ; preds = %42, %38, %34, %30
  %44 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.wireless_dev, ptr %45, i32 0, i32 1
  store i32 %2, ptr %46, align 4
  %47 = tail call i32 @mwifiex_send_cmd(ptr noundef nonnull %6, i16 noundef zeroext 247, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = tail call i32 @mwifiex_sta_init_cmd(ptr noundef nonnull %6, i8 noundef zeroext 0, i1 noundef zeroext false) #14
  %51 = icmp ne i32 %50, 0
  %52 = sext i1 %51 to i32
  br label %53

53:                                               ; preds = %49, %43, %12, %8, %3
  %54 = phi i32 [ -1, %3 ], [ -1, %8 ], [ -1, %12 ], [ -1, %43 ], [ %52, %49 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_change_vif_to_sta_adhoc(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %55, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %6, align 8
  %10 = icmp eq i32 %2, 2
  %11 = select i1 %10, ptr @.str.38, ptr @.str.39
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 1073741824, ptr noundef nonnull %11, ptr noundef %0) #14
  %12 = tail call fastcc i32 @mwifiex_deinit_priv_params(ptr noundef nonnull %6)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %55

14:                                               ; preds = %8
  %15 = tail call fastcc i32 @mwifiex_init_new_priv_params(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %2)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  switch i32 %1, label %30 [
    i32 0, label %18
    i32 1, label %18
    i32 2, label %18
    i32 3, label %22
    i32 8, label %26
    i32 9, label %26
  ]

18:                                               ; preds = %17, %17, %17
  %19 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = add i8 %20, -1
  store i8 %21, ptr %19, align 1
  br label %31

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 3, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = add i8 %24, -1
  store i8 %25, ptr %23, align 1
  br label %31

26:                                               ; preds = %17, %17
  %27 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 3, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = add i8 %28, -1
  store i8 %29, ptr %27, align 1
  br label %31

30:                                               ; preds = %17
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.update_vif_type_counter, i32 noundef %1) #14
  br label %31

31:                                               ; preds = %30, %26, %22, %18
  switch i32 %2, label %44 [
    i32 0, label %32
    i32 1, label %32
    i32 2, label %32
    i32 3, label %36
    i32 8, label %40
    i32 9, label %40
  ]

32:                                               ; preds = %31, %31, %31
  %33 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 3
  %34 = load i8, ptr %33, align 1
  %35 = add i8 %34, 1
  store i8 %35, ptr %33, align 1
  br label %45

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 3, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = add i8 %38, 1
  store i8 %39, ptr %37, align 1
  br label %45

40:                                               ; preds = %31, %31
  %41 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 3, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = add i8 %42, 1
  store i8 %43, ptr %41, align 1
  br label %45

44:                                               ; preds = %31
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.update_vif_type_counter, i32 noundef %2) #14
  br label %45

45:                                               ; preds = %44, %40, %36, %32
  %46 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 70
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.wireless_dev, ptr %47, i32 0, i32 1
  store i32 %2, ptr %48, align 4
  %49 = tail call i32 @mwifiex_send_cmd(ptr noundef nonnull %6, i16 noundef zeroext 247, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #14
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = tail call i32 @mwifiex_sta_init_cmd(ptr noundef nonnull %6, i8 noundef zeroext 0, i1 noundef zeroext false) #14
  %53 = icmp ne i32 %52, 0
  %54 = sext i1 %53 to i32
  br label %55

55:                                               ; preds = %51, %45, %14, %8, %3
  %56 = phi i32 [ -1, %3 ], [ -1, %8 ], [ -1, %14 ], [ -1, %45 ], [ %54, %51 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_deinit_priv_params(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 127
  store i32 0, ptr %3, align 8
  %4 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 268, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %3, i1 noundef zeroext false) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.36) #14
  br label %31

7:                                                ; preds = %1
  %8 = tail call i32 @mwifiex_deauthenticate(ptr noundef %0, ptr noundef null) #14
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 36
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #14
  %11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 34
  store i8 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 37
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #14
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 24
  %17 = load ptr, ptr %16, align 4
  tail call void @flush_workqueue(ptr noundef %17) #14
  br label %18

18:                                               ; preds = %15, %7
  %19 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 70
  tail call void @_raw_spin_lock_bh(ptr noundef %19) #14
  %20 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 33
  store i8 1, ptr %20, align 1
  %21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 31
  %22 = load i8, ptr %21, align 1, !range !11
  %23 = icmp eq i8 %22, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %19) #14
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.mwifiex_adapter, ptr %2, i32 0, i32 26
  %26 = load ptr, ptr %25, align 4
  tail call void @flush_workqueue(ptr noundef %26) #14
  br label %27

27:                                               ; preds = %24, %18
  tail call void @mwifiex_free_priv(ptr noundef %0) #14
  %28 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103, i32 1
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  store i32 0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 5
  store i32 0, ptr %30, align 4
  br label %31

31:                                               ; preds = %27, %6
  %32 = phi i32 [ -1, %6 ], [ 0, %27 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_init_new_priv_params(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8
  %5 = tail call i32 @mwifiex_init_priv(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  store i32 %2, ptr %6, align 8
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103, i32 1
  store i32 %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  tail call void @mwifiex_init_priv_params(ptr noundef %0, ptr noundef %9) #14
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 5
  store i8 0, ptr %10, align 8
  %11 = add i32 %2, -1
  %12 = icmp ult i32 %11, 9
  br i1 %12, label %14, label %13

13:                                               ; preds = %14, %3
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.35, ptr noundef %1, i32 noundef %2) #14
  br label %32

14:                                               ; preds = %3
  %15 = trunc i32 %11 to i16
  %16 = lshr i16 391, %15
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %13, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds [9 x i8], ptr @switch.table.mwifiex_init_new_priv_params, i32 0, i32 %11
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds [9 x i8], ptr @switch.table.mwifiex_init_new_priv_params.127, i32 0, i32 %11
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  store i8 %21, ptr %24, align 1
  %25 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 1
  store i8 %23, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 36
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #14
  %28 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 34
  store i8 0, ptr %28, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #14
  %29 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 70
  tail call void @_raw_spin_lock_bh(ptr noundef %29) #14
  %30 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 33
  store i8 0, ptr %30, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %29) #14
  %31 = tail call i32 @mwifiex_set_mac_address(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false, ptr noundef null) #14
  br label %32

32:                                               ; preds = %19, %13
  %33 = phi i32 [ -95, %13 ], [ 0, %19 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_free_priv(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_init_priv(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_set_encode(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_sys_config_invalid_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_uap_set_channel(ptr noundef, ptr noundef, [7 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_uap_rates(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_set_secure_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_ht_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_vht_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_vht_width(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_11ac_ba_params(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_ba_params(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_wmm_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_is_11h_active(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_tpc_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_chandef_dfs_required(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_11h_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_config_uap_11d(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_config_start_uap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_set_mgmt_ies(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wake_up_net_dev_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_cancel_scan(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_del_mgmt_ies(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_tdls_oper(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_dump_station_info(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  store i64 10124, ptr %2, align 8
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %49, label %9

9:                                                ; preds = %3
  %10 = icmp eq ptr %1, null
  br i1 %10, label %122, label %11

11:                                               ; preds = %9
  store i64 14222, ptr %2, align 8
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %1, i32 0, i32 11
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = sub i32 %12, %15
  %17 = tail call i32 @jiffies_to_msecs(i32 noundef %16) #14
  %18 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %1, i32 0, i32 11, i32 1
  %20 = load i8, ptr %19, align 8
  %21 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 9
  store i8 %20, ptr %21, align 1
  %22 = load i8, ptr %19, align 8
  %23 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 10
  store i8 %22, ptr %23, align 2
  %24 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %1, i32 0, i32 11, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 4
  store i64 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %1, i32 0, i32 11, i32 3
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 5
  store i64 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %1, i32 0, i32 11, i32 4
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 16
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %1, i32 0, i32 11, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 17
  store i32 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %1, i32 0, i32 11, i32 6
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 19
  store i32 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 25
  %40 = load i8, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %1, i32 0, i32 11, i32 8
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 14
  tail call fastcc void @mwifiex_parse_htinfo(ptr noundef %0, i8 noundef zeroext %40, i8 noundef zeroext %42, ptr noundef %43)
  %44 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %1, i32 0, i32 11, i32 7
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i16
  %47 = mul nuw nsw i16 %46, 5
  %48 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 14, i32 2
  store i16 %47, ptr %48, align 2
  br label %122

49:                                               ; preds = %3
  %50 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 164, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #14
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %53, i32 noundef 4, ptr noundef nonnull @.str.57) #14
  br label %122

54:                                               ; preds = %49
  %55 = call i32 @mwifiex_drv_get_data_rate(ptr noundef %0, ptr noundef nonnull %4) #14
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %58, i32 noundef 4, ptr noundef nonnull @.str.58) #14
  br label %122

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 52
  %61 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 22, i16 noundef zeroext 0, i32 noundef 3, ptr noundef %60, i1 noundef zeroext true) #14
  %62 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 25
  %63 = load i8, ptr %62, align 4
  %64 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 26
  %65 = load i8, ptr %64, align 1
  %66 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 14
  call fastcc void @mwifiex_parse_htinfo(ptr noundef %0, i8 noundef zeroext %63, i8 noundef zeroext %65, ptr noundef %66)
  %67 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 43
  %68 = load i16, ptr %67, align 2
  %69 = trunc i16 %68 to i8
  %70 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 10
  store i8 %69, ptr %70, align 2
  %71 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 16
  %72 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 16, i32 2
  %73 = load i32, ptr %72, align 8
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 4
  store i64 %74, ptr %75, align 8
  %76 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 16, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 5
  store i64 %78, ptr %79, align 8
  %80 = load i32, ptr %71, align 8
  %81 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 16
  store i32 %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 16, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 17
  store i32 %83, ptr %84, align 8
  %85 = load i16, ptr %67, align 2
  %86 = trunc i16 %85 to i8
  %87 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 9
  store i8 %86, ptr %87, align 1
  %88 = load i32, ptr %4, align 4
  %89 = trunc i32 %88 to i16
  %90 = mul i16 %89, 5
  %91 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 14, i32 2
  store i16 %90, ptr %91, align 2
  %92 = load i64, ptr %2, align 8
  %93 = or i64 %92, 16384
  store i64 %93, ptr %2, align 8
  %94 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 28
  %95 = load i8, ptr %94, align 1
  %96 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 27
  %97 = load i8, ptr %96, align 2
  %98 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 15
  call fastcc void @mwifiex_parse_htinfo(ptr noundef %0, i8 noundef zeroext %95, i8 noundef zeroext %97, ptr noundef %98)
  %99 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %100 = load i32, ptr %99, align 8
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %122

102:                                              ; preds = %59
  %103 = load i64, ptr %2, align 8
  %104 = or i64 %103, 32768
  store i64 %104, ptr %2, align 8
  %105 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 21
  store i8 0, ptr %105, align 8
  %106 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 20
  %107 = load i16, ptr %106, align 8
  %108 = trunc i16 %107 to i8
  %109 = lshr i8 %108, 4
  %110 = and i8 %109, 2
  store i8 %110, ptr %105, align 8
  %111 = load i16, ptr %106, align 8
  %112 = and i16 %111, 1024
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %102
  %115 = or i8 %110, 4
  store i8 %115, ptr %105, align 8
  br label %116

116:                                              ; preds = %114, %102
  %117 = load i8, ptr %60, align 2
  %118 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 21, i32 1
  store i8 %117, ptr %118, align 1
  %119 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 7
  %120 = load i16, ptr %119, align 8
  %121 = getelementptr inbounds %struct.station_info, ptr %2, i32 0, i32 21, i32 2
  store i16 %120, ptr %121, align 2
  br label %122

122:                                              ; preds = %116, %59, %57, %52, %11, %9
  %123 = phi i32 [ 0, %11 ], [ -14, %52 ], [ -14, %57 ], [ -2, %9 ], [ 0, %116 ], [ 0, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %123
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @mwifiex_parse_htinfo(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #10 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 128
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = zext i8 %2 to i32
  %10 = and i32 %9, 1
  br i1 %8, label %45, label %11

11:                                               ; preds = %4
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.rate_info, ptr %3, i32 0, i32 1
  store i8 %1, ptr %14, align 1
  %15 = load i8, ptr %3, align 2
  %16 = or i8 %15, 1
  store i8 %16, ptr %3, align 2
  br label %17

17:                                               ; preds = %13, %11
  %18 = and i32 %9, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = and i8 %1, 15
  %22 = getelementptr inbounds %struct.rate_info, ptr %3, i32 0, i32 1
  store i8 %21, ptr %22, align 1
  %23 = load i8, ptr %3, align 2
  %24 = or i8 %23, 2
  store i8 %24, ptr %3, align 2
  br label %25

25:                                               ; preds = %20, %17
  %26 = and i32 %9, 3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %61, label %28

28:                                               ; preds = %25
  %29 = shl nuw nsw i32 %9, 1
  %30 = and i32 %29, 24
  %31 = lshr i32 84148992, %30
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.rate_info, ptr %3, i32 0, i32 4
  store i8 %32, ptr %33, align 1
  %34 = and i32 %9, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i8, ptr %3, align 2
  %38 = or i8 %37, 4
  store i8 %38, ptr %3, align 2
  br label %39

39:                                               ; preds = %36, %28
  %40 = and i8 %1, -16
  %41 = icmp eq i8 %40, 16
  %42 = getelementptr inbounds %struct.rate_info, ptr %3, i32 0, i32 3
  br i1 %41, label %43, label %44

43:                                               ; preds = %39
  store i8 2, ptr %42, align 2
  br label %72

44:                                               ; preds = %39
  store i8 1, ptr %42, align 2
  br label %61

45:                                               ; preds = %4
  %46 = icmp ne i32 %10, 0
  %47 = icmp ult i8 %1, 16
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.rate_info, ptr %3, i32 0, i32 1
  store i8 %1, ptr %50, align 1
  %51 = load i8, ptr %3, align 2
  %52 = or i8 %51, 1
  store i8 %52, ptr %3, align 2
  %53 = getelementptr inbounds %struct.rate_info, ptr %3, i32 0, i32 4
  %54 = and i32 %9, 2
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i8 0, i8 3
  store i8 %56, ptr %53, align 1
  %57 = and i32 %9, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %49
  %60 = or i8 %51, 5
  store i8 %60, ptr %3, align 2
  br label %61

61:                                               ; preds = %59, %49, %45, %44, %25
  %62 = and i8 %2, 3
  %63 = icmp eq i8 %62, 0
  %64 = icmp ult i8 %1, 13
  %65 = and i1 %64, %63
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = zext i8 %1 to i32
  %68 = getelementptr [13 x i32], ptr @mwifiex_parse_htinfo.legacy_rates, i32 0, i32 %67
  %69 = load i32, ptr %68, align 4
  %70 = trunc i32 %69 to i16
  %71 = getelementptr inbounds %struct.rate_info, ptr %3, i32 0, i32 2
  store i16 %70, ptr %71, align 2
  br label %72

72:                                               ; preds = %66, %61, %43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_drv_get_data_rate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_stop_bg_scan(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_stopped_locked(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_scan_networks(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_cfg80211_assoc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, i1 noundef zeroext %7, ptr noundef writeonly %8) unnamed_addr #1 {
  %10 = alloca %struct.cfg80211_inform_bss, align 8
  %11 = alloca %struct.mwifiex_bss_info, align 4
  %12 = alloca [34 x i8], align 1
  %13 = alloca %struct.cfg80211_ssid, align 1
  %14 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %13) #14
  %15 = trunc i32 %1 to i8
  %16 = getelementptr inbounds %struct.cfg80211_ssid, ptr %13, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  store i8 %15, ptr %16, align 1
  %17 = icmp ugt i32 %1, 32
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %19, i32 noundef 4, ptr noundef nonnull @.str.68) #14
  br label %172

20:                                               ; preds = %9
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %13, ptr align 1 %2, i32 %1, i1 false)
  %21 = load i8, ptr %16, align 1
  %22 = icmp eq i8 %21, 0
  %23 = load i8, ptr %13, align 1
  %24 = icmp ult i8 %23, 32
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %27, i32 noundef 4, ptr noundef nonnull @.str.68) #14
  br label %172

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60
  store i8 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 1
  store i8 0, ptr %30, align 1
  %31 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 62
  store i16 0, ptr %31, align 8
  %32 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 7
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 6
  store i8 0, ptr %33, align 4
  %34 = tail call i32 @mwifiex_set_encode(ptr noundef %0, ptr noundef null, ptr noundef null, i32 noundef 0, i8 noundef zeroext 0, ptr noundef null, i32 noundef 1) #14
  %35 = icmp eq i32 %4, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #14
  store i16 1, ptr %14, align 2
  %37 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 131, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %14, i1 noundef zeroext true) #14
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %171

39:                                               ; preds = %36
  br i1 %7, label %40, label %92

40:                                               ; preds = %39
  store i32 1027077, ptr %32, align 4
  %41 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 5
  store i32 0, ptr %41, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #14
  br label %95

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %6, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 8
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i8 1, ptr %33, align 4
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i32 [ 0, %46 ], [ %44, %42 ]
  %49 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %6, i32 0, i32 11, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %6, i32 0, i32 11, i32 3
  %54 = load i32, ptr %53, align 4
  store i32 %54, ptr %32, align 4
  %55 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 5
  store i32 %48, ptr %55, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %6, i32 0, i32 11, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  store i32 %58, ptr %32, align 4
  %61 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 5
  store i32 %48, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %6, i32 0, i32 7
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %6, i32 0, i32 8
  %68 = load i32, ptr %67, align 4
  %69 = tail call i32 @mwifiex_set_gen_ie(ptr noundef %0, ptr noundef nonnull %64, i32 noundef %68) #14
  br label %70

70:                                               ; preds = %66, %62
  %71 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %6, i32 0, i32 12
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %95, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %32, align 4
  %76 = add i32 %75, -1027073
  %77 = and i32 %76, -5
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %74
  %80 = load ptr, ptr %0, align 8
  %81 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %6, i32 0, i32 13
  %82 = load i8, ptr %81, align 4
  %83 = zext i8 %82 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %80, i32 noundef 1073741824, ptr noundef nonnull @.str.69, i32 noundef %83) #14
  %84 = getelementptr inbounds %struct.cfg80211_connect_params, ptr %6, i32 0, i32 14
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i16
  store i16 %86, ptr %31, align 8
  %87 = load ptr, ptr %71, align 4
  %88 = load i8, ptr %81, align 4
  %89 = zext i8 %88 to i32
  %90 = load i8, ptr %84, align 1
  %91 = tail call i32 @mwifiex_set_encode(ptr noundef %0, ptr noundef null, ptr noundef %87, i32 noundef %89, i8 noundef zeroext %90, ptr noundef null, i32 noundef 0) #14
  br label %95

92:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #14
  br label %95

93:                                               ; preds = %101
  %94 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %94, i32 noundef 4, ptr noundef nonnull @.str.70) #14
  br label %172

95:                                               ; preds = %92, %79, %74, %70, %40
  %96 = phi i32 [ 2, %40 ], [ 2, %92 ], [ 0, %74 ], [ 0, %79 ], [ 0, %70 ]
  %97 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103
  %98 = load ptr, ptr %97, align 8
  %99 = call ptr @cfg80211_get_bss(ptr noundef %98, ptr noundef %5, ptr noundef %3, ptr noundef %2, i32 noundef %1, i32 noundef %96, i32 noundef 2) #14
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = call i32 @mwifiex_request_scan(ptr noundef %0, ptr noundef nonnull %13) #14
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %93

104:                                              ; preds = %101
  %105 = load ptr, ptr %97, align 8
  %106 = select i1 %35, i32 2, i32 0
  %107 = call ptr @cfg80211_get_bss(ptr noundef %105, ptr noundef %5, ptr noundef %3, ptr noundef %2, i32 noundef %1, i32 noundef %106, i32 noundef 2) #14
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %110, i32 noundef 1, ptr noundef nonnull @.str.71) #14
  br label %119

111:                                              ; preds = %104, %95
  %112 = phi ptr [ %99, %95 ], [ %107, %104 ]
  %113 = load ptr, ptr %0, align 8
  %114 = getelementptr inbounds %struct.cfg80211_bss, ptr %112, i32 0, i32 11
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %113, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef %114) #14
  %115 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 112
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %115, ptr noundef align 4 dereferenceable(6) %114, i32 6, i1 false)
  %116 = load ptr, ptr %0, align 8
  %117 = getelementptr inbounds %struct.mwifiex_adapter, ptr %116, i32 0, i32 10
  %118 = load ptr, ptr %117, align 4
  call void @cfg80211_ref_bss(ptr noundef %118, ptr noundef nonnull %112) #14
  br label %119

119:                                              ; preds = %111, %109
  %120 = phi ptr [ null, %109 ], [ %112, %111 ]
  %121 = call i32 @mwifiex_bss_start(ptr noundef %0, ptr noundef %120, ptr noundef nonnull %13) #14
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %164

123:                                              ; preds = %119
  br i1 %35, label %124, label %161

124:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %11) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %11, i8 0, i32 88, i1 false) #14, !annotation !8
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %12) #14
  %125 = getelementptr inbounds i8, ptr %12, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(34) %125, i8 0, i32 32, i1 false) #14, !annotation !8
  %126 = call i32 @mwifiex_get_bss_info(ptr noundef %0, ptr noundef nonnull %11) #14
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %160

128:                                              ; preds = %124
  store i8 0, ptr %12, align 1
  %129 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %11, i32 0, i32 1
  %130 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %11, i32 0, i32 1, i32 1
  %131 = load i8, ptr %130, align 4
  %132 = getelementptr inbounds [34 x i8], ptr %12, i32 0, i32 1
  store i8 %131, ptr %132, align 1
  %133 = zext i8 %131 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %125, ptr align 4 %129, i32 %133, i1 false) #14
  %134 = add nuw nsw i32 %133, 2
  %135 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 3
  %136 = load i8, ptr %135, align 2
  %137 = call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %136) #14
  %138 = zext i8 %137 to i32
  %139 = load ptr, ptr %97, align 8
  %140 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %11, i32 0, i32 2
  %141 = load i32, ptr %140, align 4
  %142 = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %141, i32 noundef %138) #14
  %143 = urem i32 %142, 1000
  %144 = sub i32 %142, %143
  %145 = call ptr @ieee80211_get_channel_khz(ptr noundef %139, i32 noundef %144) #14
  %146 = load ptr, ptr %97, align 8
  %147 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %11, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #14
  %148 = getelementptr inbounds i8, ptr %10, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(40) %148, i8 0, i64 40, i1 false) #14
  store ptr %145, ptr %10, align 8
  %149 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %10, i32 0, i32 1
  store i32 0, ptr %149, align 4
  %150 = call ptr @cfg80211_inform_bss_data(ptr noundef %146, ptr noundef nonnull %10, i32 noundef 0, ptr noundef %147, i64 noundef 0, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef nonnull %12, i32 noundef %134, i32 noundef 3264) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #14
  %151 = icmp eq ptr %150, null
  br i1 %151, label %159, label %152

152:                                              ; preds = %128
  %153 = load ptr, ptr %97, align 8
  call void @cfg80211_put_bss(ptr noundef %153, ptr noundef nonnull %150) #14
  %154 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 112
  %155 = load i32, ptr %147, align 4
  store i32 %155, ptr %154, align 4
  %156 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %11, i32 0, i32 12, i32 4
  %157 = load i16, ptr %156, align 4
  %158 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 112, i32 4
  store i16 %157, ptr %158, align 2
  br label %159

159:                                              ; preds = %152, %128
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #14
  br label %161

160:                                              ; preds = %124
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #14
  br label %164

161:                                              ; preds = %159, %123
  %162 = icmp eq ptr %8, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %161
  store ptr %120, ptr %8, align 4
  br label %172

164:                                              ; preds = %161, %160, %119
  %165 = phi i32 [ %121, %119 ], [ 0, %161 ], [ -14, %160 ]
  %166 = icmp eq ptr %120, null
  br i1 %166, label %172, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr %0, align 8
  %169 = getelementptr inbounds %struct.mwifiex_adapter, ptr %168, i32 0, i32 10
  %170 = load ptr, ptr %169, align 4
  call void @cfg80211_put_bss(ptr noundef %170, ptr noundef nonnull %120) #14
  br label %172

171:                                              ; preds = %36
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #14
  br label %172

172:                                              ; preds = %171, %167, %164, %163, %93, %26, %18
  %173 = phi i32 [ -22, %18 ], [ -22, %26 ], [ -14, %93 ], [ %37, %171 ], [ %165, %167 ], [ %165, %164 ], [ 0, %163 ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %13) #14
  ret i32 %173
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_setup_auto_tdls_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_set_gen_ie(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_request_scan(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ref_bss(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_bss_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_bss_info(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_data(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_connect_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ibss_joined(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_set_tx_power(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_remain_on_chan_cfg(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ready_on_channel(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_remain_on_channel_expired(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_clone_skb_for_tx_status(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_mgmt_tx_status(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_queue_tx_pkt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_drv_set_power(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_add_auto_tdls_peer(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_tdls_data_frame(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_tdls_action_frame(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_get_sec_chan_offset(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_start_tdls_cs(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_stop_tdls_cs(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_dnld_txpwr_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2155752553, i64 2155753041, i64 2155752590, i64 2155752646, i64 2155752680, i64 2155752704, i64 2155752745, i64 2155752766, i64 2155752794, i64 2155752828}
!11 = !{i8 0, i8 2}
!12 = !{i32 0, i32 33}
