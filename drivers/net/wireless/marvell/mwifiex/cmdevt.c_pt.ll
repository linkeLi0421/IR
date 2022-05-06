; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/cmdevt.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/cmdevt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_process_hs_config:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_process_hs_config\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_process_hs_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_process_sleep_confirm_resp:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_process_sleep_confirm_resp\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_process_sleep_confirm_resp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cmd_ctrl_node = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
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
%struct.sk_buff_head = type { %union.anon.50, i32, %struct.spinlock }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr }
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
%struct.host_cmd_ds_command = type { i16, i16, i16, i16, %union.anon.148 }
%union.anon.148 = type <{ %struct.host_cmd_ds_802_11_rssi_info, [212 x i8] }>
%struct.host_cmd_ds_802_11_rssi_info = type { i16, i16, i16, [9 x i16], i64 }
%struct.mwifiex_ds_misc_cmd = type { i32, [2048 x i8] }
%struct.mwifiex_opt_sleep_confirm = type { i16, i16, i16, i16, i16, i16 }
%struct.mwifiex_ie_types_header = type { i16, i16 }
%struct.mwifiex_ds_auto_ds = type { i16, i16 }
%struct.mwifiex_ie_types_auto_ds_param = type { %struct.mwifiex_ie_types_header, i16 }
%struct.hw_spec_api_rev = type { %struct.mwifiex_ie_types_header, i16, i8, i8 }
%struct.hw_spec_max_conn = type { %struct.mwifiex_ie_types_header, i8, i8 }

@.str = private unnamed_addr constant [40 x i8] c"cmd: FREE_CMD: cmd=%#x, cmd_pending=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"unable to allocate command buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"info: FREE_CMD_BUF: cmd_pool is null\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"cmd: free cmd buffer %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"cmd: free cmd pool\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Event Buf:\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"EVENT: cause: %#x\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"\013mwifiex: PREP_CMD: adapter is NULL\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"PREP_CMD: device in suspended state\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"PREP_CMD: host entering sleep state\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"PREP_CMD: card is removed\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"PREP_CMD: FW is in bad state\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"PREP_CMD: FW in reset state\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"PREP_CMD: no free cmd node\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"PREP_CMD: no free cmd buf\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"PREP_CMD: cmd %#x preparation failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"QUEUE_CMD: host_cmd is NULL\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"cmd: QUEUE_CMD: cmd=%#x, cmd_pending=%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"EXEC_NEXT_CMD: cmd in processing\0A\00", align 1
@.str.20 = private unnamed_addr constant [60 x i8] c"%s: cannot send cmd in sleep state,\09this should not happen\0A\00", align 1
@__func__.mwifiex_exec_next_cmd = private unnamed_addr constant [22 x i8] c"mwifiex_exec_next_cmd\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"CMD_RESP: NULL curr_cmd, %#x\0A\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"cmdresp error: cmd=0x%x cmd_resp=0x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"info: host cmd resp size = %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"cmd: CMD_RESP: 0x%x, result %d, len %d, seqno 0x%x\0A\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"CMD_RESP buffer:\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"CMD_RESP: invalid cmd resp\0A\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"%s: cmd %#x failed during\09initialization\0A\00", align 1
@__func__.mwifiex_process_cmdresp = private unnamed_addr constant [24 x i8] c"mwifiex_process_cmdresp\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"cmd: empty curr_cmd\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"%s: Timeout cmd id = %#x, act = %#x\0A\00", align 1
@__func__.mwifiex_cmd_timeout_func = private unnamed_addr constant [25 x i8] c"mwifiex_cmd_timeout_func\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"num_data_h2c_failure = %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"num_cmd_h2c_failure = %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"is_cmd_timedout = %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"num_tx_timeout = %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"last_cmd_index = %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"last_cmd_id: %*ph\0A\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"last_cmd_act: %*ph\0A\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"last_cmd_resp_index = %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"last_cmd_resp_id: %*ph\0A\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"last_event_index = %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"last_event: %*ph\0A\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"data_sent=%d cmd_sent=%d\0A\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"ps_mode=%d ps_state=%d\0A\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"cmd: Delay Sleep Confirm (%s%s%s%s)\0A\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"event: hs_activated\0A\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"event: HS not configured\0A\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"event: hs_deactivated\0A\00", align 1
@.str.52 = private unnamed_addr constant [81 x i8] c"cmd: CMD_RESP: HS_CFG cmd reply\09 result=%#x, conditions=0x%x gpio=0x%x gap=0x%x\0A\00", align 1
@.str.53 = private unnamed_addr constant [81 x i8] c"info: %s: auto cancelling host sleep\09since there is interrupt from the firmware\0A\00", align 1
@__func__.mwifiex_process_hs_config = private unnamed_addr constant [26 x i8] c"mwifiex_process_hs_config\00", align 1
@__kstrtab_mwifiex_process_hs_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_process_hs_config = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_process_hs_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_process_hs_config to i32), ptr @__kstrtab_mwifiex_process_hs_config, ptr @__kstrtabns_mwifiex_process_hs_config }, section "___ksymtab_gpl+mwifiex_process_hs_config", align 4
@.str.54 = private unnamed_addr constant [19 x i8] c"%s: cmd size is 0\0A\00", align 1
@__func__.mwifiex_process_sleep_confirm_resp = private unnamed_addr constant [35 x i8] c"mwifiex_process_sleep_confirm_resp\00", align 1
@.str.55 = private unnamed_addr constant [51 x i8] c"%s: rcvd unexpected resp for cmd %#x, result = %x\0A\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"%s: sleep confirm cmd failed\0A\00", align 1
@__kstrtab_mwifiex_process_sleep_confirm_resp = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_process_sleep_confirm_resp = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_process_sleep_confirm_resp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_process_sleep_confirm_resp to i32), ptr @__kstrtab_mwifiex_process_sleep_confirm_resp, ptr @__kstrtabns_mwifiex_process_sleep_confirm_resp }, section "___ksymtab_gpl+mwifiex_process_sleep_confirm_resp", align 4
@.str.57 = private unnamed_addr constant [27 x i8] c"cmd: PS Command: Enter PS\0A\00", align 1
@.str.58 = private unnamed_addr constant [40 x i8] c"cmd: PS Command: Enter Auto Deep Sleep\0A\00", align 1
@.str.59 = private unnamed_addr constant [51 x i8] c"info: %s: PS_MODE cmd reply result=%#x action=%#X\0A\00", align 1
@__func__.mwifiex_ret_enh_power_mode = private unnamed_addr constant [27 x i8] c"mwifiex_ret_enh_power_mode\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"cmd: Enabled auto deep sleep\0A\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"cmd: Enabled STA power save\0A\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"cmd: set to uapsd/pps mode\0A\00", align 1
@.str.63 = private unnamed_addr constant [31 x i8] c"cmd: Disabled auto deep sleep\0A\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"cmd: Disabled STA power save\0A\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"cmd: ps_bitmap=%#x\0A\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"key_api v%d.%d\0A\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"Firmware api version %d.%d\0A\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"uAP api version %d.%d\0A\00", align 1
@.str.69 = private unnamed_addr constant [34 x i8] c"channel report api version %d.%d\0A\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"Unknown api_id: %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"max p2p connections: %u\0A\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"max sta connections: %u\0A\00", align 1
@.str.73 = private unnamed_addr constant [35 x i8] c"Unknown GET_HW_SPEC TLV type: %#x\0A\00", align 1
@.str.74 = private unnamed_addr constant [43 x i8] c"info: GET_HW_SPEC: fw_release_number- %#x\0A\00", align 1
@.str.75 = private unnamed_addr constant [40 x i8] c"info: GET_HW_SPEC: permanent addr: %pM\0A\00", align 1
@.str.76 = private unnamed_addr constant [50 x i8] c"info: GET_HW_SPEC: hw_if_version=%#x version=%#x\0A\00", align 1
@region_code_index = external dso_local local_unnamed_addr global [9 x i16], align 2
@.str.77 = private unnamed_addr constant [45 x i8] c"cmd: unknown region code, use default (USA)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.78 = private unnamed_addr constant [38 x i8] c"GET_CMD_NODE: cmd node not available\0A\00", align 1
@.str.79 = private unnamed_addr constant [25 x i8] c"cmd: host cmd size = %d\0A\00", align 1
@.str.80 = private unnamed_addr constant [58 x i8] c"DNLD_CMD: host_cmd is null\09or cmd size is 0, not sending\0A\00", align 1
@.str.81 = private unnamed_addr constant [45 x i8] c"DNLD_CMD: FW in reset state, ignore cmd %#x\0A\00", align 1
@.str.82 = private unnamed_addr constant [48 x i8] c"cmd: DNLD_CMD: %#x, act %#x, len %d, seqno %#x\0A\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"cmd buffer:\00", align 1
@.str.84 = private unnamed_addr constant [31 x i8] c"DNLD_CMD: host to card failed\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.85 = private unnamed_addr constant [19 x i8] c"SLEEP_CFM buffer: \00", align 1
@.str.86 = private unnamed_addr constant [33 x i8] c"SLEEP_CFM: dev_alloc_skb failed\0A\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"SLEEP_CFM: failed\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_mwifiex_process_hs_config, ptr @__ksymtab_mwifiex_process_sleep_confirm_resp], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_recycle_cmd_node(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef %0, ptr noundef %1)
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #9, !srcloc !8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #9, !srcloc !9
  %9 = load i16, ptr %6, align 1
  %10 = zext i16 %9 to i32
  %11 = load volatile i32, ptr %7, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %10, i32 noundef %11) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @mwifiex_complete_cmd(ptr noundef %0, ptr noundef nonnull %1) #9
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 3
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 6
  store ptr null, ptr %13, align 4
  store i32 0, ptr %5, align 4
  %14 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @skb_trim(ptr noundef nonnull %15, i32 noundef 0) #9
  br label %18

18:                                               ; preds = %17, %10
  %19 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 18, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %0, ptr noundef nonnull %20) #9
  store ptr null, ptr %19, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 65
  tail call void @_raw_spin_lock_bh(ptr noundef %27) #9
  %28 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 64
  %29 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 64, i32 1
  %30 = load ptr, ptr %29, align 4
  store ptr %1, ptr %29, align 4
  store ptr %28, ptr %1, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  store volatile ptr %1, ptr %30, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %27) #9
  br label %32

