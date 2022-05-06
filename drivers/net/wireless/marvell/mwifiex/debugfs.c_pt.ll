; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mwifiex_debug_info = type { i32, i32, [8 x i32], i32, i32, i32, [2 x %struct.mwifiex_ds_tx_ba_stream_tbl], i32, [16 x %struct.mwifiex_ds_rx_reorder_tbl], i32, [8 x %struct.tdls_peer_info], i16, i32, i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, i8, i8, i8, i8, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_ds_tx_ba_stream_tbl = type { i16, [6 x i8], i8 }
%struct.mwifiex_ds_rx_reorder_tbl = type { i16, [6 x i8], i32, i32, [64 x i32] }
%struct.tdls_peer_info = type { [6 x i8] }
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
%struct.mwifiex_bss_info = type { i32, %struct.cfg80211_ssid, i32, [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
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
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.mwifiex_ds_get_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }
%struct.mwifiex_ds_hs_cfg = type { i32, i32, i32, i32 }
%struct.mwifiex_histogram_data = type { [74 x %struct.atomic_t], [256 x %struct.atomic_t], [256 x %struct.atomic_t], [256 x %struct.atomic_t], %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@mwifiex_dfs_dir = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [5 x i8] c"info\00", align 1
@mwifiex_dfs_info_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @mwifiex_info_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@mwifiex_dfs_debug_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @mwifiex_debug_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"getlog\00", align 1
@mwifiex_dfs_getlog_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @mwifiex_getlog_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"regrdwr\00", align 1
@mwifiex_dfs_regrdwr_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @mwifiex_regrdwr_read, ptr @mwifiex_regrdwr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"rdeeprom\00", align 1
@mwifiex_dfs_rdeeprom_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @mwifiex_rdeeprom_read, ptr @mwifiex_rdeeprom_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"memrw\00", align 1
@mwifiex_dfs_memrw_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @mwifiex_memrw_read, ptr @mwifiex_memrw_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"hscfg\00", align 1
@mwifiex_dfs_hscfg_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @mwifiex_hscfg_read, ptr @mwifiex_hscfg_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"histogram\00", align 1
@mwifiex_dfs_histogram_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @mwifiex_histogram_read, ptr @mwifiex_histogram_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"debug_mask\00", align 1
@mwifiex_dfs_debug_mask_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @mwifiex_debug_mask_read, ptr @mwifiex_debug_mask_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"timeshare_coex\00", align 1
@mwifiex_dfs_timeshare_coex_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @mwifiex_timeshare_coex_read, ptr @mwifiex_timeshare_coex_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@mwifiex_dfs_reset_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr null, ptr @mwifiex_reset_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"verext\00", align 1
@mwifiex_dfs_verext_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @mwifiex_verext_read, ptr @mwifiex_verext_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"mwifiex\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"driver_name = \22mwifiex\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"driver_version = %s\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"\0Averext = %s\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"\0Ainterface_name=\22%s\22\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"bss_mode=\22%d\22\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"bss_mode=\22%s\22\0A\00", align 1
@bss_modes = internal unnamed_addr constant [11 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], align 4
@.str.19 = private unnamed_addr constant [18 x i8] c"media_state=\22%s\22\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Disconnected\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"Connected\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"mac_address=\22%pM\22\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"multicast_count=\22%d\22\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"essid=\22%.*s\22\0A\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"bssid=\22%pM\22\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"channel=\22%d\22\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"country_code = \22%s\22\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"region_code=\220x%x\22\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"multicast_address[%d]=\22%pM\22\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"num_tx_bytes = %lu\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"num_rx_bytes = %lu\0A\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"num_tx_pkts = %lu\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"num_rx_pkts = %lu\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"num_tx_pkts_dropped = %lu\0A\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"num_rx_pkts_dropped = %lu\0A\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"num_tx_pkts_err = %lu\0A\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"num_rx_pkts_err = %lu\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"carrier %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"tx queue\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c" %d:%s\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"started\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"UNSPECIFIED\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"ADHOC\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"STATION\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"AP\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"AP_VLAN\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"WDS\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"MONITOR\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"MESH_POINT\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"P2P_CLIENT\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"P2P_GO\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"P2P_DEVICE\00", align 1
@info = internal global %struct.mwifiex_debug_info zeroinitializer, align 4
@.str.57 = private unnamed_addr constant [357 x i8] c"\0Amcasttxframe     %u\0Afailed           %u\0Aretry            %u\0Amultiretry       %u\0Aframedup         %u\0Artssuccess       %u\0Artsfailure       %u\0Aackfailure       %u\0Arxfrag           %u\0Amcastrxframe     %u\0Afcserror         %u\0Atxframe          %u\0Awepicverrcnt-1   %u\0Awepicverrcnt-2   %u\0Awepicverrcnt-3   %u\0Awepicverrcnt-4   %u\0Abcn_rcv_cnt   %u\0Abcn_miss_cnt   %u\0A\00", align 1
@saved_reg_type = internal unnamed_addr global i32 0, align 4
@saved_reg_value = internal unnamed_addr global i32 0, align 4
@saved_reg_offset = internal unnamed_addr global i32 0, align 4
@.str.59 = private unnamed_addr constant [14 x i8] c"%u 0x%x 0x%x\0A\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"%u %x %x\00", align 1
@saved_offset = internal unnamed_addr global i32 -1, align 4
@saved_bytes = internal unnamed_addr global i32 -1, align 4
@.str.61 = private unnamed_addr constant [7 x i8] c"%d %d \00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"0x%x 0x%x\0A\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"%c %x %x\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"%d %x %x\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"Too many arguments\0A\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"\0Atotal samples = %d\0A\00", align 1
@.str.69 = private unnamed_addr constant [144 x i8] c"rx rates (in Mbps): 0=1M   1=2M 2=5.5M  3=11M   4=6M   5=9M  6=12M\0A7=18M  8=24M  9=36M  10=48M  11=54M 12-27=MCS0-15(BW20) 28-43=MCS0-15(BW40)\0A\00", align 1
@.str.70 = private unnamed_addr constant [71 x i8] c"44-53=MCS0-9(VHT:BW20) 54-63=MCS0-9(VHT:BW40) 64-73=MCS0-9(VHT:BW80)\0A\0A\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"rx_rate[%02d] = %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"snr[%02ddB] = %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"noise_flr[%02ddBm] = %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"sig_strength[-%02ddBm] = %d\0A\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"debug mask=0x%08x\0A\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"Resetting per request\0A\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"version string: %s\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_dev_debugfs_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @mwifiex_dfs_dir, align 4
  %3 = icmp ne ptr %2, null
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %36

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @debugfs_create_dir(ptr noundef %8, ptr noundef nonnull %2) #9
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 107
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %36, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 420, ptr noundef nonnull %9, ptr noundef nonnull %0, ptr noundef nonnull @mwifiex_dfs_info_fops) #9
  %14 = load ptr, ptr %10, align 4
  %15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 420, ptr noundef %14, ptr noundef nonnull %0, ptr noundef nonnull @mwifiex_dfs_debug_fops) #9
  %16 = load ptr, ptr %10, align 4
  %17 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 420, ptr noundef %16, ptr noundef nonnull %0, ptr noundef nonnull @mwifiex_dfs_getlog_fops) #9
  %18 = load ptr, ptr %10, align 4
  %19 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 420, ptr noundef %18, ptr noundef nonnull %0, ptr noundef nonnull @mwifiex_dfs_regrdwr_fops) #9
  %20 = load ptr, ptr %10, align 4
  %21 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 420, ptr noundef %20, ptr noundef nonnull %0, ptr noundef nonnull @mwifiex_dfs_rdeeprom_fops) #9
  %22 = load ptr, ptr %10, align 4
  %23 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 420, ptr noundef %22, ptr noundef nonnull %0, ptr noundef nonnull @mwifiex_dfs_memrw_fops) #9
  %24 = load ptr, ptr %10, align 4
  %25 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 420, ptr noundef %24, ptr noundef nonnull %0, ptr noundef nonnull @mwifiex_dfs_hscfg_fops) #9
  %26 = load ptr, ptr %10, align 4
  %27 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 420, ptr noundef %26, ptr noundef nonnull %0, ptr noundef nonnull @mwifiex_dfs_histogram_fops) #9
  %28 = load ptr, ptr %10, align 4
  %29 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 420, ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @mwifiex_dfs_debug_mask_fops) #9
  %30 = load ptr, ptr %10, align 4
  %31 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 420, ptr noundef %30, ptr noundef nonnull %0, ptr noundef nonnull @mwifiex_dfs_timeshare_coex_fops) #9
  %32 = load ptr, ptr %10, align 4
  %33 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 420, ptr noundef %32, ptr noundef nonnull %0, ptr noundef nonnull @mwifiex_dfs_reset_fops) #9
  %34 = load ptr, ptr %10, align 4
  %35 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 420, ptr noundef %34, ptr noundef nonnull %0, ptr noundef nonnull @mwifiex_dfs_verext_fops) #9
  br label %36

