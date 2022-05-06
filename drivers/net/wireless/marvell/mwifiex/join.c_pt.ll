; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/join.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/join.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_deauthenticate_all:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_deauthenticate_all\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_deauthenticate_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ie_types_phy_param_set = type <{ %struct.mwifiex_ie_types_header, %union.anon.151 }>
%union.anon.151 = type { [1 x %struct.mwifiex_fh_param_set] }
%struct.mwifiex_fh_param_set = type <{ i16, i8, i8, i8 }>
%struct.mwifiex_ie_types_rates_param_set = type <{ %struct.mwifiex_ie_types_header, [1 x i8] }>
%struct.mwifiex_ie_types_auth_type = type { %struct.mwifiex_ie_types_header, i16 }
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
%struct.mwifiex_ie_types_rsn_param_set = type <{ %struct.mwifiex_ie_types_header, [1 x i8] }>
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
%struct.cmd_ctrl_node = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.mwifiex_ie_types_htcap = type { %struct.mwifiex_ie_types_header, %struct.ieee80211_ht_cap }
%struct.host_cmd_ds_802_11_ad_hoc_start_result = type { [3 x i8], [6 x i8], [2 x i8], i8 }

@.str = private unnamed_addr constant [34 x i8] c"info: ASSOC_CMD: rates size = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"info: Assoc: TLV Chan = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"info: Assoc: TLV Band = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"info: ASSOC_CMD: tmp_cap=%4X CAPINFO_MASK=%4lX\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"ASSOC_RESP: failed, association terminated by host\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"invalid AID value 0x%x; bits 15:14 not set\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"ASSOC_RESP: failed,\09status code=%d err=%#x a_id=%#x\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"assoc failure: reason %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"ASSOC_RESP: AUTH timeout\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"ASSOC_RESP: UNSPECIFIED failure\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"info: ASSOC_RESP: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"info: ASSOC_RESP: curr_pkt_filter is %#x\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"info: post association, re-enabling data flow\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"info: ASSOC_RESP: associated\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"info: ADHOC_S_CMD: SSID = %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"ADHOC_S_CMD: adhoc_channel cannot be 0\0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"info: ADHOC_S_CMD: creating ADHOC on channel %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"info: ADHOC_S_CMD: wep_status set privacy to WEP\0A\00", align 1
@.str.18 = private unnamed_addr constant [70 x i8] c"info: ADHOC_S_CMD: wep_status NOT set,\09setting privacy to ACCEPT ALL\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"ADHOC_S_CMD: G Protection config failed\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"info: ADHOC_S_CMD: rates=%4ph\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"info: ADHOC_S_CMD: AD-HOC Start command is ready\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"info: ADHOC_S_CMD: TLV Chan = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"info: ADHOC_S_CMD: TLV Band = %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"ADHOC_J_CMD: G Protection config failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"info: ADHOC_J_CMD: tmp_cap=%4X CAPINFO_MASK=%4lX\0A\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"info: ADHOC_J_CMD: BSSID=%pM, SSID='%s'\0A\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"info: ADHOC_J_CMD: TLV Chan=%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"info: ADHOC_J_CMD: TLV Band=%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [52 x i8] c"ADHOC_RESP: failed, association terminated by host\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"ADHOC_RESP: failed\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"info: ADHOC_S_RESP %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"info: ADHOC_J_RESP %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"info: ADHOC_RESP: channel = %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"info: ADHOC_RESP: BSSID = %pM\0A\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"info: Adhoc Channel = %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"info: curr_bss_params.channel = %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"info: curr_bss_params.band = %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"info: adhoc join: curr_bss ssid =%s\0A\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"info: adhoc join: curr_bss ssid_len =%u\0A\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"info: adhoc join: ssid =%s\0A\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"info: adhoc join: ssid_len =%u\0A\00", align 1
@.str.42 = private unnamed_addr constant [86 x i8] c"info: ADHOC_J_CMD: new ad-hoc SSID\09is the same as current; not attempting to re-join\0A\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"info: curr_bss_params.band = %c\0A\00", align 1
@__kstrtab_mwifiex_deauthenticate_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_deauthenticate_all = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_deauthenticate_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_deauthenticate_all to i32), ptr @__kstrtab_mwifiex_deauthenticate_all, ptr @__kstrtabns_mwifiex_deauthenticate_all }, section "___ksymtab_gpl+mwifiex_deauthenticate_all", align 4
@.str.44 = private unnamed_addr constant [29 x i8] c"%s: cannot get common rates\0A\00", align 1
@__func__.mwifiex_setup_rates_from_bssdesc = private unnamed_addr constant [33 x i8] c"mwifiex_setup_rates_from_bssdesc\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"failed to alloc tmp buf\0A\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"info: Tx data rate set to %#x\0A\00", align 1
@.str.47 = private unnamed_addr constant [71 x i8] c"previously set fixed data rate %#x\09is not compatible with the network\0A\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"cmd: append wapi ie %d to %p\0A\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"cmd: append wps ie %d to %p\0A\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"info: %s: append generic ie len %d to %p\0A\00", align 1
@__func__.mwifiex_cmd_append_generic_ie = private unnamed_addr constant [30 x i8] c"mwifiex_cmd_append_generic_ie\00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c"info: %s: TSF offset calc: %016llx - %016llx\0A\00", align 1
@__func__.mwifiex_cmd_append_tsf_tlv = private unnamed_addr constant [27 x i8] c"mwifiex_cmd_append_tsf_tlv\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"CONNECT_ERR_AUTH_ERR_STA_FAILURE\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"CONNECT_ERR_AUTH_MSG_UNHANDLED\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"CONNECT_ERR_ASSOC_ERR_TIMEOUT\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"CONNECT_ERR_ASSOC_ERR_AUTH_REFUSED\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"CONNECT_ERR_STA_FAILURE\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"Unknown connect failure\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_mwifiex_deauthenticate_all], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_802_11_associate(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [14 x i8], align 1
  %5 = alloca [14 x i8], align 1
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i16 18, ptr %1, align 1
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 46
  store ptr %2, ptr %8, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %7, ptr noundef align 8 dereferenceable(6) %2, i32 6, i1 false)
  %9 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 54
  %11 = load i16, ptr %10, align 4
  %12 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  store i16 %11, ptr %12, align 1
  %13 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 7
  %14 = load i16, ptr %13, align 8
  %15 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 2
  store i16 %14, ptr %15, align 1
  %16 = getelementptr i8, ptr %9, i32 7
  store i16 0, ptr %16, align 1
  %17 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 1
  %18 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 1, i32 1
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i16
  %21 = getelementptr i8, ptr %9, i32 9
  store i16 %20, ptr %21, align 1
  %22 = getelementptr i8, ptr %9, i32 11
  %23 = zext i8 %19 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %22, ptr align 2 %17, i32 %23, i1 false)
  %24 = add nuw nsw i32 %23, 4
  %25 = getelementptr i8, ptr %16, i32 %24
  store i16 3, ptr %25, align 1
  %26 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %25, i32 0, i32 1
  store i16 1, ptr %26, align 1
  %27 = getelementptr inbounds %struct.mwifiex_ie_types_phy_param_set, ptr %25, i32 0, i32 1
  %28 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 17, i32 0, i32 2
  %29 = load i8, ptr %28, align 2
  store i8 %29, ptr %27, align 1
  %30 = getelementptr i8, ptr %25, i32 5
  store i16 4, ptr %30, align 1
  %31 = getelementptr i8, ptr %25, i32 7
  store i16 6, ptr %31, align 1
  %32 = getelementptr i8, ptr %30, i32 10
  store ptr %32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %4, i8 0, i32 14, i1 false) #9, !annotation !8
  %33 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %5, ptr noundef align 8 dereferenceable(14) %33, i32 14, i1 false) #9
  %34 = call i32 @mwifiex_get_active_data_rates(ptr noundef %0, ptr noundef nonnull %4) #9
  %35 = call ptr @kmemdup(ptr noundef nonnull %5, i32 noundef 14, i32 noundef 3264) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %38, i32 noundef 4, ptr noundef nonnull @.str.45) #9
  br label %189

39:                                               ; preds = %3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %5, i8 0, i32 14, i1 false) #9
  %40 = icmp eq i32 %34, 0
  br i1 %40, label %166, label %41

41:                                               ; preds = %39
  %42 = getelementptr i8, ptr %35, i32 1
  %43 = getelementptr i8, ptr %35, i32 2
  %44 = getelementptr i8, ptr %35, i32 3
  %45 = getelementptr i8, ptr %35, i32 4
  %46 = getelementptr i8, ptr %35, i32 5
  %47 = getelementptr i8, ptr %35, i32 6
  %48 = getelementptr i8, ptr %35, i32 7
  %49 = getelementptr i8, ptr %35, i32 8
  %50 = getelementptr i8, ptr %35, i32 9
  %51 = getelementptr i8, ptr %35, i32 10
  %52 = getelementptr i8, ptr %35, i32 11
  %53 = getelementptr i8, ptr %35, i32 12
  %54 = getelementptr i8, ptr %35, i32 13
  br label %55