32:                                               ; preds = %26, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_alloc_cmd_buffer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2400) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 59
  store ptr %3, ptr %6, align 4
  br label %10

7:                                                ; preds = %10
  %8 = add nuw nsw i32 %11, 1
  %9 = icmp eq i32 %8, 50
  br i1 %9, label %16, label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ 0, %5 ], [ %8, %7 ]
  %12 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2048, i32 noundef 2592) #9
  %13 = getelementptr %struct.cmd_ctrl_node, ptr %3, i32 %11, i32 8
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.1) #9
  br label %21

16:                                               ; preds = %16, %7
  %17 = phi i32 [ %19, %16 ], [ 0, %7 ]
  %18 = getelementptr %struct.cmd_ctrl_node, ptr %3, i32 %17
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef %0, ptr noundef %18)
  %19 = add nuw nsw i32 %17, 1
  %20 = icmp eq i32 %19, 50
  br i1 %20, label %21, label %16

21:                                               ; preds = %16, %15, %1
  %22 = phi i32 [ -12, %15 ], [ -12, %1 ], [ 0, %16 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_free_cmd_buffer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 59
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 18, i32 15
  br label %8

7:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.2) #9
  br label %34

8:                                                ; preds = %26, %5
  %9 = phi i32 [ 0, %5 ], [ %27, %26 ]
  %10 = getelementptr %struct.cmd_ctrl_node, ptr %3, i32 %9, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %9) #9
  %14 = load ptr, ptr %10, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %14, i32 noundef 1) #9
  br label %15

15:                                               ; preds = %13, %8
  %16 = getelementptr %struct.cmd_ctrl_node, ptr %3, i32 %9, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load i8, ptr %0, align 4
  %21 = icmp eq i8 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 4
  %24 = tail call i32 %23(ptr noundef %0, ptr noundef nonnull %17) #9
  br label %26

25:                                               ; preds = %19
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %17, i32 noundef 1) #9
  br label %26

26:                                               ; preds = %25, %22, %15
  %27 = add nuw nsw i32 %9, 1
  %28 = icmp eq i32 %27, 50
  br i1 %28, label %29, label %8

29:                                               ; preds = %26
  %30 = load ptr, ptr %2, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.4) #9
  %33 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %33) #9
  store ptr null, ptr %2, align 4
  br label %34

34:                                               ; preds = %32, %29, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_event(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 51
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 50
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 65535
  %10 = icmp ne i32 %9, 83
  %11 = select i1 %10, i1 true, i1 %4
  %12 = select i1 %10, i8 %3, i8 0
  br i1 %11, label %44, label %13

13:                                               ; preds = %37, %1
  %14 = phi i8 [ %38, %37 ], [ %3, %1 ]
  %15 = phi i32 [ %39, %37 ], [ 0, %1 ]
  %16 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %13
  %20 = tail call i32 @mwifiex_is_11h_active(ptr noundef nonnull %17) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i8, ptr %2, align 4
  br label %37

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.mwifiex_private, ptr %17, i32 0, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 16
  %29 = getelementptr inbounds %struct.mwifiex_private, ptr %17, i32 0, i32 1
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i32
  %32 = shl nuw i32 %31, 24
  %33 = load i32, ptr %7, align 4
  %34 = or i32 %33, %28
  %35 = or i32 %34, %32
  store i32 %35, ptr %7, align 4
  %36 = load i8, ptr %2, align 4
  br label %44

37:                                               ; preds = %22, %13
  %38 = phi i8 [ %23, %22 ], [ %14, %13 ]
  %39 = add nuw nsw i32 %15, 1
  %40 = zext i8 %38 to i32
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %13, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %7, align 4
  br label %44

44:                                               ; preds = %42, %24, %1
  %45 = phi i8 [ %38, %42 ], [ %36, %24 ], [ %12, %1 ]
  %46 = phi i32 [ %43, %42 ], [ %35, %24 ], [ %8, %1 ]
  %47 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 118, i32 18
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = add nuw nsw i32 %49, 1
  %51 = urem i32 %50, 5
  %52 = trunc i32 %51 to i16
  store i16 %52, ptr %47, align 4
  %53 = trunc i32 %46 to i16
  %54 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 118, i32 17, i32 %51
  store i16 %53, ptr %54, align 2
  %55 = lshr i32 %46, 16
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 15
  %58 = lshr i32 %46, 24
  %59 = trunc i32 %58 to i8
  %60 = zext i8 %45 to i32
  %61 = icmp eq i8 %45, 0
  br i1 %61, label %86, label %62

62:                                               ; preds = %75, %44
  %63 = phi i32 [ %76, %75 ], [ 0, %44 ]
  %64 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %63
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.mwifiex_private, ptr %65, i32 0, i32 4
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, %57
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.mwifiex_private, ptr %65, i32 0, i32 1
  %73 = load i8, ptr %72, align 4
  %74 = icmp eq i8 %73, %59
  br i1 %74, label %86, label %75

75:                                               ; preds = %71, %67, %62
  %76 = add nuw nsw i32 %63, 1
  %77 = icmp eq i32 %76, %60
  br i1 %77, label %78, label %62

78:                                               ; preds = %83, %75
  %79 = phi i32 [ %84, %83 ], [ 0, %75 ]
  %80 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %79
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = add nuw nsw i32 %79, 1
  %85 = icmp eq i32 %84, %60
  br i1 %85, label %86, label %78

86:                                               ; preds = %83, %78, %71, %44
  %87 = phi ptr [ null, %44 ], [ %81, %78 ], [ null, %83 ], [ %65, %71 ]
  %88 = and i32 %46, 65535
  store i32 %88, ptr %7, align 4
  %89 = icmp eq ptr %6, null
  br i1 %89, label %107, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 8
  store i64 0, ptr %91, align 4
  %92 = getelementptr inbounds %struct.mwifiex_private, ptr %87, i32 0, i32 4
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 12
  store i8 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.mwifiex_private, ptr %87, i32 0, i32 1
  %96 = load i8, ptr %95, align 4
  %97 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 13
  store i8 %96, ptr %97, align 1
  %98 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, 262144
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 17
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 5
  %106 = load i32, ptr %105, align 8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %104, i32 noundef %106, i1 noundef zeroext false) #9
  br label %107

107:                                              ; preds = %102, %90, %86
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %88) #9
  %108 = getelementptr inbounds %struct.mwifiex_private, ptr %87, i32 0, i32 2
  %109 = load i8, ptr %108, align 1
  %110 = icmp eq i8 %109, 1
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = tail call i32 @mwifiex_process_uap_event(ptr noundef %87) #9
  br label %115

113:                                              ; preds = %107
  %114 = tail call i32 @mwifiex_process_sta_event(ptr noundef %87) #9
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  store i32 0, ptr %7, align 4
  store ptr null, ptr %5, align 4
  %117 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 18, i32 16
  %118 = load ptr, ptr %117, align 4
  %119 = tail call i32 %118(ptr noundef %0, ptr noundef %6) #9
  ret i32 %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_is_11h_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_uap_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_sta_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr %0, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %109

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 12
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %7, i32 noundef 4, ptr noundef nonnull @.str.9) #9
  br label %109

17:                                               ; preds = %11
  %18 = load volatile i32, ptr %12, align 4
  %19 = and i32 %18, 16
  %20 = icmp ne i32 %19, 0
  %21 = zext i16 %1 to i32
  %22 = icmp ne i16 %1, 229
  %23 = and i1 %22, %20
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %7, i32 noundef 4, ptr noundef nonnull @.str.10) #9
  br label %109

25:                                               ; preds = %17
  %26 = load volatile i32, ptr %12, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %7, i32 noundef 4, ptr noundef nonnull @.str.11) #9
  br label %109

30:                                               ; preds = %25
  %31 = load volatile i32, ptr %12, align 4
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %7, i32 noundef 4, ptr noundef nonnull @.str.12) #9
  br label %109

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 45
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 3
  %39 = icmp ne i16 %1, 169
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %7, i32 noundef 4, ptr noundef nonnull @.str.13) #9
  br label %109

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 147
  %44 = load i8, ptr %43, align 4, !range !10
  %45 = icmp ne i8 %44, 0
  %46 = icmp ne i16 %1, 0
  %47 = and i1 %46, %45
  br i1 %47, label %109, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 109
  %50 = load i8, ptr %49, align 1
  %51 = icmp ne i8 %50, 0
  %52 = and i1 %22, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = tail call i32 @mwifiex_cancel_hs(ptr noundef %0, i32 noundef 0) #9
  %55 = load ptr, ptr %0, align 8
  %56 = getelementptr inbounds %struct.mwifiex_adapter, ptr %55, i32 0, i32 109
  store i8 0, ptr %56, align 1
  br label %57

57:                                               ; preds = %53, %48
  %58 = tail call fastcc ptr @mwifiex_get_cmd_node(ptr noundef nonnull %7)
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %7, i32 noundef 4, ptr noundef nonnull @.str.14) #9
  br label %109

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %58, i32 0, i32 1
  store ptr %0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %58, i32 0, i32 2
  store i32 %21, ptr %63, align 4
  br i1 %5, label %64, label %68

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %58, i32 0, i32 7
  store i32 1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %58, i32 0, i32 10
  store i8 0, ptr %66, align 4
  %67 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %58, i32 0, i32 9
  store ptr %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %58, i32 0, i32 6
  store ptr %4, ptr %69, align 4
  %70 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %58, i32 0, i32 8
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %58, i32 0, i32 4
  store ptr %71, ptr %72, align 4
  %73 = icmp eq ptr %71, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %7, i32 noundef 4, ptr noundef nonnull @.str.15) #9
  br label %109

75:                                               ; preds = %68
  %76 = tail call ptr @skb_put(ptr noundef nonnull %71, i32 noundef 252) #9
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(252) %76, i8 0, i32 252, i1 false) #9
  %77 = load ptr, ptr %72, align 4
  %78 = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 17
  %79 = load ptr, ptr %78, align 4
  store i16 %1, ptr %79, align 1
  %80 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %79, i32 0, i32 3
  store i16 0, ptr %80, align 1
  switch i16 %1, label %83 [
    i16 0, label %85
    i16 176, label %81
    i16 177, label %81
    i16 178, label %81
    i16 181, label %81
    i16 175, label %81
    i16 179, label %81
  ]

81:                                               ; preds = %75, %75, %75, %75, %75, %75
  %82 = tail call i32 @mwifiex_uap_prepare_cmd(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %79) #9
  br label %93

