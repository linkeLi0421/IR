; ModuleID = '/llk/IR/drivers/net/wireless/marvell/mwifiex/sta_ioctl.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/sta_ioctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_cancel_hs:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_cancel_hs\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_cancel_hs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_enable_hs:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_enable_hs\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_enable_hs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mwifiex_disable_auto_ds:\09\09\09\09\09"
module asm "\09.asciz \09\22mwifiex_disable_auto_ds\22\09\09\09\09\09"
module asm "__kstrtabns_mwifiex_disable_auto_ds:\09\09\09\09\09"
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.121, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.141, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.121 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.141 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.mwifiex_multicast_list = type { i32, i32, [32 x [6 x i8]] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cmd_ctrl_node = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mwifiex_private = type <{ ptr, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i32, i8, [3 x i8], ptr, %struct.net_device_stats, i32, i32, i32, i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, [18 x i16], [2 x i8], i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i8], ptr, %struct.cfg80211_ssid, [6 x i8], i8, %struct.mwifiex_current_bss_params, i16, i8, i8, i16, i16, i8, i8, i8, i8, %struct.mwifiex_802_11_security, [4 x %struct.mwifiex_wep_key], i16, [256 x i8], i16, i8, %struct.host_cmd_ds_802_11_key_material, %struct.host_cmd_ds_802_11_key_material_v2, [256 x i8], i8, i16, ptr, i16, i8, i8, i8, [3 x i8], %struct.mwifiex_wmm_desc, [4 x %struct.atomic_t], %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, [8 x %struct.mwifiex_tx_aggr], %struct.mwifiex_add_ba_param, [8 x i16], [8 x i8], %struct.list_head, %struct.spinlock, [500 x i8], i32, [256 x i8], i8, i8, [8 x %struct.mwifiex_vendor_spec_cfg_ie], [256 x i8], i8, i8, ptr, i32, %struct.spinlock, %struct.wireless_dev, %struct.mwifiex_chan_freq_power, i32, [128 x i8], ptr, i16, [2 x i8], %struct.mutex, ptr, [6 x i8], %struct.wps, i8, i32, i32, i8, i8, %struct.mwifiex_ds_misc_subsc_evt, [16 x %struct.mwifiex_ie], i16, i16, i16, i16, i8, i8, i32, [4 x i8], %struct.mwifiex_roc_cfg, i8, i8, i8, i8, i32, i8, i8, [2 x i8], %struct.mwifiex_uap_bss_param, %struct.cfg80211_chan_def, ptr, %struct.sk_buff_head, i8, [3 x i8], %struct.timer_list, i8, [3 x i8], %struct.idr, %struct.spinlock, ptr, %struct.cfg80211_chan_def, ptr, %struct.delayed_work, %struct.timer_list, ptr, %struct.delayed_work, %struct.cfg80211_beacon_data, %struct.mwifiex_11h_intf_state, [2 x i8], %struct.mwifiex_ds_mem_rw, %struct.sk_buff_head, [50 x %struct.mwifiex_user_scan_chan], i8, i8, [2 x i8] }>
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
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.cfg80211_bss_ies = type { i64, %struct.callback_head, i32, i8, [0 x i8] }
%struct.mwifiex_ds_hs_cfg = type { i32, i32, i32, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.140, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.anon.140 = type { i64, i64, i8 }
%struct.cfg80211_wowlan = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr }
%struct.mwifiex_bss_info = type { i32, %struct.cfg80211_ssid, i32, [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8] }
%struct.mwifiex_ds_auto_ds = type { i16, i16 }
%struct.mwifiex_power_cfg = type { i32, i32, i32 }
%struct.host_cmd_ds_txpwr_cfg = type { i16, i16, i32 }
%struct.mwifiex_ds_encrypt_key = type { i32, i32, i32, [32 x i8], [6 x i8], i32, [16 x i8], i8, i8, i8, i8, i8 }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.mwifiex_ver_ext = type { i32, [128 x i8] }
%struct.host_cmd_ds_remain_on_chan = type <{ i16, i8, i8, i8, i8, i32 }>
%struct.mwifiex_ds_reg_rw = type { i32, i32, i32 }
%struct.mwifiex_ds_read_eeprom = type { i16, i16, [256 x i8] }
%struct.mwifiex_ds_misc_gen_ie = type { i32, i32, [256 x i8] }

