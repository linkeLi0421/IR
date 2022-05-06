; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/txrx.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/txrx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_handle_rx_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_handle_rx_packet\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_handle_rx_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_write_data_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_write_data_complete\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_write_data_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mwifiex_802_11d_domain_reg = type { [3 x i8], i8, [83 x %struct.ieee80211_country_ie_triplet] }
%struct.ieee80211_country_ie_triplet = type { %union.anon.140 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { i8, i8, i8 }
%struct.mwifiex_sleep_params = type { i16, i16, i16, i8, i8, i16 }
%struct.mwifiex_sleep_period = type { i16, i16 }
%struct.mwifiex_hs_config_param = type <{ i32, i8, i8 }>
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mwifiex_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_wait_queue = type { %struct.wait_queue_head, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.50, i32, %struct.spinlock }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rxpd = type <{ i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, [3 x i8], i8 }>
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
%struct.ieee_types_vendor_header = type { i8, i8, %struct.anon.137 }
%struct.anon.137 = type { [3 x i8], i8 }
%struct.ieee_types_wmm_ac_parameters = type { i8, i8, i16 }
%struct.mwifiex_802_11_security = type { i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.mwifiex_wep_key = type { i32, i32, i32, [16 x i8] }
%struct.host_cmd_ds_802_11_key_material = type { i16, %struct.mwifiex_ie_type_key_param_set }
%struct.mwifiex_ie_type_key_param_set = type { i16, i16, i16, i16, i16, [50 x i8] }
%struct.host_cmd_ds_802_11_key_material_v2 = type { i16, %struct.mwifiex_ie_type_key_param_set_v2 }
%struct.mwifiex_ie_type_key_param_set_v2 = type { i16, i16, [6 x i8], i8, i8, i16, %union.anon.138 }
%union.anon.138 = type { %struct.mwifiex_wapi_param }
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
%struct.txpd = type { i8, i8, i16, i16, i16, i32, i8, i8, i8, [2 x i8], i8, [2 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.136, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.136 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.mwifiex_tx_param = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"data: priv not found. Drop RX packet\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"rx pkt:\00", align 1
@__kstrtab_mwifiex_handle_rx_packet = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_handle_rx_packet = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_handle_rx_packet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_handle_rx_packet to i32), ptr @__kstrtab_mwifiex_handle_rx_packet, ptr @__kstrtabns_mwifiex_handle_rx_packet }, section "___ksymtab_gpl+mwifiex_handle_rx_packet", align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"tx pkt:\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"data: -ENOSR is returned\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"data: -EBUSY is returned\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"mwifiex_write_data_async failed: 0x%X\0A\00", align 1
@mwifiex_1d_to_wmm_queue = external dso_local local_unnamed_addr constant [0 x i16], align 2
@.str.7 = private unnamed_addr constant [16 x i8] c"wake queue: %d\0A\00", align 1
@__kstrtab_mwifiex_write_data_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_write_data_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_write_data_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_write_data_complete to i32), ptr @__kstrtab_mwifiex_write_data_complete, ptr @__kstrtabns_mwifiex_write_data_complete }, section "___ksymtab_gpl+mwifiex_write_data_complete", align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"data: priv not found. Drop TX packet\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_mwifiex_handle_rx_packet, ptr @__ksymtab_mwifiex_write_data_complete], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_handle_rx_packet(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rxpd, ptr %10, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 15
  %14 = load i8, ptr %10, align 1
  br label %15

15:                                               ; preds = %28, %7
  %16 = phi i32 [ %29, %28 ], [ 0, %7 ]
  %17 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.mwifiex_private, ptr %18, i32 0, i32 4
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, %13
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mwifiex_private, ptr %18, i32 0, i32 1
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, %14
  br i1 %27, label %40, label %28

28:                                               ; preds = %24, %20, %15
  %29 = add nuw nsw i32 %16, 1
  %30 = icmp eq i32 %29, %5
  br i1 %30, label %31, label %15

31:                                               ; preds = %36, %28
  %32 = phi i32 [ %37, %36 ], [ 0, %28 ]
  %33 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = add nuw nsw i32 %32, 1
  %38 = icmp eq i32 %37, %5
  br i1 %38, label %39, label %31