83:                                               ; preds = %75
  %84 = tail call i32 @mwifiex_sta_prepare_cmd(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr noundef %79) #9
  br label %93

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.mwifiex_ds_misc_cmd, ptr %4, i32 0, i32 1
  %87 = load i32, ptr %4, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %79, ptr align 4 %86, i32 %87, i1 false) #9
  %88 = load ptr, ptr %0, align 8
  %89 = load i32, ptr %4, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %88, i32 noundef 16, ptr noundef nonnull @.str.79, i32 noundef %89) #9
  %90 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %58, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = or i32 %91, 1
  store i32 %92, ptr %90, align 4
  br label %99

93:                                               ; preds = %83, %81
  %94 = phi i32 [ %84, %83 ], [ %82, %81 ]
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %7, i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef %21) #9
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef nonnull %7, ptr noundef nonnull %58)
  br label %109

97:                                               ; preds = %93
  switch i16 %1, label %99 [
    i16 263, label %98
    i16 6, label %98
  ]

98:                                               ; preds = %97, %97
  tail call void @mwifiex_queue_scan_cmd(ptr noundef %0, ptr noundef nonnull %58) #9
  br label %109

99:                                               ; preds = %97, %85
  tail call void @mwifiex_insert_cmd_to_pending_q(ptr noundef nonnull %7, ptr noundef nonnull %58)
  %100 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 24
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 25
  %103 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %101, ptr noundef %102) #9
  %104 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %58, i32 0, i32 7
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %99
  %108 = tail call i32 @mwifiex_wait_queue_complete(ptr noundef nonnull %7, ptr noundef nonnull %58) #9
  br label %109

109:                                              ; preds = %107, %99, %98, %96, %74, %60, %42, %41, %34, %29, %24, %16, %9
  %110 = phi i32 [ -1, %16 ], [ -1, %24 ], [ -1, %29 ], [ -1, %34 ], [ -1, %41 ], [ -1, %96 ], [ -1, %74 ], [ -1, %60 ], [ -1, %9 ], [ -1, %42 ], [ 0, %98 ], [ %108, %107 ], [ 0, %99 ]
  ret i32 %110
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cancel_hs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @mwifiex_get_cmd_node(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 65
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 64
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.78) #9
  br label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  br label %12

12:                                               ; preds = %7, %6
  %13 = phi ptr [ null, %6 ], [ %4, %7 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #9
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_uap_prepare_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_sta_prepare_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_queue_scan_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_insert_cmd_to_pending_q(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.17) #9
  br label %46

9:                                                ; preds = %2
  %10 = load i16, ptr %6, align 1
  %11 = zext i16 %10 to i32
  switch i16 %10, label %25 [
    i16 228, label %12
    i16 229, label %15
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %6, i32 0, i32 4
  %14 = load i16, ptr %13, align 1
  switch i16 %14, label %25 [
    i16 2, label %20
    i16 254, label %20
  ]

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %6, i32 0, i32 4
  %17 = load i16, ptr %16, align 1
  %18 = icmp eq i16 %17, 2
  %19 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %19) #9
  br i1 %18, label %32, label %27

20:                                               ; preds = %12, %12
  %21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 90
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %24) #9
  br i1 %23, label %27, label %32

25:                                               ; preds = %12, %9
  %26 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %26) #9
  br label %27

27:                                               ; preds = %25, %20, %15
  %28 = phi ptr [ %24, %20 ], [ %19, %15 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 66
  %30 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 66, i32 1
  %31 = load ptr, ptr %30, align 4
  br label %37

32:                                               ; preds = %20, %15
  %33 = phi ptr [ %19, %15 ], [ %24, %20 ]
  %34 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 66
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi ptr [ %36, %32 ], [ %30, %27 ]
  %39 = phi ptr [ %35, %32 ], [ %29, %27 ]
  %40 = phi ptr [ %34, %32 ], [ %31, %27 ]
  %41 = phi ptr [ %33, %32 ], [ %28, %27 ]
  store ptr %1, ptr %38, align 4
  store ptr %39, ptr %1, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %1, ptr %40, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %41) #9
  %43 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #9, !srcloc !8
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #9, !srcloc !11
  %45 = load volatile i32, ptr %43, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %11, i32 noundef %45) #9
  br label %46

46:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_wait_queue_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_exec_next_cmd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 60
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.19) #9
  br label %223

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 66
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #9
  br label %223

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %10, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 90
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.mwifiex_exec_next_cmd) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #9
  br label %223

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %10, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #9
  %29 = load ptr, ptr %24, align 8
  %30 = icmp ne ptr %29, null
  %31 = icmp ne ptr %10, null
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %197

33:                                               ; preds = %22
  %34 = load ptr, ptr %14, align 4
  %35 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %36, i32 0, i32 1
  %38 = load i16, ptr %37, align 1
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %29, i32 noundef 4, ptr noundef nonnull @.str.80) #9
  %41 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %10, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 121, i32 1
  store i32 -1, ptr %45, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = load ptr, ptr %14, align 4
  %48 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 17
  %49 = load ptr, ptr %48, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef nonnull %29, ptr noundef nonnull %10) #9
  %50 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #9, !srcloc !8
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #9, !srcloc !9
  %52 = load i16, ptr %49, align 1
  %53 = zext i16 %52 to i32
  %54 = load volatile i32, ptr %50, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %29, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %53, i32 noundef %54) #9
  br label %197

55:                                               ; preds = %33
  %56 = load i16, ptr %36, align 1
  %57 = zext i16 %56 to i32
  %58 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %10, i32 0, i32 2
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 45
  %60 = load i32, ptr %59, align 4
  %61 = freeze i32 %60
  %62 = icmp ne i32 %61, 3
  %63 = add i16 %56, -169
  %64 = icmp ult i16 %63, 2
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %79, label %66

66:                                               ; preds = %55
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %29, i32 noundef 4, ptr noundef nonnull @.str.81, i32 noundef %57) #9
  %67 = load ptr, ptr %14, align 4
  %68 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 17
  %69 = load ptr, ptr %68, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef nonnull %29, ptr noundef nonnull %10) #9
  %70 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #9, !srcloc !8
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %70, ptr %70, i32 1, ptr elementtype(i32) %70) #9, !srcloc !9
  %72 = load i16, ptr %69, align 1
  %73 = zext i16 %72 to i32
  %74 = load volatile i32, ptr %70, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %29, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %73, i32 noundef %74) #9
  %75 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 24
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 25
  %78 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %76, ptr noundef %77) #9
  br label %197

79:                                               ; preds = %55
  %80 = load i16, ptr %37, align 1
  %81 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 58
  %82 = load i16, ptr %81, align 2
  %83 = add i16 %82, 1
  store i16 %83, ptr %81, align 2
  %84 = and i16 %83, 255
  %85 = load ptr, ptr %23, align 4
  %86 = getelementptr inbounds %struct.mwifiex_private, ptr %85, i32 0, i32 4
  %87 = load i8, ptr %86, align 1
  %88 = and i8 %87, 15
  %89 = zext i8 %88 to i16
  %90 = shl nuw nsw i16 %89, 8
  %91 = or i16 %90, %84
  %92 = getelementptr inbounds %struct.mwifiex_private, ptr %85, i32 0, i32 1
  %93 = load i8, ptr %92, align 4
  %94 = zext i8 %93 to i16
  %95 = shl i16 %94, 12
  %96 = or i16 %91, %95
  %97 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %36, i32 0, i32 2
  store i16 %96, ptr %97, align 1
  %98 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %98) #9
  %99 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 60
  store ptr %10, ptr %99, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %98) #9
  %100 = load ptr, ptr %14, align 4
  %101 = getelementptr inbounds %struct.sk_buff, ptr %100, i32 0, i32 5
  %102 = load i32, ptr %101, align 8
  %103 = zext i16 %80 to i32
  %104 = icmp ugt i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %79
  tail call void @skb_trim(ptr noundef %100, i32 noundef %103) #9
  br label %111

106:                                              ; preds = %79
  %107 = icmp ult i32 %102, %103
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = sub i32 %103, %102
  %110 = tail call ptr @skb_put(ptr noundef %100, i32 noundef %109) #9
  br label %111

111:                                              ; preds = %108, %106, %105
  %112 = getelementptr i8, ptr %36, i32 8
  %113 = load i16, ptr %112, align 1
  %114 = zext i16 %113 to i32
  %115 = load i16, ptr %97, align 1
  %116 = zext i16 %115 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %29, i32 noundef 16, ptr noundef nonnull @.str.82, i32 noundef %57, i32 noundef %114, i32 noundef %103, i32 noundef %116) #9
  %117 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 131072
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %111
  tail call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.83, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %36, i32 noundef %103, i1 noundef zeroext false) #9
  br label %122

122:                                              ; preds = %121, %111
  %123 = load i8, ptr %29, align 4
  %124 = icmp eq i8 %123, 2
  %125 = load ptr, ptr %14, align 4
  br i1 %124, label %126, label %140

126:                                              ; preds = %122
  %127 = tail call ptr @skb_push(ptr noundef %125, i32 noundef 4) #9
  %128 = load ptr, ptr %14, align 4
  %129 = getelementptr inbounds %struct.sk_buff, ptr %128, i32 0, i32 17
  %130 = load ptr, ptr %129, align 4
  store i32 -267519282, ptr %130, align 1
  %131 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 54
  store i8 1, ptr %131, align 1
  %132 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 18, i32 10
  %133 = load ptr, ptr %132, align 4
  %134 = load ptr, ptr %14, align 4
  %135 = tail call i32 %133(ptr noundef nonnull %29, i8 noundef zeroext 1, ptr noundef %134, ptr noundef null) #9
  %136 = load ptr, ptr %14, align 4
  %137 = tail call ptr @skb_pull(ptr noundef %136, i32 noundef 4) #9
  %138 = icmp eq i32 %135, -16
  br i1 %138, label %139, label %153

139:                                              ; preds = %126
  store ptr null, ptr %14, align 4
  br label %181