55:                                               ; preds = %162, %41
  %56 = phi i32 [ %164, %162 ], [ 0, %41 ]
  %57 = phi ptr [ %163, %162 ], [ %5, %41 ]
  %58 = getelementptr i8, ptr %4, i32 %56
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %166, label %61

61:                                               ; preds = %55
  %62 = load i8, ptr %35, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %162, label %155

64:                                               ; preds = %155
  %65 = load i8, ptr %42, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %162, label %67

67:                                               ; preds = %64
  %68 = xor i8 %65, %59
  %69 = and i8 %68, 127
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %159, label %71

71:                                               ; preds = %67
  %72 = load i8, ptr %43, align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %162, label %74

74:                                               ; preds = %71
  %75 = xor i8 %72, %59
  %76 = and i8 %75, 127
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %159, label %78

78:                                               ; preds = %74
  %79 = load i8, ptr %44, align 1
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %162, label %81

81:                                               ; preds = %78
  %82 = xor i8 %79, %59
  %83 = and i8 %82, 127
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %159, label %85

85:                                               ; preds = %81
  %86 = load i8, ptr %45, align 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %162, label %88

88:                                               ; preds = %85
  %89 = xor i8 %86, %59
  %90 = and i8 %89, 127
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %159, label %92

92:                                               ; preds = %88
  %93 = load i8, ptr %46, align 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %162, label %95

95:                                               ; preds = %92
  %96 = xor i8 %93, %59
  %97 = and i8 %96, 127
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %159, label %99

99:                                               ; preds = %95
  %100 = load i8, ptr %47, align 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %162, label %102

102:                                              ; preds = %99
  %103 = xor i8 %100, %59
  %104 = and i8 %103, 127
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %159, label %106

106:                                              ; preds = %102
  %107 = load i8, ptr %48, align 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %162, label %109

109:                                              ; preds = %106
  %110 = xor i8 %107, %59
  %111 = and i8 %110, 127
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %159, label %113

113:                                              ; preds = %109
  %114 = load i8, ptr %49, align 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %162, label %116

116:                                              ; preds = %113
  %117 = xor i8 %114, %59
  %118 = and i8 %117, 127
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %159, label %120

120:                                              ; preds = %116
  %121 = load i8, ptr %50, align 1
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %162, label %123

123:                                              ; preds = %120
  %124 = xor i8 %121, %59
  %125 = and i8 %124, 127
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %159, label %127

127:                                              ; preds = %123
  %128 = load i8, ptr %51, align 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %162, label %130

130:                                              ; preds = %127
  %131 = xor i8 %128, %59
  %132 = and i8 %131, 127
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %159, label %134

134:                                              ; preds = %130
  %135 = load i8, ptr %52, align 1
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %162, label %137

137:                                              ; preds = %134
  %138 = xor i8 %135, %59
  %139 = and i8 %138, 127
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %159, label %141

141:                                              ; preds = %137
  %142 = load i8, ptr %53, align 1
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %162, label %144

144:                                              ; preds = %141
  %145 = xor i8 %142, %59
  %146 = and i8 %145, 127
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %144
  %149 = load i8, ptr %54, align 1
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %162, label %151

151:                                              ; preds = %148
  %152 = xor i8 %149, %59
  %153 = and i8 %152, 127
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %159, label %162

155:                                              ; preds = %61
  %156 = xor i8 %62, %59
  %157 = and i8 %156, 127
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %64

159:                                              ; preds = %155, %151, %144, %137, %130, %123, %116, %109, %102, %95, %88, %81, %74, %67
  %160 = phi i8 [ %62, %155 ], [ %65, %67 ], [ %72, %74 ], [ %79, %81 ], [ %86, %88 ], [ %93, %95 ], [ %100, %102 ], [ %107, %109 ], [ %114, %116 ], [ %121, %123 ], [ %128, %130 ], [ %135, %137 ], [ %142, %144 ], [ %149, %151 ]
  %161 = getelementptr i8, ptr %57, i32 1
  store i8 %160, ptr %57, align 1
  br label %162

162:                                              ; preds = %159, %151, %148, %141, %134, %127, %120, %113, %106, %99, %92, %85, %78, %71, %64, %61
  %163 = phi ptr [ %161, %159 ], [ %57, %151 ], [ %57, %148 ], [ %57, %141 ], [ %57, %134 ], [ %57, %127 ], [ %57, %120 ], [ %57, %113 ], [ %57, %106 ], [ %57, %99 ], [ %57, %92 ], [ %57, %85 ], [ %57, %78 ], [ %57, %71 ], [ %57, %64 ], [ %57, %61 ]
  %164 = add nuw i32 %56, 1
  %165 = icmp eq i32 %164, %34
  br i1 %165, label %166, label %55

166:                                              ; preds = %162, %55, %39
  %167 = load ptr, ptr %0, align 8
  %168 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 32
  %169 = load i32, ptr %168, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %167, i32 noundef 1073741824, ptr noundef nonnull @.str.46, i32 noundef %169) #9
  %170 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 33
  %171 = load i8, ptr %170, align 4
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %191

173:                                              ; preds = %166
  %174 = load i8, ptr %5, align 1
  %175 = icmp eq i8 %174, 0
  %176 = load i32, ptr %168, align 8
  br i1 %175, label %187, label %181

177:                                              ; preds = %181
  %178 = getelementptr i8, ptr %183, i32 1
  %179 = load i8, ptr %178, align 1
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %177, %173
  %182 = phi i8 [ %179, %177 ], [ %174, %173 ]
  %183 = phi ptr [ %178, %177 ], [ %5, %173 ]
  %184 = and i8 %182, 127
  %185 = zext i8 %184 to i32
  %186 = icmp eq i32 %176, %185
  br i1 %186, label %191, label %177

187:                                              ; preds = %177, %173
  %188 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %188, i32 noundef 4, ptr noundef nonnull @.str.47, i32 noundef %176) #9
  call void @kfree(ptr noundef nonnull %35) #9
  br label %189

189:                                              ; preds = %187, %37
  %190 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %190, i32 noundef 4, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.mwifiex_setup_rates_from_bssdesc) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %4) #9
  br label %443

191:                                              ; preds = %181, %166
  call void @kfree(ptr noundef nonnull %35) #9
  %192 = call i32 @strlen(ptr noundef nonnull %5) #9
  %193 = call i32 @llvm.umin.i32(i32 %192, i32 14) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %4) #9
  %194 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 4
  store i32 %193, ptr %194, align 4
  %195 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %195, ptr nonnull align 1 %5, i32 %193, i1 false)
  %196 = load ptr, ptr %6, align 4
  store i16 1, ptr %196, align 1
  %197 = trunc i32 %193 to i16
  %198 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %196, i32 0, i32 1
  store i16 %197, ptr %198, align 1
  %199 = getelementptr inbounds %struct.mwifiex_ie_types_rates_param_set, ptr %196, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %199, ptr nonnull align 1 %5, i32 %193, i1 false)
  %200 = add nuw nsw i32 %193, 4
  %201 = load ptr, ptr %6, align 4
  %202 = getelementptr i8, ptr %201, i32 %200
  store ptr %202, ptr %6, align 4
  %203 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %203, i32 noundef 1073741824, ptr noundef nonnull @.str, i32 noundef %193) #9
  %204 = load ptr, ptr %6, align 4
  store i16 287, ptr %204, align 1
  %205 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %204, i32 0, i32 1
  store i16 2, ptr %205, align 1
  %206 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60
  %207 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 4
  %208 = load i8, ptr %207, align 4
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %191
  %211 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 5
  %212 = load i32, ptr %211, align 4
  %213 = trunc i32 %212 to i16
  br label %214

214:                                              ; preds = %210, %191
  %215 = phi i16 [ %213, %210 ], [ 0, %191 ]
  %216 = getelementptr inbounds %struct.mwifiex_ie_types_auth_type, ptr %204, i32 0, i32 1
  store i16 %215, ptr %216, align 1
  %217 = load ptr, ptr %6, align 4
  %218 = getelementptr i8, ptr %217, i32 6
  store ptr %218, ptr %6, align 4
  %219 = load ptr, ptr %0, align 8
  %220 = getelementptr inbounds %struct.mwifiex_adapter, ptr %219, i32 0, i32 47
  %221 = load i32, ptr %220, align 4
  %222 = and i32 %221, 12032
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %257, label %224

224:                                              ; preds = %214
  %225 = and i32 %221, 2048
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %240, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 22
  %229 = load i8, ptr %228, align 4
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %240

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.mwifiex_adapter, ptr %219, i32 0, i32 84
  %233 = load i8, ptr %232, align 2
  %234 = and i8 %233, 24
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 24
  %238 = load ptr, ptr %237, align 8
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %257