39:                                               ; preds = %36, %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str) #5
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #5
  br label %64

40:                                               ; preds = %31, %24
  %41 = phi ptr [ %34, %31 ], [ %18, %24 ]
  %42 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 65536
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %48 = load i32, ptr %47, align 8
  %49 = tail call i32 @llvm.umin.i32(i32 %48, i32 128)
  tail call void @print_hex_dump(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %10, i32 noundef %49, i1 noundef zeroext false) #5
  br label %50

50:                                               ; preds = %46, %40
  store i64 0, ptr %8, align 4
  %51 = getelementptr inbounds %struct.mwifiex_private, ptr %41, i32 0, i32 4
  %52 = load i8, ptr %51, align 1
  %53 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store i8 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.mwifiex_private, ptr %41, i32 0, i32 1
  %55 = load i8, ptr %54, align 4
  %56 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 13
  store i8 %55, ptr %56, align 1
  %57 = getelementptr inbounds %struct.mwifiex_private, ptr %41, i32 0, i32 2
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = tail call i32 @mwifiex_process_uap_rx_packet(ptr noundef nonnull %41, ptr noundef %1) #5
  br label %64

62:                                               ; preds = %50
  %63 = tail call i32 @mwifiex_process_sta_rx_packet(ptr noundef nonnull %41, ptr noundef %1) #5
  br label %64

64:                                               ; preds = %62, %60, %39
  %65 = phi i32 [ -1, %39 ], [ %61, %60 ], [ %63, %62 ]
  ret i32 %65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_uap_rx_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_sta_rx_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_tx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 14
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 4
  %14 = tail call ptr @mwifiex_get_sta_entry(ptr noundef %0, ptr noundef %13) #5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %14, i32 0, i32 11, i32 3
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %21, %19
  store i64 %22, ptr %20, align 8
  %23 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %14, i32 0, i32 11, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  br label %26

26:                                               ; preds = %16, %12
  %27 = tail call ptr @mwifiex_process_uap_txpd(ptr noundef %0, ptr noundef %1) #5
  br label %30

28:                                               ; preds = %3
  %29 = tail call ptr @mwifiex_process_sta_txpd(ptr noundef %0, ptr noundef %1) #5
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %27, %26 ], [ %29, %28 ]
  %32 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 53
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 86
  %37 = load i8, ptr %36, align 4
  %38 = icmp ne i8 %37, 0
  %39 = icmp ne ptr %31, null
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %43, label %47

41:                                               ; preds = %30
  %42 = icmp eq ptr %31, null
  br i1 %42, label %65, label %43

43:                                               ; preds = %41, %35
  %44 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 71
  tail call void @skb_queue_tail(ptr noundef %44, ptr noundef %1) #5
  %45 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 72
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #5, !srcloc !8
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #5, !srcloc !9
  br label %105

47:                                               ; preds = %35
  %48 = icmp eq ptr %31, null
  br i1 %48, label %65, label %49

49:                                               ; preds = %47
  %50 = load i8, ptr %9, align 1
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  %53 = getelementptr i8, ptr %31, i32 %8
  %54 = select i1 %52, ptr %53, ptr null
  %55 = load i8, ptr %4, align 4
  %56 = icmp eq i8 %55, 2
  %57 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 18, i32 10
  %58 = load ptr, ptr %57, align 4
  br i1 %56, label %59, label %62

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 10
  %61 = load i8, ptr %60, align 2
  br label %62

62:                                               ; preds = %59, %49
  %63 = phi i8 [ %61, %59 ], [ 0, %49 ]
  %64 = tail call i32 %58(ptr noundef %4, i8 noundef zeroext %63, ptr noundef %1, ptr noundef %2) #5
  br label %65

65:                                               ; preds = %62, %47, %41
  %66 = phi ptr [ null, %47 ], [ null, %41 ], [ %54, %62 ]
  %67 = phi i32 [ -1, %47 ], [ -1, %41 ], [ %64, %62 ]
  %68 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 65536
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = load ptr, ptr %5, align 4
  %74 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %75 = load i32, ptr %74, align 8
  %76 = tail call i32 @llvm.umin.i32(i32 %75, i32 128)
  tail call void @print_hex_dump(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %73, i32 noundef %76, i1 noundef zeroext false) #5
  br label %77