@__param_str_disconnect_on_suspend = internal constant [22 x i8] c"disconnect_on_suspend\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@disconnect_on_suspend = internal global i32 0, align 4
@__param_disconnect_on_suspend = internal constant %struct.kernel_param { ptr @__param_str_disconnect_on_suspend, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.116 { ptr @disconnect_on_suspend } }, section "__param", align 4
@__UNIQUE_ID_disconnect_on_suspendtype459 = internal constant [35 x i8] c"parmtype=disconnect_on_suspend:int\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [27 x i8] c"cmd_wait_q terminated: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"info: Enable Promiscuous mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"info: Enabling All Multicast!\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"info: Set multicast list=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"info: old_pkt_filter=%#x, curr_pkt_filter=%#x\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c" failed to alloc beacon_ie\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"info: InterpretIE: AP WEP enabled\0A\00", align 1
@__const.mwifiex_dnld_txpwr_table.txpwr = private unnamed_addr constant [22 x i8] c"marvell,00_txpwrlimit\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Attempt to reconnect on csa closed chan(%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"info: SSID found in scan list ...\09associating...\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"info: network found in scan\09 list. Joining...\0A\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"info: Network not found in\09the list, creating adhoc with ssid = %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"info: Host Sleep IOCTL\09is blocked in UAPSD/PPS mode\0A\00", align 1
@__kstrtab_mwifiex_cancel_hs = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_cancel_hs = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_cancel_hs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_cancel_hs to i32), ptr @__kstrtab_mwifiex_cancel_hs, ptr @__kstrtabns_mwifiex_cancel_hs }, section "___ksymtab_gpl+mwifiex_cancel_hs", align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"aborting bgscan!\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"cmd: HS Already activated\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"IOCTL request HS enable failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"hs_activate_wait_q terminated\0A\00", align 1
@__kstrtab_mwifiex_enable_hs = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_enable_hs = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_enable_hs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_enable_hs to i32), ptr @__kstrtab_mwifiex_enable_hs, ptr @__kstrtabns_mwifiex_enable_hs }, section "___ksymtab_gpl+mwifiex_enable_hs", align 4
@__kstrtab_mwifiex_disable_auto_ds = external dso_local constant [0 x i8], align 1
@__kstrtabns_mwifiex_disable_auto_ds = external dso_local constant [0 x i8], align 1
@__ksymtab_mwifiex_disable_auto_ds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mwifiex_disable_auto_ds to i32), ptr @__kstrtab_mwifiex_disable_auto_ds, ptr @__kstrtabns_mwifiex_disable_auto_ds }, section "___ksymtab_gpl+mwifiex_disable_auto_ds", align 4
@.str.16 = private unnamed_addr constant [54 x i8] c"txpower value %d dBm\09is out of range (%d dBm-%d dBm)\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"%u.%u.%u.p%u\00", align 1
@driver_version = external dso_local constant [0 x i8], align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"info: MWIFIEX VERSION: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"failed to remain on channel\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"11D: skip setting domain info in FW\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"11D: country_ie_len overflow!, deauth AP\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"11D: setting domain info in FW fail\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.23 = private unnamed_addr constant [21 x i8] c"key length too long\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"key not set, so cannot enable it\0A\00", align 1
@mwifiex_set_gen_ie_helper.wpa_oui = internal constant [4 x i8] c"\00P\F2\01", align 1
@mwifiex_set_gen_ie_helper.wps_oui = internal constant [4 x i8] c"\00P\F2\04", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"WPS Session Enabled.\0A\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"failed to copy WPA IE, too big\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"cmd: Set Wpa_ie_len=%d IE=%#x\0A\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"info: failed to copy WAPI IE, too big\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"cmd: Set wapi_ie_len=%d IE=%#x\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"info: failed to copy WPS IE, too big\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"cmd: Set wps_ie_len=%d IE=%#x\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_disconnect_on_suspendtype459, ptr @__ksymtab_mwifiex_cancel_hs, ptr @__ksymtab_mwifiex_disable_auto_ds, ptr @__ksymtab_mwifiex_enable_hs, ptr @__param_disconnect_on_suspend], section "llvm.metadata"
@switch.table.mwifiex_reg_read = private unnamed_addr constant [5 x i16] [i16 25, i16 26, i16 27, i16 173, i16 237], align 2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_copy_mcast_addr(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 61
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ %12, %6 ], [ %4, %2 ]
  %8 = phi i32 [ %9, %6 ], [ 0, %2 ]
  %9 = add i32 %8, 1
  %10 = getelementptr %struct.mwifiex_multicast_list, ptr %0, i32 0, i32 2, i32 %8
  %11 = getelementptr inbounds %struct.netdev_hw_addr, ptr %7, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %10, ptr noundef align 4 dereferenceable(6) %11, i32 6, i1 false)
  %12 = load ptr, ptr %7, align 4
  %13 = icmp eq ptr %12, %3
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %2
  %15 = phi i32 [ 0, %2 ], [ %9, %6 ]
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_wait_queue_complete(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %1, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #12
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 121
  %10 = call i32 @prepare_to_wait_event(ptr noundef %9, ptr noundef nonnull %3, i32 noundef 1) #12
  %11 = load ptr, ptr %4, align 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %18, %8
  %15 = phi i32 [ %27, %18 ], [ 1200, %8 ]
  %16 = phi i32 [ %20, %18 ], [ %10, %8 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = call i32 @schedule_timeout(i32 noundef %15) #12
  %20 = call i32 @prepare_to_wait_event(ptr noundef %9, ptr noundef nonnull %3, i32 noundef 1) #12
  %21 = load ptr, ptr %4, align 4
  %22 = load i8, ptr %21, align 1
  %23 = icmp ne i8 %22, 0
  %24 = xor i1 %23, true
  %25 = icmp ne i32 %19, 0
  %26 = select i1 %24, i1 true, i1 %25
  %27 = select i1 %26, i32 %19, i32 1
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %23, i1 true, i1 %28
  br i1 %29, label %30, label %14

30:                                               ; preds = %18, %8
  %31 = phi i32 [ 1200, %8 ], [ %27, %18 ]
  call void @finish_wait(ptr noundef %9, ptr noundef nonnull %3) #12
  br label %32

32:                                               ; preds = %30, %14
  %33 = phi i32 [ %31, %30 ], [ %16, %14 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = icmp eq i32 %33, 0
  %37 = select i1 %36, i32 -110, i32 %33
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %37) #12
  call void @mwifiex_cancel_all_pending_cmd(ptr noundef %0) #12
  br label %41

38:                                               ; preds = %32, %2
  %39 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 121, i32 1
  %40 = load i32, ptr %39, align 4
  store i32 0, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i32 [ %37, %35 ], [ %40, %38 ]
  ret i32 %42
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mwifiex_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_cancel_all_pending_cmd(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_request_set_multicast_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 17
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %8, i32 noundef 1073741824, ptr noundef nonnull @.str.1) #12
  %9 = load i32, ptr %3, align 4
  %10 = and i32 %9, -385
  %11 = or i32 %10, 128
  store i32 %11, ptr %3, align 4
  br label %27

12:                                               ; preds = %2
  %13 = and i32 %4, -129
  store i32 %13, ptr %3, align 4
  %14 = load i32, ptr %1, align 4
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %17, i32 noundef 1073741824, ptr noundef nonnull @.str.2) #12
  %18 = load i32, ptr %3, align 4
  %19 = or i32 %18, 256
  store i32 %19, ptr %3, align 4
  br label %27

20:                                               ; preds = %12
  %21 = and i32 %4, -385
  store i32 %21, ptr %3, align 4
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.mwifiex_multicast_list, ptr %1, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %22, i32 noundef 1073741824, ptr noundef nonnull @.str.3, i32 noundef %24) #12
  %25 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 16, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %1, i1 noundef zeroext false) #12
  %26 = load i32, ptr %3, align 4
  br label %27

27:                                               ; preds = %20, %16, %7
  %28 = phi i32 [ %11, %7 ], [ %19, %16 ], [ %26, %20 ]
  %29 = phi i32 [ 0, %7 ], [ 0, %16 ], [ %25, %20 ]
  %30 = load ptr, ptr %0, align 8
  %31 = and i32 %4, 65535
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %30, i32 noundef 1073741824, ptr noundef nonnull @.str.4, i32 noundef %31, i32 noundef %28) #12
  %32 = load i32, ptr %3, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 40, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %3, i1 noundef zeroext false) #12
  br label %36

36:                                               ; preds = %34, %27
  %37 = phi i32 [ %35, %34 ], [ %29, %27 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_send_cmd(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_fill_new_bss_desc(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  %4 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 2
  %5 = load volatile ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %5, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = tail call ptr @kmemdup(ptr noundef %6, i32 noundef %8, i32 noundef 2592) #12
  %10 = load i32, ptr %7, align 8
  %11 = load i64, ptr %5, align 8
  %12 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 16
  store i64 %11, ptr %12, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %13 = icmp eq ptr %9, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %15, i32 noundef 4, ptr noundef nonnull @.str.5) #12
  br label %57

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 17
  %18 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %2, ptr noundef align 4 dereferenceable(6) %18, i32 6, i1 false)
  %19 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 4
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 55
  store ptr %9, ptr %22, align 8
  %23 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 56
  store i32 %10, ptr %23, align 4
  %24 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 9
  %25 = load i16, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 7
  store i16 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 0, i32 10
  %28 = load i16, ptr %27, align 2
  %29 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 20
  store i16 %28, ptr %29, align 8
  %30 = load i8, ptr %17, align 8
  %31 = zext i8 %30 to i16
  %32 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 13
  store i16 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.cfg80211_bss, ptr %1, i32 1, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 15
  store i64 %34, ptr %35, align 8
  %36 = and i16 %28, 16
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %16
  %39 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %39, i32 noundef 1073741824, ptr noundef nonnull @.str.6) #12
  %40 = load i16, ptr %29, align 8
  br label %41

41:                                               ; preds = %38, %16
  %42 = phi i16 [ %40, %38 ], [ %28, %16 ]
  %43 = phi i32 [ 1, %38 ], [ 0, %16 ]
  %44 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 3
  store i32 %43, ptr %44, align 8
  %45 = and i16 %42, 2
  %46 = icmp eq i16 %45, 0
  %47 = select i1 %46, i32 2, i32 1
  %48 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 10
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 44
  store i8 1, ptr %49, align 2
  %50 = and i16 %42, 256
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %2, i32 0, i32 57
  store i8 1, ptr %53, align 8
  br label %54

54:                                               ; preds = %52, %41
  %55 = load ptr, ptr %0, align 8
  %56 = tail call i32 @mwifiex_update_bss_desc_with_ie(ptr noundef %55, ptr noundef %2) #12
  br label %57