240:                                              ; preds = %236, %231, %227, %224
  store i16 257, ptr %218, align 1
  %241 = getelementptr i8, ptr %217, i32 8
  store i16 7, ptr %241, align 1
  %242 = getelementptr i8, ptr %217, i32 10
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(7) %242, i8 0, i32 7, i1 false)
  %243 = load i8, ptr %28, align 2
  %244 = getelementptr i8, ptr %217, i32 11
  store i8 %243, ptr %244, align 1
  %245 = load ptr, ptr %0, align 8
  %246 = zext i8 %243 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %245, i32 noundef 1073741824, ptr noundef nonnull @.str.1, i32 noundef %246) #9
  %247 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 13
  %248 = load i16, ptr %247, align 4
  %249 = trunc i16 %248 to i8
  switch i8 %249, label %250 [
    i8 4, label %251
    i8 16, label %251
    i8 20, label %251
    i8 52, label %251
  ]

250:                                              ; preds = %240
  br label %251

251:                                              ; preds = %250, %240, %240, %240, %240
  %252 = phi i8 [ 0, %250 ], [ 1, %240 ], [ 1, %240 ], [ 1, %240 ], [ 1, %240 ]
  store i8 %252, ptr %242, align 1
  %253 = load ptr, ptr %0, align 8
  %254 = zext i8 %252 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %253, i32 noundef 1073741824, ptr noundef nonnull @.str.2, i32 noundef %254) #9
  %255 = load ptr, ptr %6, align 4
  %256 = getelementptr i8, ptr %255, i32 11
  store ptr %256, ptr %6, align 4
  br label %257

257:                                              ; preds = %251, %236, %214
  %258 = phi ptr [ %256, %251 ], [ %218, %236 ], [ %218, %214 ]
  %259 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 113
  %260 = load i8, ptr %259, align 2
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %262, label %289

262:                                              ; preds = %257
  %263 = load i8, ptr %206, align 4
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 1
  %267 = load i8, ptr %266, align 1
  %268 = icmp eq i8 %267, 0
  %269 = icmp eq ptr %258, null
  %270 = select i1 %268, i1 true, i1 %269
  br i1 %270, label %289, label %273

271:                                              ; preds = %262
  %272 = icmp eq ptr %258, null
  br i1 %272, label %289, label %273

273:                                              ; preds = %271, %265
  %274 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 63
  %275 = load i8, ptr %274, align 2
  %276 = zext i8 %275 to i16
  store i16 %276, ptr %258, align 1
  %277 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 63, i32 1
  %278 = load i8, ptr %277, align 1
  %279 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %258, i32 0, i32 1
  %280 = zext i8 %278 to i16
  store i16 %280, ptr %279, align 1
  %281 = icmp eq i8 %278, -1
  br i1 %281, label %443, label %282

282:                                              ; preds = %273
  %283 = zext i8 %278 to i32
  %284 = getelementptr inbounds %struct.mwifiex_ie_types_rsn_param_set, ptr %258, i32 0, i32 1
  %285 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 63, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %284, ptr align 2 %285, i32 %283, i1 false) #9
  %286 = add nuw nsw i32 %283, 4
  %287 = load ptr, ptr %6, align 4
  %288 = getelementptr i8, ptr %287, i32 %286
  store ptr %288, ptr %6, align 4
  br label %289

289:                                              ; preds = %282, %271, %265, %257
  %290 = load ptr, ptr %0, align 8
  %291 = getelementptr inbounds %struct.mwifiex_adapter, ptr %290, i32 0, i32 47
  %292 = load i32, ptr %291, align 4
  %293 = and i32 %292, 2048
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %309, label %295

295:                                              ; preds = %289
  %296 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 22
  %297 = load i8, ptr %296, align 4
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %299, label %309

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.mwifiex_adapter, ptr %290, i32 0, i32 84
  %301 = load i8, ptr %300, align 2
  %302 = and i8 %301, 24
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %309, label %304

304:                                              ; preds = %299
  %305 = call i32 @mwifiex_cmd_append_11n_tlv(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6) #9
  %306 = load ptr, ptr %0, align 8
  %307 = getelementptr inbounds %struct.mwifiex_adapter, ptr %306, i32 0, i32 47
  %308 = load i32, ptr %307, align 4
  br label %309

309:                                              ; preds = %304, %299, %295, %289
  %310 = phi i32 [ %292, %299 ], [ %308, %304 ], [ %292, %295 ], [ %292, %289 ]
  %311 = phi ptr [ %290, %299 ], [ %306, %304 ], [ %290, %295 ], [ %290, %289 ]
  %312 = and i32 %310, 8192
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %329, label %314

314:                                              ; preds = %309
  %315 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 22
  %316 = load i8, ptr %315, align 4
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %318, label %329

318:                                              ; preds = %314
  %319 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 44
  %320 = load i8, ptr %319, align 2
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %318
  %323 = getelementptr inbounds %struct.mwifiex_adapter, ptr %311, i32 0, i32 84
  %324 = load i8, ptr %323, align 2
  %325 = and i8 %324, 32
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %329, label %327

327:                                              ; preds = %322
  %328 = call i32 @mwifiex_cmd_append_11ac_tlv(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6) #9
  br label %329

329:                                              ; preds = %327, %322, %318, %314, %309
  %330 = call i32 @mwifiex_cmd_append_vsie_tlv(ptr noundef %0, i16 noundef zeroext 2, ptr noundef nonnull %6) #9
  %331 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 21
  %332 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 24
  %333 = load ptr, ptr %332, align 8
  %334 = call i32 @mwifiex_wmm_process_association_req(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %331, ptr noundef %333) #9
  %335 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 2
  %336 = load i8, ptr %335, align 2
  %337 = icmp eq i8 %336, 0
  br i1 %337, label %360, label %338

338:                                              ; preds = %329
  %339 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 70
  %340 = load i16, ptr %339, align 2
  %341 = icmp eq i16 %340, 0
  br i1 %341, label %360, label %342

342:                                              ; preds = %338
  %343 = load ptr, ptr %6, align 4
  %344 = icmp eq ptr %343, null
  br i1 %344, label %360, label %345

345:                                              ; preds = %342
  %346 = load ptr, ptr %0, align 8
  %347 = zext i16 %340 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %346, i32 noundef 16, ptr noundef nonnull @.str.48, i32 noundef %347, ptr noundef nonnull %343) #9
  %348 = load i16, ptr %339, align 2
  %349 = load ptr, ptr %6, align 4
  store i16 350, ptr %349, align 1
  %350 = getelementptr inbounds i8, ptr %349, i32 2
  store i16 %348, ptr %350, align 1
  %351 = load ptr, ptr %6, align 4
  %352 = getelementptr i8, ptr %351, i32 4
  store ptr %352, ptr %6, align 4
  %353 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 68
  %354 = load i16, ptr %339, align 2
  %355 = zext i16 %354 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %352, ptr align 1 %353, i32 %355, i1 false) #9
  %356 = load i16, ptr %339, align 2
  %357 = zext i16 %356 to i32
  %358 = load ptr, ptr %6, align 4
  %359 = getelementptr i8, ptr %358, i32 %357
  store ptr %359, ptr %6, align 4
  br label %360

360:                                              ; preds = %345, %342, %338, %329
  %361 = load i8, ptr %259, align 2
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %387, label %363

363:                                              ; preds = %360
  %364 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 72
  %365 = load i16, ptr %364, align 4
  %366 = icmp eq i16 %365, 0
  br i1 %366, label %387, label %367

367:                                              ; preds = %363
  %368 = load ptr, ptr %6, align 4
  %369 = icmp eq ptr %368, null
  br i1 %369, label %425, label %370

370:                                              ; preds = %367
  %371 = load ptr, ptr %0, align 8
  %372 = zext i16 %365 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %371, i32 noundef 16, ptr noundef nonnull @.str.49, i32 noundef %372, ptr noundef nonnull %368) #9
  %373 = load i16, ptr %364, align 4
  %374 = load ptr, ptr %6, align 4
  store i16 266, ptr %374, align 1
  %375 = getelementptr inbounds i8, ptr %374, i32 2
  store i16 %373, ptr %375, align 1
  %376 = load ptr, ptr %6, align 4
  %377 = getelementptr i8, ptr %376, i32 4
  store ptr %377, ptr %6, align 4
  %378 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 71
  %379 = load ptr, ptr %378, align 8
  %380 = load i16, ptr %364, align 4
  %381 = zext i16 %380 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %377, ptr align 1 %379, i32 %381, i1 false) #9
  %382 = load i16, ptr %364, align 4
  %383 = zext i16 %382 to i32
  %384 = load ptr, ptr %6, align 4
  %385 = getelementptr i8, ptr %384, i32 %383
  store ptr %385, ptr %6, align 4
  %386 = load ptr, ptr %378, align 8
  call void @kfree(ptr noundef %386) #9
  store i16 0, ptr %364, align 4
  br label %387

