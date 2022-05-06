; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/sdio.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/sdio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.mwifiex_sdio_device = type { ptr, ptr, i8, i8, i16, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.mwifiex_sdio_card_reg = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [13 x i8] }
%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.memory_type_mapping = type { [8 x i8], ptr, i32, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.sdio_mmc_card = type { ptr, ptr, %struct.completion, ptr, ptr, i8, i8, i16, i32, i32, i32, i32, i16, i32, i8, i8, ptr, i8, i8, i8, i8, i8, i8, %struct.mwifiex_sdio_mpa_tx, %struct.mwifiex_sdio_mpa_rx, %struct.work_struct, i32 }
%struct.mwifiex_sdio_mpa_tx = type { ptr, i32, i32, i32, i16, i8, i32, i32 }
%struct.mwifiex_sdio_mpa_rx = type { ptr, i32, i32, i32, i16, ptr, ptr, i8, i32, i32 }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
%struct.mwifiex_802_11d_domain_reg = type { [3 x i8], i8, [83 x %struct.ieee80211_country_ie_triplet] }
%struct.ieee80211_country_ie_triplet = type { %union.anon.145 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { i8, i8, i8 }
%struct.mwifiex_sleep_params = type { i16, i16, i16, i8, i8, i16 }
%struct.mwifiex_sleep_period = type { i16, i16 }
%struct.mwifiex_hs_config_param = type <{ i32, i8, i8 }>
%struct.mwifiex_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_wait_queue = type { %struct.wait_queue_head, i32 }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mwifiex_fw_image = type { ptr, i32, ptr, i32 }
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
%struct.cmd_ctrl_node = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i8 }
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
%struct.ieee_types_vendor_header = type { i8, i8, %struct.anon.142 }
%struct.anon.142 = type { [3 x i8], i8 }
%struct.ieee_types_wmm_ac_parameters = type { i8, i8, i16 }
%struct.mwifiex_802_11_security = type { i8, i8, i8, i8, i8, i32, i8, i32 }
%struct.mwifiex_wep_key = type { i32, i32, i32, [16 x i8] }
%struct.host_cmd_ds_802_11_key_material = type { i16, %struct.mwifiex_ie_type_key_param_set }
%struct.mwifiex_ie_type_key_param_set = type { i16, i16, i16, i16, i16, [50 x i8] }
%struct.host_cmd_ds_802_11_key_material_v2 = type { i16, %struct.mwifiex_ie_type_key_param_set_v2 }
%struct.mwifiex_ie_type_key_param_set_v2 = type { i16, i16, [6 x i8], i8, i8, i16, %union.anon.143 }
%union.anon.143 = type { %struct.mwifiex_wapi_param }
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

@mwifiex_ids = internal constant [10 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 735, i16 -28394, i32 ptrtoint (ptr @mwifiex_sdio_sd8786 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28391, i32 ptrtoint (ptr @mwifiex_sdio_sd8787 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28375, i32 ptrtoint (ptr @mwifiex_sdio_sd8797 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28371, i32 ptrtoint (ptr @mwifiex_sdio_sd8897 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28363, i32 ptrtoint (ptr @mwifiex_sdio_sd8887 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28359, i32 ptrtoint (ptr @mwifiex_sdio_sd8801 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28347, i32 ptrtoint (ptr @mwifiex_sdio_sd8977 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28343, i32 ptrtoint (ptr @mwifiex_sdio_sd8987 to i32) }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28351, i32 ptrtoint (ptr @mwifiex_sdio_sd8997 to i32) }, %struct.sdio_device_id zeroinitializer], align 4
@__UNIQUE_ID_author463 = internal constant [34 x i8] c"author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description464 = internal constant [52 x i8] c"description=Marvell WiFi-Ex SDIO Driver version 1.0\00", section ".modinfo", align 1
@__UNIQUE_ID_version465 = internal constant [12 x i8] c"version=1.0\00", section ".modinfo", align 1
@__UNIQUE_ID_license466 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware467 = internal constant [32 x i8] c"firmware=mrvl/sd8786_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware468 = internal constant [32 x i8] c"firmware=mrvl/sd8787_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware469 = internal constant [32 x i8] c"firmware=mrvl/sd8797_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware470 = internal constant [32 x i8] c"firmware=mrvl/sd8897_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware471 = internal constant [32 x i8] c"firmware=mrvl/sd8887_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware472 = internal constant [36 x i8] c"firmware=mrvl/sdsd8977_combo_v2.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware473 = internal constant [32 x i8] c"firmware=mrvl/sd8987_uapsta.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware474 = internal constant [36 x i8] c"firmware=mrvl/sdsd8997_combo_v4.bin\00", section ".modinfo", align 1
@mwifiex_sdio_sd8786 = internal constant %struct.mwifiex_sdio_device { ptr @.str, ptr @mwifiex_reg_sd87xx, i8 16, i8 8, i16 2048, i32 16384, i32 16384, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0 }, align 4
@mwifiex_sdio_sd8787 = internal constant %struct.mwifiex_sdio_device { ptr @.str.2, ptr @mwifiex_reg_sd87xx, i8 16, i8 8, i16 2048, i32 16384, i32 16384, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1 }, align 4
@mwifiex_sdio_sd8797 = internal constant %struct.mwifiex_sdio_device { ptr @.str.3, ptr @mwifiex_reg_sd87xx, i8 16, i8 8, i16 2048, i32 16384, i32 16384, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1 }, align 4
@mwifiex_sdio_sd8897 = internal constant %struct.mwifiex_sdio_device { ptr @.str.4, ptr @mwifiex_reg_sd8897, i8 32, i8 16, i16 4096, i32 65280, i32 65280, i8 1, i8 0, i8 1, i8 0, i8 0, i8 1 }, align 4
@mwifiex_sdio_sd8887 = internal constant %struct.mwifiex_sdio_device { ptr @.str.5, ptr @mwifiex_reg_sd8887, i8 32, i8 16, i16 2048, i32 32768, i32 32768, i8 1, i8 0, i8 0, i8 0, i8 1, i8 1 }, align 4
@mwifiex_sdio_sd8801 = internal constant %struct.mwifiex_sdio_device { ptr @.str.6, ptr @mwifiex_reg_sd87xx, i8 16, i8 8, i16 2048, i32 16384, i32 16384, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1 }, align 4
@mwifiex_sdio_sd8977 = internal constant %struct.mwifiex_sdio_device { ptr @.str.7, ptr @mwifiex_reg_sd8977, i8 32, i8 16, i16 4096, i32 65280, i32 65280, i8 1, i8 0, i8 1, i8 1, i8 0, i8 1 }, align 4
@mwifiex_sdio_sd8987 = internal constant %struct.mwifiex_sdio_device { ptr @.str.8, ptr @mwifiex_reg_sd8987, i8 32, i8 16, i16 2048, i32 65280, i32 65280, i8 1, i8 0, i8 1, i8 1, i8 1, i8 1 }, align 4
@mwifiex_sdio_sd8997 = internal constant %struct.mwifiex_sdio_device { ptr @.str.9, ptr @mwifiex_reg_sd8997, i8 32, i8 16, i16 4096, i32 65280, i32 65280, i8 1, i8 0, i8 1, i8 1, i8 0, i8 1 }, align 4
@.str = private unnamed_addr constant [23 x i8] c"mrvl/sd8786_uapsta.bin\00", align 1
@mwifiex_reg_sd87xx = internal constant { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, <{ i8, i8, i8, i8, i8, [8 x i8] }> } { i8 1, i8 1, i8 64, i8 65, i8 48, i8 3, i8 1, i8 3, i8 2, i8 96, i8 97, i8 63, i32 65534, i8 120, i8 121, i8 122, i8 64, i8 4, i8 5, i8 0, i8 0, i8 6, i8 7, i8 0, i8 0, i8 8, i8 9, i8 108, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 96, i8 5, <{ i8, i8, i8, i8, i8, [8 x i8] }> <{ i8 40, i8 48, i8 52, i8 56, i8 60, [8 x i8] zeroinitializer }> }, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"mrvl/sd8787_uapsta.bin\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"mrvl/sd8797_uapsta.bin\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"mrvl/sd8897_uapsta.bin\00", align 1
@mwifiex_reg_sd8897 = internal constant %struct.mwifiex_sdio_card_reg { i8 0, i8 0, i8 96, i8 97, i8 80, i8 -61, i8 1, i8 3, i8 2, i8 -64, i8 -63, i8 -1, i32 -1, i8 -40, i8 -39, i8 -38, i8 -72, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 -52, i8 -51, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -18, i8 -30, i8 -29, i8 -22, i8 0, i8 11, i8 -64, i8 8, [13 x i8] c"LPTUXY\\]\00\00\00\00\00" }, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"mrvl/sd8887_uapsta.bin\00", align 1
@mwifiex_reg_sd8887 = internal constant %struct.mwifiex_sdio_card_reg { i8 0, i8 0, i8 108, i8 109, i8 92, i8 -61, i8 4, i8 12, i8 8, i8 -112, i8 -111, i8 -1, i32 -1, i8 -28, i8 -27, i8 -26, i8 -60, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -40, i8 -39, i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 0, i8 0, i8 0, i8 0, i8 16, i8 23, i8 -112, i8 13, [13 x i8] c"\08X\\]`abdefhij" }, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"mrvl/sd8801_uapsta.bin\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"mrvl/sdsd8977_combo_v2.bin\00", align 1
@mwifiex_reg_sd8977 = internal constant %struct.mwifiex_sdio_card_reg { i8 0, i8 0, i8 -8, i8 -7, i8 92, i8 -61, i8 4, i8 12, i8 8, i8 -24, i8 -23, i8 -1, i32 -1, i8 -28, i8 -27, i8 -26, i8 -60, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -40, i8 -39, i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -52, i8 -16, i8 -15, i8 -8, i8 16, i8 23, i8 -24, i8 13, [13 x i8] c"\08X\\]`abdefhij" }, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"mrvl/sd8987_uapsta.bin\00", align 1
@mwifiex_reg_sd8987 = internal constant %struct.mwifiex_sdio_card_reg { i8 0, i8 0, i8 -8, i8 -7, i8 92, i8 -61, i8 4, i8 12, i8 8, i8 -24, i8 -23, i8 -1, i32 -1, i8 -28, i8 -27, i8 -26, i8 -60, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -40, i8 -39, i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -52, i8 -7, i8 -15, i8 -8, i8 16, i8 23, i8 -24, i8 13, [13 x i8] c"\08X\\]`abdefhij" }, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"mrvl/sdsd8997_combo_v4.bin\00", align 1
@mwifiex_reg_sd8997 = internal constant %struct.mwifiex_sdio_card_reg { i8 0, i8 0, i8 -8, i8 -7, i8 92, i8 -61, i8 4, i8 12, i8 8, i8 -24, i8 -23, i8 -1, i32 -1, i8 -28, i8 -27, i8 -26, i8 -60, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 -40, i8 -39, i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -52, i8 -16, i8 -15, i8 -8, i8 16, i8 23, i8 -24, i8 13, [13 x i8] c"\08X\\]`abdefhij" }, align 4
@mwifiex_sdio = internal global %struct.sdio_driver { ptr @.str.10, ptr @mwifiex_ids, ptr @mwifiex_sdio_probe, ptr @mwifiex_sdio_remove, %struct.device_driver { ptr null, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mwifiex_sdio_pm_ops, ptr @mwifiex_sdio_coredump, ptr null } }, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"mwifiex_sdio\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@mwifiex_sdio_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @mwifiex_sdio_suspend, ptr @mwifiex_sdio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"failed to enable function\0A\00", align 1
@sdio_ops = internal global %struct.mwifiex_if_ops { ptr @mwifiex_init_sdio, ptr @mwifiex_cleanup_sdio, ptr @mwifiex_check_fw_status, ptr @mwifiex_check_winner_status, ptr @mwifiex_prog_fw_w_helper, ptr @mwifiex_register_dev, ptr @mwifiex_unregister_dev, ptr @mwifiex_sdio_enable_host_int, ptr @mwifiex_sdio_disable_host_int, ptr @mwifiex_process_int_status, ptr @mwifiex_sdio_host_to_card, ptr @mwifiex_pm_wakeup_card, ptr @mwifiex_pm_wakeup_card_complete, ptr @mwifiex_update_mp_end_port, ptr @mwifiex_cleanup_mpa_buf, ptr @mwifiex_sdio_cmdrsp_complete, ptr @mwifiex_sdio_event_complete, ptr null, ptr @mwifiex_sdio_dnld_fw, ptr @mwifiex_sdio_card_reset, ptr @mwifiex_sdio_reg_dump, ptr @mwifiex_sdio_device_dump, ptr null, ptr null, ptr null, ptr @mwifiex_deaggr_sdio_pkt, ptr null, ptr null, ptr null, ptr @mwifiex_sdio_up_dev }, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"add card failed\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"vzalloc devdump data failure!\0A\00", align 1
@generic_mem_type_map = internal global [1 x %struct.memory_type_mapping] [%struct.memory_type_mapping { [8 x i8] c"DUMP\00\00\00\00", ptr null, i32 0, i8 -35 }], align 4
@.str.15 = private unnamed_addr constant [35 x i8] c"== mwifiex firmware dump start ==\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"SDIO read err\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Start %s output, please wait...\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"dump %s done size=0x%x\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"== mwifiex firmware dump end ==\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"firmware dump failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"event: wakeup device...\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"SDIO Write ERR\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"The ctrl reg was changed, re-try again\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"SDIO write err\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Fail to pull ctrl_data\0A\00", align 1
@mem_type_mapping_tbl = internal global [15 x %struct.memory_type_mapping] [%struct.memory_type_mapping { [8 x i8] c"ITCM\00\00\00\00", ptr null, i32 0, i8 -16 }, %struct.memory_type_mapping { [8 x i8] c"DTCM\00\00\00\00", ptr null, i32 0, i8 -15 }, %struct.memory_type_mapping { [8 x i8] c"SQRAM\00\00\00", ptr null, i32 0, i8 -14 }, %struct.memory_type_mapping { [8 x i8] c"APU\00\00\00\00\00", ptr null, i32 0, i8 -13 }, %struct.memory_type_mapping { [8 x i8] c"CIU\00\00\00\00\00", ptr null, i32 0, i8 -12 }, %struct.memory_type_mapping { [8 x i8] c"ICU\00\00\00\00\00", ptr null, i32 0, i8 -11 }, %struct.memory_type_mapping { [8 x i8] c"MAC\00\00\00\00\00", ptr null, i32 0, i8 -10 }, %struct.memory_type_mapping { [8 x i8] c"EXT7\00\00\00\00", ptr null, i32 0, i8 -9 }, %struct.memory_type_mapping { [8 x i8] c"EXT8\00\00\00\00", ptr null, i32 0, i8 -8 }, %struct.memory_type_mapping { [8 x i8] c"EXT9\00\00\00\00", ptr null, i32 0, i8 -7 }, %struct.memory_type_mapping { [8 x i8] c"EXT10\00\00\00", ptr null, i32 0, i8 -6 }, %struct.memory_type_mapping { [8 x i8] c"EXT11\00\00\00", ptr null, i32 0, i8 -5 }, %struct.memory_type_mapping { [8 x i8] c"EXT12\00\00\00", ptr null, i32 0, i8 -4 }, %struct.memory_type_mapping { [8 x i8] c"EXT13\00\00\00", ptr null, i32 0, i8 -3 }, %struct.memory_type_mapping { [8 x i8] c"EXTLAST\00", ptr null, i32 0, i8 -2 }], align 4
@.str.27 = private unnamed_addr constant [29 x i8] c"SDIO read memory length err\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"Firmware dump Finished!\0A\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"%s_SIZE=0x%x\0A\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"Vmalloc %s failed\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"Allocated buf not enough\0A\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"%s done: size=0x%tx\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"reinit failed: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"SDIO HW reset failed: %d\0A\00", align 1
@mwifiex_sdio_of_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,sd8897\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,sd8997\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.35 = private unnamed_addr constant [36 x i8] c"required compatible string missing\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"info: SDIO FUNC1 IO port: %#x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.37 = private unnamed_addr constant [48 x i8] c"firmware image not found! Terminating download\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"info: downloading FW image (%d bytes)\0A\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"FW download with helper:\09poll status timeout @ %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [67 x i8] c"dev BASE0 register read failed:\09base0=%#04X(%d). Terminating dnld\0A\00", align 1
@.str.41 = private unnamed_addr constant [67 x i8] c"dev BASE1 register read failed:\09base1=%#04X(%d). Terminating dnld\0A\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"FW dnld failed @ %d, invalid length %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"FW dnld failed @ %d, over max retry\0A\00", align 1
@.str.44 = private unnamed_addr constant [55 x i8] c"CRC indicated by the helper:\09len = 0x%04X, txlen = %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"FW download, write iomem (%d) failed @ %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"write CFG reg failed\0A\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"info: FW download over, size %d bytes\0A\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"poll card status failed, tries = %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"%s: not allowed while suspended\0A\00", align 1
@__func__.mwifiex_write_data_sync = private unnamed_addr constant [24 x i8] c"mwifiex_write_data_sync\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"cannot set SDIO block size\0A\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"claim irq failed: ret=%d\0A\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"enable host interrupt failed\0A\00", align 1
@.str.53 = private unnamed_addr constant [49 x i8] c"\013mwifiex_sdio: int: func=%p card=%p adapter=%p\0A\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"read mp_regs failed\0A\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"int: sdio_ireg = %#x\0A\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"info: rx_len = %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"%s: failed to card_to_host\00", align 1
@__func__.mwifiex_process_int_status = private unnamed_addr constant [27 x i8] c"mwifiex_process_int_status\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"%s:Received wrong packet on cmd port\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"int: DNLD: wr_bitmap=0x%x\0A\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"info:  <--- Tx DONE Interrupt --->\0A\00", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"info: cmd_sent=%d data_sent=%d\0A\00", align 1
@.str.62 = private unnamed_addr constant [27 x i8] c"int: UPLD: rd_bitmap=0x%x\0A\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"info: no more rd_port available\0A\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"info: RX: port=%d rx_len=%u\0A\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"invalid rx_len=%d\0A\00", align 1
@.str.66 = private unnamed_addr constant [41 x i8] c"card_to_host_mpa failed: int status=%#x\0A\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"read CFG reg failed\0A\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"info: CFG reg val = %d\0A\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"info: write success\0A\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"info: CFG reg val =%x\0A\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"%s: buffer is NULL\0A\00", align 1
@__func__.mwifiex_sdio_card_to_host = private unnamed_addr constant [26 x i8] c"mwifiex_sdio_card_to_host\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"%s: read iomem failed: %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [39 x i8] c"%s: invalid packet, nb=%d npayload=%d\0A\00", align 1
@.str.74 = private unnamed_addr constant [36 x i8] c"info: --- Rx: Aggr Data packet ---\0A\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"info: --- Rx: Data packet ---\0A\00", align 1
@.str.76 = private unnamed_addr constant [32 x i8] c"info: --- Rx: Cmd Response ---\0A\00", align 1
@.str.77 = private unnamed_addr constant [25 x i8] c"info: --- Rx: Event ---\0A\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"unknown upload type %#x\0A\00", align 1
@.str.79 = private unnamed_addr constant [27 x i8] c"data: mp_rd_bitmap=0x%08x\0A\00", align 1
@.str.80 = private unnamed_addr constant [35 x i8] c"data: port=%d mp_rd_bitmap=0x%08x\0A\00", align 1
@.str.81 = private unnamed_addr constant [45 x i8] c"data: port=%d mp_rd_bitmap=0x%08x -> 0x%08x\0A\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"info: %s: no aggregation for cmd\09response\0A\00", align 1
@__func__.mwifiex_sdio_card_to_host_mp_aggr = private unnamed_addr constant [34 x i8] c"mwifiex_sdio_card_to_host_mp_aggr\00", align 1
@.str.83 = private unnamed_addr constant [35 x i8] c"info: %s: rx aggregation disabled\0A\00", align 1
@.str.84 = private unnamed_addr constant [27 x i8] c"info: %s: not last packet\0A\00", align 1
@.str.85 = private unnamed_addr constant [23 x i8] c"info: %s: last packet\0A\00", align 1
@.str.86 = private unnamed_addr constant [34 x i8] c"info: current packet aggregation\0A\00", align 1
@.str.87 = private unnamed_addr constant [43 x i8] c"info: %s: aggregated packet\09limit reached\0A\00", align 1
@.str.88 = private unnamed_addr constant [38 x i8] c"info: do_rx_aggr: num of packets: %d\0A\00", align 1
@.str.89 = private unnamed_addr constant [48 x i8] c"skb allocation failure\09drop pkt len=%d type=%d\0A\00", align 1
@.str.90 = private unnamed_addr constant [76 x i8] c"drop wrong aggr pkt:\09sdio_single_port_rx_aggr=%d\09type=%d len=%d max_len=%d\0A\00", align 1
@.str.91 = private unnamed_addr constant [32 x i8] c"info: RX: port: %d, rx_len: %d\0A\00", align 1
@.str.92 = private unnamed_addr constant [52 x i8] c"single skb allocated fail,\09drop pkt port=%d len=%d\0A\00", align 1
@.str.93 = private unnamed_addr constant [57 x i8] c"drop wrong pkt type %d\09current SDIO RX Aggr not enabled\0A\00", align 1
@.str.94 = private unnamed_addr constant [26 x i8] c"%s: no wr_port available\0A\00", align 1
@__func__.mwifiex_sdio_host_to_card = private unnamed_addr constant [26 x i8] c"mwifiex_sdio_host_to_card\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"%s: payload=%p, nb=%d\0A\00", align 1
@.str.96 = private unnamed_addr constant [27 x i8] c"data: mp_wr_bitmap=0x%08x\0A\00", align 1
@.str.97 = private unnamed_addr constant [64 x i8] c"invalid data port=%d cur port=%d mp_wr_bitmap=0x%08x -> 0x%08x\0A\00", align 1
@.str.98 = private unnamed_addr constant [45 x i8] c"data: port=%d mp_wr_bitmap=0x%08x -> 0x%08x\0A\00", align 1
@.str.99 = private unnamed_addr constant [35 x i8] c"info: %s: tx aggregation disabled\0A\00", align 1
@__func__.mwifiex_host_to_card_mp_aggr = private unnamed_addr constant [29 x i8] c"mwifiex_host_to_card_mp_aggr\00", align 1
@.str.100 = private unnamed_addr constant [34 x i8] c"info: %s: more packets in queue.\0A\00", align 1
@.str.101 = private unnamed_addr constant [36 x i8] c"info: %s: Last packet in Tx Queue.\0A\00", align 1
@.str.102 = private unnamed_addr constant [34 x i8] c"data: %s: precopy current buffer\0A\00", align 1
@.str.103 = private unnamed_addr constant [35 x i8] c"data: %s: send aggr buffer: %d %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [34 x i8] c"data: %s: send current buffer %d\0A\00", align 1
@.str.105 = private unnamed_addr constant [35 x i8] c"data: %s: postcopy current buffer\0A\00", align 1
@.str.106 = private unnamed_addr constant [43 x i8] c"host_to_card, write iomem\09(%d) failed: %d\0A\00", align 1
@.str.107 = private unnamed_addr constant [30 x i8] c"cmd: wakeup device completed\0A\00", align 1
@.str.108 = private unnamed_addr constant [42 x i8] c"cmd: mp_end_port %d, data port mask 0x%x\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.109 = private unnamed_addr constant [26 x i8] c"SDIO register dump start\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.110 = private unnamed_addr constant [24 x i8] c"SDIO Func%d (%#x-%#x): \00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"SDIO Func%d: \00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"(%#x) \00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.116 = private unnamed_addr constant [24 x i8] c"SDIO register dump end\0A\00", align 1
@.str.117 = private unnamed_addr constant [66 x i8] c"%s: error in blk_size,\09blk_num=%d, blk_size=%d, total_pkt_len=%d\0A\00", align 1
@__func__.mwifiex_deaggr_sdio_pkt = private unnamed_addr constant [24 x i8] c"mwifiex_deaggr_sdio_pkt\00", align 1
@.str.118 = private unnamed_addr constant [47 x i8] c"%s: error in pkt_len,\09pkt_len=%d, blk_size=%d\0A\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"info: SDIO func num=%d\0A\00", align 1
@.str.120 = private unnamed_addr constant [49 x i8] c"%s: cannot remain alive while host is suspended\0A\00", align 1
@.str.121 = private unnamed_addr constant [23 x i8] c"suspend: invalid card\0A\00", align 1
@.str.122 = private unnamed_addr constant [22 x i8] c"adapter is not valid\0A\00", align 1
@.str.123 = private unnamed_addr constant [24 x i8] c"cmd: failed to suspend\0A\00", align 1
@.str.124 = private unnamed_addr constant [37 x i8] c"cmd: suspend with MMC_PM_KEEP_POWER\0A\00", align 1
@.str.125 = private unnamed_addr constant [33 x i8] c"resume: invalid card or adapter\0A\00", align 1
@.str.126 = private unnamed_addr constant [24 x i8] c"device already resumed\0A\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author463, ptr @__UNIQUE_ID_description464, ptr @__UNIQUE_ID_firmware467, ptr @__UNIQUE_ID_firmware468, ptr @__UNIQUE_ID_firmware469, ptr @__UNIQUE_ID_firmware470, ptr @__UNIQUE_ID_firmware471, ptr @__UNIQUE_ID_firmware472, ptr @__UNIQUE_ID_firmware473, ptr @__UNIQUE_ID_firmware474, ptr @__UNIQUE_ID_license466, ptr @__UNIQUE_ID_version465], section "llvm.metadata"

@__mod_sdio__mwifiex_ids_device_table = dso_local alias [10 x %struct.sdio_device_id], ptr @mwifiex_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @sdio_register_driver(ptr noundef nonnull @mwifiex_sdio) #14
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @sdio_unregister_driver(ptr noundef nonnull @mwifiex_sdio) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 1
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 164, i32 noundef 3520) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %78, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 2
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %8, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #14
  store ptr %0, ptr %4, align 4
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = or i32 %11, 2
  store i32 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.sdio_device_id, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %60, label %16

16:                                               ; preds = %6
  %17 = inttoptr i32 %14 to ptr
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 3
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 4
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %17, i32 0, i32 2
  %24 = load i8, ptr %23, align 4
  %25 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 5
  store i8 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %17, i32 0, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 6
  store i8 %27, ptr %28, align 1
  %29 = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %17, i32 0, i32 7
  %30 = load i8, ptr %29, align 4, !range !8
  %31 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 17
  store i8 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %17, i32 0, i32 8
  %33 = load i8, ptr %32, align 1, !range !8
  %34 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 18
  store i8 %33, ptr %34, align 1
  %35 = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %17, i32 0, i32 4
  %36 = load i16, ptr %35, align 2
  %37 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 7
  store i16 %36, ptr %37, align 2
  %38 = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %17, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 8
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %17, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 9
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %17, i32 0, i32 9
  %45 = load i8, ptr %44, align 2, !range !8
  %46 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 19
  store i8 %45, ptr %46, align 2
  %47 = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %17, i32 0, i32 10
  %48 = load i8, ptr %47, align 1, !range !8
  %49 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 20
  store i8 %48, ptr %49, align 1
  %50 = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %17, i32 0, i32 11
  %51 = load i8, ptr %50, align 4, !range !8
  %52 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 21
  store i8 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.mwifiex_sdio_device, ptr %17, i32 0, i32 12
  %54 = load i8, ptr %53, align 1, !range !8
  %55 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 22
  store i8 %54, ptr %55, align 1
  %56 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 25
  store i32 -32, ptr %56, align 4
  %57 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 25, i32 1
  store volatile ptr %57, ptr %57, align 4
  %58 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 25, i32 1, i32 1
  store ptr %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 25, i32 2
  store ptr @mwifiex_sdio_work, ptr %59, align 4
  br label %60

60:                                               ; preds = %16, %6
  tail call void @sdio_claim_host(ptr noundef %0) #14
  %61 = tail call i32 @sdio_enable_func(ptr noundef %0) #14
  tail call void @sdio_release_host(ptr noundef %0) #14
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11) #15
  br label %78

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 1, i32 25
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = tail call ptr @of_match_node(ptr noundef nonnull @mwifiex_sdio_of_match_table, ptr noundef nonnull %66) #14
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %68, %64
  %72 = tail call i32 @mwifiex_add_card(ptr noundef nonnull %4, ptr noundef %7, ptr noundef nonnull @sdio_ops, i8 noundef zeroext 0, ptr noundef %3) #14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71, %68
  %75 = phi ptr [ @.str.35, %68 ], [ @.str.12, %71 ]
  %76 = phi i32 [ -22, %68 ], [ %72, %71 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %75) #15
  tail call void @sdio_claim_host(ptr noundef %0) #14
  %77 = tail call i32 @sdio_disable_func(ptr noundef %0) #14
  tail call void @sdio_release_host(ptr noundef %0) #14
  br label %78

78:                                               ; preds = %74, %71, %63, %2
  %79 = phi i32 [ %61, %63 ], [ %76, %74 ], [ -12, %2 ], [ 0, %71 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mwifiex_sdio_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #14
  store i16 0, ptr %2, align 2, !annotation !9
  %3 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 1, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %7) #14
  %8 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %45, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 5
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %9, i32 noundef 1073741824, ptr noundef nonnull @.str.119, i32 noundef %17) #14
  %18 = call fastcc i32 @mwifiex_sdio_read_fw_status(ptr noundef nonnull %9, ptr noundef nonnull %2)
  %19 = icmp eq i32 %18, 0
  %20 = load i16, ptr %2, align 2
  %21 = icmp eq i16 %20, -292
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %43

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.mwifiex_adapter, ptr %9, i32 0, i32 147
  %25 = load i8, ptr %24, align 4, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  tail call void @mwifiex_deauthenticate_all(ptr noundef nonnull %9) #14
  %28 = load i8, ptr %12, align 4
  %29 = zext i8 %28 to i32
  %30 = icmp eq i8 %28, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %36, %27
  %32 = phi i32 [ %37, %36 ], [ 0, %27 ]
  %33 = getelementptr %struct.mwifiex_adapter, ptr %9, i32 0, i32 4, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = add nuw nsw i32 %32, 1
  %38 = icmp eq i32 %37, %29
  br i1 %38, label %39, label %31

39:                                               ; preds = %36, %31, %27
  %40 = phi ptr [ null, %27 ], [ %34, %31 ], [ null, %36 ]
  %41 = tail call i32 @mwifiex_disable_auto_ds(ptr noundef %40) #14
  %42 = tail call i32 @mwifiex_init_shutdown_fw(ptr noundef %40, i32 noundef 2) #14
  br label %43

43:                                               ; preds = %39, %23, %15
  %44 = tail call i32 @mwifiex_remove_card(ptr noundef nonnull %9) #14
  br label %45

45:                                               ; preds = %43, %11, %6, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mwifiex_sdio_coredump(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 26
  %5 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %4) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 25
  %9 = load ptr, ptr @system_wq, align 4
  %10 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %9, ptr noundef %8) #14
  br label %11

11:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mwifiex_sdio_work(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 16
  %8 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %7) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %281, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -140
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = tail call noalias ptr @vzalloc(i32 noundef 2097152) #16
  %16 = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 167
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.14) #14
  br label %281

19:                                               ; preds = %10
  tail call void @mwifiex_drv_info_dump(ptr noundef %12) #14
  %20 = getelementptr inbounds %struct.sdio_mmc_card, ptr %14, i32 0, i32 20
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  %23 = load ptr, ptr %13, align 4
  br i1 %22, label %129, label %24

24:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 -1, ptr %6, align 4
  %25 = getelementptr inbounds %struct.sdio_mmc_card, ptr %23, i32 0, i32 20
  %26 = load i8, ptr %25, align 1, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %128, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 1), align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @vfree(ptr noundef nonnull %29) #14
  store ptr null, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 1), align 4
  br label %32