36:                                               ; preds = %12, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_dev_debugfs_remove(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 107
  %5 = load ptr, ptr %4, align 4
  tail call void @debugfs_remove(ptr noundef %5) #9
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_debugfs_init() local_unnamed_addr #0 {
  %1 = load ptr, ptr @mwifiex_dfs_dir, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.12, ptr noundef null) #9
  store ptr %4, ptr @mwifiex_dfs_dir, align 4
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_debugfs_remove() local_unnamed_addr #0 {
  %1 = load ptr, ptr @mwifiex_dfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_info_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [64 x i8], align 1
  %6 = alloca %struct.mwifiex_bss_info, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %12 = inttoptr i32 %11 to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #9
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %164, label %14

14:                                               ; preds = %4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %6, i8 0, i32 88, i1 false)
  %15 = call i32 @mwifiex_get_bss_info(ptr noundef %8, ptr noundef nonnull %6) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %162

17:                                               ; preds = %14
  %18 = load ptr, ptr %8, align 8
  %19 = call i32 @mwifiex_drv_get_driver_version(ptr noundef %18, ptr noundef nonnull %5, i32 noundef 63) #9
  %20 = call i32 @mwifiex_get_ver_ext(ptr noundef %8, i32 noundef 0) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(25) %12, ptr noundef nonnull align 1 dereferenceable(25) @.str.13, i32 25, i1 false)
  %21 = getelementptr i8, ptr %12, i32 24
  %22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %21, ptr noundef nonnull @.str.14, ptr noundef nonnull %5)
  %23 = getelementptr i8, ptr %21, i32 %22
  %24 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 106
  %25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %23, ptr noundef nonnull @.str.15, ptr noundef %24)
  %26 = getelementptr i8, ptr %23, i32 %25
  %27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %26, ptr noundef nonnull @.str.16, ptr noundef %10)
  %28 = getelementptr i8, ptr %26, i32 %27
  %29 = load i32, ptr %6, align 4
  %30 = icmp ugt i32 %29, 10
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %28, ptr noundef nonnull @.str.17, i32 noundef %29)
  br label %37