57:                                               ; preds = %54, %14
  %58 = phi i32 [ %56, %54 ], [ -12, %14 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_update_bss_desc_with_ie(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mwifiex_dnld_txpwr_table(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [22 x i8], align 1
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 127
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %2, ptr noundef nonnull align 1 dereferenceable(22) @__const.mwifiex_dnld_txpwr_table.txpwr, i32 22, i1 false)
  %8 = getelementptr inbounds [22 x i8], ptr %2, i32 0, i32 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 124
  %10 = load i16, ptr %9, align 4
  store i16 %10, ptr %8, align 1
  %11 = call i32 @mwifiex_dnld_dt_cfgdata(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %2) #12
  br label %12

12:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_dnld_dt_cfgdata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_bss_start(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca [22 x i8], align 1
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 114
  store i8 0, ptr %6, align 1
  %7 = icmp eq ptr %1, null
  br i1 %7, label %67, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 74
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 75
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !9
  %14 = tail call ptr @ieee80211_bss_get_elem(ptr noundef nonnull %1, i8 noundef zeroext 7) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  br label %60

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %14, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = icmp ult i8 %19, 6
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  br label %60

22:                                               ; preds = %17
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.mwifiex_adapter, ptr %23, i32 0, i32 124
  %25 = getelementptr i8, ptr %14, i32 2
  %26 = tail call i32 @strncmp(ptr noundef %24, ptr noundef %25, i32 noundef 2) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %29 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %29, i32 noundef 1073741824, ptr noundef nonnull @.str.20) #12
  br label %60

30:                                               ; preds = %22
  %31 = icmp ugt i8 %19, 86
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %33 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %33, i32 noundef 4, ptr noundef nonnull @.str.21) #12
  br label %188

34:                                               ; preds = %30
  %35 = load i16, ptr %25, align 1
  store i16 %35, ptr %24, align 4
  %36 = load i8, ptr %25, align 1
  store i8 %36, ptr %13, align 1
  %37 = getelementptr i8, ptr %14, i32 3
  %38 = load i8, ptr %37, align 1
  %39 = getelementptr %struct.mwifiex_adapter, ptr %5, i32 0, i32 75, i32 0, i32 1
  store i8 %38, ptr %39, align 1
  %40 = getelementptr %struct.mwifiex_adapter, ptr %5, i32 0, i32 75, i32 0, i32 2
  store i8 32, ptr %40, align 1
  %41 = add nsw i8 %19, -3
  %42 = zext i8 %41 to i32
  %43 = udiv i8 %41, 3
  %44 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 75, i32 1
  store i8 %43, ptr %44, align 1
  %45 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 75, i32 2
  %46 = getelementptr i8, ptr %14, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %45, ptr align 1 %46, i32 %42, i1 false) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %47 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 91, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #12
  %48 = icmp eq i32 %47, 0
  %49 = load ptr, ptr %0, align 8
  br i1 %48, label %51, label %50

50:                                               ; preds = %34
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %49, i32 noundef 4, ptr noundef nonnull @.str.22) #12
  br label %188

51:                                               ; preds = %34
  %52 = getelementptr inbounds %struct.mwifiex_adapter, ptr %49, i32 0, i32 127
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %4, ptr noundef nonnull align 1 dereferenceable(22) @__const.mwifiex_dnld_txpwr_table.txpwr, i32 22, i1 false) #12
  %56 = getelementptr inbounds [22 x i8], ptr %4, i32 0, i32 8
  %57 = getelementptr inbounds %struct.mwifiex_adapter, ptr %49, i32 0, i32 124
  %58 = load i16, ptr %57, align 4
  store i16 %58, ptr %56, align 1
  %59 = call i32 @mwifiex_dnld_dt_cfgdata(ptr noundef %0, ptr noundef nonnull %53, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %4) #12
  br label %60

60:                                               ; preds = %55, %51, %28, %21, %16, %8
  %61 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %62 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 256) #13
  %63 = icmp eq ptr %62, null
  br i1 %63, label %188, label %64

64:                                               ; preds = %60
  %65 = call i32 @mwifiex_fill_new_bss_desc(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %62)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %177

67:                                               ; preds = %64, %3
  %68 = phi ptr [ %62, %64 ], [ null, %3 ]
  %69 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %70 = load i32, ptr %69, align 8
  switch i32 %70, label %143 [
    i32 2, label %71
    i32 8, label %71
  ]

71:                                               ; preds = %67, %67
  %72 = icmp eq ptr %68, null
  br i1 %72, label %188, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %68, i32 0, i32 13
  %75 = load i16, ptr %74, align 4
  %76 = trunc i16 %75 to i8
  %77 = call zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext %76) #12
  %78 = icmp eq i8 %77, 0
  %79 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 82
  %80 = load i8, ptr %79, align 4
  %81 = and i8 %80, 32
  %82 = or i8 %81, 20
  %83 = select i1 %78, i8 11, i8 %82
  %84 = zext i8 %80 to i32
  %85 = or i8 %80, %83
  %86 = zext i8 %85 to i32
  %87 = xor i32 %84, -1
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %73
  %91 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 84
  store i8 %83, ptr %91, align 2
  br label %92

92:                                               ; preds = %90, %73
  %93 = call i32 @mwifiex_check_network_compatibility(ptr noundef %0, ptr noundef nonnull %68) #12
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %177

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 132
  %97 = load i8, ptr %96, align 2
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 134
  %101 = load i32, ptr %100, align 4
  %102 = load volatile i32, ptr @jiffies, align 64
  %103 = sub i32 %101, %102
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i8 0, ptr %96, align 2
  store i32 0, ptr %100, align 4
  br label %106

106:                                              ; preds = %105, %99, %95
  %107 = phi i8 [ 0, %95 ], [ 0, %105 ], [ %97, %99 ]
  %108 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %68, i32 0, i32 5
  %109 = load i32, ptr %108, align 8
  %110 = trunc i32 %109 to i8
  %111 = icmp eq i8 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %109) #12
  br label %177

113:                                              ; preds = %106
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 1073741824, ptr noundef nonnull @.str.8) #12
  %114 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %115 = load ptr, ptr %114, align 4
  call void @mwifiex_stop_net_dev_queue(ptr noundef %115, ptr noundef %5) #12
  %116 = load ptr, ptr %114, align 4
  %117 = getelementptr inbounds %struct.net_device, ptr %116, i32 0, i32 6
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %118, 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  call void @netif_carrier_off(ptr noundef %116) #12
  br label %122

122:                                              ; preds = %121, %113
  %123 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 92
  store i32 0, ptr %123, align 4
  %124 = call i32 @mwifiex_associate(ptr noundef %0, ptr noundef nonnull %68) #12
  %125 = icmp eq i32 %124, 13
  br i1 %125, label %126, label %137

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 6
  %128 = load i8, ptr %127, align 4
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 4
  %132 = load i8, ptr %131, align 4
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 5
  store i32 1, ptr %135, align 4
  %136 = call i32 @mwifiex_associate(ptr noundef %0, ptr noundef nonnull %68) #12
  br label %137

137:                                              ; preds = %134, %130, %126, %122
  %138 = phi i32 [ %136, %134 ], [ 13, %130 ], [ 13, %126 ], [ %124, %122 ]
  br i1 %7, label %177, label %139

139:                                              ; preds = %137
  %140 = load ptr, ptr %0, align 8
  %141 = getelementptr inbounds %struct.mwifiex_adapter, ptr %140, i32 0, i32 10
  %142 = load ptr, ptr %141, align 4
  call void @cfg80211_put_bss(ptr noundef %142, ptr noundef nonnull %1) #12
  br label %177

143:                                              ; preds = %67
  %144 = icmp eq ptr %68, null
  br i1 %144, label %154, label %145

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %68, i32 0, i32 1, i32 1
  %147 = load i8, ptr %146, align 2
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %68, i32 0, i32 1
  %151 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 1
  %152 = call i32 @mwifiex_ssid_cmp(ptr noundef %151, ptr noundef %150) #12
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %177, label %154