32:                                               ; preds = %31, %28
  store i32 0, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 2), align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.22) #14
  %33 = load ptr, ptr %13, align 4
  %34 = load ptr, ptr %33, align 4
  tail call void @sdio_claim_host(ptr noundef %34) #14
  %35 = load ptr, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 -1, ptr %5, align 4
  call void @sdio_writeb(ptr noundef %35, i8 noundef zeroext 2, i32 noundef 0, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %36 = load ptr, ptr %33, align 4
  call void @sdio_release_host(ptr noundef %36) #14
  %37 = load ptr, ptr %23, align 4
  call void @sdio_claim_host(ptr noundef %37) #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 1, ptr noundef nonnull @.str.15) #14
  %38 = call fastcc i32 @mwifiex_sdio_rdwr_firmware(ptr noundef %12, i8 noundef zeroext 0) #14
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %118, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.sdio_mmc_card, ptr %23, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %42, i32 0, i32 39
  %44 = load i8, ptr %43, align 2
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %42, i32 0, i32 40
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp ugt i8 %44, %47
  br i1 %49, label %67, label %50

50:                                               ; preds = %64, %40
  %51 = phi i32 [ %65, %64 ], [ %45, %40 ]
  br label %52

52:                                               ; preds = %59, %50
  %53 = phi i32 [ 0, %50 ], [ %61, %59 ]
  %54 = load ptr, ptr %23, align 4
  %55 = call zeroext i8 @sdio_readb(ptr noundef %54, i32 noundef %51, ptr noundef nonnull %6) #14
  %56 = load i32, ptr %6, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.16) #14
  br label %118

59:                                               ; preds = %52
  %60 = icmp ne i8 %55, 0
  %61 = add nuw nsw i32 %53, 1
  %62 = icmp ult i32 %53, 99
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %52, label %64

64:                                               ; preds = %59
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #14
  %65 = add nuw nsw i32 %51, 1
  %66 = icmp eq i32 %51, %48
  br i1 %66, label %67, label %50

67:                                               ; preds = %64, %40
  %68 = call noalias ptr @vmalloc(i32 noundef 983041) #16
  store ptr %68, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 1), align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 -1, ptr %6, align 4
  br label %121

71:                                               ; preds = %67
  store i32 983040, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 2), align 4
  %72 = getelementptr i8, ptr %68, i32 983040
  %73 = load i8, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 3), align 4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef -2147483648, ptr noundef nonnull @.str.18, ptr noundef nonnull @generic_mem_type_map) #14
  br label %74

74:                                               ; preds = %109, %71
  %75 = phi ptr [ %68, %71 ], [ %110, %109 ]
  %76 = phi ptr [ %72, %71 ], [ %111, %109 ]
  %77 = call fastcc i32 @mwifiex_sdio_rdwr_firmware(ptr noundef %12, i8 noundef zeroext %73) #14
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %118, label %79

79:                                               ; preds = %74
  br i1 %49, label %109, label %80

80:                                               ; preds = %104, %79
  %81 = phi ptr [ %106, %104 ], [ %76, %79 ]
  %82 = phi ptr [ %105, %104 ], [ %75, %79 ]
  %83 = phi i32 [ %107, %104 ], [ %45, %79 ]
  %84 = load ptr, ptr %23, align 4
  %85 = call zeroext i8 @sdio_readb(ptr noundef %84, i32 noundef %83, ptr noundef nonnull %6) #14
  store i8 %85, ptr %82, align 1
  %86 = load i32, ptr %6, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %80
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.16) #14
  br label %118

89:                                               ; preds = %80
  %90 = getelementptr i8, ptr %82, i32 1
  %91 = icmp ult ptr %90, %81
  br i1 %91, label %104, label %92

92:                                               ; preds = %89
  %93 = load i32, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 2), align 4
  %94 = add i32 %93, 16385
  %95 = call noalias ptr @vmalloc(i32 noundef %94) #16
  %96 = icmp eq ptr %95, null
  br i1 %96, label %118, label %97

97:                                               ; preds = %92
  %98 = load ptr, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 1), align 4
  %99 = load i32, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 2), align 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %95, ptr align 1 %98, i32 %99, i1 false) #14
  call void @vfree(ptr noundef %98) #14
  store ptr %95, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 1), align 4
  %100 = load i32, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 2), align 4
  %101 = getelementptr i8, ptr %95, i32 %100
  %102 = add i32 %100, 16384
  store i32 %102, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 2), align 4
  %103 = getelementptr i8, ptr %95, i32 %102
  br label %104

104:                                              ; preds = %97, %89
  %105 = phi ptr [ %90, %89 ], [ %101, %97 ]
  %106 = phi ptr [ %81, %89 ], [ %103, %97 ]
  %107 = add nuw nsw i32 %83, 1
  %108 = icmp eq i32 %83, %48
  br i1 %108, label %109, label %80

109:                                              ; preds = %104, %79
  %110 = phi ptr [ %75, %79 ], [ %105, %104 ]
  %111 = phi ptr [ %76, %79 ], [ %106, %104 ]
  %112 = icmp eq i32 %77, 2
  br i1 %112, label %113, label %74

113:                                              ; preds = %109
  %114 = load ptr, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 1), align 4
  %115 = ptrtoint ptr %110 to i32
  %116 = ptrtoint ptr %114 to i32
  %117 = sub i32 %115, %116
  store i32 %117, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 2), align 4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef -2147483648, ptr noundef nonnull @.str.19, ptr noundef nonnull @generic_mem_type_map, i32 noundef %117) #14
  store i32 0, ptr %6, align 4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 1, ptr noundef nonnull @.str.20) #14
  br label %118

118:                                              ; preds = %113, %92, %88, %74, %58, %32
  %119 = load i32, ptr %6, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %70
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.21) #14
  %122 = load ptr, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 1), align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  call void @vfree(ptr noundef nonnull %122) #14
  store ptr null, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 1), align 4
  br label %125

125:                                              ; preds = %124, %121
  store i32 0, ptr getelementptr inbounds ([1 x %struct.memory_type_mapping], ptr @generic_mem_type_map, i32 0, i32 0, i32 2), align 4
  br label %126

126:                                              ; preds = %125, %118
  %127 = load ptr, ptr %23, align 4
  call void @sdio_release_host(ptr noundef %127) #14
  br label %128

128:                                              ; preds = %126, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %280

129:                                              ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4
  %130 = getelementptr inbounds %struct.sdio_mmc_card, ptr %23, i32 0, i32 19
  %131 = load i8, ptr %130, align 2, !range !8
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %279, label %133

133:                                              ; preds = %139, %129
  %134 = phi i32 [ %141, %139 ], [ 0, %129 ]
  %135 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %134, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  tail call void @vfree(ptr noundef nonnull %136) #14
  store ptr null, ptr %135, align 4
  br label %139

139:                                              ; preds = %138, %133
  %140 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %134, i32 2
  store i32 0, ptr %140, align 4
  %141 = add nuw nsw i32 %134, 1
  %142 = icmp eq i32 %141, 15
  br i1 %142, label %143, label %133