33:                                               ; preds = %17
  %34 = getelementptr [11 x ptr], ptr @bss_modes, i32 0, i32 %29
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %28, ptr noundef nonnull @.str.18, ptr noundef %35)
  br label %37

37:                                               ; preds = %33, %31
  %38 = phi i32 [ %32, %31 ], [ %36, %33 ]
  %39 = getelementptr i8, ptr %28, i32 %38
  %40 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 8
  %41 = load i8, ptr %40, align 8
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %42, ptr @.str.20, ptr @.str.21
  %44 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %39, ptr noundef nonnull @.str.19, ptr noundef nonnull %43)
  %45 = getelementptr i8, ptr %39, i32 %44
  %46 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 72
  %47 = load ptr, ptr %46, align 32
  %48 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %45, ptr noundef nonnull @.str.22, ptr noundef %47)
  %49 = getelementptr i8, ptr %45, i32 %48
  %50 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 2
  %51 = load i8, ptr %50, align 1
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %94

54:                                               ; preds = %37
  %55 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 61
  %56 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 61, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %49, ptr noundef nonnull @.str.23, i32 noundef %57)
  %59 = getelementptr i8, ptr %49, i32 %58
  %60 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %6, i32 0, i32 1
  %61 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %6, i32 0, i32 1, i32 1
  %62 = load i8, ptr %61, align 4
  %63 = zext i8 %62 to i32
  %64 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %59, ptr noundef nonnull @.str.24, i32 noundef %63, ptr noundef %60)
  %65 = getelementptr i8, ptr %59, i32 %64
  %66 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %6, i32 0, i32 12
  %67 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %65, ptr noundef nonnull @.str.25, ptr noundef %66)
  %68 = getelementptr i8, ptr %65, i32 %67
  %69 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %6, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %68, ptr noundef nonnull @.str.26, i32 noundef %70)
  %72 = getelementptr i8, ptr %68, i32 %71
  %73 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %6, i32 0, i32 3
  %74 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %72, ptr noundef nonnull @.str.27, ptr noundef %73)
  %75 = getelementptr i8, ptr %72, i32 %74
  %76 = load ptr, ptr %8, align 8
  %77 = getelementptr inbounds %struct.mwifiex_adapter, ptr %76, i32 0, i32 74
  %78 = load i16, ptr %77, align 4
  %79 = zext i16 %78 to i32
  %80 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %75, ptr noundef nonnull @.str.28, i32 noundef %79)
  %81 = getelementptr i8, ptr %75, i32 %80
  %82 = load ptr, ptr %55, align 4
  %83 = icmp eq ptr %82, %55
  br i1 %83, label %94, label %84

84:                                               ; preds = %84, %54
  %85 = phi ptr [ %92, %84 ], [ %82, %54 ]
  %86 = phi i32 [ %88, %84 ], [ 0, %54 ]
  %87 = phi ptr [ %91, %84 ], [ %81, %54 ]
  %88 = add i32 %86, 1
  %89 = getelementptr inbounds %struct.netdev_hw_addr, ptr %85, i32 0, i32 2
  %90 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %87, ptr noundef nonnull @.str.29, i32 noundef %86, ptr noundef %89)
  %91 = getelementptr i8, ptr %87, i32 %90
  %92 = load ptr, ptr %85, align 4
  %93 = icmp eq ptr %92, %55
  br i1 %93, label %94, label %84

94:                                               ; preds = %84, %54, %37
  %95 = phi ptr [ %49, %37 ], [ %81, %54 ], [ %91, %84 ]
  %96 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 16
  %97 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 16, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %95, ptr noundef nonnull @.str.30, i32 noundef %98)
  %100 = getelementptr i8, ptr %95, i32 %99
  %101 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 16, i32 2
  %102 = load i32, ptr %101, align 8
  %103 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %100, ptr noundef nonnull @.str.31, i32 noundef %102)
  %104 = getelementptr i8, ptr %100, i32 %103
  %105 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 16, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %104, ptr noundef nonnull @.str.32, i32 noundef %106)
  %108 = getelementptr i8, ptr %104, i32 %107
  %109 = load i32, ptr %96, align 8
  %110 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %108, ptr noundef nonnull @.str.33, i32 noundef %109)
  %111 = getelementptr i8, ptr %108, i32 %110
  %112 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 16, i32 7
  %113 = load i32, ptr %112, align 4
  %114 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %111, ptr noundef nonnull @.str.34, i32 noundef %113)
  %115 = getelementptr i8, ptr %111, i32 %114
  %116 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 16, i32 6
  %117 = load i32, ptr %116, align 8
  %118 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %115, ptr noundef nonnull @.str.35, i32 noundef %117)
  %119 = getelementptr i8, ptr %115, i32 %118
  %120 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 16, i32 5
  %121 = load i32, ptr %120, align 4
  %122 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %119, ptr noundef nonnull @.str.36, i32 noundef %121)
  %123 = getelementptr i8, ptr %119, i32 %122
  %124 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 16, i32 4
  %125 = load i32, ptr %124, align 8
  %126 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %123, ptr noundef nonnull @.str.37, i32 noundef %125)
  %127 = getelementptr i8, ptr %123, i32 %126
  %128 = load ptr, ptr %9, align 4
  %129 = getelementptr inbounds %struct.net_device, ptr %128, i32 0, i32 6
  %130 = load volatile i32, ptr %129, align 4
  %131 = and i32 %130, 4
  %132 = icmp eq i32 %131, 0
  %133 = select i1 %132, ptr @.str.39, ptr @.str.40
  %134 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %127, ptr noundef nonnull @.str.38, ptr noundef nonnull %133)
  %135 = getelementptr i8, ptr %127, i32 %134
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %135, ptr noundef nonnull align 1 dereferenceable(9) @.str.41, i32 9, i1 false)
  %136 = getelementptr i8, ptr %135, i32 8
  %137 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 88
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %156, label %140