77:                                               ; preds = %72, %65
  switch i32 %67, label %105 [
    i32 -63, label %78
    i32 -16, label %79
    i32 -1, label %98
    i32 0, label %103
  ]

78:                                               ; preds = %77
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 8, ptr noundef nonnull @.str.4) #5
  br label %105

79:                                               ; preds = %77
  %80 = load i8, ptr %9, align 1
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 104
  %85 = load i16, ptr %84, align 2
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 86
  %89 = load i8, ptr %88, align 4
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %0, align 8
  %93 = getelementptr inbounds %struct.mwifiex_adapter, ptr %92, i32 0, i32 86
  store i8 0, ptr %93, align 4
  %94 = icmp eq ptr %66, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.txpd, ptr %66, i32 0, i32 7
  store i8 0, ptr %96, align 1
  br label %97

97:                                               ; preds = %95, %91, %87, %83, %79
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.5) #5
  br label %105

98:                                               ; preds = %77
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef -1) #5
  %99 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 118, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, 1
  store i32 %101, ptr %99, align 4
  %102 = tail call i32 @mwifiex_write_data_complete(ptr noundef %4, ptr noundef %1, i32 noundef 0, i32 noundef -1)
  br label %105

103:                                              ; preds = %77
  %104 = tail call i32 @mwifiex_write_data_complete(ptr noundef %4, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  br label %105

105:                                              ; preds = %103, %98, %97, %78, %77, %43
  %106 = phi i32 [ 0, %43 ], [ %67, %77 ], [ 0, %103 ], [ -1, %98 ], [ -16, %97 ], [ -63, %78 ]
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_sta_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_process_uap_txpd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_process_sta_txpd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_write_data_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %90, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 13
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 14
  %10 = load i8, ptr %9, align 2
  %11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %89, label %15

15:                                               ; preds = %28, %6
  %16 = phi i32 [ %29, %28 ], [ 0, %6 ]
  %17 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.mwifiex_private, ptr %18, i32 0, i32 4
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, %8
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mwifiex_private, ptr %18, i32 0, i32 1
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, %10
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %20, %15
  %29 = add nuw nsw i32 %16, 1
  %30 = icmp eq i32 %29, %13
  br i1 %30, label %89, label %15

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.mwifiex_private, ptr %18, i32 0, i32 15
  %33 = load ptr, ptr %32, align 4
  tail call void @mwifiex_set_trans_start(ptr noundef %33) #5
  %34 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %35 = load i8, ptr %34, align 4
  %36 = and i8 %35, 2
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 134
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #5, !srcloc !8
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #5, !srcloc !11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %41 = load i8, ptr %34, align 4
  br label %42

42:                                               ; preds = %38, %31
  %43 = phi i8 [ %41, %38 ], [ %35, %31 ]
  %44 = and i8 %43, 32
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %89

46:                                               ; preds = %42
  %47 = icmp eq i32 %3, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.mwifiex_private, ptr %18, i32 0, i32 16, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %53 = load i32, ptr %52, align 8
  %54 = getelementptr inbounds %struct.mwifiex_private, ptr %18, i32 0, i32 16, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %53
  store i32 %56, ptr %54, align 4
  %57 = getelementptr inbounds %struct.mwifiex_private, ptr %18, i32 0, i32 13
  %58 = load i8, ptr %57, align 8
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %48
  store i8 0, ptr %57, align 8
  br label %65

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.mwifiex_private, ptr %18, i32 0, i32 16, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4
  br label %65

65:                                               ; preds = %61, %60, %48
  %66 = icmp eq i32 %2, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #5, !srcloc !8
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 1, ptr elementtype(i32) %68) #5, !srcloc !13
  %70 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 5
  %71 = load i32, ptr %70, align 8
  %72 = getelementptr [0 x i16], ptr @mwifiex_1d_to_wmm_queue, i32 0, i32 %71
  %73 = load i16, ptr %72, align 2
  %74 = zext i16 %73 to i32
  %75 = getelementptr %struct.mwifiex_private, ptr %18, i32 0, i32 78, i32 %74
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #5, !srcloc !8
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 1, ptr elementtype(i32) %75) #5, !srcloc !11
  %77 = extractvalue { i32, i32 } %76, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %78 = icmp slt i32 %77, 380
  br i1 %78, label %79, label %89