143:                                              ; preds = %139
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.22) #14
  %144 = load ptr, ptr %13, align 4
  %145 = load ptr, ptr %144, align 4
  tail call void @sdio_claim_host(ptr noundef %145) #14
  %146 = load ptr, ptr %144, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 -1, ptr %3, align 4
  call void @sdio_writeb(ptr noundef %146, i8 noundef zeroext 2, i32 noundef 0, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %147 = load ptr, ptr %144, align 4
  call void @sdio_release_host(ptr noundef %147) #14
  %148 = load ptr, ptr %23, align 4
  call void @sdio_claim_host(ptr noundef %148) #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 1, ptr noundef nonnull @.str.15) #14
  %149 = call fastcc i32 @mwifiex_sdio_rdwr_firmware(ptr noundef %12, i8 noundef zeroext 0) #14
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %277, label %151

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.sdio_mmc_card, ptr %23, i32 0, i32 4
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %153, i32 0, i32 39
  %155 = load i8, ptr %154, align 2
  %156 = zext i8 %155 to i32
  %157 = load ptr, ptr %23, align 4
  %158 = call zeroext i8 @sdio_readb(ptr noundef %157, i32 noundef %156, ptr noundef nonnull %4) #14
  %159 = load i32, ptr %4, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %151
  %162 = icmp eq i8 %158, 0
  br i1 %162, label %276, label %163

163:                                              ; preds = %161
  %164 = zext i8 %158 to i32
  br label %166

165:                                              ; preds = %151
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.27) #14
  br label %277

166:                                              ; preds = %269, %163
  %167 = phi i32 [ 0, %163 ], [ %274, %269 ]
  %168 = phi i8 [ 0, %163 ], [ %234, %269 ]
  %169 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %167
  %170 = call fastcc i32 @mwifiex_sdio_rdwr_firmware(ptr noundef %12, i8 noundef zeroext %168) #14
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %277, label %172

172:                                              ; preds = %166
  %173 = load ptr, ptr %152, align 4
  %174 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %173, i32 0, i32 39
  %175 = load i8, ptr %174, align 2
  %176 = zext i8 %175 to i32
  %177 = load ptr, ptr %23, align 4
  %178 = call zeroext i8 @sdio_readb(ptr noundef %177, i32 noundef %176, ptr noundef nonnull %4) #14
  %179 = load i32, ptr %4, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %194, %188, %182, %172
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.16) #14
  br label %277

182:                                              ; preds = %172
  %183 = add nuw nsw i32 %176, 1
  %184 = load ptr, ptr %23, align 4
  %185 = call zeroext i8 @sdio_readb(ptr noundef %184, i32 noundef %183, ptr noundef nonnull %4) #14
  %186 = load i32, ptr %4, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %181

188:                                              ; preds = %182
  %189 = add nuw nsw i32 %176, 2
  %190 = load ptr, ptr %23, align 4
  %191 = call zeroext i8 @sdio_readb(ptr noundef %190, i32 noundef %189, ptr noundef nonnull %4) #14
  %192 = load i32, ptr %4, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %181

194:                                              ; preds = %188
  %195 = add nuw nsw i32 %176, 3
  %196 = load ptr, ptr %23, align 4
  %197 = call zeroext i8 @sdio_readb(ptr noundef %196, i32 noundef %195, ptr noundef nonnull %4) #14
  %198 = load i32, ptr %4, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %181

200:                                              ; preds = %194
  %201 = zext i8 %191 to i32
  %202 = shl nuw nsw i32 %201, 16
  %203 = zext i8 %185 to i32
  %204 = shl nuw nsw i32 %203, 8
  %205 = zext i8 %178 to i32
  %206 = or i32 %204, %205
  %207 = or i32 %202, %206
  %208 = zext i8 %197 to i32
  %209 = shl nuw i32 %208, 24
  %210 = or i32 %209, %207
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %224

212:                                              ; preds = %200
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef -2147483648, ptr noundef nonnull @.str.28) #14
  %213 = load ptr, ptr %152, align 4
  %214 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %213, i32 0, i32 38
  %215 = load i8, ptr %214, align 1
  %216 = zext i8 %215 to i32
  %217 = load ptr, ptr %13, align 4
  %218 = load ptr, ptr %217, align 4
  call void @sdio_claim_host(ptr noundef %218) #14
  %219 = load ptr, ptr %217, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 -1, ptr %2, align 4
  call void @sdio_writeb(ptr noundef %219, i8 noundef zeroext -2, i32 noundef %216, ptr noundef nonnull %2) #14
  %220 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %221 = load ptr, ptr %217, align 4
  call void @sdio_release_host(ptr noundef %221) #14
  store i32 %220, ptr %4, align 4
  %222 = icmp eq i32 %220, 0
  br i1 %222, label %276, label %223

223:                                              ; preds = %212
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.25) #14
  br label %279

224:                                              ; preds = %200
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef -2147483648, ptr noundef nonnull @.str.29, ptr noundef %169, i32 noundef %210) #14
  %225 = add i32 %210, 1
  %226 = call noalias ptr @vmalloc(i32 noundef %225) #16
  %227 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %167, i32 1
  store ptr %226, ptr %227, align 4
  %228 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %167, i32 2
  store i32 %210, ptr %228, align 4
  %229 = icmp eq ptr %226, null
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.30, ptr noundef %169) #14
  br label %277

231:                                              ; preds = %224
  %232 = getelementptr i8, ptr %226, i32 %210
  %233 = getelementptr [15 x %struct.memory_type_mapping], ptr @mem_type_mapping_tbl, i32 0, i32 %167, i32 3
  %234 = load i8, ptr %233, align 4
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef -2147483648, ptr noundef nonnull @.str.18, ptr noundef %169) #14
  br label %235

235:                                              ; preds = %266, %231
  %236 = phi ptr [ %226, %231 ], [ %267, %266 ]
  %237 = call fastcc i32 @mwifiex_sdio_rdwr_firmware(ptr noundef %12, i8 noundef zeroext %234) #14
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %277, label %239

239:                                              ; preds = %235
  %240 = load ptr, ptr %152, align 4
  %241 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %240, i32 0, i32 39
  %242 = load i8, ptr %241, align 2
  %243 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %240, i32 0, i32 40
  %244 = load i8, ptr %243, align 1
  %245 = icmp ugt i8 %242, %244
  br i1 %245, label %266, label %246

246:                                              ; preds = %239
  %247 = zext i8 %244 to i32
  %248 = zext i8 %242 to i32
  br label %249

249:                                              ; preds = %262, %246
  %250 = phi ptr [ %263, %262 ], [ %236, %246 ]
  %251 = phi i32 [ %264, %262 ], [ %248, %246 ]
  %252 = load ptr, ptr %23, align 4
  %253 = call zeroext i8 @sdio_readb(ptr noundef %252, i32 noundef %251, ptr noundef nonnull %4) #14
  store i8 %253, ptr %250, align 1
  %254 = load i32, ptr %4, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %257, label %256

256:                                              ; preds = %249
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.16) #14
  br label %277

257:                                              ; preds = %249
  %258 = icmp ult ptr %250, %232
  br i1 %258, label %259, label %261

259:                                              ; preds = %257
  %260 = getelementptr i8, ptr %250, i32 1
  br label %262

261:                                              ; preds = %257
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.31) #14
  br label %262

262:                                              ; preds = %261, %259
  %263 = phi ptr [ %260, %259 ], [ %250, %261 ]
  %264 = add nuw nsw i32 %251, 1
  %265 = icmp eq i32 %251, %247
  br i1 %265, label %266, label %249

266:                                              ; preds = %262, %239
  %267 = phi ptr [ %236, %239 ], [ %263, %262 ]
  %268 = icmp eq i32 %237, 2
  br i1 %268, label %269, label %235

269:                                              ; preds = %266
  %270 = load ptr, ptr %227, align 4
  %271 = ptrtoint ptr %267 to i32
  %272 = ptrtoint ptr %270 to i32
  %273 = sub i32 %271, %272
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef -2147483648, ptr noundef nonnull @.str.32, ptr noundef %169, i32 noundef %273) #14
  %274 = add nuw nsw i32 %167, 1
  %275 = icmp eq i32 %274, %164
  br i1 %275, label %276, label %166

276:                                              ; preds = %269, %212, %161
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %12, i32 noundef 1, ptr noundef nonnull @.str.20) #14
  br label %277

277:                                              ; preds = %276, %256, %235, %230, %181, %166, %165, %143
  %278 = load ptr, ptr %23, align 4
  call void @sdio_release_host(ptr noundef %278) #14
  br label %279

279:                                              ; preds = %277, %223, %129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %280

280:                                              ; preds = %279, %128
  call void @mwifiex_prepare_fw_dump_info(ptr noundef %12) #14
  call void @mwifiex_upload_device_dump(ptr noundef %12) #14
  br label %281

281:                                              ; preds = %280, %18, %1
  %282 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %7) #14
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %305, label %284

284:                                              ; preds = %281
  %285 = getelementptr i8, ptr %0, i32 -140
  %286 = load ptr, ptr %285, align 4
  %287 = getelementptr inbounds %struct.mwifiex_adapter, ptr %286, i32 0, i32 17
  %288 = load ptr, ptr %287, align 4
  %289 = load ptr, ptr %288, align 4
  %290 = call i32 @mwifiex_shutdown_sw(ptr noundef %286) #14
  %291 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 26
  call void @_clear_bit(i32 noundef 0, ptr noundef %291) #14
  call void @_clear_bit(i32 noundef 1, ptr noundef %291) #14
  call void @sdio_claim_host(ptr noundef %289) #14
  %292 = load ptr, ptr %289, align 8
  %293 = load ptr, ptr %292, align 8
  %294 = call i32 @mmc_hw_reset(ptr noundef %293) #14
  call void @sdio_release_host(ptr noundef %289) #14
  switch i32 %294, label %303 [
    i32 1, label %295
    i32 0, label %298
  ]

295:                                              ; preds = %284
  %296 = getelementptr inbounds %struct.mwifiex_adapter, ptr %286, i32 0, i32 135
  %297 = load ptr, ptr %296, align 4
  call void @complete_all(ptr noundef %297) #14
  br label %305

298:                                              ; preds = %284
  %299 = call i32 @mwifiex_reinit_sw(ptr noundef %286) #14
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %305, label %301

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct.sdio_func, ptr %289, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %302, ptr noundef nonnull @.str.33, i32 noundef %299) #15
  br label %305

303:                                              ; preds = %284
  %304 = getelementptr inbounds %struct.sdio_func, ptr %289, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %304, ptr noundef nonnull @.str.34, i32 noundef %294) #15
  br label %305

305:                                              ; preds = %303, %301, %298, %295, %281
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_add_card(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_drv_info_dump(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_prepare_fw_dump_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_upload_device_dump(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_pm_wakeup_card(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.22) #14
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  tail call void @sdio_claim_host(ptr noundef %5) #14
  %6 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 -1, ptr %2, align 4
  call void @sdio_writeb(ptr noundef %6, i8 noundef zeroext 2, i32 noundef 0, ptr noundef nonnull %2) #14
  %7 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %8 = load ptr, ptr %4, align 4
  call void @sdio_release_host(ptr noundef %8) #14
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_sdio_rdwr_firmware(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sdio_mmc_card, ptr %5, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %8, i32 0, i32 37
  %10 = load i8, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %8, i32 0, i32 38
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  call void @sdio_writeb(ptr noundef %6, i8 noundef zeroext %10, i32 noundef %13, ptr noundef nonnull %3) #14
  %14 = load i32, ptr %3, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %2
  %17 = icmp ne i8 %1, 0
  br label %18

18:                                               ; preds = %48, %16
  %19 = phi i32 [ 0, %16 ], [ %49, %48 ]
  %20 = load ptr, ptr %5, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %21, i32 0, i32 38
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = call zeroext i8 @sdio_readb(ptr noundef %20, i32 noundef %24, ptr noundef nonnull %3) #14
  %26 = load i32, ptr %3, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %18
  %29 = icmp eq i8 %25, -1
  br i1 %29, label %51, label %30

30:                                               ; preds = %28
  %31 = icmp eq i8 %25, %1
  %32 = select i1 %17, i1 %31, i1 false
  br i1 %32, label %58, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %34, i32 0, i32 37
  %36 = load i8, ptr %35, align 4
  %37 = icmp eq i8 %25, %36
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 536870912, ptr noundef nonnull @.str.24) #14
  %39 = load ptr, ptr %5, align 4
  %40 = load ptr, ptr %7, align 4
  %41 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %40, i32 0, i32 37
  %42 = load i8, ptr %41, align 4
  %43 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %40, i32 0, i32 38
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  call void @sdio_writeb(ptr noundef %39, i8 noundef zeroext %42, i32 noundef %45, ptr noundef nonnull %3) #14
  %46 = load i32, ptr %3, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %38, %33
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #14
  %49 = add nuw nsw i32 %19, 1
  %50 = icmp eq i32 %49, 100
  br i1 %50, label %51, label %18

51:                                               ; preds = %48, %28
  %52 = load ptr, ptr %7, align 4
  %53 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %52, i32 0, i32 37
  %54 = load i8, ptr %53, align 4
  %55 = icmp eq i8 %25, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51, %38, %18, %2
  %57 = phi ptr [ @.str.23, %2 ], [ @.str.26, %51 ], [ @.str.16, %18 ], [ @.str.25, %38 ]
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %57) #14
  br label %58

58:                                               ; preds = %56, %51, %30
  %59 = phi i32 [ 0, %51 ], [ 1, %56 ], [ 2, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_write_reg(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  tail call void @sdio_claim_host(ptr noundef %7) #14
  %8 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 -1, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %8, i8 noundef zeroext %2, i32 noundef %1, ptr noundef nonnull %4) #14
  %9 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %10 = load ptr, ptr %6, align 4
  call void @sdio_release_host(ptr noundef %10) #14
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_shutdown_sw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_hw_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_reinit_sw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_init_sdio(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.sdio_func, ptr %7, i32 0, i32 1, i32 8
  store ptr %4, ptr %8, align 8
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %9, i32 0, i32 7
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 -1, ptr %2, align 4
  %14 = load ptr, ptr %13, align 4
  tail call void @sdio_claim_host(ptr noundef %14) #14
  %15 = load ptr, ptr %13, align 4
  %16 = call zeroext i8 @sdio_readb(ptr noundef %15, i32 noundef %12, ptr noundef nonnull %2) #14
  %17 = load ptr, ptr %13, align 4
  call void @sdio_release_host(ptr noundef %17) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  call fastcc void @mwifiex_init_sdio_ioport(ptr noundef %0)
  %18 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 10
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 11
  store i32 0, ptr %19, align 4
  %20 = load i8, ptr %6, align 4
  %21 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 14
  store i8 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %6, i32 0, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 15
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %6, i32 0, i32 12
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 13
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 23, i32 1
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 23, i32 2
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 23, i32 4
  store i16 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 23, i32 5
  store i8 1, ptr %31, align 2
  %32 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 6
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 23, i32 7
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 24, i32 1
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 24, i32 2
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 24, i32 4
  store i16 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 24, i32 7
  store i8 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 24, i32 9
  store i32 %34, ptr %40, align 4
  %41 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %6, i32 0, i32 16
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = call noalias align 64 ptr @__kmalloc(i32 noundef %43, i32 noundef 3520) #16
  %45 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 16
  store ptr %44, ptr %45, align 4
  %46 = icmp eq ptr %44, null
  br i1 %46, label %124, label %47

47:                                               ; preds = %1
  %48 = load i8, ptr %32, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 2
  %51 = call noalias align 64 ptr @__kmalloc(i32 noundef %50, i32 noundef 3520) #16
  %52 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 24, i32 5
  store ptr %51, ptr %52, align 4
  %53 = icmp eq ptr %51, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load ptr, ptr %45, align 4
  call void @kfree(ptr noundef %55) #14
  br label %124

56:                                               ; preds = %47
  %57 = load i8, ptr %32, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 2
  %60 = call noalias align 64 ptr @__kmalloc(i32 noundef %59, i32 noundef 3520) #16
  %61 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 24, i32 6
  store ptr %60, ptr %61, align 4
  %62 = icmp eq ptr %60, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load ptr, ptr %45, align 4
  call void @kfree(ptr noundef %64) #14
  %65 = load ptr, ptr %52, align 4
  call void @kfree(ptr noundef %65) #14
  br label %124

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 8
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 9
  %70 = load i32, ptr %69, align 4
  %71 = load ptr, ptr %3, align 4
  %72 = call noalias align 64 ptr @__kmalloc(i32 noundef %68, i32 noundef 3520) #16
  %73 = getelementptr inbounds %struct.sdio_mmc_card, ptr %71, i32 0, i32 23
  store ptr %72, ptr %73, align 4
  %74 = icmp eq ptr %72, null
  br i1 %74, label %85, label %75

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.sdio_mmc_card, ptr %71, i32 0, i32 23, i32 6
  store i32 %68, ptr %76, align 4
  %77 = call i32 @llvm.umax.i32(i32 %70, i32 65280) #14
  %78 = call noalias align 64 ptr @__kmalloc(i32 noundef %77, i32 noundef 3520) #16
  %79 = getelementptr inbounds %struct.sdio_mmc_card, ptr %71, i32 0, i32 24
  store ptr %78, ptr %79, align 4
  %80 = icmp eq ptr %78, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load ptr, ptr %73, align 4
  br label %85

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.sdio_mmc_card, ptr %71, i32 0, i32 24, i32 8
  store i32 %77, ptr %84, align 4
  br label %117

85:                                               ; preds = %81, %66
  %86 = phi ptr [ %82, %81 ], [ null, %66 ]
  call void @kfree(ptr noundef %86) #14
  %87 = getelementptr inbounds %struct.sdio_mmc_card, ptr %71, i32 0, i32 24
  %88 = load ptr, ptr %87, align 4
  call void @kfree(ptr noundef %88) #14
  %89 = getelementptr inbounds %struct.sdio_mmc_card, ptr %71, i32 0, i32 23, i32 6
  store i32 0, ptr %89, align 4
  %90 = getelementptr inbounds %struct.sdio_mmc_card, ptr %71, i32 0, i32 24, i32 8
  store i32 0, ptr %90, align 4
  store ptr null, ptr %73, align 4
  store ptr null, ptr %87, align 4
  %91 = load i32, ptr %67, align 4
  %92 = icmp eq i32 %91, 65280
  br i1 %92, label %96, label %93

93:                                               ; preds = %85
  %94 = load i32, ptr %69, align 4
  %95 = icmp eq i32 %94, 65280
  br i1 %95, label %96, label %117

96:                                               ; preds = %93, %85
  %97 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 41
  store i8 1, ptr %97, align 2
  %98 = load ptr, ptr %3, align 4
  %99 = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3520, i32 noundef 3) #16
  %100 = getelementptr inbounds %struct.sdio_mmc_card, ptr %98, i32 0, i32 23
  store ptr %99, ptr %100, align 4
  %101 = icmp eq ptr %99, null
  br i1 %101, label %111, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.sdio_mmc_card, ptr %98, i32 0, i32 23, i32 6
  store i32 32768, ptr %103, align 4
  %104 = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65280, i32 noundef 3520, i32 noundef 4) #16
  %105 = getelementptr inbounds %struct.sdio_mmc_card, ptr %98, i32 0, i32 24
  store ptr %104, ptr %105, align 4
  %106 = icmp eq ptr %104, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load ptr, ptr %100, align 4
  br label %111

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.sdio_mmc_card, ptr %98, i32 0, i32 24, i32 8
  store i32 65280, ptr %110, align 4
  br label %117

111:                                              ; preds = %107, %96
  %112 = phi ptr [ %108, %107 ], [ null, %96 ]
  call void @kfree(ptr noundef %112) #14
  %113 = getelementptr inbounds %struct.sdio_mmc_card, ptr %98, i32 0, i32 24
  %114 = load ptr, ptr %113, align 4
  call void @kfree(ptr noundef %114) #14
  %115 = getelementptr inbounds %struct.sdio_mmc_card, ptr %98, i32 0, i32 23, i32 6
  store i32 0, ptr %115, align 4
  %116 = getelementptr inbounds %struct.sdio_mmc_card, ptr %98, i32 0, i32 24, i32 8
  store i32 0, ptr %116, align 4
  store ptr null, ptr %100, align 4
  store ptr null, ptr %113, align 4
  store i8 0, ptr %31, align 2
  store i8 0, ptr %39, align 4
  br label %117

117:                                              ; preds = %111, %109, %93, %83
  %118 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 21
  %119 = load i8, ptr %118, align 4, !range !8
  %120 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 151
  store i8 %119, ptr %120, align 4
  %121 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 22
  %122 = load i8, ptr %121, align 1, !range !8
  %123 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 137
  store i8 %122, ptr %123, align 1
  br label %124

124:                                              ; preds = %117, %63, %54, %1
  %125 = phi i32 [ 0, %117 ], [ -12, %63 ], [ -12, %54 ], [ -12, %1 ]
  ret i32 %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mwifiex_cleanup_sdio(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 25
  %5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #14
  %8 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 24
  %9 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 24, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %10) #14
  %11 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 24, i32 6
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #14
  %13 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 23
  %14 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %14) #14
  %15 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %15) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_check_fw_status(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #14
  store i16 0, ptr %3, align 2, !annotation !9
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %13, %2
  %6 = phi i32 [ %14, %13 ], [ 0, %2 ]
  %7 = call fastcc i32 @mwifiex_sdio_read_fw_status(ptr noundef %0, ptr noundef nonnull %3)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i16, ptr %3, align 2
  %11 = icmp eq i16 %10, -292
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  tail call void @msleep(i32 noundef 100) #14
  br label %13

13:                                               ; preds = %12, %5
  %14 = add nuw i32 %6, 1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %5

16:                                               ; preds = %13, %9, %2
  %17 = phi i32 [ 0, %2 ], [ 0, %9 ], [ -1, %13 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #14
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_check_winner_status(ptr nocapture noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %6, i32 0, i32 9
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 -1, ptr %2, align 4
  %10 = load ptr, ptr %4, align 4
  tail call void @sdio_claim_host(ptr noundef %10) #14
  %11 = load ptr, ptr %4, align 4
  %12 = call zeroext i8 @sdio_readb(ptr noundef %11, i32 noundef %9, ptr noundef nonnull %2) #14
  %13 = load ptr, ptr %4, align 4
  call void @sdio_release_host(ptr noundef %13) #14
  %14 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = icmp eq i8 %12, 0
  %18 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 8
  %19 = zext i1 %17 to i32
  store i32 %19, ptr %18, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = phi i32 [ -1, %1 ], [ 0, %16 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_prog_fw_w_helper(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mwifiex_fw_image, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mwifiex_fw_image, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.37) #14
  br label %136

16:                                               ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.38, i32 noundef %13) #14
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 2312) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %136, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %7, align 4
  tail call void @sdio_claim_host(ptr noundef %21) #14
  %22 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %9, i32 0, i32 2
  %23 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %9, i32 0, i32 3
  %24 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 44
  %25 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 12
  br label %26

26:                                               ; preds = %119, %20
  %27 = phi i32 [ 0, %20 ], [ %127, %119 ]
  %28 = phi i32 [ 0, %20 ], [ %111, %119 ]
  %29 = phi i32 [ 0, %20 ], [ %112, %119 ]
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.sdio_mmc_card, ptr %30, i32 0, i32 4
  br label %32

32:                                               ; preds = %51, %26
  %33 = phi ptr [ %30, %26 ], [ %52, %51 ]
  %34 = phi i32 [ 0, %26 ], [ %49, %51 ]
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %35, i32 0, i32 4
  %37 = load i8, ptr %36, align 4
  %38 = zext i8 %37 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 -1, ptr %5, align 4
  %39 = load ptr, ptr %33, align 4
  call void @sdio_claim_host(ptr noundef %39) #14
  %40 = load ptr, ptr %33, align 4
  %41 = call zeroext i8 @sdio_readb(ptr noundef %40, i32 noundef %38, ptr noundef nonnull %5) #14
  %42 = load ptr, ptr %33, align 4
  call void @sdio_release_host(ptr noundef %42) #14
  %43 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %32
  %46 = and i8 %41, 9
  %47 = icmp eq i8 %46, 9
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #14
  %49 = add nuw nsw i32 %34, 1
  %50 = icmp eq i32 %49, 100
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %6, align 4
  br label %32

53:                                               ; preds = %48, %32
  %54 = phi i32 [ %34, %32 ], [ 100, %48 ]
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.48, i32 noundef %54) #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.39, i32 noundef %27) #14
  br label %133

55:                                               ; preds = %45
  %56 = icmp ugt i32 %13, %27
  br i1 %56, label %57, label %132

57:                                               ; preds = %88, %55
  %58 = phi i32 [ %89, %88 ], [ 0, %55 ]
  %59 = load i8, ptr %22, align 2
  %60 = zext i8 %59 to i32
  %61 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 -1, ptr %4, align 4
  %62 = load ptr, ptr %61, align 4
  call void @sdio_claim_host(ptr noundef %62) #14
  %63 = load ptr, ptr %61, align 4
  %64 = call zeroext i8 @sdio_readb(ptr noundef %63, i32 noundef %60, ptr noundef nonnull %4) #14
  %65 = load ptr, ptr %61, align 4
  call void @sdio_release_host(ptr noundef %65) #14
  %66 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %57
  %69 = zext i8 %64 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.40, i32 noundef %69, i32 noundef %69) #14
  br label %133