140:                                              ; preds = %94
  %141 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 87
  br label %142

142:                                              ; preds = %142, %140
  %143 = phi i32 [ 0, %140 ], [ %153, %142 ]
  %144 = phi ptr [ %136, %140 ], [ %152, %142 ]
  %145 = load ptr, ptr %141, align 64
  %146 = getelementptr %struct.netdev_queue, ptr %145, i32 %143, i32 12
  %147 = load volatile i32, ptr %146, align 4
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %149, ptr @.str.44, ptr @.str.43
  %151 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %144, ptr noundef nonnull @.str.42, i32 noundef %143, ptr noundef nonnull %150)
  %152 = getelementptr i8, ptr %144, i32 %151
  %153 = add nuw i32 %143, 1
  %154 = load i32, ptr %137, align 4
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %142, label %156

156:                                              ; preds = %142, %94
  %157 = phi ptr [ %136, %94 ], [ %152, %142 ]
  store i16 10, ptr %157, align 1
  %158 = getelementptr i8, ptr %157, i32 1
  %159 = ptrtoint ptr %158 to i32
  %160 = sub i32 %159, %11
  %161 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %12, i32 noundef %160) #9
  br label %162

162:                                              ; preds = %156, %14
  %163 = phi i32 [ %15, %14 ], [ %161, %156 ]
  call void @free_pages(i32 noundef %11, i32 noundef 0) #9
  br label %164

164:                                              ; preds = %162, %4
  %165 = phi i32 [ %163, %162 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  ret i32 %165
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_bss_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_drv_get_driver_version(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_ver_ext(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_debug_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %8 = inttoptr i32 %7 to ptr
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @mwifiex_get_debug_info(ptr noundef %6, ptr noundef nonnull @info) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = tail call i32 @mwifiex_debug_info_to_buffer(ptr noundef %6, ptr noundef nonnull %8, ptr noundef nonnull @info) #9
  %15 = getelementptr i8, ptr %8, i32 %14
  %16 = ptrtoint ptr %15 to i32
  %17 = sub i32 %16, %7
  %18 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %8, i32 noundef %17) #9
  br label %19

19:                                               ; preds = %13, %10
  %20 = phi i32 [ %11, %10 ], [ %18, %13 ]
  tail call void @free_pages(i32 noundef %7, i32 noundef 0) #9
  br label %21

21:                                               ; preds = %19, %4
  %22 = phi i32 [ %20, %19 ], [ -12, %4 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_debug_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_debug_info_to_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_getlog_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.mwifiex_ds_get_stats, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %9 = inttoptr i32 %8 to ptr
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #9
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %57, label %11

11:                                               ; preds = %4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false)
  %12 = call i32 @mwifiex_get_stats_info(ptr noundef %7, ptr noundef nonnull %5) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %55

14:                                               ; preds = %11
  %15 = load i32, ptr %5, align 4
  %16 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %5, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %5, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %5, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %5, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %5, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %5, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %5, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %5, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %5, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %5, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %5, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %5, i32 0, i32 12
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %5, i32 0, i32 12, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %5, i32 0, i32 12, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %5, i32 0, i32 12, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %5, i32 0, i32 13
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.mwifiex_ds_get_stats, ptr %5, i32 0, i32 14
  %49 = load i32, ptr %48, align 4
  %50 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.57, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49)
  %51 = getelementptr i8, ptr %9, i32 %50
  %52 = ptrtoint ptr %51 to i32
  %53 = sub i32 %52, %8
  %54 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %9, i32 noundef %53) #9
  br label %55

55:                                               ; preds = %14, %11
  %56 = phi i32 [ %12, %11 ], [ %54, %14 ]
  call void @free_pages(i32 noundef %8, i32 noundef 0) #9
  br label %57

57:                                               ; preds = %55, %4
  %58 = phi i32 [ %56, %55 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_stats_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_regrdwr_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %9 = inttoptr i32 %8 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %37, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr @saved_reg_type, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i16 48, ptr %9, align 1
  br label %35

15:                                               ; preds = %11
  %16 = load i32, ptr @saved_reg_value, align 4
  %17 = icmp eq i32 %16, -1
  %18 = load i32, ptr @saved_reg_offset, align 4
  br i1 %17, label %26, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @mwifiex_reg_write(ptr noundef %7, i32 noundef %12, i32 noundef %18, i32 noundef %16) #9
  %21 = load i32, ptr @saved_reg_type, align 4
  %22 = load i32, ptr @saved_reg_offset, align 4
  %23 = load i32, ptr @saved_reg_value, align 4
  %24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %9, i32 noundef 4096, ptr noundef nonnull @.str.59, i32 noundef %21, i32 noundef %22, i32 noundef %23)
  %25 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %9, i32 noundef %24) #9
  br label %35

