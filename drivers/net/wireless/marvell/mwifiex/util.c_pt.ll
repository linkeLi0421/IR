; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/util.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/util.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_init_shutdown_fw:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_init_shutdown_fw\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_init_shutdown_fw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_alloc_dma_align_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_alloc_dma_align_buf\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_alloc_dma_align_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_fw_dump_event:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_fw_dump_event\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_fw_dump_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mwifiex_debug_data = type { [32 x i8], i32, i32, i32 }
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
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.mwifiex_sta_node = type { %struct.list_head, [6 x i8], i8, i8, i8, [8 x i8], [8 x i16], i16, i8, i8, %struct.mwifiex_tdls_capab, %struct.mwifiex_station_stats, i8 }
%struct.mwifiex_tdls_capab = type <{ i16, [32 x i8], i8, i8, i8, i8, i16, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_operation, %struct.ieee_types_extcap, %struct.ieee_types_generic, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_operation, i8 }>
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee_types_extcap = type { %struct.ieee_types_header, [8 x i8] }
%struct.ieee_types_header = type { i8, i8 }
%struct.ieee_types_generic = type { %struct.ieee_types_header, [254 x i8] }
%struct.ieee80211_vht_operation = type <{ i8, i8, i8, i16 }>
%struct.mwifiex_station_stats = type { i64, i8, i64, i64, i32, i32, i32, i8, i8 }
%struct.cmd_ctrl_node = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.mwifiex_histogram_data = type { [74 x %struct.atomic_t], [256 x %struct.atomic_t], [256 x %struct.atomic_t], [256 x %struct.atomic_t], %struct.atomic_t }

@.str = private unnamed_addr constant [23 x i8] c"unsupported parameter\0A\00", align 1
@__kstrtab_mwifiex_init_shutdown_fw = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_init_shutdown_fw = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_init_shutdown_fw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_init_shutdown_fw to i32), ptr @__kstrtab_mwifiex_init_shutdown_fw, ptr @__kstrtabns_mwifiex_init_shutdown_fw }, section "___ksymtab_gpl+mwifiex_init_shutdown_fw", align 4
@items = internal global [47 x %struct.mwifiex_debug_data] [%struct.mwifiex_debug_data { [32 x i8] c"debug_mask\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 0, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"int_counter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"wmm_ac_vo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 20, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"wmm_ac_vi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"wmm_ac_be\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 12, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"wmm_ac_bk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"tx_buf_size\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 40, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"curr_tx_buf_size\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 44, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"ps_mode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4480, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"ps_state\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4484, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"is_deep_sleep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4488, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"wakeup_dev_req\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4489, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"wakeup_tries\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4492, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"hs_configured\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4496, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"hs_activated\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4497, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_tx_timeout\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4536, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"is_cmd_timedout\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4540, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"timeout_cmd_id\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4542, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"timeout_cmd_act\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4544, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"last_cmd_id\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10, i32 4546, i32 5 }, %struct.mwifiex_debug_data { [32 x i8] c"last_cmd_act\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10, i32 4556, i32 5 }, %struct.mwifiex_debug_data { [32 x i8] c"last_cmd_index\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4566, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"last_cmd_resp_id\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10, i32 4568, i32 5 }, %struct.mwifiex_debug_data { [32 x i8] c"last_cmd_resp_index\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4578, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"last_event\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10, i32 4580, i32 5 }, %struct.mwifiex_debug_data { [32 x i8] c"last_event_index\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4590, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"last_mp_wr_bitmap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40, i32 4596, i32 10 }, %struct.mwifiex_debug_data { [32 x i8] c"last_mp_wr_ports\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40, i32 4636, i32 10 }, %struct.mwifiex_debug_data { [32 x i8] c"last_mp_wr_len\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40, i32 4676, i32 10 }, %struct.mwifiex_debug_data { [32 x i8] c"last_mp_curr_wr_port\00\00\00\00\00\00\00\00\00\00\00\00", i32 40, i32 4716, i32 10 }, %struct.mwifiex_debug_data { [32 x i8] c"last_sdio_mp_index\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4756, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_cmd_h2c_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4500, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_cmd_sleep_cfm_fail\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4504, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_tx_h2c_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4508, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_evt_deauth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4512, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_evt_disassoc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4516, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_evt_link_lost\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4520, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_cmd_deauth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4524, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_cmd_assoc_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4528, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"num_cmd_assoc_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4532, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"cmd_sent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4593, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"data_sent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4592, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"cmd_resp_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4594, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"event_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4595, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"cmd_pending\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 248, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"tx_pending\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 244, i32 1 }, %struct.mwifiex_debug_data { [32 x i8] c"rx_pending\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 240, i32 1 }], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%#lx \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Tx BA stream table:\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"tid = %d, ra = %pM\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Rx reorder table:\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"tid = %d, ta = %pM, \00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"start_win = %d, \00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"win_size = %d, buffer: \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"TDLS peer table:\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"peer = %pM\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"do not receive mgmt frames on uninitialized intf\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.14 = private unnamed_addr constant [44 x i8] c"drivers/net/wireless/marvell/mwifiex/util.c\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"cmd completed: status=%d\0A\00", align 1
@__kstrtab_mwifiex_alloc_dma_align_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_alloc_dma_align_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_alloc_dma_align_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_alloc_dma_align_buf to i32), ptr @__kstrtab_mwifiex_alloc_dma_align_buf, ptr @__kstrtabns_mwifiex_alloc_dma_align_buf }, section "___ksymtab_gpl+mwifiex_alloc_dma_align_buf", align 4
@__kstrtab_mwifiex_fw_dump_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_fw_dump_event = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_fw_dump_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_fw_dump_event to i32), ptr @__kstrtab_mwifiex_fw_dump_event, ptr @__kstrtabns_mwifiex_fw_dump_event }, section "___ksymtab_gpl+mwifiex_fw_dump_event", align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"TDLS discovery response %pM nf=%d, snr=%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"drop BACK action frames\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"unknown public action frame category %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"unknown mgmt frame subtype %#x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_mwifiex_alloc_dma_align_buf, ptr @__ksymtab_mwifiex_fw_dump_event, ptr @__ksymtab_mwifiex_init_shutdown_fw], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_init_fw_complete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 45
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 18, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %7(ptr noundef %0) #10
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 15
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %13, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_init_shutdown_fw(ptr noundef %0, i32 noundef %1) #0 {
  switch i32 %1, label %4 [
    i32 1, label %6
    i32 2, label %3
  ]