140:                                              ; preds = %122
  %141 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 14
  %142 = load i8, ptr %141, align 4
  %143 = zext i8 %142 to i32
  %144 = tail call ptr @skb_push(ptr noundef %125, i32 noundef %143) #9
  %145 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 18, i32 10
  %146 = load ptr, ptr %145, align 4
  %147 = load ptr, ptr %14, align 4
  %148 = tail call i32 %146(ptr noundef nonnull %29, i8 noundef zeroext 1, ptr noundef %147, ptr noundef null) #9
  %149 = load ptr, ptr %14, align 4
  %150 = load i8, ptr %141, align 4
  %151 = zext i8 %150 to i32
  %152 = tail call ptr @skb_pull(ptr noundef %149, i32 noundef %151) #9
  br label %153

153:                                              ; preds = %140, %126
  %154 = phi i32 [ %135, %126 ], [ %148, %140 ]
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %156, label %181

156:                                              ; preds = %153
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %29, i32 noundef 4, ptr noundef nonnull @.str.84) #9
  %157 = load i8, ptr %29, align 4
  %158 = icmp eq i8 %157, 2
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 54
  store i8 0, ptr %160, align 1
  br label %161

161:                                              ; preds = %159, %156
  %162 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %10, i32 0, i32 7
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 121, i32 1
  store i32 -1, ptr %166, align 4
  br label %167

167:                                              ; preds = %165, %161
  %168 = load ptr, ptr %99, align 4
  %169 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %168, i32 0, i32 4
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.sk_buff, ptr %170, i32 0, i32 17
  %172 = load ptr, ptr %171, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef nonnull %29, ptr noundef %168) #9
  %173 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %173) #9, !srcloc !8
  %174 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %173, ptr %173, i32 1, ptr elementtype(i32) %173) #9, !srcloc !9
  %175 = load i16, ptr %172, align 1
  %176 = zext i16 %175 to i32
  %177 = load volatile i32, ptr %173, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %29, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %176, i32 noundef %177) #9
  tail call void @_raw_spin_lock_bh(ptr noundef %98) #9
  store ptr null, ptr %99, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %98) #9
  %178 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 118
  %179 = load i32, ptr %178, align 4
  %180 = add i32 %179, 1
  store i32 %180, ptr %178, align 4
  br label %197

181:                                              ; preds = %153, %139
  %182 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 118, i32 14
  %183 = load i16, ptr %182, align 4
  %184 = zext i16 %183 to i32
  %185 = add nuw nsw i32 %184, 1
  %186 = urem i32 %185, 5
  %187 = trunc i32 %186 to i16
  store i16 %187, ptr %182, align 4
  %188 = getelementptr %struct.mwifiex_adapter, ptr %29, i32 0, i32 118, i32 12, i32 %186
  store i16 %56, ptr %188, align 2
  %189 = load i16, ptr %112, align 1
  %190 = getelementptr %struct.mwifiex_adapter, ptr %29, i32 0, i32 118, i32 13, i32 %186
  store i16 %189, ptr %190, align 2
  %191 = icmp eq i16 %56, 293
  br i1 %191, label %197, label %192

192:                                              ; preds = %181
  %193 = getelementptr inbounds %struct.mwifiex_adapter, ptr %29, i32 0, i32 63
  %194 = load volatile i32, ptr @jiffies, align 64
  %195 = add i32 %194, 1000
  %196 = tail call i32 @mod_timer(ptr noundef %193, i32 noundef %195) #9
  br label %197

197:                                              ; preds = %192, %181, %167, %66, %46, %22
  %198 = phi i32 [ -1, %46 ], [ -1, %66 ], [ -1, %167 ], [ -1, %22 ], [ 0, %192 ], [ 0, %181 ]
  %199 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %200 = load i8, ptr %199, align 4
  %201 = zext i8 %200 to i32
  %202 = icmp eq i8 %200, 0
  br i1 %202, label %223, label %203

203:                                              ; preds = %208, %197
  %204 = phi i32 [ %209, %208 ], [ 0, %197 ]
  %205 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %204
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = add nuw nsw i32 %204, 1
  %210 = icmp eq i32 %209, %201
  br i1 %210, label %223, label %203

211:                                              ; preds = %203
  %212 = load i16, ptr %17, align 1
  %213 = icmp eq i16 %212, 229
  br i1 %213, label %223, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 108
  %216 = load i8, ptr %215, align 2
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %219) #9
  %220 = load ptr, ptr %206, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %220, i32 noundef 32, ptr noundef nonnull @.str.51) #9
  %221 = load ptr, ptr %206, align 8
  %222 = getelementptr inbounds %struct.mwifiex_adapter, ptr %221, i32 0, i32 108
  store i8 0, ptr %222, align 2
  br label %223

223:                                              ; preds = %218, %214, %211, %208, %197, %21, %12, %5
  %224 = phi i32 [ -1, %5 ], [ 0, %12 ], [ 0, %21 ], [ %198, %214 ], [ %198, %218 ], [ %198, %211 ], [ %198, %197 ], [ %198, %208 ]
  ret i32 %224
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_hs_activated_event(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i8 %1, 0
  %4 = load ptr, ptr %0, align 8
  br i1 %3, label %19, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 12
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 108
  store i8 1, ptr %11, align 2
  %12 = load ptr, ptr %0, align 8
  tail call void @mwifiex_update_rxreor_flags(ptr noundef %12, i8 noundef zeroext 1) #9
  %13 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.49) #9
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.mwifiex_adapter, ptr %14, i32 0, i32 110
  store i16 1, ptr %15, align 4
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.mwifiex_adapter, ptr %16, i32 0, i32 111
  tail call void @__wake_up(ptr noundef %17, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %22

18:                                               ; preds = %5
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 32, ptr noundef nonnull @.str.50) #9
  br label %22

19:                                               ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 32, ptr noundef nonnull @.str.51) #9
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %20, i32 0, i32 108
  store i8 0, ptr %21, align 2
  br label %22

22:                                               ; preds = %19, %18, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_process_cmdresp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 60
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 52
  %12 = load i16, ptr %11, align 1
  %13 = zext i16 %12 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %13) #9
  br label %174

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = load i16, ptr %16, align 1
  %18 = zext i16 %17 to i32
  %19 = and i16 %17, 4095
  %20 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %4, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = zext i16 %19 to i32
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %21, i32 noundef %22) #9
  br label %174

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 63
  %27 = tail call i32 @del_timer_sync(ptr noundef %26) #9
  %28 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %28) #9
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %29, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %16, i32 0, i32 1
  %36 = load i16, ptr %35, align 1
  %37 = zext i16 %36 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.23, i32 noundef %37) #9
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %38, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = tail call i32 @llvm.umin.i32(i32 %37, i32 2048)
  store i32 %43, ptr %40, align 4
  %44 = getelementptr inbounds %struct.mwifiex_ds_misc_cmd, ptr %40, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %44, ptr align 1 %16, i32 %43, i1 false)
  br label %45

45:                                               ; preds = %42, %34, %25
  %46 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %16, i32 0, i32 2
  %47 = load i16, ptr %46, align 1
  %48 = lshr i16 %47, 8
  %49 = trunc i16 %48 to i8
  %50 = and i8 %49, 15
  %51 = lshr i16 %47, 12
  %52 = trunc i16 %51 to i8
  %53 = load i8, ptr %2, align 4
  %54 = zext i8 %53 to i32
  %55 = icmp eq i8 %53, 0
  br i1 %55, label %80, label %56

56:                                               ; preds = %69, %45
  %57 = phi i32 [ %70, %69 ], [ 0, %45 ]
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
  br i1 %68, label %80, label %69

69:                                               ; preds = %65, %61, %56
  %70 = add nuw nsw i32 %57, 1
  %71 = icmp eq i32 %70, %54
  br i1 %71, label %72, label %56

72:                                               ; preds = %77, %69
  %73 = phi i32 [ %78, %77 ], [ 0, %69 ]
  %74 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %73
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = add nuw nsw i32 %73, 1
  %79 = icmp eq i32 %78, %54
  br i1 %79, label %80, label %72

80:                                               ; preds = %77, %72, %65, %45
  %81 = phi ptr [ null, %45 ], [ %75, %72 ], [ null, %77 ], [ %59, %65 ]
  store i16 %19, ptr %16, align 1
  %82 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %16, i32 0, i32 3
  %83 = load i16, ptr %82, align 1
  %84 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 118, i32 16
  %85 = load i16, ptr %84, align 4
  %86 = zext i16 %85 to i32
  %87 = add nuw nsw i32 %86, 1
  %88 = urem i32 %87, 5
  %89 = trunc i32 %88 to i16
  store i16 %89, ptr %84, align 4
  %90 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 118, i32 15, i32 %88
  store i16 %17, ptr %90, align 2
  %91 = zext i16 %83 to i32
  %92 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %16, i32 0, i32 1
  %93 = load i16, ptr %92, align 1
  %94 = zext i16 %93 to i32
  %95 = load i16, ptr %46, align 1
  %96 = zext i16 %95 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.24, i32 noundef %18, i32 noundef %91, i32 noundef %94, i32 noundef %96) #9
  %97 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, 131072
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %80
  %102 = load i16, ptr %92, align 1
  %103 = zext i16 %102 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.25, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %16, i32 noundef %103, i1 noundef zeroext false) #9
  br label %104

104:                                              ; preds = %101, %80
  %105 = and i32 %18, 32768
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %104
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.26) #9
  %108 = load ptr, ptr %3, align 4
  %109 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %108, i32 0, i32 7
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 121, i32 1
  store i32 -1, ptr %113, align 4
  br label %114

114:                                              ; preds = %112, %107
  %115 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %108, i32 0, i32 4
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.sk_buff, ptr %116, i32 0, i32 17
  %118 = load ptr, ptr %117, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef %0, ptr noundef %108) #9
  %119 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %119) #9, !srcloc !8
  %120 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %119, ptr %119, i32 1, ptr elementtype(i32) %119) #9, !srcloc !9
  %121 = load i16, ptr %118, align 1
  %122 = zext i16 %121 to i32
  %123 = load volatile i32, ptr %119, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %122, i32 noundef %123) #9
  %124 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %124) #9
  store ptr null, ptr %3, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %124) #9
  br label %174

125:                                              ; preds = %104
  %126 = load ptr, ptr %3, align 4
  %127 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %126, i32 0, i32 3
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %125
  %132 = and i32 %128, -2
  store i32 %132, ptr %127, align 4
  %133 = icmp eq i16 %83, 0
  %134 = icmp eq i16 %19, 229
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = tail call i32 @mwifiex_ret_802_11_hs_cfg(ptr noundef %81, ptr noundef %16)
  br label %140