26:                                               ; preds = %15
  %27 = call i32 @mwifiex_reg_read(ptr noundef %7, i32 noundef %12, i32 noundef %18, ptr noundef nonnull %5) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, ptr @saved_reg_type, align 4
  %31 = load i32, ptr @saved_reg_offset, align 4
  %32 = load i32, ptr %5, align 4
  %33 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %9, i32 noundef 4096, ptr noundef nonnull @.str.59, i32 noundef %30, i32 noundef %31, i32 noundef %32)
  %34 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %9, i32 noundef %33) #9
  br label %35

35:                                               ; preds = %29, %26, %19, %14
  %36 = phi i32 [ %25, %19 ], [ %34, %29 ], [ 0, %14 ], [ -22, %26 ]
  call void @free_pages(i32 noundef %8, i32 noundef 0) #9
  br label %37

37:                                               ; preds = %35, %4
  %38 = phi i32 [ %36, %35 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_regrdwr_write(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 -1, ptr %7, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %2, i32 4095)
  %9 = tail call ptr @memdup_user_nul(ptr noundef %1, i32 noundef %8) #9
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = ptrtoint ptr %9 to i32
  br label %24

13:                                               ; preds = %4
  %14 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %9, ptr noundef nonnull @.str.60, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %15 = load i32, ptr %5, align 4
  %16 = icmp eq i32 %15, 0
  %17 = load i32, ptr %6, align 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  store i32 %15, ptr @saved_reg_type, align 4
  store i32 %17, ptr @saved_reg_offset, align 4
  %21 = load i32, ptr %7, align 4
  store i32 %21, ptr @saved_reg_value, align 4
  br label %22

22:                                               ; preds = %20, %13
  %23 = phi i32 [ %2, %20 ], [ -22, %13 ]
  call void @kfree(ptr noundef %9) #9
  br label %24

24:                                               ; preds = %22, %11
  %25 = phi i32 [ %12, %11 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %25
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_reg_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_reg_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_rdeeprom_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [256 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %9 = inttoptr i32 %8 to ptr
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %5, i8 0, i32 256, i1 false), !annotation !8
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr @saved_offset, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i16 48, ptr %9, align 1
  br label %40

15:                                               ; preds = %11
  %16 = trunc i32 %12 to i16
  %17 = load i32, ptr @saved_bytes, align 4
  %18 = trunc i32 %17 to i16
  %19 = call i32 @mwifiex_eeprom_read(ptr noundef %7, i16 noundef zeroext %16, i16 noundef zeroext %18, ptr noundef nonnull %5) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = load i32, ptr @saved_offset, align 4
  %23 = load i32, ptr @saved_bytes, align 4
  %24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %9, i32 noundef 4096, ptr noundef nonnull @.str.61, i32 noundef %22, i32 noundef %23)
  %25 = load i32, ptr @saved_bytes, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %27, %21
  %28 = phi i32 [ %37, %27 ], [ 0, %21 ]
  %29 = phi i32 [ %36, %27 ], [ %24, %21 ]
  %30 = getelementptr i8, ptr %9, i32 %29
  %31 = sub i32 4096, %29
  %32 = getelementptr [256 x i8], ptr %5, i32 0, i32 %28
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %30, i32 noundef %31, ptr noundef nonnull @.str.62, i32 noundef %34) #9
  %36 = add i32 %35, %29
  %37 = add nuw i32 %28, 1
  %38 = load i32, ptr @saved_bytes, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %27, label %40

40:                                               ; preds = %27, %21, %14
  %41 = phi i32 [ 1, %14 ], [ %24, %21 ], [ %36, %27 ]
  %42 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %9, i32 noundef %41) #9
  br label %43

43:                                               ; preds = %40, %15
  %44 = phi i32 [ %42, %40 ], [ -22, %15 ]
  call void @free_pages(i32 noundef %8, i32 noundef 0) #9
  br label %45