3:                                                ; preds = %2
  br label %6

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 4, ptr noundef nonnull @.str) #10
  br label %9

6:                                                ; preds = %3, %2
  %7 = phi i16 [ 170, %3 ], [ 169, %2 ]
  %8 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext %7, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #10
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi i32 [ %8, %6 ], [ -1, %4 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_debug_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %129, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %1, align 4
  %8 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 2
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 77, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %8, ptr noundef align 4 dereferenceable(32) %9, i32 32, i1 false)
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 40
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 4
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 39
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 8
  %19 = tail call i32 @mwifiex_get_rx_reorder_tbl(ptr noundef %0, ptr noundef %18) #10
  %20 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 7
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 6
  %22 = tail call i32 @mwifiex_get_tx_ba_stream_tbl(ptr noundef %0, ptr noundef %21) #10
  %23 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 5
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 10
  %25 = tail call i32 @mwifiex_get_tdls_list(ptr noundef %0, ptr noundef %24) #10
  %26 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 9
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 89
  %28 = load i16, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 11
  store i16 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 90
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 12
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 98
  %34 = load i8, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 13
  store i8 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 102
  %37 = load i8, ptr %36, align 2
  %38 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 14
  store i8 %37, ptr %38, align 1
  %39 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 105
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 15
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 12
  %43 = load volatile i32, ptr %42, align 4
  %44 = trunc i32 %43 to i8
  %45 = lshr i8 %44, 3
  %46 = and i8 %45, 1
  %47 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 16
  store i8 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 108
  %49 = load i8, ptr %48, align 2
  %50 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 17
  store i8 %49, ptr %50, align 1
  %51 = load volatile i32, ptr %42, align 4
  %52 = trunc i32 %51 to i8
  %53 = lshr i8 %52, 1
  %54 = and i8 %53, 1
  %55 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 28
  store i8 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 18
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 19
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 20
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 21
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 22
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 23
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 24
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 7
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 25
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 8
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 26
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 9
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 27
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 10
  %87 = load i16, ptr %86, align 4
  %88 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 29
  store i16 %87, ptr %88, align 2
  %89 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 11
  %90 = load i16, ptr %89, align 2
  %91 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 30
  store i16 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 31
  %93 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(10) %92, ptr noundef align 4 dereferenceable(10) %93, i32 10, i1 false)
  %94 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 32
  %95 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(10) %94, ptr noundef align 2 dereferenceable(10) %95, i32 10, i1 false)
  %96 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 14
  %97 = load i16, ptr %96, align 4
  %98 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 33
  store i16 %97, ptr %98, align 2
  %99 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 34
  %100 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(10) %99, ptr noundef align 2 dereferenceable(10) %100, i32 10, i1 false)
  %101 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 16
  %102 = load i16, ptr %101, align 4
  %103 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 35
  store i16 %102, ptr %103, align 2
  %104 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 36
  %105 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(10) %104, ptr noundef align 2 dereferenceable(10) %105, i32 10, i1 false)
  %106 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 18
  %107 = load i16, ptr %106, align 4
  %108 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 37
  store i16 %107, ptr %108, align 2
  %109 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 42
  %110 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 19
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %109, ptr noundef align 4 dereferenceable(40) %110, i32 40, i1 false)
  %111 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 43
  %112 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 20
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %111, ptr noundef align 4 dereferenceable(40) %112, i32 40, i1 false)
  %113 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 45
  %114 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 22
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %113, ptr noundef align 4 dereferenceable(40) %114, i32 40, i1 false)
  %115 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 44
  %116 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 21
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %115, ptr noundef align 4 dereferenceable(40) %116, i32 40, i1 false)
  %117 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 118, i32 23
  %118 = load i8, ptr %117, align 4
  %119 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 46
  store i8 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 53
  %121 = load i8, ptr %120, align 4
  %122 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 38
  store i8 %121, ptr %122, align 4
  %123 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 54
  %124 = load i8, ptr %123, align 1
  %125 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 39
  store i8 %124, ptr %125, align 1
  %126 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 55
  %127 = load i8, ptr %126, align 2
  %128 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %1, i32 0, i32 40
  store i8 %127, ptr %128, align 2
  br label %129