387:                                              ; preds = %370, %363, %360
  %388 = load ptr, ptr %6, align 4
  %389 = icmp eq ptr %388, null
  br i1 %389, label %425, label %390

390:                                              ; preds = %387
  %391 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 94
  %392 = load i8, ptr %391, align 8
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %411, label %394

394:                                              ; preds = %390
  %395 = load ptr, ptr %0, align 8
  %396 = zext i8 %392 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %395, i32 noundef 1073741824, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.mwifiex_cmd_append_generic_ie, i32 noundef %396, ptr noundef nonnull %388) #9
  %397 = load i8, ptr %391, align 8
  %398 = zext i8 %397 to i16
  %399 = load ptr, ptr %6, align 4
  store i16 266, ptr %399, align 1
  %400 = getelementptr inbounds i8, ptr %399, i32 2
  store i16 %398, ptr %400, align 1
  %401 = load ptr, ptr %6, align 4
  %402 = getelementptr i8, ptr %401, i32 4
  store ptr %402, ptr %6, align 4
  %403 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 93
  %404 = load i8, ptr %391, align 8
  %405 = zext i8 %404 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %402, ptr align 8 %403, i32 %405, i1 false) #9
  %406 = load i8, ptr %391, align 8
  %407 = zext i8 %406 to i32
  %408 = load ptr, ptr %6, align 4
  %409 = getelementptr i8, ptr %408, i32 %407
  store ptr %409, ptr %6, align 4
  store i8 0, ptr %391, align 8
  %410 = icmp eq ptr %409, null
  br i1 %410, label %425, label %411

411:                                              ; preds = %394, %390
  %412 = phi ptr [ %409, %394 ], [ %388, %390 ]
  store i16 275, ptr %412, align 1
  %413 = getelementptr inbounds i8, ptr %412, i32 2
  store i16 16, ptr %413, align 1
  %414 = load ptr, ptr %6, align 4
  %415 = getelementptr i8, ptr %414, i32 4
  %416 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 15
  %417 = load i64, ptr %416, align 8
  store i64 %417, ptr %415, align 1
  %418 = getelementptr i8, ptr %414, i32 12
  store ptr %418, ptr %6, align 4
  %419 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 16
  %420 = load i64, ptr %419, align 8
  %421 = load ptr, ptr %0, align 8
  %422 = load i64, ptr %416, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %421, i32 noundef 1073741824, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.mwifiex_cmd_append_tsf_tlv, i64 noundef %420, i64 noundef %422) #9
  %423 = load ptr, ptr %6, align 4
  store i64 %420, ptr %423, align 1
  %424 = getelementptr i8, ptr %423, i32 8
  store ptr %424, ptr %6, align 4
  br label %425

425:                                              ; preds = %411, %394, %387, %367
  call void @mwifiex_11h_process_join(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2) #9
  %426 = load ptr, ptr %6, align 4
  %427 = ptrtoint ptr %426 to i32
  %428 = ptrtoint ptr %7 to i32
  %429 = sub i32 %427, %428
  %430 = trunc i32 %429 to i16
  %431 = add i16 %430, 8
  %432 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 %431, ptr %432, align 1
  %433 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 20
  %434 = load i16, ptr %433, align 8
  %435 = load ptr, ptr %0, align 8
  %436 = getelementptr inbounds %struct.mwifiex_adapter, ptr %435, i32 0, i32 84
  %437 = load i8, ptr %436, align 2
  %438 = icmp eq i8 %437, 1
  %439 = and i16 %434, 8703
  %440 = select i1 %438, i16 %439, i16 %434
  %441 = and i16 %440, 9727
  %442 = zext i16 %441 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %435, i32 noundef 1073741824, ptr noundef nonnull @.str.3, i32 noundef %442, i32 noundef -55809) #9
  store i16 %441, ptr %9, align 1
  br label %443

443:                                              ; preds = %425, %273, %189
  %444 = phi i32 [ 0, %425 ], [ -1, %189 ], [ -1, %273 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %5) #9
  ret i32 %444
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %0) local_unnamed_addr #5 {
  switch i8 %0, label %2 [
    i8 4, label %3
    i8 16, label %3
    i8 20, label %3
    i8 52, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2, %1, %1, %1, %1
  %4 = phi i8 [ 0, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_append_11n_tlv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_append_11ac_tlv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cmd_append_vsie_tlv(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_wmm_process_association_req(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_11h_process_join(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_802_11_associate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 46
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.4) #9
  br label %158

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %10 = load i16, ptr %9, align 1
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  %12 = load i16, ptr %11, align 1
  %13 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 2
  %14 = load i16, ptr %13, align 1
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 49152
  %17 = icmp eq i32 %16, 49152
  br i1 %17, label %21, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.5, i32 noundef %15) #10
  br label %21

21:                                               ; preds = %18, %8
  %22 = and i16 %14, 16383
  %23 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  %24 = load i16, ptr %23, align 1
  %25 = zext i16 %24 to i32
  %26 = add nsw i32 %25, -8
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 500)
  %28 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 92
  store i32 %27, ptr %28, align 4
  store i16 %22, ptr %13, align 1
  %29 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 91
  %30 = load i32, ptr %28, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %29, ptr align 1 %9, i32 %30, i1 false)
  %31 = icmp eq i16 %12, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %21
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.mwifiex_adapter, ptr %33, i32 0, i32 118, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  %37 = load ptr, ptr %0, align 8
  %38 = zext i16 %12 to i32
  %39 = zext i16 %10 to i32
  %40 = load i16, ptr %13, align 1
  %41 = zext i16 %40 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %37, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %38, i32 noundef %39, i32 noundef %41) #9
  %42 = load ptr, ptr %0, align 8
  switch i16 %10, label %46 [
    i16 -5, label %47
    i16 -2, label %43
    i16 -4, label %49
    i16 -3, label %44
    i16 -1, label %45
  ]

43:                                               ; preds = %32
  br label %47

44:                                               ; preds = %32
  br label %47

45:                                               ; preds = %32
  br label %47

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %45, %44, %43, %32
  %48 = phi ptr [ @.str.52, %32 ], [ @.str.53, %43 ], [ @.str.55, %44 ], [ @.str.56, %45 ], [ @.str.57, %46 ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %42, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull %48) #9
  br label %158

49:                                               ; preds = %32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %42, i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.54) #9
  %50 = icmp eq i16 %12, 2
  %51 = load ptr, ptr %0, align 8
  br i1 %50, label %52, label %53

52:                                               ; preds = %49
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %51, i32 noundef 4, ptr noundef nonnull @.str.8) #9
  br label %158

53:                                               ; preds = %49
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %51, i32 noundef 4, ptr noundef nonnull @.str.9) #9
  br label %158

54:                                               ; preds = %21
  %55 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  store i8 1, ptr %55, align 8
  %56 = load ptr, ptr %0, align 8
  %57 = getelementptr inbounds %struct.mwifiex_adapter, ptr %56, i32 0, i32 90
  store i32 0, ptr %57, align 4
  %58 = load ptr, ptr %0, align 8
  %59 = getelementptr inbounds %struct.mwifiex_adapter, ptr %58, i32 0, i32 104
  store i16 0, ptr %59, align 2
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr inbounds %struct.mwifiex_adapter, ptr %60, i32 0, i32 86
  store i8 0, ptr %61, align 4
  %62 = load ptr, ptr %4, align 4
  %63 = load ptr, ptr %0, align 8
  %64 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %62, i32 0, i32 1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %63, i32 noundef 1073741824, ptr noundef nonnull @.str.10, ptr noundef %64) #9
  %65 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(256) %65, ptr noundef align 8 dereferenceable(256) %62, i32 256, i1 false)
  %66 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %62, i32 0, i32 17, i32 0, i32 2
  %67 = load i8, ptr %66, align 2
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 5
  store i32 %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %62, i32 0, i32 13
  %71 = load i16, ptr %70, align 4
  %72 = trunc i16 %71 to i8
  %73 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 3
  store i8 %72, ptr %73, align 2
  %74 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %62, i32 0, i32 21
  %75 = load i8, ptr %74, align 2
  %76 = icmp eq i8 %75, -35
  %77 = zext i1 %76 to i8
  %78 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 1
  store i8 %77, ptr %78, align 8
  %79 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 73
  %80 = load i8, ptr %79, align 2
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %54
  %83 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %62, i32 0, i32 24
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  %86 = xor i1 %76, true
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %89, label %92

88:                                               ; preds = %54
  br i1 %76, label %92, label %89