154:                                              ; preds = %149, %145, %143
  %155 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 57
  store i8 0, ptr %155, align 1
  %156 = call i32 @mwifiex_check_network_compatibility(ptr noundef %0, ptr noundef %68) #12
  %157 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 15
  %158 = load ptr, ptr %157, align 4
  call void @mwifiex_stop_net_dev_queue(ptr noundef %158, ptr noundef %5) #12
  %159 = load ptr, ptr %157, align 4
  %160 = getelementptr inbounds %struct.net_device, ptr %159, i32 0, i32 6
  %161 = load volatile i32, ptr %160, align 4
  %162 = and i32 %161, 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %154
  call void @netif_carrier_off(ptr noundef %159) #12
  br label %165

165:                                              ; preds = %164, %154
  %166 = icmp eq i32 %156, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %165
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 1073741824, ptr noundef nonnull @.str.9) #12
  %168 = call i32 @mwifiex_adhoc_join(ptr noundef %0, ptr noundef %68) #12
  br i1 %7, label %175, label %169

169:                                              ; preds = %167
  %170 = load ptr, ptr %0, align 8
  %171 = getelementptr inbounds %struct.mwifiex_adapter, ptr %170, i32 0, i32 10
  %172 = load ptr, ptr %171, align 4
  call void @cfg80211_put_bss(ptr noundef %172, ptr noundef nonnull %1) #12
  br label %175

173:                                              ; preds = %165
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 1073741824, ptr noundef nonnull @.str.10, ptr noundef %2) #12
  %174 = call i32 @mwifiex_adhoc_start(ptr noundef %0, ptr noundef %2) #12
  br label %175

175:                                              ; preds = %173, %169, %167
  %176 = phi i32 [ %174, %173 ], [ %168, %169 ], [ %168, %167 ]
  br i1 %144, label %182, label %177

177:                                              ; preds = %175, %149, %139, %137, %112, %92, %64
  %178 = phi ptr [ %68, %175 ], [ %68, %149 ], [ %62, %64 ], [ %68, %112 ], [ %68, %92 ], [ %68, %139 ], [ %68, %137 ]
  %179 = phi i32 [ %176, %175 ], [ 0, %149 ], [ %65, %64 ], [ -1, %112 ], [ %93, %92 ], [ %138, %139 ], [ %138, %137 ]
  %180 = getelementptr inbounds %struct.mwifiex_bssdescriptor, ptr %178, i32 0, i32 55
  %181 = load ptr, ptr %180, align 8
  call void @kfree(ptr noundef %181) #12
  br label %182

182:                                              ; preds = %177, %175
  %183 = phi ptr [ %178, %177 ], [ null, %175 ]
  %184 = phi i32 [ %179, %177 ], [ %176, %175 ]
  call void @kfree(ptr noundef %183) #12
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 46
  store ptr null, ptr %187, align 4
  br label %188