70:                                               ; preds = %57
  %71 = load i8, ptr %23, align 1
  %72 = zext i8 %71 to i32
  %73 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 -1, ptr %3, align 4
  %74 = load ptr, ptr %73, align 4
  call void @sdio_claim_host(ptr noundef %74) #14
  %75 = load ptr, ptr %73, align 4
  %76 = call zeroext i8 @sdio_readb(ptr noundef %75, i32 noundef %72, ptr noundef nonnull %3) #14
  %77 = load ptr, ptr %73, align 4
  call void @sdio_release_host(ptr noundef %77) #14
  %78 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %70
  %81 = zext i8 %76 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef %81, i32 noundef %81) #14
  br label %133

82:                                               ; preds = %70
  %83 = zext i8 %76 to i16
  %84 = shl nuw i16 %83, 8
  %85 = zext i8 %64 to i16
  %86 = or i16 %84, %85
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #14
  %89 = add nuw nsw i32 %58, 1
  %90 = icmp eq i32 %89, 100
  br i1 %90, label %132, label %57

91:                                               ; preds = %82
  %92 = zext i16 %86 to i32
  %93 = icmp ugt i16 %86, 2312
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.42, i32 noundef %27, i32 noundef %92) #14
  br label %133

95:                                               ; preds = %91
  %96 = and i32 %92, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = add i32 %29, 1
  %100 = icmp ugt i32 %99, 2
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.43, i32 noundef %27) #14
  br label %133

102:                                              ; preds = %98
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.44, i32 noundef %92, i32 noundef %92) #14
  br label %109

103:                                              ; preds = %95
  %104 = sub i32 %13, %27
  %105 = call i32 @llvm.umin.i32(i32 %104, i32 %92)
  %106 = add nuw nsw i32 %105, 255
  %107 = lshr i32 %106, 8
  %108 = getelementptr i8, ptr %11, i32 %27
  call void @llvm.memmove.p0.p0.i32(ptr nonnull align 8 %18, ptr align 1 %108, i32 %105, i1 false)
  br label %109

109:                                              ; preds = %103, %102
  %110 = phi i32 [ 0, %102 ], [ %105, %103 ]
  %111 = phi i32 [ %28, %102 ], [ %107, %103 ]
  %112 = phi i32 [ %99, %102 ], [ 0, %103 ]
  %113 = load i32, ptr %24, align 4
  %114 = load ptr, ptr %6, align 4
  %115 = load volatile i32, ptr %25, align 4
  %116 = and i32 %115, 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %109
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.mwifiex_write_data_sync) #14
  br label %128

119:                                              ; preds = %109
  %120 = shl i32 %111, 8
  %121 = and i32 %113, 1048575
  %122 = load ptr, ptr %114, align 4
  call void @sdio_claim_host(ptr noundef %122) #14
  %123 = load ptr, ptr %114, align 4
  %124 = call i32 @sdio_writesb(ptr noundef %123, i32 noundef %121, ptr noundef nonnull %18, i32 noundef %120) #14
  %125 = load ptr, ptr %114, align 4
  call void @sdio_release_host(ptr noundef %125) #14
  %126 = icmp eq i32 %124, 0
  %127 = add i32 %110, %27
  br i1 %126, label %26, label %128

128:                                              ; preds = %119, %118
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.45, i32 noundef %112, i32 noundef %27) #14
  %129 = call fastcc i32 @mwifiex_write_reg(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 4)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.46) #14
  br label %133

132:                                              ; preds = %88, %55
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.47, i32 noundef %27) #14
  br label %133

133:                                              ; preds = %132, %131, %128, %101, %94, %80, %68, %53
  %134 = phi i32 [ -1, %53 ], [ 0, %132 ], [ %66, %68 ], [ %78, %80 ], [ -1, %94 ], [ -1, %101 ], [ -1, %131 ], [ -1, %128 ]
  %135 = load ptr, ptr %7, align 4
  call void @sdio_release_host(ptr noundef %135) #14
  call void @kfree(ptr noundef nonnull %18) #14
  br label %136

136:                                              ; preds = %133, %16, %15
  %137 = phi i32 [ %134, %133 ], [ -1, %15 ], [ -12, %16 ]
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_register_dev(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 1
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 7
  %7 = load i16, ptr %6, align 2
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 39
  store i16 %7, ptr %8, align 2
  tail call void @sdio_claim_host(ptr noundef %4) #14
  %9 = load ptr, ptr %3, align 4
  %10 = tail call i32 @sdio_set_block_size(ptr noundef %9, i32 noundef 256) #14
  tail call void @sdio_release_host(ptr noundef %4) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.50) #14
  br label %26

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 7
  %15 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @strcpy(ptr noundef %14, ptr noundef %16)
  %18 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 20
  %19 = load i8, ptr %18, align 1, !range !8
  %20 = icmp eq i8 %19, 0
  %21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 143
  br i1 %20, label %24, label %22

22:                                               ; preds = %13
  store ptr @generic_mem_type_map, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 144
  store i8 1, ptr %23, align 4
  br label %26

24:                                               ; preds = %13
  store ptr @mem_type_mapping_tbl, ptr %21, align 4
  %25 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 144
  store i8 15, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %22, %12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mwifiex_unregister_dev(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 1
  store ptr null, ptr %6, align 4
  %7 = load ptr, ptr %3, align 4
  tail call void @sdio_claim_host(ptr noundef %7) #14
  %8 = load ptr, ptr %3, align 4
  %9 = tail call i32 @sdio_disable_func(ptr noundef %8) #14
  %10 = load ptr, ptr %3, align 4
  tail call void @sdio_release_host(ptr noundef %10) #14
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_enable_host_int(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  tail call void @sdio_claim_host(ptr noundef %5) #14
  %6 = tail call i32 @sdio_claim_irq(ptr noundef %5, ptr noundef nonnull @mwifiex_sdio_interrupt) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.51, i32 noundef %6) #14
  br label %21

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %11, i32 0, i32 8
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %11, i32 0, i32 5
  %16 = load i8, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 -1, ptr %2, align 4
  call void @sdio_writeb(ptr noundef %5, i8 noundef zeroext %16, i32 noundef %14, ptr noundef nonnull %2) #14
  %17 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %9
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.52) #14
  %20 = call i32 @sdio_release_irq(ptr noundef %5) #14
  br label %21

21:                                               ; preds = %19, %9, %8
  %22 = phi i32 [ %6, %8 ], [ %17, %19 ], [ 0, %9 ]
  call void @sdio_release_host(ptr noundef %5) #14
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mwifiex_sdio_disable_host_int(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  tail call void @sdio_claim_host(ptr noundef %5) #14
  %6 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %7, i32 0, i32 8
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 -1, ptr %2, align 4
  call void @sdio_writeb(ptr noundef %5, i8 noundef zeroext 0, i32 noundef %10, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %11 = call i32 @sdio_release_irq(ptr noundef %5) #14
  call void @sdio_release_host(ptr noundef %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_process_int_status(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 48
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #14
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 49
  %14 = load i8, ptr %13, align 4
  store i8 0, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #14
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %641, label %16

16:                                               ; preds = %1
  %17 = zext i8 %14 to i32
  %18 = and i32 %17, 128
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 54
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i8 0, ptr %21, align 1
  br label %25

25:                                               ; preds = %24, %20, %16
  %26 = and i32 %17, 64
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %76, label %28

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !9
  %29 = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %10, i32 0, i32 30
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr i8, ptr %30, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 8
  %38 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %10, i32 0, i32 29
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = getelementptr i8, ptr %30, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %37, %43
  %45 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 14
  %46 = load i8, ptr %45, align 4
  %47 = zext i8 %46 to i32
  %48 = icmp ugt i32 %44, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %28
  %50 = add nuw nsw i32 %44, 255
  %51 = and i32 %50, 130816
  %52 = icmp ugt i32 %51, 4096
  br i1 %52, label %74, label %53

53:                                               ; preds = %49
  %54 = and i32 %50, 65280
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.56, i32 noundef %54) #14
  %55 = tail call ptr @mwifiex_alloc_dma_align_buf(i32 noundef %54, i32 noundef 3264) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %74, label %57

57:                                               ; preds = %53
  %58 = tail call ptr @skb_put(ptr noundef nonnull %55, i32 noundef %54) #14
  %59 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 17
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 5
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 44
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %64, 32768
  %66 = call fastcc i32 @mwifiex_sdio_card_to_host(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %60, i32 noundef %62, i32 noundef %65)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load i32, ptr %6, align 4
  %70 = and i32 %69, -3
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.mwifiex_process_int_status) #14
  br label %73

73:                                               ; preds = %72, %68
  tail call fastcc void @mwifiex_decode_rx_packet(ptr noundef %0, ptr noundef nonnull %55, i32 noundef %69)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %76

74:                                               ; preds = %53, %49, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %641

75:                                               ; preds = %57
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.mwifiex_process_int_status) #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %55, i32 noundef 1) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %609

76:                                               ; preds = %73, %25
  %77 = and i32 %17, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %129, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 16
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %10, i32 0, i32 21
  %83 = load i8, ptr %82, align 4
  %84 = zext i8 %83 to i32
  %85 = getelementptr i8, ptr %81, i32 %84
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %10, i32 0, i32 22
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = getelementptr i8, ptr %81, i32 %90
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 8
  %95 = or i32 %94, %87
  %96 = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 17
  %97 = load i8, ptr %96, align 4, !range !8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %116, label %99

99:                                               ; preds = %79
  %100 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %10, i32 0, i32 23
  %101 = load i8, ptr %100, align 2
  %102 = zext i8 %101 to i32
  %103 = getelementptr i8, ptr %81, i32 %102
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 16
  %107 = or i32 %106, %95
  %108 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %10, i32 0, i32 24
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = getelementptr i8, ptr %81, i32 %110
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = shl nuw i32 %113, 24
  %115 = or i32 %107, %114
  br label %116

116:                                              ; preds = %99, %79
  %117 = phi i32 [ %115, %99 ], [ %95, %79 ]
  %118 = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 11
  store i32 %117, ptr %118, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 64, ptr noundef nonnull @.str.59, i32 noundef %117) #14
  %119 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 53
  %120 = load i8, ptr %119, align 4
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %116
  %123 = load i32, ptr %118, align 4
  %124 = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 13
  %125 = load i32, ptr %124, align 4
  %126 = and i32 %125, %123
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %122
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 64, ptr noundef nonnull @.str.60) #14
  store i8 0, ptr %119, align 4
  br label %129

129:                                              ; preds = %128, %122, %116, %76
  %130 = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 18
  %131 = load i8, ptr %130, align 1, !range !8
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %153, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 54
  %135 = load i8, ptr %134, align 1
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %153, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 16
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %10, i32 0, i32 21
  %141 = load i8, ptr %140, align 4
  %142 = zext i8 %141 to i32
  %143 = getelementptr i8, ptr %139, i32 %142
  %144 = load i8, ptr %143, align 1
  %145 = and i8 %144, 1
  %146 = zext i8 %145 to i32
  %147 = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 11
  %148 = load i32, ptr %147, align 4
  %149 = or i32 %148, %146
  store i32 %149, ptr %147, align 4
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %137
  store i8 0, ptr %134, align 1
  br label %153

153:                                              ; preds = %152, %137, %133, %129
  %154 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 54
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 53
  %158 = load i8, ptr %157, align 4
  %159 = zext i8 %158 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 64, ptr noundef nonnull @.str.61, i32 noundef %156, i32 noundef %159) #14
  %160 = and i32 %17, 1
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %641, label %162

162:                                              ; preds = %153
  %163 = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 16
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %10, i32 0, i32 17
  %166 = load i8, ptr %165, align 4
  %167 = zext i8 %166 to i32
  %168 = getelementptr i8, ptr %164, i32 %167
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %10, i32 0, i32 18
  %172 = load i8, ptr %171, align 1
  %173 = zext i8 %172 to i32
  %174 = getelementptr i8, ptr %164, i32 %173
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i32
  %177 = shl nuw nsw i32 %176, 8
  %178 = or i32 %177, %170
  %179 = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 17
  %180 = load i8, ptr %179, align 4, !range !8
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %199, label %182

182:                                              ; preds = %162
  %183 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %10, i32 0, i32 19
  %184 = load i8, ptr %183, align 2
  %185 = zext i8 %184 to i32
  %186 = getelementptr i8, ptr %164, i32 %185
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i32
  %189 = shl nuw nsw i32 %188, 16
  %190 = or i32 %189, %178
  %191 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %10, i32 0, i32 20
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i32
  %194 = getelementptr i8, ptr %164, i32 %193
  %195 = load i8, ptr %194, align 1
  %196 = zext i8 %195 to i32
  %197 = shl nuw i32 %196, 24
  %198 = or i32 %190, %197
  br label %199

199:                                              ; preds = %182, %162
  %200 = phi i32 [ %198, %182 ], [ %178, %162 ]
  %201 = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 10
  store i32 %200, ptr %201, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 64, ptr noundef nonnull @.str.62, i32 noundef %200) #14
  %202 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %10, i32 0, i32 25
  %203 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %10, i32 0, i32 26
  %204 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 14
  %205 = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 24, i32 7
  %206 = getelementptr inbounds %struct.sdio_mmc_card, ptr %8, i32 0, i32 24, i32 8
  %207 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 44
  %208 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 42
  br label %209