89:                                               ; preds = %88, %82
  %90 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 74
  store i8 0, ptr %90, align 1
  %91 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 2
  store i8 0, ptr %91, align 1
  br label %98

92:                                               ; preds = %88, %82
  %93 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 74
  store i8 1, ptr %93, align 1
  %94 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 2
  store i8 0, ptr %94, align 1
  %95 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %62, i32 0, i32 21, i32 3
  %96 = load i8, ptr %95, align 2
  %97 = lshr i8 %96, 7
  store i8 %97, ptr %94, align 1
  br label %98

98:                                               ; preds = %92, %89
  %99 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 74
  %100 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  %101 = load i32, ptr %28, align 4
  %102 = add i32 %101, -6
  %103 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 61, ptr noundef %100, i32 noundef %102, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %98
  %106 = getelementptr i8, ptr %103, i32 3
  %107 = load i8, ptr %106, align 1
  %108 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 162
  store i8 %107, ptr %108, align 4
  br label %109

109:                                              ; preds = %105, %98
  %110 = phi i8 [ 1, %105 ], [ 0, %98 ]
  %111 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 163
  store i8 %110, ptr %111, align 1
  %112 = load ptr, ptr %0, align 8
  %113 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 17
  %114 = load i32, ptr %113, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %112, i32 noundef 1073741824, ptr noundef nonnull @.str.11, i32 noundef %114) #9
  %115 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60
  %116 = load i8, ptr %115, align 4
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 1
  %120 = load i8, ptr %119, align 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118, %109
  %123 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 65
  store i8 0, ptr %123, align 4
  br label %124

124:                                              ; preds = %122, %118
  %125 = load i8, ptr %99, align 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  tail call void @mwifiex_wmm_setup_queue_priorities(ptr noundef %0, ptr noundef null) #9
  tail call void @mwifiex_wmm_setup_ac_downgrade(ptr noundef %0) #9
  %128 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %128, i32 noundef 1073741824, ptr noundef nonnull @.str.12) #9
  br label %129

129:                                              ; preds = %127, %124
  %130 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 37
  %131 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 28
  store i8 0, ptr %131, align 1
  %132 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 27
  store i8 0, ptr %132, align 2
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(16) %130, i8 0, i64 16, i1 false)
  tail call void @mwifiex_save_curr_bcn(ptr noundef %0) #9
  %133 = load ptr, ptr %0, align 8
  %134 = getelementptr inbounds %struct.mwifiex_adapter, ptr %133, i32 0, i32 118, i32 7
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %135, 1
  store i32 %136, ptr %134, align 4
  %137 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %137, i32 noundef 1073741824, ptr noundef nonnull @.str.13) #9
  tail call void @mwifiex_ralist_add(ptr noundef %0, ptr noundef %65) #9
  %138 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.net_device, ptr %139, i32 0, i32 6
  %141 = load volatile i32, ptr %140, align 4
  %142 = and i32 %141, 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %129
  tail call void @netif_carrier_on(ptr noundef %139) #9
  %145 = load ptr, ptr %138, align 4
  br label %146

146:                                              ; preds = %144, %129
  %147 = phi ptr [ %145, %144 ], [ %139, %129 ]
  tail call void @mwifiex_wake_up_net_dev_queue(ptr noundef %147, ptr noundef %3) #9
  %148 = load i8, ptr %115, align 4
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 1
  %152 = load i8, ptr %151, align 1
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %150, %146
  %155 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 114
  store i8 1, ptr %155, align 1
  br label %158

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 9
  store i8 1, ptr %157, align 1
  br label %158

158:                                              ; preds = %156, %154, %53, %52, %47, %7
  %159 = phi i32 [ 16, %52 ], [ 1, %53 ], [ 0, %154 ], [ 0, %156 ], [ 0, %7 ], [ %38, %47 ]
  %160 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 60
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %161, i32 0, i32 7
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %158
  %166 = icmp ne i32 %159, 0
  %167 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 121, i32 1
  %168 = sext i1 %166 to i32
  store i32 %168, ptr %167, align 4
  br label %169

169:                                              ; preds = %165, %158
  ret i32 %159
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wmm_setup_queue_priorities(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wmm_setup_ac_downgrade(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_save_curr_bcn(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_ralist_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_wake_up_net_dev_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_802_11_ad_hoc_start(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %7 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 37
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %5, null
  br i1 %8, label %264, label %9

9:                                                ; preds = %3
  store i16 43, ptr %1, align 1
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 46
  store ptr %10, ptr %11, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false)
  %12 = getelementptr inbounds %struct.cfg80211_ssid, ptr %2, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp ugt i8 %13, 32
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i8 32, ptr %12, align 1
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi i8 [ 32, %15 ], [ %13, %9 ]
  %18 = zext i8 %17 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %6, ptr align 1 %2, i32 %18, i1 false)
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %5, i32 noundef 1073741824, ptr noundef nonnull @.str.14, ptr noundef %6) #9
  %19 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(32) %19, i8 0, i32 32, i1 false)
  %20 = load i8, ptr %12, align 1
  %21 = zext i8 %20 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %19, ptr align 1 %2, i32 %21, i1 false)
  %22 = load i8, ptr %12, align 1
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 1, i32 1
  store i8 %22, ptr %23, align 2
  %24 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1
  store i8 2, ptr %24, align 1
  %25 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 10
  store i32 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 51
  %27 = load i16, ptr %26, align 8
  %28 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 1
  store i16 %27, ptr %28, align 1
  %29 = load i16, ptr %26, align 8
  %30 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 7
  store i16 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 12
  store i8 3, ptr %31, align 1
  %32 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 13
  store i8 1, ptr %32, align 1
  %33 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 83
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 56
  %36 = load i8, ptr %35, align 8
  %37 = zext i8 %36 to i16
  %38 = tail call ptr @mwifiex_get_cfp(ptr noundef %0, i8 noundef zeroext %34, i16 noundef zeroext %37, i32 noundef 0) #9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %16
  %41 = load i8, ptr %33, align 1
  %42 = tail call ptr @mwifiex_get_cfp(ptr noundef %0, i8 noundef zeroext %41, i16 noundef zeroext 255, i32 noundef 0) #9
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i16, ptr %42, align 4
  %46 = trunc i16 %45 to i8
  store i8 %46, ptr %35, align 8
  br label %49

47:                                               ; preds = %40, %16
  %48 = load i8, ptr %35, align 8
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi i8 [ %48, %47 ], [ %46, %44 ]
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull @.str.15) #9
  br label %264

53:                                               ; preds = %49
  %54 = zext i8 %50 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %5, i32 noundef 1073741824, ptr noundef nonnull @.str.16, i32 noundef %54) #9
  %55 = load i8, ptr %35, align 8
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 5
  store i32 %56, ptr %57, align 8
  %58 = load i8, ptr %33, align 1
  %59 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 3
  store i8 %58, ptr %59, align 2
  store i32 %56, ptr %57, align 8
  %60 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 14
  store i8 %55, ptr %60, align 1
  %61 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(7) %61, ptr noundef align 1 dereferenceable(7) %31, i32 7, i1 false)
  %62 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 4
  store i8 6, ptr %62, align 1
  %63 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 5
  store i8 2, ptr %63, align 1
  %64 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 55
  %65 = load i16, ptr %64, align 2
  %66 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 6
  store i16 %65, ptr %66, align 1
  %67 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 18
  %68 = load i64, ptr %62, align 1
  store i64 %68, ptr %67, align 1
  %69 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 20
  %70 = load i16, ptr %69, align 8
  %71 = or i16 %70, 2
  store i16 %71, ptr %69, align 8
  %72 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60
  %73 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 7
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, ptr @.str.18, ptr @.str.17
  %77 = xor i1 %75, true
  %78 = zext i1 %77 to i32
  %79 = select i1 %75, i16 2, i16 18
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %5, i32 noundef 1073741824, ptr noundef nonnull %76) #9
  %80 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 3
  store i32 %78, ptr %80, align 8
  %81 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 23
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(14) %81, i8 0, i32 14, i1 false)
  %82 = tail call i32 @mwifiex_get_active_data_rates(ptr noundef %0, ptr noundef %81) #9
  %83 = load i8, ptr %33, align 1
  %84 = and i8 %83, 2
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %53
  %87 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 17
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 8192
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 40, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %87, i1 noundef zeroext false) #9
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull @.str.19) #9
  br label %264

95:                                               ; preds = %91, %86, %53
  %96 = load i8, ptr %81, align 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %151, label %98

98:                                               ; preds = %95
  %99 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 24
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %151, label %102

102:                                              ; preds = %98
  %103 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 25
  %104 = load i8, ptr %103, align 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %151, label %106

106:                                              ; preds = %102
  %107 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 26
  %108 = load i8, ptr %107, align 1
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %151, label %110