79:                                               ; preds = %67
  %80 = load ptr, ptr %32, align 4
  %81 = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 87
  %82 = load ptr, ptr %81, align 64
  %83 = getelementptr %struct.netdev_queue, ptr %82, i32 %74, i32 12
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %79
  %88 = getelementptr %struct.netdev_queue, ptr %82, i32 %74
  tail call void @netif_tx_wake_queue(ptr noundef %88) #5
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.7, i32 noundef %74) #5
  br label %89

89:                                               ; preds = %87, %79, %67, %65, %42, %28, %6
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #5
  br label %90

90:                                               ; preds = %89, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_process_tx_queue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mwifiex_tx_param, align 4
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 53
  %4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 86
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 71
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 72
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 14
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 18, i32 10
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 118, i32 2
  br label %11

11:                                               ; preds = %132, %1
  %12 = load i8, ptr %3, align 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %136

14:                                               ; preds = %11
  %15 = load i8, ptr %4, align 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %136

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  %18 = call ptr @skb_dequeue(ptr noundef %5) #5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %131, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 12
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 32
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 15
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #5, !srcloc !8
  %29 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 %28, ptr elementtype(i32) %6) #5, !srcloc !13
  br label %32

30:                                               ; preds = %20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #5, !srcloc !8
  %31 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #5, !srcloc !13
  br label %32

32:                                               ; preds = %30, %25
  %33 = load ptr, ptr %5, align 4
  %34 = icmp eq ptr %33, %5
  %35 = icmp eq ptr %33, null
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, ptr %2, align 4
  br label %42

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 5
  %40 = load i32, ptr %39, align 8
  store i32 %40, ptr %2, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %37
  %43 = call i32 @mwifiex_wmm_lists_empty(ptr noundef %0) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, ptr %2, align 4
  br label %46

46:                                               ; preds = %45, %42, %38
  %47 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 17
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 13
  %50 = load i8, ptr %49, align 1
  %51 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 14
  %52 = load i8, ptr %51, align 2
  %53 = load i8, ptr %7, align 4
  %54 = zext i8 %53 to i32
  %55 = icmp eq i8 %53, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %69, %46
  %57 = phi i32 [ %70, %69 ], [ 0, %46 ]
  %58 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %57
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.mwifiex_private, ptr %59, i32 0, i32 4
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, %50
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.mwifiex_private, ptr %59, i32 0, i32 1
  %67 = load i8, ptr %66, align 4
  %68 = icmp eq i8 %67, %52
  br i1 %68, label %75, label %69

69:                                               ; preds = %65, %61, %56
  %70 = add nuw nsw i32 %57, 1
  %71 = icmp eq i32 %70, %54
  br i1 %71, label %72, label %56

72:                                               ; preds = %69, %46
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.8) #5
  %73 = load i32, ptr %10, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %10, align 4
  br label %132

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.mwifiex_private, ptr %59, i32 0, i32 2
  %77 = load i8, ptr %76, align 1
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i8, ptr %8, align 4
  %82 = zext i8 %81 to i32
  %83 = getelementptr i8, ptr %48, i32 %82
  br label %84

84:                                               ; preds = %80, %75
  %85 = phi ptr [ %83, %80 ], [ null, %75 ]
  %86 = load i8, ptr %0, align 4
  %87 = icmp eq i8 %86, 2
  %88 = load ptr, ptr %9, align 4
  br i1 %87, label %89, label %92

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.mwifiex_private, ptr %59, i32 0, i32 10
  %91 = load i8, ptr %90, align 2
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi i8 [ %91, %89 ], [ 0, %84 ]
  %94 = call i32 %88(ptr noundef %0, i8 noundef zeroext %93, ptr noundef nonnull %18, ptr noundef nonnull %2) #5
  switch i32 %94, label %131 [
    i32 -63, label %95
    i32 -16, label %96
    i32 -1, label %127
    i32 0, label %132
  ]