129:                                              ; preds = %4, %2
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_rx_reorder_tbl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_tx_ba_stream_tbl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_get_tdls_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_debug_info_to_buffer(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %149, label %5

5:                                                ; preds = %54, %3
  %6 = phi ptr [ %56, %54 ], [ %1, %3 ]
  %7 = phi i32 [ %57, %54 ], [ 0, %3 ]
  %8 = getelementptr %struct.mwifiex_debug_data, ptr @items, i32 %7
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef %8)
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = getelementptr %struct.mwifiex_debug_data, ptr @items, i32 %7, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.mwifiex_debug_data, ptr @items, i32 %7, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = udiv i32 %12, %14
  %16 = icmp ult i32 %7, 44
  %17 = getelementptr %struct.mwifiex_debug_data, ptr @items, i32 %7, i32 2
  %18 = load i32, ptr %17, align 4
  br i1 %16, label %21, label %19

19:                                               ; preds = %5
  %20 = load ptr, ptr %0, align 8
  br label %21

21:                                               ; preds = %19, %5
  %22 = phi ptr [ %20, %19 ], [ %2, %5 ]
  %23 = icmp sgt i32 %14, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %21
  %25 = ptrtoint ptr %22 to i32
  %26 = add i32 %18, %25
  br label %27

27:                                               ; preds = %46, %24
  %28 = phi ptr [ %49, %46 ], [ %10, %24 ]
  %29 = phi i32 [ %50, %46 ], [ %26, %24 ]
  %30 = phi i32 [ %51, %46 ], [ 0, %24 ]
  switch i32 %15, label %46 [
    i32 1, label %31
    i32 2, label %35
    i32 4, label %39
    i32 8, label %42
  ]

31:                                               ; preds = %27
  %32 = inttoptr i32 %29 to ptr
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  br label %46

35:                                               ; preds = %27
  %36 = inttoptr i32 %29 to ptr
  %37 = load i16, ptr %36, align 1
  %38 = zext i16 %37 to i32
  br label %46

39:                                               ; preds = %27
  %40 = inttoptr i32 %29 to ptr
  %41 = load i32, ptr %40, align 1
  br label %46

42:                                               ; preds = %27
  %43 = inttoptr i32 %29 to ptr
  %44 = load i64, ptr %43, align 1
  %45 = trunc i64 %44 to i32
  br label %46

46:                                               ; preds = %42, %39, %35, %31, %27
  %47 = phi i32 [ %45, %42 ], [ %41, %39 ], [ %38, %35 ], [ %34, %31 ], [ -1, %27 ]
  %48 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %28, ptr noundef nonnull @.str.2, i32 noundef %47)
  %49 = getelementptr i8, ptr %28, i32 %48
  %50 = add i32 %29, %15
  %51 = add nuw nsw i32 %30, 1
  %52 = load i32, ptr %13, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %27, label %54