110:                                              ; preds = %106
  %111 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 27
  %112 = load i8, ptr %111, align 1
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %151, label %114

114:                                              ; preds = %110
  %115 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 28
  %116 = load i8, ptr %115, align 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %151, label %118

118:                                              ; preds = %114
  %119 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 29
  %120 = load i8, ptr %119, align 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %151, label %122

122:                                              ; preds = %118
  %123 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 30
  %124 = load i8, ptr %123, align 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %151, label %126

126:                                              ; preds = %122
  %127 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 31
  %128 = load i8, ptr %127, align 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %151, label %130

130:                                              ; preds = %126
  %131 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 32
  %132 = load i8, ptr %131, align 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %151, label %134

134:                                              ; preds = %130
  %135 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 33
  %136 = load i8, ptr %135, align 1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %151, label %138

138:                                              ; preds = %134
  %139 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 34
  %140 = load i8, ptr %139, align 1
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %138
  %143 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 35
  %144 = load i8, ptr %143, align 1
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %142
  %147 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 36
  %148 = load i8, ptr %147, align 1
  %149 = icmp eq i8 %148, 0
  %150 = select i1 %149, i32 13, i32 14
  br label %151

151:                                              ; preds = %146, %142, %138, %134, %130, %126, %122, %118, %114, %110, %106, %102, %98, %95
  %152 = phi i32 [ 0, %95 ], [ 1, %98 ], [ 2, %102 ], [ 3, %106 ], [ 4, %110 ], [ 5, %114 ], [ 6, %118 ], [ 7, %122 ], [ 8, %126 ], [ 9, %130 ], [ 10, %134 ], [ 11, %138 ], [ 12, %142 ], [ %150, %146 ]
  %153 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 4
  store i32 %152, ptr %153, align 4
  %154 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %154, ptr align 1 %81, i32 %152, i1 false)
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %5, i32 noundef 1073741824, ptr noundef nonnull @.str.20, ptr noundef %81) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %5, i32 noundef 1073741824, ptr noundef nonnull @.str.21) #9
  %155 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 47
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %156, 12032
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %184, label %159

159:                                              ; preds = %151
  store i16 257, ptr %7, align 1
  %160 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 39
  store i16 7, ptr %160, align 1
  %161 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 41
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(7) %161, i8 0, i32 7, i1 false)
  %162 = load i32, ptr %57, align 8
  %163 = trunc i32 %162 to i8
  %164 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 42
  store i8 %163, ptr %164, align 1
  %165 = and i32 %162, 255
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %5, i32 noundef 1073741824, ptr noundef nonnull @.str.22, i32 noundef %165) #9
  %166 = load i8, ptr %59, align 2
  switch i8 %166, label %167 [
    i8 4, label %168
    i8 16, label %168
    i8 20, label %168
    i8 52, label %168
  ]

167:                                              ; preds = %159
  br label %168

168:                                              ; preds = %167, %159, %159, %159, %159
  %169 = phi i8 [ 0, %167 ], [ 1, %159 ], [ 1, %159 ], [ 1, %159 ], [ 1, %159 ]
  store i8 %169, ptr %161, align 1
  %170 = load i8, ptr %33, align 1
  %171 = and i8 %170, 24
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 117
  %175 = load i8, ptr %174, align 1
  switch i8 %175, label %180 [
    i8 1, label %177
    i8 3, label %176
  ]

176:                                              ; preds = %173
  br label %177

177:                                              ; preds = %176, %173
  %178 = phi i8 [ 48, %176 ], [ 16, %173 ]
  %179 = or i8 %169, %178
  store i8 %179, ptr %161, align 1
  br label %180

180:                                              ; preds = %177, %173, %168
  %181 = phi i8 [ %169, %173 ], [ %169, %168 ], [ %179, %177 ]
  %182 = zext i8 %181 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %5, i32 noundef 1073741824, ptr noundef nonnull @.str.23, i32 noundef %182) #9
  %183 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 48
  store ptr %183, ptr %4, align 4
  br label %184

184:                                              ; preds = %180, %151
  %185 = phi i32 [ 11, %180 ], [ 0, %151 ]
  %186 = call i32 @mwifiex_cmd_append_vsie_tlv(ptr noundef %0, i16 noundef zeroext 4, ptr noundef nonnull %4) #9
  %187 = add i32 %186, %185
  %188 = load i8, ptr %72, align 4
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %212, label %190

190:                                              ; preds = %184
  %191 = load ptr, ptr %4, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %209, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 63
  %195 = load i8, ptr %194, align 2
  %196 = zext i8 %195 to i16
  store i16 %196, ptr %191, align 1
  %197 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 63, i32 1
  %198 = load i8, ptr %197, align 1
  %199 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %191, i32 0, i32 1
  %200 = zext i8 %198 to i16
  store i16 %200, ptr %199, align 1
  %201 = icmp eq i8 %198, -1
  br i1 %201, label %264, label %202

202:                                              ; preds = %193
  %203 = zext i8 %198 to i32
  %204 = getelementptr inbounds %struct.mwifiex_ie_types_rsn_param_set, ptr %191, i32 0, i32 1
  %205 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 63, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %204, ptr align 2 %205, i32 %203, i1 false) #9
  %206 = add nuw nsw i32 %203, 4
  %207 = load ptr, ptr %4, align 4
  %208 = getelementptr i8, ptr %207, i32 %206
  store ptr %208, ptr %4, align 4
  br label %209

209:                                              ; preds = %202, %190
  %210 = phi i32 [ 0, %190 ], [ %206, %202 ]
  %211 = add i32 %210, %187
  br label %212

212:                                              ; preds = %209, %184
  %213 = phi i32 [ %211, %209 ], [ %187, %184 ]
  %214 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 116
  %215 = load i8, ptr %214, align 2
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %254, label %217

217:                                              ; preds = %212
  %218 = load ptr, ptr %4, align 4
  %219 = getelementptr inbounds i8, ptr %218, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(30) %219, i8 0, i32 26, i1 false)
  store i16 45, ptr %218, align 1
  %220 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %218, i32 0, i32 1
  store i16 26, ptr %220, align 1
  %221 = load ptr, ptr %0, align 8
  %222 = getelementptr inbounds %struct.mwifiex_adapter, ptr %221, i32 0, i32 84
  %223 = load i8, ptr %222, align 2
  switch i8 %223, label %224 [
    i8 4, label %225
    i8 16, label %225
    i8 20, label %225
    i8 52, label %225
  ]

224:                                              ; preds = %217
  br label %225

225:                                              ; preds = %224, %217, %217, %217, %217
  %226 = phi i8 [ 0, %224 ], [ 1, %217 ], [ 1, %217 ], [ 1, %217 ], [ 1, %217 ]
  %227 = getelementptr inbounds %struct.mwifiex_ie_types_htcap, ptr %218, i32 0, i32 1
  %228 = call i32 @mwifiex_fill_cap_info(ptr noundef %0, i8 noundef zeroext %226, ptr noundef %227) #9
  %229 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 117
  %230 = load i8, ptr %229, align 1
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %225
  %233 = load i16, ptr %227, align 1
  %234 = and i16 %233, -67
  store i16 %234, ptr %227, align 1
  br label %235

235:                                              ; preds = %232, %225
  %236 = load ptr, ptr %4, align 4
  %237 = getelementptr i8, ptr %236, i32 30
  store ptr %237, ptr %4, align 4
  %238 = getelementptr i8, ptr %236, i32 34
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(26) %238, i8 0, i32 22, i1 false)
  store i16 61, ptr %237, align 1
  %239 = getelementptr i8, ptr %236, i32 32
  store i16 22, ptr %239, align 1
  %240 = load i32, ptr %57, align 8
  %241 = trunc i32 %240 to i8
  %242 = getelementptr i8, ptr %236, i32 34
  store i8 %241, ptr %242, align 1
  %243 = load i8, ptr %229, align 1
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %235
  %246 = getelementptr i8, ptr %236, i32 35
  %247 = or i8 %243, 4
  store i8 %247, ptr %246, align 1
  br label %248

248:                                              ; preds = %245, %235
  %249 = getelementptr i8, ptr %236, i32 36
  store i16 4, ptr %249, align 1
  %250 = getelementptr i8, ptr %236, i32 40
  store i8 -1, ptr %250, align 1
  %251 = load ptr, ptr %4, align 4
  %252 = getelementptr i8, ptr %251, i32 26
  store ptr %252, ptr %4, align 4
  %253 = add i32 %213, 56
  br label %254

254:                                              ; preds = %248, %212
  %255 = phi i32 [ %253, %248 ], [ %213, %212 ]
  %256 = trunc i32 %255 to i16
  %257 = add i16 %256, 77
  %258 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 %257, ptr %258, align 1
  %259 = load i8, ptr %33, align 1
  %260 = icmp eq i8 %259, 1
  %261 = or i16 %79, 1024
  %262 = select i1 %260, i16 %79, i16 %261
  %263 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 21
  store i16 %262, ptr %263, align 1
  br label %264