45:                                               ; preds = %43, %4
  %46 = phi i32 [ %44, %43 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #9
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_rdeeprom_write(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 -1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 -1, ptr %6, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %2, i32 4095)
  %8 = tail call ptr @memdup_user_nul(ptr noundef %1, i32 noundef %7) #9
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = ptrtoint ptr %8 to i32
  br label %22

12:                                               ; preds = %4
  %13 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %8, ptr noundef nonnull @.str.63, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %14 = load i32, ptr %5, align 4
  %15 = icmp eq i32 %14, -1
  %16 = load i32, ptr %6, align 4
  %17 = icmp eq i32 %16, -1
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 %14, ptr @saved_offset, align 4
  store i32 %16, ptr @saved_bytes, align 4
  br label %20

20:                                               ; preds = %19, %12
  %21 = phi i32 [ %2, %19 ], [ -22, %12 ]
  call void @kfree(ptr noundef %8) #9
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi i32 [ %11, %10 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_eeprom_read(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_memrw_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = inttoptr i32 %7 to ptr
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 159
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 159, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %10, i32 noundef 4096, ptr noundef nonnull @.str.64, i32 noundef %12, i32 noundef %14)
  %16 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %10, i32 noundef %15) #9
  tail call void @free_pages(i32 noundef %7, i32 noundef 0) #9
  br label %17

17:                                               ; preds = %9, %4
  %18 = phi i32 [ %16, %9 ], [ -12, %4 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_memrw_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.mwifiex_ds_mem_rw, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store i64 0, ptr %6, align 8, !annotation !8
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @llvm.umin.i32(i32 %2, i32 4095)
  %10 = tail call ptr @memdup_user_nul(ptr noundef %1, i32 noundef %9) #9
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = ptrtoint ptr %10 to i32
  br label %31

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.mwifiex_ds_mem_rw, ptr %6, i32 0, i32 1
  %16 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %10, ptr noundef nonnull @.str.65, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %15)
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i8, ptr %5, align 1
  %20 = and i8 %19, -33
  switch i8 %20, label %29 [
    i8 82, label %21
    i8 87, label %22
  ]

21:                                               ; preds = %18
  store i32 0, ptr %15, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i16 [ 0, %21 ], [ 1, %18 ]
  %24 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 159
  %25 = load i64, ptr %6, align 8
  store i64 %25, ptr %24, align 4
  %26 = call i32 @mwifiex_send_cmd(ptr noundef %8, i16 noundef zeroext 134, i16 noundef zeroext %23, i32 noundef 0, ptr noundef nonnull %6, i1 noundef zeroext true) #9
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 %2, i32 -1
  br label %29

29:                                               ; preds = %22, %18, %14
  %30 = phi i32 [ -22, %14 ], [ %28, %22 ], [ -22, %18 ]
  call void @kfree(ptr noundef %10) #9
  br label %31

31:                                               ; preds = %29, %12
  %32 = phi i32 [ %13, %12 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  ret i32 %32
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_hscfg_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.mwifiex_ds_hs_cfg, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %4
  %11 = inttoptr i32 %8 to ptr
  %12 = call i32 @mwifiex_set_hs_params(ptr noundef %7, i16 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %5) #9
  %13 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %5, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %5, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %5, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %11, i32 noundef 4096, ptr noundef nonnull @.str.59, i32 noundef %14, i32 noundef %16, i32 noundef %18)
  %20 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %11, i32 noundef %19) #9
  call void @free_pages(i32 noundef %8, i32 noundef 0) #9
  br label %21

21:                                               ; preds = %10, %4
  %22 = phi i32 [ %20, %10 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_hscfg_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.mwifiex_ds_hs_cfg, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 255, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 255, ptr %8, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %2, i32 4095)
  %12 = tail call ptr @memdup_user_nul(ptr noundef %1, i32 noundef %11) #9
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = ptrtoint ptr %12 to i32
  br label %52

16:                                               ; preds = %4
  %17 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %12, ptr noundef nonnull @.str.66, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false)
  %18 = icmp sgt i32 %17, 3
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load ptr, ptr %10, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %20, i32 noundef 4, ptr noundef nonnull @.str.67) #9
  br label %50

21:                                               ; preds = %16
  %22 = icmp sgt i32 %17, 0
  %23 = icmp ne i32 %17, 3
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @mwifiex_set_hs_params(ptr noundef %10, i16 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %5) #9
  br label %29

27:                                               ; preds = %21
  %28 = icmp eq i32 %17, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %27, %25
  %30 = load i32, ptr %6, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @mwifiex_cancel_hs(ptr noundef %10, i32 noundef 0) #9
  br label %50

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %5, i32 0, i32 1
  store i32 %30, ptr %35, align 4
  %36 = icmp sgt i32 %17, 1
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, ptr %7, align 4
  %39 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %5, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = icmp eq i32 %17, 3
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, ptr %8, align 4
  %43 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %5, i32 0, i32 3
  store i32 %42, ptr %43, align 4
  br label %44

44:                                               ; preds = %41, %37, %34, %27
  store i32 0, ptr %5, align 4
  %45 = call i32 @mwifiex_set_hs_params(ptr noundef %10, i16 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %5) #9
  %46 = load ptr, ptr %10, align 8
  %47 = call i32 @mwifiex_enable_hs(ptr noundef %46) #9
  %48 = load ptr, ptr %10, align 8
  %49 = getelementptr inbounds %struct.mwifiex_adapter, ptr %48, i32 0, i32 12
  call void @_clear_bit(i32 noundef 4, ptr noundef %49) #9
  br label %50

50:                                               ; preds = %44, %32, %19
  %51 = phi i32 [ -22, %19 ], [ %2, %32 ], [ %2, %44 ]
  call void @kfree(ptr noundef %12) #9
  br label %52

52:                                               ; preds = %50, %14
  %53 = phi i32 [ %15, %14 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_set_hs_params(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cancel_hs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_enable_hs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_histogram_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %8 = inttoptr i32 %7 to ptr
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %110, label %10

10:                                               ; preds = %4
  %11 = icmp eq ptr %6, null
  br i1 %11, label %110, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 149
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %110, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mwifiex_histogram_data, ptr %14, i32 0, i32 4
  %18 = load volatile i32, ptr %17, align 4
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.68, i32 noundef %18)
  %20 = getelementptr i8, ptr %8, i32 %19
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(144) %20, ptr noundef nonnull align 1 dereferenceable(144) @.str.69, i32 144, i1 false)
  %21 = getelementptr i8, ptr %20, i32 143
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, ptr %22, i32 0, i32 47
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 8192
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(71) %21, ptr noundef nonnull align 1 dereferenceable(71) @.str.70, i32 71, i1 false)
  br label %29