54:                                               ; preds = %46, %21
  %55 = phi ptr [ %10, %21 ], [ %49, %46 ]
  store i16 10, ptr %55, align 1
  %56 = getelementptr i8, ptr %55, i32 1
  %57 = add nuw nsw i32 %7, 1
  %58 = icmp eq i32 %57, 47
  br i1 %58, label %59, label %5

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %2, i32 0, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %59
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(21) %56, ptr noundef nonnull align 1 dereferenceable(21) @.str.4, i32 21, i1 false)
  %64 = getelementptr i8, ptr %55, i32 21
  %65 = load i32, ptr %60, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %67, %63
  %68 = phi ptr [ %75, %67 ], [ %64, %63 ]
  %69 = phi i32 [ %76, %67 ], [ 0, %63 ]
  %70 = getelementptr %struct.mwifiex_debug_info, ptr %2, i32 0, i32 6, i32 %69
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %71 to i32
  %73 = getelementptr %struct.mwifiex_debug_info, ptr %2, i32 0, i32 6, i32 %69, i32 1
  %74 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %68, ptr noundef nonnull @.str.5, i32 noundef %72, ptr noundef %73)
  %75 = getelementptr i8, ptr %68, i32 %74
  %76 = add nuw i32 %69, 1
  %77 = load i32, ptr %60, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %67, label %79

79:                                               ; preds = %67, %63, %59
  %80 = phi ptr [ %56, %59 ], [ %64, %63 ], [ %75, %67 ]
  %81 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %2, i32 0, i32 7
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %125, label %84

84:                                               ; preds = %79
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(19) %80, ptr noundef nonnull align 1 dereferenceable(19) @.str.6, i32 19, i1 false)
  %85 = getelementptr i8, ptr %80, i32 18
  %86 = load i32, ptr %81, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %125, label %88

88:                                               ; preds = %119, %84
  %89 = phi ptr [ %121, %119 ], [ %85, %84 ]
  %90 = phi i32 [ %122, %119 ], [ 0, %84 ]
  %91 = getelementptr %struct.mwifiex_debug_info, ptr %2, i32 0, i32 8, i32 %90
  %92 = load i16, ptr %91, align 4
  %93 = zext i16 %92 to i32
  %94 = getelementptr %struct.mwifiex_debug_info, ptr %2, i32 0, i32 8, i32 %90, i32 1
  %95 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %89, ptr noundef nonnull @.str.7, i32 noundef %93, ptr noundef %94)
  %96 = getelementptr i8, ptr %89, i32 %95
  %97 = getelementptr %struct.mwifiex_debug_info, ptr %2, i32 0, i32 8, i32 %90, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %96, ptr noundef nonnull @.str.8, i32 noundef %98)
  %100 = getelementptr i8, ptr %96, i32 %99
  %101 = getelementptr %struct.mwifiex_debug_info, ptr %2, i32 0, i32 8, i32 %90, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %100, ptr noundef nonnull @.str.9, i32 noundef %102)
  %104 = getelementptr i8, ptr %100, i32 %103
  %105 = load i32, ptr %101, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %107, %88
  %108 = phi ptr [ %115, %107 ], [ %104, %88 ]
  %109 = phi i32 [ %116, %107 ], [ 0, %88 ]
  %110 = getelementptr %struct.mwifiex_debug_info, ptr %2, i32 0, i32 8, i32 %90, i32 4, i32 %109
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, i32 48, i32 49
  %114 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %108, ptr noundef nonnull @.str.10, i32 noundef %113)
  %115 = getelementptr i8, ptr %108, i32 %114
  %116 = add nuw i32 %109, 1
  %117 = load i32, ptr %101, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %107, label %119

119:                                              ; preds = %107, %88
  %120 = phi ptr [ %104, %88 ], [ %115, %107 ]
  store i16 10, ptr %120, align 1
  %121 = getelementptr i8, ptr %120, i32 1
  %122 = add nuw i32 %90, 1
  %123 = load i32, ptr %81, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %88, label %125

125:                                              ; preds = %119, %84, %79
  %126 = phi ptr [ %80, %79 ], [ %85, %84 ], [ %121, %119 ]
  %127 = getelementptr inbounds %struct.mwifiex_debug_info, ptr %2, i32 0, i32 9
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %144, label %130

130:                                              ; preds = %125
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(18) %126, ptr noundef nonnull align 1 dereferenceable(18) @.str.11, i32 18, i1 false)
  %131 = getelementptr i8, ptr %126, i32 17
  %132 = load i32, ptr %127, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %134, %130
  %135 = phi ptr [ %140, %134 ], [ %131, %130 ]
  %136 = phi i32 [ %141, %134 ], [ 0, %130 ]
  %137 = getelementptr %struct.mwifiex_debug_info, ptr %2, i32 0, i32 10, i32 %136
  %138 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %135, ptr noundef nonnull @.str.12, ptr noundef %137)
  %139 = getelementptr i8, ptr %135, i32 %138
  store i16 10, ptr %139, align 1
  %140 = getelementptr i8, ptr %139, i32 1
  %141 = add nuw i32 %136, 1
  %142 = load i32, ptr %127, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %134, label %144

144:                                              ; preds = %134, %130, %125
  %145 = phi ptr [ %126, %125 ], [ %131, %130 ], [ %140, %134 ]
  %146 = ptrtoint ptr %145 to i32
  %147 = ptrtoint ptr %1 to i32
  %148 = sub i32 %146, %147
  br label %149