138:                                              ; preds = %125
  %139 = tail call i32 @mwifiex_process_sta_cmdresp(ptr noundef %81, i16 noundef zeroext %19, ptr noundef %16) #9
  br label %140

140:                                              ; preds = %138, %136, %131
  %141 = phi i32 [ 0, %136 ], [ 0, %131 ], [ %139, %138 ]
  %142 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 45
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %154

145:                                              ; preds = %140
  %146 = icmp eq i32 %141, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %145
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.mwifiex_process_cmdresp, i32 noundef %21) #9
  %148 = tail call i32 @mwifiex_init_fw_complete(ptr noundef %0) #9
  br label %174

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 62
  %151 = load i16, ptr %150, align 4
  %152 = icmp eq i16 %151, %19
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 2, ptr %142, align 4
  br label %154

154:                                              ; preds = %153, %149, %140
  %155 = load ptr, ptr %3, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %174, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %155, i32 0, i32 7
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 121, i32 1
  store i32 %141, ptr %162, align 4
  br label %163

163:                                              ; preds = %161, %157
  %164 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %155, i32 0, i32 4
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.sk_buff, ptr %165, i32 0, i32 17
  %167 = load ptr, ptr %166, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef %0, ptr noundef nonnull %155) #9
  %168 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %168) #9, !srcloc !8
  %169 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %168, ptr %168, i32 1, ptr elementtype(i32) %168) #9, !srcloc !9
  %170 = load i16, ptr %167, align 1
  %171 = zext i16 %170 to i32
  %172 = load volatile i32, ptr %168, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %171, i32 noundef %172) #9
  %173 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %173) #9
  store ptr null, ptr %3, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %173) #9
  br label %174

174:                                              ; preds = %163, %154, %147, %114, %24, %10
  %175 = phi i32 [ -1, %24 ], [ -1, %147 ], [ -1, %114 ], [ -1, %10 ], [ %141, %163 ], [ %141, %154 ]
  ret i32 %175
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_802_11_hs_cfg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  %6 = load i32, ptr %5, align 1
  %7 = load i16, ptr %4, align 1
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load i8, ptr %3, align 4
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %26, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 108
  store i8 1, ptr %18, align 2
  %19 = load ptr, ptr %0, align 8
  tail call void @mwifiex_update_rxreor_flags(ptr noundef %19, i8 noundef zeroext 1) #9
  %20 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %20, i32 noundef 32, ptr noundef nonnull @.str.49) #9
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.mwifiex_adapter, ptr %21, i32 0, i32 110
  store i16 1, ptr %22, align 4
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 111
  tail call void @__wake_up(ptr noundef %24, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %64

25:                                               ; preds = %12
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.50) #9
  br label %64

26:                                               ; preds = %9, %2
  %27 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 3
  %28 = load i16, ptr %27, align 1
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds %struct.mwifiex_hs_config_param, ptr %5, i32 0, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.52, i32 noundef %29, i32 noundef %6, i32 noundef %32, i32 noundef %35) #9
  %36 = icmp eq i32 %6, -1
  %37 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 12
  br i1 %36, label %56, label %38

38:                                               ; preds = %26
  tail call void @_set_bit(i32 noundef 3, ptr noundef %37) #9
  %39 = load i8, ptr %3, align 4
  %40 = icmp eq i8 %39, 2
  br i1 %40, label %41, label %64

41:                                               ; preds = %38
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr inbounds %struct.mwifiex_adapter, ptr %42, i32 0, i32 12
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.mwifiex_adapter, ptr %42, i32 0, i32 108
  store i8 1, ptr %48, align 2
  %49 = load ptr, ptr %0, align 8
  tail call void @mwifiex_update_rxreor_flags(ptr noundef %49, i8 noundef zeroext 1) #9
  %50 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %50, i32 noundef 32, ptr noundef nonnull @.str.49) #9
  %51 = load ptr, ptr %0, align 8
  %52 = getelementptr inbounds %struct.mwifiex_adapter, ptr %51, i32 0, i32 110
  store i16 1, ptr %52, align 4
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr inbounds %struct.mwifiex_adapter, ptr %53, i32 0, i32 111
  tail call void @__wake_up(ptr noundef %54, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %64

55:                                               ; preds = %41
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %42, i32 noundef 32, ptr noundef nonnull @.str.50) #9
  br label %64

56:                                               ; preds = %26
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %37) #9
  %57 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 108
  %58 = load i8, ptr %57, align 2
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %61, i32 noundef 32, ptr noundef nonnull @.str.51) #9
  %62 = load ptr, ptr %0, align 8
  %63 = getelementptr inbounds %struct.mwifiex_adapter, ptr %62, i32 0, i32 108
  store i8 0, ptr %63, align 2
  br label %64

64:                                               ; preds = %60, %56, %55, %47, %38, %25, %17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_process_sta_cmdresp(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_init_fw_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_cmd_timeout_func(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -2760
  %3 = getelementptr i8, ptr %0, i32 -2672
  tail call void @_set_bit(i32 noundef 1, ptr noundef %3) #9
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.28) #9
  br label %92

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 2520
  %10 = getelementptr i8, ptr %0, i32 2564
  %11 = getelementptr i8, ptr %0, i32 2584
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr [5 x i16], ptr %10, i32 0, i32 %13
  %15 = load i16, ptr %14, align 2
  %16 = getelementptr i8, ptr %0, i32 2560
  store i16 %15, ptr %16, align 4
  %17 = getelementptr i8, ptr %0, i32 2574
  %18 = getelementptr [5 x i16], ptr %17, i32 0, i32 %13
  %19 = load i16, ptr %18, align 2
  %20 = getelementptr i8, ptr %0, i32 2562
  store i16 %19, ptr %20, align 2
  %21 = zext i16 %15 to i32
  %22 = zext i16 %19 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.mwifiex_cmd_timeout_func, i32 noundef %21, i32 noundef %22) #9
  %23 = getelementptr i8, ptr %0, i32 2528
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef %24) #9
  %25 = load i32, ptr %9, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.31, i32 noundef %25) #9
  %26 = load volatile i32, ptr %3, align 4
  %27 = lshr i32 %26, 1
  %28 = and i32 %27, 1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.32, i32 noundef %28) #9
  %29 = getelementptr i8, ptr %0, i32 2556
  %30 = load i32, ptr %29, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.33, i32 noundef %30) #9
  %31 = load i16, ptr %11, align 4
  %32 = zext i16 %31 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef %32) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.35, i32 noundef 10, ptr noundef %10) #9
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.36, i32 noundef 10, ptr noundef %17) #9
  %33 = getelementptr i8, ptr %0, i32 2596
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef %35) #9
  %36 = getelementptr i8, ptr %0, i32 2586
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.38, i32 noundef 10, ptr noundef %36) #9
  %37 = getelementptr i8, ptr %0, i32 2608
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.39, i32 noundef %39) #9
  %40 = getelementptr i8, ptr %0, i32 2598
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.40, i32 noundef 10, ptr noundef %40) #9
  %41 = getelementptr i8, ptr %0, i32 -24
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i32
  %44 = getelementptr i8, ptr %0, i32 -23
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.41, i32 noundef %43, i32 noundef %46) #9
  %47 = getelementptr i8, ptr %0, i32 380
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = getelementptr i8, ptr %0, i32 384
  %51 = load i32, ptr %50, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.42, i32 noundef %49, i32 noundef %51) #9
  %52 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %5, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %8
  %56 = getelementptr i8, ptr %0, i32 2860
  store i32 -110, ptr %56, align 4
  %57 = load ptr, ptr %4, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %75, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %57, i32 0, i32 7
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %59
  %64 = getelementptr i8, ptr %0, i32 -8
  tail call void @_raw_spin_lock_bh(ptr noundef %64) #9
  %65 = load ptr, ptr %4, align 4
  store ptr null, ptr %4, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %64) #9
  %66 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %65, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 17
  %69 = load ptr, ptr %68, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef %2, ptr noundef %65) #9
  %70 = getelementptr i8, ptr %0, i32 -2512
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #9, !srcloc !8
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %70, ptr %70, i32 1, ptr elementtype(i32) %70) #9, !srcloc !9
  %72 = load i16, ptr %69, align 1
  %73 = zext i16 %72 to i32
  %74 = load volatile i32, ptr %70, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %2, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %73, i32 noundef %74) #9
  br label %75

75:                                               ; preds = %63, %59, %55
  tail call void @mwifiex_cancel_scan(ptr noundef %2) #9
  br label %76

76:                                               ; preds = %75, %8
  %77 = getelementptr i8, ptr %0, i32 -2364
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = tail call i32 @mwifiex_init_fw_complete(ptr noundef %2) #9
  br label %92

82:                                               ; preds = %76
  %83 = getelementptr i8, ptr %0, i32 -2560
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  tail call void %84(ptr noundef %2) #9
  br label %87

87:                                               ; preds = %86, %82
  %88 = getelementptr i8, ptr %0, i32 -2568
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void %89(ptr noundef %2) #9
  br label %92

92:                                               ; preds = %91, %87, %80, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_cancel_pending_scan_cmd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 69
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 68
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %8, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  %12 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %7, i32 0, i32 7
  store i32 0, ptr %12, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef %0, ptr noundef %7)
  %13 = icmp eq ptr %8, %3
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %1
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_cancel_all_pending_cmd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 61
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 60
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %4, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 121, i32 1
  store i32 -1, ptr %11, align 4
  %12 = tail call i32 @mwifiex_complete_cmd(ptr noundef %0, ptr noundef nonnull %4) #9
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %13, i32 0, i32 7
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %10, %6, %1
  %16 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 67
  tail call void @_raw_spin_lock_bh(ptr noundef %16) #9
  %17 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 66
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %43, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 121, i32 1
  %22 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 22
  br label %23

23:                                               ; preds = %33, %20
  %24 = phi ptr [ %18, %20 ], [ %25, %33 ]
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  store volatile ptr %25, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  %29 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %24, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  store i32 -1, ptr %21, align 4
  br label %33

33:                                               ; preds = %32, %23
  %34 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %24, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 17
  %37 = load ptr, ptr %36, align 4
  tail call fastcc void @mwifiex_insert_cmd_to_free_q(ptr noundef %0, ptr noundef %24) #9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #9, !srcloc !8
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #9, !srcloc !9
  %39 = load i16, ptr %37, align 1
  %40 = zext i16 %39 to i32
  %41 = load volatile i32, ptr %22, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %40, i32 noundef %41) #9
  %42 = icmp eq ptr %25, %17
  br i1 %42, label %43, label %23