209:                                              ; preds = %607, %199
  %210 = load ptr, ptr %7, align 4
  %211 = getelementptr inbounds %struct.sdio_mmc_card, ptr %210, i32 0, i32 4
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.sdio_mmc_card, ptr %210, i32 0, i32 10
  %214 = load i32, ptr %213, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.79, i32 noundef %214) #14
  %215 = getelementptr inbounds %struct.sdio_mmc_card, ptr %210, i32 0, i32 17
  %216 = load i8, ptr %215, align 4, !range !8
  %217 = icmp eq i8 %216, 0
  %218 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %212, i32 0, i32 12
  %219 = load i32, ptr %218, align 4
  br i1 %217, label %223, label %220

220:                                              ; preds = %209
  %221 = and i32 %219, %214
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %254, label %227

223:                                              ; preds = %209
  %224 = or i32 %219, 1
  %225 = and i32 %224, %214
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %254, label %227

227:                                              ; preds = %223, %220
  %228 = getelementptr inbounds %struct.sdio_mmc_card, ptr %210, i32 0, i32 18
  %229 = load i8, ptr %228, align 1, !range !8
  %230 = icmp eq i8 %229, 0
  %231 = load i32, ptr %213, align 4
  %232 = and i32 %231, 1
  %233 = icmp eq i32 %232, 0
  %234 = select i1 %230, i1 true, i1 %233
  br i1 %234, label %237, label %235

235:                                              ; preds = %227
  %236 = and i32 %231, -2
  store i32 %236, ptr %213, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.80, i32 noundef 0, i32 noundef %236) #14
  br label %255

237:                                              ; preds = %227
  %238 = getelementptr inbounds %struct.sdio_mmc_card, ptr %210, i32 0, i32 14
  %239 = load i8, ptr %238, align 4
  %240 = zext i8 %239 to i32
  %241 = shl nuw i32 1, %240
  %242 = and i32 %241, %231
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %254, label %244

244:                                              ; preds = %237
  %245 = xor i32 %241, -1
  %246 = and i32 %231, %245
  store i32 %246, ptr %213, align 4
  %247 = add i8 %239, 1
  store i8 %247, ptr %238, align 4
  %248 = getelementptr inbounds %struct.sdio_mmc_card, ptr %210, i32 0, i32 5
  %249 = load i8, ptr %248, align 4
  %250 = icmp eq i8 %247, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %244
  %252 = load i8, ptr %212, align 4
  store i8 %252, ptr %238, align 4
  br label %253

253:                                              ; preds = %251, %244
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.81, i32 noundef %240, i32 noundef %214, i32 noundef %246) #14
  br label %255

254:                                              ; preds = %237, %223, %220
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.63) #14
  br label %641

255:                                              ; preds = %253, %235
  %256 = phi i8 [ %239, %253 ], [ 0, %235 ]
  %257 = load i8, ptr %202, align 4
  %258 = zext i8 %257 to i32
  %259 = zext i8 %256 to i32
  %260 = shl nuw nsw i32 %259, 1
  %261 = add nuw nsw i32 %260, %258
  %262 = load i8, ptr %203, align 1
  %263 = zext i8 %262 to i32
  %264 = add nuw nsw i32 %260, %263
  %265 = load ptr, ptr %163, align 4
  %266 = getelementptr i8, ptr %265, i32 %264
  %267 = load i8, ptr %266, align 1
  %268 = zext i8 %267 to i32
  %269 = shl nuw nsw i32 %268, 8
  %270 = getelementptr i8, ptr %265, i32 %261
  %271 = load i8, ptr %270, align 1
  %272 = zext i8 %271 to i32
  %273 = or i32 %269, %272
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.64, i32 noundef %259, i32 noundef %273) #14
  %274 = add nuw nsw i32 %273, 255
  %275 = and i32 %274, 130816
  %276 = load i8, ptr %204, align 4
  %277 = zext i8 %276 to i32
  %278 = icmp ugt i32 %273, %277
  br i1 %278, label %279, label %285

279:                                              ; preds = %255
  %280 = load i8, ptr %205, align 4
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %279
  %283 = load i32, ptr %206, align 4
  %284 = icmp ugt i32 %275, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %282, %255
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.65, i32 noundef %273) #14
  br label %641

286:                                              ; preds = %282, %279
  %287 = and i32 %274, 65280
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.56, i32 noundef %287) #14
  %288 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !9
  %289 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 18
  %290 = load i8, ptr %289, align 1, !range !8
  %291 = icmp ne i8 %290, 0
  %292 = icmp eq i8 %256, 0
  %293 = and i1 %292, %291
  br i1 %293, label %294, label %295

294:                                              ; preds = %286
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__.mwifiex_sdio_card_to_host_mp_aggr) #14
  br label %526

295:                                              ; preds = %286
  %296 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24
  %297 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 7
  %298 = load i8, ptr %297, align 4
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 536870912, ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__.mwifiex_sdio_card_to_host_mp_aggr) #14
  br label %526

301:                                              ; preds = %295
  %302 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 10
  %303 = load i32, ptr %302, align 4
  br i1 %291, label %311, label %304

304:                                              ; preds = %301
  %305 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 4
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %306, i32 0, i32 12
  %308 = load i32, ptr %307, align 4
  %309 = and i32 %308, %303
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %324, label %313

311:                                              ; preds = %301
  %312 = icmp ult i32 %303, 2
  br i1 %312, label %324, label %313

313:                                              ; preds = %311, %304
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.mwifiex_sdio_card_to_host_mp_aggr) #14
  %314 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 2
  %315 = load i32, ptr %314, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %335, label %317

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 1
  %319 = load i32, ptr %318, align 4
  %320 = add i32 %319, %287
  %321 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 8
  %322 = load i32, ptr %321, align 4
  %323 = icmp ugt i32 %320, %322
  br i1 %323, label %418, label %335

324:                                              ; preds = %311, %304
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.mwifiex_sdio_card_to_host_mp_aggr) #14
  %325 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 2
  %326 = load i32, ptr %325, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %526, label %328

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 1
  %330 = load i32, ptr %329, align 4
  %331 = add i32 %330, %287
  %332 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 8
  %333 = load i32, ptr %332, align 4
  %334 = icmp ugt i32 %331, %333
  br i1 %334, label %418, label %335

335:                                              ; preds = %328, %317, %313
  %336 = phi i1 [ true, %317 ], [ false, %328 ], [ true, %313 ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.86) #14
  %337 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 1
  %338 = load i32, ptr %337, align 4
  %339 = add i32 %338, %287
  store i32 %339, ptr %337, align 4
  %340 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 2
  %341 = load i32, ptr %340, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %335
  %344 = zext i8 %256 to i16
  %345 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 4
  store i16 %344, ptr %345, align 4
  br label %346

346:                                              ; preds = %343, %335
  %347 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 17
  %348 = load i8, ptr %347, align 4, !range !8
  %349 = icmp eq i8 %348, 0
  br i1 %349, label %350, label %357

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 4
  %352 = load i16, ptr %351, align 4
  %353 = zext i8 %256 to i16
  %354 = icmp ugt i16 %352, %353
  %355 = zext i1 %354 to i32
  %356 = add i32 %341, %355
  br label %357

357:                                              ; preds = %350, %346
  %358 = phi i32 [ %356, %350 ], [ %259, %346 ]
  %359 = shl nuw i32 1, %358
  %360 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 3
  %361 = load i32, ptr %360, align 4
  %362 = or i32 %361, %359
  store i32 %362, ptr %360, align 4
  %363 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 5
  %364 = load ptr, ptr %363, align 4
  %365 = getelementptr ptr, ptr %364, i32 %341
  store ptr null, ptr %365, align 4
  %366 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 6
  %367 = load ptr, ptr %366, align 4
  %368 = load i32, ptr %340, align 4
  %369 = getelementptr i32, ptr %367, i32 %368
  store i32 %287, ptr %369, align 4
  %370 = load i32, ptr %340, align 4
  %371 = add i32 %370, 1
  store i32 %371, ptr %340, align 4
  %372 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 9
  %373 = load i32, ptr %372, align 4
  %374 = icmp eq i32 %371, %373
  br i1 %374, label %415, label %375

375:                                              ; preds = %357
  %376 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 14
  %377 = load i8, ptr %376, align 4
  %378 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 4
  %379 = load i16, ptr %378, align 4
  %380 = zext i8 %377 to i16
  %381 = icmp ugt i16 %379, %380
  %382 = load i8, ptr %347, align 4, !range !8
  br i1 %381, label %383, label %404

383:                                              ; preds = %375
  %384 = icmp eq i8 %382, 0
  br i1 %384, label %390, label %385

385:                                              ; preds = %383
  %386 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 12
  %387 = load i16, ptr %386, align 4
  %388 = lshr i16 %387, 1
  %389 = trunc i16 %388 to i8
  br label %393

390:                                              ; preds = %383
  %391 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 6
  %392 = load i8, ptr %391, align 1
  br label %393

393:                                              ; preds = %390, %385
  %394 = phi i8 [ %389, %385 ], [ %392, %390 ]
  %395 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 5
  %396 = load i8, ptr %395, align 4
  %397 = zext i8 %396 to i32
  %398 = zext i16 %379 to i32
  %399 = zext i8 %377 to i32
  %400 = sub nsw i32 %399, %398
  %401 = add nsw i32 %400, %397
  %402 = zext i8 %394 to i32
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %415

404:                                              ; preds = %393, %375
  %405 = icmp eq i8 %382, 0
  br i1 %405, label %417, label %406

406:                                              ; preds = %404
  %407 = zext i8 %377 to i32
  %408 = zext i16 %379 to i32
  %409 = sub nsw i32 %407, %408
  %410 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 12
  %411 = load i16, ptr %410, align 4
  %412 = lshr i16 %411, 1
  %413 = zext i16 %412 to i32
  %414 = icmp slt i32 %409, %413
  br i1 %414, label %417, label %415

415:                                              ; preds = %406, %393, %357
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.mwifiex_sdio_card_to_host_mp_aggr) #14
  %416 = load i32, ptr %340, align 4
  br label %418

417:                                              ; preds = %406, %404
  br i1 %336, label %607, label %418

418:                                              ; preds = %417, %415, %328, %317
  %419 = phi i32 [ %371, %417 ], [ %326, %328 ], [ %416, %415 ], [ %315, %317 ]
  %420 = phi i1 [ true, %417 ], [ false, %328 ], [ true, %415 ], [ true, %317 ]
  %421 = phi i32 [ 0, %417 ], [ 1, %328 ], [ 0, %415 ], [ 0, %317 ]
  %422 = phi i32 [ 0, %417 ], [ 0, %328 ], [ 0, %415 ], [ 1, %317 ]
  %423 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.88, i32 noundef %419) #14
  %424 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 17
  %425 = load i8, ptr %424, align 4, !range !8
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %450, label %427

427:                                              ; preds = %418
  %428 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 5
  %429 = load i8, ptr %428, align 4
  %430 = zext i8 %429 to i32
  %431 = icmp eq i8 %429, 0
  br i1 %431, label %446, label %432

432:                                              ; preds = %427
  %433 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 3
  %434 = load i32, ptr %433, align 4
  br label %435

435:                                              ; preds = %435, %432
  %436 = phi i32 [ 0, %432 ], [ %440, %435 ]
  %437 = phi i32 [ 0, %432 ], [ %441, %435 ]
  %438 = lshr i32 %434, %437
  %439 = and i32 %438, 1
  %440 = add i32 %439, %436
  %441 = add nuw nsw i32 %437, 1
  %442 = icmp eq i32 %441, %430
  br i1 %442, label %443, label %435

443:                                              ; preds = %435
  %444 = shl i32 %440, 8
  %445 = add i32 %444, -256
  br label %446

446:                                              ; preds = %443, %427
  %447 = phi i32 [ -256, %427 ], [ %445, %443 ]
  %448 = load i32, ptr %207, align 4
  %449 = or i32 %448, %447
  br label %456

450:                                              ; preds = %418
  %451 = load i32, ptr %207, align 4
  %452 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 3
  %453 = load i32, ptr %452, align 4
  %454 = shl i32 %453, 4
  %455 = or i32 %454, %451
  br label %456

456:                                              ; preds = %450, %446
  %457 = phi i32 [ %455, %450 ], [ %449, %446 ]
  %458 = phi i32 [ %451, %450 ], [ %448, %446 ]
  %459 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 4
  %460 = load i16, ptr %459, align 4
  %461 = or i32 %457, 4096
  %462 = zext i16 %460 to i32
  %463 = load i32, ptr %423, align 4
  %464 = icmp eq i32 %463, 1
  %465 = select i1 %464, i32 %458, i32 %461
  %466 = add i32 %465, %462
  %467 = load ptr, ptr %296, align 4
  %468 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 1
  %469 = load i32, ptr %468, align 4
  %470 = load ptr, ptr %7, align 4
  %471 = and i32 %469, -256
  %472 = and i32 %466, 1048575
  %473 = load ptr, ptr %470, align 4
  tail call void @sdio_claim_host(ptr noundef %473) #14
  %474 = load ptr, ptr %470, align 4
  %475 = icmp slt i32 %466, 0
  %476 = select i1 %475, i32 %469, i32 %471
  %477 = tail call i32 @sdio_readsb(ptr noundef %474, ptr noundef %467, i32 noundef %472, i32 noundef %476) #14
  %478 = load ptr, ptr %470, align 4
  tail call void @sdio_release_host(ptr noundef %478) #14
  %479 = icmp eq i32 %477, 0
  br i1 %479, label %480, label %594

480:                                              ; preds = %456
  %481 = load i32, ptr %423, align 4
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %524, label %483

483:                                              ; preds = %480
  %484 = load ptr, ptr %296, align 4
  %485 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 6
  br label %486

486:                                              ; preds = %516, %483
  %487 = phi ptr [ %484, %483 ], [ %518, %516 ]
  %488 = phi i32 [ 0, %483 ], [ %519, %516 ]
  %489 = load ptr, ptr %485, align 4
  %490 = load i16, ptr %487, align 1
  %491 = zext i16 %490 to i32
  %492 = getelementptr i8, ptr %487, i32 2
  %493 = load i16, ptr %492, align 1
  %494 = zext i16 %493 to i32
  %495 = getelementptr i32, ptr %489, i32 %488
  %496 = load i32, ptr %495, align 4
  %497 = tail call ptr @mwifiex_alloc_dma_align_buf(i32 noundef %496, i32 noundef 3264) #14
  %498 = icmp eq ptr %497, null
  br i1 %498, label %499, label %500

499:                                              ; preds = %486
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.89, i32 noundef %491, i32 noundef %494) #14
  br label %516

500:                                              ; preds = %486
  %501 = load i32, ptr %495, align 4
  %502 = tail call ptr @skb_put(ptr noundef nonnull %497, i32 noundef %501) #14
  switch i16 %493, label %512 [
    i16 0, label %506
    i16 10, label %503
  ]

503:                                              ; preds = %500
  %504 = load i8, ptr %208, align 1, !range !8
  %505 = icmp eq i8 %504, 0
  br i1 %505, label %512, label %506

506:                                              ; preds = %503, %500
  %507 = load i32, ptr %495, align 4
  %508 = icmp ult i32 %507, %491
  br i1 %508, label %512, label %509

509:                                              ; preds = %506
  %510 = getelementptr inbounds %struct.sk_buff, ptr %497, i32 0, i32 17
  %511 = load ptr, ptr %510, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %511, ptr align 1 %487, i32 %491, i1 false) #14
  tail call void @skb_trim(ptr noundef nonnull %497, i32 noundef %491) #14
  tail call fastcc void @mwifiex_decode_rx_packet(ptr noundef %0, ptr noundef nonnull %497, i32 noundef %494) #14
  br label %516

512:                                              ; preds = %506, %503, %500
  %513 = load i8, ptr %208, align 1, !range !8
  %514 = zext i8 %513 to i32
  %515 = load i32, ptr %495, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.90, i32 noundef %514, i32 noundef %494, i32 noundef %491, i32 noundef %515) #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %497, i32 noundef 1) #14
  br label %516

516:                                              ; preds = %512, %509, %499
  %517 = load i32, ptr %495, align 4
  %518 = getelementptr i8, ptr %487, i32 %517
  %519 = add nuw i32 %488, 1
  %520 = load i32, ptr %423, align 4
  %521 = icmp ult i32 %519, %520
  br i1 %521, label %486, label %522

522:                                              ; preds = %516
  %523 = zext i16 %493 to i32
  br label %524

524:                                              ; preds = %522, %480
  %525 = phi i32 [ 0, %480 ], [ %523, %522 ]
  store i32 %525, ptr %5, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(14) %468, i8 0, i64 14, i1 false) #14
  br i1 %420, label %555, label %526

526:                                              ; preds = %524, %324, %300, %294
  %527 = phi i32 [ %422, %524 ], [ 0, %294 ], [ 0, %300 ], [ 0, %324 ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.91, i32 noundef %259, i32 noundef %287) #14
  %528 = tail call ptr @mwifiex_alloc_dma_align_buf(i32 noundef %287, i32 noundef 3264) #14
  %529 = icmp eq ptr %528, null
  br i1 %529, label %530, label %537

530:                                              ; preds = %526
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.92, i32 noundef %259, i32 noundef %287) #14
  %531 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24
  %532 = load ptr, ptr %531, align 4
  %533 = load i32, ptr %207, align 4
  %534 = add i32 %533, %259
  %535 = call fastcc i32 @mwifiex_sdio_card_to_host(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %532, i32 noundef %287, i32 noundef %534) #14
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %607, label %594

537:                                              ; preds = %526
  %538 = tail call ptr @skb_put(ptr noundef nonnull %528, i32 noundef %287) #14
  %539 = getelementptr inbounds %struct.sk_buff, ptr %528, i32 0, i32 17
  %540 = load ptr, ptr %539, align 4
  %541 = getelementptr inbounds %struct.sk_buff, ptr %528, i32 0, i32 5
  %542 = load i32, ptr %541, align 8
  %543 = load i32, ptr %207, align 4
  %544 = add i32 %543, %259
  %545 = call fastcc i32 @mwifiex_sdio_card_to_host(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %540, i32 noundef %542, i32 noundef %544) #14
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %594

547:                                              ; preds = %537
  %548 = load i8, ptr %208, align 1, !range !8
  %549 = icmp eq i8 %548, 0
  %550 = load i32, ptr %5, align 4
  %551 = icmp eq i32 %550, 10
  %552 = select i1 %549, i1 %551, i1 false
  br i1 %552, label %553, label %554

553:                                              ; preds = %547
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.93, i32 noundef 10) #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %528, i32 noundef 1) #14
  br label %607

554:                                              ; preds = %547
  tail call fastcc void @mwifiex_decode_rx_packet(ptr noundef %0, ptr noundef nonnull %528, i32 noundef %550) #14
  br label %555

555:                                              ; preds = %554, %524
  %556 = phi i32 [ %527, %554 ], [ %422, %524 ]
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %607, label %558

558:                                              ; preds = %555
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.86) #14
  %559 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 1
  %560 = load i32, ptr %559, align 4
  %561 = add i32 %560, %287
  store i32 %561, ptr %559, align 4
  %562 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 2
  %563 = load i32, ptr %562, align 4
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %568

565:                                              ; preds = %558
  %566 = zext i8 %256 to i16
  %567 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 4
  store i16 %566, ptr %567, align 4
  br label %568

568:                                              ; preds = %565, %558
  %569 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 17
  %570 = load i8, ptr %569, align 4, !range !8
  %571 = icmp eq i8 %570, 0
  br i1 %571, label %572, label %579

572:                                              ; preds = %568
  %573 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 4
  %574 = load i16, ptr %573, align 4
  %575 = zext i8 %256 to i16
  %576 = icmp ugt i16 %574, %575
  %577 = zext i1 %576 to i32
  %578 = add i32 %563, %577
  br label %579