149:                                              ; preds = %144, %3
  %150 = phi i32 [ %148, %144 ], [ 0, %3 ]
  ret i32 %150
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_mgmt_packet(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %78, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 127
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 103, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8, %4
  %14 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %14, i32 noundef 4, ptr noundef nonnull @.str.13) #10
  br label %78

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.rxpd, ptr %17, i32 0, i32 3
  %19 = load i16, ptr %18, align 1
  %20 = zext i16 %19 to i32
  %21 = tail call ptr @skb_pull(ptr noundef nonnull %1, i32 noundef %20) #10
  %22 = tail call ptr @skb_pull(ptr noundef nonnull %1, i32 noundef 2) #10
  %23 = getelementptr inbounds %struct.rxpd, ptr %17, i32 0, i32 2
  %24 = load i16, ptr %23, align 1
  %25 = load ptr, ptr %16, align 4
  %26 = load i16, ptr %25, align 2
  %27 = and i16 %26, 12
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %15
  %30 = and i16 %26, 240
  %31 = icmp eq i16 %30, 208
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %25, i32 30
  %34 = load i8, ptr %33, align 1
  switch i8 %34, label %50 [
    i8 4, label %35
    i8 3, label %56
  ]

35:                                               ; preds = %32
  %36 = getelementptr i8, ptr %25, i32 31
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 14
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ieee80211_hdr, ptr %25, i32 0, i32 3
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr inbounds %struct.rxpd, ptr %17, i32 0, i32 9
  %43 = load i8, ptr %42, align 1
  %44 = sext i8 %43 to i32
  %45 = getelementptr inbounds %struct.rxpd, ptr %17, i32 0, i32 8
  %46 = load i8, ptr %45, align 1
  %47 = sext i8 %46 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %41, i32 noundef 1073741824, ptr noundef nonnull @.str.16, ptr noundef %40, i32 noundef %44, i32 noundef %47) #10
  %48 = load i8, ptr %45, align 1
  %49 = load i8, ptr %42, align 1
  tail call void @mwifiex_auto_tdls_update_peer_signal(ptr noundef %0, ptr noundef %40, i8 noundef signext %48, i8 noundef signext %49) #10
  br label %58

50:                                               ; preds = %32
  %51 = zext i8 %34 to i32
  %52 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %52, i32 noundef 1073741824, ptr noundef nonnull @.str.18, i32 noundef %51) #10
  br label %58

53:                                               ; preds = %29
  %54 = zext i16 %30 to i32
  %55 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %55, i32 noundef 1073741824, ptr noundef nonnull @.str.19, i32 noundef %54) #10
  br label %58

56:                                               ; preds = %32
  %57 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %57, i32 noundef 1073741824, ptr noundef nonnull @.str.17) #10
  br label %78

58:                                               ; preds = %53, %50, %39, %35, %15
  %59 = load ptr, ptr %16, align 4
  %60 = getelementptr i8, ptr %59, i32 24
  %61 = getelementptr i8, ptr %59, i32 30
  %62 = zext i16 %24 to i32
  %63 = add nsw i32 %62, -30
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %60, ptr align 1 %61, i32 %63, i1 false)
  %64 = add i16 %24, -8
  store i16 %64, ptr %23, align 1
  %65 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 129, i32 1, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.rxpd, ptr %17, i32 0, i32 8
  %68 = load i8, ptr %67, align 1
  %69 = sext i8 %68 to i32
  %70 = getelementptr inbounds %struct.rxpd, ptr %17, i32 0, i32 9
  %71 = load i8, ptr %70, align 1
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, %69
  %74 = load ptr, ptr %16, align 4
  %75 = zext i16 %64 to i32
  %76 = mul i32 %66, 1000
  %77 = tail call zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef %9, i32 noundef %76, i32 noundef %73, ptr noundef %74, i32 noundef %75, i32 noundef 0) #10
  br label %78