188:                                              ; preds = %186, %182, %71, %60, %50, %32
  %189 = phi i32 [ -12, %60 ], [ %184, %186 ], [ %184, %182 ], [ -22, %32 ], [ -22, %50 ], [ -1, %71 ]
  ret i32 %189
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_band_to_radio_type(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_check_network_compatibility(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mwifiex_stop_net_dev_queue(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_associate(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_ssid_cmp(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_adhoc_join(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_adhoc_start(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_set_hs_params(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = load ptr, ptr %0, align 8
  %6 = icmp eq ptr %3, null
  br i1 %6, label %73, label %7

7:                                                ; preds = %4
  switch i16 %1, label %73 [
    i16 1, label %8
    i16 0, label %61
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 104
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %5, i32 noundef 1073741824, ptr noundef nonnull @.str.11) #12
  br label %73

13:                                               ; preds = %8
  %14 = load i32, ptr %3, align 4
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %3, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  br i1 %15, label %51, label %18

18:                                               ; preds = %13
  switch i32 %17, label %27 [
    i32 -1, label %19
    i32 0, label %39
  ]

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 12
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %73, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 107
  %26 = load i32, ptr %25, align 4
  store i32 -1, ptr %25, align 4
  br label %43

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 107
  store i32 %17, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %3, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 107, i32 1
  store i8 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %3, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %27
  %37 = trunc i32 %34 to i8
  %38 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 107, i32 2
  store i8 %37, ptr %38, align 1
  br label %43

39:                                               ; preds = %18
  %40 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 107
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %73, label %43

43:                                               ; preds = %39, %36, %27, %24
  %44 = phi i32 [ %26, %24 ], [ 0, %36 ], [ 0, %27 ], [ 0, %39 ]
  %45 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 107
  %46 = icmp eq i32 %2, 1
  %47 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 229, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %45, i1 noundef zeroext %46) #12
  %48 = load i32, ptr %16, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %73

50:                                               ; preds = %43
  store i32 %44, ptr %45, align 4
  br label %73

51:                                               ; preds = %13
  %52 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 107
  store i32 %17, ptr %52, align 4
  %53 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %3, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 107, i32 1
  store i8 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %3, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 107, i32 2
  store i8 %59, ptr %60, align 1
  br label %73

61:                                               ; preds = %7
  %62 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 107
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %3, i32 0, i32 1
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 107, i32 1
  %66 = load i8, ptr %65, align 4
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %3, i32 0, i32 2
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 107, i32 2
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, ptr %3, i32 0, i32 3
  store i32 %71, ptr %72, align 4
  br label %73

73:                                               ; preds = %61, %51, %50, %43, %39, %19, %12, %7, %4
  %74 = phi i32 [ -12, %4 ], [ 0, %61 ], [ -1, %12 ], [ %47, %50 ], [ %47, %43 ], [ 0, %19 ], [ 0, %51 ], [ -1, %39 ], [ -1, %7 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_cancel_hs(ptr noundef %0, i32 noundef %1) #3 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 104
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %3, i32 noundef 1073741824, ptr noundef nonnull @.str.11) #12
  br label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 12
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 107
  %15 = load i32, ptr %14, align 4
  store i32 -1, ptr %14, align 4
  %16 = icmp eq i32 %1, 1
  %17 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 229, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %14, i1 noundef zeroext %16) #12
  store i32 %15, ptr %14, align 4
  br label %18

18:                                               ; preds = %13, %8, %7
  %19 = phi i32 [ -1, %7 ], [ %17, %13 ], [ 0, %8 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_enable_hs(ptr noundef %0) #3 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = load i32, ptr @disconnect_on_suspend, align 4
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %6 = load i8, ptr %5, align 4
  br i1 %4, label %23, label %7

7:                                                ; preds = %1
  %8 = icmp eq i8 %6, 0
  br i1 %8, label %57, label %9

9:                                                ; preds = %18, %7
  %10 = phi i8 [ %19, %18 ], [ %6, %7 ]
  %11 = phi i32 [ %20, %18 ], [ 0, %7 ]
  %12 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = tail call i32 @mwifiex_deauthenticate(ptr noundef nonnull %13, ptr noundef null) #12
  %17 = load i8, ptr %5, align 4
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i8 [ %10, %9 ], [ %17, %15 ]
  %20 = add nuw nsw i32 %11, 1
  %21 = zext i8 %19 to i32
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %9, label %23

23:                                               ; preds = %18, %1
  %24 = phi i8 [ %6, %1 ], [ %19, %18 ]
  %25 = zext i8 %24 to i32
  %26 = icmp eq i8 %24, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %37, %23
  %28 = phi i32 [ %38, %37 ], [ 0, %23 ]
  %29 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.mwifiex_private, ptr %30, i32 0, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32, %27
  %38 = add nuw nsw i32 %28, 1
  %39 = icmp eq i32 %38, %25
  br i1 %39, label %57, label %27

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.mwifiex_private, ptr %30, i32 0, i32 131
  %42 = load i8, ptr %41, align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.mwifiex_private, ptr %30, i32 0, i32 103
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.wiphy, ptr %46, i32 0, i32 41
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.cfg80211_wowlan, ptr %48, i32 0, i32 10
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.12) #12
  %55 = tail call i32 @mwifiex_stop_bg_scan(ptr noundef nonnull %30) #12
  %56 = load ptr, ptr %45, align 8
  tail call void @cfg80211_sched_scan_stopped(ptr noundef %56, i64 noundef 0) #12
  br label %57

57:                                               ; preds = %54, %50, %44, %40, %37, %23, %7
  %58 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 108
  %59 = load i8, ptr %58, align 2
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.13) #12
  br label %126

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 5
  %64 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 110
  store i16 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %65) #12
  tail call void @mwifiex_cancel_all_pending_cmd(ptr noundef %0) #12
  %66 = load i8, ptr %63, align 4
  %67 = zext i8 %66 to i32
  %68 = icmp eq i8 %66, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %79, %62
  %70 = phi i32 [ %80, %79 ], [ 0, %62 ]
  %71 = getelementptr %struct.mwifiex_adapter, ptr %0, i32 0, i32 4, i32 %70
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.mwifiex_private, ptr %72, i32 0, i32 2
  %76 = load i8, ptr %75, align 1
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74, %69
  %80 = add nuw nsw i32 %70, 1
  %81 = icmp eq i32 %80, %67
  br i1 %81, label %82, label %69

82:                                               ; preds = %79, %74, %62
  %83 = phi ptr [ null, %62 ], [ %72, %74 ], [ null, %79 ]
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.mwifiex_adapter, ptr %84, i32 0, i32 104
  %86 = load i16, ptr %85, align 2
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %84, i32 noundef 1073741824, ptr noundef nonnull @.str.11) #12
  br label %96

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.mwifiex_adapter, ptr %84, i32 0, i32 107
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = tail call i32 @mwifiex_send_cmd(ptr noundef %83, i16 noundef zeroext 229, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %90, i1 noundef zeroext true) #12
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93, %89, %88
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.14) #12
  br label %126

97:                                               ; preds = %93
  %98 = load i16, ptr %64, align 4
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %126

100:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #12
  %101 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 111
  %102 = call i32 @prepare_to_wait_event(ptr noundef %101, ptr noundef nonnull %2, i32 noundef 1) #12
  %103 = load i16, ptr %64, align 4
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %109, %100
  %106 = phi i32 [ %117, %109 ], [ 1000, %100 ]
  %107 = phi i32 [ %111, %109 ], [ %102, %100 ]
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = call i32 @schedule_timeout(i32 noundef %106) #12
  %111 = call i32 @prepare_to_wait_event(ptr noundef %101, ptr noundef nonnull %2, i32 noundef 1) #12
  %112 = load i16, ptr %64, align 4
  %113 = icmp ne i16 %112, 0
  %114 = xor i1 %113, true
  %115 = icmp ne i32 %110, 0
  %116 = select i1 %114, i1 true, i1 %115
  %117 = select i1 %116, i32 %110, i32 1
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %113, i1 true, i1 %118
  br i1 %119, label %120, label %105

120:                                              ; preds = %109, %100
  %121 = phi i32 [ 1000, %100 ], [ %117, %109 ]
  call void @finish_wait(ptr noundef %101, ptr noundef nonnull %2) #12
  br label %122

122:                                              ; preds = %120, %105
  %123 = phi i32 [ %121, %120 ], [ %107, %105 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  %124 = icmp slt i32 %123, 1
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.15) #12
  br label %126

126:                                              ; preds = %125, %122, %97, %96, %61
  %127 = phi i32 [ 1, %61 ], [ 0, %96 ], [ 0, %125 ], [ 1, %122 ], [ 1, %97 ]
  ret i32 %127
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_deauthenticate(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_stop_bg_scan(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_stopped(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @mwifiex_get_bss_info(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %51, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50
  %7 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %8 = load i32, ptr %7, align 8
  store i32 %8, ptr %1, align 4
  %9 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(33) %9, ptr noundef align 2 dereferenceable(33) %10, i32 33, i1 false)
  %11 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %1, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %11, ptr noundef align 8 dereferenceable(6) %6, i32 6, i1 false)
  %12 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 50, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %1, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %1, i32 0, i32 3
  %16 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 124
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(3) %15, ptr noundef align 4 dereferenceable(3) %16, i32 3, i1 false)
  %17 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 8
  %18 = load i8, ptr %17, align 8
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %1, i32 0, i32 4
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 21
  %22 = load i8, ptr %21, align 2
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %1, i32 0, i32 5
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 22
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %1, i32 0, i32 6
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 58
  %30 = load i8, ptr %29, align 2
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %1, i32 0, i32 7
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 42
  %34 = load i16, ptr %33, align 4
  %35 = sext i16 %34 to i32
  %36 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %1, i32 0, i32 8
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 4
  %38 = load i8, ptr %37, align 4
  %39 = icmp ne i8 %38, 0
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %1, i32 0, i32 9
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 12
  %43 = load volatile i32, ptr %42, align 4
  %44 = lshr i32 %43, 3
  %45 = and i32 %44, 1
  %46 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %1, i32 0, i32 10
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.mwifiex_adapter, ptr %5, i32 0, i32 98
  %48 = load i8, ptr %47, align 4
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.mwifiex_bss_info, ptr %1, i32 0, i32 11
  store i32 %49, ptr %50, align 4
  br label %51

51:                                               ; preds = %4, %2
  %52 = phi i32 [ 0, %4 ], [ -1, %2 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_disable_auto_ds(ptr noundef %0) #3 {
  %2 = alloca %struct.mwifiex_ds_auto_ds, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4
  %3 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 228, i16 noundef zeroext 254, i32 noundef 1, ptr noundef nonnull %2, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_drv_get_data_rate(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 127, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext true) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 33
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 25
  %11 = load i8, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 26
  %13 = load i8, ptr %12, align 1
  %14 = tail call i32 @mwifiex_index_to_data_rate(ptr noundef %0, i8 noundef zeroext %11, i8 noundef zeroext %13) #12
  br label %18

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 32
  %17 = load i32, ptr %16, align 8
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i32 [ %14, %9 ], [ %17, %15 ]
  store i32 %19, ptr %1, align 4
  br label %20

20:                                               ; preds = %18, %2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mwifiex_index_to_data_rate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_set_tx_power(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mwifiex_power_cfg, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 65535
  %9 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 22
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ult i32 %8, %11
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 21
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = icmp ugt i32 %8, %15
  %17 = trunc i32 %7 to i8
  %18 = select i1 %12, i1 true, i1 %16
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %20, i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef %8, i32 noundef %11, i32 noundef %15) #12
  br label %69

21:                                               ; preds = %5, %2
  %22 = phi i8 [ 0, %2 ], [ %17, %5 ]
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 2048) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %69, label %26

26:                                               ; preds = %21
  store i16 1, ptr %24, align 8
  %27 = load i32, ptr %1, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.mwifiex_power_cfg, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 22
  %35 = load i8, ptr %34, align 1
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i8 [ %35, %33 ], [ %22, %29 ]
  %38 = getelementptr inbounds %struct.host_cmd_ds_txpwr_cfg, ptr %24, i32 0, i32 2
  store i32 1, ptr %38, align 4
  %39 = getelementptr i8, ptr %24, i32 8
  store i16 340, ptr %39, align 8
  %40 = getelementptr i8, ptr %24, i32 10
  store i16 32, ptr %40, align 2
  %41 = getelementptr i8, ptr %24, i32 12
  %42 = getelementptr i8, ptr %24, i32 13
  store i8 0, ptr %42, align 1
  %43 = getelementptr i8, ptr %24, i32 14
  store i8 3, ptr %43, align 2
  store i8 3, ptr %41, align 4
  %44 = getelementptr i8, ptr %24, i32 15
  store i8 0, ptr %44, align 1
  %45 = getelementptr i8, ptr %24, i32 16
  store i8 %37, ptr %45, align 8
  %46 = getelementptr i8, ptr %24, i32 17
  store i8 %22, ptr %46, align 1
  %47 = getelementptr i8, ptr %24, i32 20
  %48 = getelementptr i8, ptr %24, i32 21
  store i8 0, ptr %48, align 1
  %49 = getelementptr i8, ptr %24, i32 22
  store i8 7, ptr %49, align 2
  store i8 7, ptr %47, align 4
  %50 = getelementptr i8, ptr %24, i32 23
  store i8 0, ptr %50, align 1
  %51 = getelementptr i8, ptr %24, i32 24
  store i8 %37, ptr %51, align 8
  %52 = getelementptr i8, ptr %24, i32 25
  store i8 %22, ptr %52, align 1
  %53 = getelementptr i8, ptr %24, i32 28
  %54 = getelementptr i8, ptr %24, i32 29
  store i8 0, ptr %54, align 1
  %55 = getelementptr i8, ptr %24, i32 30
  store i8 32, ptr %55, align 2
  store i8 8, ptr %53, align 4
  %56 = getelementptr i8, ptr %24, i32 31
  store i8 0, ptr %56, align 1
  %57 = getelementptr i8, ptr %24, i32 32
  store i8 %37, ptr %57, align 8
  %58 = getelementptr i8, ptr %24, i32 33
  store i8 %22, ptr %58, align 1
  %59 = getelementptr i8, ptr %24, i32 34
  store i8 0, ptr %59, align 2
  %60 = getelementptr i8, ptr %24, i32 36
  %61 = getelementptr i8, ptr %24, i32 37
  store i8 0, ptr %61, align 1
  %62 = getelementptr i8, ptr %24, i32 38
  store i8 32, ptr %62, align 2
  store i8 8, ptr %60, align 4
  %63 = getelementptr i8, ptr %24, i32 39
  store i8 0, ptr %63, align 1
  %64 = getelementptr i8, ptr %24, i32 40
  store i8 %37, ptr %64, align 8
  %65 = getelementptr i8, ptr %24, i32 41
  store i8 %22, ptr %65, align 1
  %66 = getelementptr i8, ptr %24, i32 42
  store i8 1, ptr %66, align 2
  br label %67

67:                                               ; preds = %36, %26
  %68 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 209, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %24, i1 noundef zeroext true) #12
  tail call void @kfree(ptr noundef nonnull %24) #12
  br label %69

69:                                               ; preds = %67, %21, %19
  %70 = phi i32 [ %68, %67 ], [ -1, %19 ], [ -12, %21 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_drv_set_power(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8
  %4 = load i32, ptr %1, align 4
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i16
  %7 = getelementptr inbounds %struct.mwifiex_adapter, ptr %3, i32 0, i32 89
  store i16 %6, ptr %7, align 4
  %8 = load i32, ptr %1, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i16 254, i16 255
  %11 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 228, i16 noundef zeroext %10, i32 noundef 16, ptr noundef null, i1 noundef zeroext true) #12
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i1 %9, i1 false
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 228, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #12
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi i32 [ %15, %14 ], [ %11, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_drv_get_driver_version(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, ptr %0, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 8
  %8 = lshr i32 %6, 16
  %9 = lshr i32 %6, 24
  %10 = and i32 %8, 255
  %11 = and i32 %7, 255
  %12 = and i32 %6, 255
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.17, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %9)
  %14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @driver_version, ptr noundef nonnull %4)
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.18, ptr noundef %1) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_set_encode(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4, ptr noundef readonly %5, i32 noundef %6) local_unnamed_addr #3 {
  %8 = alloca %struct.mwifiex_ds_encrypt_key, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %8) #12
  %9 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %8, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %8, i8 0, i64 80, i1 false)
  store i32 %3, ptr %9, align 4
  %10 = zext i8 %4 to i32
  %11 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %8, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = icmp eq ptr %1, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1027078
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %8, i32 0, i32 8
  store i8 1, ptr %18, align 1
  br label %19