43:                                               ; preds = %33, %15
  tail call void @_raw_spin_unlock_bh(ptr noundef %16) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #9
  tail call void @mwifiex_cancel_scan(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_complete_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_cancel_scan(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_check_ps_cond(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 54
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 23
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 60
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 55
  %15 = load i8, ptr %14, align 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 56
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 57
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call fastcc void @mwifiex_dnld_sleep_confirm_cmd(ptr noundef %0)
  br label %50

26:                                               ; preds = %21, %17, %13, %9, %5, %1
  %27 = phi ptr [ @.str.45, %21 ], [ @.str.45, %17 ], [ @.str.45, %13 ], [ @.str.45, %9 ], [ @.str.45, %5 ], [ @.str.44, %1 ]
  %28 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 23
  %29 = load volatile i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr @.str.45, ptr @.str.46
  %32 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 60
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr @.str.45, ptr @.str.47
  %36 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 55
  %37 = load i8, ptr %36, align 2
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 56
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 57
  %45 = load i8, ptr %44, align 4
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, ptr @.str.45, ptr @.str.48
  br label %48

48:                                               ; preds = %43, %39, %26
  %49 = phi ptr [ @.str.48, %39 ], [ @.str.48, %26 ], [ %47, %43 ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.43, ptr noundef nonnull %27, ptr noundef nonnull %31, ptr noundef nonnull %35, ptr noundef nonnull %49) #9
  br label %50

50:                                               ; preds = %48, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_dnld_sleep_confirm_cmd(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 95
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %15, %1
  %11 = phi i32 [ %16, %15 ], [ 0, %1 ]
  %12 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = add nuw nsw i32 %11, 1
  %17 = icmp eq i32 %16, %8
  br i1 %17, label %18, label %10

18:                                               ; preds = %15, %10, %1
  %19 = phi ptr [ null, %1 ], [ %13, %10 ], [ null, %15 ]
  %20 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 58
  %21 = load i16, ptr %20, align 2
  %22 = add i16 %21, 1
  store i16 %22, ptr %20, align 2
  %23 = and i16 %22, 255
  %24 = getelementptr inbounds %struct.mwifiex_private, ptr %19, i32 0, i32 4
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 15
  %27 = zext i8 %26 to i16
  %28 = shl nuw nsw i16 %27, 8
  %29 = or i16 %28, %23
  %30 = getelementptr inbounds %struct.mwifiex_private, ptr %19, i32 0, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = zext i8 %31 to i16
  %33 = shl i16 %32, 12
  %34 = or i16 %29, %33
  %35 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, ptr %5, i32 0, i32 2
  store i16 %34, ptr %35, align 1
  %36 = load i16, ptr %5, align 1
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, ptr %5, i32 0, i32 4
  %39 = load i16, ptr %38, align 1
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, ptr %5, i32 0, i32 1
  %42 = load i16, ptr %41, align 1
  %43 = zext i16 %42 to i32
  %44 = zext i16 %34 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.82, i32 noundef %37, i32 noundef %40, i32 noundef %43, i32 noundef %44) #9
  %45 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 131072
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %18
  %50 = load i16, ptr %41, align 1
  %51 = zext i16 %50 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.85, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %5, i32 noundef %51, i1 noundef zeroext false) #9
  br label %52

52:                                               ; preds = %49, %18
  %53 = load i8, ptr %0, align 4
  %54 = icmp eq i8 %53, 2
  br i1 %54, label %55, label %73

55:                                               ; preds = %52
  %56 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16, i32 noundef 2592) #9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.86) #9
  br label %140

59:                                               ; preds = %55
  %60 = tail call ptr @skb_put(ptr noundef nonnull %56, i32 noundef 16) #9
  %61 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 17
  %62 = load ptr, ptr %61, align 4
  store i32 -267519282, ptr %62, align 1
  %63 = load ptr, ptr %61, align 4
  %64 = getelementptr i8, ptr %63, i32 4
  %65 = load ptr, ptr %2, align 4
  %66 = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 17
  %67 = load ptr, ptr %66, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %64, ptr noundef align 1 dereferenceable(12) %67, i32 12, i1 false)
  %68 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 18, i32 10
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 %69(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %56, ptr noundef null) #9
  %71 = icmp eq i32 %70, -16
  br i1 %71, label %94, label %72

72:                                               ; preds = %59
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %56, i32 noundef 1) #9
  br label %87

73:                                               ; preds = %52
  %74 = load ptr, ptr %2, align 4
  %75 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 14
  %76 = load i8, ptr %75, align 4
  %77 = zext i8 %76 to i32
  %78 = tail call ptr @skb_push(ptr noundef %74, i32 noundef %77) #9
  %79 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 18, i32 10
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %2, align 4
  %82 = tail call i32 %80(ptr noundef %0, i8 noundef zeroext 1, ptr noundef %81, ptr noundef null) #9
  %83 = load ptr, ptr %2, align 4
  %84 = load i8, ptr %75, align 4
  %85 = zext i8 %84 to i32
  %86 = tail call ptr @skb_pull(ptr noundef %83, i32 noundef %85) #9
  br label %87

87:                                               ; preds = %73, %72
  %88 = phi i32 [ %70, %72 ], [ %82, %73 ]
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.87) #9
  %91 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 118, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %91, align 4
  br label %140

94:                                               ; preds = %87, %59
  %95 = getelementptr inbounds %struct.mwifiex_opt_sleep_confirm, ptr %5, i32 0, i32 5
  %96 = load i16, ptr %95, align 1
  %97 = icmp eq i16 %96, 0
  %98 = select i1 %97, i32 3, i32 2
  %99 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 90
  store i32 %98, ptr %99, align 4
  %100 = load i16, ptr %95, align 1
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %140

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 12
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %104, 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %140, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 88
  %109 = load i16, ptr %108, align 4
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %111, label %140

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 102
  store i8 1, ptr %112, align 2
  %113 = load i8, ptr %6, align 4
  %114 = zext i8 %113 to i32
  %115 = icmp eq i8 %113, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %121, %111
  %117 = phi i32 [ %122, %121 ], [ 0, %111 ]
  %118 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %117
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = add nuw nsw i32 %117, 1
  %123 = icmp eq i32 %122, %114
  br i1 %123, label %124, label %116

124:                                              ; preds = %121, %116, %111
  %125 = phi ptr [ null, %111 ], [ %119, %116 ], [ null, %121 ]
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds %struct.mwifiex_adapter, ptr %126, i32 0, i32 12
  %128 = load volatile i32, ptr %127, align 4
  %129 = and i32 %128, 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.mwifiex_adapter, ptr %126, i32 0, i32 108
  store i8 1, ptr %132, align 2
  %133 = load ptr, ptr %125, align 8
  tail call void @mwifiex_update_rxreor_flags(ptr noundef %133, i8 noundef zeroext 1) #9
  %134 = load ptr, ptr %125, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %134, i32 noundef 32, ptr noundef nonnull @.str.49) #9
  %135 = load ptr, ptr %125, align 8
  %136 = getelementptr inbounds %struct.mwifiex_adapter, ptr %135, i32 0, i32 110
  store i16 1, ptr %136, align 4
  %137 = load ptr, ptr %125, align 8
  %138 = getelementptr inbounds %struct.mwifiex_adapter, ptr %137, i32 0, i32 111
  tail call void @__wake_up(ptr noundef %138, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %140

139:                                              ; preds = %124
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %126, i32 noundef 32, ptr noundef nonnull @.str.50) #9
  br label %140

140:                                              ; preds = %139, %131, %107, %102, %94, %90, %58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_update_rxreor_flags(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_process_hs_config(ptr noundef %0) #0 {
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.mwifiex_process_hs_config) #9
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 18, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 109
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = icmp eq i8 %10, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %18, %8
  %14 = phi i32 [ %19, %18 ], [ 0, %8 ]
  %15 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = add nuw nsw i32 %14, 1
  %20 = icmp eq i32 %19, %11
  br i1 %20, label %21, label %13

21:                                               ; preds = %18, %13, %8
  %22 = phi ptr [ null, %8 ], [ %16, %13 ], [ null, %18 ]
  %23 = tail call i32 @mwifiex_cancel_hs(ptr noundef %22, i32 noundef 0) #9
  store i8 0, ptr %5, align 1
  br label %24

24:                                               ; preds = %21, %1
  %25 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 108
  store i8 0, ptr %25, align 2
  %26 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %26) #9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %26) #9
  %27 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i32
  %30 = icmp eq i8 %28, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %36, %24
  %32 = phi i32 [ %37, %36 ], [ 0, %24 ]
  %33 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = add nuw nsw i32 %32, 1
  %38 = icmp eq i32 %37, %29
  br i1 %38, label %39, label %31

39:                                               ; preds = %36, %31, %24
  %40 = phi ptr [ null, %24 ], [ %34, %31 ], [ null, %36 ]
  %41 = load ptr, ptr %40, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %41, i32 noundef 32, ptr noundef nonnull @.str.51) #9
  %42 = load ptr, ptr %40, align 8
  %43 = getelementptr inbounds %struct.mwifiex_adapter, ptr %42, i32 0, i32 108
  store i8 0, ptr %43, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_process_sleep_confirm_resp(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 3
  %5 = load i16, ptr %4, align 1
  %6 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 2
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.mwifiex_process_sleep_confirm_resp) #9
  br label %92

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %11 = load i16, ptr %6, align 1
  %12 = load i16, ptr %1, align 1
  %13 = zext i16 %12 to i32
  %14 = zext i16 %5 to i32
  %15 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  %16 = load i16, ptr %15, align 1
  %17 = zext i16 %16 to i32
  %18 = zext i16 %11 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.24, i32 noundef %13, i32 noundef %14, i32 noundef %17, i32 noundef %18) #9
  %19 = lshr i16 %11, 8
  %20 = trunc i16 %19 to i8
  %21 = and i8 %20, 15
  %22 = lshr i16 %11, 12
  %23 = trunc i16 %22 to i8
  %24 = load i8, ptr %10, align 4
  %25 = zext i8 %24 to i32
  %26 = icmp eq i8 %24, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %46, %9
  %28 = phi i32 [ %47, %46 ], [ 0, %9 ]
  %29 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.mwifiex_private, ptr %30, i32 0, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, %21
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.mwifiex_private, ptr %30, i32 0, i32 1
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, %23
  %40 = add nuw nsw i32 %28, 1
  %41 = icmp eq i32 %40, %25
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %48, label %46