78:                                               ; preds = %58, %56, %13, %2
  %79 = phi i32 [ -1, %13 ], [ 0, %58 ], [ -1, %2 ], [ -1, %56 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_recv_packet(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %70, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 16
  %8 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 16, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, %6
  store i32 %10, ptr %8, align 8
  %11 = load i32, ptr %7, align 8
  %12 = add i32 %11, 1
  store i32 %12, ptr %7, align 8
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %46, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ethhdr, ptr %19, i32 0, i32 1
  %21 = icmp eq ptr %20, null
  br i1 %21, label %46, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 79
  br label %24

24:                                               ; preds = %28, %22
  %25 = phi ptr [ %23, %22 ], [ %26, %28 ]
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, %23
  br i1 %27, label %46, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %26, i32 0, i32 1
  %30 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %29, ptr noundef nonnull dereferenceable(6) %20, i32 6) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %24

32:                                               ; preds = %28
  %33 = icmp eq ptr %26, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %32
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %26, i32 0, i32 11
  store i64 %36, ptr %37, align 8
  %38 = load i32, ptr %5, align 8
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %26, i32 0, i32 11, i32 2
  %41 = load i64, ptr %40, align 8
  %42 = add i64 %41, %39
  store i64 %42, ptr %40, align 8
  %43 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %26, i32 0, i32 11, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 8
  br label %46

46:                                               ; preds = %34, %32, %24, %17, %4
  %47 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 2
  store ptr %48, ptr %49, align 8
  %50 = load ptr, ptr %47, align 4
  %51 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %1, ptr noundef %50) #10
  %52 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  store i16 %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %54 = load i16, ptr %53, align 8
  %55 = and i16 %54, -97
  store i16 %55, ptr %53, align 8
  %56 = load ptr, ptr %0, align 8
  %57 = load i8, ptr %56, align 4
  %58 = add i8 %57, -1
  %59 = icmp ult i8 %58, 2
  br i1 %59, label %60, label %68

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %62 = load i32, ptr %61, align 8
  %63 = icmp ugt i32 %62, 4096
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, ptr %5, align 8
  %66 = add i32 %62, -4096
  %67 = add i32 %66, %65
  store i32 %67, ptr %61, align 8
  br label %68

68:                                               ; preds = %64, %60, %46
  %69 = tail call i32 @netif_rx_any_context(ptr noundef nonnull %1) #10
  br label %70

70:                                               ; preds = %68, %2
  %71 = phi i32 [ 0, %68 ], [ -1, %2 ]
  ret i32 %71
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @mwifiex_get_sta_entry(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 79
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %8, i32 0, i32 1
  %12 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %11, ptr noundef nonnull dereferenceable(6) %1, i32 6)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %6