28:                                               ; preds = %16
  store i16 10, ptr %21, align 1
  br label %29

29:                                               ; preds = %28, %27
  %30 = phi i32 [ 1, %28 ], [ 70, %27 ]
  %31 = getelementptr i8, ptr %21, i32 %30
  br label %32

32:                                               ; preds = %41, %29
  %33 = phi ptr [ %31, %29 ], [ %42, %41 ]
  %34 = phi i32 [ 0, %29 ], [ %43, %41 ]
  %35 = getelementptr [74 x %struct.atomic_t], ptr %14, i32 0, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %33, ptr noundef nonnull @.str.71, i32 noundef %34, i32 noundef %36)
  %40 = getelementptr i8, ptr %33, i32 %39
  br label %41

41:                                               ; preds = %38, %32
  %42 = phi ptr [ %40, %38 ], [ %33, %32 ]
  %43 = add nuw nsw i32 %34, 1
  %44 = icmp eq i32 %43, 44
  br i1 %44, label %45, label %32

45:                                               ; preds = %41
  %46 = load ptr, ptr %6, align 8
  %47 = getelementptr inbounds %struct.mwifiex_adapter, ptr %46, i32 0, i32 47
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 8192
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %60, %45
  %52 = phi ptr [ %61, %60 ], [ %42, %45 ]
  %53 = phi i32 [ %62, %60 ], [ 44, %45 ]
  %54 = getelementptr [74 x %struct.atomic_t], ptr %14, i32 0, i32 %53
  %55 = load volatile i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %52, ptr noundef nonnull @.str.71, i32 noundef %53, i32 noundef %55)
  %59 = getelementptr i8, ptr %52, i32 %58
  br label %60

60:                                               ; preds = %57, %51
  %61 = phi ptr [ %59, %57 ], [ %52, %51 ]
  %62 = add nuw nsw i32 %53, 1
  %63 = icmp eq i32 %62, 74
  br i1 %63, label %64, label %51

64:                                               ; preds = %60, %45
  %65 = phi ptr [ %42, %45 ], [ %61, %60 ]
  br label %66

66:                                               ; preds = %75, %64
  %67 = phi ptr [ %76, %75 ], [ %65, %64 ]
  %68 = phi i32 [ %77, %75 ], [ 0, %64 ]
  %69 = getelementptr %struct.mwifiex_histogram_data, ptr %14, i32 0, i32 1, i32 %68
  %70 = load volatile i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %67, ptr noundef nonnull @.str.72, i32 noundef %68, i32 noundef %70)
  %74 = getelementptr i8, ptr %67, i32 %73
  br label %75

75:                                               ; preds = %72, %66
  %76 = phi ptr [ %74, %72 ], [ %67, %66 ]
  %77 = add nuw nsw i32 %68, 1
  %78 = icmp eq i32 %77, 256
  br i1 %78, label %79, label %66

79:                                               ; preds = %89, %75
  %80 = phi ptr [ %90, %89 ], [ %76, %75 ]
  %81 = phi i32 [ %91, %89 ], [ 0, %75 ]
  %82 = getelementptr %struct.mwifiex_histogram_data, ptr %14, i32 0, i32 2, i32 %81
  %83 = load volatile i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  %86 = add nsw i32 %81, -128
  %87 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %80, ptr noundef nonnull @.str.73, i32 noundef %86, i32 noundef %83)
  %88 = getelementptr i8, ptr %80, i32 %87
  br label %89

89:                                               ; preds = %85, %79
  %90 = phi ptr [ %88, %85 ], [ %80, %79 ]
  %91 = add nuw nsw i32 %81, 1
  %92 = icmp eq i32 %91, 256
  br i1 %92, label %93, label %79

93:                                               ; preds = %102, %89
  %94 = phi ptr [ %103, %102 ], [ %90, %89 ]
  %95 = phi i32 [ %104, %102 ], [ 0, %89 ]
  %96 = getelementptr %struct.mwifiex_histogram_data, ptr %14, i32 0, i32 3, i32 %95
  %97 = load volatile i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %93
  %100 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %94, ptr noundef nonnull @.str.74, i32 noundef %95, i32 noundef %97)
  %101 = getelementptr i8, ptr %94, i32 %100
  br label %102

102:                                              ; preds = %99, %93
  %103 = phi ptr [ %101, %99 ], [ %94, %93 ]
  %104 = add nuw nsw i32 %95, 1
  %105 = icmp eq i32 %104, 256
  br i1 %105, label %106, label %93

106:                                              ; preds = %102
  %107 = ptrtoint ptr %103 to i32
  %108 = sub i32 %107, %7
  %109 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %8, i32 noundef %108) #9
  br label %110

110:                                              ; preds = %106, %12, %10, %4
  %111 = phi i32 [ %109, %106 ], [ -12, %4 ], [ -14, %12 ], [ -14, %10 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_histogram_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %6, i32 0, i32 149
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @mwifiex_hist_data_reset(ptr noundef nonnull %6) #9
  br label %13

13:                                               ; preds = %12, %8, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_hist_data_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_debug_mask_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @get_zeroed_page(i32 noundef 3264) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = inttoptr i32 %7 to ptr
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds %struct.mwifiex_adapter, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %10, i32 noundef 4096, ptr noundef nonnull @.str.75, i32 noundef %13)
  %15 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %10, i32 noundef %14) #9
  tail call void @free_pages(i32 noundef %7, i32 noundef 0) #9
  br label %16