43:                                               ; preds = %32, %27
  %44 = add nuw nsw i32 %28, 1
  %45 = icmp eq i32 %44, %25
  br i1 %45, label %48, label %46

46:                                               ; preds = %43, %36
  %47 = phi i32 [ %44, %43 ], [ %40, %36 ]
  br label %27

48:                                               ; preds = %43, %36, %9
  %49 = and i16 %11, 255
  %50 = and i16 %12, 4095
  %51 = icmp eq i16 %50, 228
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = zext i16 %50 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.mwifiex_process_sleep_confirm_resp, i32 noundef %53, i32 noundef %14) #9
  br label %92

54:                                               ; preds = %48
  %55 = icmp eq i16 %5, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %54
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.mwifiex_process_sleep_confirm_resp) #9
  %57 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 102
  store i8 0, ptr %57, align 2
  %58 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 90
  store i32 0, ptr %58, align 4
  br label %92

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 102
  store i8 1, ptr %60, align 2
  %61 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 12
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %90, label %65

65:                                               ; preds = %59
  br i1 %26, label %74, label %66

66:                                               ; preds = %71, %65
  %67 = phi i32 [ %72, %71 ], [ 0, %65 ]
  %68 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %67
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = add nuw nsw i32 %67, 1
  %73 = icmp eq i32 %72, %25
  br i1 %73, label %74, label %66

74:                                               ; preds = %71, %66, %65
  %75 = phi ptr [ null, %65 ], [ %69, %66 ], [ null, %71 ]
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.mwifiex_adapter, ptr %76, i32 0, i32 12
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.mwifiex_adapter, ptr %76, i32 0, i32 108
  store i8 1, ptr %82, align 2
  %83 = load ptr, ptr %75, align 8
  tail call void @mwifiex_update_rxreor_flags(ptr noundef %83, i8 noundef zeroext 1) #9
  %84 = load ptr, ptr %75, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %84, i32 noundef 32, ptr noundef nonnull @.str.49) #9
  %85 = load ptr, ptr %75, align 8
  %86 = getelementptr inbounds %struct.mwifiex_adapter, ptr %85, i32 0, i32 110
  store i16 1, ptr %86, align 4
  %87 = load ptr, ptr %75, align 8
  %88 = getelementptr inbounds %struct.mwifiex_adapter, ptr %87, i32 0, i32 111
  tail call void @__wake_up(ptr noundef %88, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %90

89:                                               ; preds = %74
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %76, i32 noundef 32, ptr noundef nonnull @.str.50) #9
  br label %90

90:                                               ; preds = %89, %81, %59
  %91 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 90
  store i32 3, ptr %91, align 4
  store i16 228, ptr %1, align 1
  store i16 %49, ptr %6, align 1
  br label %92

92:                                               ; preds = %90, %56, %52, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cmd_enh_power_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  store i16 228, ptr %1, align 1
  switch i16 %2, label %62 [
    i16 254, label %7
    i16 0, label %9
    i16 255, label %11
  ]

7:                                                ; preds = %5
  store i16 254, ptr %6, align 1
  %8 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  store i16 %3, ptr %8, align 1
  br label %59

9:                                                ; preds = %5
  store i16 0, ptr %6, align 1
  %10 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  store i16 %3, ptr %10, align 1
  br label %59

11:                                               ; preds = %5
  store i16 255, ptr %6, align 1
  %12 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  store i16 %3, ptr %12, align 1
  %13 = getelementptr i8, ptr %1, i32 12
  %14 = zext i16 %3 to i32
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr i8, ptr %1, i32 16
  store i16 370, ptr %13, align 1
  %20 = getelementptr i8, ptr %1, i32 14
  store i16 14, ptr %20, align 1
  %21 = getelementptr i8, ptr %1, i32 30
  %22 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %22, i32 noundef 16, ptr noundef nonnull @.str.57) #9
  %23 = getelementptr inbounds %struct.mwifiex_adapter, ptr %18, i32 0, i32 94
  %24 = load i16, ptr %23, align 2
  store i16 %24, ptr %19, align 1
  %25 = getelementptr inbounds %struct.mwifiex_adapter, ptr %18, i32 0, i32 92
  %26 = load i16, ptr %25, align 2
  %27 = getelementptr i8, ptr %1, i32 18
  store i16 %26, ptr %27, align 1
  %28 = getelementptr inbounds %struct.mwifiex_adapter, ptr %18, i32 0, i32 96
  %29 = load i16, ptr %28, align 4
  %30 = getelementptr i8, ptr %1, i32 20
  store i16 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.mwifiex_adapter, ptr %18, i32 0, i32 93
  %32 = load i16, ptr %31, align 4
  %33 = getelementptr i8, ptr %1, i32 22
  store i16 %32, ptr %33, align 1
  %34 = getelementptr inbounds %struct.mwifiex_adapter, ptr %18, i32 0, i32 97
  %35 = load i16, ptr %34, align 2
  %36 = getelementptr i8, ptr %1, i32 24
  store i16 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.mwifiex_adapter, ptr %18, i32 0, i32 100
  %38 = load i16, ptr %37, align 2
  %39 = getelementptr i8, ptr %1, i32 28
  store i16 %38, ptr %39, align 1
  %40 = getelementptr inbounds %struct.mwifiex_adapter, ptr %18, i32 0, i32 101
  %41 = load i16, ptr %40, align 4
  %42 = getelementptr i8, ptr %1, i32 26
  store i16 %41, ptr %42, align 1
  br label %43

43:                                               ; preds = %17, %11
  %44 = phi i16 [ 30, %17 ], [ 12, %11 ]
  %45 = phi ptr [ %21, %17 ], [ %13, %11 ]
  %46 = and i32 %14, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %43
  store i16 369, ptr %45, align 1
  %49 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %45, i32 0, i32 1
  store i16 2, ptr %49, align 1
  %50 = add nuw nsw i16 %44, 6
  %51 = icmp eq ptr %4, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.mwifiex_ds_auto_ds, ptr %4, i32 0, i32 1
  %54 = load i16, ptr %53, align 2
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i16 [ %54, %52 ], [ 0, %48 ]
  %57 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %57, i32 noundef 16, ptr noundef nonnull @.str.58) #9
  %58 = getelementptr inbounds %struct.mwifiex_ie_types_auto_ds_param, ptr %45, i32 0, i32 1
  store i16 %56, ptr %58, align 1
  br label %59

59:                                               ; preds = %55, %43, %9, %7
  %60 = phi i16 [ 12, %9 ], [ 12, %7 ], [ %50, %55 ], [ %44, %43 ]
  %61 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 %60, ptr %61, align 1
  br label %62

62:                                               ; preds = %59, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_enh_power_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %6 = load i16, ptr %5, align 1
  %7 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 3
  %10 = load i16, ptr %9, align 1
  %11 = zext i16 %10 to i32
  %12 = zext i16 %6 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.mwifiex_ret_enh_power_mode, i32 noundef %11, i32 noundef %12) #9
  switch i16 %6, label %57 [
    i16 255, label %13
    i16 254, label %28
    i16 0, label %46
  ]

13:                                               ; preds = %3
  %14 = zext i16 %8 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 16, ptr noundef nonnull @.str.60) #9
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.mwifiex_adapter, ptr %18, i32 0, i32 98
  store i8 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = and i32 %14, 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %57, label %23

23:                                               ; preds = %20
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 16, ptr noundef nonnull @.str.61) #9
  %24 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 88
  %25 = load i16, ptr %24, align 4
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %23
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 16, ptr noundef nonnull @.str.62) #9
  br label %57

28:                                               ; preds = %3
  %29 = zext i16 %8 to i32
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.mwifiex_adapter, ptr %33, i32 0, i32 98
  store i8 0, ptr %34, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 16, ptr noundef nonnull @.str.63) #9
  br label %35

35:                                               ; preds = %32, %28
  %36 = and i32 %29, 16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %35
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 16, ptr noundef nonnull @.str.64) #9
  %39 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 88
  %40 = load i16, ptr %39, align 4
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 99
  store i8 0, ptr %43, align 1
  %44 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 86
  store i8 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 104
  store i16 0, ptr %45, align 2
  br label %57

46:                                               ; preds = %3
  %47 = zext i16 %8 to i32
  %48 = and i32 %47, 16
  %49 = icmp eq i32 %48, 0
  %50 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 89
  br i1 %49, label %51, label %53

51:                                               ; preds = %46
  store i16 0, ptr %50, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 16, ptr noundef nonnull @.str.65, i32 noundef %47) #9
  %52 = icmp eq ptr %2, null
  br i1 %52, label %57, label %56

53:                                               ; preds = %46
  store i16 1, ptr %50, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 16, ptr noundef nonnull @.str.65, i32 noundef %47) #9
  %54 = icmp eq ptr %2, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  store i32 1, ptr %2, align 4
  br label %57

56:                                               ; preds = %51
  store i32 0, ptr %2, align 4
  br label %57