95:                                               ; preds = %92
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.4) #5
  br label %131

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 12
  %98 = getelementptr inbounds %struct.mwifiex_private, ptr %59, i32 0, i32 2
  %99 = load i8, ptr %98, align 1
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 104
  %104 = load i16, ptr %103, align 2
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %102
  %107 = load i8, ptr %4, align 4
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr %59, align 8
  %111 = getelementptr inbounds %struct.mwifiex_adapter, ptr %110, i32 0, i32 86
  store i8 0, ptr %111, align 4
  %112 = icmp eq ptr %85, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.txpd, ptr %85, i32 0, i32 7
  store i8 0, ptr %114, align 1
  br label %115

115:                                              ; preds = %113, %109, %106, %102, %96
  call void @skb_queue_head(ptr noundef %5, ptr noundef nonnull %18) #5
  %116 = load i8, ptr %97, align 4
  %117 = and i8 %116, 32
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 15
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #5, !srcloc !8
  %123 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 %122, ptr elementtype(i32) %6) #5, !srcloc !9
  br label %126

124:                                              ; preds = %115
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #5, !srcloc !8
  %125 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #5, !srcloc !9
  br label %126

126:                                              ; preds = %124, %119
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.5) #5
  br label %131

127:                                              ; preds = %92
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef -1) #5
  %128 = load i32, ptr %10, align 4
  %129 = add i32 %128, 1
  store i32 %129, ptr %10, align 4
  %130 = call i32 @mwifiex_write_data_complete(ptr noundef %0, ptr noundef nonnull %18, i32 noundef 0, i32 noundef -1) #5
  br label %131

131:                                              ; preds = %127, %126, %95, %92, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %136

132:                                              ; preds = %92, %72
  %133 = call i32 @mwifiex_write_data_complete(ptr noundef %0, ptr noundef nonnull %18, i32 noundef 0, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %134 = load ptr, ptr %5, align 4
  %135 = icmp eq ptr %134, %5
  br i1 %135, label %136, label %11

136:                                              ; preds = %132, %131, %14, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_trans_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_parse_tx_status_event(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 112, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 148
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #5
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 147
  %10 = load i8, ptr %4, align 1
  %11 = zext i8 %10 to i32
  %12 = tail call ptr @idr_remove(ptr noundef %9, i32 noundef %11) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %42, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 12
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 112, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  tail call void @skb_complete_wifi_ack(ptr noundef nonnull %12, i1 noundef zeroext %22) #5
  br label %42

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 34
  %27 = getelementptr i8, ptr %25, i32 40
  %28 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = add i32 %29, -40
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %26, ptr align 1 %27, i32 %30, i1 false)
  %31 = load i32, ptr %28, align 8
  %32 = add i32 %31, -6
  store i32 %32, ptr %28, align 8
  %33 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103
  %34 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 24
  %35 = load i64, ptr %34, align 8
  %36 = load ptr, ptr %24, align 4
  %37 = getelementptr i8, ptr %36, i32 10
  %38 = add i32 %31, -16
  %39 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 112, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  tail call void @cfg80211_mgmt_tx_status(ptr noundef %33, i64 noundef %35, ptr noundef %37, i32 noundef %38, i1 noundef zeroext %41, i32 noundef 2592) #5
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %12, i32 noundef 1) #5
  br label %42

42:                                               ; preds = %23, %19, %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_complete_wifi_ack(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_mgmt_tx_status(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_wmm_lists_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!8 = !{i64 711547, i64 2148201518, i64 2148201544, i64 2148201591, i64 2148201613, i64 2148201641, i64 2148201661}
!9 = !{i64 2148212933, i64 2148212959, i64 2148212988, i64 2148213022, i64 2148213053, i64 2148213076}
!10 = !{i64 2148313612}
!11 = !{i64 2148215974, i64 2148216006, i64 2148216035, i64 2148216069, i64 2148216100, i64 2148216123}
!12 = !{i64 2148313815}
!13 = !{i64 2148215290, i64 2148215316, i64 2148215345, i64 2148215379, i64 2148215410, i64 2148215433}