579:                                              ; preds = %572, %568
  %580 = phi i32 [ %578, %572 ], [ %259, %568 ]
  %581 = shl nuw i32 1, %580
  %582 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 3
  %583 = load i32, ptr %582, align 4
  %584 = or i32 %583, %581
  store i32 %584, ptr %582, align 4
  %585 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 5
  %586 = load ptr, ptr %585, align 4
  %587 = getelementptr ptr, ptr %586, i32 %563
  store ptr null, ptr %587, align 4
  %588 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 6
  %589 = load ptr, ptr %588, align 4
  %590 = load i32, ptr %562, align 4
  %591 = getelementptr i32, ptr %589, i32 %590
  store i32 %287, ptr %591, align 4
  %592 = load i32, ptr %562, align 4
  %593 = add i32 %592, 1
  store i32 %593, ptr %562, align 4
  br label %607

594:                                              ; preds = %537, %530, %456
  %595 = phi i32 [ 1, %537 ], [ 1, %530 ], [ %421, %456 ]
  %596 = phi ptr [ %528, %537 ], [ null, %530 ], [ null, %456 ]
  %597 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 2
  %598 = load i32, ptr %597, align 4
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %602, label %600

600:                                              ; preds = %594
  %601 = getelementptr inbounds %struct.sdio_mmc_card, ptr %288, i32 0, i32 24, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(14) %601, i8 0, i64 14, i1 false) #14
  br label %602

602:                                              ; preds = %600, %594
  %603 = icmp ne i32 %595, 0
  %604 = icmp ne ptr %596, null
  %605 = select i1 %603, i1 %604, i1 false
  br i1 %605, label %606, label %608

606:                                              ; preds = %602
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %596, i32 noundef 1) #14
  br label %608

607:                                              ; preds = %579, %555, %553, %530, %417
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %209

608:                                              ; preds = %606, %602
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.66, i32 noundef %17) #14
  br label %609

609:                                              ; preds = %608, %75
  %610 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 -1, ptr %4, align 4
  %611 = load ptr, ptr %610, align 4
  tail call void @sdio_claim_host(ptr noundef %611) #14
  %612 = load ptr, ptr %610, align 4
  %613 = call zeroext i8 @sdio_readb(ptr noundef %612, i32 noundef 0, ptr noundef nonnull %4) #14
  %614 = load ptr, ptr %610, align 4
  call void @sdio_release_host(ptr noundef %614) #14
  %615 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %618, label %617

617:                                              ; preds = %609
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.67) #14
  br label %620

618:                                              ; preds = %609
  %619 = zext i8 %613 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.68, i32 noundef %619) #14
  br label %620

620:                                              ; preds = %618, %617
  %621 = or i8 %613, 4
  %622 = load ptr, ptr %7, align 4
  %623 = load ptr, ptr %622, align 4
  call void @sdio_claim_host(ptr noundef %623) #14
  %624 = load ptr, ptr %622, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 -1, ptr %3, align 4
  call void @sdio_writeb(ptr noundef %624, i8 noundef zeroext %621, i32 noundef 0, ptr noundef nonnull %3) #14
  %625 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %626 = load ptr, ptr %622, align 4
  call void @sdio_release_host(ptr noundef %626) #14
  %627 = icmp eq i32 %625, 0
  br i1 %627, label %629, label %628

628:                                              ; preds = %620
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.46) #14
  br label %630

629:                                              ; preds = %620
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.69) #14
  br label %630

630:                                              ; preds = %629, %628
  %631 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 -1, ptr %2, align 4
  %632 = load ptr, ptr %631, align 4
  call void @sdio_claim_host(ptr noundef %632) #14
  %633 = load ptr, ptr %631, align 4
  %634 = call zeroext i8 @sdio_readb(ptr noundef %633, i32 noundef 0, ptr noundef nonnull %2) #14
  %635 = load ptr, ptr %631, align 4
  call void @sdio_release_host(ptr noundef %635) #14
  %636 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %639, label %638

638:                                              ; preds = %630
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.67) #14
  br label %641

639:                                              ; preds = %630
  %640 = zext i8 %634 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.70, i32 noundef %640) #14
  br label %641

641:                                              ; preds = %639, %638, %285, %254, %153, %74, %1
  %642 = phi i32 [ -1, %285 ], [ 0, %1 ], [ 0, %254 ], [ 0, %153 ], [ -1, %639 ], [ -1, %638 ], [ -1, %74 ]
  ret i32 %642
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_host_to_card(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 255
  %12 = and i32 %11, -256
  %13 = trunc i32 %10 to i16
  store i16 %13, ptr %8, align 1
  %14 = zext i8 %1 to i16
  %15 = getelementptr i8, ptr %8, i32 2
  store i16 %14, ptr %15, align 1
  %16 = icmp eq i8 %1, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %4
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.sdio_mmc_card, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sdio_mmc_card, ptr %18, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.96, i32 noundef %22) #14
  %23 = getelementptr inbounds %struct.sdio_mmc_card, ptr %18, i32 0, i32 13
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 53
  store i8 1, ptr %28, align 4
  br label %60

29:                                               ; preds = %17
  %30 = load i32, ptr %21, align 4
  %31 = getelementptr inbounds %struct.sdio_mmc_card, ptr %18, i32 0, i32 15
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %30
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %29
  %38 = xor i32 %34, -1
  %39 = and i32 %30, %38
  store i32 %39, ptr %21, align 4
  %40 = add i8 %32, 1
  store i8 %40, ptr %31, align 1
  %41 = getelementptr inbounds %struct.sdio_mmc_card, ptr %18, i32 0, i32 12
  %42 = load i16, ptr %41, align 4
  %43 = zext i8 %40 to i16
  %44 = icmp eq i16 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %20, i32 0, i32 1
  %47 = load i8, ptr %46, align 1
  store i8 %47, ptr %31, align 1
  br label %50

48:                                               ; preds = %29
  %49 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 53
  store i8 1, ptr %49, align 4
  br label %60

50:                                               ; preds = %45, %37
  %51 = phi i8 [ %40, %37 ], [ %47, %45 ]
  %52 = getelementptr inbounds %struct.sdio_mmc_card, ptr %18, i32 0, i32 18
  %53 = load i8, ptr %52, align 1, !range !8
  %54 = icmp ne i8 %53, 0
  %55 = icmp eq i8 %32, 0
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = zext i8 %51 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.97, i32 noundef 0, i32 noundef %58, i32 noundef %22, i32 noundef %39) #14
  br label %60

59:                                               ; preds = %50
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.98, i32 noundef %33, i32 noundef %22, i32 noundef %39) #14
  br label %76

60:                                               ; preds = %57, %48, %27
  %61 = phi i32 [ -16, %27 ], [ -16, %48 ], [ -1, %57 ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.94, ptr noundef nonnull @__func__.mwifiex_sdio_host_to_card) #14
  br label %112

62:                                               ; preds = %4
  %63 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 54
  store i8 1, ptr %63, align 1
  %64 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 14
  %65 = load i8, ptr %64, align 4
  %66 = zext i8 %65 to i32
  %67 = icmp ule i32 %10, %66
  %68 = icmp ugt i32 %10, 2312
  %69 = or i1 %68, %67
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.95, ptr noundef nonnull @__func__.mwifiex_sdio_host_to_card, ptr noundef %8, i32 noundef %10) #14
  br label %71

71:                                               ; preds = %70, %62
  %72 = getelementptr inbounds %struct.sdio_mmc_card, ptr %6, i32 0, i32 17
  %73 = load i8, ptr %72, align 4, !range !8
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, i32 0, i32 32768
  br label %76

76:                                               ; preds = %71, %59
  %77 = phi i32 [ %33, %59 ], [ %75, %71 ]
  %78 = icmp eq ptr %3, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = load i32, ptr %3, align 4
  br label %81

81:                                               ; preds = %79, %76
  %82 = phi i32 [ %80, %79 ], [ 0, %76 ]
  %83 = tail call fastcc i32 @mwifiex_host_to_card_mp_aggr(ptr noundef %0, ptr noundef %8, i32 noundef %12, i32 noundef %77, i32 noundef %82)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %81
  %86 = icmp eq i8 %1, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 54
  store i8 0, ptr %88, align 1
  br label %89

89:                                               ; preds = %87, %85
  br i1 %16, label %90, label %112

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 53
  store i8 0, ptr %91, align 4
  %92 = trunc i32 %77 to i8
  %93 = getelementptr inbounds %struct.sdio_mmc_card, ptr %6, i32 0, i32 15
  store i8 %92, ptr %93, align 1
  %94 = and i32 %77, 255
  %95 = shl nuw i32 1, %94
  %96 = getelementptr inbounds %struct.sdio_mmc_card, ptr %6, i32 0, i32 11
  %97 = load i32, ptr %96, align 4
  %98 = or i32 %97, %95
  store i32 %98, ptr %96, align 4
  br label %112

99:                                               ; preds = %81
  br i1 %16, label %100, label %112

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.sdio_mmc_card, ptr %6, i32 0, i32 11
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.sdio_mmc_card, ptr %6, i32 0, i32 15
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = shl nuw i32 1, %105
  %107 = and i32 %106, %102
  %108 = icmp eq i32 %107, 0
  %109 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 53
  br i1 %108, label %110, label %111

110:                                              ; preds = %100
  store i8 1, ptr %109, align 4
  br label %112

111:                                              ; preds = %100
  store i8 0, ptr %109, align 4
  br label %112

112:                                              ; preds = %111, %110, %99, %90, %89, %60
  %113 = phi i32 [ %61, %60 ], [ 0, %99 ], [ 0, %111 ], [ 0, %110 ], [ %83, %89 ], [ %83, %90 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_pm_wakeup_card_complete(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.107) #14
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  tail call void @sdio_claim_host(ptr noundef %5) #14
  %6 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 -1, ptr %2, align 4
  call void @sdio_writeb(ptr noundef %6, i8 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %2) #14
  %7 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %8 = load ptr, ptr %4, align 4
  call void @sdio_release_host(ptr noundef %8) #14
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mwifiex_update_mp_end_port(ptr noundef %0, i16 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 12
  store i16 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %6, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 13
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %6, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = zext i16 %1 to i32
  br label %35

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 5
  %18 = zext i16 %1 to i32
  %19 = load i8, ptr %17, align 4
  %20 = zext i8 %19 to i32
  %21 = icmp ugt i32 %20, %18
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = sub nsw i32 %20, %18
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i32 [ %9, %22 ], [ %30, %24 ]
  %26 = phi i32 [ 1, %22 ], [ %31, %24 ]
  %27 = sub nsw i32 %20, %26
  %28 = shl nuw i32 1, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  %31 = add nuw nsw i32 %26, 1
  %32 = icmp slt i32 %26, %23
  br i1 %32, label %24, label %33

33:                                               ; preds = %24
  store i32 %30, ptr %10, align 4
  %34 = load i8, ptr %11, align 1
  br label %35

35:                                               ; preds = %33, %16, %14
  %36 = phi i32 [ %15, %14 ], [ %18, %16 ], [ %18, %33 ]
  %37 = phi i32 [ %9, %14 ], [ %9, %16 ], [ %30, %33 ]
  %38 = phi i8 [ 0, %14 ], [ %12, %16 ], [ %34, %33 ]
  %39 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 15
  store i8 %38, ptr %39, align 1
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.108, i32 noundef %36, i32 noundef %37) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mwifiex_cleanup_mpa_buf(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 23, i32 1
  %5 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 24, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(14) %4, i8 0, i64 14, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(14) %5, i8 0, i64 14, i1 false)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_cmdrsp_complete(ptr nocapture noundef readnone %0, ptr noundef %1) #8 {
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #14
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_event_complete(ptr nocapture noundef readnone %0, ptr noundef %1) #8 {
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_dnld_fw(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  tail call void @sdio_claim_host(ptr noundef %5) #14
  %6 = tail call i32 @mwifiex_dnld_fw(ptr noundef %0, ptr noundef %1) #14
  %7 = load ptr, ptr %4, align 4
  tail call void @sdio_release_host(ptr noundef %7) #14
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mwifiex_sdio_card_reset(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 26
  %5 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %4) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 25
  %9 = load ptr, ptr @system_wq, align 4
  %10 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %9, ptr noundef %8) #14
  br label %11

11:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_reg_dump(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 1
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #14
  %8 = icmp eq ptr %1, null
  br i1 %8, label %121, label %9

9:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.109) #14
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.22) #14
  %10 = load ptr, ptr %6, align 4
  %11 = load ptr, ptr %10, align 4
  tail call void @sdio_claim_host(ptr noundef %11) #14
  %12 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 -1, ptr %3, align 4
  call void @sdio_writeb(ptr noundef %12, i8 noundef zeroext 2, i32 noundef 0, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %13 = load ptr, ptr %10, align 4
  call void @sdio_release_host(ptr noundef %13) #14
  %14 = load ptr, ptr %7, align 4
  call void @sdio_claim_host(ptr noundef %14) #14
  %15 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 4
  br label %16

16:                                               ; preds = %110, %9
  %17 = phi i8 [ 0, %9 ], [ %111, %110 ]
  %18 = phi i8 [ 0, %9 ], [ %114, %110 ]
  %19 = phi ptr [ %1, %9 ], [ %113, %110 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %5, i8 0, i32 256, i1 false)
  %20 = trunc i8 %18 to i7
  switch i7 %20, label %21 [
    i7 0, label %42
    i7 1, label %26
    i7 2, label %50
    i7 4, label %32
  ]

21:                                               ; preds = %16
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %22, i32 0, i32 43
  %24 = load i8, ptr %23, align 2
  %25 = add i8 %24, 10
  br label %42

26:                                               ; preds = %16
  %27 = load ptr, ptr %15, align 4
  %28 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %27, i32 0, i32 41
  %29 = load i8, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %27, i32 0, i32 42
  %31 = load i8, ptr %30, align 1
  br label %42

32:                                               ; preds = %32, %16
  %33 = phi i32 [ %34, %32 ], [ 100, %16 ]
  %34 = add nsw i32 %33, -1
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #14
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %37, label %32

37:                                               ; preds = %32
  %38 = load ptr, ptr %15, align 4
  %39 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %38, i32 0, i32 43
  %40 = load i8, ptr %39, align 2
  %41 = add i8 %40, 10
  br label %42

42:                                               ; preds = %37, %26, %21, %16
  %43 = phi i8 [ %41, %37 ], [ %25, %21 ], [ 9, %16 ], [ %31, %26 ]
  %44 = phi i8 [ %40, %37 ], [ %24, %21 ], [ 0, %16 ], [ %29, %26 ]
  %45 = phi i8 [ 1, %37 ], [ 1, %21 ], [ 0, %16 ], [ 1, %26 ]
  %46 = zext i8 %45 to i32
  %47 = zext i8 %44 to i32
  %48 = zext i8 %43 to i32
  %49 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.110, i32 noundef %46, i32 noundef %47, i32 noundef %48)
  br label %61

50:                                               ; preds = %16
  %51 = load ptr, ptr %15, align 4
  %52 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %51, i32 0, i32 45
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %51, i32 0, i32 44
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = add nsw i32 %56, -1
  %58 = getelementptr %struct.mwifiex_sdio_card_reg, ptr %51, i32 0, i32 45, i32 %57
  %59 = load i8, ptr %58, align 1
  %60 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.111, i32 noundef 1)
  br label %61

61:                                               ; preds = %50, %42
  %62 = phi i1 [ false, %42 ], [ true, %50 ]
  %63 = phi i8 [ %43, %42 ], [ %59, %50 ]
  %64 = phi i8 [ %44, %42 ], [ %53, %50 ]
  %65 = phi i8 [ %17, %42 ], [ 1, %50 ]
  %66 = phi i8 [ %45, %42 ], [ 1, %50 ]
  %67 = phi i32 [ %49, %42 ], [ %60, %50 ]
  %68 = icmp ugt i8 %64, %63
  br i1 %68, label %110, label %69

69:                                               ; preds = %61
  %70 = getelementptr i8, ptr %5, i32 %67
  %71 = icmp eq i8 %66, 0
  br label %72

72:                                               ; preds = %106, %69
  %73 = phi ptr [ %70, %69 ], [ %94, %106 ]
  %74 = phi i8 [ %64, %69 ], [ %108, %106 ]
  %75 = phi i8 [ %65, %69 ], [ %107, %106 ]
  %76 = zext i8 %74 to i32
  %77 = load ptr, ptr %7, align 4
  br i1 %71, label %78, label %80

78:                                               ; preds = %72
  %79 = call zeroext i8 @sdio_f0_readb(ptr noundef %77, i32 noundef %76, ptr noundef nonnull %4) #14
  br label %82

80:                                               ; preds = %72
  %81 = call zeroext i8 @sdio_readb(ptr noundef %77, i32 noundef %76, ptr noundef nonnull %4) #14
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i8 [ %79, %78 ], [ %81, %80 ]
  br i1 %62, label %84, label %87

84:                                               ; preds = %82
  %85 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %73, ptr noundef nonnull @.str.112, i32 noundef %76)
  %86 = getelementptr i8, ptr %73, i32 %85
  br label %87

87:                                               ; preds = %84, %82
  %88 = phi ptr [ %86, %84 ], [ %73, %82 ]
  %89 = load i32, ptr %4, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = zext i8 %83 to i32
  %93 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %88, ptr noundef nonnull @.str.113, i32 noundef %92)
  %94 = getelementptr i8, ptr %88, i32 %93
  %95 = icmp ult i8 %74, %63
  %96 = select i1 %62, i1 %95, i1 false
  br i1 %96, label %98, label %104

97:                                               ; preds = %87
  store i32 5395013, ptr %88, align 1
  br label %110

98:                                               ; preds = %91
  %99 = load ptr, ptr %15, align 4
  %100 = add i8 %75, 1
  %101 = zext i8 %75 to i32
  %102 = getelementptr %struct.mwifiex_sdio_card_reg, ptr %99, i32 0, i32 45, i32 %101
  %103 = load i8, ptr %102, align 1
  br label %106

104:                                              ; preds = %91
  %105 = add i8 %74, 1
  br label %106

106:                                              ; preds = %104, %98
  %107 = phi i8 [ %100, %98 ], [ %75, %104 ]
  %108 = phi i8 [ %103, %98 ], [ %105, %104 ]
  %109 = icmp ugt i8 %108, %63
  br i1 %109, label %110, label %72

110:                                              ; preds = %106, %97, %61
  %111 = phi i8 [ %75, %97 ], [ %65, %61 ], [ %107, %106 ]
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.115, ptr noundef nonnull %5) #14
  %112 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %19, ptr noundef nonnull @.str.115, ptr noundef nonnull %5)
  %113 = getelementptr i8, ptr %19, i32 %112
  %114 = add nuw nsw i8 %18, 1
  %115 = icmp ult i8 %18, 4
  br i1 %115, label %16, label %116

116:                                              ; preds = %110
  %117 = load ptr, ptr %7, align 4
  call void @sdio_release_host(ptr noundef %117) #14
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.116) #14
  %118 = ptrtoint ptr %113 to i32
  %119 = ptrtoint ptr %1 to i32
  %120 = sub i32 %118, %119
  br label %121

121:                                              ; preds = %116, %2
  %122 = phi i32 [ %120, %116 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mwifiex_sdio_device_dump(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 26
  %5 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %4) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 25
  %9 = load ptr, ptr @system_wq, align 4
  %10 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %9, ptr noundef %8) #14
  br label %11

11:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mwifiex_deaggr_sdio_pkt(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 14
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = add nuw nsw i32 %7, 28
  %9 = icmp ult i32 %4, %8
  br i1 %9, label %54, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 43
  br label %14

14:                                               ; preds = %40, %10
  %15 = phi ptr [ %12, %10 ], [ %48, %40 ]
  %16 = phi i32 [ %4, %10 ], [ %49, %40 ]
  %17 = load i16, ptr %13, align 4
  %18 = zext i16 %17 to i32
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %54, label %20

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %15, i32 15
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i16
  %24 = mul i16 %17, %23
  %25 = zext i16 %24 to i32
  %26 = icmp ult i32 %16, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = zext i8 %22 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.mwifiex_deaggr_sdio_pkt, i32 noundef %28, i32 noundef %25, i32 noundef %16) #14
  br label %54

29:                                               ; preds = %20
  %30 = getelementptr i8, ptr %15, i32 28
  %31 = load i16, ptr %30, align 1
  %32 = zext i16 %31 to i32
  %33 = add nuw nsw i32 %32, 28
  %34 = icmp ugt i32 %33, %25
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = zext i16 %31 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.118, ptr noundef nonnull @__func__.mwifiex_deaggr_sdio_pkt, i32 noundef %36, i32 noundef %25) #14
  br label %54

37:                                               ; preds = %29
  %38 = tail call ptr @mwifiex_alloc_dma_align_buf(i32 noundef %32, i32 noundef 3264) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %54, label %40

40:                                               ; preds = %37
  %41 = tail call ptr @skb_put(ptr noundef nonnull %38, i32 noundef %32) #14
  %42 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 17
  %43 = load ptr, ptr %42, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %43, ptr align 1 %30, i32 %32, i1 false)
  %44 = load i8, ptr %5, align 4
  %45 = zext i8 %44 to i32
  %46 = tail call ptr @skb_pull(ptr noundef nonnull %38, i32 noundef %45) #14
  %47 = tail call i32 @mwifiex_handle_rx_packet(ptr noundef %0, ptr noundef nonnull %38) #14
  %48 = getelementptr i8, ptr %15, i32 %25
  %49 = sub i32 %16, %25
  %50 = load i8, ptr %5, align 4
  %51 = zext i8 %50 to i32
  %52 = add nuw nsw i32 %51, 28
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %14

54:                                               ; preds = %40, %37, %35, %27, %14, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mwifiex_sdio_up_dev(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  tail call void @sdio_claim_host(ptr noundef %5) #14
  %6 = load ptr, ptr %4, align 4
  %7 = tail call i32 @sdio_enable_func(ptr noundef %6) #14
  %8 = load ptr, ptr %4, align 4
  %9 = tail call i32 @sdio_set_block_size(ptr noundef %8, i32 noundef 256) #14
  %10 = load ptr, ptr %4, align 4
  tail call void @sdio_release_host(ptr noundef %10) #14
  %11 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 7
  %12 = load i16, ptr %11, align 2
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 39
  store i16 %12, ptr %13, align 2
  %14 = getelementptr inbounds %struct.sdio_mmc_card, ptr %4, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %15, i32 0, i32 7
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 -1, ptr %2, align 4
  %20 = load ptr, ptr %19, align 4
  tail call void @sdio_claim_host(ptr noundef %20) #14
  %21 = load ptr, ptr %19, align 4
  %22 = call zeroext i8 @sdio_readb(ptr noundef %21, i32 noundef %18, ptr noundef nonnull %2) #14
  %23 = load ptr, ptr %19, align 4
  call void @sdio_release_host(ptr noundef %23) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  call fastcc void @mwifiex_init_sdio_ioport(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_init_sdio_ioport(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 44
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.sdio_mmc_card, ptr %15, i32 0, i32 17
  %18 = load i8, ptr %17, align 4, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %90, label %20

20:                                               ; preds = %1
  store i32 65536, ptr %16, align 4
  %21 = getelementptr inbounds %struct.sdio_mmc_card, ptr %15, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %22, i32 0, i32 28
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #14
  store i32 -1, ptr %13, align 4
  %26 = load ptr, ptr %15, align 4
  tail call void @sdio_claim_host(ptr noundef %26) #14
  %27 = load ptr, ptr %15, align 4
  %28 = call zeroext i8 @sdio_readb(ptr noundef %27, i32 noundef %25, ptr noundef nonnull %13) #14
  %29 = load ptr, ptr %15, align 4
  call void @sdio_release_host(ptr noundef %29) #14
  %30 = load i32, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %185

32:                                               ; preds = %20
  %33 = load ptr, ptr %21, align 4
  %34 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %33, i32 0, i32 28
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = or i8 %28, 1
  %38 = load ptr, ptr %14, align 4
  %39 = load ptr, ptr %38, align 4
  call void @sdio_claim_host(ptr noundef %39) #14
  %40 = load ptr, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #14
  store i32 -1, ptr %12, align 4
  call void @sdio_writeb(ptr noundef %40, i8 noundef zeroext %37, i32 noundef %36, ptr noundef nonnull %12) #14
  %41 = load i32, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #14
  %42 = load ptr, ptr %38, align 4
  call void @sdio_release_host(ptr noundef %42) #14
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %44, label %185

44:                                               ; preds = %32
  %45 = load ptr, ptr %21, align 4
  %46 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %45, i32 0, i32 33
  %47 = load i8, ptr %46, align 4
  %48 = zext i8 %47 to i32
  %49 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  store i32 -1, ptr %11, align 4
  %50 = load ptr, ptr %49, align 4
  call void @sdio_claim_host(ptr noundef %50) #14
  %51 = load ptr, ptr %49, align 4
  %52 = call zeroext i8 @sdio_readb(ptr noundef %51, i32 noundef %48, ptr noundef nonnull %11) #14
  %53 = load ptr, ptr %49, align 4
  call void @sdio_release_host(ptr noundef %53) #14
  %54 = load i32, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %185

56:                                               ; preds = %44
  %57 = load ptr, ptr %21, align 4
  %58 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %57, i32 0, i32 33
  %59 = load i8, ptr %58, align 4
  %60 = zext i8 %59 to i32
  %61 = or i8 %52, 4
  %62 = load ptr, ptr %14, align 4
  %63 = load ptr, ptr %62, align 4
  call void @sdio_claim_host(ptr noundef %63) #14
  %64 = load ptr, ptr %62, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  store i32 -1, ptr %10, align 4
  call void @sdio_writeb(ptr noundef %64, i8 noundef zeroext %61, i32 noundef %60, ptr noundef nonnull %10) #14
  %65 = load i32, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  %66 = load ptr, ptr %62, align 4
  call void @sdio_release_host(ptr noundef %66) #14
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %68, label %185

68:                                               ; preds = %56
  %69 = load ptr, ptr %21, align 4
  %70 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %69, i32 0, i32 34
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 -1, ptr %9, align 4
  %74 = load ptr, ptr %73, align 4
  call void @sdio_claim_host(ptr noundef %74) #14
  %75 = load ptr, ptr %73, align 4
  %76 = call zeroext i8 @sdio_readb(ptr noundef %75, i32 noundef %72, ptr noundef nonnull %9) #14
  %77 = load ptr, ptr %73, align 4
  call void @sdio_release_host(ptr noundef %77) #14
  %78 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %185

80:                                               ; preds = %68
  %81 = load ptr, ptr %21, align 4
  %82 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %81, i32 0, i32 34
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = or i8 %76, 1
  %86 = call fastcc i32 @mwifiex_write_reg(ptr noundef %0, i32 noundef %84, i8 noundef zeroext %85) #14
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %185

88:                                               ; preds = %80
  %89 = load i32, ptr %16, align 4
  br label %138

90:                                               ; preds = %1
  %91 = getelementptr inbounds %struct.sdio_mmc_card, ptr %15, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %92, i32 0, i32 13
  %94 = load i8, ptr %93, align 4
  %95 = zext i8 %94 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 -1, ptr %8, align 4
  %96 = load ptr, ptr %15, align 4
  tail call void @sdio_claim_host(ptr noundef %96) #14
  %97 = load ptr, ptr %15, align 4
  %98 = call zeroext i8 @sdio_readb(ptr noundef %97, i32 noundef %95, ptr noundef nonnull %8) #14
  %99 = load ptr, ptr %15, align 4
  call void @sdio_release_host(ptr noundef %99) #14
  %100 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %185

102:                                              ; preds = %90
  %103 = zext i8 %98 to i32
  %104 = load i32, ptr %16, align 4
  %105 = or i32 %104, %103
  store i32 %105, ptr %16, align 4
  %106 = load ptr, ptr %91, align 4
  %107 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %106, i32 0, i32 14
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 -1, ptr %7, align 4
  %111 = load ptr, ptr %110, align 4
  call void @sdio_claim_host(ptr noundef %111) #14
  %112 = load ptr, ptr %110, align 4
  %113 = call zeroext i8 @sdio_readb(ptr noundef %112, i32 noundef %109, ptr noundef nonnull %7) #14
  %114 = load ptr, ptr %110, align 4
  call void @sdio_release_host(ptr noundef %114) #14
  %115 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %185

117:                                              ; preds = %102
  %118 = zext i8 %113 to i32
  %119 = shl nuw nsw i32 %118, 8
  %120 = load i32, ptr %16, align 4
  %121 = or i32 %120, %119
  store i32 %121, ptr %16, align 4
  %122 = load ptr, ptr %91, align 4
  %123 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %122, i32 0, i32 15
  %124 = load i8, ptr %123, align 2
  %125 = zext i8 %124 to i32
  %126 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 -1, ptr %6, align 4
  %127 = load ptr, ptr %126, align 4
  call void @sdio_claim_host(ptr noundef %127) #14
  %128 = load ptr, ptr %126, align 4
  %129 = call zeroext i8 @sdio_readb(ptr noundef %128, i32 noundef %125, ptr noundef nonnull %6) #14
  %130 = load ptr, ptr %126, align 4
  call void @sdio_release_host(ptr noundef %130) #14
  %131 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %185

133:                                              ; preds = %117
  %134 = zext i8 %129 to i32
  %135 = shl nuw nsw i32 %134, 16
  %136 = load i32, ptr %16, align 4
  %137 = or i32 %136, %135
  store i32 %137, ptr %16, align 4
  br label %138

138:                                              ; preds = %133, %88
  %139 = phi i32 [ %89, %88 ], [ %137, %133 ]
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.36, i32 noundef %139) #14
  %140 = getelementptr inbounds %struct.sdio_mmc_card, ptr %15, i32 0, i32 4
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %141, i32 0, i32 6
  %143 = load i8, ptr %142, align 2
  %144 = zext i8 %143 to i32
  %145 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 -1, ptr %5, align 4
  %146 = load ptr, ptr %145, align 4
  call void @sdio_claim_host(ptr noundef %146) #14
  %147 = load ptr, ptr %145, align 4
  %148 = call zeroext i8 @sdio_readb(ptr noundef %147, i32 noundef %144, ptr noundef nonnull %5) #14
  %149 = load ptr, ptr %145, align 4
  call void @sdio_release_host(ptr noundef %149) #14
  %150 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %185

152:                                              ; preds = %138
  %153 = load ptr, ptr %140, align 4
  %154 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %153, i32 0, i32 6
  %155 = load i8, ptr %154, align 2
  %156 = zext i8 %155 to i32
  %157 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %153, i32 0, i32 11
  %158 = load i8, ptr %157, align 1
  %159 = or i8 %158, %148
  %160 = load ptr, ptr %14, align 4
  %161 = load ptr, ptr %160, align 4
  call void @sdio_claim_host(ptr noundef %161) #14
  %162 = load ptr, ptr %160, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 -1, ptr %4, align 4
  call void @sdio_writeb(ptr noundef %162, i8 noundef zeroext %159, i32 noundef %156, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %163 = load ptr, ptr %160, align 4
  call void @sdio_release_host(ptr noundef %163) #14
  %164 = load ptr, ptr %140, align 4
  %165 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %164, i32 0, i32 27
  %166 = load i8, ptr %165, align 2
  %167 = zext i8 %166 to i32
  %168 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 -1, ptr %3, align 4
  %169 = load ptr, ptr %168, align 4
  call void @sdio_claim_host(ptr noundef %169) #14
  %170 = load ptr, ptr %168, align 4
  %171 = call zeroext i8 @sdio_readb(ptr noundef %170, i32 noundef %167, ptr noundef nonnull %3) #14
  %172 = load ptr, ptr %168, align 4
  call void @sdio_release_host(ptr noundef %172) #14
  %173 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %152
  %176 = load ptr, ptr %140, align 4
  %177 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %176, i32 0, i32 27
  %178 = load i8, ptr %177, align 2
  %179 = zext i8 %178 to i32
  %180 = or i8 %171, 16
  %181 = load ptr, ptr %14, align 4
  %182 = load ptr, ptr %181, align 4
  call void @sdio_claim_host(ptr noundef %182) #14
  %183 = load ptr, ptr %181, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 -1, ptr %2, align 4
  call void @sdio_writeb(ptr noundef %183, i8 noundef zeroext %180, i32 noundef %179, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %184 = load ptr, ptr %181, align 4
  call void @sdio_release_host(ptr noundef %184) #14
  br label %185

185:                                              ; preds = %175, %152, %138, %117, %102, %90, %80, %68, %56, %44, %32, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_sdio_read_fw_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sdio_mmc_card, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %8, i32 0, i32 9
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 -1, ptr %4, align 4
  %12 = load ptr, ptr %6, align 4
  tail call void @sdio_claim_host(ptr noundef %12) #14
  %13 = load ptr, ptr %6, align 4
  %14 = call zeroext i8 @sdio_readb(ptr noundef %13, i32 noundef %11, ptr noundef nonnull %4) #14
  %15 = load ptr, ptr %6, align 4
  call void @sdio_release_host(ptr noundef %15) #14
  %16 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %8, i32 0, i32 10
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 -1, ptr %3, align 4
  %23 = load ptr, ptr %22, align 4
  call void @sdio_claim_host(ptr noundef %23) #14
  %24 = load ptr, ptr %22, align 4
  %25 = call zeroext i8 @sdio_readb(ptr noundef %24, i32 noundef %21, ptr noundef nonnull %3) #14
  %26 = load ptr, ptr %22, align 4
  call void @sdio_release_host(ptr noundef %26) #14
  %27 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = zext i8 %25 to i16
  %31 = shl nuw i16 %30, 8
  %32 = zext i8 %14 to i16
  %33 = or i16 %31, %32
  store i16 %33, ptr %1, align 2
  br label %34

34:                                               ; preds = %29, %18, %2
  %35 = phi i32 [ 0, %29 ], [ -1, %2 ], [ -1, %18 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_writesb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mwifiex_sdio_interrupt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 1, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5, %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %0, ptr noundef %3, ptr noundef null) #15
  br label %52

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 104
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 90
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, ptr %16, align 4
  br label %20

20:                                               ; preds = %19, %15, %11
  %21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sdio_mmc_card, ptr %22, i32 0, i32 16
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.sdio_mmc_card, ptr %22, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %26, i32 0, i32 16
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load ptr, ptr %22, align 4
  %31 = tail call i32 @sdio_readsb(ptr noundef %30, ptr noundef %24, i32 noundef 0, i32 noundef %29) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %20
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %7, i32 noundef 4, ptr noundef nonnull @.str.54) #14
  br label %50

34:                                               ; preds = %20
  %35 = load ptr, ptr %23, align 4
  %36 = load ptr, ptr %25, align 4
  %37 = getelementptr inbounds %struct.mwifiex_sdio_card_reg, ptr %36, i32 0, i32 7
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr i8, ptr %35, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %34
  %44 = zext i8 %41 to i32
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %7, i32 noundef 64, ptr noundef nonnull @.str.55, i32 noundef %44) #14
  %45 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 48
  %46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %45) #14
  %47 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 49
  %48 = load i8, ptr %47, align 4
  %49 = or i8 %48, %41
  store i8 %49, ptr %47, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %45, i32 noundef %46) #14
  br label %50

50:                                               ; preds = %43, %34, %33
  %51 = tail call i32 @mwifiex_main_process(ptr noundef nonnull %7) #14
  br label %52

52:                                               ; preds = %50, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_main_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readsb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mwifiex_alloc_dma_align_buf(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_sdio_card_to_host(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.mwifiex_sdio_card_to_host) #14
  br label %30

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = and i32 %3, -256
  %12 = and i32 %4, 1048575
  %13 = load ptr, ptr %10, align 4
  tail call void @sdio_claim_host(ptr noundef %13) #14
  %14 = load ptr, ptr %10, align 4
  %15 = icmp slt i32 %4, 0
  %16 = select i1 %15, i32 %3, i32 %11
  %17 = tail call i32 @sdio_readsb(ptr noundef %14, ptr noundef nonnull %2, i32 noundef %12, i32 noundef %16) #14
  %18 = load ptr, ptr %10, align 4
  tail call void @sdio_release_host(ptr noundef %18) #14
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.mwifiex_sdio_card_to_host, i32 noundef %17) #14
  br label %30

21:                                               ; preds = %8
  %22 = load i16, ptr %2, align 1
  %23 = zext i16 %22 to i32
  %24 = icmp ugt i32 %23, %3
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.mwifiex_sdio_card_to_host, i32 noundef %23, i32 noundef %3) #14
  br label %30

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %2, i32 2
  %28 = load i16, ptr %27, align 1
  %29 = zext i16 %28 to i32
  store i32 %29, ptr %1, align 4
  br label %30

30:                                               ; preds = %26, %25, %20, %7
  %31 = phi i32 [ -1, %20 ], [ -1, %25 ], [ 0, %26 ], [ -1, %7 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mwifiex_decode_rx_packet(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %5 = icmp eq i32 %2, 10
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 4
  %8 = load i16, ptr %7, align 1
  %9 = zext i16 %8 to i32
  tail call void @skb_trim(ptr noundef %1, i32 noundef %9) #14
  %10 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 14
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %12) #14
  switch i32 %2, label %72 [
    i32 3, label %57
    i32 0, label %25
    i32 1, label %36
  ]

14:                                               ; preds = %3
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.74) #14
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 15
  store i8 10, ptr %15, align 1
  %16 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 30
  %17 = load i8, ptr %16, align 4, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 146
  tail call void @skb_queue_tail(ptr noundef %20, ptr noundef %1) #14
  %21 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #14, !srcloc !10
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #14, !srcloc !11
  %23 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 57
  store i8 1, ptr %23, align 4
  br label %73

24:                                               ; preds = %14
  tail call void @mwifiex_deaggr_sdio_pkt(ptr noundef %0, ptr noundef %1)
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #14
  br label %73

25:                                               ; preds = %6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.75) #14
  %26 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 30
  %27 = load i8, ptr %26, align 4, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 146
  tail call void @skb_queue_tail(ptr noundef %30, ptr noundef %1) #14
  %31 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 57
  store i8 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #14, !srcloc !10
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #14, !srcloc !11
  br label %73

34:                                               ; preds = %25
  %35 = tail call i32 @mwifiex_handle_rx_packet(ptr noundef %0, ptr noundef %1) #14
  br label %73

36:                                               ; preds = %6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.76) #14
  %37 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 60
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 52
  %42 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 90
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %48 = load i32, ptr %47, align 8
  tail call void @mwifiex_process_sleep_confirm_resp(ptr noundef %0, ptr noundef %46, i32 noundef %48) #14
  br label %49