19:                                               ; preds = %17, %13, %7
  %20 = icmp eq i32 %6, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %19
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %8, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %24, ptr align 1 %2, i32 %3, i1 false)
  br label %27

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %8, i32 0, i32 9
  store i8 1, ptr %26, align 2
  br label %27

27:                                               ; preds = %25, %23
  %28 = icmp eq ptr %5, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %8, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %30, ptr noundef nonnull align 1 dereferenceable(6) %5, i32 6, i1 false)
  br label %31

31:                                               ; preds = %29, %27
  br i1 %12, label %49, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %49, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.key_params, ptr %1, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %8, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %41, ptr nonnull align 1 %34, i32 %38, i1 false)
  %42 = trunc i32 %38 to i8
  %43 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %8, i32 0, i32 7
  store i8 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %8, i32 0, i32 10
  store i8 1, ptr %44, align 1
  br label %49

45:                                               ; preds = %19
  store i32 1, ptr %8, align 4
  %46 = icmp eq ptr %5, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %8, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %48, ptr noundef nonnull align 1 dereferenceable(6) %5, i32 6, i1 false)
  br label %49

49:                                               ; preds = %47, %45, %40, %36, %32, %31
  %50 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %8, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 94, i16 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %8, i1 noundef zeroext true) #12
  br label %143

55:                                               ; preds = %49
  %56 = icmp ugt i32 %3, 13
  br i1 %56, label %57, label %83

57:                                               ; preds = %55
  %58 = icmp ugt i32 %3, 32
  br i1 %58, label %59, label %61

59:                                               ; preds = %57
  %60 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %60, i32 noundef 4, ptr noundef nonnull @.str.23) #12
  br label %143

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 18
  %63 = load i32, ptr %62, align 8
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  store i32 1073741824, ptr %11, align 4
  %66 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 94, i16 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %8, i1 noundef zeroext false) #12
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %143

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 66
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(62) %69, i8 0, i32 62, i1 false) #12
  %70 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 66, i32 1, i32 5
  %71 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %8, i32 0, i32 3
  %72 = load i32, ptr %9, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %70, ptr align 4 %71, i32 %72, i1 false) #12
  %73 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 66, i32 1, i32 4
  %74 = trunc i32 %72 to i16
  store i16 %74, ptr %73, align 1
  %75 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 66, i32 1, i32 2
  store i16 1, ptr %75, align 1
  %76 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 66, i32 1, i32 3
  store i16 4, ptr %76, align 1
  br label %79

77:                                               ; preds = %61
  %78 = icmp eq i8 %4, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %77, %68
  %80 = phi i32 [ -1073741825, %68 ], [ 1073741824, %77 ]
  store i32 %80, ptr %11, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 94, i16 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %8, i1 noundef zeroext true) #12
  br label %143

83:                                               ; preds = %55
  %84 = load ptr, ptr %0, align 8
  %85 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 62
  %86 = load i16, ptr %85, align 8
  %87 = icmp ugt i16 %86, 3
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i16 0, ptr %85, align 8
  br label %89

89:                                               ; preds = %88, %83
  %90 = phi i16 [ 0, %88 ], [ %86, %83 ]
  br i1 %20, label %91, label %117