14:                                               ; preds = %10, %6, %2
  %15 = phi ptr [ null, %2 ], [ null, %6 ], [ %8, %10 ]
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_any_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_complete_cmd(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 121
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 121, i32 1
  %10 = load i32, ptr %9, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %10) #10
  %11 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  store i8 1, ptr %12, align 1
  tail call void @__wake_up(ptr noundef %8, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i8 @mwifiex_is_tdls_chan_switching(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 47
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16384
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 79
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %10, %9 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %13, i32 0, i32 8
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 5
  br i1 %18, label %19, label %11

19:                                               ; preds = %15, %11
  %20 = phi ptr [ %13, %15 ], [ null, %11 ]
  %21 = icmp ne ptr %20, null
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %19, %3, %1
  %24 = phi i8 [ 0, %3 ], [ 0, %1 ], [ %22, %19 ]
  ret i8 %24
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i8 @mwifiex_is_tdls_off_chan(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 47
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16384
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 79
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %10, %9 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %13, i32 0, i32 8
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 7
  br i1 %18, label %19, label %11

19:                                               ; preds = %15, %11
  %20 = phi ptr [ %13, %15 ], [ null, %11 ]
  %21 = icmp ne ptr %20, null
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %19, %3, %1
  %24 = phi i8 [ 0, %3 ], [ 0, %1 ], [ %22, %19 ]
  ret i8 %24
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i8 @mwifiex_is_send_cmd_allowed(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 47
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16384
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 79
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %10, %9 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %13, i32 0, i32 8
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 5
  br i1 %18, label %19, label %11

19:                                               ; preds = %15
  %20 = icmp eq ptr %13, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %19, %11
  br label %22

22:                                               ; preds = %26, %21
  %23 = phi ptr [ %24, %26 ], [ %10, %21 ]
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, %10
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %24, i32 0, i32 8
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 7
  br i1 %29, label %30, label %22

30:                                               ; preds = %26, %22
  %31 = phi ptr [ %24, %26 ], [ null, %22 ]
  %32 = icmp eq ptr %31, null
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %30, %19, %3, %1
  %35 = phi i8 [ 1, %3 ], [ 1, %1 ], [ 0, %19 ], [ %33, %30 ]
  ret i8 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mwifiex_add_sta_entry(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 79
  br label %7

7:                                                ; preds = %11, %4
  %8 = phi ptr [ %6, %4 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %9, i32 0, i32 1
  %13 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %12, ptr noundef nonnull dereferenceable(6) %1, i32 6) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = icmp eq ptr %9, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %15, %7
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 2848, i32 noundef 480) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %19, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %22, ptr noundef nonnull align 1 dereferenceable(6) %1, i32 6, i1 false)
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 79, i32 1
  %24 = load ptr, ptr %23, align 4
  store ptr %19, ptr %23, align 4
  store ptr %6, ptr %19, align 8
  %25 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  store volatile ptr %19, ptr %24, align 4
  br label %26

26:                                               ; preds = %21, %17, %15
  %27 = phi ptr [ %9, %15 ], [ %19, %21 ], [ null, %17 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #10
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ null, %2 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_set_sta_ht_cap(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 45, ptr noundef nonnull %1, i32 noundef %2, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = getelementptr %struct.ieee_types_header, ptr %7, i32 1
  %11 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %3, i32 0, i32 3
  store i8 1, ptr %11, align 1
  %12 = load i16, ptr %10, align 1
  %13 = and i16 %12, 2048
  %14 = icmp eq i16 %13, 0
  %15 = select i1 %14, i16 4096, i16 8192
  %16 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %3, i32 0, i32 7
  store i16 %15, ptr %16, align 2
  br label %19

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %3, i32 0, i32 3
  store i8 0, ptr %18, align 1
  br label %19

19:                                               ; preds = %17, %9, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_del_sta_entry(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #10
  %4 = icmp eq ptr %1, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 79
  br label %7

7:                                                ; preds = %11, %5
  %8 = phi ptr [ %6, %5 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mwifiex_sta_node, ptr %9, i32 0, i32 1
  %13 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %12, ptr noundef nonnull dereferenceable(6) %1, i32 6) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = icmp eq ptr %9, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  tail call void @kfree(ptr noundef nonnull %9) #10
  br label %22

22:                                               ; preds = %17, %15, %7, %2
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_del_all_sta_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 80
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 79
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %13, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %8, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @kfree(ptr noundef %7) #10
  %12 = icmp eq ptr %8, %3
  br i1 %12, label %13, label %6

13:                                               ; preds = %6, %1
  store volatile ptr %3, ptr %3, align 4
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 79, i32 1
  store ptr %3, ptr %14, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_hist_data_add(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef signext %2, i8 noundef signext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 149
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mwifiex_histogram_data, ptr %6, i32 0, i32 4
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 1048576
  br i1 %9, label %10, label %33

10:                                               ; preds = %4
  store volatile i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %11, %10
  %12 = phi i32 [ 0, %10 ], [ %14, %11 ]
  %13 = getelementptr [74 x %struct.atomic_t], ptr %6, i32 0, i32 %12
  store volatile i32 0, ptr %13, align 4
  %14 = add nuw nsw i32 %12, 1
  %15 = icmp eq i32 %14, 74
  br i1 %15, label %16, label %11

16:                                               ; preds = %16, %11
  %17 = phi i32 [ %19, %16 ], [ 0, %11 ]
  %18 = getelementptr %struct.mwifiex_histogram_data, ptr %6, i32 0, i32 1, i32 %17
  store volatile i32 0, ptr %18, align 4
  %19 = add nuw nsw i32 %17, 1
  %20 = icmp eq i32 %19, 256
  br i1 %20, label %21, label %16

21:                                               ; preds = %21, %16
  %22 = phi i32 [ %24, %21 ], [ 0, %16 ]
  %23 = getelementptr %struct.mwifiex_histogram_data, ptr %6, i32 0, i32 2, i32 %22
  store volatile i32 0, ptr %23, align 4
  %24 = add nuw nsw i32 %22, 1
  %25 = icmp eq i32 %24, 256
  br i1 %25, label %26, label %21

26:                                               ; preds = %26, %21
  %27 = phi i32 [ %29, %26 ], [ 0, %21 ]
  %28 = getelementptr %struct.mwifiex_histogram_data, ptr %6, i32 0, i32 3, i32 %27
  store volatile i32 0, ptr %28, align 4
  %29 = add nuw nsw i32 %27, 1
  %30 = icmp eq i32 %29, 256
  br i1 %30, label %31, label %26

31:                                               ; preds = %26
  %32 = load ptr, ptr %5, align 4
  br label %33

33:                                               ; preds = %31, %4
  %34 = phi ptr [ %32, %31 ], [ %6, %4 ]
  %35 = sub i8 0, %3
  %36 = sext i8 %2 to i32
  %37 = sub i8 %2, %3
  %38 = getelementptr inbounds %struct.mwifiex_histogram_data, ptr %34, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #10, !srcloc !9
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #10, !srcloc !10
  %40 = zext i8 %1 to i32
  %41 = getelementptr [74 x %struct.atomic_t], ptr %34, i32 0, i32 %40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #10, !srcloc !9
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #10, !srcloc !10
  %43 = add nsw i32 %36, 128
  %44 = getelementptr %struct.mwifiex_histogram_data, ptr %34, i32 0, i32 1, i32 %43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #10, !srcloc !9
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #10, !srcloc !10
  %46 = sext i8 %35 to i32
  %47 = add nsw i32 %46, 128
  %48 = getelementptr %struct.mwifiex_histogram_data, ptr %34, i32 0, i32 2, i32 %47
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #10, !srcloc !9
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #10, !srcloc !10
  %50 = sext i8 %37 to i32
  %51 = add nsw i32 %50, 128
  %52 = getelementptr %struct.mwifiex_histogram_data, ptr %34, i32 0, i32 3, i32 %51
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #10, !srcloc !9
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #10, !srcloc !10
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_hist_data_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 149
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mwifiex_histogram_data, ptr %3, i32 0, i32 4
  store volatile i32 0, ptr %4, align 4
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi i32 [ 0, %1 ], [ %8, %5 ]
  %7 = getelementptr [74 x %struct.atomic_t], ptr %3, i32 0, i32 %6
  store volatile i32 0, ptr %7, align 4
  %8 = add nuw nsw i32 %6, 1
  %9 = icmp eq i32 %8, 74
  br i1 %9, label %10, label %5

10:                                               ; preds = %10, %5
  %11 = phi i32 [ %13, %10 ], [ 0, %5 ]
  %12 = getelementptr %struct.mwifiex_histogram_data, ptr %3, i32 0, i32 1, i32 %11
  store volatile i32 0, ptr %12, align 4
  %13 = add nuw nsw i32 %11, 1
  %14 = icmp eq i32 %13, 256
  br i1 %14, label %15, label %10

15:                                               ; preds = %15, %10
  %16 = phi i32 [ %18, %15 ], [ 0, %10 ]
  %17 = getelementptr %struct.mwifiex_histogram_data, ptr %3, i32 0, i32 2, i32 %16
  store volatile i32 0, ptr %17, align 4
  %18 = add nuw nsw i32 %16, 1
  %19 = icmp eq i32 %18, 256
  br i1 %19, label %20, label %15

20:                                               ; preds = %20, %15
  %21 = phi i32 [ %23, %20 ], [ 0, %15 ]
  %22 = getelementptr %struct.mwifiex_histogram_data, ptr %3, i32 0, i32 3, i32 %21
  store volatile i32 0, ptr %22, align 4
  %23 = add nuw nsw i32 %21, 1
  %24 = icmp eq i32 %23, 256
  br i1 %24, label %25, label %20

25:                                               ; preds = %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_hist_data_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef signext %2, i8 noundef signext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 149
  %6 = load ptr, ptr %5, align 4
  %7 = sub i8 0, %3
  %8 = sext i8 %2 to i32
  %9 = sub i8 %2, %3
  %10 = getelementptr inbounds %struct.mwifiex_histogram_data, ptr %6, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #10, !srcloc !9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #10, !srcloc !10
  %12 = zext i8 %1 to i32
  %13 = getelementptr [74 x %struct.atomic_t], ptr %6, i32 0, i32 %12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #10, !srcloc !9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #10, !srcloc !10
  %15 = add nsw i32 %8, 128
  %16 = getelementptr %struct.mwifiex_histogram_data, ptr %6, i32 0, i32 1, i32 %15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #10, !srcloc !9
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #10, !srcloc !10
  %18 = sext i8 %7 to i32
  %19 = add nsw i32 %18, 128
  %20 = getelementptr %struct.mwifiex_histogram_data, ptr %6, i32 0, i32 2, i32 %19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #10, !srcloc !9
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #10, !srcloc !10
  %22 = sext i8 %9 to i32
  %23 = add nsw i32 %22, 128
  %24 = getelementptr %struct.mwifiex_histogram_data, ptr %6, i32 0, i32 3, i32 %23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #10, !srcloc !9
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #10, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mwifiex_alloc_dma_align_buf(i32 noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %0, 128
  %4 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %3, i32 noundef %1) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 64
  %10 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 14
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 64
  %13 = ptrtoint ptr %9 to i32
  %14 = add i32 %13, 63
  %15 = and i32 %14, -64
  %16 = sub i32 %15, %13
  %17 = getelementptr i8, ptr %9, i32 %16
  store ptr %17, ptr %7, align 4
  %18 = getelementptr i8, ptr %12, i32 %16
  store ptr %18, ptr %10, align 8
  br label %19

19:                                               ; preds = %6, %2
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_fw_dump_event(ptr noundef %0) #0 {
  %2 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 293, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_auto_tdls_update_peer_signal(ptr noundef, ptr noundef, i8 noundef signext, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_rx_mgmt_khz(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 723788, i64 2148213759, i64 2148213785, i64 2148213832, i64 2148213854, i64 2148213882, i64 2148213902}
!10 = !{i64 2148225174, i64 2148225200, i64 2148225229, i64 2148225263, i64 2148225294, i64 2148225317}