264:                                              ; preds = %254, %193, %94, %52, %3
  %265 = phi i32 [ -1, %94 ], [ 0, %254 ], [ -1, %52 ], [ -1, %3 ], [ -1, %193 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %265
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_get_cfp(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_active_data_rates(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_fill_cap_info(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_802_11_ad_hoc_join(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i16, align 2
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %7 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 61
  store ptr %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 8
  %9 = load i8, ptr %8, align 2
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i16
  %16 = or i16 %15, 8192
  store i16 %16, ptr %4, align 2
  %17 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 40, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %4, i1 noundef zeroext false) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %20, i32 noundef 4, ptr noundef nonnull @.str.24) #9
  br label %184

21:                                               ; preds = %12, %3
  %22 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 46
  store ptr %2, ptr %22, align 4
  store i16 44, ptr %1, align 1
  %23 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 6
  store i8 2, ptr %23, align 1
  %24 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 7
  %25 = load i16, ptr %24, align 8
  %26 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 7
  store i16 %25, ptr %26, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %6, ptr noundef align 8 dereferenceable(6) %2, i32 6, i1 false)
  %27 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  %28 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 1
  %29 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 1, i32 1
  %30 = load i8, ptr %29, align 2
  %31 = zext i8 %30 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %27, ptr align 2 %28, i32 %31, i1 false)
  %32 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 26
  %33 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %32, ptr noundef align 8 dereferenceable(7) %33, i32 7, i1 false)
  %34 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 33
  %35 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 18
  %36 = load i64, ptr %35, align 1
  store i64 %36, ptr %34, align 1
  %37 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 20
  %38 = load i16, ptr %37, align 8
  %39 = and i16 %38, 9727
  %40 = load ptr, ptr %0, align 8
  %41 = zext i16 %39 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %40, i32 noundef 1073741824, ptr noundef nonnull @.str.25, i32 noundef %41, i32 noundef -55809) #9
  %42 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %42, i32 noundef 1073741824, ptr noundef nonnull @.str.26, ptr noundef %6, ptr noundef %27) #9
  %43 = getelementptr %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 11, i32 0
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %99, label %46

46:                                               ; preds = %21
  %47 = getelementptr %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 11, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %99, label %50

50:                                               ; preds = %46
  %51 = getelementptr %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 11, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %99, label %54

54:                                               ; preds = %50
  %55 = getelementptr %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 11, i32 3
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %99, label %58

58:                                               ; preds = %54
  %59 = getelementptr %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 11, i32 4
  %60 = load i8, ptr %59, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %99, label %62

62:                                               ; preds = %58
  %63 = getelementptr %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 11, i32 5
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %99, label %66

66:                                               ; preds = %62
  %67 = getelementptr %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 11, i32 6
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %99, label %70

70:                                               ; preds = %66
  %71 = getelementptr %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 11, i32 7
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %99, label %74

74:                                               ; preds = %70
  %75 = getelementptr %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 11, i32 8
  %76 = load i8, ptr %75, align 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %99, label %78

78:                                               ; preds = %74
  %79 = getelementptr %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 11, i32 9
  %80 = load i8, ptr %79, align 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %99, label %82

82:                                               ; preds = %78
  %83 = getelementptr %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 11, i32 10
  %84 = load i8, ptr %83, align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %82
  %87 = getelementptr %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 11, i32 11
  %88 = load i8, ptr %87, align 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %86
  %91 = getelementptr %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 11, i32 12
  %92 = load i8, ptr %91, align 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = getelementptr %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 11, i32 13
  %96 = load i8, ptr %95, align 1
  %97 = icmp eq i8 %96, 0
  %98 = select i1 %97, i32 13, i32 14
  br label %99

99:                                               ; preds = %94, %90, %86, %82, %78, %74, %70, %66, %62, %58, %54, %50, %46, %21
  %100 = phi i32 [ 0, %21 ], [ 1, %46 ], [ 2, %50 ], [ 3, %54 ], [ 4, %58 ], [ 5, %62 ], [ 6, %66 ], [ 7, %70 ], [ 8, %74 ], [ 9, %78 ], [ 10, %82 ], [ 11, %86 ], [ 12, %90 ], [ %98, %94 ]
  %101 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 43
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(14) %101, i8 0, i32 14, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %101, ptr align 8 %43, i32 %100, i1 false)
  %102 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 4
  store i32 %100, ptr %102, align 4
  %103 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %103, ptr align 8 %43, i32 %100, i1 false)
  %104 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 5
  %105 = load i32, ptr %104, align 8
  %106 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 5
  store i32 %105, ptr %106, align 8
  %107 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 13
  %108 = load i16, ptr %107, align 4
  %109 = trunc i16 %108 to i8
  %110 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 3
  store i8 %109, ptr %110, align 2
  %111 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60
  %112 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 4
  %113 = load i8, ptr %112, align 4
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %99
  %116 = load i8, ptr %111, align 4
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115, %99
  %119 = or i16 %39, 16
  br label %120

120:                                              ; preds = %118, %115
  %121 = phi i16 [ %119, %118 ], [ %39, %115 ]
  %122 = load ptr, ptr %0, align 8
  %123 = getelementptr inbounds %struct.mwifiex_adapter, ptr %122, i32 0, i32 47
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 12032
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %143, label %127

127:                                              ; preds = %120
  store i16 257, ptr %7, align 1
  %128 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 63
  store i16 7, ptr %128, align 1
  %129 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 65
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(7) %129, i8 0, i32 7, i1 false)
  %130 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 17, i32 0, i32 2
  %131 = load i8, ptr %130, align 2
  %132 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 66
  store i8 %131, ptr %132, align 1
  %133 = load ptr, ptr %0, align 8
  %134 = zext i8 %131 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %133, i32 noundef 1073741824, ptr noundef nonnull @.str.27, i32 noundef %134) #9
  %135 = load i16, ptr %107, align 4
  %136 = trunc i16 %135 to i8
  switch i8 %136, label %137 [
    i8 4, label %138
    i8 16, label %138
    i8 20, label %138
    i8 52, label %138
  ]

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %127, %127, %127, %127
  %139 = phi i8 [ 0, %137 ], [ 1, %127 ], [ 1, %127 ], [ 1, %127 ], [ 1, %127 ]
  store i8 %139, ptr %129, align 1
  %140 = load ptr, ptr %0, align 8
  %141 = zext i8 %139 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %140, i32 noundef 1073741824, ptr noundef nonnull @.str.28, i32 noundef %141) #9
  %142 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 72
  store ptr %142, ptr %5, align 4
  br label %143

143:                                              ; preds = %138, %120
  %144 = phi ptr [ %142, %138 ], [ %7, %120 ]
  %145 = phi i32 [ 11, %138 ], [ 0, %120 ]
  %146 = load i8, ptr %111, align 4
  %147 = icmp eq i8 %146, 0
  %148 = icmp eq ptr %144, null
  %149 = or i1 %147, %148
  br i1 %149, label %165, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 63
  %152 = load i8, ptr %151, align 2
  %153 = zext i8 %152 to i16
  store i16 %153, ptr %144, align 1
  %154 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 63, i32 1
  %155 = load i8, ptr %154, align 1
  %156 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %144, i32 0, i32 1
  %157 = zext i8 %155 to i16
  store i16 %157, ptr %156, align 1
  %158 = icmp eq i8 %155, -1
  br i1 %158, label %184, label %159

159:                                              ; preds = %150
  %160 = zext i8 %155 to i32
  %161 = getelementptr inbounds %struct.mwifiex_ie_types_rsn_param_set, ptr %144, i32 0, i32 1
  %162 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 63, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %161, ptr align 2 %162, i32 %160, i1 false) #9
  %163 = add nuw nsw i32 %160, 4
  %164 = getelementptr i8, ptr %144, i32 %163
  store ptr %164, ptr %5, align 4
  br label %165

165:                                              ; preds = %159, %143
  %166 = phi i32 [ %163, %159 ], [ 0, %143 ]
  %167 = add nuw nsw i32 %166, %145
  %168 = load ptr, ptr %0, align 8
  %169 = getelementptr inbounds %struct.mwifiex_adapter, ptr %168, i32 0, i32 47
  %170 = load i32, ptr %169, align 4
  %171 = and i32 %170, 2048
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %165
  %174 = call i32 @mwifiex_cmd_append_11n_tlv(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5) #9
  %175 = add i32 %174, %167
  br label %176

176:                                              ; preds = %173, %165
  %177 = phi i32 [ %175, %173 ], [ %167, %165 ]
  %178 = call i32 @mwifiex_cmd_append_vsie_tlv(ptr noundef %0, i16 noundef zeroext 4, ptr noundef nonnull %5) #9
  %179 = add i32 %178, %177
  %180 = trunc i32 %179 to i16
  %181 = add i16 %180, 101
  %182 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 %181, ptr %182, align 1
  %183 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 41
  store i16 %121, ptr %183, align 1
  br label %184