57:                                               ; preds = %56, %55, %53, %51, %42, %38, %35, %27, %23, %20, %3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_cmd_get_hw_spec(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  store i16 3, ptr %1, align 1
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  store i16 71, ptr %3, align 1
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  %5 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %4, ptr noundef align 2 dereferenceable(6) %5, i32 6, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_ret_get_hw_spec(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 2
  %6 = load i32, ptr %5, align 1
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 47
  store i32 %6, ptr %7, align 4
  %8 = and i32 %6, 12032
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 82
  store i8 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 84
  store i8 1, ptr %12, align 2
  br label %49

13:                                               ; preds = %2
  %14 = lshr exact i32 %8, 8
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 82
  store i8 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 84
  store i8 %15, ptr %17, align 2
  %18 = and i32 %6, 1024
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %6, 2048
  %21 = icmp eq i32 %20, 0
  br i1 %19, label %35, label %22

22:                                               ; preds = %13
  br i1 %21, label %25, label %23

23:                                               ; preds = %22
  %24 = or i8 %15, 16
  store i8 %24, ptr %17, align 2
  store i8 %24, ptr %16, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i8 [ %24, %23 ], [ %15, %22 ]
  %27 = and i8 %26, 16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 116
  store i8 1, ptr %30, align 2
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i8 [ 20, %29 ], [ 4, %25 ]
  %33 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 83
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 56
  store i8 36, ptr %34, align 8
  br label %52

35:                                               ; preds = %13
  br i1 %21, label %40, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 83
  store i8 11, ptr %37, align 1
  %38 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 56
  store i8 6, ptr %38, align 8
  %39 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 116
  store i8 1, ptr %39, align 2
  br label %52

40:                                               ; preds = %35
  %41 = and i32 %6, 512
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 83
  store i8 3, ptr %44, align 1
  %45 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 56
  store i8 6, ptr %45, align 8
  br label %52

46:                                               ; preds = %40
  %47 = and i32 %6, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46, %10
  %50 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 83
  store i8 1, ptr %50, align 1
  %51 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 56
  store i8 6, ptr %51, align 8
  br label %52

52:                                               ; preds = %49, %46, %43, %36, %31
  %53 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 6
  %54 = load i32, ptr %53, align 1
  %55 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 13
  store i32 %54, ptr %55, align 4
  %56 = lshr i32 %54, 16
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 138
  store i8 %57, ptr %58, align 2
  %59 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 5
  %60 = load i16, ptr %59, align 1
  %61 = and i16 %60, 15
  %62 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 46
  store i16 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 23
  %64 = load i32, ptr %63, align 1
  %65 = icmp eq i32 %64, 0
  %66 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 128
  br i1 %65, label %77, label %67

67:                                               ; preds = %52
  store i32 1, ptr %66, align 4
  %68 = load i32, ptr %63, align 1
  %69 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 129
  store i32 %68, ptr %69, align 4
  %70 = and i32 %68, -2033665
  %71 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 131
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 132
  store i32 %70, ptr %72, align 4
  %73 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 27
  %74 = load i32, ptr %73, align 1
  %75 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 130
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 133
  store i32 %74, ptr %76, align 4
  br label %78

77:                                               ; preds = %52
  store i32 0, ptr %66, align 4
  br label %78

78:                                               ; preds = %77, %67
  %79 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 1
  %80 = load i16, ptr %79, align 1
  %81 = add i16 %80, -8
  %82 = icmp ugt i16 %81, 63
  br i1 %82, label %83, label %151

83:                                               ; preds = %78
  %84 = zext i16 %81 to i32
  %85 = add nsw i32 %84, -63
  %86 = icmp ugt i32 %85, 4
  br i1 %86, label %87, label %151

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 31
  %89 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 141
  %90 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 142
  %91 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 139
  %92 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 140
  br label %93

93:                                               ; preds = %141, %87
  %94 = phi i32 [ 0, %87 ], [ %146, %141 ]
  %95 = phi i32 [ %85, %87 ], [ %147, %141 ]
  %96 = getelementptr i8, ptr %88, i32 %94
  %97 = load i16, ptr %96, align 1
  switch i16 %97, label %139 [
    i16 455, label %98
    i16 535, label %131
  ]

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.hw_spec_api_rev, ptr %96, i32 0, i32 1
  %100 = load i16, ptr %99, align 1
  switch i16 %100, label %129 [
    i16 1, label %101
    i16 2, label %108
    i16 3, label %115
    i16 4, label %122
  ]

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.hw_spec_api_rev, ptr %96, i32 0, i32 2
  %103 = load i8, ptr %102, align 1
  store i8 %103, ptr %91, align 1
  %104 = getelementptr inbounds %struct.hw_spec_api_rev, ptr %96, i32 0, i32 3
  %105 = load i8, ptr %104, align 1
  store i8 %105, ptr %92, align 4
  %106 = zext i8 %103 to i32
  %107 = zext i8 %105 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.66, i32 noundef %106, i32 noundef %107) #9
  br label %141

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.hw_spec_api_rev, ptr %96, i32 0, i32 2
  %110 = load i8, ptr %109, align 1
  store i8 %110, ptr %58, align 2
  %111 = zext i8 %110 to i32
  %112 = getelementptr inbounds %struct.hw_spec_api_rev, ptr %96, i32 0, i32 3
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.67, i32 noundef %111, i32 noundef %114) #9
  br label %141

115:                                              ; preds = %98
  %116 = getelementptr inbounds %struct.hw_spec_api_rev, ptr %96, i32 0, i32 2
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = getelementptr inbounds %struct.hw_spec_api_rev, ptr %96, i32 0, i32 3
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.68, i32 noundef %118, i32 noundef %121) #9
  br label %141

122:                                              ; preds = %98
  %123 = getelementptr inbounds %struct.hw_spec_api_rev, ptr %96, i32 0, i32 2
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = getelementptr inbounds %struct.hw_spec_api_rev, ptr %96, i32 0, i32 3
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.69, i32 noundef %125, i32 noundef %128) #9
  br label %141

129:                                              ; preds = %98
  %130 = zext i16 %100 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 2, ptr noundef nonnull @.str.70, i32 noundef %130) #9
  br label %141

131:                                              ; preds = %93
  %132 = getelementptr inbounds %struct.hw_spec_max_conn, ptr %96, i32 0, i32 1
  %133 = load i8, ptr %132, align 1
  store i8 %133, ptr %89, align 1
  %134 = getelementptr inbounds %struct.hw_spec_max_conn, ptr %96, i32 0, i32 2
  %135 = load i8, ptr %134, align 1
  store i8 %135, ptr %90, align 2
  %136 = zext i8 %133 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.71, i32 noundef %136) #9
  %137 = load i8, ptr %90, align 2
  %138 = zext i8 %137 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.72, i32 noundef %138) #9
  br label %141

139:                                              ; preds = %93
  %140 = zext i16 %97 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 2, ptr noundef nonnull @.str.73, i32 noundef %140) #9
  br label %141

141:                                              ; preds = %139, %131, %129, %122, %115, %108, %101
  %142 = getelementptr inbounds %struct.mwifiex_ie_types_header, ptr %96, i32 0, i32 1
  %143 = load i16, ptr %142, align 1
  %144 = zext i16 %143 to i32
  %145 = add nuw nsw i32 %144, 4
  %146 = add i32 %145, %94
  %147 = sub i32 %95, %145
  %148 = icmp ugt i32 %147, 4
  br i1 %148, label %93, label %149

149:                                              ; preds = %141
  %150 = load i32, ptr %55, align 4
  br label %151

151:                                              ; preds = %149, %83, %78
  %152 = phi i32 [ %150, %149 ], [ %54, %83 ], [ %54, %78 ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.74, i32 noundef %152) #9
  %153 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.75, ptr noundef %153) #9
  %154 = load i16, ptr %3, align 1
  %155 = zext i16 %154 to i32
  %156 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 1
  %157 = load i16, ptr %156, align 1
  %158 = zext i16 %157 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 1073741824, ptr noundef nonnull @.str.76, i32 noundef %155, i32 noundef %158) #9
  %159 = load ptr, ptr %0, align 8
  %160 = getelementptr inbounds %struct.mwifiex_adapter, ptr %159, i32 0, i32 11
  %161 = load i32, ptr %153, align 4
  store i32 %161, ptr %160, align 4
  %162 = getelementptr %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 3
  %163 = load i16, ptr %162, align 2
  %164 = getelementptr %struct.mwifiex_adapter, ptr %159, i32 0, i32 11, i32 4
  store i16 %163, ptr %164, align 2
  %165 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 4
  %166 = load i16, ptr %165, align 1
  %167 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 74
  store i16 %166, ptr %167, align 4
  %168 = load i16, ptr @region_code_index, align 2
  %169 = icmp eq i16 %166, %168
  %170 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 1), align 2
  %171 = icmp eq i16 %166, %170
  %172 = select i1 %169, i1 true, i1 %171
  %173 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 2), align 2
  %174 = icmp eq i16 %166, %173
  %175 = select i1 %172, i1 true, i1 %174
  %176 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 3), align 2
  %177 = icmp eq i16 %166, %176
  %178 = select i1 %175, i1 true, i1 %177
  %179 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 4), align 2
  %180 = icmp eq i16 %166, %179
  %181 = select i1 %178, i1 true, i1 %180
  %182 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 5), align 2
  %183 = icmp eq i16 %166, %182
  %184 = select i1 %181, i1 true, i1 %183
  %185 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 6), align 2
  %186 = icmp eq i16 %166, %185
  %187 = select i1 %184, i1 true, i1 %186
  %188 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 7), align 2
  %189 = icmp eq i16 %166, %188
  %190 = select i1 %187, i1 true, i1 %189
  %191 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @region_code_index, i32 0, i32 8), align 2
  %192 = icmp eq i16 %166, %191
  %193 = select i1 %190, i1 true, i1 %192
  br i1 %193, label %195, label %194

194:                                              ; preds = %151
  store i16 0, ptr %167, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %4, i32 noundef 536870912, ptr noundef nonnull @.str.77) #9
  br label %195

195:                                              ; preds = %194, %151
  %196 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 6
  %197 = load i32, ptr %196, align 1
  %198 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 113
  store i32 %197, ptr %198, align 4
  %199 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 10
  %200 = load i8, ptr %199, align 1
  %201 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 114
  store i8 %200, ptr %201, align 4
  %202 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 115
  store i8 %200, ptr %202, align 1
  %203 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 18, i32 13
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %209, label %206

206:                                              ; preds = %195
  %207 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4, i32 1, i32 11
  %208 = load i16, ptr %207, align 1
  tail call void %204(ptr noundef %4, i16 noundef zeroext %208) #9
  br label %209

209:                                              ; preds = %206, %195
  %210 = load i8, ptr %58, align 2
  %211 = icmp eq i8 %210, 15
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 145
  store i8 1, ptr %213, align 1
  br label %214

214:                                              ; preds = %212, %209
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_ret_wakeup_reason(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.host_cmd_ds_command, ptr %1, i32 0, i32 4
  %5 = load i16, ptr %4, align 1
  store i16 %5, ptr %2, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!8 = !{i64 783061, i64 2148273032, i64 2148273058, i64 2148273105, i64 2148273127, i64 2148273155, i64 2148273175}
!9 = !{i64 2148286804, i64 2148286830, i64 2148286859, i64 2148286893, i64 2148286924, i64 2148286947}
!10 = !{i8 0, i8 2}
!11 = !{i64 2148284447, i64 2148284473, i64 2148284502, i64 2148284536, i64 2148284567, i64 2148284590}