49:                                               ; preds = %45, %40
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %52 = load i32, ptr %51, align 8
  %53 = tail call i32 @llvm.umin.i32(i32 %52, i32 2048)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %41, ptr align 1 %50, i32 %53, i1 false)
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #14
  br label %73

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 55
  store i8 1, ptr %55, align 2
  %56 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %38, i32 0, i32 5
  store ptr %1, ptr %56, align 4
  br label %73

57:                                               ; preds = %6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.77) #14
  %58 = load ptr, ptr %4, align 4
  %59 = load i32, ptr %58, align 1
  %60 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 50
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %62 = load i32, ptr %61, align 8
  %63 = add i32 %62, -1
  %64 = icmp ult i32 %63, 2047
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 112
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr i8, ptr %67, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %66, ptr align 1 %68, i32 %62, i1 false)
  br label %69

69:                                               ; preds = %65, %57
  %70 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 56
  store i8 1, ptr %70, align 1
  %71 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 51
  store ptr %1, ptr %71, align 4
  br label %73

72:                                               ; preds = %6
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.78, i32 noundef %2) #14
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #14
  br label %73

73:                                               ; preds = %72, %69, %54, %49, %34, %29, %24, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_handle_rx_packet(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_process_sleep_confirm_resp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_host_to_card_mp_aggr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23
  %9 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 5
  %10 = load i8, ptr %9, align 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 18
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp ne i8 %14, 0
  %16 = icmp eq i32 %3, 0
  %17 = and i1 %16, %15
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 17
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp ne i8 %20, 0
  %22 = icmp eq i32 %3, 32768
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %12, %5
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 536870912, ptr noundef nonnull @.str.99, ptr noundef nonnull @__func__.mwifiex_host_to_card_mp_aggr) #14
  br label %236

25:                                               ; preds = %18
  %26 = icmp eq i32 %4, 0
  br i1 %26, label %65, label %27

27:                                               ; preds = %25
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.100, ptr noundef nonnull @__func__.mwifiex_host_to_card_mp_aggr) #14
  %28 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %2
  %34 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %33, %35
  br i1 %30, label %55, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 11
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 15
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %39
  %45 = icmp eq i32 %44, 0
  br i1 %36, label %51, label %46

46:                                               ; preds = %37
  %47 = add i32 %33, %4
  %48 = icmp ugt i32 %47, %35
  %49 = select i1 %45, i1 true, i1 %48
  %50 = zext i1 %49 to i32
  br label %76

51:                                               ; preds = %37
  %52 = zext i1 %45 to i32
  %53 = xor i1 %45, true
  %54 = zext i1 %53 to i32
  br label %162

55:                                               ; preds = %27
  br i1 %36, label %236, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 11
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 15
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %58
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %236, label %76

65:                                               ; preds = %25
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1073741824, ptr noundef nonnull @.str.101, ptr noundef nonnull @__func__.mwifiex_host_to_card_mp_aggr) #14
  %66 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %236, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, %2
  %73 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = icmp ugt i32 %72, %74
  br i1 %75, label %162, label %76

76:                                               ; preds = %69, %56, %46
  %77 = phi i32 [ 1, %69 ], [ %50, %46 ], [ 0, %56 ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.mwifiex_host_to_card_mp_aggr) #14
  %78 = load ptr, ptr %8, align 4
  %79 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i8, ptr %78, i32 %80
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %81, ptr align 1 %1, i32 %2, i1 false)
  %82 = load i32, ptr %79, align 4
  %83 = add i32 %82, %2
  store i32 %83, ptr %79, align 4
  %84 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 4
  %89 = load i16, ptr %88, align 4
  br label %93

90:                                               ; preds = %76
  %91 = trunc i32 %3 to i16
  %92 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 4
  store i16 %91, ptr %92, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = phi i16 [ %89, %87 ], [ %91, %90 ]
  %95 = zext i16 %94 to i32
  %96 = icmp ugt i32 %95, %3
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = shl nuw i32 1, %85
  %99 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = or i32 %100, %98
  store i32 %101, ptr %99, align 4
  %102 = add i32 %85, 1
  br label %117

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 5
  %105 = load i8, ptr %104, align 4
  %106 = zext i8 %105 to i32
  %107 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 12
  %108 = load i16, ptr %107, align 4
  %109 = zext i16 %108 to i32
  %110 = add i32 %85, 1
  %111 = add i32 %110, %106
  %112 = sub i32 %111, %109
  %113 = shl nuw i32 1, %112
  %114 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = or i32 %113, %115
  store i32 %116, ptr %114, align 4
  br label %117

117:                                              ; preds = %103, %97
  %118 = phi i32 [ %110, %103 ], [ %102, %97 ]
  store i32 %118, ptr %84, align 4
  %119 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 7
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %162, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 15
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i16
  %126 = icmp ugt i16 %94, %125
  %127 = load i8, ptr %19, align 4, !range !8
  br i1 %126, label %128, label %148

128:                                              ; preds = %122
  %129 = icmp eq i8 %127, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 12
  %132 = load i16, ptr %131, align 4
  %133 = lshr i16 %132, 1
  %134 = zext i16 %133 to i32
  br label %139

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 6
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  br label %139

139:                                              ; preds = %135, %130
  %140 = phi i32 [ %134, %130 ], [ %138, %135 ]
  %141 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 5
  %142 = load i8, ptr %141, align 4
  %143 = zext i8 %142 to i32
  %144 = zext i8 %124 to i32
  %145 = sub nsw i32 %144, %95
  %146 = add nsw i32 %145, %143
  %147 = icmp slt i32 %146, %140
  br i1 %147, label %148, label %162

148:                                              ; preds = %139, %122
  %149 = icmp eq i8 %127, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %148
  %151 = zext i8 %124 to i32
  %152 = sub nsw i32 %151, %95
  %153 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 12
  %154 = load i16, ptr %153, align 4
  %155 = lshr i16 %154, 1
  %156 = zext i16 %155 to i32
  %157 = icmp slt i32 %152, %156
  %158 = icmp eq i32 %77, 0
  %159 = select i1 %157, i1 %158, i1 false
  br i1 %159, label %288, label %162

160:                                              ; preds = %148
  %161 = icmp eq i32 %77, 0
  br i1 %161, label %288, label %162

162:                                              ; preds = %160, %150, %139, %117, %69, %51
  %163 = phi i32 [ 0, %160 ], [ 1, %69 ], [ 0, %139 ], [ 0, %150 ], [ 0, %117 ], [ %52, %51 ]
  %164 = phi i32 [ 0, %160 ], [ 0, %69 ], [ 0, %139 ], [ 0, %150 ], [ 0, %117 ], [ %54, %51 ]
  %165 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 4
  %166 = load i16, ptr %165, align 4
  %167 = zext i16 %166 to i32
  %168 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 3
  %169 = load i32, ptr %168, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__.mwifiex_host_to_card_mp_aggr, i32 noundef %167, i32 noundef %169) #14
  %170 = load i8, ptr %19, align 4, !range !8
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %195, label %172

172:                                              ; preds = %162
  %173 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 5
  %174 = load i8, ptr %173, align 4
  %175 = zext i8 %174 to i32
  %176 = icmp eq i8 %174, 0
  br i1 %176, label %190, label %177

177:                                              ; preds = %172
  %178 = load i32, ptr %168, align 4
  br label %179

179:                                              ; preds = %179, %177
  %180 = phi i32 [ 0, %177 ], [ %185, %179 ]
  %181 = phi i32 [ 0, %177 ], [ %184, %179 ]
  %182 = lshr i32 %178, %180
  %183 = and i32 %182, 1
  %184 = add i32 %183, %181
  %185 = add nuw nsw i32 %180, 1
  %186 = icmp eq i32 %185, %175
  br i1 %186, label %187, label %179

187:                                              ; preds = %179
  %188 = shl i32 %184, 8
  %189 = add i32 %188, -256
  br label %190

190:                                              ; preds = %187, %172
  %191 = phi i32 [ -256, %172 ], [ %189, %187 ]
  %192 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 44
  %193 = load i32, ptr %192, align 4
  %194 = or i32 %191, %193
  br label %201

195:                                              ; preds = %162
  %196 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 44
  %197 = load i32, ptr %196, align 4
  %198 = load i32, ptr %168, align 4
  %199 = shl i32 %198, 4
  %200 = or i32 %197, %199
  br label %201

201:                                              ; preds = %195, %190
  %202 = phi i32 [ %200, %195 ], [ %194, %190 ]
  %203 = phi i32 [ %197, %195 ], [ %193, %190 ]
  %204 = load i16, ptr %165, align 4
  %205 = or i32 %202, 4096
  %206 = zext i16 %204 to i32
  %207 = add i32 %205, %206
  %208 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 2
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 1
  %211 = zext i16 %204 to i32
  %212 = add i32 %203, %211
  %213 = select i1 %210, i32 %212, i32 %207
  %214 = load ptr, ptr %8, align 4
  %215 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 1
  %216 = load i32, ptr %215, align 4
  %217 = tail call fastcc i32 @mwifiex_write_data_to_card(ptr noundef %0, ptr noundef %214, i32 noundef %216, i32 noundef %213)
  %218 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 118, i32 23
  %219 = load i8, ptr %218, align 4
  %220 = zext i8 %219 to i16
  %221 = add nuw nsw i16 %220, 1
  %222 = urem i16 %221, 10
  %223 = zext i16 %222 to i32
  %224 = trunc i16 %222 to i8
  store i8 %224, ptr %218, align 4
  %225 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 118, i32 20, i32 %223
  store i32 %213, ptr %225, align 4
  %226 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 11
  %227 = load i32, ptr %226, align 4
  %228 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 118, i32 19, i32 %223
  store i32 %227, ptr %228, align 4
  %229 = load i32, ptr %215, align 4
  %230 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 118, i32 21, i32 %223
  store i32 %229, ptr %230, align 4
  %231 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 15
  %232 = load i8, ptr %231, align 1
  %233 = zext i8 %232 to i32
  %234 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 118, i32 22, i32 %223
  store i32 %233, ptr %234, align 4
  %235 = icmp eq i32 %163, 0
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(14) %215, i8 0, i64 14, i1 false)
  br i1 %235, label %242, label %236

236:                                              ; preds = %201, %65, %56, %55, %24
  %237 = phi i32 [ 0, %24 ], [ %164, %201 ], [ 0, %55 ], [ 0, %56 ], [ 0, %65 ]
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.mwifiex_host_to_card_mp_aggr, i32 noundef %3) #14
  %238 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 44
  %239 = load i32, ptr %238, align 4
  %240 = add i32 %239, %3
  %241 = tail call fastcc i32 @mwifiex_write_data_to_card(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %240)
  br label %242

242:                                              ; preds = %236, %201
  %243 = phi i32 [ %237, %236 ], [ %164, %201 ]
  %244 = phi i32 [ %241, %236 ], [ %217, %201 ]
  %245 = icmp eq i32 %243, 0
  br i1 %245, label %288, label %246

246:                                              ; preds = %242
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.105, ptr noundef nonnull @__func__.mwifiex_host_to_card_mp_aggr) #14
  %247 = load ptr, ptr %8, align 4
  %248 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 1
  %249 = load i32, ptr %248, align 4
  %250 = getelementptr i8, ptr %247, i32 %249
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %250, ptr align 1 %1, i32 %2, i1 false)
  %251 = load i32, ptr %248, align 4
  %252 = add i32 %251, %2
  store i32 %252, ptr %248, align 4
  %253 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 2
  %254 = load i32, ptr %253, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %246
  %257 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 4
  %258 = load i16, ptr %257, align 4
  br label %262

259:                                              ; preds = %246
  %260 = trunc i32 %3 to i16
  %261 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 4
  store i16 %260, ptr %261, align 4
  br label %262

262:                                              ; preds = %259, %256
  %263 = phi i16 [ %258, %256 ], [ %260, %259 ]
  %264 = zext i16 %263 to i32
  %265 = icmp ugt i32 %264, %3
  br i1 %265, label %272, label %266

266:                                              ; preds = %262
  %267 = shl nuw i32 1, %254
  %268 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 3
  %269 = load i32, ptr %268, align 4
  %270 = or i32 %269, %267
  store i32 %270, ptr %268, align 4
  %271 = add i32 %254, 1
  br label %286

272:                                              ; preds = %262
  %273 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 5
  %274 = load i8, ptr %273, align 4
  %275 = zext i8 %274 to i32
  %276 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 12
  %277 = load i16, ptr %276, align 4
  %278 = zext i16 %277 to i32
  %279 = add i32 %254, 1
  %280 = add i32 %279, %275
  %281 = sub i32 %280, %278
  %282 = shl nuw i32 1, %281
  %283 = getelementptr inbounds %struct.sdio_mmc_card, ptr %7, i32 0, i32 23, i32 3
  %284 = load i32, ptr %283, align 4
  %285 = or i32 %282, %284
  store i32 %285, ptr %283, align 4
  br label %286

286:                                              ; preds = %272, %266
  %287 = phi i32 [ %279, %272 ], [ %271, %266 ]
  store i32 %287, ptr %253, align 4
  br label %288

288:                                              ; preds = %286, %242, %160, %150
  %289 = phi i32 [ %244, %286 ], [ %244, %242 ], [ 0, %150 ], [ 0, %160 ]
  ret i32 %289
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mwifiex_write_data_to_card(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = and i32 %3, 1048575
  %7 = and i32 %2, -256
  %8 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 17
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 12
  %10 = icmp slt i32 %3, 0
  %11 = select i1 %10, i32 %2, i32 %7
  br label %12

12:                                               ; preds = %35, %4
  %13 = phi i32 [ 0, %4 ], [ %27, %35 ]
  %14 = load ptr, ptr %8, align 4
  %15 = load volatile i32, ptr %9, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.mwifiex_write_data_sync) #14
  br label %25

19:                                               ; preds = %12
  %20 = load ptr, ptr %14, align 4
  call void @sdio_claim_host(ptr noundef %20) #14
  %21 = load ptr, ptr %14, align 4
  %22 = call i32 @sdio_writesb(ptr noundef %21, i32 noundef %6, ptr noundef %1, i32 noundef %11) #14
  %23 = load ptr, ptr %14, align 4
  call void @sdio_release_host(ptr noundef %23) #14
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %19, %18
  %26 = phi i32 [ -1, %18 ], [ %22, %19 ]
  %27 = add nuw nsw i32 %13, 1
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.106, i32 noundef %27, i32 noundef %26) #14
  %28 = load ptr, ptr %8, align 4
  %29 = load ptr, ptr %28, align 4
  call void @sdio_claim_host(ptr noundef %29) #14
  %30 = load ptr, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 -1, ptr %5, align 4
  call void @sdio_writeb(ptr noundef %30, i8 noundef zeroext 4, i32 noundef 0, ptr noundef nonnull %5) #14
  %31 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %32 = load ptr, ptr %28, align 4
  call void @sdio_release_host(ptr noundef %32) #14
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.46) #14
  br label %35

35:                                               ; preds = %34, %25
  %36 = icmp eq i32 %27, 3
  br i1 %36, label %37, label %12

37:                                               ; preds = %35, %19
  %38 = phi i32 [ -1, %35 ], [ 0, %19 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_dnld_fw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_f0_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_deauthenticate_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_disable_auto_ds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_init_shutdown_fw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_remove_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_suspend(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = tail call i32 @sdio_get_host_pm_caps(ptr noundef %2) #14
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %8, %6 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.120, ptr noundef %13) #15
  br label %55

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.121) #15
  br label %55

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sdio_mmc_card, ptr %16, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %20) #14
  %21 = getelementptr inbounds %struct.sdio_mmc_card, ptr %16, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.122) #15
  br label %55

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.mwifiex_adapter, ptr %22, i32 0, i32 136
  %27 = load i8, ptr %26, align 4, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.mwifiex_adapter, ptr %22, i32 0, i32 164
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.mwifiex_adapter, ptr %22, i32 0, i32 165
  store i8 0, ptr %34, align 4
  tail call void @enable_irq(i32 noundef %31) #14
  %35 = load i32, ptr %30, align 4
  %36 = tail call i32 @irq_set_irq_wake(i32 noundef %35, i32 noundef 1) #14
  br label %37

37:                                               ; preds = %33, %29
  %38 = tail call i32 @mwifiex_enable_hs(ptr noundef nonnull %22) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %22, i32 noundef 4, ptr noundef nonnull @.str.123) #14
  %41 = getelementptr inbounds %struct.mwifiex_adapter, ptr %22, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %41) #14
  %42 = load i32, ptr %30, align 4
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = tail call i32 @irq_set_irq_wake(i32 noundef %42, i32 noundef 0) #14
  %46 = load i32, ptr %30, align 4
  tail call void @disable_irq(i32 noundef %46) #14
  %47 = getelementptr inbounds %struct.mwifiex_adapter, ptr %22, i32 0, i32 165
  %48 = load i8, ptr %47, align 4, !range !8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load i32, ptr %30, align 4
  tail call void @enable_irq(i32 noundef %51) #14
  br label %55

52:                                               ; preds = %37
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %22, i32 noundef 1073741824, ptr noundef nonnull @.str.124) #14
  %53 = tail call i32 @sdio_set_host_pm_flags(ptr noundef %2, i32 noundef 1) #14
  %54 = getelementptr inbounds %struct.mwifiex_adapter, ptr %22, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %54) #14
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %54) #14
  br label %55

55:                                               ; preds = %52, %50, %44, %40, %25, %24, %18, %12
  %56 = phi i32 [ %53, %52 ], [ 0, %24 ], [ 0, %18 ], [ -38, %12 ], [ -16, %25 ], [ -14, %40 ], [ -14, %44 ], [ -14, %50 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mwifiex_sdio_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sdio_mmc_card, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.125) #15
  br label %48

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 12
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef nonnull %7, i32 noundef 536870912, ptr noundef nonnull @.str.126) #14
  br label %48

16:                                               ; preds = %10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %11) #14
  %17 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 5
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = icmp eq i8 %18, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %31, %16
  %22 = phi i32 [ %32, %31 ], [ 0, %16 ]
  %23 = getelementptr %struct.mwifiex_adapter, ptr %7, i32 0, i32 4, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.mwifiex_private, ptr %24, i32 0, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26, %21
  %32 = add nuw nsw i32 %22, 1
  %33 = icmp eq i32 %32, %19
  br i1 %33, label %34, label %21

34:                                               ; preds = %31, %26, %16
  %35 = phi ptr [ null, %16 ], [ %24, %26 ], [ null, %31 ]
  %36 = tail call i32 @mwifiex_cancel_hs(ptr noundef %35, i32 noundef 1) #14
  %37 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 164
  %38 = load i32, ptr %37, align 4
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = tail call i32 @irq_set_irq_wake(i32 noundef %38, i32 noundef 0) #14
  %42 = load i32, ptr %37, align 4
  tail call void @disable_irq(i32 noundef %42) #14
  %43 = getelementptr inbounds %struct.mwifiex_adapter, ptr %7, i32 0, i32 165
  %44 = load i8, ptr %43, align 4, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = load i32, ptr %37, align 4
  tail call void @enable_irq(i32 noundef %47) #14
  br label %48

48:                                               ; preds = %46, %40, %34, %15, %9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_get_host_pm_caps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_enable_hs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_host_pm_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_cancel_hs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

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
!10 = !{i64 815862, i64 2148305833, i64 2148305859, i64 2148305906, i64 2148305928, i64 2148305956, i64 2148305976}
!11 = !{i64 2148317248, i64 2148317274, i64 2148317303, i64 2148317337, i64 2148317368, i64 2148317391}