184:                                              ; preds = %176, %150, %19
  %185 = phi i32 [ -1, %19 ], [ 0, %176 ], [ -1, %150 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  ret i32 %185
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_802_11_ad_hoc(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 46
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.29) #9
  br label %50

9:                                                ; preds = %2
  %10 = load i16, ptr %1, align 1
  %11 = icmp eq i16 %10, 43
  %12 = getelementptr inbounds %struct.host_cmd_ds_802_11_ad_hoc_start_result, ptr %4, i32 0, i32 3
  %13 = select i1 %11, ptr %12, ptr %4
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.30) #9
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %18 = load i8, ptr %17, align 8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %56, label %20

20:                                               ; preds = %16
  %21 = zext i8 %14 to i16
  tail call void @mwifiex_reset_connect_state(ptr noundef %0, i16 noundef zeroext %21, i1 noundef zeroext true) #9
  br label %56

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  store i8 1, ptr %23, align 8
  %24 = load i16, ptr %1, align 1
  %25 = icmp eq i16 %24, 43
  %26 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %6, i32 0, i32 1
  br i1 %25, label %27, label %29

27:                                               ; preds = %22
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.31, ptr noundef %26) #9
  %28 = getelementptr inbounds %struct.host_cmd_ds_802_11_ad_hoc_start_result, ptr %4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(6) %6, ptr noundef align 1 dereferenceable(6) %28, i32 6, i1 false)
  br label %31

29:                                               ; preds = %22
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.32, ptr noundef %26) #9
  %30 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(256) %30, ptr noundef nonnull align 8 dereferenceable(256) %6, i32 256, i1 false)
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i8 [ 1, %27 ], [ 2, %29 ]
  %33 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 58
  store i8 %32, ptr %33, align 2
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 56
  %36 = load i8, ptr %35, align 8
  %37 = zext i8 %36 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %34, i32 noundef 1073741824, ptr noundef nonnull @.str.33, i32 noundef %37) #9
  %38 = load ptr, ptr %0, align 8
  %39 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %38, i32 noundef 1073741824, ptr noundef nonnull @.str.34, ptr noundef %39) #9
  %40 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 6
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %31
  tail call void @netif_carrier_on(ptr noundef %41) #9
  %47 = load ptr, ptr %40, align 4
  br label %48

48:                                               ; preds = %46, %31
  %49 = phi ptr [ %47, %46 ], [ %41, %31 ]
  tail call void @mwifiex_wake_up_net_dev_queue(ptr noundef %49, ptr noundef %3) #9
  tail call void @mwifiex_save_curr_bcn(ptr noundef %0) #9
  br label %50

50:                                               ; preds = %48, %8
  %51 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 60
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %52, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %63

56:                                               ; preds = %20, %16
  %57 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(256) %57, i8 0, i32 256, i1 false)
  %58 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 60
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %59, i32 0, i32 7
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56, %50
  %64 = phi i32 [ -1, %56 ], [ 0, %50 ]
  %65 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 121, i32 1
  store i32 %64, ptr %65, align 4
  br label %66

66:                                               ; preds = %63, %56, %50
  %67 = phi i32 [ -1, %56 ], [ 0, %50 ], [ %64, %63 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_reset_connect_state(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_associate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %35

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 47
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 8192
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 22
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 44
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 84
  %27 = load i8, ptr %26, align 2
  %28 = and i8 %27, 32
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void @mwifiex_set_11ac_ba_params(ptr noundef %0) #9
  br label %32

31:                                               ; preds = %25, %21, %17, %11
  tail call void @mwifiex_set_ba_params(ptr noundef %0) #9
  br label %32

32:                                               ; preds = %31, %30
  %33 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 92
  store i32 0, ptr %33, align 4
  %34 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 18, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %1, i1 noundef zeroext true) #9
  br label %35

35:                                               ; preds = %32, %7, %2
  %36 = phi i32 [ %34, %32 ], [ -1, %7 ], [ -1, %2 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_11ac_ba_params(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_set_ba_params(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_adhoc_start(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 56
  %5 = load i8, ptr %4, align 8
  %6 = zext i8 %5 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.35, i32 noundef %6) #9
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %7, i32 noundef 1073741824, ptr noundef nonnull @.str.36, i32 noundef %9) #9
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 3
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %10, i32 noundef 1073741824, ptr noundef nonnull @.str.37, i32 noundef %13) #9
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 47
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 8192
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 84
  %21 = load i8, ptr %20, align 2
  %22 = and i8 %21, 32
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @mwifiex_set_11ac_ba_params(ptr noundef %0) #9
  br label %26

25:                                               ; preds = %19, %2
  tail call void @mwifiex_set_ba_params(ptr noundef %0) #9
  br label %26

26:                                               ; preds = %25, %24
  %27 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 43, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %1, i1 noundef zeroext true) #9
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_adhoc_join(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.38, ptr noundef %4) #9
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 1, i32 1
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 1073741824, ptr noundef nonnull @.str.39, i32 noundef %8) #9
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %9, i32 noundef 1073741824, ptr noundef nonnull @.str.40, ptr noundef %10) #9
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 1, i32 1
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %11, i32 noundef 1073741824, ptr noundef nonnull @.str.41, i32 noundef %14) #9
  %15 = load i8, ptr %6, align 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = tail call i32 @mwifiex_ssid_cmp(ptr noundef %10, ptr noundef %4) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %25, i32 noundef 1073741824, ptr noundef nonnull @.str.42) #9
  br label %56

26:                                               ; preds = %20, %17, %2
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds %struct.mwifiex_adapter, ptr %27, i32 0, i32 47
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 8192
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 22
  %34 = load i8, ptr %33, align 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %1, i32 0, i32 44
  %38 = load i8, ptr %37, align 2
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.mwifiex_adapter, ptr %27, i32 0, i32 84
  %42 = load i8, ptr %41, align 2
  %43 = and i8 %42, 32
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  tail call void @mwifiex_set_11ac_ba_params(ptr noundef %0) #9
  br label %47

46:                                               ; preds = %40, %36, %32, %26
  tail call void @mwifiex_set_ba_params(ptr noundef %0) #9
  br label %47

47:                                               ; preds = %46, %45
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 5
  %50 = load i32, ptr %49, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %48, i32 noundef 1073741824, ptr noundef nonnull @.str.36, i32 noundef %50) #9
  %51 = load ptr, ptr %0, align 8
  %52 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 3
  %53 = load i8, ptr %52, align 2
  %54 = zext i8 %53 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %51, i32 noundef 1073741824, ptr noundef nonnull @.str.43, i32 noundef %54) #9
  %55 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 44, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %1, i1 noundef zeroext true) #9
  br label %56

56:                                               ; preds = %47, %24
  %57 = phi i32 [ %55, %47 ], [ -1, %24 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ssid_cmp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_deauthenticate(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %5 = load i8, ptr %4, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %9 = load i32, ptr %8, align 8
  switch i32 %9, label %32 [
    i32 2, label %10
    i32 8, label %10
    i32 1, label %28
    i32 3, label %30
  ]

10:                                               ; preds = %7, %7
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #9
  %11 = icmp eq ptr %1, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr %1, align 4
  %14 = getelementptr i8, ptr %1, i32 4
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %13, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12, %10
  %20 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef align 8 dereferenceable(6) %20, i32 6, i1 false) #9
  br label %22

21:                                               ; preds = %12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) %1, i32 6, i1 false) #9
  br label %22

22:                                               ; preds = %21, %19
  %23 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 36, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %3, i1 noundef zeroext true) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  call void @cfg80211_disconnected(ptr noundef %27, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i32 noundef 3264) #9
  br label %32

28:                                               ; preds = %7
  %29 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 64, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #9
  br label %32

30:                                               ; preds = %7
  %31 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 178, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #9
  br label %32

32:                                               ; preds = %30, %28, %25, %22, %7, %2
  %33 = phi i32 [ %31, %30 ], [ %29, %28 ], [ 0, %2 ], [ 0, %7 ], [ %23, %25 ], [ 0, %22 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_disconnected(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_deauthenticate_all(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %14, %1
  %6 = phi i8 [ %15, %14 ], [ %3, %1 ]
  %7 = phi i32 [ %16, %14 ], [ 0, %1 ]
  %8 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @mwifiex_deauthenticate(ptr noundef nonnull %9, ptr noundef null)
  %13 = load i8, ptr %2, align 4
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i8 [ %6, %5 ], [ %13, %11 ]
  %16 = add nuw nsw i32 %7, 1
  %17 = zext i8 %15 to i32
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %5, label %19

19:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