91:                                               ; preds = %89
  %92 = icmp eq i32 %3, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %91
  %94 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 %10, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  tail call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %84, i32 noundef 4, ptr noundef nonnull @.str.24) #12
  br label %143

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.mwifiex_adapter, ptr %84, i32 0, i32 139
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, 2
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %8, i32 0, i32 3
  %104 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 %10, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %103, ptr align 4 %104, i32 %95, i1 false) #12
  store i32 %95, ptr %9, align 4
  br label %112

105:                                              ; preds = %91
  %106 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 %10
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %106, i8 0, i32 28, i1 false) #12
  %107 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 %10, i32 3
  %108 = getelementptr inbounds %struct.mwifiex_ds_encrypt_key, ptr %8, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %107, ptr align 4 %108, i32 %3, i1 false) #12
  %109 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 %10, i32 1
  store i32 %10, ptr %109, align 4
  %110 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 %10, i32 2
  store i32 %3, ptr %110, align 4
  %111 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 4
  store i8 1, ptr %111, align 4
  br label %125

112:                                              ; preds = %102, %98
  %113 = zext i8 %4 to i16
  store i16 %113, ptr %85, align 8
  %114 = load i32, ptr %94, align 4
  %115 = icmp eq i32 %114, 0
  %116 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 4
  store i8 1, ptr %116, align 4
  br i1 %115, label %133, label %125

117:                                              ; preds = %89
  %118 = zext i16 %90 to i32
  %119 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 4
  store i8 0, ptr %119, align 4
  %120 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 %118, i32 2
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %117
  %124 = getelementptr %struct.mwifiex_private, ptr %0, i32 0, i32 61, i32 %10
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %124, i8 0, i32 28, i1 false) #12
  br label %133

125:                                              ; preds = %112, %105
  %126 = phi ptr [ %111, %105 ], [ %116, %112 ]
  %127 = getelementptr inbounds %struct.mwifiex_adapter, ptr %84, i32 0, i32 139
  %128 = load i8, ptr %127, align 1
  %129 = icmp eq i8 %128, 2
  %130 = select i1 %129, ptr %8, ptr null
  %131 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 94, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %130, i1 noundef zeroext false) #12
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %125, %123, %117, %112
  %134 = phi ptr [ %119, %117 ], [ %126, %125 ], [ %119, %123 ], [ %116, %112 ]
  %135 = load i8, ptr %134, align 4
  %136 = icmp eq i8 %135, 0
  %137 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 17
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, -9
  %140 = select i1 %136, i32 0, i32 8
  %141 = or i32 %139, %140
  store i32 %141, ptr %137, align 4
  %142 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 40, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %137, i1 noundef zeroext true) #12
  br label %143

143:                                              ; preds = %133, %125, %97, %81, %65, %59, %53
  %144 = phi i32 [ %54, %53 ], [ -1, %59 ], [ %82, %81 ], [ %66, %65 ], [ %142, %133 ], [ -1, %97 ], [ %131, %125 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #12
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_ver_ext(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.mwifiex_ver_ext, align 4
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %3) #12
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  store i32 %1, ptr %3, align 4
  %5 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 151, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %3, i1 noundef zeroext true) #12
  %6 = icmp ne i32 %5, 0
  %7 = sext i1 %6 to i32
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %3) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_remain_on_chan_cfg(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = alloca %struct.host_cmd_ds_remain_on_chan, align 2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #12
  %6 = getelementptr inbounds i8, ptr %5, i32 2
  store i64 0, ptr %6, align 2
  store i16 %1, ptr %5, align 2
  %7 = icmp eq i16 %1, 1
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load i32, ptr %2, align 4
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.host_cmd_ds_remain_on_chan, ptr %5, i32 0, i32 3
  %12 = tail call zeroext i8 @mwifiex_chan_type_to_sec_chan_offset(i32 noundef 0) #12
  %13 = shl i8 %12, 2
  %14 = or i8 %13, %10
  store i8 %14, ptr %11, align 2
  %15 = getelementptr inbounds %struct.ieee80211_channel, ptr %2, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, 1000
  %18 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %17) #12
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.host_cmd_ds_remain_on_chan, ptr %5, i32 0, i32 4
  store i8 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.host_cmd_ds_remain_on_chan, ptr %5, i32 0, i32 5
  store i32 %3, ptr %21, align 2
  br label %22

22:                                               ; preds = %8, %4
  %23 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 269, i16 noundef zeroext %1, i32 noundef 0, ptr noundef nonnull %5, i1 noundef zeroext true) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %26, i32 noundef 4, ptr noundef nonnull @.str.19) #12
  br label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.host_cmd_ds_remain_on_chan, ptr %5, i32 0, i32 1
  %29 = load i8, ptr %28, align 2
  %30 = zext i8 %29 to i32
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i32 [ -1, %25 ], [ %30, %27 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #12
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mwifiex_chan_type_to_sec_chan_offset(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_stats_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 11, i16 noundef zeroext 0, i32 noundef 0, ptr noundef %1, i1 noundef zeroext true) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_reg_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = alloca %struct.mwifiex_ds_reg_rw, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  store i32 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %5, i32 0, i32 1
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %5, i32 0, i32 2
  store i32 %3, ptr %7, align 4
  %8 = add i32 %1, -1
  %9 = icmp ult i32 %8, 5
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds [5 x i16], ptr @switch.table.mwifiex_reg_read, i32 0, i32 %8
  %12 = load i16, ptr %11, align 2
  %13 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext %12, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %5, i1 noundef zeroext true) #12
  br label %14

14:                                               ; preds = %10, %4
  %15 = phi i32 [ %13, %10 ], [ -1, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_reg_read(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 {
  %5 = alloca %struct.mwifiex_ds_reg_rw, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %6 = getelementptr inbounds i8, ptr %5, i32 8
  store i32 0, ptr %6, align 4, !annotation !8
  store i32 %1, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %5, i32 0, i32 1
  store i32 %2, ptr %7, align 4
  %8 = add i32 %1, -1
  %9 = icmp ult i32 %8, 5
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = getelementptr inbounds [5 x i16], ptr @switch.table.mwifiex_reg_read, i32 0, i32 %8
  %12 = load i16, ptr %11, align 2
  %13 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext %12, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %5, i1 noundef zeroext true) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %3, align 4
  br label %18

18:                                               ; preds = %15, %10, %4
  %19 = phi i32 [ %13, %10 ], [ 0, %15 ], [ -1, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_eeprom_read(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 {
  %5 = alloca %struct.mwifiex_ds_read_eeprom, align 2
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %5) #12
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(260) %6, i8 0, i32 256, i1 false), !annotation !8
  store i16 %1, ptr %5, align 2
  %7 = getelementptr inbounds %struct.mwifiex_ds_read_eeprom, ptr %5, i32 0, i32 1
  store i16 %2, ptr %7, align 2
  %8 = call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 89, i16 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %5, i1 noundef zeroext true) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.mwifiex_ds_read_eeprom, ptr %5, i32 0, i32 2
  %12 = load i16, ptr %7, align 2
  %13 = call i16 @llvm.umin.i16(i16 %12, i16 256)
  %14 = zext i16 %13 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 2 %11, i32 %14, i1 false)
  br label %15

15:                                               ; preds = %10, %4
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %5) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_set_gen_ie(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = alloca %struct.mwifiex_ds_misc_gen_ie, align 4
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %4) #12
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(264) %5, i8 0, i32 256, i1 false), !annotation !8
  %6 = icmp sgt i32 %2, 256
  br i1 %6, label %117, label %7