16:                                               ; preds = %9, %4
  %17 = phi i32 [ %15, %9 ], [ -12, %4 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_debug_mask_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @llvm.umin.i32(i32 %2, i32 4095)
  %9 = tail call ptr @memdup_user_nul(ptr noundef %1, i32 noundef %8) #9
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = ptrtoint ptr %9 to i32
  br label %22

13:                                               ; preds = %4
  %14 = call i32 @_kstrtoul(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %5) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, ptr %5, align 4
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds %struct.mwifiex_adapter, ptr %18, i32 0, i32 1
  store i32 %17, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i32 [ %2, %16 ], [ -22, %13 ]
  call void @kfree(ptr noundef %9) #9
  br label %22

22:                                               ; preds = %20, %11
  %23 = phi i32 [ %12, %11 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_timeshare_coex_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [3 x i8], align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1, !annotation !8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 138
  %11 = load i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 15
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = call i32 @mwifiex_send_cmd(ptr noundef %8, i16 noundef zeroext 224, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %6, i1 noundef zeroext true) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i8, ptr %6, align 1, !range !9
  %18 = zext i8 %17 to i32
  %19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.76, i32 noundef %18)
  %20 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %19) #9
  br label %21

21:                                               ; preds = %16, %13, %4
  %22 = phi i32 [ %20, %16 ], [ -95, %4 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #9
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_timeshare_coex_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 138
  %11 = load i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 15
  br i1 %12, label %13, label %38

13:                                               ; preds = %4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false)
  %14 = tail call i32 @llvm.umin.i32(i32 %2, i32 15)
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %14, i32 -1090519040) #10, !srcloc !10
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25, !prof !11

18:                                               ; preds = %13
  %19 = tail call ptr @llvm.thread.pointer() #9
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #11, !srcloc !12
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #9, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  %24 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %14) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #9, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  br label %25

25:                                               ; preds = %18, %13
  %26 = phi i32 [ %24, %18 ], [ %14, %13 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28, !prof !11

28:                                               ; preds = %25
  %29 = sub i32 %14, %26
  %30 = getelementptr i8, ptr %6, i32 %29
  call void @llvm.memset.p0.i32(ptr align 1 %30, i8 0, i32 %26, i1 false) #9
  br label %38

31:                                               ; preds = %25
  %32 = call i32 @kstrtobool(ptr noundef nonnull %6, ptr noundef nonnull %5) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = call i32 @mwifiex_send_cmd(ptr noundef %8, i16 noundef zeroext 224, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %5, i1 noundef zeroext true) #9
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 %2, i32 %35
  br label %38

38:                                               ; preds = %34, %31, %28, %4
  %39 = phi i32 [ -95, %4 ], [ -22, %31 ], [ %37, %34 ], [ -14, %28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_reset_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  %9 = call i32 @kstrtobool_from_user(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = load i8, ptr %5, align 1, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.mwifiex_adapter, ptr %8, i32 0, i32 18, i32 19
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.mwifiex_adapter, ptr %8, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.79) #12
  %21 = load ptr, ptr %15, align 4
  call void %21(ptr noundef %8) #9
  br label %22

22:                                               ; preds = %18, %14, %11, %4
  %23 = phi i32 [ %9, %4 ], [ -22, %11 ], [ %2, %18 ], [ %2, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_verext_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [256 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %5, i8 0, i32 256, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 105
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @mwifiex_get_ver_ext(ptr noundef %7, i32 noundef %9) #9
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %7, i32 0, i32 106
  %12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 256, ptr noundef nonnull @.str.80, ptr noundef %11)
  %13 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %12) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #9
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_verext_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %9 = tail call i32 @llvm.umin.i32(i32 %2, i32 15)
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %9, i32 -1090519040) #10, !srcloc !10
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br i1 %12, label %13, label %20, !prof !11

13:                                               ; preds = %4
  %14 = tail call ptr @llvm.thread.pointer() #9
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #11, !srcloc !12
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #9, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  %19 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %9) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #9, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  br label %20

20:                                               ; preds = %13, %4
  %21 = phi i32 [ %19, %13 ], [ %9, %4 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !11

23:                                               ; preds = %20
  %24 = sub i32 %9, %21
  %25 = getelementptr i8, ptr %6, i32 %24
  call void @llvm.memset.p0.i32(ptr align 1 %25, i8 0, i32 %21, i1 false) #9
  br label %32

26:                                               ; preds = %20
  %27 = call i32 @kstrtouint(ptr noundef nonnull %6, i32 noundef 10, ptr noundef nonnull %5) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, ptr %5, align 4
  %31 = getelementptr inbounds %struct.mwifiex_private, ptr %8, i32 0, i32 105
  store i32 %30, ptr %31, align 8
  br label %32

32:                                               ; preds = %29, %26, %23
  %33 = phi i32 [ %2, %29 ], [ %27, %26 ], [ -14, %23 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }
attributes #12 = { cold nounwind }

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
!10 = !{i64 2150997390, i64 2150997415}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 3493502}
!13 = !{i64 3493699}
!14 = !{i64 2150978978}