7:                                                ; preds = %3
  store i32 0, ptr %4, align 4
  %8 = getelementptr inbounds %struct.mwifiex_ds_misc_gen_ie, ptr %4, i32 0, i32 1
  store i32 %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mwifiex_ds_misc_gen_ie, ptr %4, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %9, ptr align 1 %1, i32 %2, i1 false)
  %10 = trunc i32 %2 to i16
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 94
  store i8 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 113
  store i8 0, ptr %14, align 2
  br label %117

15:                                               ; preds = %7
  %16 = icmp ult i16 %10, 3
  br i1 %16, label %117, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 113
  %19 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 71
  %20 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 72
  %21 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 63
  %22 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 64
  %23 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 1
  %24 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60
  %25 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 68
  %26 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 70
  %27 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 60, i32 2
  %28 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 94
  %29 = getelementptr inbounds %struct.mwifiex_private, ptr %0, i32 0, i32 93
  br label %30

30:                                               ; preds = %110, %17
  %31 = phi i16 [ %10, %17 ], [ %111, %110 ]
  %32 = phi ptr [ %9, %17 ], [ %114, %110 ]
  %33 = getelementptr inbounds %struct.ieee_types_vendor_header, ptr %32, i32 0, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i16
  %36 = add nuw nsw i16 %35, 2
  %37 = load i8, ptr %32, align 1
  switch i8 %37, label %99 [
    i8 48, label %38
    i8 68, label %52
    i8 -35, label %64
  ]

38:                                               ; preds = %30
  %39 = icmp eq i8 %34, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %41, i32 noundef 4, ptr noundef nonnull @.str.28) #12
  br label %51

42:                                               ; preds = %38
  %43 = zext i16 %36 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %21, ptr noundef nonnull align 1 %32, i32 %43, i1 false) #12
  store i16 %36, ptr %22, align 2
  %44 = load ptr, ptr %0, align 8
  %45 = load i8, ptr %21, align 2
  %46 = zext i8 %45 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %44, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef %43, i32 noundef %46) #12
  %47 = load i8, ptr %21, align 2
  switch i8 %47, label %50 [
    i8 -35, label %48
    i8 48, label %49
  ]

48:                                               ; preds = %42
  store i8 1, ptr %24, align 4
  br label %51

49:                                               ; preds = %42
  store i8 1, ptr %23, align 1
  br label %51

50:                                               ; preds = %42
  store i8 0, ptr %24, align 4
  store i8 0, ptr %23, align 1
  br label %51

51:                                               ; preds = %50, %49, %48, %40
  store i8 0, ptr %18, align 2
  br label %110

52:                                               ; preds = %30
  %53 = icmp eq i8 %34, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %55, i32 noundef 4, ptr noundef nonnull @.str.31) #12
  br label %110

56:                                               ; preds = %52
  %57 = zext i16 %36 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %25, ptr noundef nonnull align 1 %32, i32 %57, i1 false) #12
  store i16 %36, ptr %26, align 2
  %58 = load ptr, ptr %0, align 8
  %59 = load i8, ptr %25, align 1
  %60 = zext i8 %59 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %58, i32 noundef 16, ptr noundef nonnull @.str.32, i32 noundef %57, i32 noundef %60) #12
  %61 = load i8, ptr %25, align 1
  %62 = icmp eq i8 %61, 68
  br i1 %62, label %63, label %110

63:                                               ; preds = %56
  store i8 1, ptr %27, align 2
  br label %110

64:                                               ; preds = %30
  %65 = getelementptr inbounds %struct.ieee_types_vendor_header, ptr %32, i32 0, i32 2
  %66 = call i32 @bcmp(ptr noundef dereferenceable(4) %65, ptr noundef nonnull dereferenceable(4) @mwifiex_set_gen_ie_helper.wpa_oui, i32 4) #12
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = icmp eq i8 %34, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %68
  %71 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %71, i32 noundef 4, ptr noundef nonnull @.str.28) #12
  br label %81

72:                                               ; preds = %68
  %73 = zext i16 %36 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %21, ptr noundef nonnull align 1 %32, i32 %73, i1 false) #12
  store i16 %36, ptr %22, align 2
  %74 = load ptr, ptr %0, align 8
  %75 = load i8, ptr %21, align 2
  %76 = zext i8 %75 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %74, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef %73, i32 noundef %76) #12
  %77 = load i8, ptr %21, align 2
  switch i8 %77, label %80 [
    i8 -35, label %78
    i8 48, label %79
  ]

78:                                               ; preds = %72
  store i8 1, ptr %24, align 4
  br label %81

79:                                               ; preds = %72
  store i8 1, ptr %23, align 1
  br label %81

80:                                               ; preds = %72
  store i8 0, ptr %24, align 4
  store i8 0, ptr %23, align 1
  br label %81

81:                                               ; preds = %80, %79, %78, %70
  store i8 0, ptr %18, align 2
  br label %110

82:                                               ; preds = %64
  %83 = call i32 @bcmp(ptr noundef dereferenceable(4) %65, ptr noundef nonnull dereferenceable(4) @mwifiex_set_gen_ie_helper.wps_oui, i32 4) #12
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  store i8 1, ptr %18, align 2
  %86 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %86, i32 noundef 1, ptr noundef nonnull @.str.27) #12
  %87 = zext i16 %36 to i32
  %88 = icmp eq i8 %34, -1
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %90, i32 noundef 4, ptr noundef nonnull @.str.34) #12
  br label %110

91:                                               ; preds = %85
  %92 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %93 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 3520, i32 noundef 256) #13
  store ptr %93, ptr %19, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %110, label %95

95:                                               ; preds = %91
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 %93, ptr noundef nonnull align 1 %32, i32 %87, i1 false) #12
  store i16 %36, ptr %20, align 4
  %96 = load ptr, ptr %0, align 8
  %97 = load i8, ptr %93, align 8
  %98 = zext i8 %97 to i32
  call void (ptr, i32, ptr, ...) @_mwifiex_dbg(ptr noundef %96, i32 noundef 16, ptr noundef nonnull @.str.35, i32 noundef %87, i32 noundef %98) #12
  br label %110

99:                                               ; preds = %82, %30
  %100 = zext i16 %36 to i32
  %101 = load i8, ptr %28, align 8
  %102 = zext i8 %101 to i32
  %103 = sub nuw nsw i32 256, %102
  %104 = icmp ugt i32 %103, %100
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = getelementptr i8, ptr %29, i32 %102
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %106, ptr noundef nonnull align 1 %32, i32 %100, i1 false) #12
  %107 = load i8, ptr %28, align 8
  %108 = trunc i16 %36 to i8
  %109 = add i8 %107, %108
  store i8 %109, ptr %28, align 8
  br label %110

110:                                              ; preds = %105, %99, %95, %91, %89, %81, %63, %56, %54, %51
  %111 = sub i16 %31, %36
  %112 = icmp ult i16 %111, 3
  %113 = zext i16 %36 to i32
  %114 = getelementptr i8, ptr %32, i32 %113
  %115 = icmp eq ptr %114, null
  %116 = select i1 %112, i1 true, i1 %115
  br i1 %116, label %117, label %30

117:                                              ; preds = %110, %15, %12, %3
  %118 = phi i32 [ -14, %3 ], [ 0, %12 ], [ 0, %15 ], [ 0, %110 ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %4) #12
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_wakeup_reason(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = icmp eq i32 %2, 1
  %6 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 278, i16 noundef zeroext 0, i32 noundef 0, ptr noundef %3, i1 noundef zeroext %5) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mwifiex_get_chan_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 @mwifiex_send_cmd(ptr noundef %0, i16 noundef zeroext 575, i16 noundef zeroext 0, i32 noundef 0, ptr noundef %1, i1 noundef zeroext true) #12
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_bss_get_elem(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }

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
!9 = !{i64 2149568138}
!10 = !{i64 2149568355}
